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
    IL_0039:  ldc.i4.s   67
    IL_003b:  ldc.i4.s   58
    IL_003d:  ldc.i4.s   43
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
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
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
  } // end of method BusyBarWidget::Measure

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       234 (0xea)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Color V_2,
             float32 V_3)
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
    IL_0030:  ldc.i4.0
    IL_0031:  stloc.0
    IL_0032:  br         IL_00e2

    IL_0037:  ldarg.0
    IL_0038:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_003d:  ldloc.0
    IL_003e:  conv.r4
    IL_003f:  ldc.r4     0.5
    IL_0044:  add
    IL_0045:  ldc.r4     24.
    IL_004a:  mul
    IL_004b:  ldc.r4     6.
    IL_0050:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0055:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_005a:  stloc.1
    IL_005b:  ldloc.0
    IL_005c:  ldarg.0
    IL_005d:  ldfld      int32 Game.BusyBarWidget::m_boxIndex
    IL_0062:  ldc.i4.5
    IL_0063:  rem
    IL_0064:  beq.s      IL_006e

    IL_0066:  ldarg.0
    IL_0067:  call       instance valuetype [Engine]Engine.Color Game.BusyBarWidget::get_UnlitBarColor()
    IL_006c:  br.s       IL_0074

    IL_006e:  ldarg.0
    IL_006f:  call       instance valuetype [Engine]Engine.Color Game.BusyBarWidget::get_LitBarColor()
    IL_0074:  stloc.2
    IL_0075:  ldloc.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      int32 Game.BusyBarWidget::m_boxIndex
    IL_007c:  ldc.i4.5
    IL_007d:  rem
    IL_007e:  beq.s      IL_0087

    IL_0080:  ldc.r4     8.
    IL_0085:  br.s       IL_008c

    IL_0087:  ldc.r4     12.
    IL_008c:  stloc.3
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BusyBarWidget::m_batch
    IL_0093:  ldloc.1
    IL_0094:  ldloc.3
    IL_0095:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_009a:  ldc.r4     2.
    IL_009f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00a4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00a9:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00ae:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00b3:  ldloc.1
    IL_00b4:  ldloc.3
    IL_00b5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00ba:  ldc.r4     2.
    IL_00bf:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00c4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00c9:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00ce:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00d3:  ldc.r4     0.0
    IL_00d8:  ldloc.2
    IL_00d9:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_00de:  ldloc.0
    IL_00df:  ldc.i4.1
    IL_00e0:  add
    IL_00e1:  stloc.0
    IL_00e2:  ldloc.0
    IL_00e3:  ldc.i4.5
    IL_00e4:  blt        IL_0037

    IL_00e9:  ret
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