using Engine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Game
{
    public class SingleplayerScreen : Screen
    {
        private ListPanelWidget m_worldsListWidget;

        public SingleplayerScreen()
        {
            WidgetsManager.LoadWidgetContents((Widget)this.ScreenWidget, (object)this, ContentManager.Get<XElement>("Screens/SingleplayerScreen"));
            this.m_worldsListWidget = this.ScreenWidget.Children.Find<ListPanelWidget>("WorldsList", true);
            this.m_worldsListWidget.ItemWidgetFactory += (Func<object, Widget>)(item =>
            {
                WorldInfo worldInfo = (WorldInfo)item;
                ContainerWidget containerWidget = (ContainerWidget)WidgetsManager.LoadWidget((object)this, ContentManager.Get<XElement>("Widgets/SavedWorldItem"), null);
                LabelWidget labelWidget1 = containerWidget.Children.Find<LabelWidget>("WorldItem.Name", true);
                LabelWidget labelWidget2 = containerWidget.Children.Find<LabelWidget>("WorldItem.Size", true);
                LabelWidget labelWidget3 = containerWidget.Children.Find<LabelWidget>("WorldItem.Date", true);
                LabelWidget labelWidget4 = containerWidget.Children.Find<LabelWidget>("WorldItem.GameMode", true);
                LabelWidget labelWidget5 = containerWidget.Children.Find<LabelWidget>("WorldItem.EnvironmentBehaviorMode", true);
                LabelWidget labelWidget6 = containerWidget.Children.Find<LabelWidget>("WorldItem.Version", true);
                containerWidget.Tag = (object)worldInfo;
                labelWidget1.Text = worldInfo.Name;
                labelWidget2.Text = string.Format("{0:0.00MB}", new object[1]
                {
          (object) (float) ((double) worldInfo.Size / 1024.0 / 1024.0)
                });
                labelWidget3.Text = string.Format("{0:dd MMM yyyy HH:mm}", new object[1]
                {
          (object) worldInfo.LastSaveTime
                });
                labelWidget4.Text = worldInfo.GameMode.ToString();
                labelWidget5.Text = worldInfo.EnvironmentBehaviorMode.ToString();
                labelWidget6.Text = !(worldInfo.SerializationVersion != VersionsManager.SerializationVersion) ? string.Empty : (string.IsNullOrEmpty(worldInfo.SerializationVersion) ? "(unknown)" : "(" + worldInfo.SerializationVersion + ")");
                return (Widget)containerWidget;
            });
        }

        public override void Enter(object[] parameters)
        {
            BusyDialog dialog = new BusyDialog("Scanning Worlds", (string)null);
            DialogsManager.ShowDialog((Dialog)dialog);
            Task.Run((Action)(() =>
            {
                WorldInfo selectedItem = (WorldInfo)this.m_worldsListWidget.SelectedItem;
                WorldsManager.UpdateWorldsList();
                List<WorldInfo> worldInfos = new List<WorldInfo>((IEnumerable<WorldInfo>)(object)WorldsManager.WorldInfos);
                worldInfos.Sort((Comparison<WorldInfo>)((w1, w2) => DateTime.Compare(w2.LastSaveTime, w1.LastSaveTime)));
                Dispatcher.Dispatch((Action)(() =>
                {
                    this.m_worldsListWidget.ClearItems();
                    foreach (object obj in worldInfos)
                        this.m_worldsListWidget.AddItem(obj);
                    if (selectedItem != null)
                        this.m_worldsListWidget.SelectedItem = (object)worldInfos.FirstOrDefault<WorldInfo>((Func<WorldInfo, bool>)(wi => wi.DirectoryName == selectedItem.DirectoryName));
                    DialogsManager.HideDialog((Dialog)dialog);
                }), false);
            }));
        }

        public override void Update()
        {
            if ((this.m_worldsListWidget.SelectedItem != null) && (WorldsManager.WorldInfos.IndexOf((WorldInfo)this.m_worldsListWidget.SelectedItem) < 0))
            {
                this.m_worldsListWidget.SelectedItem = null;
            }
            object[] objArray1 = new object[] { (int)this.m_worldsListWidget.Items.Count };
            base.ScreenWidget.Children.Find<LabelWidget>("TopBar.Label", true).Text = string.Format("Existing Worlds ({0})", (object[])objArray1);
            base.ScreenWidget.Children.Find("Play", true).IsEnabled = (this.m_worldsListWidget.SelectedItem != null);
            base.ScreenWidget.Children.Find("Properties", true).IsEnabled = (this.m_worldsListWidget.SelectedItem != null);
            if (base.ScreenWidget.Children.Find<ButtonWidget>("Play", true).IsClicked && (this.m_worldsListWidget.SelectedItem != null))
            {
                FrontendManager.StartFadeOutIn(delegate {
                    object[] parameters = new object[2];
                    parameters[0] = this.m_worldsListWidget.SelectedItem;
                    ScreensManager.SwitchScreen("GameLoading", parameters);
                    this.m_worldsListWidget.SelectedItem = null;
                });
            }
            if (base.ScreenWidget.Children.Find<ButtonWidget>("NewWorld", true).IsClicked)
            {
                FrontendManager.StartFadeOutIn(delegate {
                    ScreensManager.SwitchScreen("NewWorld", new object[0]);
                    this.m_worldsListWidget.SelectedItem = null;
                });
            }
            if (base.ScreenWidget.Children.Find<ButtonWidget>("Properties", true).IsClicked && (this.m_worldsListWidget.SelectedItem != null))
            {
                FrontendManager.StartFadeOutIn(delegate {
                    object[] parameters = new object[] { this.m_worldsListWidget.SelectedItem };
                    ScreensManager.SwitchScreen("ModifyWorld", parameters);
                });
            }
            if (InputManager.InputState.Back || base.ScreenWidget.Children.Find<ButtonWidget>("TopBar.Back", true).IsClicked)
            {
                FrontendManager.StartFadeOutIn(delegate {
                    ScreensManager.SwitchScreen("MainMenu", new object[0]);
                    this.m_worldsListWidget.SelectedItem = null;
                });
            }
        }
    }
}
