.class public auto ansi beforefieldinit Game.NagScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.NagScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__3_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.NagScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.NagScreen/'<>c' Game.NagScreen/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__3_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "MainMenu"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__3_0'

  } // end of class '<>c'

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  3
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/NagScreen"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0017:  ldarg.0
    IL_0018:  ldloc.0
    IL_0019:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_001e:  ret
  } // end of method NagScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  3
    IL_0000:  ldc.i4.1
    IL_0001:  call       void [Engine]Engine.Input.Keyboard::set_BackButtonQuitsApp(bool)
    IL_0006:  ldarg.0
    IL_0007:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_000c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0011:  ldstr      "Quit"
    IL_0016:  ldc.i4.1
    IL_0017:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_001c:  ldc.i4.0
    IL_001d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0022:  ldarg.0
    IL_0023:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0028:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_002d:  ldstr      "QuitLabel_Wp81"
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_0038:  ldc.i4.0
    IL_0039:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_003e:  ldarg.0
    IL_003f:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0044:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0049:  ldstr      "QuitLabel_Win81"
    IL_004e:  ldc.i4.1
    IL_004f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.Widget>(string,
                                                                                     bool)
    IL_0054:  ldc.i4.1
    IL_0055:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_005a:  ret
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
    // 代码大小       149 (0x95)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0006:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000b:  ldstr      "Buy"
    IL_0010:  ldc.i4.1
    IL_0011:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0016:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_001b:  brfalse.s  IL_0056

    IL_001d:  ldstr      "[NagScreen] Clicked buy button"
    IL_0022:  ldc.i4.0
    IL_0023:  newarr     Game.AnalyticsParameter
    IL_0028:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_002d:  call       void Game.MarketplaceManager::ShowMarketplace()
    IL_0032:  ldsfld     class [System.Runtime]System.Action Game.NagScreen/'<>c'::'<>9__3_0'
    IL_0037:  dup
    IL_0038:  brtrue.s   IL_0051

    IL_003a:  pop
    IL_003b:  ldsfld     class Game.NagScreen/'<>c' Game.NagScreen/'<>c'::'<>9'
    IL_0040:  ldftn      instance void Game.NagScreen/'<>c'::'<Update>b__3_0'()
    IL_0046:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_004b:  dup
    IL_004c:  stsfld     class [System.Runtime]System.Action Game.NagScreen/'<>c'::'<>9__3_0'
    IL_0051:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0056:  ldarg.0
    IL_0057:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0061:  ldstr      "Quit"
    IL_0066:  ldc.i4.1
    IL_0067:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_006c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0071:  brtrue.s   IL_007f

    IL_0073:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0078:  ldfld      bool Game.InputState::Back
    IL_007d:  brfalse.s  IL_0094

    IL_007f:  ldstr      "[NagScreen] Clicked quit button"
    IL_0084:  ldc.i4.0
    IL_0085:  newarr     Game.AnalyticsParameter
    IL_008a:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_008f:  call       void [Engine]Engine.Window::Close()
    IL_0094:  ret
  } // end of method NagScreen::Update

} // end of class Game.NagScreen