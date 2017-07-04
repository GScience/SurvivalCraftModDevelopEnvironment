.class public auto ansi beforefieldinit Game.BusyBarWidget
       extends Game.Widget
{
  .field private static literal int32 m_barsCount = int32(0x00000005)
  .field private static literal float32 m_barSize = float32(8.)
  .field private static literal float32 m_barsSpacing = float32(24.)
  .field private int32 m_boxIndex
  .field private float64 m_lastBoxesStepTime
  .field private class [Engine]Engine.Graphics.FlatBatch2D m_batch
  .field private valuetype [Engine]Engine.Color '<LitBarColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<UnlitBarColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0006:  ldc.i4.0
    IL_0007:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_000c:  ldnull
    IL_000d:  ldnull
    IL_000e:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0013:  stfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BusyBarWidget::m_batch
    IL_0018:  ldarg.0
    IL_0019:  call       instance void Game.Widget::.ctor()
    IL_001e:  ldarg.0
    IL_001f:  ldc.i4.0
    IL_0020:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0025:  ldarg.0
    IL_0026:  ldc.i4.s   16
    IL_0028:  ldc.i4     0x8c
    IL_002d:  ldc.i4.0
    IL_002e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0033:  call       instance void Game.BusyBarWidget::set_LitBarColor(valuetype [Engine]Engine.Color)
    IL_0038:  ldarg.0
    IL_0039:  ldc.i4.s   48
    IL_003b:  ldc.i4.s   48
    IL_003d:  ldc.i4.s   48
    IL_003f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0044:  call       instance void Game.BusyBarWidget::set_UnlitBarColor(valuetype [Engine]Engine.Color)
    IL_0049:  ret
  } // end of method BusyBarWidget::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_LitBarColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.BusyBarWidget::'<LitBarColor>k__BackingField'
    IL_0006:  ret
  } // end of method BusyBarWidget::get_LitBarColor

  .method public hidebysig specialname instance void 
          set_LitBarColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.BusyBarWidget::'<LitBarColor>k__BackingField'
    IL_0007:  ret
  } // end of method BusyBarWidget::set_LitBarColor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_UnlitBarColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.BusyBarWidget::'<UnlitBarColor>k__BackingField'
    IL_0006:  ret
  } // end of method BusyBarWidget::get_UnlitBarColor

  .method public hidebysig specialname instance void 
          set_UnlitBarColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.BusyBarWidget::'<UnlitBarColor>k__BackingField'
    IL_0007:  ret
  } // end of method BusyBarWidget::set_UnlitBarColor

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldc.r4     120.
    IL_000d:  ldc.r4     12.
    IL_0012:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0017:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_001c:  ret
  } // end of method BusyBarWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       254 (0xfe)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Color V_3,
             float32 V_4)
    IL_0000:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0005:  ldarg.0
    IL_0006:  ldfld      float64 Game.BusyBarWidget::m_lastBoxesStepTime
    IL_000b:  sub
    IL_000c:  ldc.r8     0.25
    IL_0015:  ble.un.s   IL_0030

    IL_0017:  ldarg.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      int32 Game.BusyBarWidget::m_boxIndex
    IL_001e:  ldc.i4.1
    IL_001f:  add
    IL_0020:  stfld      int32 Game.BusyBarWidget::m_boxIndex
    IL_0025:  ldarg.0
    IL_0026:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_002b:  stfld      float64 Game.BusyBarWidget::m_lastBoxesStepTime
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BusyBarWidget::m_batch
    IL_0036:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_003b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_0040:  stloc.0
    IL_0041:  ldc.i4.0
    IL_0042:  stloc.1
    IL_0043:  br         IL_00e3

    IL_0048:  ldloca.s   V_2
    IL_004a:  ldloc.1
    IL_004b:  conv.r4
    IL_004c:  ldc.r4     0.5
    IL_0051:  add
    IL_0052:  ldc.r4     24.
    IL_0057:  mul
    IL_0058:  ldc.r4     6.
    IL_005d:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0062:  ldloc.1
    IL_0063:  ldarg.0
    IL_0064:  ldfld      int32 Game.BusyBarWidget::m_boxIndex
    IL_0069:  ldc.i4.5
    IL_006a:  rem
    IL_006b:  beq.s      IL_0075

    IL_006d:  ldarg.0
    IL_006e:  call       instance valuetype [Engine]Engine.Color Game.BusyBarWidget::get_UnlitBarColor()
    IL_0073:  br.s       IL_007b

    IL_0075:  ldarg.0
    IL_0076:  call       instance valuetype [Engine]Engine.Color Game.BusyBarWidget::get_LitBarColor()
    IL_007b:  stloc.3
    IL_007c:  ldloc.1
    IL_007d:  ldarg.0
    IL_007e:  ldfld      int32 Game.BusyBarWidget::m_boxIndex
    IL_0083:  ldc.i4.5
    IL_0084:  rem
    IL_0085:  beq.s      IL_008e

    IL_0087:  ldc.r4     8.
    IL_008c:  br.s       IL_0093

    IL_008e:  ldc.r4     12.
    IL_0093:  stloc.s    V_4
    IL_0095:  ldarg.0
    IL_0096:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BusyBarWidget::m_batch
    IL_009b:  ldloc.2
    IL_009c:  ldloc.s    V_4
    IL_009e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00a3:  ldc.r4     2.
    IL_00a8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00ad:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00b2:  ldloc.2
    IL_00b3:  ldloc.s    V_4
    IL_00b5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00ba:  ldc.r4     2.
    IL_00bf:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00c4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00c9:  ldc.r4     0.0
    IL_00ce:  ldloc.3
    IL_00cf:  ldarg.0
    IL_00d0:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_00d5:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00da:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_00df:  ldloc.1
    IL_00e0:  ldc.i4.1
    IL_00e1:  add
    IL_00e2:  stloc.1
    IL_00e3:  ldloc.1
    IL_00e4:  ldc.i4.5
    IL_00e5:  blt        IL_0048

    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BusyBarWidget::m_batch
    IL_00f0:  ldarg.0
    IL_00f1:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_00f6:  ldloc.0
    IL_00f7:  ldc.i4.m1
    IL_00f8:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_00fd:  ret
  } // end of method BusyBarWidget::Draw

  .property instance valuetype [Engine]Engine.Color
          LitBarColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.BusyBarWidget::get_LitBarColor()
    .set instance void Game.BusyBarWidget::set_LitBarColor(valuetype [Engine]Engine.Color)
  } // end of property BusyBarWidget::LitBarColor
  .property instance valuetype [Engine]Engine.Color
          UnlitBarColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.BusyBarWidget::get_UnlitBarColor()
    .set instance void Game.BusyBarWidget::set_UnlitBarColor(valuetype [Engine]Engine.Color)
  } // end of property BusyBarWidget::UnlitBarColor
} // end of class Game.BusyBarWidget