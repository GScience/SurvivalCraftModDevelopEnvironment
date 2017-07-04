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
    // 代码大小       552 (0x228)
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
    IL_000c:  ldc.i4.s   60
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
    IL_003e:  call       int32 Game.Terrain::ToCell(float32)
    IL_0043:  stloc.0
    IL_0044:  ldarg.2
    IL_0045:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_004a:  call       int32 Game.Terrain::ToCell(float32)
    IL_004f:  stloc.1
    IL_0050:  ldarg.2
    IL_0051:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0056:  call       int32 Game.Terrain::ToCell(float32)
    IL_005b:  stloc.2
    IL_005c:  ldc.i4.0
    IL_005d:  stloc.3
    IL_005e:  ldloc.3
    IL_005f:  ldarg.1
    IL_0060:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0065:  ldloc.0
    IL_0066:  ldc.i4.1
    IL_0067:  add
    IL_0068:  ldloc.1
    IL_0069:  ldloc.2
    IL_006a:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_006f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0074:  stloc.3
    IL_0075:  ldloc.3
    IL_0076:  ldarg.1
    IL_0077:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_007c:  ldloc.0
    IL_007d:  ldc.i4.1
    IL_007e:  sub
    IL_007f:  ldloc.1
    IL_0080:  ldloc.2
    IL_0081:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0086:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_008b:  stloc.3
    IL_008c:  ldloc.3
    IL_008d:  ldarg.1
    IL_008e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0093:  ldloc.0
    IL_0094:  ldloc.1
    IL_0095:  ldc.i4.1
    IL_0096:  add
    IL_0097:  ldloc.2
    IL_0098:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_009d:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00a2:  stloc.3
    IL_00a3:  ldloc.3
    IL_00a4:  ldarg.1
    IL_00a5:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00aa:  ldloc.0
    IL_00ab:  ldloc.1
    IL_00ac:  ldc.i4.1
    IL_00ad:  sub
    IL_00ae:  ldloc.2
    IL_00af:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00b4:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00b9:  stloc.3
    IL_00ba:  ldloc.3
    IL_00bb:  ldarg.1
    IL_00bc:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00c1:  ldloc.0
    IL_00c2:  ldloc.1
    IL_00c3:  ldloc.2
    IL_00c4:  ldc.i4.1
    IL_00c5:  add
    IL_00c6:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00cb:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00d0:  stloc.3
    IL_00d1:  ldloc.3
    IL_00d2:  ldarg.1
    IL_00d3:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00d8:  ldloc.0
    IL_00d9:  ldloc.1
    IL_00da:  ldloc.2
    IL_00db:  ldc.i4.1
    IL_00dc:  sub
    IL_00dd:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00e2:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00e7:  stloc.3
    IL_00e8:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00ed:  stloc.s    V_4
    IL_00ef:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00f4:  ldloc.3
    IL_00f5:  ldelem.r4
    IL_00f6:  stloc.s    V_5
    IL_00f8:  ldloc.s    V_4
    IL_00fa:  ldloc.s    V_5
    IL_00fc:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0101:  stloc.s    V_4
    IL_0103:  ldloca.s   V_4
    IL_0105:  ldc.i4     0xff
    IL_010a:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_010f:  ldarg.3
    IL_0110:  brtrue.s   IL_0119

    IL_0112:  ldc.r4     1.
    IL_0117:  br.s       IL_011e

    IL_0119:  ldc.r4     1.5
    IL_011e:  stloc.s    V_6
    IL_0120:  ldc.i4.0
    IL_0121:  stloc.s    V_7
    IL_0123:  br         IL_0218

    IL_0128:  ldarg.0
    IL_0129:  call       instance !0[] class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::get_Particles()
    IL_012e:  ldloc.s    V_7
    IL_0130:  ldelem.ref
    IL_0131:  dup
    IL_0132:  ldc.i4.1
    IL_0133:  stfld      bool Game.Particle::IsActive
    IL_0138:  dup
    IL_0139:  ldarg.2
    IL_013a:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_013f:  dup
    IL_0140:  ldloc.s    V_4
    IL_0142:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0147:  dup
    IL_0148:  ldc.r4     0.14
    IL_014d:  ldloc.s    V_6
    IL_014f:  mul
    IL_0150:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0155:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_015a:  dup
    IL_015b:  dup
    IL_015c:  ldarg.0
    IL_015d:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_0162:  ldc.r4     0.5
    IL_0167:  ldc.r4     2.5
    IL_016c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0171:  dup
    IL_0172:  stloc.s    V_9
    IL_0174:  stfld      float32 Game.WaterSplashParticleSystem/Particle::Duration
    IL_0179:  ldloc.s    V_9
    IL_017b:  stfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_0180:  ldc.r4     1.5
    IL_0185:  ldarg.0
    IL_0186:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_018b:  ldc.r4     0.0
    IL_0190:  ldc.r4     1.
    IL_0195:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_019a:  mul
    IL_019b:  ldarg.0
    IL_019c:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_01a1:  ldc.r4     -1.
    IL_01a6:  ldc.r4     1.
    IL_01ab:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01b0:  ldc.r4     0.0
    IL_01b5:  ldarg.0
    IL_01b6:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_01bb:  ldc.r4     -1.
    IL_01c0:  ldc.r4     1.
    IL_01c5:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01ca:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01cf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_01d4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01d9:  stloc.s    V_8
    IL_01db:  ldloc.s    V_6
    IL_01dd:  ldloc.s    V_8
    IL_01df:  ldc.r4     0.0
    IL_01e4:  ldarg.0
    IL_01e5:  ldfld      class Game.Random Game.WaterSplashParticleSystem::m_random
    IL_01ea:  ldc.r4     0.0
    IL_01ef:  ldc.r4     5.
    IL_01f4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01f9:  ldc.r4     0.0
    IL_01fe:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0203:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0208:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_020d:  stfld      valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem/Particle::Velocity
    IL_0212:  ldloc.s    V_7
    IL_0214:  ldc.i4.1
    IL_0215:  add
    IL_0216:  stloc.s    V_7
    IL_0218:  ldloc.s    V_7
    IL_021a:  ldarg.0
    IL_021b:  call       instance !0[] class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::get_Particles()
    IL_0220:  ldlen
    IL_0221:  conv.i4
    IL_0222:  blt        IL_0128

    IL_0227:  ret
  } // end of method WaterSplashParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       701 (0x2bd)
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
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     0.1
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0010:  starg.s    dt
    IL_0012:  ldc.r4     0.1
    IL_0017:  ldarg.1
    IL_0018:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  ldfld      float32 Game.WaterSplashParticleSystem::m_time
    IL_0025:  ldarg.1
    IL_0026:  add
    IL_0027:  stfld      float32 Game.WaterSplashParticleSystem::m_time
    IL_002c:  ldc.i4.0
    IL_002d:  stloc.1
    IL_002e:  ldc.i4.0
    IL_002f:  stloc.2
    IL_0030:  br         IL_02aa

    IL_0035:  ldarg.0
    IL_0036:  call       instance !0[] class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::get_Particles()
    IL_003b:  ldloc.2
    IL_003c:  ldelem.ref
    IL_003d:  stloc.3
    IL_003e:  ldloc.3
    IL_003f:  ldfld      bool Game.Particle::IsActive
    IL_0044:  brfalse    IL_02a6

    IL_0049:  ldc.i4.1
    IL_004a:  stloc.1
    IL_004b:  ldloc.3
    IL_004c:  dup
    IL_004d:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0052:  ldloc.3
    IL_0053:  ldfld      valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem/Particle::Velocity
    IL_0058:  ldarg.1
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
    IL_007a:  ldarg.1
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
    IL_00b3:  ldarg.1
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
    IL_0122:  br         IL_02a6

    IL_0127:  ldarg.0
    IL_0128:  ldfld      class Game.SubsystemTerrain Game.WaterSplashParticleSystem::m_subsystemTerrain
    IL_012d:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0132:  ldloc.3
    IL_0133:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0138:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_013d:  call       int32 Game.Terrain::ToCell(float32)
    IL_0142:  ldloc.3
    IL_0143:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0148:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_014d:  call       int32 Game.Terrain::ToCell(float32)
    IL_0152:  ldloc.3
    IL_0153:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0158:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_015d:  call       int32 Game.Terrain::ToCell(float32)
    IL_0162:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0167:  stloc.s    V_4
    IL_0169:  ldloc.s    V_4
    IL_016b:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0170:  stloc.s    V_5
    IL_0172:  ldloc.s    V_5
    IL_0174:  brfalse    IL_02a6

    IL_0179:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_017e:  ldloc.s    V_5
    IL_0180:  ldelem.ref
    IL_0181:  stloc.s    V_6
    IL_0183:  ldloc.s    V_6
    IL_0185:  ldfld      bool Game.Block::IsCollidable
    IL_018a:  brfalse.s  IL_0198

    IL_018c:  ldloc.3
    IL_018d:  ldc.i4.1
    IL_018e:  stfld      bool Game.Particle::IsActive
    IL_0193:  br         IL_02a6

    IL_0198:  ldloc.s    V_6
    IL_019a:  isinst     Game.WaterBlock
    IL_019f:  brfalse    IL_02a6

    IL_01a4:  ldloc.s    V_4
    IL_01a6:  call       int32 Game.Terrain::ExtractData(int32)
    IL_01ab:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_01b0:  stloc.s    V_7
    IL_01b2:  ldloc.s    V_6
    IL_01b4:  castclass  Game.WaterBlock
    IL_01b9:  ldloc.s    V_7
    IL_01bb:  callvirt   instance float32 Game.FluidBlock::GetLevelHeight(int32)
    IL_01c0:  stloc.s    V_8
    IL_01c2:  ldloc.3
    IL_01c3:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01c8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01cd:  ldloc.3
    IL_01ce:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01d3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01d8:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_01dd:  ldloc.s    V_8
    IL_01df:  add
    IL_01e0:  bgt.un     IL_02a6

    IL_01e5:  ldloc.3
    IL_01e6:  ldflda     valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem/Particle::Velocity
    IL_01eb:  ldc.r4     0.0
    IL_01f0:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_01f5:  ldloc.3
    IL_01f6:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01fb:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0200:  ldloc.3
    IL_0201:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0206:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_020b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0210:  ldarg.0
    IL_0211:  ldflda     valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem::m_position
    IL_0216:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_021b:  ldarg.0
    IL_021c:  ldflda     valuetype [Engine]Engine.Vector3 Game.WaterSplashParticleSystem::m_position
    IL_0221:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0226:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_022b:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0230:  stloc.s    V_9
    IL_0232:  ldc.r4     2.e-002
    IL_0237:  ldc.r4     2.
    IL_023c:  ldloc.s    V_9
    IL_023e:  mul
    IL_023f:  ldc.r4     10.
    IL_0244:  ldarg.0
    IL_0245:  ldfld      float32 Game.WaterSplashParticleSystem::m_time
    IL_024a:  mul
    IL_024b:  add
    IL_024c:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0251:  mul
    IL_0252:  stloc.s    V_10
    IL_0254:  ldloc.3
    IL_0255:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_025a:  ldloc.3
    IL_025b:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0260:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0265:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_026a:  ldloc.s    V_8
    IL_026c:  add
    IL_026d:  ldloc.s    V_10
    IL_026f:  add
    IL_0270:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0275:  ldloc.3
    IL_0276:  dup
    IL_0277:  ldfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_027c:  ldc.r4     1.
    IL_0281:  ldarg.1
    IL_0282:  mul
    IL_0283:  sub
    IL_0284:  stfld      float32 Game.WaterSplashParticleSystem/Particle::TimeToLive
    IL_0289:  ldloc.3
    IL_028a:  dup
    IL_028b:  ldfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0290:  ldc.r4     3.9999999e-002
    IL_0295:  ldarg.1
    IL_0296:  mul
    IL_0297:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_029c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_02a1:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_02a6:  ldloc.2
    IL_02a7:  ldc.i4.1
    IL_02a8:  add
    IL_02a9:  stloc.2
    IL_02aa:  ldloc.2
    IL_02ab:  ldarg.0
    IL_02ac:  call       instance !0[] class Game.ParticleSystem`1<class Game.WaterSplashParticleSystem/Particle>::get_Particles()
    IL_02b1:  ldlen
    IL_02b2:  conv.i4
    IL_02b3:  blt        IL_0035

    IL_02b8:  ldloc.1
    IL_02b9:  ldc.i4.0
    IL_02ba:  ceq
    IL_02bc:  ret
  } // end of method WaterSplashParticleSystem::Simulate

} // end of class Game.WaterSplashParticleSystem