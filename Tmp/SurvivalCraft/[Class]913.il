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
          ArrangeOverride() cil managed
  {
    // 代码大小       256 (0x100)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype Game.WidgetsList/Enumerator V_1,
             class Game.Widget V_2,
             float32 V_3,
             float32 V_4)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000c:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br         IL_00e3

      IL_0017:  ldloca.s   V_1
      IL_0019:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_001e:  stloc.2
      IL_001f:  ldloc.2
      IL_0020:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0025:  brfalse    IL_00e3

      IL_002a:  ldarg.0
      IL_002b:  ldfld      valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::m_direction
      IL_0030:  brtrue.s   IL_008a

      IL_0032:  ldarg.0
      IL_0033:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_0038:  ldc.i4.0
      IL_0039:  bgt.s      IL_0042

      IL_003b:  ldc.r4     0.0
      IL_0040:  br.s       IL_0055

      IL_0042:  ldarg.0
      IL_0043:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_0048:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_004d:  ldarg.0
      IL_004e:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_0053:  conv.r4
      IL_0054:  div
      IL_0055:  stloc.3
      IL_0056:  ldloc.0
      IL_0057:  ldloc.0
      IL_0058:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_005d:  ldloc.3
      IL_005e:  add
      IL_005f:  ldloc.0
      IL_0060:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0065:  ldarg.0
      IL_0066:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_006b:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0070:  add
      IL_0071:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0076:  ldloc.2
      IL_0077:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_007c:  ldloca.s   V_0
      IL_007e:  ldflda     float32 [Engine]Engine.Vector2::X
      IL_0083:  dup
      IL_0084:  ldind.r4
      IL_0085:  ldloc.3
      IL_0086:  add
      IL_0087:  stind.r4
      IL_0088:  br.s       IL_00e3

      IL_008a:  ldarg.0
      IL_008b:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_0090:  ldc.i4.0
      IL_0091:  bgt.s      IL_009a

      IL_0093:  ldc.r4     0.0
      IL_0098:  br.s       IL_00ad

      IL_009a:  ldarg.0
      IL_009b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00a0:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00a5:  ldarg.0
      IL_00a6:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_00ab:  conv.r4
      IL_00ac:  div
      IL_00ad:  stloc.s    V_4
      IL_00af:  ldloc.0
      IL_00b0:  ldloc.0
      IL_00b1:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00b6:  ldarg.0
      IL_00b7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00bc:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00c1:  add
      IL_00c2:  ldloc.0
      IL_00c3:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00c8:  ldloc.s    V_4
      IL_00ca:  add
      IL_00cb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00d0:  ldloc.2
      IL_00d1:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_00d6:  ldloca.s   V_0
      IL_00d8:  ldflda     float32 [Engine]Engine.Vector2::Y
      IL_00dd:  dup
      IL_00de:  ldind.r4
      IL_00df:  ldloc.s    V_4
      IL_00e1:  add
      IL_00e2:  stind.r4
      IL_00e3:  ldloca.s   V_1
      IL_00e5:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_00ea:  brtrue     IL_0017

      IL_00ef:  leave.s    IL_00ff

    }  // end .try
    finally
    {
      IL_00f1:  ldloca.s   V_1
      IL_00f3:  constrained. Game.WidgetsList/Enumerator
      IL_00f9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00fe:  endfinally
    }  // end handler
    IL_00ff:  ret
  } // end of method UniformSpacingPanelWidget::ArrangeOverride

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       381 (0x17d)
    .maxstack  4
    .locals init (float32 V_0,
             valuetype Game.WidgetsList/Enumerator V_1,
             class Game.Widget V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      int32 Game.UniformSpacingPanelWidget::m_count
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000d:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0012:  stloc.1
    .try
    {
      IL_0013:  br.s       IL_0031

      IL_0015:  ldloca.s   V_1
      IL_0017:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_001c:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0021:  brfalse.s  IL_0031

      IL_0023:  ldarg.0
      IL_0024:  ldarg.0
      IL_0025:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_002a:  ldc.i4.1
      IL_002b:  add
      IL_002c:  stfld      int32 Game.UniformSpacingPanelWidget::m_count
      IL_0031:  ldloca.s   V_1
      IL_0033:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0038:  brtrue.s   IL_0015

      IL_003a:  leave.s    IL_004a

    }  // end .try
    finally
    {
      IL_003c:  ldloca.s   V_1
      IL_003e:  constrained. Game.WidgetsList/Enumerator
      IL_0044:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0049:  endfinally
    }  // end handler
    IL_004a:  ldarg.0
    IL_004b:  ldfld      valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::m_direction
    IL_0050:  brtrue.s   IL_0075

    IL_0052:  ldarg.1
    IL_0053:  ldarg.1
    IL_0054:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0059:  ldarg.0
    IL_005a:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
    IL_005f:  conv.r4
    IL_0060:  div
    IL_0061:  ldarg.1
    IL_0062:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0067:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_006c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Min(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2)
    IL_0071:  starg.s    parentAvailableSize
    IL_0073:  br.s       IL_0096

    IL_0075:  ldarg.1
    IL_0076:  ldarg.1
    IL_0077:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_007c:  ldarg.1
    IL_007d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0082:  ldarg.0
    IL_0083:  ldfld      int32 Game.UniformSpacingPanelWidget::m_count
    IL_0088:  conv.r4
    IL_0089:  div
    IL_008a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_008f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Min(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2)
    IL_0094:  starg.s    parentAvailableSize
    IL_0096:  ldc.r4     0.0
    IL_009b:  stloc.0
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a2:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_00a7:  stloc.1
    .try
    {
      IL_00a8:  br         IL_0135

      IL_00ad:  ldloca.s   V_1
      IL_00af:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_00b4:  stloc.2
      IL_00b5:  ldloc.2
      IL_00b6:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_00bb:  brfalse.s  IL_0135

      IL_00bd:  ldloc.2
      IL_00be:  ldarg.1
      IL_00bf:  ldc.r4     2.
      IL_00c4:  ldloc.2
      IL_00c5:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00ca:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00cf:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_00d4:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_00d9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_00de:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_00e3:  ldarg.0
      IL_00e4:  ldfld      valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::m_direction
      IL_00e9:  brtrue.s   IL_0111

      IL_00eb:  ldloc.0
      IL_00ec:  ldloc.2
      IL_00ed:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_00f2:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00f7:  ldc.r4     2.
      IL_00fc:  ldloc.2
      IL_00fd:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0102:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0107:  mul
      IL_0108:  add
      IL_0109:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_010e:  stloc.0
      IL_010f:  br.s       IL_0135

      IL_0111:  ldloc.0
      IL_0112:  ldloc.2
      IL_0113:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0118:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_011d:  ldc.r4     2.
      IL_0122:  ldloc.2
      IL_0123:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0128:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_012d:  mul
      IL_012e:  add
      IL_012f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0134:  stloc.0
      IL_0135:  ldloca.s   V_1
      IL_0137:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_013c:  brtrue     IL_00ad

      IL_0141:  leave.s    IL_0151

    }  // end .try
    finally
    {
      IL_0143:  ldloca.s   V_1
      IL_0145:  constrained. Game.WidgetsList/Enumerator
      IL_014b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0150:  endfinally
    }  // end handler
    IL_0151:  ldarg.0
    IL_0152:  ldfld      valuetype Game.LayoutDirection Game.UniformSpacingPanelWidget::m_direction
    IL_0157:  brtrue.s   IL_016b

    IL_0159:  ldarg.0
    IL_015a:  ldc.r4     (00 00 80 7F)
    IL_015f:  ldloc.0
    IL_0160:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0165:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_016a:  ret

    IL_016b:  ldarg.0
    IL_016c:  ldloc.0
    IL_016d:  ldc.r4     (00 00 80 7F)
    IL_0172:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0177:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_017c:  ret
  } // end of method UniformSpacingPanelWidget::MeasureOverride

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