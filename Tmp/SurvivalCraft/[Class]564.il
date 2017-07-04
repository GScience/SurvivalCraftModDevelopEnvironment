.class public auto ansi beforefieldinit Game.SettingsControlsScreen
       extends Game.Screen
{
  .field private class Game.ButtonWidget m_moveControlModeButton
  .field private class Game.ButtonWidget m_lookControlModeButton
  .field private class Game.ButtonWidget m_leftHandedLayoutButton
  .field private class Game.ButtonWidget m_flipVerticalAxisButton
  .field private class Game.ButtonWidget m_autoJumpButton
  .field private class Game.ButtonWidget m_horizontalCreativeFlightButton
  .field private class Game.ContainerWidget m_horizontalCreativeFlightPanel
  .field private class Game.SliderWidget m_moveSensitivitySlider
  .field private class Game.SliderWidget m_lookSensitivitySlider
  .field private class Game.SliderWidget m_gamepadCursorSpeedSlider
  .field private class Game.SliderWidget m_gamepadDeadZoneSlider
  .field private class Game.SliderWidget m_creativeDigTimeSlider
  .field private class Game.SliderWidget m_creativeReachSlider
  .field private class Game.SliderWidget m_holdDurationSlider
  .field private class Game.SliderWidget m_dragDistanceSlider
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       371 (0x173)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsControlsScreen"
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
    IL_0020:  ldstr      "MoveControlMode"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_moveControlModeButton
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "LookControlMode"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_lookControlModeButton
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "LeftHandedLayout"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_leftHandedLayoutButton
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "FlipVerticalAxis"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0070:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_flipVerticalAxisButton
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "AutoJump"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0087:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_autoJumpButton
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "HorizontalCreativeFlight"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009e:  stfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_horizontalCreativeFlightButton
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "HorizontalCreativeFlightPanel"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_00b5:  stfld      class Game.ContainerWidget Game.SettingsControlsScreen::m_horizontalCreativeFlightPanel
    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c1:  ldstr      "MoveSensitivitySlider"
    IL_00c6:  ldc.i4.1
    IL_00c7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_00cc:  stfld      class Game.SliderWidget Game.SettingsControlsScreen::m_moveSensitivitySlider
    IL_00d1:  ldarg.0
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d8:  ldstr      "LookSensitivitySlider"
    IL_00dd:  ldc.i4.1
    IL_00de:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_00e3:  stfld      class Game.SliderWidget Game.SettingsControlsScreen::m_lookSensitivitySlider
    IL_00e8:  ldarg.0
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00ef:  ldstr      "GamepadCursorSpeedSlider"
    IL_00f4:  ldc.i4.1
    IL_00f5:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_00fa:  stfld      class Game.SliderWidget Game.SettingsControlsScreen::m_gamepadCursorSpeedSlider
    IL_00ff:  ldarg.0
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0106:  ldstr      "GamepadDeadZoneSlider"
    IL_010b:  ldc.i4.1
    IL_010c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_0111:  stfld      class Game.SliderWidget Game.SettingsControlsScreen::m_gamepadDeadZoneSlider
    IL_0116:  ldarg.0
    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_011d:  ldstr      "CreativeDigTimeSlider"
    IL_0122:  ldc.i4.1
    IL_0123:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_0128:  stfld      class Game.SliderWidget Game.SettingsControlsScreen::m_creativeDigTimeSlider
    IL_012d:  ldarg.0
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0134:  ldstr      "CreativeReachSlider"
    IL_0139:  ldc.i4.1
    IL_013a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_013f:  stfld      class Game.SliderWidget Game.SettingsControlsScreen::m_creativeReachSlider
    IL_0144:  ldarg.0
    IL_0145:  ldarg.0
    IL_0146:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_014b:  ldstr      "HoldDurationSlider"
    IL_0150:  ldc.i4.1
    IL_0151:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_0156:  stfld      class Game.SliderWidget Game.SettingsControlsScreen::m_holdDurationSlider
    IL_015b:  ldarg.0
    IL_015c:  ldarg.0
    IL_015d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0162:  ldstr      "DragDistanceSlider"
    IL_0167:  ldc.i4.1
    IL_0168:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_016d:  stfld      class Game.SliderWidget Game.SettingsControlsScreen::m_dragDistanceSlider
    IL_0172:  ret
  } // end of method SettingsControlsScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       1158 (0x486)
    .maxstack  7
    .locals init (float32 V_0)
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
    IL_00c5:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_moveSensitivitySlider
    IL_00ca:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_00cf:  brfalse.s  IL_00e1

    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_moveSensitivitySlider
    IL_00d7:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_00dc:  call       void Game.SettingsManager::set_MoveSensitivity(float32)
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_lookSensitivitySlider
    IL_00e7:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_00ec:  brfalse.s  IL_00fe

    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_lookSensitivitySlider
    IL_00f4:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_00f9:  call       void Game.SettingsManager::set_LookSensitivity(float32)
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_gamepadCursorSpeedSlider
    IL_0104:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0109:  brfalse.s  IL_011b

    IL_010b:  ldarg.0
    IL_010c:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_gamepadCursorSpeedSlider
    IL_0111:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0116:  call       void Game.SettingsManager::set_GamepadCursorSpeed(float32)
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_gamepadDeadZoneSlider
    IL_0121:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0126:  brfalse.s  IL_0138

    IL_0128:  ldarg.0
    IL_0129:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_gamepadDeadZoneSlider
    IL_012e:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0133:  call       void Game.SettingsManager::set_GamepadDeadZone(float32)
    IL_0138:  ldarg.0
    IL_0139:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_creativeDigTimeSlider
    IL_013e:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0143:  brfalse.s  IL_0155

    IL_0145:  ldarg.0
    IL_0146:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_creativeDigTimeSlider
    IL_014b:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0150:  call       void Game.SettingsManager::set_CreativeDigTime(float32)
    IL_0155:  ldarg.0
    IL_0156:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_creativeReachSlider
    IL_015b:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0160:  brfalse.s  IL_0172

    IL_0162:  ldarg.0
    IL_0163:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_creativeReachSlider
    IL_0168:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_016d:  call       void Game.SettingsManager::set_CreativeReach(float32)
    IL_0172:  ldarg.0
    IL_0173:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_holdDurationSlider
    IL_0178:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_017d:  brfalse.s  IL_018f

    IL_017f:  ldarg.0
    IL_0180:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_holdDurationSlider
    IL_0185:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_018a:  call       void Game.SettingsManager::set_MinimumHoldDuration(float32)
    IL_018f:  ldarg.0
    IL_0190:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_dragDistanceSlider
    IL_0195:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_019a:  brfalse.s  IL_01ac

    IL_019c:  ldarg.0
    IL_019d:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_dragDistanceSlider
    IL_01a2:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_01a7:  call       void Game.SettingsManager::set_MinimumDragDistance(float32)
    IL_01ac:  ldarg.0
    IL_01ad:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_moveControlModeButton
    IL_01b2:  ldstr      "MoveControlMode."
    IL_01b7:  call       valuetype Game.MoveControlMode Game.SettingsManager::get_MoveControlMode()
    IL_01bc:  box        Game.MoveControlMode
    IL_01c1:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object)
    IL_01c6:  call       string Game.StringsManager::GetString(string)
    IL_01cb:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_01d0:  ldarg.0
    IL_01d1:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_lookControlModeButton
    IL_01d6:  ldstr      "LookControlMode."
    IL_01db:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_01e0:  box        Game.LookControlMode
    IL_01e5:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object)
    IL_01ea:  call       string Game.StringsManager::GetString(string)
    IL_01ef:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_01f4:  ldarg.0
    IL_01f5:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_leftHandedLayoutButton
    IL_01fa:  call       bool Game.SettingsManager::get_LeftHandedLayout()
    IL_01ff:  brtrue.s   IL_0208

    IL_0201:  ldstr      "Off"
    IL_0206:  br.s       IL_020d

    IL_0208:  ldstr      "On"
    IL_020d:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0212:  ldarg.0
    IL_0213:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_flipVerticalAxisButton
    IL_0218:  call       bool Game.SettingsManager::get_FlipVerticalAxis()
    IL_021d:  brtrue.s   IL_0226

    IL_021f:  ldstr      "Off"
    IL_0224:  br.s       IL_022b

    IL_0226:  ldstr      "On"
    IL_022b:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0230:  ldarg.0
    IL_0231:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_autoJumpButton
    IL_0236:  call       bool Game.SettingsManager::get_AutoJump()
    IL_023b:  brtrue.s   IL_0244

    IL_023d:  ldstr      "Off"
    IL_0242:  br.s       IL_0249

    IL_0244:  ldstr      "On"
    IL_0249:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_024e:  ldarg.0
    IL_024f:  ldfld      class Game.ButtonWidget Game.SettingsControlsScreen::m_horizontalCreativeFlightButton
    IL_0254:  call       bool Game.SettingsManager::get_HorizontalCreativeFlight()
    IL_0259:  brtrue.s   IL_0262

    IL_025b:  ldstr      "Off"
    IL_0260:  br.s       IL_0267

    IL_0262:  ldstr      "On"
    IL_0267:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_026c:  ldarg.0
    IL_026d:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_moveSensitivitySlider
    IL_0272:  call       float32 Game.SettingsManager::get_MoveSensitivity()
    IL_0277:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_027c:  ldarg.0
    IL_027d:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_moveSensitivitySlider
    IL_0282:  call       float32 Game.SettingsManager::get_MoveSensitivity()
    IL_0287:  ldc.r4     10.
    IL_028c:  mul
    IL_028d:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0292:  stloc.0
    IL_0293:  ldloca.s   V_0
    IL_0295:  call       instance string [System.Runtime]System.Single::ToString()
    IL_029a:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_029f:  ldarg.0
    IL_02a0:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_lookSensitivitySlider
    IL_02a5:  call       float32 Game.SettingsManager::get_LookSensitivity()
    IL_02aa:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_02af:  ldarg.0
    IL_02b0:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_lookSensitivitySlider
    IL_02b5:  call       float32 Game.SettingsManager::get_LookSensitivity()
    IL_02ba:  ldc.r4     10.
    IL_02bf:  mul
    IL_02c0:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_02c5:  stloc.0
    IL_02c6:  ldloca.s   V_0
    IL_02c8:  call       instance string [System.Runtime]System.Single::ToString()
    IL_02cd:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_02d2:  ldarg.0
    IL_02d3:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_gamepadCursorSpeedSlider
    IL_02d8:  call       float32 Game.SettingsManager::get_GamepadCursorSpeed()
    IL_02dd:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_02e2:  ldarg.0
    IL_02e3:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_gamepadCursorSpeedSlider
    IL_02e8:  ldstr      "{0:0.0}x"
    IL_02ed:  ldc.i4.1
    IL_02ee:  newarr     [System.Runtime]System.Object
    IL_02f3:  dup
    IL_02f4:  ldc.i4.0
    IL_02f5:  call       float32 Game.SettingsManager::get_GamepadCursorSpeed()
    IL_02fa:  box        [System.Runtime]System.Single
    IL_02ff:  stelem.ref
    IL_0300:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0305:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_030a:  ldarg.0
    IL_030b:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_gamepadDeadZoneSlider
    IL_0310:  call       float32 Game.SettingsManager::get_GamepadDeadZone()
    IL_0315:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_031a:  ldarg.0
    IL_031b:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_gamepadDeadZoneSlider
    IL_0320:  ldstr      "{0:0}%"
    IL_0325:  ldc.i4.1
    IL_0326:  newarr     [System.Runtime]System.Object
    IL_032b:  dup
    IL_032c:  ldc.i4.0
    IL_032d:  call       float32 Game.SettingsManager::get_GamepadDeadZone()
    IL_0332:  ldc.r4     100.
    IL_0337:  mul
    IL_0338:  box        [System.Runtime]System.Single
    IL_033d:  stelem.ref
    IL_033e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0343:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_0348:  ldarg.0
    IL_0349:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_creativeDigTimeSlider
    IL_034e:  call       float32 Game.SettingsManager::get_CreativeDigTime()
    IL_0353:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0358:  ldarg.0
    IL_0359:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_creativeDigTimeSlider
    IL_035e:  ldstr      "{0}ms"
    IL_0363:  ldc.i4.1
    IL_0364:  newarr     [System.Runtime]System.Object
    IL_0369:  dup
    IL_036a:  ldc.i4.0
    IL_036b:  ldc.r4     1000.
    IL_0370:  call       float32 Game.SettingsManager::get_CreativeDigTime()
    IL_0375:  mul
    IL_0376:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_037b:  box        [System.Runtime]System.Single
    IL_0380:  stelem.ref
    IL_0381:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0386:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_038b:  ldarg.0
    IL_038c:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_creativeReachSlider
    IL_0391:  call       float32 Game.SettingsManager::get_CreativeReach()
    IL_0396:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_039b:  ldarg.0
    IL_039c:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_creativeReachSlider
    IL_03a1:  ldstr      "{0:0.0} blocks"
    IL_03a6:  ldc.i4.1
    IL_03a7:  newarr     [System.Runtime]System.Object
    IL_03ac:  dup
    IL_03ad:  ldc.i4.0
    IL_03ae:  call       float32 Game.SettingsManager::get_CreativeReach()
    IL_03b3:  box        [System.Runtime]System.Single
    IL_03b8:  stelem.ref
    IL_03b9:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_03be:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_03c3:  ldarg.0
    IL_03c4:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_holdDurationSlider
    IL_03c9:  call       float32 Game.SettingsManager::get_MinimumHoldDuration()
    IL_03ce:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_03d3:  ldarg.0
    IL_03d4:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_holdDurationSlider
    IL_03d9:  ldstr      "{0}ms"
    IL_03de:  ldc.i4.1
    IL_03df:  newarr     [System.Runtime]System.Object
    IL_03e4:  dup
    IL_03e5:  ldc.i4.0
    IL_03e6:  ldc.r4     1000.
    IL_03eb:  call       float32 Game.SettingsManager::get_MinimumHoldDuration()
    IL_03f0:  mul
    IL_03f1:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_03f6:  box        [System.Runtime]System.Single
    IL_03fb:  stelem.ref
    IL_03fc:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0401:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_0406:  ldarg.0
    IL_0407:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_dragDistanceSlider
    IL_040c:  call       float32 Game.SettingsManager::get_MinimumDragDistance()
    IL_0411:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0416:  ldarg.0
    IL_0417:  ldfld      class Game.SliderWidget Game.SettingsControlsScreen::m_dragDistanceSlider
    IL_041c:  ldstr      "{0} pix"
    IL_0421:  ldc.i4.1
    IL_0422:  newarr     [System.Runtime]System.Object
    IL_0427:  dup
    IL_0428:  ldc.i4.0
    IL_0429:  call       float32 Game.SettingsManager::get_MinimumDragDistance()
    IL_042e:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0433:  box        [System.Runtime]System.Single
    IL_0438:  stelem.ref
    IL_0439:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_043e:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_0443:  ldarg.0
    IL_0444:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0449:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_044e:  brtrue.s   IL_0475

    IL_0450:  ldarg.0
    IL_0451:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0456:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_045b:  brtrue.s   IL_0475

    IL_045d:  ldarg.0
    IL_045e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0463:  ldstr      "TopBar.Back"
    IL_0468:  ldc.i4.1
    IL_0469:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_046e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0473:  brfalse.s  IL_0485

    IL_0475:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_047a:  ldc.i4.0
    IL_047b:  newarr     [System.Runtime]System.Object
    IL_0480:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0485:  ret
  } // end of method SettingsControlsScreen::Update

} // end of class Game.SettingsControlsScreen