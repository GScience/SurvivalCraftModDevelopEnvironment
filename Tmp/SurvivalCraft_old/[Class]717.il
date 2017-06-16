.class public auto ansi beforefieldinit Game.FireworksParticleSystem
       extends class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public valuetype [Engine]Engine.Vector3 Velocity
    .field public float32 TimeToLive
    .field public float32 FadeRate
    .field public valuetype [Engine]Engine.Color BaseColor
    .field public float32 RotationSpeed
    .field public float32 GenerationFrequency
    .field public float32 GenerationAccumulator
    .field public bool HighDamping
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
  .field private valuetype [Engine]Engine.Color m_color
  .field private float32 m_flickering
  .field private int32 m_nextParticle
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [Engine]Engine.Vector3 position,
                               valuetype [Engine]Engine.Color color,
                               valuetype Game.FireworksBlock/Shape shape,
                               float32 flickering,
                               float32 particleSize) cil managed
  {
    // 代码大小       2436 (0x984)
    .maxstack  8
    .locals init (int32 V_0,
             class Game.FireworksParticleSystem/Particle V_1,
             int32 V_2,
             float32 V_3,
             int32 V_4,
             int32 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             float32 V_8,
             int32 V_9,
             int32 V_10,
             float32 V_11,
             int32 V_12,
             int32 V_13,
             float32 V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             float32 V_16,
             int32 V_17,
             int32 V_18,
             valuetype [Engine]Engine.Vector3 V_19,
             float32 V_20,
             float32 V_21,
             int32 V_22,
             int32 V_23,
             float32 V_24,
             float32 V_25,
             int32 V_26,
             int32 V_27,
             valuetype [Engine]Engine.Vector3 V_28,
             float32 V_29,
             float32 V_30,
             int32 V_31,
             int32 V_32,
             float32 V_33,
             float32 V_34,
             int32 V_35,
             int32 V_36,
             float32 V_37,
             valuetype [Engine]Engine.Vector3 V_38)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4     0x12c
    IL_0011:  call       instance void class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::.ctor(int32)
    IL_0016:  ldarg.0
    IL_0017:  ldstr      "Textures/FireworksParticle"
    IL_001c:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0021:  call       instance void class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0026:  ldarg.0
    IL_0027:  ldarg.2
    IL_0028:  stfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem::m_color
    IL_002d:  ldarg.0
    IL_002e:  ldarg.s    flickering
    IL_0030:  stfld      float32 Game.FireworksParticleSystem::m_flickering
    IL_0035:  ldarg.0
    IL_0036:  ldc.i4.2
    IL_0037:  call       instance void class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_003c:  ldarg.3
    IL_003d:  brfalse.s  IL_0046

    IL_003f:  ldarg.3
    IL_0040:  ldc.i4.1
    IL_0041:  bne.un     IL_0175

    IL_0046:  ldarg.3
    IL_0047:  brfalse.s  IL_0050

    IL_0049:  ldc.i4     0xc8
    IL_004e:  br.s       IL_0052

    IL_0050:  ldc.i4.s   100
    IL_0052:  stloc.0
    IL_0053:  br         IL_0169

    IL_0058:  ldarg.0
    IL_0059:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::get_Particles()
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_0065:  stloc.2
    IL_0066:  ldloc.2
    IL_0067:  ldc.i4.1
    IL_0068:  add
    IL_0069:  stfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_006e:  ldloc.2
    IL_006f:  ldelem.ref
    IL_0070:  stloc.1
    IL_0071:  ldloc.1
    IL_0072:  ldc.i4.1
    IL_0073:  stfld      bool Game.Particle::IsActive
    IL_0078:  ldloc.1
    IL_0079:  ldarg.1
    IL_007a:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_007f:  ldloc.1
    IL_0080:  ldc.r4     0.2
    IL_0085:  ldarg.s    particleSize
    IL_0087:  mul
    IL_0088:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_008d:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0092:  ldloc.1
    IL_0093:  ldarg.3
    IL_0094:  brfalse.s  IL_00ad

    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_009c:  ldc.r4     1.
    IL_00a1:  ldc.r4     3.
    IL_00a6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ab:  br.s       IL_00c2

    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_00b3:  ldc.r4     0.5
    IL_00b8:  ldc.r4     2.
    IL_00bd:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00c2:  stfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_00c7:  ldloc.1
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_00ce:  ldc.r4     0.5
    IL_00d3:  ldc.r4     1.
    IL_00d8:  ldc.i4.1
    IL_00d9:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                               float32,
                                                                                               bool)
    IL_00de:  stfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_00e3:  ldloc.1
    IL_00e4:  dup
    IL_00e5:  ldfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_00ea:  ldarg.3
    IL_00eb:  brfalse.s  IL_00f1

    IL_00ed:  ldc.i4.s   26
    IL_00ef:  br.s       IL_00f3

    IL_00f1:  ldc.i4.s   16
    IL_00f3:  conv.r4
    IL_00f4:  ldloc.1
    IL_00f5:  ldflda     valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_00fa:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_00ff:  mul
    IL_0100:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0105:  stfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_010a:  ldloc.1
    IL_010b:  ldarg.0
    IL_010c:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0111:  ldc.i4.0
    IL_0112:  ldc.i4.3
    IL_0113:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0118:  stfld      int32 Game.Particle::TextureSlot
    IL_011d:  ldloc.1
    IL_011e:  ldarg.0
    IL_011f:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0124:  ldc.r4     1.
    IL_0129:  ldc.r4     3.
    IL_012e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0133:  stfld      float32 Game.FireworksParticleSystem/Particle::FadeRate
    IL_0138:  ldloc.1
    IL_0139:  ldarg.0
    IL_013a:  ldfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem::m_color
    IL_013f:  ldarg.0
    IL_0140:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0145:  ldc.r4     0.5
    IL_014a:  ldc.r4     1.
    IL_014f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0154:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0159:  stfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem/Particle::BaseColor
    IL_015e:  ldloc.1
    IL_015f:  ldc.r4     0.0
    IL_0164:  stfld      float32 Game.FireworksParticleSystem/Particle::RotationSpeed
    IL_0169:  ldarg.0
    IL_016a:  ldfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_016f:  ldloc.0
    IL_0170:  blt        IL_0058

    IL_0175:  ldarg.3
    IL_0176:  ldc.i4.2
    IL_0177:  bne.un     IL_02d8

    IL_017c:  ldarg.0
    IL_017d:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0182:  ldc.r4     0.0
    IL_0187:  ldc.r4     6.2831855
    IL_018c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0191:  stloc.3
    IL_0192:  ldc.i4     0x96
    IL_0197:  stloc.s    V_4
    IL_0199:  ldc.i4.0
    IL_019a:  stloc.s    V_5
    IL_019c:  br         IL_02ce

    IL_01a1:  ldc.r4     6.2831855
    IL_01a6:  ldloc.s    V_5
    IL_01a8:  conv.r4
    IL_01a9:  mul
    IL_01aa:  ldloc.s    V_4
    IL_01ac:  conv.r4
    IL_01ad:  div
    IL_01ae:  ldloc.3
    IL_01af:  add
    IL_01b0:  stloc.s    V_6
    IL_01b2:  ldloca.s   V_7
    IL_01b4:  ldloc.s    V_6
    IL_01b6:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01bb:  ldc.r4     0.1
    IL_01c0:  ldarg.0
    IL_01c1:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_01c6:  ldc.r4     -1.
    IL_01cb:  ldc.r4     1.
    IL_01d0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01d5:  mul
    IL_01d6:  add
    IL_01d7:  ldc.r4     0.0
    IL_01dc:  ldloc.s    V_6
    IL_01de:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_01e3:  ldc.r4     0.1
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_01ee:  ldc.r4     -1.
    IL_01f3:  ldc.r4     1.
    IL_01f8:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01fd:  mul
    IL_01fe:  add
    IL_01ff:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0204:  ldarg.0
    IL_0205:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::get_Particles()
    IL_020a:  ldarg.0
    IL_020b:  ldarg.0
    IL_020c:  ldfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_0211:  stloc.2
    IL_0212:  ldloc.2
    IL_0213:  ldc.i4.1
    IL_0214:  add
    IL_0215:  stfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_021a:  ldloc.2
    IL_021b:  ldelem.ref
    IL_021c:  dup
    IL_021d:  ldc.i4.1
    IL_021e:  stfld      bool Game.Particle::IsActive
    IL_0223:  dup
    IL_0224:  ldarg.1
    IL_0225:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_022a:  dup
    IL_022b:  ldc.r4     0.2
    IL_0230:  ldarg.s    particleSize
    IL_0232:  mul
    IL_0233:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0238:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_023d:  dup
    IL_023e:  ldarg.0
    IL_023f:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0244:  ldc.r4     1.
    IL_0249:  ldc.r4     3.
    IL_024e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0253:  stfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_0258:  dup
    IL_0259:  ldc.r4     20.
    IL_025e:  ldloc.s    V_7
    IL_0260:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0265:  stfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_026a:  dup
    IL_026b:  ldarg.0
    IL_026c:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0271:  ldc.i4.0
    IL_0272:  ldc.i4.3
    IL_0273:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0278:  stfld      int32 Game.Particle::TextureSlot
    IL_027d:  dup
    IL_027e:  ldarg.0
    IL_027f:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0284:  ldc.r4     1.
    IL_0289:  ldc.r4     3.
    IL_028e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0293:  stfld      float32 Game.FireworksParticleSystem/Particle::FadeRate
    IL_0298:  dup
    IL_0299:  ldarg.0
    IL_029a:  ldfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem::m_color
    IL_029f:  ldarg.0
    IL_02a0:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_02a5:  ldc.r4     0.5
    IL_02aa:  ldc.r4     1.
    IL_02af:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02b4:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_02b9:  stfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem/Particle::BaseColor
    IL_02be:  ldc.r4     0.0
    IL_02c3:  stfld      float32 Game.FireworksParticleSystem/Particle::RotationSpeed
    IL_02c8:  ldloc.s    V_5
    IL_02ca:  ldc.i4.1
    IL_02cb:  add
    IL_02cc:  stloc.s    V_5
    IL_02ce:  ldloc.s    V_5
    IL_02d0:  ldloc.s    V_4
    IL_02d2:  blt        IL_01a1

    IL_02d7:  ret

    IL_02d8:  ldarg.3
    IL_02d9:  ldc.i4.3
    IL_02da:  bne.un     IL_0474

    IL_02df:  ldarg.0
    IL_02e0:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_02e5:  ldc.r4     0.0
    IL_02ea:  ldc.r4     6.2831855
    IL_02ef:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02f4:  stloc.s    V_8
    IL_02f6:  ldc.i4.s   13
    IL_02f8:  stloc.s    V_9
    IL_02fa:  ldc.i4.0
    IL_02fb:  stloc.s    V_10
    IL_02fd:  br         IL_046a

    IL_0302:  ldloc.s    V_10
    IL_0304:  conv.r4
    IL_0305:  ldloc.s    V_9
    IL_0307:  conv.r4
    IL_0308:  div
    IL_0309:  stloc.s    V_11
    IL_030b:  ldloc.s    V_11
    IL_030d:  ldc.r4     2.
    IL_0312:  mul
    IL_0313:  ldloc.s    V_9
    IL_0315:  conv.r4
    IL_0316:  mul
    IL_0317:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_031c:  conv.i4
    IL_031d:  stloc.s    V_12
    IL_031f:  ldc.i4.0
    IL_0320:  stloc.s    V_13
    IL_0322:  br         IL_045b

    IL_0327:  ldc.r4     6.2831855
    IL_032c:  ldloc.s    V_13
    IL_032e:  conv.r4
    IL_032f:  mul
    IL_0330:  ldloc.s    V_12
    IL_0332:  conv.r4
    IL_0333:  div
    IL_0334:  ldloc.s    V_8
    IL_0336:  add
    IL_0337:  stloc.s    V_14
    IL_0339:  ldloca.s   V_15
    IL_033b:  ldloc.s    V_11
    IL_033d:  ldloc.s    V_14
    IL_033f:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0344:  mul
    IL_0345:  ldc.r4     0.1
    IL_034a:  ldarg.0
    IL_034b:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0350:  ldc.r4     -1.
    IL_0355:  ldc.r4     1.
    IL_035a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_035f:  mul
    IL_0360:  add
    IL_0361:  ldc.r4     0.0
    IL_0366:  ldloc.s    V_11
    IL_0368:  ldloc.s    V_14
    IL_036a:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_036f:  mul
    IL_0370:  ldc.r4     0.1
    IL_0375:  ldarg.0
    IL_0376:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_037b:  ldc.r4     -1.
    IL_0380:  ldc.r4     1.
    IL_0385:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_038a:  mul
    IL_038b:  add
    IL_038c:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0391:  ldarg.0
    IL_0392:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::get_Particles()
    IL_0397:  ldarg.0
    IL_0398:  ldarg.0
    IL_0399:  ldfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_039e:  stloc.2
    IL_039f:  ldloc.2
    IL_03a0:  ldc.i4.1
    IL_03a1:  add
    IL_03a2:  stfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_03a7:  ldloc.2
    IL_03a8:  ldelem.ref
    IL_03a9:  dup
    IL_03aa:  ldc.i4.1
    IL_03ab:  stfld      bool Game.Particle::IsActive
    IL_03b0:  dup
    IL_03b1:  ldarg.1
    IL_03b2:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_03b7:  dup
    IL_03b8:  ldc.r4     0.2
    IL_03bd:  ldarg.s    particleSize
    IL_03bf:  mul
    IL_03c0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_03c5:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_03ca:  dup
    IL_03cb:  ldarg.0
    IL_03cc:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_03d1:  ldc.r4     1.
    IL_03d6:  ldc.r4     3.
    IL_03db:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_03e0:  stfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_03e5:  dup
    IL_03e6:  ldc.r4     22.
    IL_03eb:  ldloc.s    V_15
    IL_03ed:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03f2:  stfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_03f7:  dup
    IL_03f8:  ldarg.0
    IL_03f9:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_03fe:  ldc.i4.0
    IL_03ff:  ldc.i4.3
    IL_0400:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0405:  stfld      int32 Game.Particle::TextureSlot
    IL_040a:  dup
    IL_040b:  ldarg.0
    IL_040c:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0411:  ldc.r4     1.
    IL_0416:  ldc.r4     3.
    IL_041b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0420:  stfld      float32 Game.FireworksParticleSystem/Particle::FadeRate
    IL_0425:  dup
    IL_0426:  ldarg.0
    IL_0427:  ldfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem::m_color
    IL_042c:  ldarg.0
    IL_042d:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0432:  ldc.r4     0.5
    IL_0437:  ldc.r4     1.
    IL_043c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0441:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0446:  stfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem/Particle::BaseColor
    IL_044b:  ldc.r4     0.0
    IL_0450:  stfld      float32 Game.FireworksParticleSystem/Particle::RotationSpeed
    IL_0455:  ldloc.s    V_13
    IL_0457:  ldc.i4.1
    IL_0458:  add
    IL_0459:  stloc.s    V_13
    IL_045b:  ldloc.s    V_13
    IL_045d:  ldloc.s    V_12
    IL_045f:  blt        IL_0327

    IL_0464:  ldloc.s    V_10
    IL_0466:  ldc.i4.1
    IL_0467:  add
    IL_0468:  stloc.s    V_10
    IL_046a:  ldloc.s    V_10
    IL_046c:  ldloc.s    V_9
    IL_046e:  ble        IL_0302

    IL_0473:  ret

    IL_0474:  ldarg.3
    IL_0475:  ldc.i4.4
    IL_0476:  bne.un     IL_05f7

    IL_047b:  ldarg.0
    IL_047c:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0481:  ldc.r4     0.0
    IL_0486:  ldc.r4     6.2831855
    IL_048b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0490:  stloc.s    V_16
    IL_0492:  ldc.i4.s   12
    IL_0494:  stloc.s    V_17
    IL_0496:  ldc.i4.0
    IL_0497:  stloc.s    V_18
    IL_0499:  br         IL_05ed

    IL_049e:  ldc.r4     3.1415927
    IL_04a3:  ldloc.s    V_18
    IL_04a5:  conv.r4
    IL_04a6:  mul
    IL_04a7:  ldloc.s    V_17
    IL_04a9:  conv.r4
    IL_04aa:  div
    IL_04ab:  stloc.s    V_20
    IL_04ad:  ldloca.s   V_19
    IL_04af:  ldloc.s    V_20
    IL_04b1:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_04b6:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_04bb:  ldloc.s    V_20
    IL_04bd:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_04c2:  stloc.s    V_21
    IL_04c4:  ldloc.s    V_21
    IL_04c6:  ldc.r4     2.
    IL_04cb:  mul
    IL_04cc:  ldloc.s    V_17
    IL_04ce:  conv.r4
    IL_04cf:  mul
    IL_04d0:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_04d5:  conv.i4
    IL_04d6:  stloc.s    V_22
    IL_04d8:  ldc.i4.0
    IL_04d9:  stloc.s    V_23
    IL_04db:  br         IL_05de

    IL_04e0:  ldc.r4     6.2831855
    IL_04e5:  ldloc.s    V_23
    IL_04e7:  conv.r4
    IL_04e8:  mul
    IL_04e9:  ldloc.s    V_22
    IL_04eb:  conv.r4
    IL_04ec:  div
    IL_04ed:  ldloc.s    V_16
    IL_04ef:  add
    IL_04f0:  stloc.s    V_24
    IL_04f2:  ldloca.s   V_19
    IL_04f4:  ldloc.s    V_21
    IL_04f6:  ldloc.s    V_24
    IL_04f8:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_04fd:  mul
    IL_04fe:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0503:  ldloca.s   V_19
    IL_0505:  ldloc.s    V_21
    IL_0507:  ldloc.s    V_24
    IL_0509:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_050e:  mul
    IL_050f:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0514:  ldarg.0
    IL_0515:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::get_Particles()
    IL_051a:  ldarg.0
    IL_051b:  ldarg.0
    IL_051c:  ldfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_0521:  stloc.2
    IL_0522:  ldloc.2
    IL_0523:  ldc.i4.1
    IL_0524:  add
    IL_0525:  stfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_052a:  ldloc.2
    IL_052b:  ldelem.ref
    IL_052c:  dup
    IL_052d:  ldc.i4.1
    IL_052e:  stfld      bool Game.Particle::IsActive
    IL_0533:  dup
    IL_0534:  ldarg.1
    IL_0535:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_053a:  dup
    IL_053b:  ldc.r4     0.2
    IL_0540:  ldarg.s    particleSize
    IL_0542:  mul
    IL_0543:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0548:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_054d:  dup
    IL_054e:  ldarg.0
    IL_054f:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0554:  ldc.r4     1.
    IL_0559:  ldc.r4     3.
    IL_055e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0563:  stfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_0568:  dup
    IL_0569:  ldc.r4     20.
    IL_056e:  ldloc.s    V_19
    IL_0570:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0575:  stfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_057a:  dup
    IL_057b:  ldarg.0
    IL_057c:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0581:  ldc.i4.0
    IL_0582:  ldc.i4.3
    IL_0583:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0588:  stfld      int32 Game.Particle::TextureSlot
    IL_058d:  dup
    IL_058e:  ldarg.0
    IL_058f:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0594:  ldc.r4     1.
    IL_0599:  ldc.r4     3.
    IL_059e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05a3:  stfld      float32 Game.FireworksParticleSystem/Particle::FadeRate
    IL_05a8:  dup
    IL_05a9:  ldarg.0
    IL_05aa:  ldfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem::m_color
    IL_05af:  ldarg.0
    IL_05b0:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_05b5:  ldc.r4     0.5
    IL_05ba:  ldc.r4     1.
    IL_05bf:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05c4:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_05c9:  stfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem/Particle::BaseColor
    IL_05ce:  ldc.r4     0.0
    IL_05d3:  stfld      float32 Game.FireworksParticleSystem/Particle::RotationSpeed
    IL_05d8:  ldloc.s    V_23
    IL_05da:  ldc.i4.1
    IL_05db:  add
    IL_05dc:  stloc.s    V_23
    IL_05de:  ldloc.s    V_23
    IL_05e0:  ldloc.s    V_22
    IL_05e2:  blt        IL_04e0

    IL_05e7:  ldloc.s    V_18
    IL_05e9:  ldc.i4.1
    IL_05ea:  add
    IL_05eb:  stloc.s    V_18
    IL_05ed:  ldloc.s    V_18
    IL_05ef:  ldloc.s    V_17
    IL_05f1:  ble        IL_049e

    IL_05f6:  ret

    IL_05f7:  ldarg.3
    IL_05f8:  ldc.i4.5
    IL_05f9:  beq.s      IL_0602

    IL_05fb:  ldarg.3
    IL_05fc:  ldc.i4.6
    IL_05fd:  bne.un     IL_080a

    IL_0602:  ldarg.0
    IL_0603:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0608:  ldc.r4     0.0
    IL_060d:  ldc.r4     6.2831855
    IL_0612:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0617:  stloc.s    V_25
    IL_0619:  ldc.i4.3
    IL_061a:  stloc.s    V_26
    IL_061c:  ldc.i4.0
    IL_061d:  stloc.s    V_27
    IL_061f:  br         IL_0800

    IL_0624:  ldc.r4     3.1415927
    IL_0629:  ldloc.s    V_27
    IL_062b:  conv.r4
    IL_062c:  mul
    IL_062d:  ldloc.s    V_26
    IL_062f:  conv.r4
    IL_0630:  div
    IL_0631:  stloc.s    V_29
    IL_0633:  ldloc.s    V_29
    IL_0635:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_063a:  stloc.s    V_30
    IL_063c:  ldloc.s    V_30
    IL_063e:  ldarg.3
    IL_063f:  ldc.i4.5
    IL_0640:  beq.s      IL_0645

    IL_0642:  ldc.i4.2
    IL_0643:  br.s       IL_0646

    IL_0645:  ldc.i4.3
    IL_0646:  conv.r4
    IL_0647:  mul
    IL_0648:  ldloc.s    V_26
    IL_064a:  conv.r4
    IL_064b:  mul
    IL_064c:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0651:  conv.i4
    IL_0652:  stloc.s    V_31
    IL_0654:  ldc.i4.0
    IL_0655:  stloc.s    V_32
    IL_0657:  br         IL_07f1

    IL_065c:  ldc.r4     6.2831855
    IL_0661:  ldloc.s    V_32
    IL_0663:  conv.r4
    IL_0664:  mul
    IL_0665:  ldloc.s    V_31
    IL_0667:  conv.r4
    IL_0668:  div
    IL_0669:  ldloc.s    V_25
    IL_066b:  add
    IL_066c:  stloc.s    V_33
    IL_066e:  ldloca.s   V_28
    IL_0670:  ldloc.s    V_30
    IL_0672:  ldloc.s    V_33
    IL_0674:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0679:  mul
    IL_067a:  ldc.r4     0.30000001
    IL_067f:  ldarg.0
    IL_0680:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0685:  ldc.r4     -1.
    IL_068a:  ldc.r4     1.
    IL_068f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0694:  mul
    IL_0695:  add
    IL_0696:  stfld      float32 [Engine]Engine.Vector3::X
    IL_069b:  ldloca.s   V_28
    IL_069d:  ldloc.s    V_29
    IL_069f:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_06a4:  ldc.r4     0.30000001
    IL_06a9:  ldarg.0
    IL_06aa:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_06af:  ldc.r4     -1.
    IL_06b4:  ldc.r4     1.
    IL_06b9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_06be:  mul
    IL_06bf:  add
    IL_06c0:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_06c5:  ldloca.s   V_28
    IL_06c7:  ldloc.s    V_30
    IL_06c9:  ldloc.s    V_33
    IL_06cb:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_06d0:  mul
    IL_06d1:  ldc.r4     0.30000001
    IL_06d6:  ldarg.0
    IL_06d7:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_06dc:  ldc.r4     -1.
    IL_06e1:  ldc.r4     1.
    IL_06e6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_06eb:  mul
    IL_06ec:  add
    IL_06ed:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_06f2:  ldarg.0
    IL_06f3:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::get_Particles()
    IL_06f8:  ldarg.0
    IL_06f9:  ldarg.0
    IL_06fa:  ldfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_06ff:  stloc.2
    IL_0700:  ldloc.2
    IL_0701:  ldc.i4.1
    IL_0702:  add
    IL_0703:  stfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_0708:  ldloc.2
    IL_0709:  ldelem.ref
    IL_070a:  dup
    IL_070b:  ldc.i4.1
    IL_070c:  stfld      bool Game.Particle::IsActive
    IL_0711:  dup
    IL_0712:  ldarg.1
    IL_0713:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0718:  dup
    IL_0719:  ldc.r4     0.25
    IL_071e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0723:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0728:  dup
    IL_0729:  ldarg.0
    IL_072a:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_072f:  ldc.r4     0.5
    IL_0734:  ldc.r4     2.5
    IL_0739:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_073e:  stfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_0743:  dup
    IL_0744:  ldarg.3
    IL_0745:  ldc.i4.5
    IL_0746:  beq.s      IL_0756

    IL_0748:  ldc.r4     35.
    IL_074d:  ldloc.s    V_28
    IL_074f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0754:  br.s       IL_0762

    IL_0756:  ldc.r4     25.
    IL_075b:  ldloc.s    V_28
    IL_075d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0762:  stfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_0767:  dup
    IL_0768:  ldarg.0
    IL_0769:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_076e:  ldc.i4.0
    IL_076f:  ldc.i4.3
    IL_0770:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0775:  stfld      int32 Game.Particle::TextureSlot
    IL_077a:  dup
    IL_077b:  ldarg.0
    IL_077c:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0781:  ldc.r4     1.
    IL_0786:  ldc.r4     3.
    IL_078b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0790:  stfld      float32 Game.FireworksParticleSystem/Particle::FadeRate
    IL_0795:  dup
    IL_0796:  ldarg.0
    IL_0797:  ldfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem::m_color
    IL_079c:  ldarg.0
    IL_079d:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_07a2:  ldc.r4     0.5
    IL_07a7:  ldc.r4     1.
    IL_07ac:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_07b1:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_07b6:  stfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem/Particle::BaseColor
    IL_07bb:  dup
    IL_07bc:  ldarg.3
    IL_07bd:  ldc.i4.5
    IL_07be:  beq.s      IL_07c7

    IL_07c0:  ldc.r4     2.0999999
    IL_07c5:  br.s       IL_07cc

    IL_07c7:  ldc.r4     1.9
    IL_07cc:  stfld      float32 Game.FireworksParticleSystem/Particle::GenerationFrequency
    IL_07d1:  ldarg.0
    IL_07d2:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_07d7:  ldc.r4     -40.
    IL_07dc:  ldc.r4     40.
    IL_07e1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_07e6:  stfld      float32 Game.FireworksParticleSystem/Particle::RotationSpeed
    IL_07eb:  ldloc.s    V_32
    IL_07ed:  ldc.i4.1
    IL_07ee:  add
    IL_07ef:  stloc.s    V_32
    IL_07f1:  ldloc.s    V_32
    IL_07f3:  ldloc.s    V_31
    IL_07f5:  blt        IL_065c

    IL_07fa:  ldloc.s    V_27
    IL_07fc:  ldc.i4.1
    IL_07fd:  add
    IL_07fe:  stloc.s    V_27
    IL_0800:  ldloc.s    V_27
    IL_0802:  ldloc.s    V_26
    IL_0804:  ble        IL_0624

    IL_0809:  ret

    IL_080a:  ldarg.3
    IL_080b:  ldc.i4.7
    IL_080c:  bne.un     IL_0983

    IL_0811:  ldarg.0
    IL_0812:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0817:  ldc.r4     0.0
    IL_081c:  ldc.r4     6.2831855
    IL_0821:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0826:  stloc.s    V_34
    IL_0828:  ldc.i4.s   13
    IL_082a:  stloc.s    V_35
    IL_082c:  ldc.i4.0
    IL_082d:  stloc.s    V_36
    IL_082f:  br         IL_097a

    IL_0834:  ldc.r4     6.2831855
    IL_0839:  ldloc.s    V_36
    IL_083b:  conv.r4
    IL_083c:  mul
    IL_083d:  ldloc.s    V_35
    IL_083f:  conv.r4
    IL_0840:  div
    IL_0841:  ldloc.s    V_34
    IL_0843:  add
    IL_0844:  stloc.s    V_37
    IL_0846:  ldloca.s   V_38
    IL_0848:  ldloc.s    V_37
    IL_084a:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_084f:  ldc.r4     0.1
    IL_0854:  ldarg.0
    IL_0855:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_085a:  ldc.r4     -1.
    IL_085f:  ldc.r4     1.
    IL_0864:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0869:  mul
    IL_086a:  add
    IL_086b:  ldc.r4     0.0
    IL_0870:  ldloc.s    V_37
    IL_0872:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_0877:  ldc.r4     0.1
    IL_087c:  ldarg.0
    IL_087d:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0882:  ldc.r4     -1.
    IL_0887:  ldc.r4     1.
    IL_088c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0891:  mul
    IL_0892:  add
    IL_0893:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0898:  ldarg.0
    IL_0899:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::get_Particles()
    IL_089e:  ldarg.0
    IL_089f:  ldarg.0
    IL_08a0:  ldfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_08a5:  stloc.2
    IL_08a6:  ldloc.2
    IL_08a7:  ldc.i4.1
    IL_08a8:  add
    IL_08a9:  stfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_08ae:  ldloc.2
    IL_08af:  ldelem.ref
    IL_08b0:  dup
    IL_08b1:  ldc.i4.1
    IL_08b2:  stfld      bool Game.Particle::IsActive
    IL_08b7:  dup
    IL_08b8:  ldarg.1
    IL_08b9:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_08be:  dup
    IL_08bf:  ldc.r4     0.25
    IL_08c4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_08c9:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_08ce:  dup
    IL_08cf:  ldarg.0
    IL_08d0:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_08d5:  ldc.r4     0.5
    IL_08da:  ldc.r4     2.5
    IL_08df:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_08e4:  stfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_08e9:  dup
    IL_08ea:  ldc.r4     25.
    IL_08ef:  ldloc.s    V_38
    IL_08f1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08f6:  stfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_08fb:  dup
    IL_08fc:  ldarg.0
    IL_08fd:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0902:  ldc.i4.0
    IL_0903:  ldc.i4.3
    IL_0904:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0909:  stfld      int32 Game.Particle::TextureSlot
    IL_090e:  dup
    IL_090f:  ldarg.0
    IL_0910:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0915:  ldc.r4     1.
    IL_091a:  ldc.r4     3.
    IL_091f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0924:  stfld      float32 Game.FireworksParticleSystem/Particle::FadeRate
    IL_0929:  dup
    IL_092a:  ldarg.0
    IL_092b:  ldfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem::m_color
    IL_0930:  ldarg.0
    IL_0931:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0936:  ldc.r4     0.5
    IL_093b:  ldc.r4     1.
    IL_0940:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0945:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_094a:  stfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem/Particle::BaseColor
    IL_094f:  dup
    IL_0950:  ldc.r4     2.5
    IL_0955:  stfld      float32 Game.FireworksParticleSystem/Particle::GenerationFrequency
    IL_095a:  ldarg.0
    IL_095b:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0960:  ldc.r4     -40.
    IL_0965:  ldc.r4     40.
    IL_096a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_096f:  stfld      float32 Game.FireworksParticleSystem/Particle::RotationSpeed
    IL_0974:  ldloc.s    V_36
    IL_0976:  ldc.i4.1
    IL_0977:  add
    IL_0978:  stloc.s    V_36
    IL_097a:  ldloc.s    V_36
    IL_097c:  ldloc.s    V_35
    IL_097e:  blt        IL_0834

    IL_0983:  ret
  } // end of method FireworksParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
  {
    // 代码大小       638 (0x27e)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             bool V_2,
             int32 V_3,
             class Game.FireworksParticleSystem/Particle V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             float32 V_6,
             int32 V_7)
    IL_0000:  ldarg.2
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     0.1
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0010:  starg.s    dt
    IL_0012:  ldc.r4     9.9999998e-003
    IL_0017:  ldarg.2
    IL_0018:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_001d:  stloc.0
    IL_001e:  ldc.r4     0.1
    IL_0023:  ldarg.2
    IL_0024:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0029:  stloc.1
    IL_002a:  ldc.i4.0
    IL_002b:  stloc.2
    IL_002c:  ldc.i4.0
    IL_002d:  stloc.3
    IL_002e:  br         IL_026b

    IL_0033:  ldarg.0
    IL_0034:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::get_Particles()
    IL_0039:  ldloc.3
    IL_003a:  ldelem.ref
    IL_003b:  stloc.s    V_4
    IL_003d:  ldloc.s    V_4
    IL_003f:  ldfld      bool Game.Particle::IsActive
    IL_0044:  brfalse    IL_0267

    IL_0049:  ldc.i4.1
    IL_004a:  stloc.2
    IL_004b:  ldloc.s    V_4
    IL_004d:  dup
    IL_004e:  ldfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_0053:  ldarg.2
    IL_0054:  sub
    IL_0055:  stfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_005a:  ldloc.s    V_4
    IL_005c:  ldfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_0061:  ldc.r4     0.0
    IL_0066:  ble.un     IL_025f

    IL_006b:  ldloc.s    V_4
    IL_006d:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0072:  ldloc.s    V_4
    IL_0074:  ldfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_0079:  ldarg.2
    IL_007a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_007f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0084:  stloc.s    V_5
    IL_0086:  ldloc.s    V_4
    IL_0088:  ldloc.s    V_5
    IL_008a:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_008f:  ldloc.s    V_4
    IL_0091:  ldflda     valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_0096:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_009b:  dup
    IL_009c:  ldind.r4
    IL_009d:  ldc.r4     -9.8100004
    IL_00a2:  ldarg.2
    IL_00a3:  mul
    IL_00a4:  add
    IL_00a5:  stind.r4
    IL_00a6:  ldloc.s    V_4
    IL_00a8:  dup
    IL_00a9:  ldfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_00ae:  ldloc.s    V_4
    IL_00b0:  ldfld      bool Game.FireworksParticleSystem/Particle::HighDamping
    IL_00b5:  brtrue.s   IL_00ba

    IL_00b7:  ldloc.1
    IL_00b8:  br.s       IL_00bb

    IL_00ba:  ldloc.0
    IL_00bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00c0:  stfld      valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_00c5:  ldloc.s    V_4
    IL_00c7:  ldloc.s    V_4
    IL_00c9:  ldfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem/Particle::BaseColor
    IL_00ce:  ldloc.s    V_4
    IL_00d0:  ldfld      float32 Game.FireworksParticleSystem/Particle::FadeRate
    IL_00d5:  ldloc.s    V_4
    IL_00d7:  ldfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_00dc:  mul
    IL_00dd:  ldc.r4     1.
    IL_00e2:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00e7:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00ec:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_00f1:  ldloc.s    V_4
    IL_00f3:  dup
    IL_00f4:  ldfld      float32 Game.Particle::Rotation
    IL_00f9:  ldloc.s    V_4
    IL_00fb:  ldfld      float32 Game.FireworksParticleSystem/Particle::RotationSpeed
    IL_0100:  ldarg.2
    IL_0101:  mul
    IL_0102:  add
    IL_0103:  stfld      float32 Game.Particle::Rotation
    IL_0108:  ldloc.s    V_4
    IL_010a:  ldfld      bool Game.FireworksParticleSystem/Particle::HighDamping
    IL_010f:  brtrue.s   IL_013a

    IL_0111:  ldarg.0
    IL_0112:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0117:  ldc.r4     0.0
    IL_011c:  ldc.r4     1.
    IL_0121:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0126:  ldarg.0
    IL_0127:  ldfld      float32 Game.FireworksParticleSystem::m_flickering
    IL_012c:  bge.un.s   IL_013a

    IL_012e:  ldloc.s    V_4
    IL_0130:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0135:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0140:  ldc.r4     0.0
    IL_0145:  ldc.r4     1.
    IL_014a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_014f:  ldc.r4     20.
    IL_0154:  ldarg.2
    IL_0155:  mul
    IL_0156:  bge.un.s   IL_016c

    IL_0158:  ldloc.s    V_4
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0160:  ldc.i4.0
    IL_0161:  ldc.i4.3
    IL_0162:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0167:  stfld      int32 Game.Particle::TextureSlot
    IL_016c:  ldloc.s    V_4
    IL_016e:  ldfld      float32 Game.FireworksParticleSystem/Particle::GenerationFrequency
    IL_0173:  ldc.r4     0.0
    IL_0178:  ble.un     IL_0267

    IL_017d:  ldloc.s    V_4
    IL_017f:  ldflda     valuetype [Engine]Engine.Vector3 Game.FireworksParticleSystem/Particle::Velocity
    IL_0184:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0189:  stloc.s    V_6
    IL_018b:  ldloc.s    V_4
    IL_018d:  dup
    IL_018e:  ldfld      float32 Game.FireworksParticleSystem/Particle::GenerationAccumulator
    IL_0193:  ldloc.s    V_4
    IL_0195:  ldfld      float32 Game.FireworksParticleSystem/Particle::GenerationFrequency
    IL_019a:  ldloc.s    V_6
    IL_019c:  mul
    IL_019d:  ldarg.2
    IL_019e:  mul
    IL_019f:  add
    IL_01a0:  stfld      float32 Game.FireworksParticleSystem/Particle::GenerationAccumulator
    IL_01a5:  ldloc.s    V_4
    IL_01a7:  ldfld      float32 Game.FireworksParticleSystem/Particle::GenerationAccumulator
    IL_01ac:  ldc.r4     1.
    IL_01b1:  ble.un     IL_0267

    IL_01b6:  ldarg.0
    IL_01b7:  ldfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_01bc:  ldarg.0
    IL_01bd:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::get_Particles()
    IL_01c2:  ldlen
    IL_01c3:  conv.i4
    IL_01c4:  bge        IL_0267

    IL_01c9:  ldloc.s    V_4
    IL_01cb:  dup
    IL_01cc:  ldfld      float32 Game.FireworksParticleSystem/Particle::GenerationAccumulator
    IL_01d1:  ldc.r4     1.
    IL_01d6:  sub
    IL_01d7:  stfld      float32 Game.FireworksParticleSystem/Particle::GenerationAccumulator
    IL_01dc:  ldarg.0
    IL_01dd:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::get_Particles()
    IL_01e2:  ldarg.0
    IL_01e3:  ldarg.0
    IL_01e4:  ldfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_01e9:  stloc.s    V_7
    IL_01eb:  ldloc.s    V_7
    IL_01ed:  ldc.i4.1
    IL_01ee:  add
    IL_01ef:  stfld      int32 Game.FireworksParticleSystem::m_nextParticle
    IL_01f4:  ldloc.s    V_7
    IL_01f6:  ldelem.ref
    IL_01f7:  dup
    IL_01f8:  ldc.i4.1
    IL_01f9:  stfld      bool Game.Particle::IsActive
    IL_01fe:  dup
    IL_01ff:  ldloc.s    V_5
    IL_0201:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0206:  dup
    IL_0207:  ldc.r4     0.2
    IL_020c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0211:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0216:  dup
    IL_0217:  ldc.r4     1.
    IL_021c:  stfld      float32 Game.FireworksParticleSystem/Particle::TimeToLive
    IL_0221:  dup
    IL_0222:  ldarg.0
    IL_0223:  ldfld      class Game.Random Game.FireworksParticleSystem::m_random
    IL_0228:  ldc.i4.0
    IL_0229:  ldc.i4.3
    IL_022a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_022f:  stfld      int32 Game.Particle::TextureSlot
    IL_0234:  dup
    IL_0235:  ldc.r4     1.
    IL_023a:  stfld      float32 Game.FireworksParticleSystem/Particle::FadeRate
    IL_023f:  dup
    IL_0240:  ldloc.s    V_4
    IL_0242:  ldfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem/Particle::BaseColor
    IL_0247:  stfld      valuetype [Engine]Engine.Color Game.FireworksParticleSystem/Particle::BaseColor
    IL_024c:  dup
    IL_024d:  ldc.i4.1
    IL_024e:  stfld      bool Game.FireworksParticleSystem/Particle::HighDamping
    IL_0253:  ldc.r4     0.0
    IL_0258:  stfld      float32 Game.FireworksParticleSystem/Particle::RotationSpeed
    IL_025d:  br.s       IL_0267

    IL_025f:  ldloc.s    V_4
    IL_0261:  ldc.i4.0
    IL_0262:  stfld      bool Game.Particle::IsActive
    IL_0267:  ldloc.3
    IL_0268:  ldc.i4.1
    IL_0269:  add
    IL_026a:  stloc.3
    IL_026b:  ldloc.3
    IL_026c:  ldarg.0
    IL_026d:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireworksParticleSystem/Particle>::get_Particles()
    IL_0272:  ldlen
    IL_0273:  conv.i4
    IL_0274:  blt        IL_0033

    IL_0279:  ldloc.2
    IL_027a:  ldc.i4.0
    IL_027b:  ceq
    IL_027d:  ret
  } // end of method FireworksParticleSystem::Simulate

} // end of class Game.FireworksParticleSystem