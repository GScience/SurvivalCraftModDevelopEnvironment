.class public auto ansi beforefieldinit Game.SettingsPerformanceScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SettingsPerformanceScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> '<>9__13_0'
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
            '<Update>b__13_0'(valuetype Game.MessageDialogButton button) cil managed
    {
      // 代码大小       20 (0x14)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0013

      IL_0003:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0008:  ldc.i4.0
      IL_0009:  newarr     [System.Runtime]System.Object
      IL_000e:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0013:  ret
    } // end of method '<>c'::'<Update>b__13_0'

  } // end of class '<>c'

  .field private static class [System.Collections]System.Collections.Generic.List`1<int32> m_presentationIntervals
  .field private static class [System.Collections]System.Collections.Generic.List`1<int32> m_visibilityRanges
  .field private class Game.ButtonWidget m_resolutionButton
  .field private class Game.SliderWidget m_visibilityRangeSlider
  .field private class Game.LabelWidget m_visibilityRangeWarningLabel
  .field private class Game.ButtonWidget m_viewAnglesButton
  .field private class Game.ButtonWidget m_skyRenderingModeButton
  .field private class Game.ButtonWidget m_objectShadowsButton
  .field private class Game.SliderWidget m_framerateLimitSlider
  .field private class Game.ButtonWidget m_displayFpsCounterButton
  .field private int32 m_enterVisibilityRange
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       250 (0xfa)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/SettingsPerformanceScreen"
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
    IL_0020:  ldstr      "ResolutionButton"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_resolutionButton
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "VisibilityRangeSlider"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "VisibilityRangeWarningLabel"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0059:  stfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "ViewAnglesButton"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0070:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_viewAnglesButton
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "SkyRenderingModeButton"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0087:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_skyRenderingModeButton
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "ObjectShadowsButton"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009e:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_objectShadowsButton
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "FramerateLimitSlider"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SliderWidget>(string,
                                                                                      bool)
    IL_00b5:  stfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_framerateLimitSlider
    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c1:  ldstr      "DisplayFpsCounterButton"
    IL_00c6:  ldc.i4.1
    IL_00c7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00cc:  stfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_displayFpsCounterButton
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_00d7:  ldc.r4     0.0
    IL_00dc:  callvirt   instance void Game.SliderWidget::set_MinValue(float32)
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_00e7:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_visibilityRanges
    IL_00ec:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_00f1:  ldc.i4.1
    IL_00f2:  sub
    IL_00f3:  conv.r4
    IL_00f4:  callvirt   instance void Game.SliderWidget::set_MaxValue(float32)
    IL_00f9:  ret
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
    // 代码大小       1061 (0x425)
    .maxstack  7
    .locals init (class [System.Runtime]System.Collections.Generic.IList`1<int32> V_0,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_1,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_2,
             valuetype Game.ResolutionMode V_3,
             valuetype Game.ViewAngleMode V_4,
             valuetype Game.SkyRenderingMode V_5)
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
    IL_00dd:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_objectShadowsButton
    IL_00e2:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00e7:  brfalse.s  IL_00f6

    IL_00e9:  call       bool Game.SettingsManager::get_ObjectsShadowsEnabled()
    IL_00ee:  ldc.i4.0
    IL_00ef:  ceq
    IL_00f1:  call       void Game.SettingsManager::set_ObjectsShadowsEnabled(bool)
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_framerateLimitSlider
    IL_00fc:  callvirt   instance bool Game.SliderWidget::get_IsSliding()
    IL_0101:  brfalse.s  IL_0130

    IL_0103:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_presentationIntervals
    IL_0108:  ldarg.0
    IL_0109:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_framerateLimitSlider
    IL_010e:  callvirt   instance float32 Game.SliderWidget::get_Value()
    IL_0113:  conv.i4
    IL_0114:  ldc.i4.0
    IL_0115:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_presentationIntervals
    IL_011a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_011f:  ldc.i4.1
    IL_0120:  sub
    IL_0121:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0126:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_012b:  call       void Game.SettingsManager::set_PresentationInterval(int32)
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_displayFpsCounterButton
    IL_0136:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_013b:  brfalse.s  IL_014a

    IL_013d:  call       bool Game.SettingsManager::get_DisplayFpsCounter()
    IL_0142:  ldc.i4.0
    IL_0143:  ceq
    IL_0145:  call       void Game.SettingsManager::set_DisplayFpsCounter(bool)
    IL_014a:  ldarg.0
    IL_014b:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_resolutionButton
    IL_0150:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_0155:  stloc.3
    IL_0156:  ldloca.s   V_3
    IL_0158:  constrained. Game.ResolutionMode
    IL_015e:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0163:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0168:  ldarg.0
    IL_0169:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_016e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_visibilityRanges
    IL_0173:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0178:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::IndexOf(!0)
    IL_017d:  ldc.i4.0
    IL_017e:  bge.s      IL_0184

    IL_0180:  ldc.i4.s   64
    IL_0182:  br.s       IL_0193

    IL_0184:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_visibilityRanges
    IL_0189:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_018e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::IndexOf(!0)
    IL_0193:  conv.r4
    IL_0194:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0199:  ldarg.0
    IL_019a:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_visibilityRangeSlider
    IL_019f:  ldstr      "{0} blocks"
    IL_01a4:  ldc.i4.1
    IL_01a5:  newarr     [System.Runtime]System.Object
    IL_01aa:  dup
    IL_01ab:  ldc.i4.0
    IL_01ac:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_01b1:  box        [System.Runtime]System.Int32
    IL_01b6:  stelem.ref
    IL_01b7:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01bc:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_01c1:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_01c6:  ldc.i4.s   48
    IL_01c8:  bgt.s      IL_01eb

    IL_01ca:  ldarg.0
    IL_01cb:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_01d0:  ldc.i4.1
    IL_01d1:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01d6:  ldarg.0
    IL_01d7:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_01dc:  ldstr      "(good for slower devices)"
    IL_01e1:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01e6:  br         IL_029f

    IL_01eb:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_01f0:  ldc.i4.s   64
    IL_01f2:  bgt.s      IL_0205

    IL_01f4:  ldarg.0
    IL_01f5:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_01fa:  ldc.i4.0
    IL_01fb:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0200:  br         IL_029f

    IL_0205:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_020a:  ldc.i4     0x80
    IL_020f:  bgt.s      IL_022f

    IL_0211:  ldarg.0
    IL_0212:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0217:  ldc.i4.1
    IL_0218:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_021d:  ldarg.0
    IL_021e:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0223:  ldstr      "(1GB RAM recommended)"
    IL_0228:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_022d:  br.s       IL_029f

    IL_022f:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0234:  ldc.i4     0x100
    IL_0239:  bgt.s      IL_0259

    IL_023b:  ldarg.0
    IL_023c:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0241:  ldc.i4.1
    IL_0242:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0247:  ldarg.0
    IL_0248:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_024d:  ldstr      "(2GB RAM and a fast\ndevice recommended)"
    IL_0252:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0257:  br.s       IL_029f

    IL_0259:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_025e:  ldc.i4     0x200
    IL_0263:  bgt.s      IL_0283

    IL_0265:  ldarg.0
    IL_0266:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_026b:  ldc.i4.1
    IL_026c:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0271:  ldarg.0
    IL_0272:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0277:  ldstr      "(4GB RAM and a very fast\ndevice recommended)"
    IL_027c:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0281:  br.s       IL_029f

    IL_0283:  ldarg.0
    IL_0284:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0289:  ldc.i4.1
    IL_028a:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_028f:  ldarg.0
    IL_0290:  ldfld      class Game.LabelWidget Game.SettingsPerformanceScreen::m_visibilityRangeWarningLabel
    IL_0295:  ldstr      "(8GB RAM and an extremely fast\ndevice recommended)"
    IL_029a:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_029f:  ldarg.0
    IL_02a0:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_viewAnglesButton
    IL_02a5:  call       valuetype Game.ViewAngleMode Game.SettingsManager::get_ViewAngleMode()
    IL_02aa:  stloc.s    V_4
    IL_02ac:  ldloca.s   V_4
    IL_02ae:  constrained. Game.ViewAngleMode
    IL_02b4:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_02b9:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_02be:  ldarg.0
    IL_02bf:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_skyRenderingModeButton
    IL_02c4:  call       valuetype Game.SkyRenderingMode Game.SettingsManager::get_SkyRenderingMode()
    IL_02c9:  stloc.s    V_5
    IL_02cb:  ldloca.s   V_5
    IL_02cd:  constrained. Game.SkyRenderingMode
    IL_02d3:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_02d8:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_02dd:  ldarg.0
    IL_02de:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_objectShadowsButton
    IL_02e3:  call       bool Game.SettingsManager::get_ObjectsShadowsEnabled()
    IL_02e8:  brtrue.s   IL_02f1

    IL_02ea:  ldstr      "Disabled"
    IL_02ef:  br.s       IL_02f6

    IL_02f1:  ldstr      "Enabled"
    IL_02f6:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_02fb:  ldarg.0
    IL_02fc:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_framerateLimitSlider
    IL_0301:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_presentationIntervals
    IL_0306:  call       int32 Game.SettingsManager::get_PresentationInterval()
    IL_030b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::IndexOf(!0)
    IL_0310:  ldc.i4.0
    IL_0311:  bge.s      IL_0321

    IL_0313:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_presentationIntervals
    IL_0318:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_031d:  ldc.i4.1
    IL_031e:  sub
    IL_031f:  br.s       IL_0330

    IL_0321:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_presentationIntervals
    IL_0326:  call       int32 Game.SettingsManager::get_PresentationInterval()
    IL_032b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::IndexOf(!0)
    IL_0330:  conv.r4
    IL_0331:  callvirt   instance void Game.SliderWidget::set_Value(float32)
    IL_0336:  ldarg.0
    IL_0337:  ldfld      class Game.SliderWidget Game.SettingsPerformanceScreen::m_framerateLimitSlider
    IL_033c:  call       int32 Game.SettingsManager::get_PresentationInterval()
    IL_0341:  brtrue.s   IL_034a

    IL_0343:  ldstr      "Unlimited"
    IL_0348:  br.s       IL_0367

    IL_034a:  ldstr      "{0} vsync"
    IL_034f:  ldc.i4.1
    IL_0350:  newarr     [System.Runtime]System.Object
    IL_0355:  dup
    IL_0356:  ldc.i4.0
    IL_0357:  call       int32 Game.SettingsManager::get_PresentationInterval()
    IL_035c:  box        [System.Runtime]System.Int32
    IL_0361:  stelem.ref
    IL_0362:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0367:  callvirt   instance void Game.SliderWidget::set_Text(string)
    IL_036c:  ldarg.0
    IL_036d:  ldfld      class Game.ButtonWidget Game.SettingsPerformanceScreen::m_displayFpsCounterButton
    IL_0372:  call       bool Game.SettingsManager::get_DisplayFpsCounter()
    IL_0377:  brtrue.s   IL_0380

    IL_0379:  ldstr      "No"
    IL_037e:  br.s       IL_0385

    IL_0380:  ldstr      "Yes"
    IL_0385:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_038a:  ldarg.0
    IL_038b:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0390:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_0395:  brtrue.s   IL_03bc

    IL_0397:  ldarg.0
    IL_0398:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_039d:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_03a2:  brtrue.s   IL_03bc

    IL_03a4:  ldarg.0
    IL_03a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_03aa:  ldstr      "TopBar.Back"
    IL_03af:  ldc.i4.1
    IL_03b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_03b5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_03ba:  brfalse.s  IL_0424

    IL_03bc:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_03c1:  ldarg.0
    IL_03c2:  ldfld      int32 Game.SettingsPerformanceScreen::m_enterVisibilityRange
    IL_03c7:  ble.s      IL_0414

    IL_03c9:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_03ce:  ldc.i4     0x80
    IL_03d3:  ble.s      IL_0414

    IL_03d5:  ldnull
    IL_03d6:  ldstr      "Large Visibility Range"
    IL_03db:  ldstr      "The game may crash randomly if your device does no"
    + "t have enough memory to handle the visibility range you selected."
    IL_03e0:  ldstr      "OK"
    IL_03e5:  ldstr      "Back"
    IL_03ea:  ldsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.SettingsPerformanceScreen/'<>c'::'<>9__13_0'
    IL_03ef:  dup
    IL_03f0:  brtrue.s   IL_0409

    IL_03f2:  pop
    IL_03f3:  ldsfld     class Game.SettingsPerformanceScreen/'<>c' Game.SettingsPerformanceScreen/'<>c'::'<>9'
    IL_03f8:  ldftn      instance void Game.SettingsPerformanceScreen/'<>c'::'<Update>b__13_0'(valuetype Game.MessageDialogButton)
    IL_03fe:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_0403:  dup
    IL_0404:  stsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.SettingsPerformanceScreen/'<>c'::'<>9__13_0'
    IL_0409:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_040e:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0413:  ret

    IL_0414:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0419:  ldc.i4.0
    IL_041a:  newarr     [System.Runtime]System.Object
    IL_041f:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0424:  ret
  } // end of method SettingsPerformanceScreen::Update

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       167 (0xa7)
    .maxstack  3
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0005:  dup
    IL_0006:  ldc.i4.2
    IL_0007:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_000c:  dup
    IL_000d:  ldc.i4.1
    IL_000e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0013:  dup
    IL_0014:  ldc.i4.0
    IL_0015:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_001a:  stsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_presentationIntervals
    IL_001f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0024:  dup
    IL_0025:  ldc.i4.s   32
    IL_0027:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_002c:  dup
    IL_002d:  ldc.i4.s   48
    IL_002f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0034:  dup
    IL_0035:  ldc.i4.s   64
    IL_0037:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_003c:  dup
    IL_003d:  ldc.i4.s   80
    IL_003f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0044:  dup
    IL_0045:  ldc.i4.s   96
    IL_0047:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_004c:  dup
    IL_004d:  ldc.i4.s   112
    IL_004f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0054:  dup
    IL_0055:  ldc.i4     0x80
    IL_005a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_005f:  dup
    IL_0060:  ldc.i4     0xa0
    IL_0065:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_006a:  dup
    IL_006b:  ldc.i4     0xc0
    IL_0070:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0075:  dup
    IL_0076:  ldc.i4     0xe0
    IL_007b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0080:  dup
    IL_0081:  ldc.i4     0x100
    IL_0086:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_008b:  dup
    IL_008c:  ldc.i4     0x120
    IL_0091:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0096:  dup
    IL_0097:  ldc.i4     0x140
    IL_009c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_00a1:  stsfld     class [System.Collections]System.Collections.Generic.List`1<int32> Game.SettingsPerformanceScreen::m_visibilityRanges
    IL_00a6:  ret
  } // end of method SettingsPerformanceScreen::.cctor

} // end of class Game.SettingsPerformanceScreen