.class public auto ansi beforefieldinit Game.SoundParticleSystem
       extends class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public float32 TimeToLive
    .field public valuetype [Engine]Engine.Vector3 Velocity
    .field public valuetype [Engine]Engine.Color BaseColor
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
  .field private valuetype [Engine]Engine.Vector3 m_position
  .field private valuetype [Engine]Engine.Vector3 m_direction
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain terrain,
                               valuetype [Engine]Engine.Vector3 position,
                               valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SoundParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   15
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldarg.2
    IL_0015:  stfld      valuetype [Engine]Engine.Vector3 Game.SoundParticleSystem::m_position
    IL_001a:  ldarg.0
    IL_001b:  ldarg.3
    IL_001c:  stfld      valuetype [Engine]Engine.Vector3 Game.SoundParticleSystem::m_direction
    IL_0021:  ldarg.0
    IL_0022:  ldstr      "Textures/SoundParticle"
    IL_0027:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_002c:  call       instance void class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0031:  ldarg.0
    IL_0032:  ldc.i4.2
    IL_0033:  call       instance void class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_0038:  ldarg.0
    IL_0039:  ldc.i4.1
    IL_003a:  call       instance void class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::set_UseVerticalBillboarding(bool)
    IL_003f:  ret
  } // end of method SoundParticleSystem::.ctor

  .method public hidebysig instance void 
          AddNote(valuetype [Engine]Engine.Color color) cil managed
  {
    // 代码大小       211 (0xd3)
    .maxstack  6
    .locals init (int32 V_0,
             class Game.SoundParticleSystem/Particle V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_00c4

    IL_0007:  ldarg.0
    IL_0008:  call       instance !0[] class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::get_Particles()
    IL_000d:  ldloc.0
    IL_000e:  ldelem.ref
    IL_000f:  stloc.1
    IL_0010:  ldarg.0
    IL_0011:  call       instance !0[] class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::get_Particles()
    IL_0016:  ldloc.0
    IL_0017:  ldelem.ref
    IL_0018:  ldfld      bool Game.Particle::IsActive
    IL_001d:  brtrue     IL_00c0

    IL_0022:  ldloc.1
    IL_0023:  ldc.i4.1
    IL_0024:  stfld      bool Game.Particle::IsActive
    IL_0029:  ldloc.1
    IL_002a:  ldarg.0
    IL_002b:  ldfld      valuetype [Engine]Engine.Vector3 Game.SoundParticleSystem::m_position
    IL_0030:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0035:  ldloc.1
    IL_0036:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_003b:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0040:  ldloc.1
    IL_0041:  ldc.r4     0.1
    IL_0046:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_004b:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0050:  ldloc.1
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.Random Game.SoundParticleSystem::m_random
    IL_0057:  ldc.r4     1.
    IL_005c:  ldc.r4     1.5
    IL_0061:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0066:  stfld      float32 Game.SoundParticleSystem/Particle::TimeToLive
    IL_006b:  ldloc.1
    IL_006c:  ldc.r4     3.
    IL_0071:  ldarg.0
    IL_0072:  ldfld      valuetype [Engine]Engine.Vector3 Game.SoundParticleSystem::m_direction
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.Random Game.SoundParticleSystem::m_random
    IL_007d:  ldc.r4     0.5
    IL_0082:  ldc.i4.1
    IL_0083:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_0088:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_008d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0092:  stfld      valuetype [Engine]Engine.Vector3 Game.SoundParticleSystem/Particle::Velocity
    IL_0097:  ldloc.1
    IL_0098:  ldarg.1
    IL_0099:  stfld      valuetype [Engine]Engine.Color Game.SoundParticleSystem/Particle::BaseColor
    IL_009e:  ldloc.1
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.Random Game.SoundParticleSystem::m_random
    IL_00a5:  ldc.i4.0
    IL_00a6:  ldarg.0
    IL_00a7:  call       instance int32 class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::get_TextureSlotsCount()
    IL_00ac:  ldarg.0
    IL_00ad:  call       instance int32 class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::get_TextureSlotsCount()
    IL_00b2:  mul
    IL_00b3:  ldc.i4.1
    IL_00b4:  sub
    IL_00b5:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00ba:  stfld      int32 Game.Particle::TextureSlot
    IL_00bf:  ret

    IL_00c0:  ldloc.0
    IL_00c1:  ldc.i4.1
    IL_00c2:  add
    IL_00c3:  stloc.0
    IL_00c4:  ldloc.0
    IL_00c5:  ldarg.0
    IL_00c6:  call       instance !0[] class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::get_Particles()
    IL_00cb:  ldlen
    IL_00cc:  conv.i4
    IL_00cd:  blt        IL_0007

    IL_00d2:  ret
  } // end of method SoundParticleSystem::AddNote

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
  {
    // 代码大小       244 (0xf4)
    .maxstack  5
    .locals init (float32 V_0,
             bool V_1,
             int32 V_2,
             class Game.SoundParticleSystem/Particle V_3)
    IL_0000:  ldarg.2
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     0.1
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0010:  starg.s    dt
    IL_0012:  ldc.r4     2.e-002
    IL_0017:  ldarg.2
    IL_0018:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_001d:  stloc.0
    IL_001e:  ldc.i4.0
    IL_001f:  stloc.1
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.2
    IL_0022:  br         IL_00e1

    IL_0027:  ldarg.0
    IL_0028:  call       instance !0[] class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::get_Particles()
    IL_002d:  ldloc.2
    IL_002e:  ldelem.ref
    IL_002f:  stloc.3
    IL_0030:  ldloc.3
    IL_0031:  ldfld      bool Game.Particle::IsActive
    IL_0036:  brfalse    IL_00dd

    IL_003b:  ldc.i4.1
    IL_003c:  stloc.1
    IL_003d:  ldloc.3
    IL_003e:  dup
    IL_003f:  ldfld      float32 Game.SoundParticleSystem/Particle::TimeToLive
    IL_0044:  ldarg.2
    IL_0045:  sub
    IL_0046:  stfld      float32 Game.SoundParticleSystem/Particle::TimeToLive
    IL_004b:  ldloc.3
    IL_004c:  ldfld      float32 Game.SoundParticleSystem/Particle::TimeToLive
    IL_0051:  ldc.r4     0.0
    IL_0056:  ble.un.s   IL_00d6

    IL_0058:  ldloc.3
    IL_0059:  dup
    IL_005a:  ldfld      valuetype [Engine]Engine.Vector3 Game.SoundParticleSystem/Particle::Velocity
    IL_005f:  ldc.r4     0.0
    IL_0064:  ldc.r4     5.
    IL_0069:  ldc.r4     0.0
    IL_006e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0073:  ldarg.2
    IL_0074:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0079:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007e:  stfld      valuetype [Engine]Engine.Vector3 Game.SoundParticleSystem/Particle::Velocity
    IL_0083:  ldloc.3
    IL_0084:  dup
    IL_0085:  ldfld      valuetype [Engine]Engine.Vector3 Game.SoundParticleSystem/Particle::Velocity
    IL_008a:  ldloc.0
    IL_008b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0090:  stfld      valuetype [Engine]Engine.Vector3 Game.SoundParticleSystem/Particle::Velocity
    IL_0095:  ldloc.3
    IL_0096:  dup
    IL_0097:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_009c:  ldloc.3
    IL_009d:  ldfld      valuetype [Engine]Engine.Vector3 Game.SoundParticleSystem/Particle::Velocity
    IL_00a2:  ldarg.2
    IL_00a3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00a8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ad:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_00b2:  ldloc.3
    IL_00b3:  ldloc.3
    IL_00b4:  ldfld      valuetype [Engine]Engine.Color Game.SoundParticleSystem/Particle::BaseColor
    IL_00b9:  ldc.r4     2.
    IL_00be:  ldloc.3
    IL_00bf:  ldfld      float32 Game.SoundParticleSystem/Particle::TimeToLive
    IL_00c4:  mul
    IL_00c5:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00ca:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00cf:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_00d4:  br.s       IL_00dd

    IL_00d6:  ldloc.3
    IL_00d7:  ldc.i4.0
    IL_00d8:  stfld      bool Game.Particle::IsActive
    IL_00dd:  ldloc.2
    IL_00de:  ldc.i4.1
    IL_00df:  add
    IL_00e0:  stloc.2
    IL_00e1:  ldloc.2
    IL_00e2:  ldarg.0
    IL_00e3:  call       instance !0[] class Game.ParticleSystem`1<class Game.SoundParticleSystem/Particle>::get_Particles()
    IL_00e8:  ldlen
    IL_00e9:  conv.i4
    IL_00ea:  blt        IL_0027

    IL_00ef:  ldloc.1
    IL_00f0:  ldc.i4.0
    IL_00f1:  ceq
    IL_00f3:  ret
  } // end of method SoundParticleSystem::Simulate

} // end of class Game.SoundParticleSystem