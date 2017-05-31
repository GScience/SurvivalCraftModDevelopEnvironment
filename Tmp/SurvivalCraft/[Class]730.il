.class public auto ansi beforefieldinit Game.SmokeTrailParticleSystem
       extends class Game.ParticleSystem`1<class Game.SmokeTrailParticleSystem/Particle>
       implements Game.ITrailParticleSystem
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public float32 Time
    .field public float32 Duration
    .field public valuetype [Engine]Engine.Vector3 Velocity
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
  .field private float32 m_textureSlotMultiplier
  .field private float32 m_textureSlotOffset
  .field private float32 m_duration
  .field private float32 m_size
  .field private float32 m_maxDuration
  .field private valuetype [Engine]Engine.Color m_color
  .field private valuetype [Engine]Engine.Vector3 '<Position>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsStopped>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 particlesCount,
                               float32 size,
                               float32 maxDuration,
                               valuetype [Engine]Engine.Color color) cil managed
  {
    // 代码大小       130 (0x82)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SmokeTrailParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  call       instance void class Game.ParticleSystem`1<class Game.SmokeTrailParticleSystem/Particle>::.ctor(int32)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.2
    IL_0014:  stfld      float32 Game.SmokeTrailParticleSystem::m_size
    IL_0019:  ldarg.0
    IL_001a:  ldarg.3
    IL_001b:  stfld      float32 Game.SmokeTrailParticleSystem::m_maxDuration
    IL_0020:  ldarg.0
    IL_0021:  ldstr      "Textures/FireParticle"
    IL_0026:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_002b:  call       instance void class Game.ParticleSystem`1<class Game.SmokeTrailParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4.3
    IL_0032:  call       instance void class Game.ParticleSystem`1<class Game.SmokeTrailParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.Random Game.SmokeTrailParticleSystem::m_random
    IL_003e:  ldc.r4     1.1
    IL_0043:  ldc.r4     1.9
    IL_0048:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004d:  stfld      float32 Game.SmokeTrailParticleSystem::m_textureSlotMultiplier
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.Random Game.SmokeTrailParticleSystem::m_random
    IL_0059:  ldc.r4     0.0
    IL_005e:  ldc.r4     1.
    IL_0063:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0068:  ldc.r4     0.33000001
    IL_006d:  blt.s      IL_0072

    IL_006f:  ldc.i4.0
    IL_0070:  br.s       IL_0073

    IL_0072:  ldc.i4.3
    IL_0073:  conv.r4
    IL_0074:  stfld      float32 Game.SmokeTrailParticleSystem::m_textureSlotOffset
    IL_0079:  ldarg.0
    IL_007a:  ldarg.s    color
    IL_007c:  stfld      valuetype [Engine]Engine.Color Game.SmokeTrailParticleSystem::m_color
    IL_0081:  ret
  } // end of method SmokeTrailParticleSystem::.ctor

  .method public hidebysig newslot specialname virtual final 
          instance valuetype [Engine]Engine.Vector3 
          get_Position() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.SmokeTrailParticleSystem::'<Position>k__BackingField'
    IL_0006:  ret
  } // end of method SmokeTrailParticleSystem::get_Position

  .method public hidebysig newslot specialname virtual final 
          instance void  set_Position(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.SmokeTrailParticleSystem::'<Position>k__BackingField'
    IL_0007:  ret
  } // end of method SmokeTrailParticleSystem::set_Position

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_IsStopped() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SmokeTrailParticleSystem::'<IsStopped>k__BackingField'
    IL_0006:  ret
  } // end of method SmokeTrailParticleSystem::get_IsStopped

  .method public hidebysig newslot specialname virtual final 
          instance void  set_IsStopped(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.SmokeTrailParticleSystem::'<IsStopped>k__BackingField'
    IL_0007:  ret
  } // end of method SmokeTrailParticleSystem::set_IsStopped

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
  {
    // 代码大小       678 (0x2a6)
    .maxstack  6
    .locals init (float32 V_0,
             float32 V_1,
             bool V_2,
             int32 V_3,
             class Game.SmokeTrailParticleSystem/Particle V_4,
             valuetype [Engine]Engine.Vector3 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.SmokeTrailParticleSystem::m_duration
    IL_0007:  ldarg.2
    IL_0008:  add
    IL_0009:  stfld      float32 Game.SmokeTrailParticleSystem::m_duration
    IL_000e:  ldarg.0
    IL_000f:  ldfld      float32 Game.SmokeTrailParticleSystem::m_duration
    IL_0014:  ldarg.0
    IL_0015:  ldfld      float32 Game.SmokeTrailParticleSystem::m_maxDuration
    IL_001a:  ble.un.s   IL_0023

    IL_001c:  ldarg.0
    IL_001d:  ldc.i4.1
    IL_001e:  call       instance void Game.SmokeTrailParticleSystem::set_IsStopped(bool)
    IL_0023:  ldc.r4     50.
    IL_0028:  ldarg.0
    IL_0029:  ldfld      float32 Game.SmokeTrailParticleSystem::m_size
    IL_002e:  div
    IL_002f:  ldc.r4     10.
    IL_0034:  ldc.r4     40.
    IL_0039:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_003e:  stloc.0
    IL_003f:  ldarg.0
    IL_0040:  ldarg.0
    IL_0041:  ldfld      float32 Game.SmokeTrailParticleSystem::m_toGenerate
    IL_0046:  ldloc.0
    IL_0047:  ldarg.2
    IL_0048:  mul
    IL_0049:  add
    IL_004a:  stfld      float32 Game.SmokeTrailParticleSystem::m_toGenerate
    IL_004f:  ldc.r4     0.1
    IL_0054:  ldarg.2
    IL_0055:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_005a:  stloc.1
    IL_005b:  ldc.i4.0
    IL_005c:  stloc.2
    IL_005d:  ldc.i4.0
    IL_005e:  stloc.3
    IL_005f:  br         IL_0289

    IL_0064:  ldarg.0
    IL_0065:  call       instance !0[] class Game.ParticleSystem`1<class Game.SmokeTrailParticleSystem/Particle>::get_Particles()
    IL_006a:  ldloc.3
    IL_006b:  ldelem.ref
    IL_006c:  stloc.s    V_4
    IL_006e:  ldloc.s    V_4
    IL_0070:  ldfld      bool Game.Particle::IsActive
    IL_0075:  brfalse    IL_015c

    IL_007a:  ldc.i4.1
    IL_007b:  stloc.2
    IL_007c:  ldloc.s    V_4
    IL_007e:  dup
    IL_007f:  ldfld      float32 Game.SmokeTrailParticleSystem/Particle::Time
    IL_0084:  ldarg.2
    IL_0085:  add
    IL_0086:  stfld      float32 Game.SmokeTrailParticleSystem/Particle::Time
    IL_008b:  ldloc.s    V_4
    IL_008d:  ldfld      float32 Game.SmokeTrailParticleSystem/Particle::Time
    IL_0092:  ldloc.s    V_4
    IL_0094:  ldfld      float32 Game.SmokeTrailParticleSystem/Particle::Duration
    IL_0099:  bgt.un     IL_014f

    IL_009e:  ldloc.s    V_4
    IL_00a0:  dup
    IL_00a1:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_00a6:  ldloc.s    V_4
    IL_00a8:  ldfld      valuetype [Engine]Engine.Vector3 Game.SmokeTrailParticleSystem/Particle::Velocity
    IL_00ad:  ldarg.2
    IL_00ae:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00b3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b8:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_00bd:  ldloc.s    V_4
    IL_00bf:  dup
    IL_00c0:  ldfld      valuetype [Engine]Engine.Vector3 Game.SmokeTrailParticleSystem/Particle::Velocity
    IL_00c5:  ldloc.1
    IL_00c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00cb:  stfld      valuetype [Engine]Engine.Vector3 Game.SmokeTrailParticleSystem/Particle::Velocity
    IL_00d0:  ldloc.s    V_4
    IL_00d2:  ldflda     valuetype [Engine]Engine.Vector3 Game.SmokeTrailParticleSystem/Particle::Velocity
    IL_00d7:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_00dc:  dup
    IL_00dd:  ldind.r4
    IL_00de:  ldc.r4     10.
    IL_00e3:  ldarg.2
    IL_00e4:  mul
    IL_00e5:  add
    IL_00e6:  stind.r4
    IL_00e7:  ldloc.s    V_4
    IL_00e9:  ldc.r4     9.
    IL_00ee:  ldloc.s    V_4
    IL_00f0:  ldfld      float32 Game.SmokeTrailParticleSystem/Particle::Time
    IL_00f5:  mul
    IL_00f6:  ldloc.s    V_4
    IL_00f8:  ldfld      float32 Game.SmokeTrailParticleSystem/Particle::Duration
    IL_00fd:  div
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      float32 Game.SmokeTrailParticleSystem::m_textureSlotMultiplier
    IL_0104:  mul
    IL_0105:  ldarg.0
    IL_0106:  ldfld      float32 Game.SmokeTrailParticleSystem::m_textureSlotOffset
    IL_010b:  add
    IL_010c:  ldc.r4     8.
    IL_0111:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0116:  conv.i4
    IL_0117:  stfld      int32 Game.Particle::TextureSlot
    IL_011c:  ldloc.s    V_4
    IL_011e:  ldarg.0
    IL_011f:  ldfld      float32 Game.SmokeTrailParticleSystem::m_size
    IL_0124:  ldc.r4     0.15000001
    IL_0129:  ldc.r4     0.80000001
    IL_012e:  ldloc.s    V_4
    IL_0130:  ldfld      float32 Game.SmokeTrailParticleSystem/Particle::Time
    IL_0135:  mul
    IL_0136:  ldloc.s    V_4
    IL_0138:  ldfld      float32 Game.SmokeTrailParticleSystem/Particle::Duration
    IL_013d:  div
    IL_013e:  add
    IL_013f:  mul
    IL_0140:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0145:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_014a:  br         IL_0285

    IL_014f:  ldloc.s    V_4
    IL_0151:  ldc.i4.0
    IL_0152:  stfld      bool Game.Particle::IsActive
    IL_0157:  br         IL_0285

    IL_015c:  ldarg.0
    IL_015d:  call       instance bool Game.SmokeTrailParticleSystem::get_IsStopped()
    IL_0162:  brtrue     IL_0285

    IL_0167:  ldarg.0
    IL_0168:  ldfld      float32 Game.SmokeTrailParticleSystem::m_toGenerate
    IL_016d:  ldc.r4     1.
    IL_0172:  blt.un     IL_0285

    IL_0177:  ldloc.s    V_4
    IL_0179:  ldc.i4.1
    IL_017a:  stfld      bool Game.Particle::IsActive
    IL_017f:  ldloca.s   V_5
    IL_0181:  ldarg.0
    IL_0182:  ldfld      class Game.Random Game.SmokeTrailParticleSystem::m_random
    IL_0187:  ldc.r4     -1.
    IL_018c:  ldc.r4     1.
    IL_0191:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0196:  ldarg.0
    IL_0197:  ldfld      class Game.Random Game.SmokeTrailParticleSystem::m_random
    IL_019c:  ldc.r4     -1.
    IL_01a1:  ldc.r4     1.
    IL_01a6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01ab:  ldarg.0
    IL_01ac:  ldfld      class Game.Random Game.SmokeTrailParticleSystem::m_random
    IL_01b1:  ldc.r4     -1.
    IL_01b6:  ldc.r4     1.
    IL_01bb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01c0:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01c5:  ldloc.s    V_4
    IL_01c7:  ldarg.0
    IL_01c8:  call       instance valuetype [Engine]Engine.Vector3 Game.SmokeTrailParticleSystem::get_Position()
    IL_01cd:  ldc.r4     2.5e-002
    IL_01d2:  ldloc.s    V_5
    IL_01d4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01d9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01de:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01e3:  ldloc.s    V_4
    IL_01e5:  ldarg.0
    IL_01e6:  ldfld      valuetype [Engine]Engine.Color Game.SmokeTrailParticleSystem::m_color
    IL_01eb:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01f0:  ldloc.s    V_4
    IL_01f2:  ldc.r4     0.2
    IL_01f7:  ldloc.s    V_5
    IL_01f9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01fe:  stfld      valuetype [Engine]Engine.Vector3 Game.SmokeTrailParticleSystem/Particle::Velocity
    IL_0203:  ldloc.s    V_4
    IL_0205:  ldc.r4     0.0
    IL_020a:  stfld      float32 Game.SmokeTrailParticleSystem/Particle::Time
    IL_020f:  ldloc.s    V_4
    IL_0211:  ldc.r4     0.15000001
    IL_0216:  ldarg.0
    IL_0217:  ldfld      float32 Game.SmokeTrailParticleSystem::m_size
    IL_021c:  mul
    IL_021d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0222:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0227:  ldloc.s    V_4
    IL_0229:  ldarg.0
    IL_022a:  call       instance !0[] class Game.ParticleSystem`1<class Game.SmokeTrailParticleSystem/Particle>::get_Particles()
    IL_022f:  ldlen
    IL_0230:  conv.i4
    IL_0231:  conv.r4
    IL_0232:  ldloc.0
    IL_0233:  div
    IL_0234:  ldarg.0
    IL_0235:  ldfld      class Game.Random Game.SmokeTrailParticleSystem::m_random
    IL_023a:  ldc.r4     0.80000001
    IL_023f:  ldc.r4     1.05
    IL_0244:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0249:  mul
    IL_024a:  stfld      float32 Game.SmokeTrailParticleSystem/Particle::Duration
    IL_024f:  ldloc.s    V_4
    IL_0251:  ldarg.0
    IL_0252:  ldfld      class Game.Random Game.SmokeTrailParticleSystem::m_random
    IL_0257:  callvirt   instance bool Game.Random::Bool()
    IL_025c:  stfld      bool Game.Particle::FlipX
    IL_0261:  ldloc.s    V_4
    IL_0263:  ldarg.0
    IL_0264:  ldfld      class Game.Random Game.SmokeTrailParticleSystem::m_random
    IL_0269:  callvirt   instance bool Game.Random::Bool()
    IL_026e:  stfld      bool Game.Particle::FlipY
    IL_0273:  ldarg.0
    IL_0274:  ldarg.0
    IL_0275:  ldfld      float32 Game.SmokeTrailParticleSystem::m_toGenerate
    IL_027a:  ldc.r4     1.
    IL_027f:  sub
    IL_0280:  stfld      float32 Game.SmokeTrailParticleSystem::m_toGenerate
    IL_0285:  ldloc.3
    IL_0286:  ldc.i4.1
    IL_0287:  add
    IL_0288:  stloc.3
    IL_0289:  ldloc.3
    IL_028a:  ldarg.0
    IL_028b:  call       instance !0[] class Game.ParticleSystem`1<class Game.SmokeTrailParticleSystem/Particle>::get_Particles()
    IL_0290:  ldlen
    IL_0291:  conv.i4
    IL_0292:  blt        IL_0064

    IL_0297:  ldarg.0
    IL_0298:  call       instance bool Game.SmokeTrailParticleSystem::get_IsStopped()
    IL_029d:  brfalse.s  IL_02a4

    IL_029f:  ldloc.2
    IL_02a0:  ldc.i4.0
    IL_02a1:  ceq
    IL_02a3:  ret

    IL_02a4:  ldc.i4.0
    IL_02a5:  ret
  } // end of method SmokeTrailParticleSystem::Simulate

  .property instance valuetype [Engine]Engine.Vector3
          Position()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.SmokeTrailParticleSystem::get_Position()
    .set instance void Game.SmokeTrailParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
  } // end of property SmokeTrailParticleSystem::Position
  .property instance bool IsStopped()
  {
    .get instance bool Game.SmokeTrailParticleSystem::get_IsStopped()
    .set instance void Game.SmokeTrailParticleSystem::set_IsStopped(bool)
  } // end of property SmokeTrailParticleSystem::IsStopped
} // end of class Game.SmokeTrailParticleSystem