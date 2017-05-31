.class public auto ansi beforefieldinit Game.SettingsScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SettingsScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__10_0'
    .field public static class [System.Runtime]System.Action '<>9__10_1'
    .field public static class [System.Runtime]System.Action '<>9__10_2'
    .field public static class [System.Runtime]System.Action '<>9__10_3'
    .field public static class [System.Runtime]System.Action '<>9__10_4'
    .field public static class [System.Runtime]System.Action '<>9__10_5'
    .field public static class [System.Runtime]System.Action '<>9__10_6'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SettingsScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SettingsScreen/'<>c' Game.SettingsScreen/'<>c'::'<>9'
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
            '<Update>b__10_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "SettingsPerformance"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__10_0'

    .method assembly hidebysig instance void 
            '<Update>b__10_1'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "SettingsGraphics"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__10_1'

    .method assembly hidebysig instance void 
            '<Update>b__10_2'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "SettingsUi"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__10_2'

    .method assembly hidebysig instance void 
            '<Update>b__10_3'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "SettingsCompatibility"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__10_3'

    .method assembly hidebysig instance void 
            '<Update>b__10_4'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "SettingsAudio"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__10_4'

    .method assembly hidebysig instance void 
            '<Update>b__10_5'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "SettingsControls"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__10_5'

    .method assembly hidebysig instance void 
            '<Update>b__10_6'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "SettingsSensitivities"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__10_6'

  } // end of class '<>c'

  .field private class Game.Screen m_previousScreen
  .field private class Game.ButtonWidget m_performanceButton
  .field private class Game.ButtonWidget m_graphicsButton
  .field private class Game.ButtonWidget m_uiButton
  .field private class Game.ButtonWidget m_compatibilityButton
  .field private class Game.ButtonWidget m_audioButton
  .field private class Game.ButtonWidget m_controlsButton
  .field private class Game.ButtonWidget m_sensitivitiesButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       227 (0xe3)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsScreen"
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
    IL_002a:  ldstr      "Performance"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0035:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_performanceButton
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "Graphics"
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0051:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_graphicsButton
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "Ui"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_006d:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_uiButton
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0079:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007e:  ldstr      "Compatibility"
    IL_0083:  ldc.i4.1
    IL_0084:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0089:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_compatibilityButton
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0095:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009a:  ldstr      "Audio"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00a5:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_audioButton
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00b1:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b6:  ldstr      "Controls"
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00c1:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_controlsButton
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00cd:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d2:  ldstr      "Sensitivities"
    IL_00d7:  ldc.i4.1
    IL_00d8:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00dd:  stfld      class Game.ButtonWidget Game.SettingsScreen::m_sensitivitiesButton
    IL_00e2:  ret
  } // end of method SettingsScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Screen Game.SettingsScreen::m_previousScreen
    IL_0006:  brtrue.s   IL_0013

    IL_0008:  ldarg.0
    IL_0009:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_000e:  stfld      class Game.Screen Game.SettingsScreen::m_previousScreen
    IL_0013:  ret
  } // end of method SettingsScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       402 (0x192)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_performanceButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_0031

    IL_000d:  ldsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_0'
    IL_0012:  dup
    IL_0013:  brtrue.s   IL_002c

    IL_0015:  pop
    IL_0016:  ldsfld     class Game.SettingsScreen/'<>c' Game.SettingsScreen/'<>c'::'<>9'
    IL_001b:  ldftn      instance void Game.SettingsScreen/'<>c'::'<Update>b__10_0'()
    IL_0021:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0026:  dup
    IL_0027:  stsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_0'
    IL_002c:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_graphicsButton
    IL_0037:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_003c:  brfalse.s  IL_0062

    IL_003e:  ldsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_1'
    IL_0043:  dup
    IL_0044:  brtrue.s   IL_005d

    IL_0046:  pop
    IL_0047:  ldsfld     class Game.SettingsScreen/'<>c' Game.SettingsScreen/'<>c'::'<>9'
    IL_004c:  ldftn      instance void Game.SettingsScreen/'<>c'::'<Update>b__10_1'()
    IL_0052:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0057:  dup
    IL_0058:  stsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_1'
    IL_005d:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_uiButton
    IL_0068:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_006d:  brfalse.s  IL_0093

    IL_006f:  ldsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_2'
    IL_0074:  dup
    IL_0075:  brtrue.s   IL_008e

    IL_0077:  pop
    IL_0078:  ldsfld     class Game.SettingsScreen/'<>c' Game.SettingsScreen/'<>c'::'<>9'
    IL_007d:  ldftn      instance void Game.SettingsScreen/'<>c'::'<Update>b__10_2'()
    IL_0083:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0088:  dup
    IL_0089:  stsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_2'
    IL_008e:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_compatibilityButton
    IL_0099:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_009e:  brfalse.s  IL_00c4

    IL_00a0:  ldsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_3'
    IL_00a5:  dup
    IL_00a6:  brtrue.s   IL_00bf

    IL_00a8:  pop
    IL_00a9:  ldsfld     class Game.SettingsScreen/'<>c' Game.SettingsScreen/'<>c'::'<>9'
    IL_00ae:  ldftn      instance void Game.SettingsScreen/'<>c'::'<Update>b__10_3'()
    IL_00b4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b9:  dup
    IL_00ba:  stsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_3'
    IL_00bf:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_audioButton
    IL_00ca:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00cf:  brfalse.s  IL_00f5

    IL_00d1:  ldsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_4'
    IL_00d6:  dup
    IL_00d7:  brtrue.s   IL_00f0

    IL_00d9:  pop
    IL_00da:  ldsfld     class Game.SettingsScreen/'<>c' Game.SettingsScreen/'<>c'::'<>9'
    IL_00df:  ldftn      instance void Game.SettingsScreen/'<>c'::'<Update>b__10_4'()
    IL_00e5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ea:  dup
    IL_00eb:  stsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_4'
    IL_00f0:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_controlsButton
    IL_00fb:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0100:  brfalse.s  IL_0126

    IL_0102:  ldsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_5'
    IL_0107:  dup
    IL_0108:  brtrue.s   IL_0121

    IL_010a:  pop
    IL_010b:  ldsfld     class Game.SettingsScreen/'<>c' Game.SettingsScreen/'<>c'::'<>9'
    IL_0110:  ldftn      instance void Game.SettingsScreen/'<>c'::'<Update>b__10_5'()
    IL_0116:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_011b:  dup
    IL_011c:  stsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_5'
    IL_0121:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.ButtonWidget Game.SettingsScreen::m_sensitivitiesButton
    IL_012c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0131:  brfalse.s  IL_0157

    IL_0133:  ldsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_6'
    IL_0138:  dup
    IL_0139:  brtrue.s   IL_0152

    IL_013b:  pop
    IL_013c:  ldsfld     class Game.SettingsScreen/'<>c' Game.SettingsScreen/'<>c'::'<>9'
    IL_0141:  ldftn      instance void Game.SettingsScreen/'<>c'::'<Update>b__10_6'()
    IL_0147:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_014c:  dup
    IL_014d:  stsfld     class [System.Runtime]System.Action Game.SettingsScreen/'<>c'::'<>9__10_6'
    IL_0152:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0157:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_015c:  ldfld      bool Game.InputState::Back
    IL_0161:  brtrue.s   IL_0180

    IL_0163:  ldarg.0
    IL_0164:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0169:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_016e:  ldstr      "TopBar.Back"
    IL_0173:  ldc.i4.1
    IL_0174:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0179:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_017e:  brfalse.s  IL_0191

    IL_0180:  ldarg.0
    IL_0181:  ldftn      instance void Game.SettingsScreen::'<Update>b__10_7'()
    IL_0187:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_018c:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0191:  ret
  } // end of method SettingsScreen::Update

  .method private hidebysig instance void 
          '<Update>b__10_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Screen Game.SettingsScreen::m_previousScreen
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [System.Runtime]System.Object
    IL_000c:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0011:  ldarg.0
    IL_0012:  ldnull
    IL_0013:  stfld      class Game.Screen Game.SettingsScreen::m_previousScreen
    IL_0018:  ret
  } // end of method SettingsScreen::'<Update>b__10_7'

} // end of class Game.SettingsScreen