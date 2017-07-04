.class public auto ansi beforefieldinit Game.NagScreen
       extends Game.Screen
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  3
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/NagScreen"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ret
  } // end of method NagScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  3
    IL_0000:  ldc.i4.1
    IL_0001:  call       void [Engine]Engine.Input.Keyboard::set_BackButtonQuitsApp(bool)
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000c:  ldstr      "Quit"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_0017:  ldc.i4.0
    IL_0018:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0023:  ldstr      "QuitLabel_Wp81"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_002e:  ldc.i4.0
    IL_002f:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003a:  ldstr      "QuitLabel_Win81"
    IL_003f:  ldc.i4.1
    IL_0040:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.Widget>(string,
                                                                                bool)
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_004b:  ret
  } // end of method NagScreen::Enter

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  call       void [Engine]Engine.Input.Keyboard::set_BackButtonQuitsApp(bool)
    IL_0006:  ret
  } // end of method NagScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       120 (0x78)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  ldstr      "Buy"
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0011:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0016:  brfalse.s  IL_003d

    IL_0018:  ldstr      "[NagScreen] Clicked buy button"
    IL_001d:  ldc.i4.0
    IL_001e:  newarr     Game.AnalyticsParameter
    IL_0023:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0028:  call       void Game.MarketplaceManager::ShowMarketplace()
    IL_002d:  ldstr      "MainMenu"
    IL_0032:  ldc.i4.0
    IL_0033:  newarr     [System.Runtime]System.Object
    IL_0038:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0043:  ldstr      "Quit"
    IL_0048:  ldc.i4.1
    IL_0049:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_004e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0053:  brtrue.s   IL_0062

    IL_0055:  ldarg.0
    IL_0056:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_005b:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_0060:  brfalse.s  IL_0077

    IL_0062:  ldstr      "[NagScreen] Clicked quit button"
    IL_0067:  ldc.i4.0
    IL_0068:  newarr     Game.AnalyticsParameter
    IL_006d:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0072:  call       void [Engine]Engine.Window::Close()
    IL_0077:  ret
  } // end of method NagScreen::Update

} // end of class Game.NagScreen