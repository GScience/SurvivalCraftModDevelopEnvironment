.class public auto ansi beforefieldinit Game.WhalePlumeParticleSystem
       extends class Game.ParticleSystem`1<class Game.WhalePlumeParticleSystem/Particle>
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public valuetype [Engine]Engine.Vector3 Velocity
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
  .field private float32 m_time
  .field private float32 m_duration
  .field private float32 m_size
  .field private float32 m_toGenerate
  .field private bool '<IsStopped>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<Position>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain terrain,
                               float32 size,
                               float32 duration) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.WhalePlumeParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   100
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.WhalePlumeParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldstr      "Textures/WaterSplashParticle"
    IL_0019:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_001e:  call       instance void class Game.ParticleSystem`1<class Game.WhalePlumeParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.2
    IL_0025:  call       instance void class Game.ParticleSystem`1<class Game.WhalePlumeParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_002a:  ldarg.0
    IL_002b:  ldarg.2
    IL_002c:  stfld      float32 Game.WhalePlumeParticleSystem::m_size
    IL_0031:  ldarg.0
    IL_0032:  ldarg.3
    IL_0033:  stfld      float32 Game.WhalePlumeParticleSystem::m_duration
    IL_0038:  ret
  } // end of method WhalePlumeParticleSystem::.ctor

  .method public hidebysig specialname instance bool 
          get_IsStopped() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WhalePlumeParticleSystem::'<IsStopped>k__BackingField'
    IL_0006:  ret
  } // end of method WhalePlumeParticleSystem::get_IsStopped

  .method public hidebysig specialname instance void 
          set_IsStopped(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WhalePlumeParticleSystem::'<IsStopped>k__BackingField'
    IL_0007:  ret
  } // end of method WhalePlumeParticleSystem::set_IsStopped

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_Position() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.WhalePlumeParticleSystem::'<Position>k__BackingField'
    IL_0006:  ret
  } // end of method WhalePlumeParticleSystem::get_Position

  .method public hidebysig specialname instance void 
          set_Position(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.WhalePlumeParticleSystem::'<Position>k__BackingField'
    IL_0007:  ret
  } // end of method WhalePlumeParticleSystem::set_Position

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       833 (0x341)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             bool V_3,
             int32 V_4,
             class Game.WhalePlumeParticleSystem/Particle V_5,
             valuetype [Engine]Engine.Vector3 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.WhalePlumeParticleSystem::m_time
    IL_0007:  ldarg.1
    IL_0008:  add
    IL_0009:  stfld      float32 Game.WhalePlumeParticleSystem::m_time
    IL_000e:  ldarg.0
    IL_000f:  ldfld      float32 Game.WhalePlumeParticleSystem::m_time
    IL_0014:  ldarg.0
    IL_0015:  ldfld      float32 Game.WhalePlumeParticleSystem::m_duration
    IL_001a:  bge.un.s   IL_003a

    IL_001c:  ldarg.0
    IL_001d:  call       instance bool Game.WhalePlumeParticleSystem::get_IsStopped()
    IL_0022:  brtrue.s   IL_003a

    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      float32 Game.WhalePlumeParticleSystem::m_toGenerate
    IL_002b:  ldc.r4     60.
    IL_0030:  ldarg.1
    IL_0031:  mul
    IL_0032:  add
    IL_0033:  stfld      float32 Game.WhalePlumeParticleSystem::m_toGenerate
    IL_0038:  br.s       IL_0045

    IL_003a:  ldarg.0
    IL_003b:  ldc.r4     0.0
    IL_0040:  stfld      float32 Game.WhalePlumeParticleSystem::m_toGenerate
    IL_0045:  ldc.r4     1.e-003
    IL_004a:  ldarg.1
    IL_004b:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0050:  stloc.0
    IL_0051:  ldc.r4     4.
    IL_0056:  ldc.r4     10.
    IL_005b:  ldc.r4     2.
    IL_0060:  ldarg.0
    IL_0061:  ldfld      float32 Game.WhalePlumeParticleSystem::m_time
    IL_0066:  mul
    IL_0067:  ldarg.0
    IL_0068:  ldfld      float32 Game.WhalePlumeParticleSystem::m_duration
    IL_006d:  div
    IL_006e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0073:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0078:  stloc.1
    IL_0079:  ldloca.s   V_2
    IL_007b:  ldc.r4     0.0
    IL_0080:  ldc.r4     1.
    IL_0085:  ldc.r4     2.
    IL_008a:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_008f:  ldc.i4.0
    IL_0090:  stloc.3
    IL_0091:  ldc.i4.0
    IL_0092:  stloc.s    V_4
    IL_0094:  br         IL_02ff

    IL_0099:  ldarg.0
    IL_009a:  call       instance !0[] class Game.ParticleSystem`1<class Game.WhalePlumeParticleSystem/Particle>::get_Particles()
    IL_009f:  ldloc.s    V_4
    IL_00a1:  ldelem.ref
    IL_00a2:  stloc.s    V_5
    IL_00a4:  ldloc.s    V_5
    IL_00a6:  ldfld      bool Game.Particle::IsActive
    IL_00ab:  brfalse    IL_0193

    IL_00b0:  ldc.i4.1
    IL_00b1:  stloc.3
    IL_00b2:  ldloc.s    V_5
    IL_00b4:  dup
    IL_00b5:  ldfld      float32 Game.WhalePlumeParticleSystem/Particle::Time
    IL_00ba:  ldarg.1
    IL_00bb:  add
    IL_00bc:  stfld      float32 Game.WhalePlumeParticleSystem/Particle::Time
    IL_00c1:  ldloc.s    V_5
    IL_00c3:  ldfld      float32 Game.WhalePlumeParticleSystem/Particle::Time
    IL_00c8:  ldloc.s    V_5
    IL_00ca:  ldfld      float32 Game.WhalePlumeParticleSystem/Particle::Duration
    IL_00cf:  bgt.un     IL_0186

    IL_00d4:  ldloc.s    V_5
    IL_00d6:  dup
    IL_00d7:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_00dc:  ldloc.s    V_5
    IL_00de:  ldfld      valuetype [Engine]Engine.Vector3 Game.WhalePlumeParticleSystem/Particle::Velocity
    IL_00e3:  ldarg.1
    IL_00e4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00e9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ee:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_00f3:  ldloc.s    V_5
    IL_00f5:  dup
    IL_00f6:  ldfld      valuetype [Engine]Engine.Vector3 Game.WhalePlumeParticleSystem/Particle::Velocity
    IL_00fb:  ldloc.0
    IL_00fc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0101:  stfld      valuetype [Engine]Engine.Vector3 Game.WhalePlumeParticleSystem/Particle::Velocity
    IL_0106:  ldloc.s    V_5
    IL_0108:  dup
    IL_0109:  ldfld      valuetype [Engine]Engine.Vector3 Game.WhalePlumeParticleSystem/Particle::Velocity
    IL_010e:  ldloc.2
    IL_010f:  ldarg.1
    IL_0110:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0115:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011a:  stfld      valuetype [Engine]Engine.Vector3 Game.WhalePlumeParticleSystem/Particle::Velocity
    IL_011f:  ldloc.s    V_5
    IL_0121:  ldc.r4     4.
    IL_0126:  ldloc.s    V_5
    IL_0128:  ldfld      float32 Game.WhalePlumeParticleSystem/Particle::Time
    IL_012d:  mul
    IL_012e:  ldloc.s    V_5
    IL_0130:  ldfld      float32 Game.WhalePlumeParticleSystem/Particle::Duration
    IL_0135:  div
    IL_0136:  ldc.r4     1.2
    IL_013b:  mul
    IL_013c:  ldc.r4     3.
    IL_0141:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0146:  conv.i4
    IL_0147:  stfld      int32 Game.Particle::TextureSlot
    IL_014c:  ldloc.s    V_5
    IL_014e:  ldarg.0
    IL_014f:  ldfld      float32 Game.WhalePlumeParticleSystem::m_size
    IL_0154:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0159:  ldc.r4     0.1
    IL_015e:  ldc.r4     0.2
    IL_0163:  ldloc.s    V_5
    IL_0165:  ldfld      float32 Game.WhalePlumeParticleSystem/Particle::Time
    IL_016a:  ldloc.s    V_5
    IL_016c:  ldfld      float32 Game.WhalePlumeParticleSystem/Particle::Duration
    IL_0171:  div
    IL_0172:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0177:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_017c:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0181:  br         IL_02f9

    IL_0186:  ldloc.s    V_5
    IL_0188:  ldc.i4.0
    IL_0189:  stfld      bool Game.Particle::IsActive
    IL_018e:  br         IL_02f9

    IL_0193:  ldarg.0
    IL_0194:  ldfld      float32 Game.WhalePlumeParticleSystem::m_toGenerate
    IL_0199:  ldc.r4     1.
    IL_019e:  blt.un     IL_02f9

    IL_01a3:  ldloc.s    V_5
    IL_01a5:  ldc.i4.1
    IL_01a6:  stfld      bool Game.Particle::IsActive
    IL_01ab:  ldc.r4     0.1
    IL_01b0:  ldarg.0
    IL_01b1:  ldfld      float32 Game.WhalePlumeParticleSystem::m_size
    IL_01b6:  mul
    IL_01b7:  ldarg.0
    IL_01b8:  ldfld      class Game.Random Game.WhalePlumeParticleSystem::m_random
    IL_01bd:  ldc.r4     -1.
    IL_01c2:  ldc.r4     1.
    IL_01c7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01cc:  ldarg.0
    IL_01cd:  ldfld      class Game.Random Game.WhalePlumeParticleSystem::m_random
    IL_01d2:  ldc.r4     0.0
    IL_01d7:  ldc.r4     2.
    IL_01dc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      class Game.Random Game.WhalePlumeParticleSystem::m_random
    IL_01e7:  ldc.r4     -1.
    IL_01ec:  ldc.r4     1.
    IL_01f1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01f6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01fb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0200:  stloc.s    V_6
    IL_0202:  ldloc.s    V_5
    IL_0204:  ldarg.0
    IL_0205:  call       instance valuetype [Engine]Engine.Vector3 Game.WhalePlumeParticleSystem::get_Position()
    IL_020a:  ldloc.s    V_6
    IL_020c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0211:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0216:  ldloc.s    V_5
    IL_0218:  ldc.i4     0xc8
    IL_021d:  ldc.i4     0xdc
    IL_0222:  ldc.i4     0xd2
    IL_0227:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_022c:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0231:  ldloc.s    V_5
    IL_0233:  ldc.r4     1.
    IL_0238:  ldarg.0
    IL_0239:  ldfld      float32 Game.WhalePlumeParticleSystem::m_size
    IL_023e:  mul
    IL_023f:  ldarg.0
    IL_0240:  ldfld      class Game.Random Game.WhalePlumeParticleSystem::m_random
    IL_0245:  ldc.r4     -1.
    IL_024a:  ldc.r4     1.
    IL_024f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0254:  ldloc.1
    IL_0255:  ldarg.0
    IL_0256:  ldfld      class Game.Random Game.WhalePlumeParticleSystem::m_random
    IL_025b:  ldc.r4     0.30000001
    IL_0260:  ldc.r4     1.
    IL_0265:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_026a:  mul
    IL_026b:  ldarg.0
    IL_026c:  ldfld      class Game.Random Game.WhalePlumeParticleSystem::m_random
    IL_0271:  ldc.r4     -1.
    IL_0276:  ldc.r4     1.
    IL_027b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0280:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0285:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_028a:  stfld      valuetype [Engine]Engine.Vector3 Game.WhalePlumeParticleSystem/Particle::Velocity
    IL_028f:  ldloc.s    V_5
    IL_0291:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0296:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_029b:  ldloc.s    V_5
    IL_029d:  ldc.r4     0.0
    IL_02a2:  stfld      float32 Game.WhalePlumeParticleSystem/Particle::Time
    IL_02a7:  ldloc.s    V_5
    IL_02a9:  ldarg.0
    IL_02aa:  ldfld      class Game.Random Game.WhalePlumeParticleSystem::m_random
    IL_02af:  ldc.r4     1.
    IL_02b4:  ldc.r4     3.
    IL_02b9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02be:  stfld      float32 Game.WhalePlumeParticleSystem/Particle::Duration
    IL_02c3:  ldloc.s    V_5
    IL_02c5:  ldarg.0
    IL_02c6:  ldfld      class Game.Random Game.WhalePlumeParticleSystem::m_random
    IL_02cb:  callvirt   instance bool Game.Random::Bool()
    IL_02d0:  stfld      bool Game.Particle::FlipX
    IL_02d5:  ldloc.s    V_5
    IL_02d7:  ldarg.0
    IL_02d8:  ldfld      class Game.Random Game.WhalePlumeParticleSystem::m_random
    IL_02dd:  callvirt   instance bool Game.Random::Bool()
    IL_02e2:  stfld      bool Game.Particle::FlipY
    IL_02e7:  ldarg.0
    IL_02e8:  ldarg.0
    IL_02e9:  ldfld      float32 Game.WhalePlumeParticleSystem::m_toGenerate
    IL_02ee:  ldc.r4     1.
    IL_02f3:  sub
    IL_02f4:  stfld      float32 Game.WhalePlumeParticleSystem::m_toGenerate
    IL_02f9:  ldloc.s    V_4
    IL_02fb:  ldc.i4.1
    IL_02fc:  add
    IL_02fd:  stloc.s    V_4
    IL_02ff:  ldloc.s    V_4
    IL_0301:  ldarg.0
    IL_0302:  call       instance !0[] class Game.ParticleSystem`1<class Game.WhalePlumeParticleSystem/Particle>::get_Particles()
    IL_0307:  ldlen
    IL_0308:  conv.i4
    IL_0309:  blt        IL_0099

    IL_030e:  ldarg.0
    IL_030f:  ldarg.0
    IL_0310:  ldfld      float32 Game.WhalePlumeParticleSystem::m_toGenerate
    IL_0315:  ldc.r4     1.
    IL_031a:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_031f:  stfld      float32 Game.WhalePlumeParticleSystem::m_toGenerate
    IL_0324:  ldloc.3
    IL_0325:  brtrue.s   IL_033f

    IL_0327:  ldarg.0
    IL_0328:  ldfld      float32 Game.WhalePlumeParticleSystem::m_time
    IL_032d:  ldarg.0
    IL_032e:  ldfld      float32 Game.WhalePlumeParticleSystem::m_duration
    IL_0333:  bge.s      IL_033d

    IL_0335:  ldarg.0
    IL_0336:  call       instance bool Game.WhalePlumeParticleSystem::get_IsStopped()
    IL_033b:  brfalse.s  IL_033f

    IL_033d:  ldc.i4.1
    IL_033e:  ret

    IL_033f:  ldc.i4.0
    IL_0340:  ret
  } // end of method WhalePlumeParticleSystem::Simulate

  .property instance bool IsStopped()
  {
    .get instance bool Game.WhalePlumeParticleSystem::get_IsStopped()
    .set instance void Game.WhalePlumeParticleSystem::set_IsStopped(bool)
  } // end of property WhalePlumeParticleSystem::IsStopped
  .property instance valuetype [Engine]Engine.Vector3
          Position()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.WhalePlumeParticleSystem::get_Position()
    .set instance void Game.WhalePlumeParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
  } // end of property WhalePlumeParticleSystem::Position
} // end of class Game.WhalePlumeParticleSystem