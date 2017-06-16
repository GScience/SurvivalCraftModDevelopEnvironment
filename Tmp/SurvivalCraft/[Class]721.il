.class public auto ansi beforefieldinit Game.KillParticleSystem
       extends class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public valuetype [Engine]Engine.Vector3 Velocity
    .field public float32 TimeToLive
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
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain terrain,
                               valuetype [Engine]Engine.Vector3 position,
                               float32 size) cil managed
  {
    // 代码大小       555 (0x22b)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Color V_4,
             float32 V_5,
             int32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.KillParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   20
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldstr      "Textures/KillParticle"
    IL_0019:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_001e:  call       instance void class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0023:  ldarg.2
    IL_0024:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0029:  conv.i4
    IL_002a:  stloc.0
    IL_002b:  ldarg.2
    IL_002c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0031:  conv.i4
    IL_0032:  stloc.1
    IL_0033:  ldarg.2
    IL_0034:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0039:  conv.i4
    IL_003a:  stloc.2
    IL_003b:  ldc.i4.0
    IL_003c:  stloc.3
    IL_003d:  ldloc.3
    IL_003e:  ldarg.1
    IL_003f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0044:  ldloc.0
    IL_0045:  ldc.i4.1
    IL_0046:  add
    IL_0047:  ldloc.1
    IL_0048:  ldloc.2
    IL_0049:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_004e:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0053:  stloc.3
    IL_0054:  ldloc.3
    IL_0055:  ldarg.1
    IL_0056:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005b:  ldloc.0
    IL_005c:  ldc.i4.1
    IL_005d:  sub
    IL_005e:  ldloc.1
    IL_005f:  ldloc.2
    IL_0060:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0065:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_006a:  stloc.3
    IL_006b:  ldloc.3
    IL_006c:  ldarg.1
    IL_006d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0072:  ldloc.0
    IL_0073:  ldloc.1
    IL_0074:  ldc.i4.1
    IL_0075:  add
    IL_0076:  ldloc.2
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0081:  stloc.3
    IL_0082:  ldloc.3
    IL_0083:  ldarg.1
    IL_0084:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0089:  ldloc.0
    IL_008a:  ldloc.1
    IL_008b:  ldc.i4.1
    IL_008c:  sub
    IL_008d:  ldloc.2
    IL_008e:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0093:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0098:  stloc.3
    IL_0099:  ldloc.3
    IL_009a:  ldarg.1
    IL_009b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a0:  ldloc.0
    IL_00a1:  ldloc.1
    IL_00a2:  ldloc.2
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00aa:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00af:  stloc.3
    IL_00b0:  ldloc.3
    IL_00b1:  ldarg.1
    IL_00b2:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00b7:  ldloc.0
    IL_00b8:  ldloc.1
    IL_00b9:  ldloc.2
    IL_00ba:  ldc.i4.1
    IL_00bb:  sub
    IL_00bc:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00c1:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00c6:  stloc.3
    IL_00c7:  ldarg.0
    IL_00c8:  ldc.i4.2
    IL_00c9:  call       instance void class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_00ce:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00d3:  stloc.s    V_4
    IL_00d5:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00da:  ldloc.3
    IL_00db:  ldelem.r4
    IL_00dc:  stloc.s    V_5
    IL_00de:  ldloc.s    V_4
    IL_00e0:  ldloc.s    V_5
    IL_00e2:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00e7:  stloc.s    V_4
    IL_00e9:  ldloca.s   V_4
    IL_00eb:  ldc.i4     0xff
    IL_00f0:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_00f5:  ldc.i4.0
    IL_00f6:  stloc.s    V_6
    IL_00f8:  br         IL_021b

    IL_00fd:  ldarg.0
    IL_00fe:  call       instance !0[] class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>::get_Particles()
    IL_0103:  ldloc.s    V_6
    IL_0105:  ldelem.ref
    IL_0106:  dup
    IL_0107:  ldc.i4.1
    IL_0108:  stfld      bool Game.Particle::IsActive
    IL_010d:  dup
    IL_010e:  ldarg.2
    IL_010f:  ldc.r4     0.40000001
    IL_0114:  ldarg.3
    IL_0115:  mul
    IL_0116:  ldarg.0
    IL_0117:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_011c:  ldc.r4     -1.
    IL_0121:  ldc.r4     1.
    IL_0126:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_012b:  ldarg.0
    IL_012c:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_0131:  ldc.r4     -1.
    IL_0136:  ldc.r4     1.
    IL_013b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0140:  ldarg.0
    IL_0141:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_0146:  ldc.r4     -1.
    IL_014b:  ldc.r4     1.
    IL_0150:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0155:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_015a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0164:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0169:  dup
    IL_016a:  ldloc.s    V_4
    IL_016c:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0171:  dup
    IL_0172:  ldc.r4     0.30000001
    IL_0177:  ldarg.3
    IL_0178:  mul
    IL_0179:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_017e:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0183:  dup
    IL_0184:  ldarg.0
    IL_0185:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_018a:  ldc.r4     0.5
    IL_018f:  ldc.r4     3.5
    IL_0194:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0199:  stfld      float32 Game.KillParticleSystem/Particle::TimeToLive
    IL_019e:  dup
    IL_019f:  ldc.r4     1.2
    IL_01a4:  ldarg.3
    IL_01a5:  mul
    IL_01a6:  ldarg.0
    IL_01a7:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_01ac:  ldc.r4     -1.
    IL_01b1:  ldc.r4     1.
    IL_01b6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_01c1:  ldc.r4     -1.
    IL_01c6:  ldc.r4     1.
    IL_01cb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01d0:  ldarg.0
    IL_01d1:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_01d6:  ldc.r4     -1.
    IL_01db:  ldc.r4     1.
    IL_01e0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ea:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ef:  stfld      valuetype [Engine]Engine.Vector3 Game.KillParticleSystem/Particle::Velocity
    IL_01f4:  dup
    IL_01f5:  ldarg.0
    IL_01f6:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_01fb:  callvirt   instance bool Game.Random::Bool()
    IL_0200:  stfld      bool Game.Particle::FlipX
    IL_0205:  ldarg.0
    IL_0206:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_020b:  callvirt   instance bool Game.Random::Bool()
    IL_0210:  stfld      bool Game.Particle::FlipY
    IL_0215:  ldloc.s    V_6
    IL_0217:  ldc.i4.1
    IL_0218:  add
    IL_0219:  stloc.s    V_6
    IL_021b:  ldloc.s    V_6
    IL_021d:  ldarg.0
    IL_021e:  call       instance !0[] class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>::get_Particles()
    IL_0223:  ldlen
    IL_0224:  conv.i4
    IL_0225:  blt        IL_00fd

    IL_022a:  ret
  } // end of method KillParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
  {
    // 代码大小       223 (0xdf)
    .maxstack  4
    .locals init (float32 V_0,
             bool V_1,
             int32 V_2,
             class Game.KillParticleSystem/Particle V_3,
             valuetype [Engine]Engine.Vector3 V_4)
    IL_0000:  ldarg.2
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     0.1
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0010:  starg.s    dt
    IL_0012:  ldc.r4     0.1
    IL_0017:  ldarg.2
    IL_0018:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_001d:  stloc.0
    IL_001e:  ldc.i4.0
    IL_001f:  stloc.1
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.2
    IL_0022:  br         IL_00cc

    IL_0027:  ldarg.0
    IL_0028:  call       instance !0[] class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>::get_Particles()
    IL_002d:  ldloc.2
    IL_002e:  ldelem.ref
    IL_002f:  stloc.3
    IL_0030:  ldloc.3
    IL_0031:  ldfld      bool Game.Particle::IsActive
    IL_0036:  brfalse    IL_00c8

    IL_003b:  ldc.i4.1
    IL_003c:  stloc.1
    IL_003d:  ldloc.3
    IL_003e:  dup
    IL_003f:  ldfld      float32 Game.KillParticleSystem/Particle::TimeToLive
    IL_0044:  ldarg.2
    IL_0045:  sub
    IL_0046:  stfld      float32 Game.KillParticleSystem/Particle::TimeToLive
    IL_004b:  ldloc.3
    IL_004c:  ldfld      float32 Game.KillParticleSystem/Particle::TimeToLive
    IL_0051:  ldc.r4     0.0
    IL_0056:  ble.un.s   IL_00c1

    IL_0058:  ldloc.3
    IL_0059:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_005e:  ldloc.3
    IL_005f:  ldfld      valuetype [Engine]Engine.Vector3 Game.KillParticleSystem/Particle::Velocity
    IL_0064:  ldarg.2
    IL_0065:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_006a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_006f:  stloc.s    V_4
    IL_0071:  ldloc.3
    IL_0072:  ldloc.s    V_4
    IL_0074:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0079:  ldloc.3
    IL_007a:  ldflda     valuetype [Engine]Engine.Vector3 Game.KillParticleSystem/Particle::Velocity
    IL_007f:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0084:  dup
    IL_0085:  ldind.r4
    IL_0086:  ldc.r4     1.
    IL_008b:  ldarg.2
    IL_008c:  mul
    IL_008d:  add
    IL_008e:  stind.r4
    IL_008f:  ldloc.3
    IL_0090:  dup
    IL_0091:  ldfld      valuetype [Engine]Engine.Vector3 Game.KillParticleSystem/Particle::Velocity
    IL_0096:  ldloc.0
    IL_0097:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_009c:  stfld      valuetype [Engine]Engine.Vector3 Game.KillParticleSystem/Particle::Velocity
    IL_00a1:  ldloc.3
    IL_00a2:  ldc.r4     3.99
    IL_00a7:  ldc.r4     2.
    IL_00ac:  ldloc.3
    IL_00ad:  ldfld      float32 Game.KillParticleSystem/Particle::TimeToLive
    IL_00b2:  sub
    IL_00b3:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00b8:  mul
    IL_00b9:  conv.i4
    IL_00ba:  stfld      int32 Game.Particle::TextureSlot
    IL_00bf:  br.s       IL_00c8

    IL_00c1:  ldloc.3
    IL_00c2:  ldc.i4.0
    IL_00c3:  stfld      bool Game.Particle::IsActive
    IL_00c8:  ldloc.2
    IL_00c9:  ldc.i4.1
    IL_00ca:  add
    IL_00cb:  stloc.2
    IL_00cc:  ldloc.2
    IL_00cd:  ldarg.0
    IL_00ce:  call       instance !0[] class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>::get_Particles()
    IL_00d3:  ldlen
    IL_00d4:  conv.i4
    IL_00d5:  blt        IL_0027

    IL_00da:  ldloc.1
    IL_00db:  ldc.i4.0
    IL_00dc:  ceq
    IL_00de:  ret
  } // end of method KillParticleSystem::Simulate

} // end of class Game.KillParticleSystem