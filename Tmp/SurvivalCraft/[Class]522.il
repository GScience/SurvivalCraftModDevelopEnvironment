.class public auto ansi beforefieldinit Game.SettingsControlsScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SettingsControlsScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__8_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SettingsControlsScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SettingsControlsScreen/'<>c' Game.SettingsControlsScreen/'<>c'::'<>9'
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
            '<Update>b__8_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__8_0'

  } // end of class '<>c'

  .field private class Game.ButtonWidget m_moveControlModeButton
  .field private class Game.ButtonWidget m_lookControlModeButton
  .field private class Game.ButtonWidget m_leftHandedLayoutButton
  .field private class Game.ButtonWidget m_flipVerticalAxisButton
  .field private class Game.ButtonWidget m_autoJumpButton
  .field private class Game.ButtonWidget m_horizontalCreativeFlightButton
  .field private class Game.ContainerWidget m_horizontalCreativeFlightPanel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       227 (0xe3)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsControlsScreen"
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
    IL_002a:  ldstr      "MoveControlMode"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0035:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_moveControlModeButton
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "LookControlMode"
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0051:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_lookControlModeButton
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "LeftHandedLayout"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_006d:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_leftHandedLayoutButton
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0079:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007e:  ldstr      "FlipVerticalAxis"
    IL_0083:  ldc.i4.1
    IL_0084:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0089:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_flipVerticalAxisButton
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0095:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009a:  ldstr      "AutoJump"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00a5:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_autoJumpButton
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00b1:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b6:  ldstr      "HorizontalCreativeFlight"
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00c1:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_horizontalCreativeFlightButton
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00cd:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d2:  ldstr      "HorizontalCreativeFlightPanel"
    IL_00d7:  ldc.i4.1
    IL_00d8:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_00dd:  stfld      class Game.ContainerWidget Game.SettingsControlsScreen::m_horizontalCreativeFlightPanel
    IL_00e2:  ret
  } // end of method SettingsControlsScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       466 (0x1d2)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_moveControlModeButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_002e

    IL_000d:  call       valuetype Game.MoveControlMode Game.SettingsManager::get_MoveControlMode()
    IL_0012:  ldc.i4.1
    IL_0013:  add
    IL_0014:  ldtoken    Game.MoveControlMode
    IL_0019:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_001e:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0023:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0028:  rem
    IL_0029:  call       void Game.SettingsManager::set_MoveControlMode(valuetype Game.MoveControlMode)
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_lookControlModeButton
    IL_0034:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0039:  brfalse.s  IL_005c

    IL_003b:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_0040:  ldc.i4.1
    IL_0041:  add
    IL_0042:  ldtoken    Game.LookControlMode
    IL_0047:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_004c:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0051:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0056:  rem
    IL_0057:  call       void Game.SettingsManager::set_LookControlMode(valuetype Game.LookControlMode)
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_leftHandedLayoutButton
    IL_0062:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0067:  brfalse.s  IL_0076

    IL_0069:  call       bool Game.SettingsManager::get_LeftHandedLayout()
    IL_006e:  ldc.i4.0
    IL_006f:  ceq
    IL_0071:  call       void Game.SettingsManager::set_LeftHandedLayout(bool)
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_flipVerticalAxisButton
    IL_007c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0081:  brfalse.s  IL_0090

    IL_0083:  call       bool Game.SettingsManager::get_FlipVerticalAxis()
    IL_0088:  ldc.i4.0
    IL_0089:  ceq
    IL_008b:  call       void Game.SettingsManager::set_FlipVerticalAxis(bool)
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_autoJumpButton
    IL_0096:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_009b:  brfalse.s  IL_00aa

    IL_009d:  call       bool Game.SettingsManager::get_AutoJump()
    IL_00a2:  ldc.i4.0
    IL_00a3:  ceq
    IL_00a5:  call       void Game.SettingsManager::set_AutoJump(bool)
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_horizontalCreativeFlightButton
    IL_00b0:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00b5:  brfalse.s  IL_00c4

    IL_00b7:  call       bool Game.SettingsManager::get_HorizontalCreativeFlight()
    IL_00bc:  ldc.i4.0
    IL_00bd:  ceq
    IL_00bf:  call       void Game.SettingsManager::set_HorizontalCreativeFlight(bool)
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_moveControlModeButton
    IL_00ca:  ldstr      "MoveControlMode."
    IL_00cf:  call       valuetype Game.MoveControlMode Game.SettingsManager::get_MoveControlMode()
    IL_00d4:  box        Game.MoveControlMode
    IL_00d9:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object)
    IL_00de:  call       string Game.StringsManager::GetString(string)
    IL_00e3:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_lookControlModeButton
    IL_00ee:  ldstr      "LookControlMode."
    IL_00f3:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_00f8:  box        Game.LookControlMode
    IL_00fd:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object)
    IL_0102:  call       string Game.StringsManager::GetString(string)
    IL_0107:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_010c:  ldarg.0
    IL_010d:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_leftHandedLayoutButton
    IL_0112:  call       bool Game.SettingsManager::get_LeftHandedLayout()
    IL_0117:  brtrue.s   IL_0120

    IL_0119:  ldstr      "Off"
    IL_011e:  br.s       IL_0125

    IL_0120:  ldstr      "On"
    IL_0125:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_012a:  ldarg.0
    IL_012b:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_flipVerticalAxisButton
    IL_0130:  call       bool Game.SettingsManager::get_FlipVerticalAxis()
    IL_0135:  brtrue.s   IL_013e

    IL_0137:  ldstr      "Off"
    IL_013c:  br.s       IL_0143

    IL_013e:  ldstr      "On"
    IL_0143:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0148:  ldarg.0
    IL_0149:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_autoJumpButton
    IL_014e:  call       bool Game.SettingsManager::get_AutoJump()
    IL_0153:  brtrue.s   IL_015c

    IL_0155:  ldstr      "Off"
    IL_015a:  br.s       IL_0161

    IL_015c:  ldstr      "On"
    IL_0161:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0166:  ldarg.0
    IL_0167:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_horizontalCreativeFlightButton
    IL_016c:  call       bool Game.SettingsManager::get_HorizontalCreativeFlight()
    IL_0171:  brtrue.s   IL_017a

    IL_0173:  ldstr      "Off"
    IL_0178:  br.s       IL_017f

    IL_017a:  ldstr      "On"
    IL_017f:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0184:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0189:  ldfld      bool Game.InputState::Back
    IL_018e:  brtrue.s   IL_01ad

    IL_0190:  ldarg.0
    IL_0191:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0196:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_019b:  ldstr      "TopBar.Back"
    IL_01a0:  ldc.i4.1
    IL_01a1:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01a6:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01ab:  brfalse.s  IL_01d1

    IL_01ad:  ldsfld     class [System.Runtime]System.Action Game.SettingsControlsScreen/'<>c'::'<>9__8_0'
    IL_01b2:  dup
    IL_01b3:  brtrue.s   IL_01cc

    IL_01b5:  pop
    IL_01b6:  ldsfld     class Game.SettingsControlsScreen/'<>c' Game.SettingsControlsScreen/'<>c'::'<>9'
    IL_01bb:  ldftn      instance void Game.SettingsControlsScreen/'<>c'::'<Update>b__8_0'()
    IL_01c1:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01c6:  dup
    IL_01c7:  stsfld     class [System.Runtime]System.Action Game.SettingsControlsScreen/'<>c'::'<>9__8_0'
    IL_01cc:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01d1:  ret
  } // end of method SettingsControlsScreen::Update

} // end of class Game.SettingsControlsScreen