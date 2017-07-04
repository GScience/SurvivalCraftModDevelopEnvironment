.class public auto ansi beforefieldinit Game.FireworksTrailParticleSystem
       extends class Game.ParticleSystem`1<class Game.FireworksTrailParticleSystem/Particle>
       implements Game.ITrailParticleSystem
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public float32 Time
    .field public float32 Duration
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void Game.Particle::.ctor()
      IL_0006:  ret
    } // end of method Particle::.ctor

  } // end of class Particle

  .field private class Game.Random m_random
  .field private float32 m_toGenerate
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_lastPosition
  .field private valuetype [Engine]Engine.Vector3 '<Position>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsStopped>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.FireworksTrailParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   60
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.FireworksTrailParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldstr      "Textures/FireParticle"
    IL_0019:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_001e:  call       instance void class Game.ParticleSystem`1<class Game.FireworksTrailParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.3
    IL_0025:  call       instance void class Game.ParticleSystem`1<class Game.FireworksTrailParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_002a:  ret
  } // end of method FireworksTrailParticleSystem::.ctor

  .method public hidebysig newslot specialname virtual final 
          instance valuetype [Engine]Engine.Vector3 
          get_Position() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.FireworksTrailParticleSystem::'<Position>k__BackingField'
    IL_0006:  ret
  } // end of method FireworksTrailParticleSystem::get_Position

  .method public hidebysig newslot specialname virtual final 
          instance void  set_Position(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.FireworksTrailParticleSystem::'<Position>k__BackingField'
    IL_0007:  ret
  } // end of method FireworksTrailParticleSystem::set_Position

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_IsStopped() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.FireworksTrailParticleSystem::'<IsStopped>k__BackingField'
    IL_0006:  ret
  } // end of method FireworksTrailParticleSystem::get_IsStopped

  .method public hidebysig newslot specialname virtual final 
          instance void  set_IsStopped(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.FireworksTrailParticleSystem::'<IsStopped>k__BackingField'
    IL_0007:  ret
  } // end of method FireworksTrailParticleSystem::set_IsStopped

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       449 (0x1c1)
    .maxstack  6
    .locals init (float32 V_0,
             bool V_1,
             int32 V_2,
             class Game.FireworksTrailParticleSystem/Particle V_3)
    IL_0000:  ldc.r4     120.
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      float32 Game.FireworksTrailParticleSystem::m_toGenerate
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  mul
    IL_0010:  add
    IL_0011:  stfld      float32 Game.FireworksTrailParticleSystem::m_toGenerate
    IL_0016:  ldarg.0
    IL_0017:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.FireworksTrailParticleSystem::m_lastPosition
    IL_001c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0021:  brtrue.s   IL_0034

    IL_0023:  ldarg.0
    IL_0024:  ldarg.0
    IL_0025:  call       instance valuetype [Engine]Engine.Vector3 Game.FireworksTrailParticleSystem::get_Position()
    IL_002a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_002f:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.FireworksTrailParticleSystem::m_lastPosition
    IL_0034:  ldc.i4.0
    IL_0035:  stloc.1
    IL_0036:  ldc.i4.0
    IL_0037:  stloc.2
    IL_0038:  br         IL_017d

    IL_003d:  ldarg.0
    IL_003e:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksTrailParticleSystem/Particle>::get_Particles()
    IL_0043:  ldloc.2
    IL_0044:  ldelem.ref
    IL_0045:  stloc.3
    IL_0046:  ldloc.3
    IL_0047:  ldfld      bool Game.Particle::IsActive
    IL_004c:  brfalse.s  IL_00a1

    IL_004e:  ldc.i4.1
    IL_004f:  stloc.1
    IL_0050:  ldloc.3
    IL_0051:  dup
    IL_0052:  ldfld      float32 Game.FireworksTrailParticleSystem/Particle::Time
    IL_0057:  ldarg.1
    IL_0058:  add
    IL_0059:  stfld      float32 Game.FireworksTrailParticleSystem/Particle::Time
    IL_005e:  ldloc.3
    IL_005f:  ldfld      float32 Game.FireworksTrailParticleSystem/Particle::Time
    IL_0064:  ldloc.3
    IL_0065:  ldfld      float32 Game.FireworksTrailParticleSystem/Particle::Duration
    IL_006a:  bgt.un.s   IL_0095

    IL_006c:  ldloc.3
    IL_006d:  ldc.r4     9.
    IL_0072:  ldloc.3
    IL_0073:  ldfld      float32 Game.FireworksTrailParticleSystem/Particle::Time
    IL_0078:  mul
    IL_0079:  ldloc.3
    IL_007a:  ldfld      float32 Game.FireworksTrailParticleSystem/Particle::Duration
    IL_007f:  div
    IL_0080:  ldc.r4     8.
    IL_0085:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_008a:  conv.i4
    IL_008b:  stfld      int32 Game.Particle::TextureSlot
    IL_0090:  br         IL_0179

    IL_0095:  ldloc.3
    IL_0096:  ldc.i4.0
    IL_0097:  stfld      bool Game.Particle::IsActive
    IL_009c:  br         IL_0179

    IL_00a1:  ldarg.0
    IL_00a2:  call       instance bool Game.FireworksTrailParticleSystem::get_IsStopped()
    IL_00a7:  brtrue     IL_0179

    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      float32 Game.FireworksTrailParticleSystem::m_toGenerate
    IL_00b2:  ldc.r4     1.
    IL_00b7:  blt.un     IL_0179

    IL_00bc:  ldloc.3
    IL_00bd:  ldc.i4.1
    IL_00be:  stfld      bool Game.Particle::IsActive
    IL_00c3:  ldloc.3
    IL_00c4:  ldarg.0
    IL_00c5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.FireworksTrailParticleSystem::m_lastPosition
    IL_00ca:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00cf:  ldarg.0
    IL_00d0:  call       instance valuetype [Engine]Engine.Vector3 Game.FireworksTrailParticleSystem::get_Position()
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.Random Game.FireworksTrailParticleSystem::m_random
    IL_00db:  ldc.r4     0.0
    IL_00e0:  ldc.r4     1.
    IL_00e5:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ea:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_00ef:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_00f4:  ldloc.3
    IL_00f5:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00fa:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_00ff:  ldloc.3
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.Random Game.FireworksTrailParticleSystem::m_random
    IL_0106:  ldc.r4     0.0
    IL_010b:  ldc.r4     0.75
    IL_0110:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0115:  stfld      float32 Game.FireworksTrailParticleSystem/Particle::Time
    IL_011a:  ldloc.3
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class Game.Random Game.FireworksTrailParticleSystem::m_random
    IL_0121:  ldc.r4     0.12
    IL_0126:  ldc.r4     0.16
    IL_012b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0130:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0135:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_013a:  ldloc.3
    IL_013b:  ldc.r4     1.
    IL_0140:  stfld      float32 Game.FireworksTrailParticleSystem/Particle::Duration
    IL_0145:  ldloc.3
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.Random Game.FireworksTrailParticleSystem::m_random
    IL_014c:  callvirt   instance bool Game.Random::Bool()
    IL_0151:  stfld      bool Game.Particle::FlipX
    IL_0156:  ldloc.3
    IL_0157:  ldarg.0
    IL_0158:  ldfld      class Game.Random Game.FireworksTrailParticleSystem::m_random
    IL_015d:  callvirt   instance bool Game.Random::Bool()
    IL_0162:  stfld      bool Game.Particle::FlipY
    IL_0167:  ldarg.0
    IL_0168:  ldarg.0
    IL_0169:  ldfld      float32 Game.FireworksTrailParticleSystem::m_toGenerate
    IL_016e:  ldc.r4     1.
    IL_0173:  sub
    IL_0174:  stfld      float32 Game.FireworksTrailParticleSystem::m_toGenerate
    IL_0179:  ldloc.2
    IL_017a:  ldc.i4.1
    IL_017b:  add
    IL_017c:  stloc.2
    IL_017d:  ldloc.2
    IL_017e:  ldarg.0
    IL_017f:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksTrailParticleSystem/Particle>::get_Particles()
    IL_0184:  ldlen
    IL_0185:  conv.i4
    IL_0186:  blt        IL_003d

    IL_018b:  ldarg.0
    IL_018c:  ldarg.0
    IL_018d:  ldfld      float32 Game.FireworksTrailParticleSystem::m_toGenerate
    IL_0192:  ldc.r4     1.
    IL_0197:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_019c:  stfld      float32 Game.FireworksTrailParticleSystem::m_toGenerate
    IL_01a1:  ldarg.0
    IL_01a2:  ldarg.0
    IL_01a3:  call       instance valuetype [Engine]Engine.Vector3 Game.FireworksTrailParticleSystem::get_Position()
    IL_01a8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_01ad:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.FireworksTrailParticleSystem::m_lastPosition
    IL_01b2:  ldarg.0
    IL_01b3:  call       instance bool Game.FireworksTrailParticleSystem::get_IsStopped()
    IL_01b8:  brfalse.s  IL_01bf

    IL_01ba:  ldloc.1
    IL_01bb:  ldc.i4.0
    IL_01bc:  ceq
    IL_01be:  ret

    IL_01bf:  ldc.i4.0
    IL_01c0:  ret
  } // end of method FireworksTrailParticleSystem::Simulate

  .property instance valuetype [Engine]Engine.Vector3
          Position()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.FireworksTrailParticleSystem::get_Position()
    .set instance void Game.FireworksTrailParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
  } // end of property FireworksTrailParticleSystem::Position
  .property instance bool IsStopped()
  {
    .get instance bool Game.FireworksTrailParticleSystem::get_IsStopped()
    .set instance void Game.FireworksTrailParticleSystem::set_IsStopped(bool)
  } // end of property FireworksTrailParticleSystem::IsStopped
} // end of class Game.FireworksTrailParticleSystem