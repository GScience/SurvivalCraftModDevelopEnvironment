.class public auto ansi beforefieldinit Game.FixedSizePanelWidget
       extends Game.ContainerWidget
{
  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       246 (0xf6)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype Game.WidgetsList/Enumerator V_1,
             class Game.Widget V_2)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000c:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br         IL_00d2

      IL_0017:  ldloca.s   V_1
      IL_0019:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_001e:  stloc.2
      IL_001f:  ldloc.2
      IL_0020:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0025:  brfalse    IL_00d2

      IL_002a:  ldloc.2
      IL_002b:  ldarg.1
      IL_002c:  ldc.r4     2.
      IL_0031:  ldloc.2
      IL_0032:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0037:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_003c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0041:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0046:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_004b:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_0050:  ldloc.2
      IL_0051:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0056:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_005b:  ldc.r4     (00 00 80 7F)
      IL_0060:  beq.s      IL_0091

      IL_0062:  ldloca.s   V_0
      IL_0064:  ldloc.0
      IL_0065:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_006a:  ldloc.2
      IL_006b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0070:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0075:  ldc.r4     2.
      IL_007a:  ldloc.2
      IL_007b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0080:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0085:  mul
      IL_0086:  add
      IL_0087:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_008c:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0091:  ldloc.2
      IL_0092:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0097:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_009c:  ldc.r4     (00 00 80 7F)
      IL_00a1:  beq.s      IL_00d2

      IL_00a3:  ldloca.s   V_0
      IL_00a5:  ldloc.0
      IL_00a6:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00ab:  ldloc.2
      IL_00ac:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_00b1:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00b6:  ldc.r4     2.
      IL_00bb:  ldloc.2
      IL_00bc:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00c1:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00c6:  mul
      IL_00c7:  add
      IL_00c8:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_00cd:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_00d2:  ldloca.s   V_1
      IL_00d4:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_00d9:  brtrue     IL_0017

      IL_00de:  leave.s    IL_00ee

    }  // end .try
    finally
    {
      IL_00e0:  ldloca.s   V_1
      IL_00e2:  constrained. Game.WidgetsList/Enumerator
      IL_00e8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00ed:  endfinally
    }  // end handler
    IL_00ee:  ldarg.0
    IL_00ef:  ldloc.0
    IL_00f0:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_00f5:  ret
  } // end of method FixedSizePanelWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          ArrangeOverride() cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  3
    .locals init (valuetype Game.WidgetsList/Enumerator V_0,
             class Game.Widget V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0027

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_001b:  ldarg.0
      IL_001c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_0021:  ldloc.1
      IL_0022:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_0027:  ldloca.s   V_0
      IL_0029:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_002e:  brtrue.s   IL_000e

      IL_0030:  leave.s    IL_0040

    }  // end .try
    finally
    {
      IL_0032:  ldloca.s   V_0
      IL_0034:  constrained. Game.WidgetsList/Enumerator
      IL_003a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003f:  endfinally
    }  // end handler
    IL_0040:  ret
  } // end of method FixedSizePanelWidget::ArrangeOverride

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