.class public auto ansi beforefieldinit Game.ArrowLineWidget
       extends Game.Widget
{
  .field private class [Engine]Engine.Graphics.FlatBatch2D m_flatBatch
  .field private string m_pointsString
  .field private float32 m_width
  .field private float32 m_arrowWidth
  .field private bool m_absoluteCoordinates
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> m_vertices
  .field private bool m_parsingPending
  .field private valuetype [Engine]Engine.Vector2 m_startOffset
  .field private valuetype [Engine]Engine.Color '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       93 (0x5d)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0006:  ldc.i4.1
    IL_0007:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_000c:  ldnull
    IL_000d:  ldnull
    IL_000e:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0013:  stfld      class [Engine]Engine.Graphics.FlatBatch2D Game.ArrowLineWidget::m_flatBatch
    IL_0018:  ldarg.0
    IL_0019:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::.ctor()
    IL_001e:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0023:  ldarg.0
    IL_0024:  call       instance void Game.Widget::.ctor()
    IL_0029:  ldarg.0
    IL_002a:  ldc.r4     6.
    IL_002f:  call       instance void Game.ArrowLineWidget::set_Width(float32)
    IL_0034:  ldarg.0
    IL_0035:  ldc.r4     0.0
    IL_003a:  call       instance void Game.ArrowLineWidget::set_ArrowWidth(float32)
    IL_003f:  ldarg.0
    IL_0040:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0045:  call       instance void Game.ArrowLineWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_004a:  ldarg.0
    IL_004b:  ldc.i4.0
    IL_004c:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0051:  ldarg.0
    IL_0052:  ldstr      "0, 0; 50, 0"
    IL_0057:  call       instance void Game.ArrowLineWidget::set_PointsString(string)
    IL_005c:  ret
  } // end of method ArrowLineWidget::.ctor

  .method public hidebysig specialname instance float32 
          get_Width() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ArrowLineWidget::m_width
    IL_0006:  ret
  } // end of method ArrowLineWidget::get_Width

  .method public hidebysig specialname instance void 
          set_Width(float32 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ArrowLineWidget::m_width
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.ArrowLineWidget::m_parsingPending
    IL_000e:  ret
  } // end of method ArrowLineWidget::set_Width

  .method public hidebysig specialname instance float32 
          get_ArrowWidth() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ArrowLineWidget::m_arrowWidth
    IL_0006:  ret
  } // end of method ArrowLineWidget::get_ArrowWidth

  .method public hidebysig specialname instance void 
          set_ArrowWidth(float32 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ArrowLineWidget::m_arrowWidth
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.ArrowLineWidget::m_parsingPending
    IL_000e:  ret
  } // end of method ArrowLineWidget::set_ArrowWidth

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.ArrowLineWidget::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method ArrowLineWidget::get_Color

  .method public hidebysig specialname instance void 
          set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.ArrowLineWidget::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method ArrowLineWidget::set_Color

  .method public hidebysig specialname instance string 
          get_PointsString() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ArrowLineWidget::m_pointsString
    IL_0006:  ret
  } // end of method ArrowLineWidget::get_PointsString

  .method public hidebysig specialname instance void 
          set_PointsString(string 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.ArrowLineWidget::m_pointsString
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.ArrowLineWidget::m_parsingPending
    IL_000e:  ret
  } // end of method ArrowLineWidget::set_PointsString

  .method public hidebysig specialname instance bool 
          get_AbsoluteCoordinates() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ArrowLineWidget::m_absoluteCoordinates
    IL_0006:  ret
  } // end of method ArrowLineWidget::get_AbsoluteCoordinates

  .method public hidebysig specialname instance void 
          set_AbsoluteCoordinates(bool 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ArrowLineWidget::m_absoluteCoordinates
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.ArrowLineWidget::m_parsingPending
    IL_000e:  ret
  } // end of method ArrowLineWidget::set_AbsoluteCoordinates

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       285 (0x11d)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ArrowLineWidget::m_parsingPending
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.ArrowLineWidget::ParsePoints()
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.0
    IL_0010:  br         IL_010b

    IL_0015:  ldarg.0
    IL_0016:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_001b:  ldarg.0
    IL_001c:  ldfld      valuetype [Engine]Engine.Vector2 Game.ArrowLineWidget::m_startOffset
    IL_0021:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_0032:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0037:  call       float32 Game.WidgetsManager::get_Scale()
    IL_003c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0041:  stloc.1
    IL_0042:  ldarg.0
    IL_0043:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0048:  ldarg.0
    IL_0049:  ldfld      valuetype [Engine]Engine.Vector2 Game.ArrowLineWidget::m_startOffset
    IL_004e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0059:  ldloc.0
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_0061:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0066:  call       float32 Game.WidgetsManager::get_Scale()
    IL_006b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0070:  stloc.2
    IL_0071:  ldarg.0
    IL_0072:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0077:  ldarg.0
    IL_0078:  ldfld      valuetype [Engine]Engine.Vector2 Game.ArrowLineWidget::m_startOffset
    IL_007d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0088:  ldloc.0
    IL_0089:  ldc.i4.2
    IL_008a:  add
    IL_008b:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_0090:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0095:  call       float32 Game.WidgetsManager::get_Scale()
    IL_009a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_009f:  stloc.3
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.ArrowLineWidget::m_flatBatch
    IL_00a6:  ldloc.1
    IL_00a7:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00ac:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00b1:  ldloc.1
    IL_00b2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b7:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00bc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00c1:  ldloc.2
    IL_00c2:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00c7:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00cc:  ldloc.2
    IL_00cd:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00d2:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00d7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00dc:  ldloc.3
    IL_00dd:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e2:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00e7:  ldloc.3
    IL_00e8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ed:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00f2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00f7:  ldc.r4     0.0
    IL_00fc:  ldarg.0
    IL_00fd:  call       instance valuetype [Engine]Engine.Color Game.ArrowLineWidget::get_Color()
    IL_0102:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0107:  ldloc.0
    IL_0108:  ldc.i4.3
    IL_0109:  add
    IL_010a:  stloc.0
    IL_010b:  ldloc.0
    IL_010c:  ldarg.0
    IL_010d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0112:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Count()
    IL_0117:  blt        IL_0015

    IL_011c:  ret
  } // end of method ArrowLineWidget::Draw

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ArrowLineWidget::m_parsingPending
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.ArrowLineWidget::ParsePoints()
    IL_000e:  ldarg.0
    IL_000f:  ldarg.0
    IL_0010:  call       instance valuetype [Engine]Engine.Color Game.ArrowLineWidget::get_Color()
    IL_0015:  stloc.0
    IL_0016:  ldloca.s   V_0
    IL_0018:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_001d:  ldc.i4.0
    IL_001e:  ble.s      IL_002f

    IL_0020:  ldarg.0
    IL_0021:  call       instance float32 Game.ArrowLineWidget::get_Width()
    IL_0026:  ldc.r4     0.0
    IL_002b:  cgt
    IL_002d:  br.s       IL_0030

    IL_002f:  ldc.i4.0
    IL_0030:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0035:  ret
  } // end of method ArrowLineWidget::Measure

  .method private hidebysig instance void 
          ParsePoints() cil managed
  {
    // 代码大小       1181 (0x49d)
    .maxstack  5
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> V_0,
             string[] V_1,
             int32 V_2,
             string V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             float32 V_12,
             float32 V_13,
             valuetype [Engine]Engine.Vector2 V_14,
             float32 V_15,
             float32 V_16,
             valuetype [Engine]Engine.Vector2 V_17,
             valuetype [System.Runtime]System.Nullable`1<float32> V_18,
             valuetype [System.Runtime]System.Nullable`1<float32> V_19,
             valuetype [System.Runtime]System.Nullable`1<float32> V_20,
             valuetype [System.Runtime]System.Nullable`1<float32> V_21,
             int32 V_22,
             valuetype [System.Runtime]System.Nullable`1<float32> V_23)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      bool Game.ArrowLineWidget::m_parsingPending
    IL_0007:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::.ctor()
    IL_000c:  stloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      string Game.ArrowLineWidget::m_pointsString
    IL_0013:  ldc.i4.1
    IL_0014:  newarr     [System.Runtime]System.Char
    IL_0019:  dup
    IL_001a:  ldc.i4.0
    IL_001b:  ldc.i4.s   59
    IL_001d:  stelem.i2
    IL_001e:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0023:  stloc.1
    IL_0024:  ldc.i4.0
    IL_0025:  stloc.2
    IL_0026:  br.s       IL_003c

    IL_0028:  ldloc.1
    IL_0029:  ldloc.2
    IL_002a:  ldelem.ref
    IL_002b:  stloc.3
    IL_002c:  ldloc.0
    IL_002d:  ldloc.3
    IL_002e:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<valuetype [Engine]Engine.Vector2>(string)
    IL_0033:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Add(!0)
    IL_0038:  ldloc.2
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  stloc.2
    IL_003c:  ldloc.2
    IL_003d:  ldloc.1
    IL_003e:  ldlen
    IL_003f:  conv.i4
    IL_0040:  blt.s      IL_0028

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0048:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Clear()
    IL_004d:  ldc.i4.0
    IL_004e:  stloc.s    V_4
    IL_0050:  br         IL_027f

    IL_0055:  ldloc.s    V_4
    IL_0057:  ldc.i4.1
    IL_0058:  blt        IL_0279

    IL_005d:  ldloc.0
    IL_005e:  ldloc.s    V_4
    IL_0060:  ldc.i4.1
    IL_0061:  sub
    IL_0062:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_0067:  stloc.s    V_5
    IL_0069:  ldloc.0
    IL_006a:  ldloc.s    V_4
    IL_006c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_0071:  stloc.s    V_6
    IL_0073:  ldloc.s    V_6
    IL_0075:  ldloc.s    V_5
    IL_0077:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_007c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_0081:  stloc.s    V_7
    IL_0083:  ldloc.s    V_7
    IL_0085:  stloc.s    V_8
    IL_0087:  ldloc.s    V_7
    IL_0089:  stloc.s    V_9
    IL_008b:  ldloc.s    V_4
    IL_008d:  ldc.i4.2
    IL_008e:  blt.s      IL_00a8

    IL_0090:  ldloc.s    V_5
    IL_0092:  ldloc.0
    IL_0093:  ldloc.s    V_4
    IL_0095:  ldc.i4.2
    IL_0096:  sub
    IL_0097:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_009c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00a1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_00a6:  stloc.s    V_8
    IL_00a8:  ldloc.s    V_4
    IL_00aa:  ldloc.0
    IL_00ab:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Count()
    IL_00b0:  ldc.i4.2
    IL_00b1:  sub
    IL_00b2:  bgt.s      IL_00cc

    IL_00b4:  ldloc.0
    IL_00b5:  ldloc.s    V_4
    IL_00b7:  ldc.i4.1
    IL_00b8:  add
    IL_00b9:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_00be:  ldloc.s    V_6
    IL_00c0:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00c5:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_00ca:  stloc.s    V_9
    IL_00cc:  ldloc.s    V_8
    IL_00ce:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Perpendicular(valuetype [Engine]Engine.Vector2)
    IL_00d3:  stloc.s    V_10
    IL_00d5:  ldloc.s    V_7
    IL_00d7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Perpendicular(valuetype [Engine]Engine.Vector2)
    IL_00dc:  stloc.s    V_11
    IL_00de:  ldc.r4     3.1415927
    IL_00e3:  ldloc.s    V_8
    IL_00e5:  ldloc.s    V_7
    IL_00e7:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_00ec:  sub
    IL_00ed:  stloc.s    V_12
    IL_00ef:  ldc.r4     0.5
    IL_00f4:  ldarg.0
    IL_00f5:  call       instance float32 Game.ArrowLineWidget::get_Width()
    IL_00fa:  mul
    IL_00fb:  ldloc.s    V_12
    IL_00fd:  ldc.r4     2.
    IL_0102:  div
    IL_0103:  call       float32 [Engine]Engine.MathUtils::Tan(float32)
    IL_0108:  div
    IL_0109:  stloc.s    V_13
    IL_010b:  ldc.r4     0.5
    IL_0110:  ldloc.s    V_10
    IL_0112:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0117:  ldarg.0
    IL_0118:  call       instance float32 Game.ArrowLineWidget::get_Width()
    IL_011d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0122:  ldloc.s    V_8
    IL_0124:  ldloc.s    V_13
    IL_0126:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_012b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0130:  stloc.s    V_14
    IL_0132:  ldc.r4     3.1415927
    IL_0137:  ldloc.s    V_7
    IL_0139:  ldloc.s    V_9
    IL_013b:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_0140:  sub
    IL_0141:  stloc.s    V_15
    IL_0143:  ldc.r4     0.5
    IL_0148:  ldarg.0
    IL_0149:  call       instance float32 Game.ArrowLineWidget::get_Width()
    IL_014e:  mul
    IL_014f:  ldloc.s    V_15
    IL_0151:  ldc.r4     2.
    IL_0156:  div
    IL_0157:  call       float32 [Engine]Engine.MathUtils::Tan(float32)
    IL_015c:  div
    IL_015d:  stloc.s    V_16
    IL_015f:  ldc.r4     0.5
    IL_0164:  ldloc.s    V_11
    IL_0166:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_016b:  ldarg.0
    IL_016c:  call       instance float32 Game.ArrowLineWidget::get_Width()
    IL_0171:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0176:  ldloc.s    V_7
    IL_0178:  ldloc.s    V_16
    IL_017a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_017f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0184:  stloc.s    V_17
    IL_0186:  ldarg.0
    IL_0187:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_018c:  ldloc.s    V_5
    IL_018e:  ldloc.s    V_14
    IL_0190:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0195:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Add(!0)
    IL_019a:  ldarg.0
    IL_019b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_01a0:  ldloc.s    V_5
    IL_01a2:  ldloc.s    V_14
    IL_01a4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_01a9:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Add(!0)
    IL_01ae:  ldarg.0
    IL_01af:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_01b4:  ldloc.s    V_6
    IL_01b6:  ldloc.s    V_17
    IL_01b8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_01bd:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Add(!0)
    IL_01c2:  ldarg.0
    IL_01c3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_01c8:  ldloc.s    V_6
    IL_01ca:  ldloc.s    V_17
    IL_01cc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_01d1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Add(!0)
    IL_01d6:  ldarg.0
    IL_01d7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_01dc:  ldloc.s    V_6
    IL_01de:  ldloc.s    V_17
    IL_01e0:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_01e5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Add(!0)
    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_01f0:  ldloc.s    V_5
    IL_01f2:  ldloc.s    V_14
    IL_01f4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_01f9:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Add(!0)
    IL_01fe:  ldloc.s    V_4
    IL_0200:  ldloc.0
    IL_0201:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Count()
    IL_0206:  ldc.i4.1
    IL_0207:  sub
    IL_0208:  bne.un.s   IL_0279

    IL_020a:  ldarg.0
    IL_020b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0210:  ldloc.s    V_6
    IL_0212:  ldc.r4     0.5
    IL_0217:  ldarg.0
    IL_0218:  call       instance float32 Game.ArrowLineWidget::get_ArrowWidth()
    IL_021d:  mul
    IL_021e:  ldloc.s    V_11
    IL_0220:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0225:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_022a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Add(!0)
    IL_022f:  ldarg.0
    IL_0230:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0235:  ldloc.s    V_6
    IL_0237:  ldc.r4     0.5
    IL_023c:  ldarg.0
    IL_023d:  call       instance float32 Game.ArrowLineWidget::get_ArrowWidth()
    IL_0242:  mul
    IL_0243:  ldloc.s    V_11
    IL_0245:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_024a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_024f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Add(!0)
    IL_0254:  ldarg.0
    IL_0255:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_025a:  ldloc.s    V_6
    IL_025c:  ldc.r4     0.5
    IL_0261:  ldarg.0
    IL_0262:  call       instance float32 Game.ArrowLineWidget::get_ArrowWidth()
    IL_0267:  mul
    IL_0268:  ldloc.s    V_7
    IL_026a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_026f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0274:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::Add(!0)
    IL_0279:  ldloc.s    V_4
    IL_027b:  ldc.i4.1
    IL_027c:  add
    IL_027d:  stloc.s    V_4
    IL_027f:  ldloc.s    V_4
    IL_0281:  ldloc.0
    IL_0282:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Count()
    IL_0287:  blt        IL_0055

    IL_028c:  ldarg.0
    IL_028d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0292:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Count()
    IL_0297:  ldc.i4.0
    IL_0298:  ble        IL_0486

    IL_029d:  ldloca.s   V_18
    IL_029f:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_02a5:  ldloca.s   V_19
    IL_02a7:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_02ad:  ldloca.s   V_20
    IL_02af:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_02b5:  ldloca.s   V_21
    IL_02b7:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_02bd:  ldc.i4.0
    IL_02be:  stloc.s    V_22
    IL_02c0:  br         IL_03ff

    IL_02c5:  ldloca.s   V_18
    IL_02c7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_02cc:  brfalse.s  IL_02f9

    IL_02ce:  ldarg.0
    IL_02cf:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_02d4:  ldloc.s    V_22
    IL_02d6:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_02db:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02e0:  ldloc.s    V_18
    IL_02e2:  stloc.s    V_23
    IL_02e4:  ldloca.s   V_23
    IL_02e6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::GetValueOrDefault()
    IL_02eb:  blt.s      IL_02f0

    IL_02ed:  ldc.i4.0
    IL_02ee:  br.s       IL_02f7

    IL_02f0:  ldloca.s   V_23
    IL_02f2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_02f7:  brfalse.s  IL_0312

    IL_02f9:  ldloca.s   V_18
    IL_02fb:  ldarg.0
    IL_02fc:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0301:  ldloc.s    V_22
    IL_0303:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_0308:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_030d:  call       instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0312:  ldloca.s   V_19
    IL_0314:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0319:  brfalse.s  IL_0346

    IL_031b:  ldarg.0
    IL_031c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0321:  ldloc.s    V_22
    IL_0323:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_0328:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_032d:  ldloc.s    V_19
    IL_032f:  stloc.s    V_23
    IL_0331:  ldloca.s   V_23
    IL_0333:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::GetValueOrDefault()
    IL_0338:  blt.s      IL_033d

    IL_033a:  ldc.i4.0
    IL_033b:  br.s       IL_0344

    IL_033d:  ldloca.s   V_23
    IL_033f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0344:  brfalse.s  IL_035f

    IL_0346:  ldloca.s   V_19
    IL_0348:  ldarg.0
    IL_0349:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_034e:  ldloc.s    V_22
    IL_0350:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_0355:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_035a:  call       instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_035f:  ldloca.s   V_20
    IL_0361:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0366:  brfalse.s  IL_0393

    IL_0368:  ldarg.0
    IL_0369:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_036e:  ldloc.s    V_22
    IL_0370:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_0375:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_037a:  ldloc.s    V_20
    IL_037c:  stloc.s    V_23
    IL_037e:  ldloca.s   V_23
    IL_0380:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::GetValueOrDefault()
    IL_0385:  bgt.s      IL_038a

    IL_0387:  ldc.i4.0
    IL_0388:  br.s       IL_0391

    IL_038a:  ldloca.s   V_23
    IL_038c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0391:  brfalse.s  IL_03ac

    IL_0393:  ldloca.s   V_20
    IL_0395:  ldarg.0
    IL_0396:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_039b:  ldloc.s    V_22
    IL_039d:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_03a2:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03a7:  call       instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_03ac:  ldloca.s   V_21
    IL_03ae:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_03b3:  brfalse.s  IL_03e0

    IL_03b5:  ldarg.0
    IL_03b6:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_03bb:  ldloc.s    V_22
    IL_03bd:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_03c2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_03c7:  ldloc.s    V_21
    IL_03c9:  stloc.s    V_23
    IL_03cb:  ldloca.s   V_23
    IL_03cd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::GetValueOrDefault()
    IL_03d2:  bgt.s      IL_03d7

    IL_03d4:  ldc.i4.0
    IL_03d5:  br.s       IL_03de

    IL_03d7:  ldloca.s   V_23
    IL_03d9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_03de:  brfalse.s  IL_03f9

    IL_03e0:  ldloca.s   V_21
    IL_03e2:  ldarg.0
    IL_03e3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_03e8:  ldloc.s    V_22
    IL_03ea:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Item(int32)
    IL_03ef:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_03f4:  call       instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_03f9:  ldloc.s    V_22
    IL_03fb:  ldc.i4.1
    IL_03fc:  add
    IL_03fd:  stloc.s    V_22
    IL_03ff:  ldloc.s    V_22
    IL_0401:  ldarg.0
    IL_0402:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2> Game.ArrowLineWidget::m_vertices
    IL_0407:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector2>::get_Count()
    IL_040c:  blt        IL_02c5

    IL_0411:  ldarg.0
    IL_0412:  call       instance bool Game.ArrowLineWidget::get_AbsoluteCoordinates()
    IL_0417:  brfalse.s  IL_043e

    IL_0419:  ldarg.0
    IL_041a:  ldloca.s   V_20
    IL_041c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0421:  ldloca.s   V_21
    IL_0423:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0428:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_042d:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0432:  ldarg.0
    IL_0433:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0438:  stfld      valuetype [Engine]Engine.Vector2 Game.ArrowLineWidget::m_startOffset
    IL_043d:  ret

    IL_043e:  ldarg.0
    IL_043f:  ldloca.s   V_20
    IL_0441:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0446:  ldloca.s   V_18
    IL_0448:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_044d:  sub
    IL_044e:  ldloca.s   V_21
    IL_0450:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0455:  ldloca.s   V_19
    IL_0457:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_045c:  sub
    IL_045d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0462:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0467:  ldarg.0
    IL_0468:  ldloca.s   V_18
    IL_046a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_046f:  ldloca.s   V_19
    IL_0471:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0476:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_047b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_0480:  stfld      valuetype [Engine]Engine.Vector2 Game.ArrowLineWidget::m_startOffset
    IL_0485:  ret

    IL_0486:  ldarg.0
    IL_0487:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_048c:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0491:  ldarg.0
    IL_0492:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0497:  stfld      valuetype [Engine]Engine.Vector2 Game.ArrowLineWidget::m_startOffset
    IL_049c:  ret
  } // end of method ArrowLineWidget::ParsePoints

  .property instance float32 Width()
  {
    .get instance float32 Game.ArrowLineWidget::get_Width()
    .set instance void Game.ArrowLineWidget::set_Width(float32)
  } // end of property ArrowLineWidget::Width
  .property instance float32 ArrowWidth()
  {
    .get instance float32 Game.ArrowLineWidget::get_ArrowWidth()
    .set instance void Game.ArrowLineWidget::set_ArrowWidth(float32)
  } // end of property ArrowLineWidget::ArrowWidth
  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.ArrowLineWidget::get_Color()
    .set instance void Game.ArrowLineWidget::set_Color(valuetype [Engine]Engine.Color)
  } // end of property ArrowLineWidget::Color
  .property instance string PointsString()
  {
    .get instance string Game.ArrowLineWidget::get_PointsString()
    .set instance void Game.ArrowLineWidget::set_PointsString(string)
  } // end of property ArrowLineWidget::PointsString
  .property instance bool AbsoluteCoordinates()
  {
    .get instance bool Game.ArrowLineWidget::get_AbsoluteCoordinates()
    .set instance void Game.ArrowLineWidget::set_AbsoluteCoordinates(bool)
  } // end of property ArrowLineWidget::AbsoluteCoordinates
} // end of class Game.ArrowLineWidget