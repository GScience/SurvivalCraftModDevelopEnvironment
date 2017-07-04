.class public auto ansi beforefieldinit Game.BurntDebrisParticleSystem
       extends class Game.ParticleSystem`1<class Game.BurntDebrisParticleSystem/Particle>
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

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.BurntDebrisParticleSystem/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.BurntDebrisParticleSystem/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.BurntDebrisParticleSystem/'<>c' Game.BurntDebrisParticleSystem/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<Simulate>b__5_0'(int32 'value',
                               float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<Simulate>b__5_0'

  } // end of class '<>c'

  .field private class Game.Random m_random
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain terrain,
                               int32 x,
                               int32 y,
                               int32 z) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  conv.r4
    IL_0004:  ldc.r4     0.5
    IL_0009:  add
    IL_000a:  ldarg.3
    IL_000b:  conv.r4
    IL_000c:  ldc.r4     0.5
    IL_0011:  add
    IL_0012:  ldarg.s    z
    IL_0014:  conv.r4
    IL_0015:  ldc.r4     0.5
    IL_001a:  add
    IL_001b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0020:  call       instance void Game.BurntDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3)
    IL_0025:  ret
  } // end of method BurntDebrisParticleSystem::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain terrain,
                               valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       549 (0x225)
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
    IL_0006:  stfld      class Game.Random Game.BurntDebrisParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   15
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.BurntDebrisParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      class Game.SubsystemTerrain Game.BurntDebrisParticleSystem::m_subsystemTerrain
    IL_001a:  ldarg.0
    IL_001b:  ldstr      "Textures/FireParticle"
    IL_0020:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0025:  call       instance void class Game.ParticleSystem`1<class Game.BurntDebrisParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_002a:  ldarg.2
    IL_002b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0030:  call       int32 Game.Terrain::ToCell(float32)
    IL_0035:  stloc.0
    IL_0036:  ldarg.2
    IL_0037:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_003c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0041:  stloc.1
    IL_0042:  ldarg.2
    IL_0043:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0048:  call       int32 Game.Terrain::ToCell(float32)
    IL_004d:  stloc.2
    IL_004e:  ldc.i4.0
    IL_004f:  stloc.3
    IL_0050:  ldloc.3
    IL_0051:  ldarg.1
    IL_0052:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0057:  ldloc.0
    IL_0058:  ldc.i4.1
    IL_0059:  add
    IL_005a:  ldloc.1
    IL_005b:  ldloc.2
    IL_005c:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0061:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0066:  stloc.3
    IL_0067:  ldloc.3
    IL_0068:  ldarg.1
    IL_0069:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_006e:  ldloc.0
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldloc.1
    IL_0072:  ldloc.2
    IL_0073:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0078:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_007d:  stloc.3
    IL_007e:  ldloc.3
    IL_007f:  ldarg.1
    IL_0080:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0085:  ldloc.0
    IL_0086:  ldloc.1
    IL_0087:  ldc.i4.1
    IL_0088:  add
    IL_0089:  ldloc.2
    IL_008a:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_008f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0094:  stloc.3
    IL_0095:  ldloc.3
    IL_0096:  ldarg.1
    IL_0097:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_009c:  ldloc.0
    IL_009d:  ldloc.1
    IL_009e:  ldc.i4.1
    IL_009f:  sub
    IL_00a0:  ldloc.2
    IL_00a1:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00a6:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00ab:  stloc.3
    IL_00ac:  ldloc.3
    IL_00ad:  ldarg.1
    IL_00ae:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00b3:  ldloc.0
    IL_00b4:  ldloc.1
    IL_00b5:  ldloc.2
    IL_00b6:  ldc.i4.1
    IL_00b7:  add
    IL_00b8:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00bd:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00c2:  stloc.3
    IL_00c3:  ldloc.3
    IL_00c4:  ldarg.1
    IL_00c5:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00ca:  ldloc.0
    IL_00cb:  ldloc.1
    IL_00cc:  ldloc.2
    IL_00cd:  ldc.i4.1
    IL_00ce:  sub
    IL_00cf:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00d4:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00d9:  stloc.3
    IL_00da:  ldarg.0
    IL_00db:  ldc.i4.3
    IL_00dc:  call       instance void class Game.ParticleSystem`1<class Game.BurntDebrisParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_00e1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00e6:  stloc.s    V_4
    IL_00e8:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00ed:  ldloc.3
    IL_00ee:  ldelem.r4
    IL_00ef:  stloc.s    V_5
    IL_00f1:  ldloc.s    V_4
    IL_00f3:  ldloc.s    V_5
    IL_00f5:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00fa:  stloc.s    V_4
    IL_00fc:  ldloca.s   V_4
    IL_00fe:  ldc.i4     0xff
    IL_0103:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0108:  ldc.i4.0
    IL_0109:  stloc.s    V_6
    IL_010b:  br         IL_0215

    IL_0110:  ldarg.0
    IL_0111:  call       instance !0[] class Game.ParticleSystem`1<class Game.BurntDebrisParticleSystem/Particle>::get_Particles()
    IL_0116:  ldloc.s    V_6
    IL_0118:  ldelem.ref
    IL_0119:  dup
    IL_011a:  ldc.i4.1
    IL_011b:  stfld      bool Game.Particle::IsActive
    IL_0120:  dup
    IL_0121:  ldarg.2
    IL_0122:  ldc.r4     0.5
    IL_0127:  ldarg.0
    IL_0128:  ldfld      class Game.Random Game.BurntDebrisParticleSystem::m_random
    IL_012d:  ldc.r4     -1.
    IL_0132:  ldc.r4     1.
    IL_0137:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.Random Game.BurntDebrisParticleSystem::m_random
    IL_0142:  ldc.r4     -1.
    IL_0147:  ldc.r4     1.
    IL_014c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.Random Game.BurntDebrisParticleSystem::m_random
    IL_0157:  ldc.r4     -1.
    IL_015c:  ldc.r4     1.
    IL_0161:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0166:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_016b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0170:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0175:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_017a:  dup
    IL_017b:  ldloc.s    V_4
    IL_017d:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0182:  dup
    IL_0183:  ldc.r4     0.5
    IL_0188:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_018d:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0192:  dup
    IL_0193:  ldarg.0
    IL_0194:  ldfld      class Game.Random Game.BurntDebrisParticleSystem::m_random
    IL_0199:  ldc.r4     0.75
    IL_019e:  ldc.r4     2.
    IL_01a3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01a8:  stfld      float32 Game.BurntDebrisParticleSystem/Particle::TimeToLive
    IL_01ad:  dup
    IL_01ae:  ldc.r4     3.
    IL_01b3:  ldarg.0
    IL_01b4:  ldfld      class Game.Random Game.BurntDebrisParticleSystem::m_random
    IL_01b9:  ldc.r4     -1.
    IL_01be:  ldc.r4     1.
    IL_01c3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01c8:  mul
    IL_01c9:  ldc.r4     2.
    IL_01ce:  ldarg.0
    IL_01cf:  ldfld      class Game.Random Game.BurntDebrisParticleSystem::m_random
    IL_01d4:  ldc.r4     -1.
    IL_01d9:  ldc.r4     1.
    IL_01de:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e3:  mul
    IL_01e4:  ldc.r4     3.
    IL_01e9:  ldarg.0
    IL_01ea:  ldfld      class Game.Random Game.BurntDebrisParticleSystem::m_random
    IL_01ef:  ldc.r4     -1.
    IL_01f4:  ldc.r4     1.
    IL_01f9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01fe:  mul
    IL_01ff:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0204:  stfld      valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_0209:  ldc.i4.8
    IL_020a:  stfld      int32 Game.Particle::TextureSlot
    IL_020f:  ldloc.s    V_6
    IL_0211:  ldc.i4.1
    IL_0212:  add
    IL_0213:  stloc.s    V_6
    IL_0215:  ldloc.s    V_6
    IL_0217:  ldarg.0
    IL_0218:  call       instance !0[] class Game.ParticleSystem`1<class Game.BurntDebrisParticleSystem/Particle>::get_Particles()
    IL_021d:  ldlen
    IL_021e:  conv.i4
    IL_021f:  blt        IL_0110

    IL_0224:  ret
  } // end of method BurntDebrisParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       509 (0x1fd)
    .maxstack  7
    .locals init (float32 V_0,
             bool V_1,
             int32 V_2,
             class Game.BurntDebrisParticleSystem/Particle V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_6,
             valuetype Game.TerrainRaycastResult V_7)
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     0.1
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0010:  starg.s    dt
    IL_0012:  ldc.r4     3.9999999e-002
    IL_0017:  ldarg.1
    IL_0018:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_001d:  stloc.0
    IL_001e:  ldc.i4.0
    IL_001f:  stloc.1
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.2
    IL_0022:  br         IL_01ea

    IL_0027:  ldarg.0
    IL_0028:  call       instance !0[] class Game.ParticleSystem`1<class Game.BurntDebrisParticleSystem/Particle>::get_Particles()
    IL_002d:  ldloc.2
    IL_002e:  ldelem.ref
    IL_002f:  stloc.3
    IL_0030:  ldloc.3
    IL_0031:  ldfld      bool Game.Particle::IsActive
    IL_0036:  brfalse    IL_01e6

    IL_003b:  ldc.i4.1
    IL_003c:  stloc.1
    IL_003d:  ldloc.3
    IL_003e:  dup
    IL_003f:  ldfld      float32 Game.BurntDebrisParticleSystem/Particle::TimeToLive
    IL_0044:  ldarg.1
    IL_0045:  sub
    IL_0046:  stfld      float32 Game.BurntDebrisParticleSystem/Particle::TimeToLive
    IL_004b:  ldloc.3
    IL_004c:  ldfld      float32 Game.BurntDebrisParticleSystem/Particle::TimeToLive
    IL_0051:  ldc.r4     0.0
    IL_0056:  ble.un     IL_01df

    IL_005b:  ldloc.3
    IL_005c:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0061:  stloc.s    V_4
    IL_0063:  ldloc.s    V_4
    IL_0065:  ldloc.3
    IL_0066:  ldfld      valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_006b:  ldarg.1
    IL_006c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0071:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0076:  stloc.s    V_5
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.SubsystemTerrain Game.BurntDebrisParticleSystem::m_subsystemTerrain
    IL_007e:  ldloc.s    V_4
    IL_0080:  ldloc.s    V_5
    IL_0082:  ldc.i4.0
    IL_0083:  ldc.i4.1
    IL_0084:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.BurntDebrisParticleSystem/'<>c'::'<>9__5_0'
    IL_0089:  dup
    IL_008a:  brtrue.s   IL_00a3

    IL_008c:  pop
    IL_008d:  ldsfld     class Game.BurntDebrisParticleSystem/'<>c' Game.BurntDebrisParticleSystem/'<>c'::'<>9'
    IL_0092:  ldftn      instance bool Game.BurntDebrisParticleSystem/'<>c'::'<Simulate>b__5_0'(int32,
                                                                                                float32)
    IL_0098:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_009d:  dup
    IL_009e:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.BurntDebrisParticleSystem/'<>c'::'<>9__5_0'
    IL_00a3:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_00a8:  stloc.s    V_6
    IL_00aa:  ldloca.s   V_6
    IL_00ac:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_00b1:  brfalse    IL_0173

    IL_00b6:  ldloca.s   V_6
    IL_00b8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00bd:  stloc.s    V_7
    IL_00bf:  ldloca.s   V_7
    IL_00c1:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00c6:  call       instance valuetype [Engine]Engine.Plane Game.CellFace::CalculatePlane()
    IL_00cb:  ldloc.s    V_4
    IL_00cd:  stloc.s    V_5
    IL_00cf:  dup
    IL_00d0:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
    IL_00d5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00da:  ldc.r4     0.0
    IL_00df:  beq.s      IL_0106

    IL_00e1:  ldloc.3
    IL_00e2:  dup
    IL_00e3:  ldfld      valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_00e8:  ldc.r4     -0.1
    IL_00ed:  ldc.r4     0.1
    IL_00f2:  ldc.r4     0.1
    IL_00f7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00fc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0101:  stfld      valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_0106:  dup
    IL_0107:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
    IL_010c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0111:  ldc.r4     0.0
    IL_0116:  beq.s      IL_013d

    IL_0118:  ldloc.3
    IL_0119:  dup
    IL_011a:  ldfld      valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_011f:  ldc.r4     0.1
    IL_0124:  ldc.r4     -0.1
    IL_0129:  ldc.r4     0.1
    IL_012e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0133:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0138:  stfld      valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_013d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
    IL_0142:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0147:  ldc.r4     0.0
    IL_014c:  beq.s      IL_0173

    IL_014e:  ldloc.3
    IL_014f:  dup
    IL_0150:  ldfld      valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_0155:  ldc.r4     0.1
    IL_015a:  ldc.r4     0.1
    IL_015f:  ldc.r4     -0.1
    IL_0164:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0169:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_016e:  stfld      valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_0173:  ldloc.3
    IL_0174:  ldloc.s    V_5
    IL_0176:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_017b:  ldloc.3
    IL_017c:  ldflda     valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_0181:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0186:  dup
    IL_0187:  ldind.r4
    IL_0188:  ldc.r4     -10.
    IL_018d:  ldarg.1
    IL_018e:  mul
    IL_018f:  add
    IL_0190:  stind.r4
    IL_0191:  ldloc.3
    IL_0192:  dup
    IL_0193:  ldfld      valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_0198:  ldloc.0
    IL_0199:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_019e:  stfld      valuetype [Engine]Engine.Vector3 Game.BurntDebrisParticleSystem/Particle::Velocity
    IL_01a3:  ldloc.3
    IL_01a4:  dup
    IL_01a5:  ldfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01aa:  ldloc.3
    IL_01ab:  ldfld      float32 Game.BurntDebrisParticleSystem/Particle::TimeToLive
    IL_01b0:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01b5:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_01ba:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01bf:  ldloc.3
    IL_01c0:  ldc.r4     8.9899998
    IL_01c5:  ldc.r4     2.
    IL_01ca:  ldloc.3
    IL_01cb:  ldfld      float32 Game.BurntDebrisParticleSystem/Particle::TimeToLive
    IL_01d0:  sub
    IL_01d1:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01d6:  mul
    IL_01d7:  conv.i4
    IL_01d8:  stfld      int32 Game.Particle::TextureSlot
    IL_01dd:  br.s       IL_01e6

    IL_01df:  ldloc.3
    IL_01e0:  ldc.i4.0
    IL_01e1:  stfld      bool Game.Particle::IsActive
    IL_01e6:  ldloc.2
    IL_01e7:  ldc.i4.1
    IL_01e8:  add
    IL_01e9:  stloc.2
    IL_01ea:  ldloc.2
    IL_01eb:  ldarg.0
    IL_01ec:  call       instance !0[] class Game.ParticleSystem`1<class Game.BurntDebrisParticleSystem/Particle>::get_Particles()
    IL_01f1:  ldlen
    IL_01f2:  conv.i4
    IL_01f3:  blt        IL_0027

    IL_01f8:  ldloc.1
    IL_01f9:  ldc.i4.0
    IL_01fa:  ceq
    IL_01fc:  ret
  } // end of method BurntDebrisParticleSystem::Simulate

} // end of class Game.BurntDebrisParticleSystem