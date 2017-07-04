.class public auto ansi beforefieldinit Game.FireWidget
       extends Game.CanvasWidget
{
  .field private class Game.ScreenSpaceFireRenderer m_fireRenderer
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   100
    IL_0003:  newobj     instance void Game.ScreenSpaceFireRenderer::.ctor(int32)
    IL_0008:  stfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.CanvasWidget::.ctor()
    IL_0013:  ldarg.0
    IL_0014:  ldc.i4.1
    IL_0015:  call       instance void Game.Widget::set_ClampToBounds(bool)
    IL_001a:  ret
  } // end of method FireWidget::.ctor

  .method public hidebysig specialname instance float32 
          get_ParticlesPerSecond() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_0006:  callvirt   instance float32 Game.ScreenSpaceFireRenderer::get_ParticlesPerSecond()
    IL_000b:  ret
  } // end of method FireWidget::get_ParticlesPerSecond

  .method public hidebysig specialname instance void 
          set_ParticlesPerSecond(float32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticlesPerSecond(float32)
    IL_000c:  ret
  } // end of method FireWidget::set_ParticlesPerSecond

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void Game.CanvasWidget::MeasureOverride(valuetype [Engine]Engine.Vector2)
    IL_000e:  ret
  } // end of method FireWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_0006:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_000b:  ldc.r4     0.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0016:  ldarg.0
    IL_0017:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_001c:  callvirt   instance void Game.ScreenSpaceFireRenderer::Draw(class [Engine]Engine.Graphics.PrimitivesRenderer2D,
                                                                          float32,
                                                                          valuetype [Engine]Engine.Matrix,
                                                                          valuetype [Engine]Engine.Color)
    IL_0021:  ret
  } // end of method FireWidget::Draw

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       184 (0xb8)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0005:  ldc.r4     0.0
    IL_000a:  ldc.r4     0.1
    IL_000f:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_001b:  ldc.r4     0.0
    IL_0020:  ldarg.0
    IL_0021:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0026:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0030:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_Origin(valuetype [Engine]Engine.Vector2)
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_003b:  ldc.r4     (00 00 80 FF)
    IL_0040:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_CutoffPosition(float32)
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_004b:  ldc.r4     32.
    IL_0050:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticleSize(float32)
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_005b:  ldc.r4     32.
    IL_0060:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticleSpeed(float32)
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_006b:  ldarg.0
    IL_006c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0071:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0076:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_Width(float32)
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_0081:  ldc.r4     0.5
    IL_0086:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_MinTimeToLive(float32)
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_0091:  ldc.r4     2.
    IL_0096:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_MaxTimeToLive(float32)
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_00a1:  ldc.r4     1.25
    IL_00a6:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticleAnimationPeriod(float32)
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_00b1:  ldloc.0
    IL_00b2:  callvirt   instance void Game.ScreenSpaceFireRenderer::Update(float32)
    IL_00b7:  ret
  } // end of method FireWidget::Update

  .property instance float32 ParticlesPerSecond()
  {
    .get instance float32 Game.FireWidget::get_ParticlesPerSecond()
    .set instance void Game.FireWidget::set_ParticlesPerSecond(float32)
  } // end of property FireWidget::ParticlesPerSecond
} // end of class Game.FireWidget