.class public auto ansi beforefieldinit Game.GridPanelWidget
       extends Game.ContainerWidget
{
  .class auto ansi nested private beforefieldinit Column
         extends [System.Runtime]System.Object
  {
    .field public float32 Position
    .field public float32 ActualWidth
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Column::.ctor

  } // end of class Column

  .class auto ansi nested private beforefieldinit Row
         extends [System.Runtime]System.Object
  {
    .field public float32 Position
    .field public float32 ActualHeight
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Row::.ctor

  } // end of class Row

  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> m_columns
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> m_rows
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Point2> m_cells
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Point2>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Point2> Game.GridPanelWidget::m_cells
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ContainerWidget::.ctor()
    IL_0027:  ldarg.0
    IL_0028:  ldc.i4.1
    IL_0029:  call       instance void Game.GridPanelWidget::set_ColumnsCount(int32)
    IL_002e:  ldarg.0
    IL_002f:  ldc.i4.1
    IL_0030:  call       instance void Game.GridPanelWidget::set_RowsCount(int32)
    IL_0035:  ret
  } // end of method GridPanelWidget::.ctor

  .method public hidebysig specialname instance int32 
          get_ColumnsCount() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::get_Count()
    IL_000b:  ret
  } // end of method GridPanelWidget::get_ColumnsCount

  .method public hidebysig specialname instance void 
          set_ColumnsCount(int32 'value') cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::get_Count()
    IL_0013:  ldarg.1
    IL_0014:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0019:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::GetRange(int32,
                                                                                                                                                                                                           int32)
    IL_001e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0023:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
    IL_0028:  br.s       IL_003a

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
    IL_0030:  newobj     instance void Game.GridPanelWidget/Column::.ctor()
    IL_0035:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::Add(!0)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
    IL_0040:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::get_Count()
    IL_0045:  ldarg.1
    IL_0046:  blt.s      IL_002a

    IL_0048:  ret
  } // end of method GridPanelWidget::set_ColumnsCount

  .method public hidebysig specialname instance int32 
          get_RowsCount() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::get_Count()
    IL_000b:  ret
  } // end of method GridPanelWidget::get_RowsCount

  .method public hidebysig specialname instance void 
          set_RowsCount(int32 'value') cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::get_Count()
    IL_0013:  ldarg.1
    IL_0014:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0019:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::GetRange(int32,
                                                                                                                                                                                                        int32)
    IL_001e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0023:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
    IL_0028:  br.s       IL_003a

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
    IL_0030:  newobj     instance void Game.GridPanelWidget/Row::.ctor()
    IL_0035:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::Add(!0)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
    IL_0040:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::get_Count()
    IL_0045:  ldarg.1
    IL_0046:  blt.s      IL_002a

    IL_0048:  ret
  } // end of method GridPanelWidget::set_RowsCount

  .method public hidebysig instance valuetype [Engine]Engine.Point2 
          GetWidgetCell(class Game.Widget widget) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Point2 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Point2> Game.GridPanelWidget::m_cells
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Point2>::TryGetValue(!0,
                                                                                                                                                                         !1&)
    IL_000e:  pop
    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method GridPanelWidget::GetWidgetCell

  .method public hidebysig instance void 
          SetWidgetCell(class Game.Widget widget,
                        valuetype [Engine]Engine.Point2 cell) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Point2> Game.GridPanelWidget::m_cells
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Point2>::set_Item(!0,
                                                                                                                                                                      !1)
    IL_000d:  ret
  } // end of method GridPanelWidget::SetWidgetCell

  .method public hidebysig static void  SetCell(class Game.Widget widget,
                                                valuetype [Engine]Engine.Point2 cell) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  3
    .locals init (class Game.GridPanelWidget V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0006:  isinst     Game.GridPanelWidget
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brfalse.s  IL_0017

    IL_000f:  ldloc.0
    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_0017:  ret
  } // end of method GridPanelWidget::SetCell

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       512 (0x200)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column> V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row> V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_3,
             class Game.Widget V_4,
             valuetype [Engine]Engine.Point2 V_5,
             class Game.GridPanelWidget/Column V_6,
             class Game.GridPanelWidget/Row V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::GetEnumerator()
    IL_000b:  stloc.1
    .try
    {
      IL_000c:  br.s       IL_001f

      IL_000e:  ldloca.s   V_1
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column>::get_Current()
      IL_0015:  ldc.r4     0.0
      IL_001a:  stfld      float32 Game.GridPanelWidget/Column::ActualWidth
      IL_001f:  ldloca.s   V_1
      IL_0021:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column>::MoveNext()
      IL_0026:  brtrue.s   IL_000e

      IL_0028:  leave.s    IL_0038

    }  // end .try
    finally
    {
      IL_002a:  ldloca.s   V_1
      IL_002c:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column>
      IL_0032:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0037:  endfinally
    }  // end handler
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
    IL_003e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::GetEnumerator()
    IL_0043:  stloc.2
    .try
    {
      IL_0044:  br.s       IL_0057

      IL_0046:  ldloca.s   V_2
      IL_0048:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row>::get_Current()
      IL_004d:  ldc.r4     0.0
      IL_0052:  stfld      float32 Game.GridPanelWidget/Row::ActualHeight
      IL_0057:  ldloca.s   V_2
      IL_0059:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row>::MoveNext()
      IL_005e:  brtrue.s   IL_0046

      IL_0060:  leave.s    IL_0070

    }  // end .try
    finally
    {
      IL_0062:  ldloca.s   V_2
      IL_0064:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row>
      IL_006a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_006f:  endfinally
    }  // end handler
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0076:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_007b:  stloc.3
    .try
    {
      IL_007c:  br         IL_013d

      IL_0081:  ldloc.3
      IL_0082:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_0087:  stloc.s    V_4
      IL_0089:  ldloc.s    V_4
      IL_008b:  ldarg.1
      IL_008c:  ldc.r4     2.
      IL_0091:  ldloc.s    V_4
      IL_0093:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0098:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_009d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_00a2:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_00a7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_00ac:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_00b1:  ldarg.0
      IL_00b2:  ldloc.s    V_4
      IL_00b4:  call       instance valuetype [Engine]Engine.Point2 Game.GridPanelWidget::GetWidgetCell(class Game.Widget)
      IL_00b9:  stloc.s    V_5
      IL_00bb:  ldarg.0
      IL_00bc:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
      IL_00c1:  ldloc.s    V_5
      IL_00c3:  ldfld      int32 [Engine]Engine.Point2::X
      IL_00c8:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::get_Item(int32)
      IL_00cd:  dup
      IL_00ce:  ldfld      float32 Game.GridPanelWidget/Column::ActualWidth
      IL_00d3:  ldloc.s    V_4
      IL_00d5:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_00da:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00df:  ldc.r4     2.
      IL_00e4:  ldloc.s    V_4
      IL_00e6:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00eb:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00f0:  mul
      IL_00f1:  add
      IL_00f2:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_00f7:  stfld      float32 Game.GridPanelWidget/Column::ActualWidth
      IL_00fc:  ldarg.0
      IL_00fd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
      IL_0102:  ldloc.s    V_5
      IL_0104:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0109:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::get_Item(int32)
      IL_010e:  dup
      IL_010f:  ldfld      float32 Game.GridPanelWidget/Row::ActualHeight
      IL_0114:  ldloc.s    V_4
      IL_0116:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
      IL_011b:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0120:  ldc.r4     2.
      IL_0125:  ldloc.s    V_4
      IL_0127:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_012c:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0131:  mul
      IL_0132:  add
      IL_0133:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0138:  stfld      float32 Game.GridPanelWidget/Row::ActualHeight
      IL_013d:  ldloc.3
      IL_013e:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0143:  brtrue     IL_0081

      IL_0148:  leave.s    IL_0154

    }  // end .try
    finally
    {
      IL_014a:  ldloc.3
      IL_014b:  brfalse.s  IL_0153

      IL_014d:  ldloc.3
      IL_014e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0153:  endfinally
    }  // end handler
    IL_0154:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0159:  stloc.0
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
    IL_0160:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::GetEnumerator()
    IL_0165:  stloc.1
    .try
    {
      IL_0166:  br.s       IL_0190

      IL_0168:  ldloca.s   V_1
      IL_016a:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column>::get_Current()
      IL_016f:  stloc.s    V_6
      IL_0171:  ldloc.s    V_6
      IL_0173:  ldloc.0
      IL_0174:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0179:  stfld      float32 Game.GridPanelWidget/Column::Position
      IL_017e:  ldloca.s   V_0
      IL_0180:  ldflda     float32 [Engine]Engine.Vector2::X
      IL_0185:  dup
      IL_0186:  ldind.r4
      IL_0187:  ldloc.s    V_6
      IL_0189:  ldfld      float32 Game.GridPanelWidget/Column::ActualWidth
      IL_018e:  add
      IL_018f:  stind.r4
      IL_0190:  ldloca.s   V_1
      IL_0192:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column>::MoveNext()
      IL_0197:  brtrue.s   IL_0168

      IL_0199:  leave.s    IL_01a9

    }  // end .try
    finally
    {
      IL_019b:  ldloca.s   V_1
      IL_019d:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column>
      IL_01a3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01a8:  endfinally
    }  // end handler
    IL_01a9:  ldarg.0
    IL_01aa:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
    IL_01af:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::GetEnumerator()
    IL_01b4:  stloc.2
    .try
    {
      IL_01b5:  br.s       IL_01df

      IL_01b7:  ldloca.s   V_2
      IL_01b9:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row>::get_Current()
      IL_01be:  stloc.s    V_7
      IL_01c0:  ldloc.s    V_7
      IL_01c2:  ldloc.0
      IL_01c3:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_01c8:  stfld      float32 Game.GridPanelWidget/Row::Position
      IL_01cd:  ldloca.s   V_0
      IL_01cf:  ldflda     float32 [Engine]Engine.Vector2::Y
      IL_01d4:  dup
      IL_01d5:  ldind.r4
      IL_01d6:  ldloc.s    V_7
      IL_01d8:  ldfld      float32 Game.GridPanelWidget/Row::ActualHeight
      IL_01dd:  add
      IL_01de:  stind.r4
      IL_01df:  ldloca.s   V_2
      IL_01e1:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row>::MoveNext()
      IL_01e6:  brtrue.s   IL_01b7

      IL_01e8:  leave.s    IL_01f8

    }  // end .try
    finally
    {
      IL_01ea:  ldloca.s   V_2
      IL_01ec:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row>
      IL_01f2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01f7:  endfinally
    }  // end handler
    IL_01f8:  ldarg.0
    IL_01f9:  ldloc.0
    IL_01fa:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_01ff:  ret
  } // end of method GridPanelWidget::Measure

  .method public hidebysig virtual instance void 
          Arrange(valuetype [Engine]Engine.Vector2 position,
                  valuetype [Engine]Engine.Vector2 actualSize) cil managed
  {
    // 代码大小       167 (0xa7)
    .maxstack  5
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_0,
             class Game.Widget V_1,
             valuetype [Engine]Engine.Point2 V_2,
             class Game.GridPanelWidget/Column V_3,
             class Game.GridPanelWidget/Row V_4)
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
      IL_0014:  br.s       IL_008f

      IL_0016:  ldloc.0
      IL_0017:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001c:  stloc.1
      IL_001d:  ldarg.0
      IL_001e:  ldloc.1
      IL_001f:  call       instance valuetype [Engine]Engine.Point2 Game.GridPanelWidget::GetWidgetCell(class Game.Widget)
      IL_0024:  stloc.2
      IL_0025:  ldarg.0
      IL_0026:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
      IL_002b:  ldloc.2
      IL_002c:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0031:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::get_Item(int32)
      IL_0036:  stloc.3
      IL_0037:  ldarg.0
      IL_0038:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
      IL_003d:  ldloc.2
      IL_003e:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0043:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::get_Item(int32)
      IL_0048:  stloc.s    V_4
      IL_004a:  ldarg.1
      IL_004b:  ldloc.3
      IL_004c:  ldfld      float32 Game.GridPanelWidget/Column::Position
      IL_0051:  ldloc.s    V_4
      IL_0053:  ldfld      float32 Game.GridPanelWidget/Row::Position
      IL_0058:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_005d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0062:  ldarg.1
      IL_0063:  ldloc.3
      IL_0064:  ldfld      float32 Game.GridPanelWidget/Column::Position
      IL_0069:  ldloc.3
      IL_006a:  ldfld      float32 Game.GridPanelWidget/Column::ActualWidth
      IL_006f:  add
      IL_0070:  ldloc.s    V_4
      IL_0072:  ldfld      float32 Game.GridPanelWidget/Row::Position
      IL_0077:  ldloc.s    V_4
      IL_0079:  ldfld      float32 Game.GridPanelWidget/Row::ActualHeight
      IL_007e:  add
      IL_007f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0084:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0089:  ldloc.1
      IL_008a:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_008f:  ldloc.0
      IL_0090:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0095:  brtrue     IL_0016

      IL_009a:  leave.s    IL_00a6

    }  // end .try
    finally
    {
      IL_009c:  ldloc.0
      IL_009d:  brfalse.s  IL_00a5

      IL_009f:  ldloc.0
      IL_00a0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a5:  endfinally
    }  // end handler
    IL_00a6:  ret
  } // end of method GridPanelWidget::Arrange

  .property instance int32 ColumnsCount()
  {
    .get instance int32 Game.GridPanelWidget::get_ColumnsCount()
    .set instance void Game.GridPanelWidget::set_ColumnsCount(int32)
  } // end of property GridPanelWidget::ColumnsCount
  .property instance int32 RowsCount()
  {
    .get instance int32 Game.GridPanelWidget::get_RowsCount()
    .set instance void Game.GridPanelWidget::set_RowsCount(int32)
  } // end of property GridPanelWidget::RowsCount
} // end of class Game.GridPanelWidget