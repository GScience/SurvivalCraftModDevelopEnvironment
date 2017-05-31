.class public auto ansi beforefieldinit Game.FixedSizePanelWidget
       extends Game.ContainerWidget
{
  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       240 (0xf0)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_1,
             class Game.Widget V_2)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br         IL_00d1

      IL_0017:  ldloc.1
      IL_0018:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001d:  stloc.2
      IL_001e:  ldloc.2
      IL_001f:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0024:  brfalse    IL_00d1

      IL_0029:  ldloc.2
      IL_002a:  ldarg.1
      IL_002b:  ldc.r4     2.
      IL_0030:  ldloc.2
      IL_0031:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0036:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_003b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0040:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0045:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_004a:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_004f:  ldloc.2
      IL_0050:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0055:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_005a:  ldc.r4     (00 00 80 7F)
      IL_005f:  beq.s      IL_0090

      IL_0061:  ldloca.s   V_0
      IL_0063:  ldloc.0
      IL_0064:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0069:  ldloc.2
      IL_006a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_006f:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0074:  ldc.r4     2.
      IL_0079:  ldloc.2
      IL_007a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_007f:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0084:  mul
      IL_0085:  add
      IL_0086:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_008b:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0090:  ldloc.2
      IL_0091:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0096:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_009b:  ldc.r4     (00 00 80 7F)
      IL_00a0:  beq.s      IL_00d1

      IL_00a2:  ldloca.s   V_0
      IL_00a4:  ldloc.0
      IL_00a5:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00aa:  ldloc.2
      IL_00ab:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_00b0:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00b5:  ldc.r4     2.
      IL_00ba:  ldloc.2
      IL_00bb:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00c0:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00c5:  mul
      IL_00c6:  add
      IL_00c7:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_00cc:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_00d1:  ldloc.1
      IL_00d2:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00d7:  brtrue     IL_0017

      IL_00dc:  leave.s    IL_00e8

    }  // end .try
    finally
    {
      IL_00de:  ldloc.1
      IL_00df:  brfalse.s  IL_00e7

      IL_00e1:  ldloc.1
      IL_00e2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e7:  endfinally
    }  // end handler
    IL_00e8:  ldarg.0
    IL_00e9:  ldloc.0
    IL_00ea:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_00ef:  ret
  } // end of method FixedSizePanelWidget::Measure

  .method public hidebysig virtual instance void 
          Arrange(valuetype [Engine]Engine.Vector2 position,
                  valuetype [Engine]Engine.Vector2 actualSize) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_0,
             class Game.Widget V_1)
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
      IL_0014:  br.s       IL_002b

      IL_0016:  ldloc.0
      IL_0017:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001c:  stloc.1
      IL_001d:  ldarg.1
      IL_001e:  ldarg.1
      IL_001f:  ldarg.2
      IL_0020:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0025:  ldloc.1
      IL_0026:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_002b:  ldloc.0
      IL_002c:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0031:  brtrue.s   IL_0016

      IL_0033:  leave.s    IL_003f

    }  // end .try
    finally
    {
      IL_0035:  ldloc.0
      IL_0036:  brfalse.s  IL_003e

      IL_0038:  ldloc.0
      IL_0039:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003e:  endfinally
    }  // end handler
    IL_003f:  ret
  } // end of method FixedSizePanelWidget::Arrange

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ContainerWidget::.ctor()
    IL_0006:  ret
  } // end of method FixedSizePanelWidget::.ctor

} // end of class Game.FixedSizePanelWidget