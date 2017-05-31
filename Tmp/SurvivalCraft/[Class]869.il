.class public auto ansi beforefieldinit Game.UniformSpacingPanelWidget
       extends Game.ContainerWidget
{
  .field private valuetype Game.LayoutDirection m_direction
  .field private int32 m_count
  .method public hidebysig specialname instance valuetype Game.LayoutDirection 
          get_Direction() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::m_direction
    IL_0006:  ret
  } // end of method UniformSpacingPanelWidget::get_Direction

  .method public hidebysig specialname instance void 
          set_Direction(valuetype Game.LayoutDirection 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::m_direction
    IL_0007:  ret
  } // end of method UniformSpacingPanelWidget::set_Direction

  .method public hidebysig virtual instance void 
          Arrange(valuetype [Engine]Engine.Vector2 position,
                  valuetype [Engine]Engine.Vector2 actualSize) cil managed
  {
    // 代码大小       229 (0xe5)
    .maxstack  4
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_0,
             class Game.Widget V_1,
             float32 V_2,
             float32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_0013:  stloc.0
    .try
    {
      IL_0014:  br         IL_00cd

      IL_0019:  ldloc.0
      IL_001a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001f:  stloc.1
      IL_0020:  ldloc.1
      IL_0021:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0026:  brfalse    IL_00cd

      IL_002b:  ldarg.0
      IL_002c:  ldfld      valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::m_direction
      IL_0031:  brtrue.s   IL_0081

      IL_0033:  ldarg.0
      IL_0034:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_0039:  ldc.i4.0
      IL_003a:  bgt.s      IL_0043

      IL_003c:  ldc.r4     0.0
      IL_0041:  br.s       IL_0051

      IL_0043:  ldarg.2
      IL_0044:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0049:  ldarg.0
      IL_004a:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_004f:  conv.r4
      IL_0050:  div
      IL_0051:  stloc.2
      IL_0052:  ldarg.1
      IL_0053:  ldarg.1
      IL_0054:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0059:  ldloc.2
      IL_005a:  add
      IL_005b:  ldarg.1
      IL_005c:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0061:  ldarg.2
      IL_0062:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0067:  add
      IL_0068:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_006d:  ldloc.1
      IL_006e:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_0073:  ldarga.s   position
      IL_0075:  ldflda     float32 [Engine]Engine.Vector2::X
      IL_007a:  dup
      IL_007b:  ldind.r4
      IL_007c:  ldloc.2
      IL_007d:  add
      IL_007e:  stind.r4
      IL_007f:  br.s       IL_00cd

      IL_0081:  ldarg.0
      IL_0082:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_0087:  ldc.i4.0
      IL_0088:  bgt.s      IL_0091

      IL_008a:  ldc.r4     0.0
      IL_008f:  br.s       IL_009f

      IL_0091:  ldarg.2
      IL_0092:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0097:  ldarg.0
      IL_0098:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_009d:  conv.r4
      IL_009e:  div
      IL_009f:  stloc.3
      IL_00a0:  ldarg.1
      IL_00a1:  ldarg.1
      IL_00a2:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00a7:  ldarg.2
      IL_00a8:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00ad:  add
      IL_00ae:  ldarg.1
      IL_00af:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00b4:  ldloc.3
      IL_00b5:  add
      IL_00b6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00bb:  ldloc.1
      IL_00bc:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_00c1:  ldarga.s   position
      IL_00c3:  ldflda     float32 [Engine]Engine.Vector2::Y
      IL_00c8:  dup
      IL_00c9:  ldind.r4
      IL_00ca:  ldloc.3
      IL_00cb:  add
      IL_00cc:  stind.r4
      IL_00cd:  ldloc.0
      IL_00ce:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00d3:  brtrue     IL_0019

      IL_00d8:  leave.s    IL_00e4

    }  // end .try
    finally
    {
      IL_00da:  ldloc.0
      IL_00db:  brfalse.s  IL_00e3

      IL_00dd:  ldloc.0
      IL_00de:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e3:  endfinally
    }  // end handler
    IL_00e4:  ret
  } // end of method UniformSpacingPanelWidget::Arrange

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       369 (0x171)
    .maxstack  4
    .locals init (float32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_1,
             class Game.Widget V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      int32 Game.UniformSpacingPanelWidget::m_count
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000d:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_0012:  stloc.1
    .try
    {
      IL_0013:  br.s       IL_0030

      IL_0015:  ldloc.1
      IL_0016:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001b:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0020:  brfalse.s  IL_0030

      IL_0022:  ldarg.0
      IL_0023:  ldarg.0
      IL_0024:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_0029:  ldc.i4.1
      IL_002a:  add
      IL_002b:  stfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_0030:  ldloc.1
      IL_0031:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0036:  brtrue.s   IL_0015

      IL_0038:  leave.s    IL_0044

    }  // end .try
    finally
    {
      IL_003a:  ldloc.1
      IL_003b:  brfalse.s  IL_0043

      IL_003d:  ldloc.1
      IL_003e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0043:  endfinally
    }  // end handler
    IL_0044:  ldarg.0
    IL_0045:  ldfld      valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::m_direction
    IL_004a:  brtrue.s   IL_006f

    IL_004c:  ldarg.1
    IL_004d:  ldarg.1
    IL_004e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0053:  ldarg.0
    IL_0054:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
    IL_0059:  conv.r4
    IL_005a:  div
    IL_005b:  ldarg.1
    IL_005c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0061:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0066:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Min(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2)
    IL_006b:  starg.s    availableSize
    IL_006d:  br.s       IL_0090

    IL_006f:  ldarg.1
    IL_0070:  ldarg.1
    IL_0071:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0076:  ldarg.1
    IL_0077:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_007c:  ldarg.0
    IL_007d:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
    IL_0082:  conv.r4
    IL_0083:  div
    IL_0084:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0089:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Min(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2)
    IL_008e:  starg.s    availableSize
    IL_0090:  ldc.r4     0.0
    IL_0095:  stloc.0
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_00a1:  stloc.1
    .try
    {
      IL_00a2:  br         IL_012e

      IL_00a7:  ldloc.1
      IL_00a8:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_00ad:  stloc.2
      IL_00ae:  ldloc.2
      IL_00af:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_00b4:  brfalse.s  IL_012e

      IL_00b6:  ldloc.2
      IL_00b7:  ldarg.1
      IL_00b8:  ldc.r4     2.
      IL_00bd:  ldloc.2
      IL_00be:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00c3:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00c8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_00cd:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_00d2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_00d7:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_00dc:  ldarg.0
      IL_00dd:  ldfld      valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::m_direction
      IL_00e2:  brtrue.s   IL_010a

      IL_00e4:  ldloc.0
      IL_00e5:  ldloc.2
      IL_00e6:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_00eb:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00f0:  ldc.r4     2.
      IL_00f5:  ldloc.2
      IL_00f6:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00fb:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0100:  mul
      IL_0101:  add
      IL_0102:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0107:  stloc.0
      IL_0108:  br.s       IL_012e

      IL_010a:  ldloc.0
      IL_010b:  ldloc.2
      IL_010c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0111:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0116:  ldc.r4     2.
      IL_011b:  ldloc.2
      IL_011c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0121:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0126:  mul
      IL_0127:  add
      IL_0128:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_012d:  stloc.0
      IL_012e:  ldloc.1
      IL_012f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0134:  brtrue     IL_00a7

      IL_0139:  leave.s    IL_0145

    }  // end .try
    finally
    {
      IL_013b:  ldloc.1
      IL_013c:  brfalse.s  IL_0144

      IL_013e:  ldloc.1
      IL_013f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0144:  endfinally
    }  // end handler
    IL_0145:  ldarg.0
    IL_0146:  ldfld      valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::m_direction
    IL_014b:  brtrue.s   IL_015f

    IL_014d:  ldarg.0
    IL_014e:  ldc.r4     (00 00 80 7F)
    IL_0153:  ldloc.0
    IL_0154:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0159:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_015e:  ret

    IL_015f:  ldarg.0
    IL_0160:  ldloc.0
    IL_0161:  ldc.r4     (00 00 80 7F)
    IL_0166:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_016b:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0170:  ret
  } // end of method UniformSpacingPanelWidget::Measure

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ContainerWidget::.ctor()
    IL_0006:  ret
  } // end of method UniformSpacingPanelWidget::.ctor

  .property instance valuetype Game.LayoutDirection
          Direction()
  {
    .get instance valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::get_Direction()
    .set instance void Game.UniformSpacingPanelWidget::set_Direction(valuetype Game.LayoutDirection)
  } // end of property UniformSpacingPanelWidget::Direction
} // end of class Game.UniformSpacingPanelWidget