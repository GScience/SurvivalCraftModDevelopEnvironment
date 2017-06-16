.class public auto ansi beforefieldinit Game.TrialEndedScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.TrialEndedScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__4_0'
    .field public static class [System.Runtime]System.Action '<>9__4_1'
    .field public static class [System.Runtime]System.Action '<>9__4_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.TrialEndedScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.TrialEndedScreen/'<>c' Game.TrialEndedScreen/'<>c'::'<>9'
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
            '<Update>b__4_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "MainMenu"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__4_0'

    .method assembly hidebysig instance void 
            '<Update>b__4_1'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "MainMenu"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__4_1'

    .method assembly hidebysig instance void 
            '<Update>b__4_2'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "NewWorld"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__4_2'

  } // end of class '<>c'

  .field private class Game.ButtonWidget m_buyButton
  .field private class Game.ButtonWidget m_quitButton
  .field private class Game.ButtonWidget m_newWorldButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       115 (0x73)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/TrialEndedScreen"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0017:  ldarg.0
    IL_0018:  ldloc.0
    IL_0019:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0025:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_002a:  ldstr      "Buy"
    IL_002f:  ldc.i4.0
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0035:  stfld      class Game.ButtonWidget Game.TrialEndedScreen::m_buyButton
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "Quit"
    IL_004b:  ldc.i4.0
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0051:  stfld      class Game.ButtonWidget Game.TrialEndedScreen::m_quitButton
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "NewWorld"
    IL_0067:  ldc.i4.0
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_006d:  stfld      class Game.ButtonWidget Game.TrialEndedScreen::m_newWorldButton
    IL_0072:  ret
  } // end of method TrialEndedScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       237 (0xed)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_buyButton
    IL_0006:  brfalse.s  IL_004e

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_buyButton
    IL_000e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0013:  brfalse.s  IL_004e

    IL_0015:  ldstr      "[TrialEndedScreen] Clicked buy button"
    IL_001a:  ldc.i4.0
    IL_001b:  newarr     Game.AnalyticsParameter
    IL_0020:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0025:  call       void Game.MarketplaceManager::ShowMarketplace()
    IL_002a:  ldsfld     class [System.Runtime]System.Action Game.TrialEndedScreen/'<>c'::'<>9__4_0'
    IL_002f:  dup
    IL_0030:  brtrue.s   IL_0049

    IL_0032:  pop
    IL_0033:  ldsfld     class Game.TrialEndedScreen/'<>c' Game.TrialEndedScreen/'<>c'::'<>9'
    IL_0038:  ldftn      instance void Game.TrialEndedScreen/'<>c'::'<Update>b__4_0'()
    IL_003e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0043:  dup
    IL_0044:  stsfld     class [System.Runtime]System.Action Game.TrialEndedScreen/'<>c'::'<>9__4_0'
    IL_0049:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_quitButton
    IL_0054:  brfalse.s  IL_0063

    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_quitButton
    IL_005c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0061:  brtrue.s   IL_006f

    IL_0063:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0068:  ldfld      bool Game.InputState::Back
    IL_006d:  brfalse.s  IL_00a3

    IL_006f:  ldstr      "[TrialEndedScreen] Clicked quit button"
    IL_0074:  ldc.i4.0
    IL_0075:  newarr     Game.AnalyticsParameter
    IL_007a:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_007f:  ldsfld     class [System.Runtime]System.Action Game.TrialEndedScreen/'<>c'::'<>9__4_1'
    IL_0084:  dup
    IL_0085:  brtrue.s   IL_009e

    IL_0087:  pop
    IL_0088:  ldsfld     class Game.TrialEndedScreen/'<>c' Game.TrialEndedScreen/'<>c'::'<>9'
    IL_008d:  ldftn      instance void Game.TrialEndedScreen/'<>c'::'<Update>b__4_1'()
    IL_0093:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0098:  dup
    IL_0099:  stsfld     class [System.Runtime]System.Action Game.TrialEndedScreen/'<>c'::'<>9__4_1'
    IL_009e:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_newWorldButton
    IL_00a9:  brfalse.s  IL_00ec

    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.ButtonWidget Game.TrialEndedScreen::m_newWorldButton
    IL_00b1:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00b6:  brfalse.s  IL_00ec

    IL_00b8:  ldstr      "[TrialEndedScreen] Clicked newworld button"
    IL_00bd:  ldc.i4.0
    IL_00be:  newarr     Game.AnalyticsParameter
    IL_00c3:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_00c8:  ldsfld     class [System.Runtime]System.Action Game.TrialEndedScreen/'<>c'::'<>9__4_2'
    IL_00cd:  dup
    IL_00ce:  brtrue.s   IL_00e7

    IL_00d0:  pop
    IL_00d1:  ldsfld     class Game.TrialEndedScreen/'<>c' Game.TrialEndedScreen/'<>c'::'<>9'
    IL_00d6:  ldftn      instance void Game.TrialEndedScreen/'<>c'::'<Update>b__4_2'()
    IL_00dc:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e1:  dup
    IL_00e2:  stsfld     class [System.Runtime]System.Action Game.TrialEndedScreen/'<>c'::'<>9__4_2'
    IL_00e7:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_00ec:  ret
  } // end of method TrialEndedScreen::Update

} // end of class Game.TrialEndedScreen