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
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void Game.CanvasWidget::Measure(valuetype [Engine]Engine.Vector2)
    IL_000e:  ret
  } // end of method FireWidget::Measure

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_0006:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_000b:  ldc.r4     0.0
    IL_0010:  callvirt   instance void Game.ScreenSpaceFireRenderer::Draw(class [Engine]Engine.Graphics.PrimitivesRenderer2D,
                                                                          float32)
    IL_0015:  ret
  } // end of method FireWidget::Draw

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       230 (0xe6)
    .maxstack  4
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
    IL_001b:  ldarg.0
    IL_001c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0021:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0026:  ldarg.0
    IL_0027:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_002c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0031:  ldarg.0
    IL_0032:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0037:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_003c:  add
    IL_003d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0042:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0047:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_004c:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_Origin(valuetype [Engine]Engine.Vector2)
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_0057:  ldc.r4     (00 00 80 FF)
    IL_005c:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_CutoffPosition(float32)
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_0067:  ldc.r4     32.
    IL_006c:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0071:  mul
    IL_0072:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticleSize(float32)
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_007d:  ldc.r4     32.
    IL_0082:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0087:  mul
    IL_0088:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticleSpeed(float32)
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_0093:  ldarg.0
    IL_0094:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0099:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_009e:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00a3:  mul
    IL_00a4:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_Width(float32)
    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_00af:  ldc.r4     0.5
    IL_00b4:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_MinTimeToLive(float32)
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_00bf:  ldc.r4     2.
    IL_00c4:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_MaxTimeToLive(float32)
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_00cf:  ldc.r4     1.25
    IL_00d4:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticleAnimationPeriod(float32)
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.ScreenSpaceFireRenderer Game.FireWidget::m_fireRenderer
    IL_00df:  ldloc.0
    IL_00e0:  callvirt   instance void Game.ScreenSpaceFireRenderer::Update(float32)
    IL_00e5:  ret
  } // end of method FireWidget::Update

  .property instance float32 ParticlesPerSecond()
  {
    .get instance float32 Game.FireWidget::get_ParticlesPerSecond()
    .set instance void Game.FireWidget::set_ParticlesPerSecond(float32)
  } // end of property FireWidget::ParticlesPerSecond
} // end of class Game.FireWidget