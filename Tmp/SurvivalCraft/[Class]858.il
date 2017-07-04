.class public auto ansi beforefieldinit Game.CanvasWidget
       extends Game.ContainerWidget
{
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2> m_positions
  .field private valuetype [Engine]Engine.Vector2 '<Size>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static void  SetPosition(class Game.Widget widget,
                                                    valuetype [Engine]Engine.Vector2 position) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  3
    .locals init (class Game.CanvasWidget V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0006:  isinst     Game.CanvasWidget
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brfalse.s  IL_001c

    IL_000f:  ldloc.0
    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0017:  callvirt   instance void Game.CanvasWidget::SetWidgetPosition(class Game.Widget,
                                                                            valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_001c:  ret
  } // end of method CanvasWidget::SetPosition

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Size() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.CanvasWidget::'<Size>k__BackingField'
    IL_0006:  ret
  } // end of method CanvasWidget::get_Size

  .method public hidebysig specialname instance void 
          set_Size(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.CanvasWidget::'<Size>k__BackingField'
    IL_0007:  ret
  } // end of method CanvasWidget::set_Size

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 
          GetWidgetPosition(class Game.Widget widget) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2> Game.CanvasWidget::m_positions
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2>::TryGetValue(!0,
                                                                                                                                                                          !1&)
    IL_000e:  brfalse.s  IL_0017

    IL_0010:  ldloc.0
    IL_0011:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0016:  ret

    IL_0017:  ldloca.s   V_1
    IL_0019:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_001f:  ldloc.1
    IL_0020:  ret
  } // end of method CanvasWidget::GetWidgetPosition

  .method public hidebysig instance void 
          SetWidgetPosition(class Game.Widget widget,
                            valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> position) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarga.s   position
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0007:  brfalse.s  IL_001d

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2> Game.CanvasWidget::m_positions
    IL_000f:  ldarg.1
    IL_0010:  ldarga.s   position
    IL_0012:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0017:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2>::set_Item(!0,
                                                                                                                                                                       !1)
    IL_001c:  ret

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2> Game.CanvasWidget::m_positions
    IL_0023:  ldarg.1
    IL_0024:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2>::Remove(!0)
    IL_0029:  pop
    IL_002a:  ret
  } // end of method CanvasWidget::SetWidgetPosition

  .method public hidebysig virtual instance void 
          WidgetRemoved(class Game.Widget widget) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2> Game.CanvasWidget::m_positions
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2>::Remove(!0)
    IL_000c:  pop
    IL_000d:  ret
  } // end of method CanvasWidget::WidgetRemoved

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       443 (0x1bb)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype Game.WidgetsList/Enumerator V_1,
             class Game.Widget V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_000c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0011:  ldc.r4     0.0
    IL_0016:  blt.un.s   IL_0035

    IL_0018:  ldarga.s   parentAvailableSize
    IL_001a:  ldarg.1
    IL_001b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0020:  ldarg.0
    IL_0021:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0026:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_002b:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0030:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0035:  ldarg.0
    IL_0036:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_003b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0040:  ldc.r4     0.0
    IL_0045:  blt.un.s   IL_0064

    IL_0047:  ldarga.s   parentAvailableSize
    IL_0049:  ldarg.1
    IL_004a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004f:  ldarg.0
    IL_0050:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0055:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_005f:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0064:  ldarg.0
    IL_0065:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_006a:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_006f:  stloc.1
    .try
    {
      IL_0070:  br         IL_014f

      IL_0075:  ldloca.s   V_1
      IL_0077:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_007c:  stloc.2
      IL_007d:  ldloc.2
      IL_007e:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0083:  brfalse    IL_014f

      IL_0088:  ldarg.0
      IL_0089:  ldloc.2
      IL_008a:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.CanvasWidget::GetWidgetPosition(class Game.Widget)
      IL_008f:  stloc.3
      IL_0090:  ldloca.s   V_3
      IL_0092:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
      IL_0097:  brtrue.s   IL_00a0

      IL_0099:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_009e:  br.s       IL_00a7

      IL_00a0:  ldloca.s   V_3
      IL_00a2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_00a7:  stloc.s    V_4
      IL_00a9:  ldloc.2
      IL_00aa:  ldarg.1
      IL_00ab:  ldloc.s    V_4
      IL_00ad:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_00b2:  ldc.r4     2.
      IL_00b7:  ldloc.2
      IL_00b8:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00bd:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00c2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_00c7:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_00cc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_00d1:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_00d6:  ldloca.s   V_5
      IL_00d8:  initobj    [Engine]Engine.Vector2
      IL_00de:  ldloca.s   V_5
      IL_00e0:  ldloc.0
      IL_00e1:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00e6:  ldloc.s    V_4
      IL_00e8:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00ed:  ldloc.2
      IL_00ee:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_00f3:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00f8:  add
      IL_00f9:  ldc.r4     2.
      IL_00fe:  ldloc.2
      IL_00ff:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0104:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0109:  mul
      IL_010a:  add
      IL_010b:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0110:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0115:  ldloca.s   V_5
      IL_0117:  ldloc.0
      IL_0118:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_011d:  ldloc.s    V_4
      IL_011f:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0124:  ldloc.2
      IL_0125:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_012a:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_012f:  add
      IL_0130:  ldc.r4     2.
      IL_0135:  ldloc.2
      IL_0136:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_013b:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0140:  mul
      IL_0141:  add
      IL_0142:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0147:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_014c:  ldloc.s    V_5
      IL_014e:  stloc.0
      IL_014f:  ldloca.s   V_1
      IL_0151:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0156:  brtrue     IL_0075

      IL_015b:  leave.s    IL_016b

    }  // end .try
    finally
    {
      IL_015d:  ldloca.s   V_1
      IL_015f:  constrained. Game.WidgetsList/Enumerator
      IL_0165:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_016a:  endfinally
    }  // end handler
    IL_016b:  ldarg.0
    IL_016c:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0171:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0176:  ldc.r4     0.0
    IL_017b:  blt.un.s   IL_018f

    IL_017d:  ldloca.s   V_0
    IL_017f:  ldarg.0
    IL_0180:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0185:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_018a:  stfld      float32 [Engine]Engine.Vector2::X
    IL_018f:  ldarg.0
    IL_0190:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0195:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_019a:  ldc.r4     0.0
    IL_019f:  blt.un.s   IL_01b3

    IL_01a1:  ldloca.s   V_0
    IL_01a3:  ldarg.0
    IL_01a4:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_01a9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01ae:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_01b3:  ldarg.0
    IL_01b4:  ldloc.0
    IL_01b5:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_01ba:  ret
  } // end of method CanvasWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          ArrangeOverride() cil managed
  {
    // 代码大小       282 (0x11a)
    .maxstack  3
    .locals init (valuetype Game.WidgetsList/Enumerator V_0,
             class Game.Widget V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_2,
             valuetype [Engine]Engine.Vector2 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br         IL_00fd

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_0018:  stloc.1
      IL_0019:  ldloc.1
      IL_001a:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_001f:  brfalse    IL_00fd

      IL_0024:  ldarg.0
      IL_0025:  ldloc.1
      IL_0026:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.CanvasWidget::GetWidgetPosition(class Game.Widget)
      IL_002b:  stloc.2
      IL_002c:  ldloca.s   V_2
      IL_002e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
      IL_0033:  brfalse    IL_00ec

      IL_0038:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_003d:  stloc.3
      IL_003e:  ldloc.1
      IL_003f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0044:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0049:  call       bool [System.Runtime]System.Single::IsPositiveInfinity(float32)
      IL_004e:  brtrue.s   IL_0064

      IL_0050:  ldloca.s   V_3
      IL_0052:  ldloc.1
      IL_0053:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0058:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_005d:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0062:  br.s       IL_008d

      IL_0064:  ldloca.s   V_3
      IL_0066:  ldarg.0
      IL_0067:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_006c:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0071:  ldloca.s   V_2
      IL_0073:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_0078:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_007d:  sub
      IL_007e:  ldc.r4     0.0
      IL_0083:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0088:  stfld      float32 [Engine]Engine.Vector2::X
      IL_008d:  ldloc.1
      IL_008e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_0093:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0098:  call       bool [System.Runtime]System.Single::IsPositiveInfinity(float32)
      IL_009d:  brtrue.s   IL_00b3

      IL_009f:  ldloca.s   V_3
      IL_00a1:  ldloc.1
      IL_00a2:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_00a7:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00ac:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_00b1:  br.s       IL_00dc

      IL_00b3:  ldloca.s   V_3
      IL_00b5:  ldarg.0
      IL_00b6:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00bb:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00c0:  ldloca.s   V_2
      IL_00c2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_00c7:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00cc:  sub
      IL_00cd:  ldc.r4     0.0
      IL_00d2:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_00d7:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_00dc:  ldloc.1
      IL_00dd:  ldloca.s   V_2
      IL_00df:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_00e4:  ldloc.3
      IL_00e5:  callvirt   instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                              valuetype [Engine]Engine.Vector2)
      IL_00ea:  br.s       IL_00fd

      IL_00ec:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_00f1:  ldarg.0
      IL_00f2:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00f7:  ldloc.1
      IL_00f8:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_00fd:  ldloca.s   V_0
      IL_00ff:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0104:  brtrue     IL_0011

      IL_0109:  leave.s    IL_0119

    }  // end .try
    finally
    {
      IL_010b:  ldloca.s   V_0
      IL_010d:  constrained. Game.WidgetsList/Enumerator
      IL_0113:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0118:  endfinally
    }  // end handler
    IL_0119:  ret
  } // end of method CanvasWidget::ArrangeOverride

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Vector2> Game.CanvasWidget::m_positions
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     -1.
    IL_0011:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0016:  stfld      valuetype [Engine]Engine.Vector2 Game.CanvasWidget::'<Size>k__BackingField'
    IL_001b:  ldarg.0
    IL_001c:  call       instance void Game.ContainerWidget::.ctor()
    IL_0021:  ret
  } // end of method CanvasWidget::.ctor

  .property instance valuetype [Engine]Engine.Vector2
          Size()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    .set instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
  } // end of property CanvasWidget::Size
} // end of class Game.CanvasWidget