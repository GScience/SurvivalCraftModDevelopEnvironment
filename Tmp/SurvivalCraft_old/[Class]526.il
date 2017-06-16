.class public auto ansi beforefieldinit Game.SettingsSensitivitiesScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SettingsSensitivitiesScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__6_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SettingsSensitivitiesScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SettingsSensitivitiesScreen/'<>c' Game.SettingsSensitivitiesScreen/'<>c'::'<>9'
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
            '<Update>b__6_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__6_0'

  } // end of class '<>c'

  .field private class Game.SliderWidget m_moveSensitivitySlider
  .field private class Game.SliderWidget m_lookSensitivitySlider
  .field private class Game.SliderWidget m_creativeDigTimeSlider
  .field private class Game.SliderWidget m_tapDurationSlider
  .field private class Game.SliderWidget m_tapDistanceSlider
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       171 (0xab)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsSensitivitiesScreen"
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
    IL_002a:  ldstr      "MoveSensitivitySlider"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_0035:  stfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_moveSensitivitySlider
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "LookSensitivitySlider"
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_0051:  stfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_lookSensitivitySlider
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "CreativeDigTimeSlider"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_006d:  stfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_creativeDigTimeSlider
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0079:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007e:  ldstr      "TapDurationSlider"
    IL_0083:  ldc.i4.1
    IL_0084:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_0089:  stfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_tapDurationSlider
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0095:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009a:  ldstr      "TapDistanceSlider"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_00a5:  stfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_tapDistanceSlider
    IL_00aa:  ret
  } // end of method SettingsSensitivitiesScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       520 (0x208)
    .maxstack  7
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_moveSensitivitySlider
    IL_0006:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_000b:  brfalse.s  IL_001d

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_moveSensitivitySlider
    IL_0013:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0018:  call       void Game.SettingsManager::set_MoveSensitivity(float32)
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_lookSensitivitySlider
    IL_0023:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0028:  brfalse.s  IL_003a

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_lookSensitivitySlider
    IL_0030:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0035:  call       void Game.SettingsManager::set_LookSensitivity(float32)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_creativeDigTimeSlider
    IL_0040:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0045:  brfalse.s  IL_0057

    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_creativeDigTimeSlider
    IL_004d:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0052:  call       void Game.SettingsManager::set_CreativeDigTime(float32)
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_tapDurationSlider
    IL_005d:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0062:  brfalse.s  IL_0074

    IL_0064:  ldarg.0
    IL_0065:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_tapDurationSlider
    IL_006a:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_006f:  call       void Game.SettingsManager::set_MaximumTapDuration(float32)
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_tapDistanceSlider
    IL_007a:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_007f:  brfalse.s  IL_0091

    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_tapDistanceSlider
    IL_0087:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_008c:  call       void Game.SettingsManager::set_MaximumTapDistance(float32)
    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_moveSensitivitySlider
    IL_0097:  call       float32 Game.SettingsManager::get_MoveSensitivity()
    IL_009c:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_moveSensitivitySlider
    IL_00a7:  call       float32 Game.SettingsManager::get_MoveSensitivity()
    IL_00ac:  ldc.r4     10.
    IL_00b1:  mul
    IL_00b2:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00b7:  stloc.0
    IL_00b8:  ldloca.s   V_0
    IL_00ba:  call       instance string [System.Runtime]System.Single::ToString()
    IL_00bf:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_lookSensitivitySlider
    IL_00ca:  call       float32 Game.SettingsManager::get_LookSensitivity()
    IL_00cf:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_lookSensitivitySlider
    IL_00da:  call       float32 Game.SettingsManager::get_LookSensitivity()
    IL_00df:  ldc.r4     10.
    IL_00e4:  mul
    IL_00e5:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00ea:  stloc.0
    IL_00eb:  ldloca.s   V_0
    IL_00ed:  call       instance string [System.Runtime]System.Single::ToString()
    IL_00f2:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_creativeDigTimeSlider
    IL_00fd:  call       float32 Game.SettingsManager::get_CreativeDigTime()
    IL_0102:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_creativeDigTimeSlider
    IL_010d:  ldstr      "{0}ms"
    IL_0112:  ldc.i4.1
    IL_0113:  newarr     [System.Runtime]System.Object
    IL_0118:  dup
    IL_0119:  ldc.i4.0
    IL_011a:  ldc.r4     1000.
    IL_011f:  call       float32 Game.SettingsManager::get_CreativeDigTime()
    IL_0124:  mul
    IL_0125:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_012a:  box        [System.Runtime]System.Single
    IL_012f:  stelem.ref
    IL_0130:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0135:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_tapDurationSlider
    IL_0140:  call       float32 Game.SettingsManager::get_MaximumTapDuration()
    IL_0145:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_014a:  ldarg.0
    IL_014b:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_tapDurationSlider
    IL_0150:  ldstr      "{0}ms"
    IL_0155:  ldc.i4.1
    IL_0156:  newarr     [System.Runtime]System.Object
    IL_015b:  dup
    IL_015c:  ldc.i4.0
    IL_015d:  ldc.r4     1000.
    IL_0162:  call       float32 Game.SettingsManager::get_MaximumTapDuration()
    IL_0167:  mul
    IL_0168:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_016d:  box        [System.Runtime]System.Single
    IL_0172:  stelem.ref
    IL_0173:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0178:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_017d:  ldarg.0
    IL_017e:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_tapDistanceSlider
    IL_0183:  call       float32 Game.SettingsManager::get_MaximumTapDistance()
    IL_0188:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_018d:  ldarg.0
    IL_018e:  ldfld      class Game.SliderWidget Game.SettingsSensitivitiesScreen::m_tapDistanceSlider
    IL_0193:  ldstr      "{0} pix"
    IL_0198:  ldc.i4.1
    IL_0199:  newarr     [System.Runtime]System.Object
    IL_019e:  dup
    IL_019f:  ldc.i4.0
    IL_01a0:  call       float32 Game.SettingsManager::get_MaximumTapDistance()
    IL_01a5:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_01aa:  box        [System.Runtime]System.Single
    IL_01af:  stelem.ref
    IL_01b0:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01b5:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_01ba:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_01bf:  ldfld      bool Game.InputState::Back
    IL_01c4:  brtrue.s   IL_01e3

    IL_01c6:  ldarg.0
    IL_01c7:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01cc:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01d1:  ldstr      "TopBar.Back"
    IL_01d6:  ldc.i4.1
    IL_01d7:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01dc:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01e1:  brfalse.s  IL_0207

    IL_01e3:  ldsfld     class [System.Runtime]System.Action Game.SettingsSensitivitiesScreen/'<>c'::'<>9__6_0'
    IL_01e8:  dup
    IL_01e9:  brtrue.s   IL_0202

    IL_01eb:  pop
    IL_01ec:  ldsfld     class Game.SettingsSensitivitiesScreen/'<>c' Game.SettingsSensitivitiesScreen/'<>c'::'<>9'
    IL_01f1:  ldftn      instance void Game.SettingsSensitivitiesScreen/'<>c'::'<Update>b__6_0'()
    IL_01f7:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01fc:  dup
    IL_01fd:  stsfld     class [System.Runtime]System.Action Game.SettingsSensitivitiesScreen/'<>c'::'<>9__6_0'
    IL_0202:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0207:  ret
  } // end of method SettingsSensitivitiesScreen::Update

} // end of class Game.SettingsSensitivitiesScreen