.class public abstract auto ansi beforefieldinit Game.ContainerWidget
       extends Game.Widget
{
  .field public initonly class Game.WidgetsContainer Children
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Widget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.0
    IL_0008:  newobj     instance void Game.WidgetsContainer::.ctor(class Game.ContainerWidget)
    IL_000d:  stfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0012:  ret
  } // end of method ContainerWidget::.ctor

  .method public hidebysig virtual instance void 
          UpdateCeases() cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  1
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0006:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0019

      IL_000e:  ldloc.0
      IL_000f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_0014:  callvirt   instance void Game.Widget::UpdateCeases()
      IL_0019:  ldloc.0
      IL_001a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_001f:  brtrue.s   IL_000e

      IL_0021:  leave.s    IL_002d

    }  // end .try
    finally
    {
      IL_0023:  ldloc.0
      IL_0024:  brfalse.s  IL_002c

      IL_0026:  ldloc.0
      IL_0027:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_002c:  endfinally
    }  // end handler
    IL_002d:  ret
  } // end of method ContainerWidget::UpdateCeases

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  4
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_0,
             class Game.Widget V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0006:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_003b

      IL_000e:  ldloc.0
      IL_000f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_0014:  stloc.1
      IL_0015:  ldloc.1
      IL_0016:  ldarg.1
      IL_0017:  ldc.r4     2.
      IL_001c:  ldloc.1
      IL_001d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0022:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0027:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_002c:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0031:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_0036:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_003b:  ldloc.0
      IL_003c:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0041:  brtrue.s   IL_000e

      IL_0043:  leave.s    IL_004f

    }  // end .try
    finally
    {
      IL_0045:  ldloc.0
      IL_0046:  brfalse.s  IL_004e

      IL_0048:  ldloc.0
      IL_0049:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004e:  endfinally
    }  // end handler
    IL_004f:  ret
  } // end of method ContainerWidget::Measure

  .method family hidebysig static void  ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2 c1,
                                                                 valuetype [Engine]Engine.Vector2 c2,
                                                                 class Game.Widget widget) cil managed
  {
    // 代码大小       648 (0x288)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0005:  stloc.0
    IL_0006:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_000b:  stloc.1
    IL_000c:  ldarg.1
    IL_000d:  ldarg.0
    IL_000e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0013:  stloc.2
    IL_0014:  ldarg.2
    IL_0015:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
    IL_001a:  stloc.3
    IL_001b:  ldarg.2
    IL_001c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    IL_0021:  stloc.s    V_4
    IL_0023:  ldloc.s    V_4
    IL_0025:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_002a:  call       bool [System.Runtime]System.Single::IsPositiveInfinity(float32)
    IL_002f:  brtrue.s   IL_004d

    IL_0031:  ldloc.s    V_4
    IL_0033:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0038:  ldloc.2
    IL_0039:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003e:  ldc.r4     2.
    IL_0043:  ldloc.3
    IL_0044:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0049:  mul
    IL_004a:  sub
    IL_004b:  ble.un.s   IL_0071

    IL_004d:  ldloca.s   V_4
    IL_004f:  ldloc.2
    IL_0050:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0055:  ldc.r4     2.
    IL_005a:  ldloc.3
    IL_005b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0060:  mul
    IL_0061:  sub
    IL_0062:  ldc.r4     0.0
    IL_0067:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_006c:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0071:  ldloc.s    V_4
    IL_0073:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0078:  call       bool [System.Runtime]System.Single::IsPositiveInfinity(float32)
    IL_007d:  brtrue.s   IL_009b

    IL_007f:  ldloc.s    V_4
    IL_0081:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0086:  ldloc.2
    IL_0087:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008c:  ldc.r4     2.
    IL_0091:  ldloc.3
    IL_0092:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0097:  mul
    IL_0098:  sub
    IL_0099:  ble.un.s   IL_00bf

    IL_009b:  ldloca.s   V_4
    IL_009d:  ldloc.2
    IL_009e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a3:  ldc.r4     2.
    IL_00a8:  ldloc.3
    IL_00a9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ae:  mul
    IL_00af:  sub
    IL_00b0:  ldc.r4     0.0
    IL_00b5:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00ba:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00bf:  ldarg.2
    IL_00c0:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_HorizontalAlignment()
    IL_00c5:  brtrue.s   IL_00ee

    IL_00c7:  ldloca.s   V_0
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00cf:  ldloc.3
    IL_00d0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00d5:  add
    IL_00d6:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00db:  ldloca.s   V_1
    IL_00dd:  ldloc.s    V_4
    IL_00df:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e4:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00e9:  br         IL_019f

    IL_00ee:  ldarg.2
    IL_00ef:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_HorizontalAlignment()
    IL_00f4:  ldc.i4.1
    IL_00f5:  bne.un.s   IL_0129

    IL_00f7:  ldloca.s   V_0
    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00ff:  ldloc.2
    IL_0100:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0105:  ldloc.s    V_4
    IL_0107:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_010c:  sub
    IL_010d:  ldc.r4     2.
    IL_0112:  div
    IL_0113:  add
    IL_0114:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0119:  ldloca.s   V_1
    IL_011b:  ldloc.s    V_4
    IL_011d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0122:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0127:  br.s       IL_019f

    IL_0129:  ldarg.2
    IL_012a:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_HorizontalAlignment()
    IL_012f:  ldc.i4.2
    IL_0130:  bne.un.s   IL_015e

    IL_0132:  ldloca.s   V_0
    IL_0134:  ldarg.1
    IL_0135:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_013a:  ldloc.s    V_4
    IL_013c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0141:  sub
    IL_0142:  ldloc.3
    IL_0143:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0148:  sub
    IL_0149:  stfld      float32 [Engine]Engine.Vector2::X
    IL_014e:  ldloca.s   V_1
    IL_0150:  ldloc.s    V_4
    IL_0152:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0157:  stfld      float32 [Engine]Engine.Vector2::X
    IL_015c:  br.s       IL_019f

    IL_015e:  ldarg.2
    IL_015f:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_HorizontalAlignment()
    IL_0164:  ldc.i4.3
    IL_0165:  bne.un.s   IL_019f

    IL_0167:  ldloca.s   V_0
    IL_0169:  ldarg.0
    IL_016a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_016f:  ldloc.3
    IL_0170:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0175:  add
    IL_0176:  stfld      float32 [Engine]Engine.Vector2::X
    IL_017b:  ldloca.s   V_1
    IL_017d:  ldloc.2
    IL_017e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0183:  ldc.r4     2.
    IL_0188:  ldloc.3
    IL_0189:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_018e:  mul
    IL_018f:  sub
    IL_0190:  ldc.r4     0.0
    IL_0195:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_019a:  stfld      float32 [Engine]Engine.Vector2::X
    IL_019f:  ldarg.2
    IL_01a0:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_VerticalAlignment()
    IL_01a5:  brtrue.s   IL_01ce

    IL_01a7:  ldloca.s   V_0
    IL_01a9:  ldarg.0
    IL_01aa:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01af:  ldloc.3
    IL_01b0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01b5:  add
    IL_01b6:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_01bb:  ldloca.s   V_1
    IL_01bd:  ldloc.s    V_4
    IL_01bf:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01c4:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_01c9:  br         IL_027f

    IL_01ce:  ldarg.2
    IL_01cf:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_VerticalAlignment()
    IL_01d4:  ldc.i4.1
    IL_01d5:  bne.un.s   IL_0209

    IL_01d7:  ldloca.s   V_0
    IL_01d9:  ldarg.0
    IL_01da:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01df:  ldloc.2
    IL_01e0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01e5:  ldloc.s    V_4
    IL_01e7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01ec:  sub
    IL_01ed:  ldc.r4     2.
    IL_01f2:  div
    IL_01f3:  add
    IL_01f4:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_01f9:  ldloca.s   V_1
    IL_01fb:  ldloc.s    V_4
    IL_01fd:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0202:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0207:  br.s       IL_027f

    IL_0209:  ldarg.2
    IL_020a:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_VerticalAlignment()
    IL_020f:  ldc.i4.2
    IL_0210:  bne.un.s   IL_023e

    IL_0212:  ldloca.s   V_0
    IL_0214:  ldarg.1
    IL_0215:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_021a:  ldloc.s    V_4
    IL_021c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0221:  sub
    IL_0222:  ldloc.3
    IL_0223:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0228:  sub
    IL_0229:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_022e:  ldloca.s   V_1
    IL_0230:  ldloc.s    V_4
    IL_0232:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0237:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_023c:  br.s       IL_027f

    IL_023e:  ldarg.2
    IL_023f:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_VerticalAlignment()
    IL_0244:  ldc.i4.3
    IL_0245:  bne.un.s   IL_027f

    IL_0247:  ldloca.s   V_0
    IL_0249:  ldarg.0
    IL_024a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_024f:  ldloc.3
    IL_0250:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0255:  add
    IL_0256:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_025b:  ldloca.s   V_1
    IL_025d:  ldloc.2
    IL_025e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0263:  ldc.r4     2.
    IL_0268:  ldloc.3
    IL_0269:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_026e:  mul
    IL_026f:  sub
    IL_0270:  ldc.r4     0.0
    IL_0275:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_027a:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_027f:  ldarg.2
    IL_0280:  ldloc.0
    IL_0281:  ldloc.1
    IL_0282:  callvirt   instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0287:  ret
  } // end of method ContainerWidget::ArrangeChildWidgetInCell

} // end of class Game.ContainerWidget