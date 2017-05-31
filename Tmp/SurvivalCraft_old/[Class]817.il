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
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       437 (0x1b5)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_1,
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

    IL_0018:  ldarga.s   availableSize
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

    IL_0047:  ldarga.s   availableSize
    IL_0049:  ldarg.1
    IL_004a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004f:  ldarg.0
    IL_0050:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0055:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_005f:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0064:  ldarg.0
    IL_0065:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_006f:  stloc.1
    .try
    {
      IL_0070:  br         IL_014e

      IL_0075:  ldloc.1
      IL_0076:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_007b:  stloc.2
      IL_007c:  ldloc.2
      IL_007d:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0082:  brfalse    IL_014e

      IL_0087:  ldarg.0
      IL_0088:  ldloc.2
      IL_0089:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.CanvasWidget::GetWidgetPosition(class Game.Widget)
      IL_008e:  stloc.3
      IL_008f:  ldloca.s   V_3
      IL_0091:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
      IL_0096:  brtrue.s   IL_009f

      IL_0098:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_009d:  br.s       IL_00a6

      IL_009f:  ldloca.s   V_3
      IL_00a1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_00a6:  stloc.s    V_4
      IL_00a8:  ldloc.2
      IL_00a9:  ldarg.1
      IL_00aa:  ldloc.s    V_4
      IL_00ac:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_00b1:  ldc.r4     2.
      IL_00b6:  ldloc.2
      IL_00b7:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00bc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00c1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_00c6:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_00cb:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_00d0:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_00d5:  ldloca.s   V_5
      IL_00d7:  initobj    [Engine]Engine.Vector2
      IL_00dd:  ldloca.s   V_5
      IL_00df:  ldloc.0
      IL_00e0:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00e5:  ldloc.s    V_4
      IL_00e7:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00ec:  ldloc.2
      IL_00ed:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_00f2:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00f7:  add
      IL_00f8:  ldc.r4     2.
      IL_00fd:  ldloc.2
      IL_00fe:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0103:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0108:  mul
      IL_0109:  add
      IL_010a:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_010f:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0114:  ldloca.s   V_5
      IL_0116:  ldloc.0
      IL_0117:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_011c:  ldloc.s    V_4
      IL_011e:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0123:  ldloc.2
      IL_0124:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0129:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_012e:  add
      IL_012f:  ldc.r4     2.
      IL_0134:  ldloc.2
      IL_0135:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_013a:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_013f:  mul
      IL_0140:  add
      IL_0141:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0146:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_014b:  ldloc.s    V_5
      IL_014d:  stloc.0
      IL_014e:  ldloc.1
      IL_014f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0154:  brtrue     IL_0075

      IL_0159:  leave.s    IL_0165

    }  // end .try
    finally
    {
      IL_015b:  ldloc.1
      IL_015c:  brfalse.s  IL_0164

      IL_015e:  ldloc.1
      IL_015f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0164:  endfinally
    }  // end handler
    IL_0165:  ldarg.0
    IL_0166:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_016b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0170:  ldc.r4     0.0
    IL_0175:  blt.un.s   IL_0189

    IL_0177:  ldloca.s   V_0
    IL_0179:  ldarg.0
    IL_017a:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_017f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0184:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0189:  ldarg.0
    IL_018a:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_018f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0194:  ldc.r4     0.0
    IL_0199:  blt.un.s   IL_01ad

    IL_019b:  ldloca.s   V_0
    IL_019d:  ldarg.0
    IL_019e:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_01a3:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01a8:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_01ad:  ldarg.0
    IL_01ae:  ldloc.0
    IL_01af:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_01b4:  ret
  } // end of method CanvasWidget::Measure

  .method public hidebysig virtual instance void 
          Arrange(valuetype [Engine]Engine.Vector2 position,
                  valuetype [Engine]Engine.Vector2 actualSize) cil managed
  {
    // 代码大小       277 (0x115)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_0,
             class Game.Widget V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_2,
             valuetype [Engine]Engine.Vector2 V_3)
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
      IL_0014:  br         IL_00fd

      IL_0019:  ldloc.0
      IL_001a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001f:  stloc.1
      IL_0020:  ldloc.1
      IL_0021:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0026:  brfalse    IL_00fd

      IL_002b:  ldarg.0
      IL_002c:  ldloc.1
      IL_002d:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.CanvasWidget::GetWidgetPosition(class Game.Widget)
      IL_0032:  stloc.2
      IL_0033:  ldloca.s   V_2
      IL_0035:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
      IL_003a:  brfalse    IL_00ef

      IL_003f:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0044:  stloc.3
      IL_0045:  ldloc.1
      IL_0046:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_004b:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0050:  call       bool [System.Runtime]System.Single::IsPositiveInfinity(float32)
      IL_0055:  brtrue.s   IL_006b

      IL_0057:  ldloca.s   V_3
      IL_0059:  ldloc.1
      IL_005a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_005f:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0064:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0069:  br.s       IL_008f

      IL_006b:  ldloca.s   V_3
      IL_006d:  ldarg.2
      IL_006e:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0073:  ldloca.s   V_2
      IL_0075:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_007a:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_007f:  sub
      IL_0080:  ldc.r4     0.0
      IL_0085:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_008a:  stfld      float32 [Engine]Engine.Vector2::X
      IL_008f:  ldloc.1
      IL_0090:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_0095:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_009a:  call       bool [System.Runtime]System.Single::IsPositiveInfinity(float32)
      IL_009f:  brtrue.s   IL_00b5

      IL_00a1:  ldloca.s   V_3
      IL_00a3:  ldloc.1
      IL_00a4:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_00a9:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00ae:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_00b3:  br.s       IL_00d9

      IL_00b5:  ldloca.s   V_3
      IL_00b7:  ldarg.2
      IL_00b8:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00bd:  ldloca.s   V_2
      IL_00bf:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_00c4:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00c9:  sub
      IL_00ca:  ldc.r4     0.0
      IL_00cf:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_00d4:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_00d9:  ldloc.1
      IL_00da:  ldarg.1
      IL_00db:  ldloca.s   V_2
      IL_00dd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_00e2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00e7:  ldloc.3
      IL_00e8:  callvirt   instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                              valuetype [Engine]Engine.Vector2)
      IL_00ed:  br.s       IL_00fd

      IL_00ef:  ldarg.1
      IL_00f0:  ldarg.1
      IL_00f1:  ldarg.2
      IL_00f2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00f7:  ldloc.1
      IL_00f8:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_00fd:  ldloc.0
      IL_00fe:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0103:  brtrue     IL_0019

      IL_0108:  leave.s    IL_0114

    }  // end .try
    finally
    {
      IL_010a:  ldloc.0
      IL_010b:  brfalse.s  IL_0113

      IL_010d:  ldloc.0
      IL_010e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0113:  endfinally
    }  // end handler
    IL_0114:  ret
  } // end of method CanvasWidget::Arrange

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