.class public auto ansi beforefieldinit Game.SettingsPerformanceScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SettingsPerformanceScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__15_1'
    .field public static class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> '<>9__15_0'
    .field public static class [System.Runtime]System.Action '<>9__15_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SettingsPerformanceScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SettingsPerformanceScreen/'<>c' Game.SettingsPerformanceScreen/'<>c'::'<>9'
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
            '<Update>b__15_0'(valuetype Game.MessageDialogButton button) cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0027

      IL_0003:  ldsfld     class [System.Runtime]System.Action Game.SettingsPerformanceScreen/'<>c'::'<>9__15_1'
      IL_0008:  dup
      IL_0009:  brtrue.s   IL_0022

      IL_000b:  pop
      IL_000c:  ldsfld     class Game.SettingsPerformanceScreen/'<>c' Game.SettingsPerformanceScreen/'<>c'::'<>9'
      IL_0011:  ldftn      instance void Game.SettingsPerformanceScreen/'<>c'::'<Update>b__15_1'()
      IL_0017:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_001c:  dup
      IL_001d:  stsfld     class [System.Runtime]System.Action Game.SettingsPerformanceScreen/'<>c'::'<>9__15_1'
      IL_0022:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
      IL_0027:  ret
    } // end of method '<>c'::'<Update>b__15_0'

    .method assembly hidebysig instance void 
            '<Update>b__15_1'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__15_1'

    .method assembly hidebysig instance void 
            '<Update>b__15_2'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__15_2'

  } // end of class '<>c'

  .field private static class [System.Collections]System.Collections.Generic.List`1<float32> m_framerateLimits
  .field private static class [System.Collections]System.Collections.Generic.List`1<int32> m_visibilityRanges
  .field private class Game.ButtonWidget m_resolutionButton
  .field private class Game.SliderWidget m_visibilityRangeSlider
  .field private class Game.LabelWidget m_visibilityRangeWarningLabel
  .field private class Game.ButtonWidget m_viewAnglesButton
  .field private class Game.ButtonWidget m_skyRenderingModeButton
  .field private class Game.ButtonWidget m_textureAnimationModeButton
  .field private class Game.ButtonWidget m_objectShadowsButton
  .field private class Game.ButtonWidget m_pathfindingButton
  .field private class Game.SliderWidget m_framerateLimitSlider
  .field private class Game.ButtonWidget m_displayFpsCounterButton
  .field private int32 m_enterVisibilityRange
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       351 (0x15f)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsPerformanceScreen"
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
    IL_002a:  ldstr      "ResolutionButton"
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0035:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_resolutionButton
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0041:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0046:  ldstr      "VisibilityRangeSlider"
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_0051:  stfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "VisibilityRangeWarningLabel"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_006d:  stfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0079:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007e:  ldstr      "ViewAnglesButton"
    IL_0083:  ldc.i4.1
    IL_0084:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0089:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_viewAnglesButton
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0095:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009a:  ldstr      "SkyRenderingModeButton"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00a5:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_skyRenderingModeButton
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00b1:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b6:  ldstr      "TextureAnimationModeButton"
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00c1:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_textureAnimationModeButton
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00cd:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d2:  ldstr      "ObjectShadowsButton"
    IL_00d7:  ldc.i4.1
    IL_00d8:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00dd:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_objectShadowsButton
    IL_00e2:  ldarg.0
    IL_00e3:  ldarg.0
    IL_00e4:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00e9:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00ee:  ldstr      "PathfindingButton"
    IL_00f3:  ldc.i4.1
    IL_00f4:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00f9:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_pathfindingButton
    IL_00fe:  ldarg.0
    IL_00ff:  ldarg.0
    IL_0100:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0105:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_010a:  ldstr      "FramerateLimitSlider"
    IL_010f:  ldc.i4.1
    IL_0110:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.SliderWidget>(string,
                                                                                           bool)
    IL_0115:  stfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_framerateLimitSlider
    IL_011a:  ldarg.0
    IL_011b:  ldarg.0
    IL_011c:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0121:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0126:  ldstr      "DisplayFpsCounterButton"
    IL_012b:  ldc.i4.1
    IL_012c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0131:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_displayFpsCounterButton
    IL_0136:  ldarg.0
    IL_0137:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_013c:  ldc.r4     0.0
    IL_0141:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_014c:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_visibilityRanges
    IL_0151:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0156:  ldc.i4.1
    IL_0157:  sub
    IL_0158:  conv.r4
    IL_0159:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_015e:  ret
  } // end of method SettingsPerformanceScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0006:  stfld      int32 Game.SettingsPerformanceScreen::m_enterVisibilityRange
    IL_000b:  ret
  } // end of method SettingsPerformanceScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       1218 (0x4c2)
    .maxstack  6
    .locals init (class [System.Runtime]System.Collections.Generic.IList`1<int32> V_0,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_1,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_2,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_3,
             valuetype Game.ResolutionMode V_4,
             valuetype Game.ViewAngleMode V_5,
             valuetype Game.SkyRenderingMode V_6,
             valuetype Game.TextureAnimationMode V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_resolutionButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_0036

    IL_000d:  ldtoken    Game.ResolutionMode
    IL_0012:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0017:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_0023:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0028:  ldc.i4.1
    IL_0029:  add
    IL_002a:  ldloc.0
    IL_002b:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0030:  rem
    IL_0031:  call       void Game.SettingsManager::set_ResolutionMode(valuetype Game.ResolutionMode)
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_003c:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0041:  brfalse.s  IL_0070

    IL_0043:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_visibilityRanges
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_004e:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0053:  conv.i4
    IL_0054:  ldc.i4.0
    IL_0055:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_visibilityRanges
    IL_005a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_005f:  ldc.i4.1
    IL_0060:  sub
    IL_0061:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0066:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_006b:  call       void Game.SettingsManager::set_VisibilityRange(int32)
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_viewAnglesButton
    IL_0076:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_007b:  brfalse.s  IL_00a6

    IL_007d:  ldtoken    Game.ViewAngleMode
    IL_0082:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0087:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_008c:  stloc.1
    IL_008d:  ldloc.1
    IL_008e:  call       valuetype Game.ViewAngleMode Game.SettingsManager::get_ViewAngleMode()
    IL_0093:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0098:  ldc.i4.1
    IL_0099:  add
    IL_009a:  ldloc.1
    IL_009b:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_00a0:  rem
    IL_00a1:  call       void Game.SettingsManager::set_ViewAngleMode(valuetype Game.ViewAngleMode)
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_skyRenderingModeButton
    IL_00ac:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00b1:  brfalse.s  IL_00dc

    IL_00b3:  ldtoken    Game.SkyRenderingMode
    IL_00b8:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00bd:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_00c2:  stloc.2
    IL_00c3:  ldloc.2
    IL_00c4:  call       valuetype Game.SkyRenderingMode Game.SettingsManager::get_SkyRenderingMode()
    IL_00c9:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_00ce:  ldc.i4.1
    IL_00cf:  add
    IL_00d0:  ldloc.2
    IL_00d1:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_00d6:  rem
    IL_00d7:  call       void Game.SettingsManager::set_SkyRenderingMode(valuetype Game.SkyRenderingMode)
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_textureAnimationModeButton
    IL_00e2:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00e7:  brfalse.s  IL_0112

    IL_00e9:  ldtoken    Game.TextureAnimationMode
    IL_00ee:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00f3:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_00f8:  stloc.3
    IL_00f9:  ldloc.3
    IL_00fa:  call       valuetype Game.TextureAnimationMode Game.SettingsManager::get_TextureAnimationMode()
    IL_00ff:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0104:  ldc.i4.1
    IL_0105:  add
    IL_0106:  ldloc.3
    IL_0107:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_010c:  rem
    IL_010d:  call       void Game.SettingsManager::set_TextureAnimationMode(valuetype Game.TextureAnimationMode)
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_objectShadowsButton
    IL_0118:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_011d:  brfalse.s  IL_012c

    IL_011f:  call       bool Game.SettingsManager::get_ObjectsShadowsEnabled()
    IL_0124:  ldc.i4.0
    IL_0125:  ceq
    IL_0127:  call       void Game.SettingsManager::set_ObjectsShadowsEnabled(bool)
    IL_012c:  ldarg.0
    IL_012d:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_pathfindingButton
    IL_0132:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0137:  brfalse.s  IL_0146

    IL_0139:  call       bool Game.SettingsManager::get_PathfindingEnabled()
    IL_013e:  ldc.i4.0
    IL_013f:  ceq
    IL_0141:  call       void Game.SettingsManager::set_PathfindingEnabled(bool)
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_framerateLimitSlider
    IL_014c:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0151:  brfalse.s  IL_0180

    IL_0153:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<float32> Game.SettingsPerformanceScreen::m_framerateLimits
    IL_0158:  ldarg.0
    IL_0159:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_framerateLimitSlider
    IL_015e:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0163:  conv.i4
    IL_0164:  ldc.i4.0
    IL_0165:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<float32> Game.SettingsPerformanceScreen::m_framerateLimits
    IL_016a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<float32>::get_Count()
    IL_016f:  ldc.i4.1
    IL_0170:  sub
    IL_0171:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0176:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<float32>::get_Item(int32)
    IL_017b:  call       void Game.SettingsManager::set_FramerateLimit(float32)
    IL_0180:  ldarg.0
    IL_0181:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_displayFpsCounterButton
    IL_0186:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_018b:  brfalse.s  IL_019a

    IL_018d:  call       bool Game.SettingsManager::get_DisplayFpsCounter()
    IL_0192:  ldc.i4.0
    IL_0193:  ceq
    IL_0195:  call       void Game.SettingsManager::set_DisplayFpsCounter(bool)
    IL_019a:  ldarg.0
    IL_019b:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_resolutionButton
    IL_01a0:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_01a5:  stloc.s    V_4
    IL_01a7:  ldloca.s   V_4
    IL_01a9:  constrained. Game.ResolutionMode
    IL_01af:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_01b4:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_01b9:  ldarg.0
    IL_01ba:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_01bf:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_visibilityRanges
    IL_01c4:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_01c9:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::IndexOf(!0)
    IL_01ce:  ldc.i4.0
    IL_01cf:  bge.s      IL_01d5

    IL_01d1:  ldc.i4.s   64
    IL_01d3:  br.s       IL_01e4

    IL_01d5:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_visibilityRanges
    IL_01da:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_01df:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::IndexOf(!0)
    IL_01e4:  conv.r4
    IL_01e5:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_01f0:  ldstr      "{0} blocks"
    IL_01f5:  ldc.i4.1
    IL_01f6:  newarr     [System.Runtime]System.Object
    IL_01fb:  dup
    IL_01fc:  ldc.i4.0
    IL_01fd:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0202:  box        [System.Runtime]System.Int32
    IL_0207:  stelem.ref
    IL_0208:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_020d:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_0212:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0217:  ldc.i4.s   48
    IL_0219:  bgt.s      IL_023c

    IL_021b:  ldarg.0
    IL_021c:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0221:  ldc.i4.1
    IL_0222:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0227:  ldarg.0
    IL_0228:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_022d:  ldstr      "(good for slower devices)"
    IL_0232:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0237:  br         IL_02f0

    IL_023c:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0241:  ldc.i4.s   64
    IL_0243:  bgt.s      IL_0256

    IL_0245:  ldarg.0
    IL_0246:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_024b:  ldc.i4.0
    IL_024c:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0251:  br         IL_02f0

    IL_0256:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_025b:  ldc.i4     0x80
    IL_0260:  bgt.s      IL_0280

    IL_0262:  ldarg.0
    IL_0263:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0268:  ldc.i4.1
    IL_0269:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_026e:  ldarg.0
    IL_026f:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0274:  ldstr      "(1GB RAM recommended)"
    IL_0279:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_027e:  br.s       IL_02f0

    IL_0280:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0285:  ldc.i4     0x100
    IL_028a:  bgt.s      IL_02aa

    IL_028c:  ldarg.0
    IL_028d:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0292:  ldc.i4.1
    IL_0293:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0298:  ldarg.0
    IL_0299:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_029e:  ldstr      "(2GB RAM and a fast\ndevice recommended)"
    IL_02a3:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_02a8:  br.s       IL_02f0

    IL_02aa:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_02af:  ldc.i4     0x200
    IL_02b4:  bgt.s      IL_02d4

    IL_02b6:  ldarg.0
    IL_02b7:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_02bc:  ldc.i4.1
    IL_02bd:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_02c8:  ldstr      "(4GB RAM and a fast\ndevice recommended)"
    IL_02cd:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_02d2:  br.s       IL_02f0

    IL_02d4:  ldarg.0
    IL_02d5:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_02da:  ldc.i4.1
    IL_02db:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_02e0:  ldarg.0
    IL_02e1:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_02e6:  ldstr      "(8GB RAM and a fast\ndevice recommended)"
    IL_02eb:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_02f0:  ldarg.0
    IL_02f1:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_viewAnglesButton
    IL_02f6:  call       valuetype Game.ViewAngleMode Game.SettingsManager::get_ViewAngleMode()
    IL_02fb:  stloc.s    V_5
    IL_02fd:  ldloca.s   V_5
    IL_02ff:  constrained. Game.ViewAngleMode
    IL_0305:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_030a:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_030f:  ldarg.0
    IL_0310:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_skyRenderingModeButton
    IL_0315:  call       valuetype Game.SkyRenderingMode Game.SettingsManager::get_SkyRenderingMode()
    IL_031a:  stloc.s    V_6
    IL_031c:  ldloca.s   V_6
    IL_031e:  constrained. Game.SkyRenderingMode
    IL_0324:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0329:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_032e:  ldarg.0
    IL_032f:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_textureAnimationModeButton
    IL_0334:  call       valuetype Game.TextureAnimationMode Game.SettingsManager::get_TextureAnimationMode()
    IL_0339:  stloc.s    V_7
    IL_033b:  ldloca.s   V_7
    IL_033d:  constrained. Game.TextureAnimationMode
    IL_0343:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0348:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_034d:  ldarg.0
    IL_034e:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_objectShadowsButton
    IL_0353:  call       bool Game.SettingsManager::get_ObjectsShadowsEnabled()
    IL_0358:  brtrue.s   IL_0361

    IL_035a:  ldstr      "Disabled"
    IL_035f:  br.s       IL_0366

    IL_0361:  ldstr      "Enabled"
    IL_0366:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_036b:  ldarg.0
    IL_036c:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_pathfindingButton
    IL_0371:  call       bool Game.SettingsManager::get_PathfindingEnabled()
    IL_0376:  brtrue.s   IL_037f

    IL_0378:  ldstr      "Disabled"
    IL_037d:  br.s       IL_0384

    IL_037f:  ldstr      "Enabled"
    IL_0384:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0389:  ldarg.0
    IL_038a:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_framerateLimitSlider
    IL_038f:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<float32> Game.SettingsPerformanceScreen::m_framerateLimits
    IL_0394:  call       float32 Game.SettingsManager::get_FramerateLimit()
    IL_0399:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<float32>::IndexOf(!0)
    IL_039e:  ldc.i4.0
    IL_039f:  bge.s      IL_03af

    IL_03a1:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<float32> Game.SettingsPerformanceScreen::m_framerateLimits
    IL_03a6:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<float32>::get_Count()
    IL_03ab:  ldc.i4.1
    IL_03ac:  sub
    IL_03ad:  br.s       IL_03be

    IL_03af:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<float32> Game.SettingsPerformanceScreen::m_framerateLimits
    IL_03b4:  call       float32 Game.SettingsManager::get_FramerateLimit()
    IL_03b9:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<float32>::IndexOf(!0)
    IL_03be:  conv.r4
    IL_03bf:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_03c4:  ldarg.0
    IL_03c5:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_framerateLimitSlider
    IL_03ca:  call       float32 Game.SettingsManager::get_FramerateLimit()
    IL_03cf:  ldc.r4     (00 00 80 7F)
    IL_03d4:  bne.un.s   IL_03dd

    IL_03d6:  ldstr      "Unlimited"
    IL_03db:  br.s       IL_03fa

    IL_03dd:  ldstr      "{0} FPS"
    IL_03e2:  ldc.i4.1
    IL_03e3:  newarr     [System.Runtime]System.Object
    IL_03e8:  dup
    IL_03e9:  ldc.i4.0
    IL_03ea:  call       float32 Game.SettingsManager::get_FramerateLimit()
    IL_03ef:  box        [System.Runtime]System.Single
    IL_03f4:  stelem.ref
    IL_03f5:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_03fa:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_03ff:  ldarg.0
    IL_0400:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_displayFpsCounterButton
    IL_0405:  call       bool Game.SettingsManager::get_DisplayFpsCounter()
    IL_040a:  brtrue.s   IL_0413

    IL_040c:  ldstr      "No"
    IL_0411:  br.s       IL_0418

    IL_0413:  ldstr      "Yes"
    IL_0418:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_041d:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0422:  ldfld      bool Game.InputState::Back
    IL_0427:  brtrue.s   IL_0446

    IL_0429:  ldarg.0
    IL_042a:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_042f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0434:  ldstr      "TopBar.Back"
    IL_0439:  ldc.i4.1
    IL_043a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_043f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0444:  brfalse.s  IL_04c1

    IL_0446:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_044b:  ldarg.0
    IL_044c:  ldfld      int32 Game.SettingsPerformanceScreen::m_enterVisibilityRange
    IL_0451:  ble.s      IL_049d

    IL_0453:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0458:  ldc.i4     0x80
    IL_045d:  ble.s      IL_049d

    IL_045f:  ldstr      "Large Visibility Range"
    IL_0464:  ldstr      "The game may crash randomly if your device does no"
    + "t have enough memory to handle the visibility range you selected."
    IL_0469:  ldstr      "OK"
    IL_046e:  ldstr      "Back"
    IL_0473:  ldsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.SettingsPerformanceScreen/'<>c'::'<>9__15_0'
    IL_0478:  dup
    IL_0479:  brtrue.s   IL_0492

    IL_047b:  pop
    IL_047c:  ldsfld     class Game.SettingsPerformanceScreen/'<>c' Game.SettingsPerformanceScreen/'<>c'::'<>9'
    IL_0481:  ldftn      instance void Game.SettingsPerformanceScreen/'<>c'::'<Update>b__15_0'(valuetype Game.MessageDialogButton)
    IL_0487:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_048c:  dup
    IL_048d:  stsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.SettingsPerformanceScreen/'<>c'::'<>9__15_0'
    IL_0492:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0497:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_049c:  ret

    IL_049d:  ldsfld     class [System.Runtime]System.Action Game.SettingsPerformanceScreen/'<>c'::'<>9__15_2'
    IL_04a2:  dup
    IL_04a3:  brtrue.s   IL_04bc

    IL_04a5:  pop
    IL_04a6:  ldsfld     class Game.SettingsPerformanceScreen/'<>c' Game.SettingsPerformanceScreen/'<>c'::'<>9'
    IL_04ab:  ldftn      instance void Game.SettingsPerformanceScreen/'<>c'::'<Update>b__15_2'()
    IL_04b1:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_04b6:  dup
    IL_04b7:  stsfld     class [System.Runtime]System.Action Game.SettingsPerformanceScreen/'<>c'::'<>9__15_2'
    IL_04bc:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_04c1:  ret
  } // end of method SettingsPerformanceScreen::Update

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       179 (0xb3)
    .maxstack  3
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<float32>::.ctor()
    IL_0005:  dup
    IL_0006:  ldc.r4     20.
    IL_000b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<float32>::Add(!0)
    IL_0010:  dup
    IL_0011:  ldc.r4     30.
    IL_0016:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<float32>::Add(!0)
    IL_001b:  dup
    IL_001c:  ldc.r4     40.
    IL_0021:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<float32>::Add(!0)
    IL_0026:  dup
    IL_0027:  ldc.r4     60.
    IL_002c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<float32>::Add(!0)
    IL_0031:  dup
    IL_0032:  ldc.r4     (00 00 80 7F)
    IL_0037:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<float32>::Add(!0)
    IL_003c:  stsfld     class [System.Collections]System.Collections.Generic.List`1<float32> Game.SettingsPerformanceScreen::m_framerateLimits
    IL_0041:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0046:  dup
    IL_0047:  ldc.i4.s   32
    IL_0049:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_004e:  dup
    IL_004f:  ldc.i4.s   48
    IL_0051:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0056:  dup
    IL_0057:  ldc.i4.s   64
    IL_0059:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_005e:  dup
    IL_005f:  ldc.i4.s   80
    IL_0061:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0066:  dup
    IL_0067:  ldc.i4.s   96
    IL_0069:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_006e:  dup
    IL_006f:  ldc.i4.s   112
    IL_0071:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0076:  dup
    IL_0077:  ldc.i4     0x80
    IL_007c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0081:  dup
    IL_0082:  ldc.i4     0xa0
    IL_0087:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_008c:  dup
    IL_008d:  ldc.i4     0xc0
    IL_0092:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0097:  dup
    IL_0098:  ldc.i4     0xe0
    IL_009d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_00a2:  dup
    IL_00a3:  ldc.i4     0x100
    IL_00a8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_00ad:  stsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_visibilityRanges
    IL_00b2:  ret
  } // end of method SettingsPerformanceScreen::.cctor

} // end of class Game.SettingsPerformanceScreen