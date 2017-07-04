.class public auto ansi beforefieldinit Game.TrialEndedScreen
       extends Game.Screen
{
  .field private class Game.ButtonWidget m_buyButton
  .field private class Game.ButtonWidget m_quitButton
  .field private class Game.ButtonWidget m_newWorldButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/TrialEndedScreen"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "Buy"
    IL_0025:  ldc.i4.0
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.ButtonWidget Game.TrialEndedScreen::m_buyButton
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "Quit"
    IL_003c:  ldc.i4.0
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.TrialEndedScreen::m_quitButton
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "NewWorld"
    IL_0053:  ldc.i4.0
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.TrialEndedScreen::m_newWorldButton
    IL_005e:  ret
  } // end of method TrialEndedScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       178 (0xb2)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_buyButton
    IL_0006:  brfalse.s  IL_003a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_buyButton
    IL_000e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0013:  brfalse.s  IL_003a

    IL_0015:  ldstr      "[TrialEndedScreen] Clicked buy button"
    IL_001a:  ldc.i4.0
    IL_001b:  newarr     Game.AnalyticsParameter
    IL_0020:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0025:  call       void Game.MarketplaceManager::ShowMarketplace()
    IL_002a:  ldstr      "MainMenu"
    IL_002f:  ldc.i4.0
    IL_0030:  newarr     [System.Runtime]System.Object
    IL_0035:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_quitButton
    IL_0040:  brfalse.s  IL_004f

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_quitButton
    IL_0048:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_004d:  brtrue.s   IL_005c

    IL_004f:  ldarg.0
    IL_0050:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0055:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_005a:  brfalse.s  IL_007c

    IL_005c:  ldstr      "[TrialEndedScreen] Clicked quit button"
    IL_0061:  ldc.i4.0
    IL_0062:  newarr     Game.AnalyticsParameter
    IL_0067:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_006c:  ldstr      "MainMenu"
    IL_0071:  ldc.i4.0
    IL_0072:  newarr     [System.Runtime]System.Object
    IL_0077:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_newWorldButton
    IL_0082:  brfalse.s  IL_00b1

    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_newWorldButton
    IL_008a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_008f:  brfalse.s  IL_00b1

    IL_0091:  ldstr      "[TrialEndedScreen] Clicked newworld button"
    IL_0096:  ldc.i4.0
    IL_0097:  newarr     Game.AnalyticsParameter
    IL_009c:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_00a1:  ldstr      "NewWorld"
    IL_00a6:  ldc.i4.0
    IL_00a7:  newarr     [System.Runtime]System.Object
    IL_00ac:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_00b1:  ret
  } // end of method TrialEndedScreen::Update

} // end of class Game.TrialEndedScreen