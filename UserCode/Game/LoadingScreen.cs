using Engine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Engine.Content;
using System.Xml.Linq;
using GScience.ModAPI;

namespace Game
{
    public class LoadingScreen : Screen
    {
        private List<Action> m_loadActions = new List<Action>();
        private int m_index;
        private bool m_loadingFinished;
        private bool m_pauseLoading;
        private bool m_loadingErrorsSuppressed;

        public LoadingScreen()
        {
            WidgetsManager.LoadWidgetContents((Widget)this.ScreenWidget, (object)this, ContentManager.Get<XElement>("Screens/LoadingScreen"));

            LabelWidget ExternalAssemblyInfo = new LabelWidget();

            ExternalAssemblyInfo.Text = "Powered By GScience Studio\n";
            //下列两行代码请勿随意删除
            ExternalAssemblyInfo.Text += "Author:" + Info.author + "\n";
            ExternalAssemblyInfo.Text += "Mod API Version:" + Info.version;
            
            ExternalAssemblyInfo.Color = Color.LightBlue;
            ExternalAssemblyInfo.FontScale = 0.5f;
            this.ScreenWidget.Children.Add(ExternalAssemblyInfo);

            this.AddLoadAction((Action)(() => CommunityContentManager.Initialize()));
            this.AddLoadAction((Action)(() => MotdManager.Initialize()));
            this.AddLoadAction((Action)(() => LightingManager.Initialize()));
            this.AddLoadAction((Action)(() => StringsManager.LoadStrings()));
            this.AddLoadAction((Action)(() => TextureAtlasManager.LoadAtlases()));
            ReadOnlyList<ContentInfo> readOnlyList = ContentManager.List();
            // ISSUE: explicit reference operation
            using (ReadOnlyList<ContentInfo>.Enumerator enumerator = ((ReadOnlyList<ContentInfo>)@readOnlyList).GetEnumerator())
            {
                // ISSUE: explicit reference operation
                while (((ReadOnlyList<ContentInfo>.Enumerator)@enumerator).MoveNext())
                {
                    // ISSUE: explicit reference operation
                    ContentInfo localContentInfo = ((ReadOnlyList<ContentInfo>.Enumerator)@enumerator).Current;
                    this.AddLoadAction((Action)(() => ContentManager.Get((string)localContentInfo.Name)));
                }
            }
            this.AddLoadAction((Action)(() => DatabaseManager.LoadDatabase()));
            this.AddLoadAction((Action)(() => WorldsManager.Initialize()));
            this.AddLoadAction((Action)(() => BlocksTexturesManager.Initialize()));
            this.AddLoadAction((Action)(() => CharacterSkinsManager.Initialize()));
            this.AddLoadAction((Action)(() => FurniturePacksManager.Initialize()));
            this.AddLoadAction((Action)(() => Game.BlocksManager.Initialize()));
            this.AddLoadAction((Action)(() => CraftingRecipesManager.Initialize()));
            this.AddLoadAction((Action)(() => GScience.ModAPI.Debug.InputManager.Initialize()));
        }

        public void AddLoadAction(Action action)
        {
            this.m_loadActions.Add(action);
        }

        public override void Leave()
        {
            ContentManager.Dispose("Textures/Gui/CandyRufusLogo");
            ContentManager.Dispose("Textures/Gui/EngineLogo");
        }

        public override void Update()
        {
            if (this.m_loadingFinished)
                return;
            double realTime = Time.RealTime;
            while (!this.m_pauseLoading)
            {
                if (this.m_index < this.m_loadActions.Count)
                {
                    try
                    {
                        List<Action> loadActions = this.m_loadActions;
                        int index1 = this.m_index;
                        this.m_index = index1 + 1;
                        int index2 = index1;
                        loadActions[index2]();
                    }
                    catch (Exception ex)
                    {
                        Log.Error("Loading error. Reason: " + ex.Message);
                        if (!this.m_loadingErrorsSuppressed)
                        {
                            this.m_pauseLoading = true;
                            DialogsManager.ShowDialog((Dialog)new MessageDialog("Loading Error", ExceptionManager.MakeFullErrorMessage(ex), "OK", "Suppress", (Action<MessageDialogButton>)(b =>
                            {
                                if (b == MessageDialogButton.Button1)
                                {
                                    this.m_pauseLoading = false;
                                }
                                else
                                {
                                    if (b != MessageDialogButton.Button2)
                                        return;
                                    this.m_loadingErrorsSuppressed = true;
                                }
                            })));
                        }
                    }
                    if (Time.RealTime - realTime > 0.1)
                        break;
                }
                else
                    break;
            }
            if (this.m_index < this.m_loadActions.Count)
                return;
            this.m_loadingFinished = true;
            AudioManager.PlaySound("Audio/UI/ButtonClick", 1f, 0.0f, 0.0f);
            FrontendManager.StartFadeOutIn((Action)(() => ScreensManager.SwitchScreen("MainMenu")));
        }
    }
}
