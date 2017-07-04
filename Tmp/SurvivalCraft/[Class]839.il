.class public auto ansi beforefieldinit Game.ScreenSpaceFireRenderer
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit Particle
         extends [System.Runtime]System.Object
  {
    .field public bool Active
    .field public valuetype [Engine]Engine.Vector2 Position
    .field public valuetype [Engine]Engine.Vector2 Size
    .field public float32 Speed
    .field public int32 TextureSlot
    .field public bool FlipX
    .field public bool FlipY
    .field public float32 AnimationTime
    .field public float32 TimeToLive
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Particle::.ctor

  } // end of class Particle

  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.ScreenSpaceFireRenderer/Particle> m_particles
  .field private class Game.Random m_random
  .field private float32 m_toGenerate
  .field private class [Engine]Engine.Graphics.Texture2D m_texture
  .field private float32 '<ParticlesPerSecond>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ParticleSpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<MinTimeToLive>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<MaxTimeToLive>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ParticleSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ParticleAnimationPeriod>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ParticleAnimationOffset>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<Origin>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Width>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<CutoffPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 particlesCount) cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ScreenSpaceFireRenderer/Particle>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ScreenSpaceFireRenderer/Particle> Game.ScreenSpaceFireRenderer::m_particles
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ScreenSpaceFireRenderer::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  ldarg.0
    IL_001d:  ldstr      "Textures/FireParticle"
    IL_0022:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0027:  stfld      class [Engine]Engine.Graphics.Texture2D Game.ScreenSpaceFireRenderer::m_texture
    IL_002c:  ldc.i4.0
    IL_002d:  stloc.0
    IL_002e:  br.s       IL_0044

    IL_0030:  ldarg.0
    IL_0031:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ScreenSpaceFireRenderer/Particle> Game.ScreenSpaceFireRenderer::m_particles
    IL_0036:  newobj     instance void Game.ScreenSpaceFireRenderer/Particle::.ctor()
    IL_003b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ScreenSpaceFireRenderer/Particle>::Add(!0)
    IL_0040:  ldloc.0
    IL_0041:  ldc.i4.1
    IL_0042:  add
    IL_0043:  stloc.0
    IL_0044:  ldloc.0
    IL_0045:  ldarg.1
    IL_0046:  blt.s      IL_0030

    IL_0048:  ret
  } // end of method ScreenSpaceFireRenderer::.ctor

  .method public hidebysig specialname instance float32 
          get_ParticlesPerSecond() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScreenSpaceFireRenderer::'<ParticlesPerSecond>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenSpaceFireRenderer::get_ParticlesPerSecond

  .method public hidebysig specialname instance void 
          set_ParticlesPerSecond(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScreenSpaceFireRenderer::'<ParticlesPerSecond>k__BackingField'
    IL_0007:  ret
  } // end of method ScreenSpaceFireRenderer::set_ParticlesPerSecond

  .method public hidebysig specialname instance float32 
          get_ParticleSpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScreenSpaceFireRenderer::'<ParticleSpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenSpaceFireRenderer::get_ParticleSpeed

  .method public hidebysig specialname instance void 
          set_ParticleSpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScreenSpaceFireRenderer::'<ParticleSpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ScreenSpaceFireRenderer::set_ParticleSpeed

  .method public hidebysig specialname instance float32 
          get_MinTimeToLive() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScreenSpaceFireRenderer::'<MinTimeToLive>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenSpaceFireRenderer::get_MinTimeToLive

  .method public hidebysig specialname instance void 
          set_MinTimeToLive(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScreenSpaceFireRenderer::'<MinTimeToLive>k__BackingField'
    IL_0007:  ret
  } // end of method ScreenSpaceFireRenderer::set_MinTimeToLive

  .method public hidebysig specialname instance float32 
          get_MaxTimeToLive() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScreenSpaceFireRenderer::'<MaxTimeToLive>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenSpaceFireRenderer::get_MaxTimeToLive

  .method public hidebysig specialname instance void 
          set_MaxTimeToLive(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScreenSpaceFireRenderer::'<MaxTimeToLive>k__BackingField'
    IL_0007:  ret
  } // end of method ScreenSpaceFireRenderer::set_MaxTimeToLive

  .method public hidebysig specialname instance float32 
          get_ParticleSize() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScreenSpaceFireRenderer::'<ParticleSize>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenSpaceFireRenderer::get_ParticleSize

  .method public hidebysig specialname instance void 
          set_ParticleSize(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScreenSpaceFireRenderer::'<ParticleSize>k__BackingField'
    IL_0007:  ret
  } // end of method ScreenSpaceFireRenderer::set_ParticleSize

  .method public hidebysig specialname instance float32 
          get_ParticleAnimationPeriod() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScreenSpaceFireRenderer::'<ParticleAnimationPeriod>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenSpaceFireRenderer::get_ParticleAnimationPeriod

  .method public hidebysig specialname instance void 
          set_ParticleAnimationPeriod(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScreenSpaceFireRenderer::'<ParticleAnimationPeriod>k__BackingField'
    IL_0007:  ret
  } // end of method ScreenSpaceFireRenderer::set_ParticleAnimationPeriod

  .method public hidebysig specialname instance float32 
          get_ParticleAnimationOffset() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScreenSpaceFireRenderer::'<ParticleAnimationOffset>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenSpaceFireRenderer::get_ParticleAnimationOffset

  .method public hidebysig specialname instance void 
          set_ParticleAnimationOffset(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScreenSpaceFireRenderer::'<ParticleAnimationOffset>k__BackingField'
    IL_0007:  ret
  } // end of method ScreenSpaceFireRenderer::set_ParticleAnimationOffset

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Origin() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer::'<Origin>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenSpaceFireRenderer::get_Origin

  .method public hidebysig specialname instance void 
          set_Origin(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer::'<Origin>k__BackingField'
    IL_0007:  ret
  } // end of method ScreenSpaceFireRenderer::set_Origin

  .method public hidebysig specialname instance float32 
          get_Width() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScreenSpaceFireRenderer::'<Width>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenSpaceFireRenderer::get_Width

  .method public hidebysig specialname instance void 
          set_Width(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScreenSpaceFireRenderer::'<Width>k__BackingField'
    IL_0007:  ret
  } // end of method ScreenSpaceFireRenderer::set_Width

  .method public hidebysig specialname instance float32 
          get_CutoffPosition() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ScreenSpaceFireRenderer::'<CutoffPosition>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenSpaceFireRenderer::get_CutoffPosition

  .method public hidebysig specialname instance void 
          set_CutoffPosition(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ScreenSpaceFireRenderer::'<CutoffPosition>k__BackingField'
    IL_0007:  ret
  } // end of method ScreenSpaceFireRenderer::set_CutoffPosition

  .method public hidebysig instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       522 (0x20a)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ScreenSpaceFireRenderer/Particle> V_0,
             class Game.ScreenSpaceFireRenderer/Particle V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.ScreenSpaceFireRenderer::m_toGenerate
    IL_0007:  ldarg.0
    IL_0008:  call       instance float32 Game.ScreenSpaceFireRenderer::get_ParticlesPerSecond()
    IL_000d:  ldarg.1
    IL_000e:  mul
    IL_000f:  add
    IL_0010:  stfld      float32 Game.ScreenSpaceFireRenderer::m_toGenerate
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ScreenSpaceFireRenderer/Particle> Game.ScreenSpaceFireRenderer::m_particles
    IL_001b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ScreenSpaceFireRenderer/Particle>::GetEnumerator()
    IL_0020:  stloc.0
    .try
    {
      IL_0021:  br         IL_01d7

      IL_0026:  ldloca.s   V_0
      IL_0028:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ScreenSpaceFireRenderer/Particle>::get_Current()
      IL_002d:  stloc.1
      IL_002e:  ldloc.1
      IL_002f:  ldfld      bool Game.ScreenSpaceFireRenderer/Particle::Active
      IL_0034:  brfalse    IL_00c8

      IL_0039:  ldloc.1
      IL_003a:  ldflda     valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer/Particle::Position
      IL_003f:  ldflda     float32 [Engine]Engine.Vector2::Y
      IL_0044:  dup
      IL_0045:  ldind.r4
      IL_0046:  ldloc.1
      IL_0047:  ldfld      float32 Game.ScreenSpaceFireRenderer/Particle::Speed
      IL_004c:  ldarg.1
      IL_004d:  mul
      IL_004e:  add
      IL_004f:  stind.r4
      IL_0050:  ldloc.1
      IL_0051:  dup
      IL_0052:  ldfld      float32 Game.ScreenSpaceFireRenderer/Particle::AnimationTime
      IL_0057:  ldarg.1
      IL_0058:  add
      IL_0059:  stfld      float32 Game.ScreenSpaceFireRenderer/Particle::AnimationTime
      IL_005e:  ldloc.1
      IL_005f:  dup
      IL_0060:  ldfld      float32 Game.ScreenSpaceFireRenderer/Particle::TimeToLive
      IL_0065:  ldarg.1
      IL_0066:  sub
      IL_0067:  stfld      float32 Game.ScreenSpaceFireRenderer/Particle::TimeToLive
      IL_006c:  ldloc.1
      IL_006d:  ldc.r4     9.
      IL_0072:  ldloc.1
      IL_0073:  ldfld      float32 Game.ScreenSpaceFireRenderer/Particle::AnimationTime
      IL_0078:  mul
      IL_0079:  ldarg.0
      IL_007a:  call       instance float32 Game.ScreenSpaceFireRenderer::get_ParticleAnimationPeriod()
      IL_007f:  div
      IL_0080:  ldc.r4     0.0
      IL_0085:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_008a:  conv.i4
      IL_008b:  stfld      int32 Game.ScreenSpaceFireRenderer/Particle::TextureSlot
      IL_0090:  ldloc.1
      IL_0091:  ldfld      float32 Game.ScreenSpaceFireRenderer/Particle::TimeToLive
      IL_0096:  ldc.r4     0.0
      IL_009b:  ble.s      IL_00bc

      IL_009d:  ldloc.1
      IL_009e:  ldfld      int32 Game.ScreenSpaceFireRenderer/Particle::TextureSlot
      IL_00a3:  ldc.i4.8
      IL_00a4:  bgt.s      IL_00bc

      IL_00a6:  ldloc.1
      IL_00a7:  ldflda     valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer/Particle::Position
      IL_00ac:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00b1:  ldarg.0
      IL_00b2:  call       instance float32 Game.ScreenSpaceFireRenderer::get_CutoffPosition()
      IL_00b7:  bge.un     IL_01d7

      IL_00bc:  ldloc.1
      IL_00bd:  ldc.i4.0
      IL_00be:  stfld      bool Game.ScreenSpaceFireRenderer/Particle::Active
      IL_00c3:  br         IL_01d7

      IL_00c8:  ldarg.0
      IL_00c9:  ldfld      float32 Game.ScreenSpaceFireRenderer::m_toGenerate
      IL_00ce:  ldc.r4     1.
      IL_00d3:  blt.un     IL_01d7

      IL_00d8:  ldloc.1
      IL_00d9:  ldc.i4.1
      IL_00da:  stfld      bool Game.ScreenSpaceFireRenderer/Particle::Active
      IL_00df:  ldloc.1
      IL_00e0:  ldarg.0
      IL_00e1:  ldfld      class Game.Random Game.ScreenSpaceFireRenderer::m_random
      IL_00e6:  ldarg.0
      IL_00e7:  call       instance valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer::get_Origin()
      IL_00ec:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00f1:  ldarg.0
      IL_00f2:  call       instance valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer::get_Origin()
      IL_00f7:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00fc:  ldarg.0
      IL_00fd:  call       instance float32 Game.ScreenSpaceFireRenderer::get_Width()
      IL_0102:  add
      IL_0103:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0108:  ldarg.0
      IL_0109:  call       instance valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer::get_Origin()
      IL_010e:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0113:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0118:  stfld      valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer/Particle::Position
      IL_011d:  ldloc.1
      IL_011e:  ldarg.0
      IL_011f:  call       instance float32 Game.ScreenSpaceFireRenderer::get_ParticleSize()
      IL_0124:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_0129:  stfld      valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer/Particle::Size
      IL_012e:  ldloc.1
      IL_012f:  ldarg.0
      IL_0130:  ldfld      class Game.Random Game.ScreenSpaceFireRenderer::m_random
      IL_0135:  ldc.r4     0.75
      IL_013a:  ldc.r4     1.25
      IL_013f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0144:  neg
      IL_0145:  ldarg.0
      IL_0146:  call       instance float32 Game.ScreenSpaceFireRenderer::get_ParticleSpeed()
      IL_014b:  mul
      IL_014c:  stfld      float32 Game.ScreenSpaceFireRenderer/Particle::Speed
      IL_0151:  ldloc.1
      IL_0152:  ldarg.0
      IL_0153:  ldfld      class Game.Random Game.ScreenSpaceFireRenderer::m_random
      IL_0158:  ldc.r4     0.0
      IL_015d:  ldarg.0
      IL_015e:  call       instance float32 Game.ScreenSpaceFireRenderer::get_ParticleAnimationOffset()
      IL_0163:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0168:  stfld      float32 Game.ScreenSpaceFireRenderer/Particle::AnimationTime
      IL_016d:  ldloc.1
      IL_016e:  ldarg.0
      IL_016f:  call       instance float32 Game.ScreenSpaceFireRenderer::get_MinTimeToLive()
      IL_0174:  ldarg.0
      IL_0175:  call       instance float32 Game.ScreenSpaceFireRenderer::get_MaxTimeToLive()
      IL_017a:  ldarg.0
      IL_017b:  ldfld      class Game.Random Game.ScreenSpaceFireRenderer::m_random
      IL_0180:  ldc.r4     0.0
      IL_0185:  ldc.r4     1.
      IL_018a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_018f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0194:  stfld      float32 Game.ScreenSpaceFireRenderer/Particle::TimeToLive
      IL_0199:  ldloc.1
      IL_019a:  ldarg.0
      IL_019b:  ldfld      class Game.Random Game.ScreenSpaceFireRenderer::m_random
      IL_01a0:  ldc.i4.0
      IL_01a1:  ldc.i4.1
      IL_01a2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                  int32)
      IL_01a7:  ldc.i4.0
      IL_01a8:  ceq
      IL_01aa:  stfld      bool Game.ScreenSpaceFireRenderer/Particle::FlipX
      IL_01af:  ldloc.1
      IL_01b0:  ldarg.0
      IL_01b1:  ldfld      class Game.Random Game.ScreenSpaceFireRenderer::m_random
      IL_01b6:  ldc.i4.0
      IL_01b7:  ldc.i4.1
      IL_01b8:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                  int32)
      IL_01bd:  ldc.i4.0
      IL_01be:  ceq
      IL_01c0:  stfld      bool Game.ScreenSpaceFireRenderer/Particle::FlipY
      IL_01c5:  ldarg.0
      IL_01c6:  ldarg.0
      IL_01c7:  ldfld      float32 Game.ScreenSpaceFireRenderer::m_toGenerate
      IL_01cc:  ldc.r4     1.
      IL_01d1:  sub
      IL_01d2:  stfld      float32 Game.ScreenSpaceFireRenderer::m_toGenerate
      IL_01d7:  ldloca.s   V_0
      IL_01d9:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ScreenSpaceFireRenderer/Particle>::MoveNext()
      IL_01de:  brtrue     IL_0026

      IL_01e3:  leave.s    IL_01f3

    }  // end .try
    finally
    {
      IL_01e5:  ldloca.s   V_0
      IL_01e7:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ScreenSpaceFireRenderer/Particle>
      IL_01ed:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01f2:  endfinally
    }  // end handler
    IL_01f3:  ldarg.0
    IL_01f4:  ldarg.0
    IL_01f5:  ldfld      float32 Game.ScreenSpaceFireRenderer::m_toGenerate
    IL_01fa:  ldc.r4     1.
    IL_01ff:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0204:  stfld      float32 Game.ScreenSpaceFireRenderer::m_toGenerate
    IL_0209:  ret
  } // end of method ScreenSpaceFireRenderer::Update

  .method public hidebysig instance void 
          Draw(class [Engine]Engine.Graphics.PrimitivesRenderer2D primitivesRenderer,
               float32 depth,
               valuetype [Engine]Engine.Matrix matrix,
               valuetype [Engine]Engine.Color color) cil managed
  {
    // 代码大小       115 (0x73)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.TexturedBatch2D V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ScreenSpaceFireRenderer/Particle> V_2,
             class Game.ScreenSpaceFireRenderer/Particle V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ScreenSpaceFireRenderer::m_texture
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.0
    IL_0009:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_000e:  ldnull
    IL_000f:  ldnull
    IL_0010:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0015:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0021:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0026:  stloc.1
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ScreenSpaceFireRenderer/Particle> Game.ScreenSpaceFireRenderer::m_particles
    IL_002d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ScreenSpaceFireRenderer/Particle>::GetEnumerator()
    IL_0032:  stloc.2
    .try
    {
      IL_0033:  br.s       IL_0050

      IL_0035:  ldloca.s   V_2
      IL_0037:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ScreenSpaceFireRenderer/Particle>::get_Current()
      IL_003c:  stloc.3
      IL_003d:  ldloc.3
      IL_003e:  ldfld      bool Game.ScreenSpaceFireRenderer/Particle::Active
      IL_0043:  brfalse.s  IL_0050

      IL_0045:  ldarg.0
      IL_0046:  ldloc.0
      IL_0047:  ldloc.3
      IL_0048:  ldarg.2
      IL_0049:  ldarg.s    color
      IL_004b:  call       instance void Game.ScreenSpaceFireRenderer::DrawParticle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                    class Game.ScreenSpaceFireRenderer/Particle,
                                                                                    float32,
                                                                                    valuetype [Engine]Engine.Color)
      IL_0050:  ldloca.s   V_2
      IL_0052:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ScreenSpaceFireRenderer/Particle>::MoveNext()
      IL_0057:  brtrue.s   IL_0035

      IL_0059:  leave.s    IL_0069

    }  // end .try
    finally
    {
      IL_005b:  ldloca.s   V_2
      IL_005d:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ScreenSpaceFireRenderer/Particle>
      IL_0063:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0068:  endfinally
    }  // end handler
    IL_0069:  ldloc.0
    IL_006a:  ldarg.3
    IL_006b:  ldloc.1
    IL_006c:  ldc.i4.m1
    IL_006d:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_0072:  ret
  } // end of method ScreenSpaceFireRenderer::Draw

  .method private hidebysig instance void 
          DrawParticle(class [Engine]Engine.Graphics.TexturedBatch2D batch,
                       class Game.ScreenSpaceFireRenderer/Particle particle,
                       float32 depth,
                       valuetype [Engine]Engine.Color color) cil managed
  {
    // 代码大小       225 (0xe1)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer/Particle::Position
    IL_0006:  ldarg.2
    IL_0007:  ldfld      valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer/Particle::Size
    IL_000c:  ldc.r4     2.
    IL_0011:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0016:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_001b:  stloc.0
    IL_001c:  ldarg.2
    IL_001d:  ldfld      valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer/Particle::Position
    IL_0022:  ldarg.2
    IL_0023:  ldfld      valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer/Particle::Size
    IL_0028:  ldc.r4     2.
    IL_002d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0032:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0037:  stloc.1
    IL_0038:  ldarg.2
    IL_0039:  ldfld      int32 Game.ScreenSpaceFireRenderer/Particle::TextureSlot
    IL_003e:  stloc.2
    IL_003f:  ldloc.2
    IL_0040:  ldc.i4.3
    IL_0041:  rem
    IL_0042:  conv.r4
    IL_0043:  ldloc.2
    IL_0044:  ldc.i4.3
    IL_0045:  div
    IL_0046:  conv.r4
    IL_0047:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_004c:  ldc.r4     0.0
    IL_0051:  stloc.3
    IL_0052:  ldc.r4     1.
    IL_0057:  stloc.s    V_4
    IL_0059:  ldc.r4     0.0
    IL_005e:  stloc.s    V_5
    IL_0060:  ldc.r4     1.
    IL_0065:  stloc.s    V_6
    IL_0067:  ldarg.2
    IL_0068:  ldfld      bool Game.ScreenSpaceFireRenderer/Particle::FlipX
    IL_006d:  brfalse.s  IL_0081

    IL_006f:  ldc.r4     1.
    IL_0074:  ldloc.3
    IL_0075:  sub
    IL_0076:  stloc.3
    IL_0077:  ldc.r4     1.
    IL_007c:  ldloc.s    V_4
    IL_007e:  sub
    IL_007f:  stloc.s    V_4
    IL_0081:  ldarg.2
    IL_0082:  ldfld      bool Game.ScreenSpaceFireRenderer/Particle::FlipY
    IL_0087:  brfalse.s  IL_009d

    IL_0089:  ldc.r4     1.
    IL_008e:  ldloc.s    V_5
    IL_0090:  sub
    IL_0091:  stloc.s    V_5
    IL_0093:  ldc.r4     1.
    IL_0098:  ldloc.s    V_6
    IL_009a:  sub
    IL_009b:  stloc.s    V_6
    IL_009d:  dup
    IL_009e:  ldloc.3
    IL_009f:  ldloc.s    V_5
    IL_00a1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00ab:  ldc.r4     0.33333334
    IL_00b0:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00b5:  stloc.s    V_7
    IL_00b7:  ldloc.s    V_4
    IL_00b9:  ldloc.s    V_6
    IL_00bb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00c0:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00c5:  ldc.r4     0.33333334
    IL_00ca:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00cf:  stloc.s    V_8
    IL_00d1:  ldarg.1
    IL_00d2:  ldloc.0
    IL_00d3:  ldloc.1
    IL_00d4:  ldarg.3
    IL_00d5:  ldloc.s    V_7
    IL_00d7:  ldloc.s    V_8
    IL_00d9:  ldarg.s    color
    IL_00db:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00e0:  ret
  } // end of method ScreenSpaceFireRenderer::DrawParticle

  .property instance float32 ParticlesPerSecond()
  {
    .get instance float32 Game.ScreenSpaceFireRenderer::get_ParticlesPerSecond()
    .set instance void Game.ScreenSpaceFireRenderer::set_ParticlesPerSecond(float32)
  } // end of property ScreenSpaceFireRenderer::ParticlesPerSecond
  .property instance float32 ParticleSpeed()
  {
    .get instance float32 Game.ScreenSpaceFireRenderer::get_ParticleSpeed()
    .set instance void Game.ScreenSpaceFireRenderer::set_ParticleSpeed(float32)
  } // end of property ScreenSpaceFireRenderer::ParticleSpeed
  .property instance float32 MinTimeToLive()
  {
    .get instance float32 Game.ScreenSpaceFireRenderer::get_MinTimeToLive()
    .set instance void Game.ScreenSpaceFireRenderer::set_MinTimeToLive(float32)
  } // end of property ScreenSpaceFireRenderer::MinTimeToLive
  .property instance float32 MaxTimeToLive()
  {
    .get instance float32 Game.ScreenSpaceFireRenderer::get_MaxTimeToLive()
    .set instance void Game.ScreenSpaceFireRenderer::set_MaxTimeToLive(float32)
  } // end of property ScreenSpaceFireRenderer::MaxTimeToLive
  .property instance float32 ParticleSize()
  {
    .get instance float32 Game.ScreenSpaceFireRenderer::get_ParticleSize()
    .set instance void Game.ScreenSpaceFireRenderer::set_ParticleSize(float32)
  } // end of property ScreenSpaceFireRenderer::ParticleSize
  .property instance float32 ParticleAnimationPeriod()
  {
    .get instance float32 Game.ScreenSpaceFireRenderer::get_ParticleAnimationPeriod()
    .set instance void Game.ScreenSpaceFireRenderer::set_ParticleAnimationPeriod(float32)
  } // end of property ScreenSpaceFireRenderer::ParticleAnimationPeriod
  .property instance float32 ParticleAnimationOffset()
  {
    .get instance float32 Game.ScreenSpaceFireRenderer::get_ParticleAnimationOffset()
    .set instance void Game.ScreenSpaceFireRenderer::set_ParticleAnimationOffset(float32)
  } // end of property ScreenSpaceFireRenderer::ParticleAnimationOffset
  .property instance valuetype [Engine]Engine.Vector2
          Origin()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.ScreenSpaceFireRenderer::get_Origin()
    .set instance void Game.ScreenSpaceFireRenderer::set_Origin(valuetype [Engine]Engine.Vector2)
  } // end of property ScreenSpaceFireRenderer::Origin
  .property instance float32 Width()
  {
    .get instance float32 Game.ScreenSpaceFireRenderer::get_Width()
    .set instance void Game.ScreenSpaceFireRenderer::set_Width(float32)
  } // end of property ScreenSpaceFireRenderer::Width
  .property instance float32 CutoffPosition()
  {
    .get instance float32 Game.ScreenSpaceFireRenderer::get_CutoffPosition()
    .set instance void Game.ScreenSpaceFireRenderer::set_CutoffPosition(float32)
  } // end of property ScreenSpaceFireRenderer::CutoffPosition
} // end of class Game.ScreenSpaceFireRenderer