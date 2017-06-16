.class public auto ansi beforefieldinit Game.MainMenuScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.MainMenuScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__5_0'
    .field public static class [System.Runtime]System.Action '<>9__5_1'
    .field public static class [System.Runtime]System.Action '<>9__5_2'
    .field public static class [System.Runtime]System.Action '<>9__5_3'
    .field public static class [System.Runtime]System.Action '<>9__5_4'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.MainMenuScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.MainMenuScreen/'<>c' Game.MainMenuScreen/'<>c'::'<>9'
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
            '<Update>b__5_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Singleplayer"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__5_0'

    .method assembly hidebysig instance void 
            '<Update>b__5_1'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Help"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__5_1'

    .method assembly hidebysig instance void 
            '<Update>b__5_2'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Content"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__5_2'

    .method assembly hidebysig instance void 
            '<Update>b__5_3'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Settings"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__5_3'

    .method assembly hidebysig instance void 
            '<Update>b__5_4'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Nag"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__5_4'

  } // end of class '<>c'

  .field private string m_versionString
  .field private bool m_versionStringTrial
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  3
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string Game.MainMenuScreen::m_versionString
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/MainMenuScreen"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0022:  ldarg.0
    IL_0023:  ldloc.0
    IL_0024:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0029:  ret
  } // end of method MainMenuScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0006:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.MotdWidget>(bool)
    IL_0011:  callvirt   instance void Game.MotdWidget::Restart()
    IL_0016:  ret
  } // end of method MainMenuScreen::Enter

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  call       void [Engine]Engine.Input.Keyboard::set_BackButtonQuitsApp(bool)
    IL_0006:  ret
  } // end of method MainMenuScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       555 (0x22b)
    .maxstack  6
    IL_0000:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  call       void [Engine]Engine.Input.Keyboard::set_BackButtonQuitsApp(bool)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      string Game.MainMenuScreen::m_versionString
    IL_0013:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0018:  brtrue.s   IL_0027

    IL_001a:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_001f:  ldarg.0
    IL_0020:  ldfld      bool Game.MainMenuScreen::m_versionStringTrial
    IL_0025:  beq.s      IL_0066

    IL_0027:  ldarg.0
    IL_0028:  ldstr      "Version {0}{1}"
    IL_002d:  ldc.i4.2
    IL_002e:  newarr     [System.Runtime]System.Object
    IL_0033:  dup
    IL_0034:  ldc.i4.0
    IL_0035:  call       string Game.VersionsManager::get_Version()
    IL_003a:  stelem.ref
    IL_003b:  dup
    IL_003c:  ldc.i4.1
    IL_003d:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0042:  brtrue.s   IL_004b

    IL_0044:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0049:  br.s       IL_0050

    IL_004b:  ldstr      " (Demo)"
    IL_0050:  stelem.ref
    IL_0051:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0056:  stfld      string Game.MainMenuScreen::m_versionString
    IL_005b:  ldarg.0
    IL_005c:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0061:  stfld      bool Game.MainMenuScreen::m_versionStringTrial
    IL_0066:  ldarg.0
    IL_0067:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_006c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0071:  ldstr      "Buy"
    IL_0076:  ldc.i4.1
    IL_0077:  callvirt   instance class Game.Widget Game.WidgetsContainer::Find(string,
                                                                                bool)
    IL_007c:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0081:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0086:  ldarg.0
    IL_0087:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_008c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0091:  ldstr      "Version"
    IL_0096:  ldc.i4.1
    IL_0097:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_009c:  ldarg.0
    IL_009d:  ldfld      string Game.MainMenuScreen::m_versionString
    IL_00a2:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a7:  ldarg.0
    IL_00a8:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00ad:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b2:  ldstr      "Singleplayer"
    IL_00b7:  ldc.i4.1
    IL_00b8:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00bd:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00c2:  brfalse.s  IL_00e8

    IL_00c4:  ldsfld     class [System.Runtime]System.Action Game.MainMenuScreen/'<>c'::'<>9__5_0'
    IL_00c9:  dup
    IL_00ca:  brtrue.s   IL_00e3

    IL_00cc:  pop
    IL_00cd:  ldsfld     class Game.MainMenuScreen/'<>c' Game.MainMenuScreen/'<>c'::'<>9'
    IL_00d2:  ldftn      instance void Game.MainMenuScreen/'<>c'::'<Update>b__5_0'()
    IL_00d8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00dd:  dup
    IL_00de:  stsfld     class [System.Runtime]System.Action Game.MainMenuScreen/'<>c'::'<>9__5_0'
    IL_00e3:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_00e8:  ldarg.0
    IL_00e9:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00ee:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00f3:  ldstr      "Help"
    IL_00f8:  ldc.i4.1
    IL_00f9:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00fe:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0103:  brfalse.s  IL_0129

    IL_0105:  ldsfld     class [System.Runtime]System.Action Game.MainMenuScreen/'<>c'::'<>9__5_1'
    IL_010a:  dup
    IL_010b:  brtrue.s   IL_0124

    IL_010d:  pop
    IL_010e:  ldsfld     class Game.MainMenuScreen/'<>c' Game.MainMenuScreen/'<>c'::'<>9'
    IL_0113:  ldftn      instance void Game.MainMenuScreen/'<>c'::'<Update>b__5_1'()
    IL_0119:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_011e:  dup
    IL_011f:  stsfld     class [System.Runtime]System.Action Game.MainMenuScreen/'<>c'::'<>9__5_1'
    IL_0124:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0129:  ldarg.0
    IL_012a:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_012f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0134:  ldstr      "Content"
    IL_0139:  ldc.i4.1
    IL_013a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_013f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0144:  brfalse.s  IL_016a

    IL_0146:  ldsfld     class [System.Runtime]System.Action Game.MainMenuScreen/'<>c'::'<>9__5_2'
    IL_014b:  dup
    IL_014c:  brtrue.s   IL_0165

    IL_014e:  pop
    IL_014f:  ldsfld     class Game.MainMenuScreen/'<>c' Game.MainMenuScreen/'<>c'::'<>9'
    IL_0154:  ldftn      instance void Game.MainMenuScreen/'<>c'::'<Update>b__5_2'()
    IL_015a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_015f:  dup
    IL_0160:  stsfld     class [System.Runtime]System.Action Game.MainMenuScreen/'<>c'::'<>9__5_2'
    IL_0165:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_016a:  ldarg.0
    IL_016b:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0170:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0175:  ldstr      "Settings"
    IL_017a:  ldc.i4.1
    IL_017b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0180:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0185:  brfalse.s  IL_01ab

    IL_0187:  ldsfld     class [System.Runtime]System.Action Game.MainMenuScreen/'<>c'::'<>9__5_3'
    IL_018c:  dup
    IL_018d:  brtrue.s   IL_01a6

    IL_018f:  pop
    IL_0190:  ldsfld     class Game.MainMenuScreen/'<>c' Game.MainMenuScreen/'<>c'::'<>9'
    IL_0195:  ldftn      instance void Game.MainMenuScreen/'<>c'::'<Update>b__5_3'()
    IL_019b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01a0:  dup
    IL_01a1:  stsfld     class [System.Runtime]System.Action Game.MainMenuScreen/'<>c'::'<>9__5_3'
    IL_01a6:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01ab:  ldarg.0
    IL_01ac:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01b1:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01b6:  ldstr      "Buy"
    IL_01bb:  ldc.i4.1
    IL_01bc:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01c1:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01c6:  brfalse.s  IL_01dd

    IL_01c8:  ldstr      "[MainMenuScreen] Clicked buy button"
    IL_01cd:  ldc.i4.0
    IL_01ce:  newarr     Game.AnalyticsParameter
    IL_01d3:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_01d8:  call       void Game.MarketplaceManager::ShowMarketplace()
    IL_01dd:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_01e2:  ldfld      bool Game.InputState::Back
    IL_01e7:  brfalse.s  IL_01f0

    IL_01e9:  call       bool [Engine]Engine.Input.Keyboard::get_BackButtonQuitsApp()
    IL_01ee:  brfalse.s  IL_01f9

    IL_01f0:  ldc.i4.s   20
    IL_01f2:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_01f7:  brfalse.s  IL_022a

    IL_01f9:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_01fe:  brfalse.s  IL_0225

    IL_0200:  ldsfld     class [System.Runtime]System.Action Game.MainMenuScreen/'<>c'::'<>9__5_4'
    IL_0205:  dup
    IL_0206:  brtrue.s   IL_021f

    IL_0208:  pop
    IL_0209:  ldsfld     class Game.MainMenuScreen/'<>c' Game.MainMenuScreen/'<>c'::'<>9'
    IL_020e:  ldftn      instance void Game.MainMenuScreen/'<>c'::'<Update>b__5_4'()
    IL_0214:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0219:  dup
    IL_021a:  stsfld     class [System.Runtime]System.Action Game.MainMenuScreen/'<>c'::'<>9__5_4'
    IL_021f:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0224:  ret

    IL_0225:  call       void [Engine]Engine.Window::Close()
    IL_022a:  ret
  } // end of method MainMenuScreen::Update

} // end of class Game.MainMenuScreen