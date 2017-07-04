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
          WidgetRemoved(class Game.Widget widget) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Point2> Game.GridPanelWidget::m_cells
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Widget,valuetype [Engine]Engine.Point2>::Remove(!0)
    IL_000c:  pop
    IL_000d:  ret
  } // end of method GridPanelWidget::WidgetRemoved

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       518 (0x206)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column> V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row> V_2,
             valuetype Game.WidgetsList/Enumerator V_3,
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
    IL_0071:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0076:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_007b:  stloc.3
    .try
    {
      IL_007c:  br         IL_013e

      IL_0081:  ldloca.s   V_3
      IL_0083:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_0088:  stloc.s    V_4
      IL_008a:  ldloc.s    V_4
      IL_008c:  ldarg.1
      IL_008d:  ldc.r4     2.
      IL_0092:  ldloc.s    V_4
      IL_0094:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0099:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_009e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_00a3:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_00a8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_00ad:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_00b2:  ldarg.0
      IL_00b3:  ldloc.s    V_4
      IL_00b5:  call       instance valuetype [Engine]Engine.Point2 Game.GridPanelWidget::GetWidgetCell(class Game.Widget)
      IL_00ba:  stloc.s    V_5
      IL_00bc:  ldarg.0
      IL_00bd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
      IL_00c2:  ldloc.s    V_5
      IL_00c4:  ldfld      int32 [Engine]Engine.Point2::X
      IL_00c9:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::get_Item(int32)
      IL_00ce:  dup
      IL_00cf:  ldfld      float32 Game.GridPanelWidget/Column::ActualWidth
      IL_00d4:  ldloc.s    V_4
      IL_00d6:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_00db:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00e0:  ldc.r4     2.
      IL_00e5:  ldloc.s    V_4
      IL_00e7:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_00ec:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00f1:  mul
      IL_00f2:  add
      IL_00f3:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_00f8:  stfld      float32 Game.GridPanelWidget/Column::ActualWidth
      IL_00fd:  ldarg.0
      IL_00fe:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
      IL_0103:  ldloc.s    V_5
      IL_0105:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_010a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::get_Item(int32)
      IL_010f:  dup
      IL_0110:  ldfld      float32 Game.GridPanelWidget/Row::ActualHeight
      IL_0115:  ldloc.s    V_4
      IL_0117:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
      IL_011c:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0121:  ldc.r4     2.
      IL_0126:  ldloc.s    V_4
      IL_0128:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_012d:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0132:  mul
      IL_0133:  add
      IL_0134:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0139:  stfld      float32 Game.GridPanelWidget/Row::ActualHeight
      IL_013e:  ldloca.s   V_3
      IL_0140:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0145:  brtrue     IL_0081

      IL_014a:  leave.s    IL_015a

    }  // end .try
    finally
    {
      IL_014c:  ldloca.s   V_3
      IL_014e:  constrained. Game.WidgetsList/Enumerator
      IL_0154:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0159:  endfinally
    }  // end handler
    IL_015a:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_015f:  stloc.0
    IL_0160:  ldarg.0
    IL_0161:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
    IL_0166:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::GetEnumerator()
    IL_016b:  stloc.1
    .try
    {
      IL_016c:  br.s       IL_0196

      IL_016e:  ldloca.s   V_1
      IL_0170:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column>::get_Current()
      IL_0175:  stloc.s    V_6
      IL_0177:  ldloc.s    V_6
      IL_0179:  ldloc.0
      IL_017a:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_017f:  stfld      float32 Game.GridPanelWidget/Column::Position
      IL_0184:  ldloca.s   V_0
      IL_0186:  ldflda     float32 [Engine]Engine.Vector2::X
      IL_018b:  dup
      IL_018c:  ldind.r4
      IL_018d:  ldloc.s    V_6
      IL_018f:  ldfld      float32 Game.GridPanelWidget/Column::ActualWidth
      IL_0194:  add
      IL_0195:  stind.r4
      IL_0196:  ldloca.s   V_1
      IL_0198:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column>::MoveNext()
      IL_019d:  brtrue.s   IL_016e

      IL_019f:  leave.s    IL_01af

    }  // end .try
    finally
    {
      IL_01a1:  ldloca.s   V_1
      IL_01a3:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Column>
      IL_01a9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01ae:  endfinally
    }  // end handler
    IL_01af:  ldarg.0
    IL_01b0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
    IL_01b5:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::GetEnumerator()
    IL_01ba:  stloc.2
    .try
    {
      IL_01bb:  br.s       IL_01e5

      IL_01bd:  ldloca.s   V_2
      IL_01bf:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row>::get_Current()
      IL_01c4:  stloc.s    V_7
      IL_01c6:  ldloc.s    V_7
      IL_01c8:  ldloc.0
      IL_01c9:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_01ce:  stfld      float32 Game.GridPanelWidget/Row::Position
      IL_01d3:  ldloca.s   V_0
      IL_01d5:  ldflda     float32 [Engine]Engine.Vector2::Y
      IL_01da:  dup
      IL_01db:  ldind.r4
      IL_01dc:  ldloc.s    V_7
      IL_01de:  ldfld      float32 Game.GridPanelWidget/Row::ActualHeight
      IL_01e3:  add
      IL_01e4:  stind.r4
      IL_01e5:  ldloca.s   V_2
      IL_01e7:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row>::MoveNext()
      IL_01ec:  brtrue.s   IL_01bd

      IL_01ee:  leave.s    IL_01fe

    }  // end .try
    finally
    {
      IL_01f0:  ldloca.s   V_2
      IL_01f2:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.GridPanelWidget/Row>
      IL_01f8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01fd:  endfinally
    }  // end handler
    IL_01fe:  ldarg.0
    IL_01ff:  ldloc.0
    IL_0200:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0205:  ret
  } // end of method GridPanelWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          ArrangeOverride() cil managed
  {
    // 代码大小       150 (0x96)
    .maxstack  4
    .locals init (valuetype Game.WidgetsList/Enumerator V_0,
             class Game.Widget V_1,
             valuetype [Engine]Engine.Point2 V_2,
             class Game.GridPanelWidget/Column V_3,
             class Game.GridPanelWidget/Row V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_007c

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldarg.0
      IL_0017:  ldloc.1
      IL_0018:  call       instance valuetype [Engine]Engine.Point2 Game.GridPanelWidget::GetWidgetCell(class Game.Widget)
      IL_001d:  stloc.2
      IL_001e:  ldarg.0
      IL_001f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column> Game.GridPanelWidget::m_columns
      IL_0024:  ldloc.2
      IL_0025:  ldfld      int32 [Engine]Engine.Point2::X
      IL_002a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Column>::get_Item(int32)
      IL_002f:  stloc.3
      IL_0030:  ldarg.0
      IL_0031:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row> Game.GridPanelWidget::m_rows
      IL_0036:  ldloc.2
      IL_0037:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_003c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.GridPanelWidget/Row>::get_Item(int32)
      IL_0041:  stloc.s    V_4
      IL_0043:  ldloc.3
      IL_0044:  ldfld      float32 Game.GridPanelWidget/Column::Position
      IL_0049:  ldloc.s    V_4
      IL_004b:  ldfld      float32 Game.GridPanelWidget/Row::Position
      IL_0050:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0055:  ldloc.3
      IL_0056:  ldfld      float32 Game.GridPanelWidget/Column::Position
      IL_005b:  ldloc.3
      IL_005c:  ldfld      float32 Game.GridPanelWidget/Column::ActualWidth
      IL_0061:  add
      IL_0062:  ldloc.s    V_4
      IL_0064:  ldfld      float32 Game.GridPanelWidget/Row::Position
      IL_0069:  ldloc.s    V_4
      IL_006b:  ldfld      float32 Game.GridPanelWidget/Row::ActualHeight
      IL_0070:  add
      IL_0071:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0076:  ldloc.1
      IL_0077:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_007c:  ldloca.s   V_0
      IL_007e:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0083:  brtrue.s   IL_000e

      IL_0085:  leave.s    IL_0095

    }  // end .try
    finally
    {
      IL_0087:  ldloca.s   V_0
      IL_0089:  constrained. Game.WidgetsList/Enumerator
      IL_008f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0094:  endfinally
    }  // end handler
    IL_0095:  ret
  } // end of method GridPanelWidget::ArrangeOverride

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