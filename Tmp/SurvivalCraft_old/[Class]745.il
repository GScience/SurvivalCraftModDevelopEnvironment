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
    // 代码大小       567 (0x237)
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
    IL_0029:  call       int32 Game.Terrain::ToCell(float32)
    IL_002e:  stloc.0
    IL_002f:  ldarg.2
    IL_0030:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0035:  call       int32 Game.Terrain::ToCell(float32)
    IL_003a:  stloc.1
    IL_003b:  ldarg.2
    IL_003c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0041:  call       int32 Game.Terrain::ToCell(float32)
    IL_0046:  stloc.2
    IL_0047:  ldc.i4.0
    IL_0048:  stloc.3
    IL_0049:  ldloc.3
    IL_004a:  ldarg.1
    IL_004b:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0050:  ldloc.0
    IL_0051:  ldc.i4.1
    IL_0052:  add
    IL_0053:  ldloc.1
    IL_0054:  ldloc.2
    IL_0055:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_005a:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_005f:  stloc.3
    IL_0060:  ldloc.3
    IL_0061:  ldarg.1
    IL_0062:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0067:  ldloc.0
    IL_0068:  ldc.i4.1
    IL_0069:  sub
    IL_006a:  ldloc.1
    IL_006b:  ldloc.2
    IL_006c:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0071:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0076:  stloc.3
    IL_0077:  ldloc.3
    IL_0078:  ldarg.1
    IL_0079:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_007e:  ldloc.0
    IL_007f:  ldloc.1
    IL_0080:  ldc.i4.1
    IL_0081:  add
    IL_0082:  ldloc.2
    IL_0083:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0088:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_008d:  stloc.3
    IL_008e:  ldloc.3
    IL_008f:  ldarg.1
    IL_0090:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0095:  ldloc.0
    IL_0096:  ldloc.1
    IL_0097:  ldc.i4.1
    IL_0098:  sub
    IL_0099:  ldloc.2
    IL_009a:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_009f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00a4:  stloc.3
    IL_00a5:  ldloc.3
    IL_00a6:  ldarg.1
    IL_00a7:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00ac:  ldloc.0
    IL_00ad:  ldloc.1
    IL_00ae:  ldloc.2
    IL_00af:  ldc.i4.1
    IL_00b0:  add
    IL_00b1:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00b6:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00bb:  stloc.3
    IL_00bc:  ldloc.3
    IL_00bd:  ldarg.1
    IL_00be:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00c3:  ldloc.0
    IL_00c4:  ldloc.1
    IL_00c5:  ldloc.2
    IL_00c6:  ldc.i4.1
    IL_00c7:  sub
    IL_00c8:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00cd:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00d2:  stloc.3
    IL_00d3:  ldarg.0
    IL_00d4:  ldc.i4.2
    IL_00d5:  call       instance void class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_00da:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00df:  stloc.s    V_4
    IL_00e1:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00e6:  ldloc.3
    IL_00e7:  ldelem.r4
    IL_00e8:  stloc.s    V_5
    IL_00ea:  ldloc.s    V_4
    IL_00ec:  ldloc.s    V_5
    IL_00ee:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00f3:  stloc.s    V_4
    IL_00f5:  ldloca.s   V_4
    IL_00f7:  ldc.i4     0xff
    IL_00fc:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0101:  ldc.i4.0
    IL_0102:  stloc.s    V_6
    IL_0104:  br         IL_0227

    IL_0109:  ldarg.0
    IL_010a:  call       instance !0[] class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>::get_Particles()
    IL_010f:  ldloc.s    V_6
    IL_0111:  ldelem.ref
    IL_0112:  dup
    IL_0113:  ldc.i4.1
    IL_0114:  stfld      bool Game.Particle::IsActive
    IL_0119:  dup
    IL_011a:  ldarg.2
    IL_011b:  ldc.r4     0.40000001
    IL_0120:  ldarg.3
    IL_0121:  mul
    IL_0122:  ldarg.0
    IL_0123:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_0128:  ldc.r4     -1.
    IL_012d:  ldc.r4     1.
    IL_0132:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0137:  ldarg.0
    IL_0138:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_013d:  ldc.r4     -1.
    IL_0142:  ldc.r4     1.
    IL_0147:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_014c:  ldarg.0
    IL_014d:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_0152:  ldc.r4     -1.
    IL_0157:  ldc.r4     1.
    IL_015c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0161:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0166:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_016b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0170:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0175:  dup
    IL_0176:  ldloc.s    V_4
    IL_0178:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_017d:  dup
    IL_017e:  ldc.r4     0.30000001
    IL_0183:  ldarg.3
    IL_0184:  mul
    IL_0185:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_018a:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_018f:  dup
    IL_0190:  ldarg.0
    IL_0191:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_0196:  ldc.r4     0.5
    IL_019b:  ldc.r4     3.5
    IL_01a0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01a5:  stfld      float32 Game.KillParticleSystem/Particle::TimeToLive
    IL_01aa:  dup
    IL_01ab:  ldc.r4     1.2
    IL_01b0:  ldarg.3
    IL_01b1:  mul
    IL_01b2:  ldarg.0
    IL_01b3:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_01b8:  ldc.r4     -1.
    IL_01bd:  ldc.r4     1.
    IL_01c2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01c7:  ldarg.0
    IL_01c8:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_01cd:  ldc.r4     -1.
    IL_01d2:  ldc.r4     1.
    IL_01d7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01dc:  ldarg.0
    IL_01dd:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_01e2:  ldc.r4     -1.
    IL_01e7:  ldc.r4     1.
    IL_01ec:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01f1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01f6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01fb:  stfld      valuetype [Engine]Engine.Vector3 Game.KillParticleSystem/Particle::Velocity
    IL_0200:  dup
    IL_0201:  ldarg.0
    IL_0202:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_0207:  callvirt   instance bool Game.Random::Bool()
    IL_020c:  stfld      bool Game.Particle::FlipX
    IL_0211:  ldarg.0
    IL_0212:  ldfld      class Game.Random Game.KillParticleSystem::m_random
    IL_0217:  callvirt   instance bool Game.Random::Bool()
    IL_021c:  stfld      bool Game.Particle::FlipY
    IL_0221:  ldloc.s    V_6
    IL_0223:  ldc.i4.1
    IL_0224:  add
    IL_0225:  stloc.s    V_6
    IL_0227:  ldloc.s    V_6
    IL_0229:  ldarg.0
    IL_022a:  call       instance !0[] class Game.ParticleSystem`1<class Game.KillParticleSystem/Particle>::get_Particles()
    IL_022f:  ldlen
    IL_0230:  conv.i4
    IL_0231:  blt        IL_0109

    IL_0236:  ret
  } // end of method KillParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       223 (0xdf)
    .maxstack  4
    .locals init (float32 V_0,
             bool V_1,
             int32 V_2,
             class Game.KillParticleSystem/Particle V_3,
             valuetype [Engine]Engine.Vector3 V_4)
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
    IL_0044:  ldarg.1
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
    IL_0064:  ldarg.1
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
    IL_008b:  ldarg.1
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