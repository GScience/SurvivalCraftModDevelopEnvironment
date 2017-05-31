.class public auto ansi beforefieldinit Game.FuseParticleSystem
       extends class Game.ParticleSystem`1<class Game.FuseParticleSystem/Particle>
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public float32 Time
    .field public float32 TimeToLive
    .field public float32 Speed
    .field public float32 TargetSpeed
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
  .field private float32 m_toGenerate
  .field private bool m_visible
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.FuseParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   15
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.FuseParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      valuetype [Engine]Engine.Vector3 Game.FuseParticleSystem::m_position
    IL_001a:  ldarg.0
    IL_001b:  ldstr      "Textures/FireParticle"
    IL_0020:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0025:  call       instance void class Game.ParticleSystem`1<class Game.FuseParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_002a:  ldarg.0
    IL_002b:  ldc.i4.3
    IL_002c:  call       instance void class Game.ParticleSystem`1<class Game.FuseParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_0031:  ret
  } // end of method FuseParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
  {
    // 代码大小       559 (0x22f)
    .maxstack  7
    .locals init (int32 V_0,
             class Game.FuseParticleSystem/Particle V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.FuseParticleSystem::m_visible
    IL_0006:  brfalse    IL_022d

    IL_000b:  ldarg.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      float32 Game.FuseParticleSystem::m_toGenerate
    IL_0012:  ldc.r4     15.
    IL_0017:  ldarg.2
    IL_0018:  mul
    IL_0019:  add
    IL_001a:  stfld      float32 Game.FuseParticleSystem::m_toGenerate
    IL_001f:  ldc.i4.0
    IL_0020:  stloc.0
    IL_0021:  br         IL_0209

    IL_0026:  ldarg.0
    IL_0027:  call       instance !0[] class Game.ParticleSystem`1<class Game.FuseParticleSystem/Particle>::get_Particles()
    IL_002c:  ldloc.0
    IL_002d:  ldelem.ref
    IL_002e:  stloc.1
    IL_002f:  ldloc.1
    IL_0030:  ldfld      bool Game.Particle::IsActive
    IL_0035:  brfalse    IL_00f3

    IL_003a:  ldloc.1
    IL_003b:  dup
    IL_003c:  ldfld      float32 Game.FuseParticleSystem/Particle::Time
    IL_0041:  ldarg.2
    IL_0042:  add
    IL_0043:  stfld      float32 Game.FuseParticleSystem/Particle::Time
    IL_0048:  ldloc.1
    IL_0049:  dup
    IL_004a:  ldfld      float32 Game.FuseParticleSystem/Particle::TimeToLive
    IL_004f:  ldarg.2
    IL_0050:  sub
    IL_0051:  stfld      float32 Game.FuseParticleSystem/Particle::TimeToLive
    IL_0056:  ldloc.1
    IL_0057:  ldfld      float32 Game.FuseParticleSystem/Particle::TimeToLive
    IL_005c:  ldc.r4     0.0
    IL_0061:  ble.un     IL_00e7

    IL_0066:  ldloc.1
    IL_0067:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_006c:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0071:  dup
    IL_0072:  ldind.r4
    IL_0073:  ldloc.1
    IL_0074:  ldfld      float32 Game.FuseParticleSystem/Particle::Speed
    IL_0079:  ldarg.2
    IL_007a:  mul
    IL_007b:  add
    IL_007c:  stind.r4
    IL_007d:  ldloc.1
    IL_007e:  ldloc.1
    IL_007f:  ldfld      float32 Game.FuseParticleSystem/Particle::Speed
    IL_0084:  ldc.r4     1.5
    IL_0089:  ldarg.2
    IL_008a:  mul
    IL_008b:  sub
    IL_008c:  ldloc.1
    IL_008d:  ldfld      float32 Game.FuseParticleSystem/Particle::TargetSpeed
    IL_0092:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0097:  stfld      float32 Game.FuseParticleSystem/Particle::Speed
    IL_009c:  ldloc.1
    IL_009d:  ldc.r4     9.
    IL_00a2:  ldloc.1
    IL_00a3:  ldfld      float32 Game.FuseParticleSystem/Particle::Time
    IL_00a8:  mul
    IL_00a9:  ldc.r4     0.75
    IL_00ae:  div
    IL_00af:  ldc.r4     8.
    IL_00b4:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00b9:  conv.i4
    IL_00ba:  stfld      int32 Game.Particle::TextureSlot
    IL_00bf:  ldloc.1
    IL_00c0:  ldc.r4     7.e-002
    IL_00c5:  ldc.r4     1.
    IL_00ca:  ldc.r4     2.
    IL_00cf:  ldloc.1
    IL_00d0:  ldfld      float32 Game.FuseParticleSystem/Particle::Time
    IL_00d5:  mul
    IL_00d6:  add
    IL_00d7:  mul
    IL_00d8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00dd:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_00e2:  br         IL_0205

    IL_00e7:  ldloc.1
    IL_00e8:  ldc.i4.0
    IL_00e9:  stfld      bool Game.Particle::IsActive
    IL_00ee:  br         IL_0205

    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      float32 Game.FuseParticleSystem::m_toGenerate
    IL_00f9:  ldc.r4     1.
    IL_00fe:  blt.un     IL_0205

    IL_0103:  ldloc.1
    IL_0104:  ldc.i4.1
    IL_0105:  stfld      bool Game.Particle::IsActive
    IL_010a:  ldloc.1
    IL_010b:  ldarg.0
    IL_010c:  ldfld      valuetype [Engine]Engine.Vector3 Game.FuseParticleSystem::m_position
    IL_0111:  ldc.r4     2.e-002
    IL_0116:  ldc.r4     0.0
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class Game.Random Game.FuseParticleSystem::m_random
    IL_0121:  ldc.r4     -1.
    IL_0126:  ldc.r4     1.
    IL_012b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0130:  ldc.r4     0.0
    IL_0135:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_013a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_013f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0144:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0149:  ldloc.1
    IL_014a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_014f:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0154:  ldloc.1
    IL_0155:  ldarg.0
    IL_0156:  ldfld      class Game.Random Game.FuseParticleSystem::m_random
    IL_015b:  ldc.r4     0.44999999
    IL_0160:  ldc.r4     0.55000001
    IL_0165:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_016a:  ldc.r4     0.40000001
    IL_016f:  mul
    IL_0170:  stfld      float32 Game.FuseParticleSystem/Particle::TargetSpeed
    IL_0175:  ldloc.1
    IL_0176:  ldarg.0
    IL_0177:  ldfld      class Game.Random Game.FuseParticleSystem::m_random
    IL_017c:  ldc.r4     0.44999999
    IL_0181:  ldc.r4     0.55000001
    IL_0186:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_018b:  ldc.r4     2.5
    IL_0190:  mul
    IL_0191:  stfld      float32 Game.FuseParticleSystem/Particle::Speed
    IL_0196:  ldloc.1
    IL_0197:  ldc.r4     0.0
    IL_019c:  stfld      float32 Game.FuseParticleSystem/Particle::Time
    IL_01a1:  ldloc.1
    IL_01a2:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_01a7:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_01ac:  ldloc.1
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class Game.Random Game.FuseParticleSystem::m_random
    IL_01b3:  ldc.r4     0.30000001
    IL_01b8:  ldc.r4     1.
    IL_01bd:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01c2:  stfld      float32 Game.FuseParticleSystem/Particle::TimeToLive
    IL_01c7:  ldloc.1
    IL_01c8:  ldarg.0
    IL_01c9:  ldfld      class Game.Random Game.FuseParticleSystem::m_random
    IL_01ce:  ldc.i4.0
    IL_01cf:  ldc.i4.1
    IL_01d0:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01d5:  ldc.i4.0
    IL_01d6:  ceq
    IL_01d8:  stfld      bool Game.Particle::FlipX
    IL_01dd:  ldloc.1
    IL_01de:  ldarg.0
    IL_01df:  ldfld      class Game.Random Game.FuseParticleSystem::m_random
    IL_01e4:  ldc.i4.0
    IL_01e5:  ldc.i4.1
    IL_01e6:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01eb:  ldc.i4.0
    IL_01ec:  ceq
    IL_01ee:  stfld      bool Game.Particle::FlipY
    IL_01f3:  ldarg.0
    IL_01f4:  ldarg.0
    IL_01f5:  ldfld      float32 Game.FuseParticleSystem::m_toGenerate
    IL_01fa:  ldc.r4     1.
    IL_01ff:  sub
    IL_0200:  stfld      float32 Game.FuseParticleSystem::m_toGenerate
    IL_0205:  ldloc.0
    IL_0206:  ldc.i4.1
    IL_0207:  add
    IL_0208:  stloc.0
    IL_0209:  ldloc.0
    IL_020a:  ldarg.0
    IL_020b:  call       instance !0[] class Game.ParticleSystem`1<class Game.FuseParticleSystem/Particle>::get_Particles()
    IL_0210:  ldlen
    IL_0211:  conv.i4
    IL_0212:  blt        IL_0026

    IL_0217:  ldarg.0
    IL_0218:  ldarg.0
    IL_0219:  ldfld      float32 Game.FuseParticleSystem::m_toGenerate
    IL_021e:  ldc.r4     1.
    IL_0223:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0228:  stfld      float32 Game.FuseParticleSystem::m_toGenerate
    IL_022d:  ldc.i4.0
    IL_022e:  ret
  } // end of method FuseParticleSystem::Simulate

  .method public hidebysig virtual instance void 
          Draw(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  2
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      bool Game.FuseParticleSystem::m_visible
    IL_0007:  ldarg.0
    IL_0008:  ldfld      valuetype [Engine]Engine.Vector3 Game.FuseParticleSystem::m_position
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0013:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_001e:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldc.r4     -0.5
    IL_002a:  ble.un.s   IL_005a

    IL_002c:  ldloc.0
    IL_002d:  ldc.r4     32.
    IL_0032:  bgt.un.s   IL_005a

    IL_0034:  ldarg.0
    IL_0035:  ldfld      valuetype [Engine]Engine.Vector3 Game.FuseParticleSystem::m_position
    IL_003a:  ldarg.1
    IL_003b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0040:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0045:  ldc.r4     1024.
    IL_004a:  bgt.un.s   IL_005a

    IL_004c:  ldarg.0
    IL_004d:  ldc.i4.1
    IL_004e:  stfld      bool Game.FuseParticleSystem::m_visible
    IL_0053:  ldarg.0
    IL_0054:  ldarg.1
    IL_0055:  call       instance void class Game.ParticleSystem`1<class Game.FuseParticleSystem/Particle>::Draw(class Game.SubsystemDrawing)
    IL_005a:  ret
  } // end of method FuseParticleSystem::Draw

} // end of class Game.FuseParticleSystem