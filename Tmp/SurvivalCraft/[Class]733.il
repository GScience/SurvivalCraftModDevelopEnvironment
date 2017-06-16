.class public auto ansi beforefieldinit Game.WaterSplashParticleSystem
       extends class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public valuetype [Engine]Engine.Vector3 Velocity
    .field public float32 TimeToLive
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
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private valuetype [Engine]Engine.Vector3 m_position
  .field private float32 m_time
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain terrain,
                               valuetype [Engine]Engine.Vector3 position,
                               bool large) cil managed
  {
    // 代码大小       550 (0x226)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Color V_4,
             float32 V_5,
             float32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             float32 V_9)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   100
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      class Game.SubsystemTerrain Game.WaterSplashParticleSystem::m_subsystemTerrain
    IL_001a:  ldarg.0
    IL_001b:  ldarg.2
    IL_001c:  stfld      valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem::m_position
    IL_0021:  ldarg.0
    IL_0022:  ldstr      "Textures/WaterSplashParticle"
    IL_0027:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_002c:  call       instance void class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0031:  ldarg.0
    IL_0032:  ldc.i4.2
    IL_0033:  call       instance void class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_0038:  ldarg.2
    IL_0039:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_003e:  conv.i4
    IL_003f:  stloc.0
    IL_0040:  ldarg.2
    IL_0041:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0046:  conv.i4
    IL_0047:  stloc.1
    IL_0048:  ldarg.2
    IL_0049:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_004e:  conv.i4
    IL_004f:  stloc.2
    IL_0050:  ldc.i4.0
    IL_0051:  stloc.3
    IL_0052:  ldloc.3
    IL_0053:  ldarg.1
    IL_0054:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0059:  ldloc.0
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  ldloc.1
    IL_005d:  ldloc.2
    IL_005e:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0063:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0068:  stloc.3
    IL_0069:  ldloc.3
    IL_006a:  ldarg.1
    IL_006b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0070:  ldloc.0
    IL_0071:  ldc.i4.1
    IL_0072:  sub
    IL_0073:  ldloc.1
    IL_0074:  ldloc.2
    IL_0075:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_007a:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_007f:  stloc.3
    IL_0080:  ldloc.3
    IL_0081:  ldarg.1
    IL_0082:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0087:  ldloc.0
    IL_0088:  ldloc.1
    IL_0089:  ldc.i4.1
    IL_008a:  add
    IL_008b:  ldloc.2
    IL_008c:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0091:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0096:  stloc.3
    IL_0097:  ldloc.3
    IL_0098:  ldarg.1
    IL_0099:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_009e:  ldloc.0
    IL_009f:  ldloc.1
    IL_00a0:  ldc.i4.1
    IL_00a1:  sub
    IL_00a2:  ldloc.2
    IL_00a3:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00a8:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00ad:  stloc.3
    IL_00ae:  ldloc.3
    IL_00af:  ldarg.1
    IL_00b0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00b5:  ldloc.0
    IL_00b6:  ldloc.1
    IL_00b7:  ldloc.2
    IL_00b8:  ldc.i4.1
    IL_00b9:  add
    IL_00ba:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00bf:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00c4:  stloc.3
    IL_00c5:  ldloc.3
    IL_00c6:  ldarg.1
    IL_00c7:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00cc:  ldloc.0
    IL_00cd:  ldloc.1
    IL_00ce:  ldloc.2
    IL_00cf:  ldc.i4.1
    IL_00d0:  sub
    IL_00d1:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00d6:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00db:  stloc.3
    IL_00dc:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00e1:  stloc.s    V_4
    IL_00e3:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00e8:  ldloc.3
    IL_00e9:  ldelem.r4
    IL_00ea:  stloc.s    V_5
    IL_00ec:  ldloc.s    V_4
    IL_00ee:  ldloc.s    V_5
    IL_00f0:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00f5:  stloc.s    V_4
    IL_00f7:  ldloca.s   V_4
    IL_00f9:  ldc.i4     0xff
    IL_00fe:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0103:  ldarg.3
    IL_0104:  brtrue.s   IL_010d

    IL_0106:  ldc.r4     1.
    IL_010b:  br.s       IL_0112

    IL_010d:  ldc.r4     1.5
    IL_0112:  stloc.s    V_6
    IL_0114:  ldc.i4.0
    IL_0115:  stloc.s    V_7
    IL_0117:  br         IL_0216

    IL_011c:  ldarg.0
    IL_011d:  call       instance !0[] class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::get_Particles()
    IL_0122:  ldloc.s    V_7
    IL_0124:  ldelem.ref
    IL_0125:  dup
    IL_0126:  ldc.i4.1
    IL_0127:  stfld      bool Game.Particle::IsActive
    IL_012c:  dup
    IL_012d:  ldarg.2
    IL_012e:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0133:  dup
    IL_0134:  ldloc.s    V_4
    IL_0136:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_013b:  dup
    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_0142:  ldc.r4     5.9999999e-002
    IL_0147:  ldc.r4     9.0000004e-002
    IL_014c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0151:  ldloc.s    V_6
    IL_0153:  mul
    IL_0154:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0159:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_015e:  dup
    IL_015f:  dup
    IL_0160:  ldarg.0
    IL_0161:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_0166:  ldc.r4     0.5
    IL_016b:  ldc.r4     2.
    IL_0170:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0175:  dup
    IL_0176:  stloc.s    V_9
    IL_0178:  stfld      float32 Game.WaterSplashParticleSystem/Particle::Duration
    IL_017d:  ldloc.s    V_9
    IL_017f:  stfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_0184:  ldarg.0
    IL_0185:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_018a:  ldc.r4     0.0
    IL_018f:  ldc.r4     1.
    IL_0194:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0199:  ldarg.0
    IL_019a:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_019f:  ldc.r4     -1.
    IL_01a4:  ldc.r4     1.
    IL_01a9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01ae:  ldc.r4     0.0
    IL_01b3:  ldarg.0
    IL_01b4:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_01b9:  ldc.r4     -1.
    IL_01be:  ldc.r4     1.
    IL_01c3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01c8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01cd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_01d2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01d7:  stloc.s    V_8
    IL_01d9:  ldloc.s    V_6
    IL_01db:  ldloc.s    V_8
    IL_01dd:  ldc.r4     0.0
    IL_01e2:  ldarg.0
    IL_01e3:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_01e8:  ldc.r4     0.0
    IL_01ed:  ldc.r4     3.
    IL_01f2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01f7:  ldc.r4     0.0
    IL_01fc:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0201:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0206:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_020b:  stfld      valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem/Particle::Velocity
    IL_0210:  ldloc.s    V_7
    IL_0212:  ldc.i4.1
    IL_0213:  add
    IL_0214:  stloc.s    V_7
    IL_0216:  ldloc.s    V_7
    IL_0218:  ldarg.0
    IL_0219:  call       instance !0[] class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::get_Particles()
    IL_021e:  ldlen
    IL_021f:  conv.i4
    IL_0220:  blt        IL_011c

    IL_0225:  ret
  } // end of method WaterSplashParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
  {
    // 代码大小       683 (0x2ab)
    .maxstack  4
    .locals init (float32 V_0,
             bool V_1,
             int32 V_2,
             class Game.WaterSplashParticleSystem/Particle V_3,
             int32 V_4,
             int32 V_5,
             class Game.Block V_6,
             int32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10)
    IL_0000:  ldarg.2
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     0.1
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0010:  starg.s    dt
    IL_0012:  ldc.r4     0.25
    IL_0017:  ldarg.2
    IL_0018:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  ldfld      float32 Game.WaterSplashParticleSystem::m_time
    IL_0025:  ldarg.2
    IL_0026:  add
    IL_0027:  stfld      float32 Game.WaterSplashParticleSystem::m_time
    IL_002c:  ldc.i4.0
    IL_002d:  stloc.1
    IL_002e:  ldc.i4.0
    IL_002f:  stloc.2
    IL_0030:  br         IL_0298

    IL_0035:  ldarg.0
    IL_0036:  call       instance !0[] class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::get_Particles()
    IL_003b:  ldloc.2
    IL_003c:  ldelem.ref
    IL_003d:  stloc.3
    IL_003e:  ldloc.3
    IL_003f:  ldfld      bool Game.Particle::IsActive
    IL_0044:  brfalse    IL_0294

    IL_0049:  ldc.i4.1
    IL_004a:  stloc.1
    IL_004b:  ldloc.3
    IL_004c:  dup
    IL_004d:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0052:  ldloc.3
    IL_0053:  ldfld      valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem/Particle::Velocity
    IL_0058:  ldarg.2
    IL_0059:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_005e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0063:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0068:  ldloc.3
    IL_0069:  ldflda     valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem/Particle::Velocity
    IL_006e:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0073:  dup
    IL_0074:  ldind.r4
    IL_0075:  ldc.r4     -10.
    IL_007a:  ldarg.2
    IL_007b:  mul
    IL_007c:  add
    IL_007d:  stind.r4
    IL_007e:  ldloc.3
    IL_007f:  dup
    IL_0080:  ldfld      valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem/Particle::Velocity
    IL_0085:  ldloc.0
    IL_0086:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_008b:  stfld      valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem/Particle::Velocity
    IL_0090:  ldloc.3
    IL_0091:  dup
    IL_0092:  ldfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0097:  ldloc.3
    IL_0098:  ldfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_009d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00a2:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00a7:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_00ac:  ldloc.3
    IL_00ad:  dup
    IL_00ae:  ldfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_00b3:  ldarg.2
    IL_00b4:  sub
    IL_00b5:  stfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_00ba:  ldloc.3
    IL_00bb:  ldc.r4     3.99
    IL_00c0:  ldloc.3
    IL_00c1:  ldfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_00c6:  mul
    IL_00c7:  ldloc.3
    IL_00c8:  ldfld      float32 Game.WaterSplashParticleSystem/Particle::Duration
    IL_00cd:  div
    IL_00ce:  conv.i4
    IL_00cf:  stfld      int32 Game.Particle::TextureSlot
    IL_00d4:  ldloc.3
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_00db:  callvirt   instance int32 Game.Random::Sign()
    IL_00e0:  ldc.i4.0
    IL_00e1:  cgt
    IL_00e3:  stfld      bool Game.Particle::FlipX
    IL_00e8:  ldloc.3
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_00ef:  callvirt   instance int32 Game.Random::Sign()
    IL_00f4:  ldc.i4.0
    IL_00f5:  cgt
    IL_00f7:  stfld      bool Game.Particle::FlipY
    IL_00fc:  ldloc.3
    IL_00fd:  ldfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_0102:  ldc.r4     0.0
    IL_0107:  ble.s      IL_011b

    IL_0109:  ldloc.3
    IL_010a:  ldflda     valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_010f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0114:  ldc.r4     0.0
    IL_0119:  bgt.un.s   IL_0127

    IL_011b:  ldloc.3
    IL_011c:  ldc.i4.0
    IL_011d:  stfld      bool Game.Particle::IsActive
    IL_0122:  br         IL_0294

    IL_0127:  ldarg.0
    IL_0128:  ldfld      class Game.SubsystemTerrain Game.WaterSplashParticleSystem::m_subsystemTerrain
    IL_012d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0132:  ldloc.3
    IL_0133:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0138:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_013d:  conv.i4
    IL_013e:  ldloc.3
    IL_013f:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0144:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0149:  conv.i4
    IL_014a:  ldloc.3
    IL_014b:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0150:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0155:  conv.i4
    IL_0156:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_015b:  stloc.s    V_4
    IL_015d:  ldloc.s    V_4
    IL_015f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0164:  stloc.s    V_5
    IL_0166:  ldloc.s    V_5
    IL_0168:  brfalse    IL_0294

    IL_016d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0172:  ldloc.s    V_5
    IL_0174:  ldelem.ref
    IL_0175:  stloc.s    V_6
    IL_0177:  ldloc.s    V_6
    IL_0179:  ldfld      bool Game.Block::IsCollidable
    IL_017e:  brfalse.s  IL_018c

    IL_0180:  ldloc.3
    IL_0181:  ldc.i4.1
    IL_0182:  stfld      bool Game.Particle::IsActive
    IL_0187:  br         IL_0294

    IL_018c:  ldloc.s    V_6
    IL_018e:  isinst     Game.WaterBlock
    IL_0193:  brfalse    IL_0294

    IL_0198:  ldloc.s    V_4
    IL_019a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_019f:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_01a4:  stloc.s    V_7
    IL_01a6:  ldloc.s    V_6
    IL_01a8:  castclass  Game.WaterBlock
    IL_01ad:  ldloc.s    V_7
    IL_01af:  callvirt   instance float32 Game.FluidBlock::GetLevelHeight(int32)
    IL_01b4:  stloc.s    V_8
    IL_01b6:  ldloc.3
    IL_01b7:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01bc:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01c1:  ldloc.3
    IL_01c2:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01c7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01cc:  conv.i4
    IL_01cd:  conv.r4
    IL_01ce:  ldloc.s    V_8
    IL_01d0:  add
    IL_01d1:  bgt.un     IL_0294

    IL_01d6:  ldloc.3
    IL_01d7:  ldflda     valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem/Particle::Velocity
    IL_01dc:  ldc.r4     0.0
    IL_01e1:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_01e6:  ldloc.3
    IL_01e7:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01ec:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01f1:  ldloc.3
    IL_01f2:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01f7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01fc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0201:  ldarg.0
    IL_0202:  ldflda     valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem::m_position
    IL_0207:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_020c:  ldarg.0
    IL_020d:  ldflda     valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem::m_position
    IL_0212:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0217:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_021c:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0221:  stloc.s    V_9
    IL_0223:  ldc.r4     2.e-002
    IL_0228:  ldc.r4     2.
    IL_022d:  ldloc.s    V_9
    IL_022f:  mul
    IL_0230:  ldc.r4     10.
    IL_0235:  ldarg.0
    IL_0236:  ldfld      float32 Game.WaterSplashParticleSystem::m_time
    IL_023b:  mul
    IL_023c:  add
    IL_023d:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0242:  mul
    IL_0243:  stloc.s    V_10
    IL_0245:  ldloc.3
    IL_0246:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_024b:  ldloc.3
    IL_024c:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0251:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0256:  conv.i4
    IL_0257:  conv.r4
    IL_0258:  ldloc.s    V_8
    IL_025a:  add
    IL_025b:  ldloc.s    V_10
    IL_025d:  add
    IL_025e:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0263:  ldloc.3
    IL_0264:  dup
    IL_0265:  ldfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_026a:  ldc.r4     1.
    IL_026f:  ldarg.2
    IL_0270:  mul
    IL_0271:  sub
    IL_0272:  stfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_0277:  ldloc.3
    IL_0278:  dup
    IL_0279:  ldfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_027e:  ldc.r4     3.9999999e-002
    IL_0283:  ldarg.2
    IL_0284:  mul
    IL_0285:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_028a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_028f:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0294:  ldloc.2
    IL_0295:  ldc.i4.1
    IL_0296:  add
    IL_0297:  stloc.2
    IL_0298:  ldloc.2
    IL_0299:  ldarg.0
    IL_029a:  call       instance !0[] class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::get_Particles()
    IL_029f:  ldlen
    IL_02a0:  conv.i4
    IL_02a1:  blt        IL_0035

    IL_02a6:  ldloc.1
    IL_02a7:  ldc.i4.0
    IL_02a8:  ceq
    IL_02aa:  ret
  } // end of method WaterSplashParticleSystem::Simulate

} // end of class Game.WaterSplashParticleSystem