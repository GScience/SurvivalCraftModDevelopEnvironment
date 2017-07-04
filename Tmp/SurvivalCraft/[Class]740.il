.class public auto ansi beforefieldinit Game.FireParticleSystem
       extends class Game.ParticleSystem`1<class Game.FireParticleSystem/Particle>
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public float32 Time
    .field public float32 TimeToLive
    .field public float32 Speed
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
  .field private float32 m_size
  .field private float32 m_toGenerate
  .field private bool m_visible
  .field private float32 m_maxVisibilityDistance
  .field private float32 m_age
  .field private bool '<IsStopped>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [Engine]Engine.Vector3 position,
                               float32 size,
                               float32 maxVisibilityDistance) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.FireParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   10
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.FireParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      valuetype [Engine]Engine.Vector3 Game.FireParticleSystem::m_position
    IL_001a:  ldarg.0
    IL_001b:  ldarg.2
    IL_001c:  stfld      float32 Game.FireParticleSystem::m_size
    IL_0021:  ldarg.0
    IL_0022:  ldarg.3
    IL_0023:  stfld      float32 Game.FireParticleSystem::m_maxVisibilityDistance
    IL_0028:  ldarg.0
    IL_0029:  ldstr      "Textures/FireParticle"
    IL_002e:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0033:  call       instance void class Game.ParticleSystem`1<class Game.FireParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0038:  ldarg.0
    IL_0039:  ldc.i4.3
    IL_003a:  call       instance void class Game.ParticleSystem`1<class Game.FireParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_003f:  ret
  } // end of method FireParticleSystem::.ctor

  .method public hidebysig specialname instance bool 
          get_IsStopped() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.FireParticleSystem::'<IsStopped>k__BackingField'
    IL_0006:  ret
  } // end of method FireParticleSystem::get_IsStopped

  .method public hidebysig specialname instance void 
          set_IsStopped(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.FireParticleSystem::'<IsStopped>k__BackingField'
    IL_0007:  ret
  } // end of method FireParticleSystem::set_IsStopped

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       556 (0x22c)
    .maxstack  8
    .locals init (bool V_0,
             int32 V_1,
             class Game.FireParticleSystem/Particle V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.FireParticleSystem::m_age
    IL_0007:  ldarg.1
    IL_0008:  add
    IL_0009:  stfld      float32 Game.FireParticleSystem::m_age
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      bool Game.FireParticleSystem::m_visible
    IL_0016:  brtrue.s   IL_0028

    IL_0018:  ldarg.0
    IL_0019:  ldfld      float32 Game.FireParticleSystem::m_age
    IL_001e:  ldc.r4     2.
    IL_0023:  bge.un     IL_0216

    IL_0028:  ldarg.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      float32 Game.FireParticleSystem::m_toGenerate
    IL_002f:  ldarg.0
    IL_0030:  call       instance bool Game.FireParticleSystem::get_IsStopped()
    IL_0035:  brtrue.s   IL_0040

    IL_0037:  ldc.r4     5.
    IL_003c:  ldarg.1
    IL_003d:  mul
    IL_003e:  br.s       IL_0045

    IL_0040:  ldc.r4     0.0
    IL_0045:  add
    IL_0046:  stfld      float32 Game.FireParticleSystem::m_toGenerate
    IL_004b:  ldc.i4.0
    IL_004c:  stloc.1
    IL_004d:  br         IL_01f2

    IL_0052:  ldarg.0
    IL_0053:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireParticleSystem/Particle>::get_Particles()
    IL_0058:  ldloc.1
    IL_0059:  ldelem.ref
    IL_005a:  stloc.2
    IL_005b:  ldloc.2
    IL_005c:  ldfld      bool Game.Particle::IsActive
    IL_0061:  brfalse.s  IL_00d9

    IL_0063:  ldc.i4.1
    IL_0064:  stloc.0
    IL_0065:  ldloc.2
    IL_0066:  dup
    IL_0067:  ldfld      float32 Game.FireParticleSystem/Particle::Time
    IL_006c:  ldarg.1
    IL_006d:  add
    IL_006e:  stfld      float32 Game.FireParticleSystem/Particle::Time
    IL_0073:  ldloc.2
    IL_0074:  dup
    IL_0075:  ldfld      float32 Game.FireParticleSystem/Particle::TimeToLive
    IL_007a:  ldarg.1
    IL_007b:  sub
    IL_007c:  stfld      float32 Game.FireParticleSystem/Particle::TimeToLive
    IL_0081:  ldloc.2
    IL_0082:  ldfld      float32 Game.FireParticleSystem/Particle::TimeToLive
    IL_0087:  ldc.r4     0.0
    IL_008c:  ble.un.s   IL_00cd

    IL_008e:  ldloc.2
    IL_008f:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0094:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0099:  dup
    IL_009a:  ldind.r4
    IL_009b:  ldloc.2
    IL_009c:  ldfld      float32 Game.FireParticleSystem/Particle::Speed
    IL_00a1:  ldarg.1
    IL_00a2:  mul
    IL_00a3:  add
    IL_00a4:  stind.r4
    IL_00a5:  ldloc.2
    IL_00a6:  ldc.r4     9.
    IL_00ab:  ldloc.2
    IL_00ac:  ldfld      float32 Game.FireParticleSystem/Particle::Time
    IL_00b1:  mul
    IL_00b2:  ldc.r4     1.25
    IL_00b7:  div
    IL_00b8:  ldc.r4     8.
    IL_00bd:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00c2:  conv.i4
    IL_00c3:  stfld      int32 Game.Particle::TextureSlot
    IL_00c8:  br         IL_01ee

    IL_00cd:  ldloc.2
    IL_00ce:  ldc.i4.0
    IL_00cf:  stfld      bool Game.Particle::IsActive
    IL_00d4:  br         IL_01ee

    IL_00d9:  ldarg.0
    IL_00da:  ldfld      float32 Game.FireParticleSystem::m_toGenerate
    IL_00df:  ldc.r4     1.
    IL_00e4:  blt.un     IL_01ee

    IL_00e9:  ldloc.2
    IL_00ea:  ldc.i4.1
    IL_00eb:  stfld      bool Game.Particle::IsActive
    IL_00f0:  ldloc.2
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      valuetype [Engine]Engine.Vector3 Game.FireParticleSystem::m_position
    IL_00f7:  ldc.r4     0.25
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      float32 Game.FireParticleSystem::m_size
    IL_0102:  mul
    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.Random Game.FireParticleSystem::m_random
    IL_0109:  ldc.r4     -1.
    IL_010e:  ldc.r4     1.
    IL_0113:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0118:  ldc.r4     0.0
    IL_011d:  ldarg.0
    IL_011e:  ldfld      class Game.Random Game.FireParticleSystem::m_random
    IL_0123:  ldc.r4     -1.
    IL_0128:  ldc.r4     1.
    IL_012d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0132:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0137:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_013c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0141:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0146:  ldloc.2
    IL_0147:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_014c:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0151:  ldloc.2
    IL_0152:  ldarg.0
    IL_0153:  ldfld      float32 Game.FireParticleSystem::m_size
    IL_0158:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_015d:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0162:  ldloc.2
    IL_0163:  ldarg.0
    IL_0164:  ldfld      class Game.Random Game.FireParticleSystem::m_random
    IL_0169:  ldc.r4     0.44999999
    IL_016e:  ldc.r4     0.55000001
    IL_0173:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0178:  ldarg.0
    IL_0179:  ldfld      float32 Game.FireParticleSystem::m_size
    IL_017e:  mul
    IL_017f:  ldc.r4     0.15000001
    IL_0184:  div
    IL_0185:  stfld      float32 Game.FireParticleSystem/Particle::Speed
    IL_018a:  ldloc.2
    IL_018b:  ldc.r4     0.0
    IL_0190:  stfld      float32 Game.FireParticleSystem/Particle::Time
    IL_0195:  ldloc.2
    IL_0196:  ldarg.0
    IL_0197:  ldfld      class Game.Random Game.FireParticleSystem::m_random
    IL_019c:  ldc.r4     0.5
    IL_01a1:  ldc.r4     2.
    IL_01a6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01ab:  stfld      float32 Game.FireParticleSystem/Particle::TimeToLive
    IL_01b0:  ldloc.2
    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      class Game.Random Game.FireParticleSystem::m_random
    IL_01b7:  ldc.i4.0
    IL_01b8:  ldc.i4.1
    IL_01b9:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01be:  ldc.i4.0
    IL_01bf:  ceq
    IL_01c1:  stfld      bool Game.Particle::FlipX
    IL_01c6:  ldloc.2
    IL_01c7:  ldarg.0
    IL_01c8:  ldfld      class Game.Random Game.FireParticleSystem::m_random
    IL_01cd:  ldc.i4.0
    IL_01ce:  ldc.i4.1
    IL_01cf:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01d4:  ldc.i4.0
    IL_01d5:  ceq
    IL_01d7:  stfld      bool Game.Particle::FlipY
    IL_01dc:  ldarg.0
    IL_01dd:  ldarg.0
    IL_01de:  ldfld      float32 Game.FireParticleSystem::m_toGenerate
    IL_01e3:  ldc.r4     1.
    IL_01e8:  sub
    IL_01e9:  stfld      float32 Game.FireParticleSystem::m_toGenerate
    IL_01ee:  ldloc.1
    IL_01ef:  ldc.i4.1
    IL_01f0:  add
    IL_01f1:  stloc.1
    IL_01f2:  ldloc.1
    IL_01f3:  ldarg.0
    IL_01f4:  call       instance !0[] class Game.ParticleSystem`1<class Game.FireParticleSystem/Particle>::get_Particles()
    IL_01f9:  ldlen
    IL_01fa:  conv.i4
    IL_01fb:  blt        IL_0052

    IL_0200:  ldarg.0
    IL_0201:  ldarg.0
    IL_0202:  ldfld      float32 Game.FireParticleSystem::m_toGenerate
    IL_0207:  ldc.r4     1.
    IL_020c:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0211:  stfld      float32 Game.FireParticleSystem::m_toGenerate
    IL_0216:  ldarg.0
    IL_0217:  ldc.i4.0
    IL_0218:  stfld      bool Game.FireParticleSystem::m_visible
    IL_021d:  ldarg.0
    IL_021e:  call       instance bool Game.FireParticleSystem::get_IsStopped()
    IL_0223:  brfalse.s  IL_022a

    IL_0225:  ldloc.0
    IL_0226:  ldc.i4.0
    IL_0227:  ceq
    IL_0229:  ret

    IL_022a:  ldc.i4.0
    IL_022b:  ret
  } // end of method FireParticleSystem::Simulate

  .method public hidebysig virtual instance void 
          Draw(class Game.Camera camera) cil managed
  {
    // 代码大小       93 (0x5d)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.FireParticleSystem::m_position
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_000c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0017:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  ldc.r4     -0.5
    IL_0023:  ble.un.s   IL_005c

    IL_0025:  ldloc.0
    IL_0026:  ldarg.0
    IL_0027:  ldfld      float32 Game.FireParticleSystem::m_maxVisibilityDistance
    IL_002c:  bgt.un.s   IL_005c

    IL_002e:  ldarg.0
    IL_002f:  ldfld      valuetype [Engine]Engine.Vector3 Game.FireParticleSystem::m_position
    IL_0034:  ldarg.1
    IL_0035:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_003a:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_003f:  ldarg.0
    IL_0040:  ldfld      float32 Game.FireParticleSystem::m_maxVisibilityDistance
    IL_0045:  ldarg.0
    IL_0046:  ldfld      float32 Game.FireParticleSystem::m_maxVisibilityDistance
    IL_004b:  mul
    IL_004c:  bgt.un.s   IL_005c

    IL_004e:  ldarg.0
    IL_004f:  ldc.i4.1
    IL_0050:  stfld      bool Game.FireParticleSystem::m_visible
    IL_0055:  ldarg.0
    IL_0056:  ldarg.1
    IL_0057:  call       instance void class Game.ParticleSystem`1<class Game.FireParticleSystem/Particle>::Draw(class Game.Camera)
    IL_005c:  ret
  } // end of method FireParticleSystem::Draw

  .property instance bool IsStopped()
  {
    .get instance bool Game.FireParticleSystem::get_IsStopped()
    .set instance void Game.FireParticleSystem::set_IsStopped(bool)
  } // end of property FireParticleSystem::IsStopped
} // end of class Game.FireParticleSystem