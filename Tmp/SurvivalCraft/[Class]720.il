.class public auto ansi beforefieldinit Game.GunSmokeParticleSystem
       extends class Game.ParticleSystem`1<class Game.GunSmokeParticleSystem/Particle>
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
  .field private float32 m_toGenerate
  .field private valuetype [Engine]Engine.Vector3 m_position
  .field private valuetype [Engine]Engine.Vector3 m_direction
  .field private valuetype [Engine]Engine.Color m_color
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain terrain,
                               valuetype [Engine]Engine.Vector3 position,
                               valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       252 (0xfc)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             float32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.GunSmokeParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   50
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.GunSmokeParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldstr      "Textures/GunSmokeParticle"
    IL_0019:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_001e:  call       instance void class Game.ParticleSystem`1<class Game.GunSmokeParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.3
    IL_0025:  call       instance void class Game.ParticleSystem`1<class Game.GunSmokeParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_002a:  ldarg.0
    IL_002b:  ldarg.2
    IL_002c:  stfld      valuetype [Engine]Engine.Vector3 Game.GunSmokeParticleSystem::m_position
    IL_0031:  ldarg.0
    IL_0032:  ldarg.3
    IL_0033:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0038:  stfld      valuetype [Engine]Engine.Vector3 Game.GunSmokeParticleSystem::m_direction
    IL_003d:  ldarg.2
    IL_003e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0043:  conv.i4
    IL_0044:  stloc.0
    IL_0045:  ldarg.2
    IL_0046:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_004b:  conv.i4
    IL_004c:  stloc.1
    IL_004d:  ldarg.2
    IL_004e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0053:  conv.i4
    IL_0054:  stloc.2
    IL_0055:  ldc.i4.0
    IL_0056:  stloc.3
    IL_0057:  ldloc.3
    IL_0058:  ldarg.1
    IL_0059:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005e:  ldloc.0
    IL_005f:  ldc.i4.1
    IL_0060:  add
    IL_0061:  ldloc.1
    IL_0062:  ldloc.2
    IL_0063:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0068:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_006d:  stloc.3
    IL_006e:  ldloc.3
    IL_006f:  ldarg.1
    IL_0070:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0075:  ldloc.0
    IL_0076:  ldc.i4.1
    IL_0077:  sub
    IL_0078:  ldloc.1
    IL_0079:  ldloc.2
    IL_007a:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_007f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0084:  stloc.3
    IL_0085:  ldloc.3
    IL_0086:  ldarg.1
    IL_0087:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_008c:  ldloc.0
    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.1
    IL_008f:  add
    IL_0090:  ldloc.2
    IL_0091:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0096:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_009b:  stloc.3
    IL_009c:  ldloc.3
    IL_009d:  ldarg.1
    IL_009e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a3:  ldloc.0
    IL_00a4:  ldloc.1
    IL_00a5:  ldc.i4.1
    IL_00a6:  sub
    IL_00a7:  ldloc.2
    IL_00a8:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00ad:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00b2:  stloc.3
    IL_00b3:  ldloc.3
    IL_00b4:  ldarg.1
    IL_00b5:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00ba:  ldloc.0
    IL_00bb:  ldloc.1
    IL_00bc:  ldloc.2
    IL_00bd:  ldc.i4.1
    IL_00be:  add
    IL_00bf:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00c4:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00c9:  stloc.3
    IL_00ca:  ldloc.3
    IL_00cb:  ldarg.1
    IL_00cc:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00d1:  ldloc.0
    IL_00d2:  ldloc.1
    IL_00d3:  ldloc.2
    IL_00d4:  ldc.i4.1
    IL_00d5:  sub
    IL_00d6:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00db:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00e0:  stloc.3
    IL_00e1:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00e6:  ldloc.3
    IL_00e7:  ldelem.r4
    IL_00e8:  stloc.s    V_4
    IL_00ea:  ldarg.0
    IL_00eb:  ldloc.s    V_4
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  ldloc.s    V_4
    IL_00f1:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32)
    IL_00f6:  stfld      valuetype [Engine]Engine.Color Game.GunSmokeParticleSystem::m_color
    IL_00fb:  ret
  } // end of method GunSmokeParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
  {
    // 代码大小       712 (0x2c8)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             bool V_4,
             int32 V_5,
             class Game.GunSmokeParticleSystem/Particle V_6,
             valuetype [Engine]Engine.Vector3 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.GunSmokeParticleSystem::m_time
    IL_0007:  ldarg.2
    IL_0008:  add
    IL_0009:  stfld      float32 Game.GunSmokeParticleSystem::m_time
    IL_000e:  ldc.r4     150.
    IL_0013:  ldc.r4     20.
    IL_0018:  ldc.r4     2.
    IL_001d:  ldarg.0
    IL_001e:  ldfld      float32 Game.GunSmokeParticleSystem::m_time
    IL_0023:  mul
    IL_0024:  ldc.r4     0.5
    IL_0029:  div
    IL_002a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_002f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0034:  stloc.0
    IL_0035:  ldc.r4     9.9999998e-003
    IL_003a:  ldarg.2
    IL_003b:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0040:  stloc.1
    IL_0041:  ldc.r4     20.
    IL_0046:  ldc.r4     0.0
    IL_004b:  ldc.r4     2.
    IL_0050:  ldarg.0
    IL_0051:  ldfld      float32 Game.GunSmokeParticleSystem::m_time
    IL_0056:  mul
    IL_0057:  ldc.r4     0.5
    IL_005c:  div
    IL_005d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0062:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0067:  stloc.2
    IL_0068:  ldloca.s   V_3
    IL_006a:  ldc.r4     2.
    IL_006f:  ldc.r4     2.
    IL_0074:  ldc.r4     1.
    IL_0079:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_007e:  ldarg.0
    IL_007f:  ldfld      float32 Game.GunSmokeParticleSystem::m_time
    IL_0084:  ldc.r4     0.5
    IL_0089:  bge.un.s   IL_009d

    IL_008b:  ldarg.0
    IL_008c:  ldarg.0
    IL_008d:  ldfld      float32 Game.GunSmokeParticleSystem::m_toGenerate
    IL_0092:  ldloc.0
    IL_0093:  ldarg.2
    IL_0094:  mul
    IL_0095:  add
    IL_0096:  stfld      float32 Game.GunSmokeParticleSystem::m_toGenerate
    IL_009b:  br.s       IL_00a8

    IL_009d:  ldarg.0
    IL_009e:  ldc.r4     0.0
    IL_00a3:  stfld      float32 Game.GunSmokeParticleSystem::m_toGenerate
    IL_00a8:  ldc.i4.0
    IL_00a9:  stloc.s    V_4
    IL_00ab:  ldc.i4.0
    IL_00ac:  stloc.s    V_5
    IL_00ae:  br         IL_028e

    IL_00b3:  ldarg.0
    IL_00b4:  call       instance !0[] class Game.ParticleSystem`1<class Game.GunSmokeParticleSystem/Particle>::get_Particles()
    IL_00b9:  ldloc.s    V_5
    IL_00bb:  ldelem.ref
    IL_00bc:  stloc.s    V_6
    IL_00be:  ldloc.s    V_6
    IL_00c0:  ldfld      bool Game.Particle::IsActive
    IL_00c5:  brfalse    IL_0184

    IL_00ca:  ldc.i4.1
    IL_00cb:  stloc.s    V_4
    IL_00cd:  ldloc.s    V_6
    IL_00cf:  dup
    IL_00d0:  ldfld      float32 Game.GunSmokeParticleSystem/Particle::Time
    IL_00d5:  ldarg.2
    IL_00d6:  add
    IL_00d7:  stfld      float32 Game.GunSmokeParticleSystem/Particle::Time
    IL_00dc:  ldloc.s    V_6
    IL_00de:  ldfld      float32 Game.GunSmokeParticleSystem/Particle::Time
    IL_00e3:  ldloc.s    V_6
    IL_00e5:  ldfld      float32 Game.GunSmokeParticleSystem/Particle::Duration
    IL_00ea:  bgt.un     IL_0177

    IL_00ef:  ldloc.s    V_6
    IL_00f1:  dup
    IL_00f2:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_00f7:  ldloc.s    V_6
    IL_00f9:  ldfld      valuetype [Engine]Engine.Vector3 Game.GunSmokeParticleSystem/Particle::Velocity
    IL_00fe:  ldarg.2
    IL_00ff:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0104:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0109:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_010e:  ldloc.s    V_6
    IL_0110:  dup
    IL_0111:  ldfld      valuetype [Engine]Engine.Vector3 Game.GunSmokeParticleSystem/Particle::Velocity
    IL_0116:  ldloc.1
    IL_0117:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_011c:  stfld      valuetype [Engine]Engine.Vector3 Game.GunSmokeParticleSystem/Particle::Velocity
    IL_0121:  ldloc.s    V_6
    IL_0123:  dup
    IL_0124:  ldfld      valuetype [Engine]Engine.Vector3 Game.GunSmokeParticleSystem/Particle::Velocity
    IL_0129:  ldloc.3
    IL_012a:  ldarg.2
    IL_012b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0130:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0135:  stfld      valuetype [Engine]Engine.Vector3 Game.GunSmokeParticleSystem/Particle::Velocity
    IL_013a:  ldloc.s    V_6
    IL_013c:  ldc.r4     9.
    IL_0141:  ldloc.s    V_6
    IL_0143:  ldfld      float32 Game.GunSmokeParticleSystem/Particle::Time
    IL_0148:  mul
    IL_0149:  ldloc.s    V_6
    IL_014b:  ldfld      float32 Game.GunSmokeParticleSystem/Particle::Duration
    IL_0150:  div
    IL_0151:  ldc.r4     8.
    IL_0156:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_015b:  conv.i4
    IL_015c:  stfld      int32 Game.Particle::TextureSlot
    IL_0161:  ldloc.s    V_6
    IL_0163:  ldc.r4     0.30000001
    IL_0168:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_016d:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0172:  br         IL_0288

    IL_0177:  ldloc.s    V_6
    IL_0179:  ldc.i4.0
    IL_017a:  stfld      bool Game.Particle::IsActive
    IL_017f:  br         IL_0288

    IL_0184:  ldarg.0
    IL_0185:  ldfld      float32 Game.GunSmokeParticleSystem::m_toGenerate
    IL_018a:  ldc.r4     1.
    IL_018f:  blt.un     IL_0288

    IL_0194:  ldloc.s    V_6
    IL_0196:  ldc.i4.1
    IL_0197:  stfld      bool Game.Particle::IsActive
    IL_019c:  ldarg.0
    IL_019d:  ldfld      class Game.Random Game.GunSmokeParticleSystem::m_random
    IL_01a2:  ldc.r4     0.0
    IL_01a7:  ldc.r4     1.
    IL_01ac:  ldc.i4.0
    IL_01ad:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                               float32,
                                                                                               bool)
    IL_01b2:  stloc.s    V_7
    IL_01b4:  ldloc.s    V_6
    IL_01b6:  ldarg.0
    IL_01b7:  ldfld      valuetype [Engine]Engine.Vector3 Game.GunSmokeParticleSystem::m_position
    IL_01bc:  ldc.r4     0.30000001
    IL_01c1:  ldloc.s    V_7
    IL_01c3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01cd:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01d2:  ldloc.s    V_6
    IL_01d4:  ldarg.0
    IL_01d5:  ldfld      valuetype [Engine]Engine.Color Game.GunSmokeParticleSystem::m_color
    IL_01da:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01df:  ldloc.s    V_6
    IL_01e1:  ldloc.2
    IL_01e2:  ldarg.0
    IL_01e3:  ldfld      valuetype [Engine]Engine.Vector3 Game.GunSmokeParticleSystem::m_direction
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      class Game.Random Game.GunSmokeParticleSystem::m_random
    IL_01ee:  ldc.r4     0.0
    IL_01f3:  ldc.r4     0.1
    IL_01f8:  ldc.i4.0
    IL_01f9:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                               float32,
                                                                                               bool)
    IL_01fe:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0203:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0208:  ldc.r4     2.5
    IL_020d:  ldloc.s    V_7
    IL_020f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0214:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0219:  stfld      valuetype [Engine]Engine.Vector3 Game.GunSmokeParticleSystem/Particle::Velocity
    IL_021e:  ldloc.s    V_6
    IL_0220:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0225:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_022a:  ldloc.s    V_6
    IL_022c:  ldc.r4     0.0
    IL_0231:  stfld      float32 Game.GunSmokeParticleSystem/Particle::Time
    IL_0236:  ldloc.s    V_6
    IL_0238:  ldarg.0
    IL_0239:  ldfld      class Game.Random Game.GunSmokeParticleSystem::m_random
    IL_023e:  ldc.r4     0.5
    IL_0243:  ldc.r4     2.
    IL_0248:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_024d:  stfld      float32 Game.GunSmokeParticleSystem/Particle::Duration
    IL_0252:  ldloc.s    V_6
    IL_0254:  ldarg.0
    IL_0255:  ldfld      class Game.Random Game.GunSmokeParticleSystem::m_random
    IL_025a:  callvirt   instance bool Game.Random::Bool()
    IL_025f:  stfld      bool Game.Particle::FlipX
    IL_0264:  ldloc.s    V_6
    IL_0266:  ldarg.0
    IL_0267:  ldfld      class Game.Random Game.GunSmokeParticleSystem::m_random
    IL_026c:  callvirt   instance bool Game.Random::Bool()
    IL_0271:  stfld      bool Game.Particle::FlipY
    IL_0276:  ldarg.0
    IL_0277:  ldarg.0
    IL_0278:  ldfld      float32 Game.GunSmokeParticleSystem::m_toGenerate
    IL_027d:  ldc.r4     1.
    IL_0282:  sub
    IL_0283:  stfld      float32 Game.GunSmokeParticleSystem::m_toGenerate
    IL_0288:  ldloc.s    V_5
    IL_028a:  ldc.i4.1
    IL_028b:  add
    IL_028c:  stloc.s    V_5
    IL_028e:  ldloc.s    V_5
    IL_0290:  ldarg.0
    IL_0291:  call       instance !0[] class Game.ParticleSystem`1<class Game.GunSmokeParticleSystem/Particle>::get_Particles()
    IL_0296:  ldlen
    IL_0297:  conv.i4
    IL_0298:  blt        IL_00b3

    IL_029d:  ldarg.0
    IL_029e:  ldarg.0
    IL_029f:  ldfld      float32 Game.GunSmokeParticleSystem::m_toGenerate
    IL_02a4:  ldc.r4     1.
    IL_02a9:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_02ae:  stfld      float32 Game.GunSmokeParticleSystem::m_toGenerate
    IL_02b3:  ldloc.s    V_4
    IL_02b5:  brtrue.s   IL_02c6

    IL_02b7:  ldarg.0
    IL_02b8:  ldfld      float32 Game.GunSmokeParticleSystem::m_time
    IL_02bd:  ldc.r4     0.5
    IL_02c2:  blt.un.s   IL_02c6

    IL_02c4:  ldc.i4.1
    IL_02c5:  ret

    IL_02c6:  ldc.i4.0
    IL_02c7:  ret
  } // end of method GunSmokeParticleSystem::Simulate

} // end of class Game.GunSmokeParticleSystem