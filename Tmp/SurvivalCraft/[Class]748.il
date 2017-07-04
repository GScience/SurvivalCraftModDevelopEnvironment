.class public auto ansi beforefieldinit Game.PaintParticleSystem
       extends class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public valuetype [Engine]Engine.Vector3 Velocity
    .field public float32 TimeToLive
    .field public float32 HighDampingFactor
    .field public bool NoGravity
    .field public float32 Alpha
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
    .field public static initonly class Game.PaintParticleSystem/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.PaintParticleSystem/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.PaintParticleSystem/'<>c' Game.PaintParticleSystem/'<>c'::'<>9'
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
  .field private valuetype [Engine]Engine.Color m_color
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain terrain,
                               valuetype [Engine]Engine.Vector3 position,
                               valuetype [Engine]Engine.Vector3 normal,
                               valuetype [Engine]Engine.Color color) cil managed
  {
    // 代码大小       675 (0x2a3)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Vector2 V_8)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   20
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      class Game.SubsystemTerrain Game.PaintParticleSystem::m_subsystemTerrain
    IL_001a:  ldarg.0
    IL_001b:  ldarg.1
    IL_001c:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0021:  ldc.i4.1
    IL_0022:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlocksTexture>(bool)
    IL_0027:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::get_BlocksTexture()
    IL_002c:  call       instance void class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0031:  ldarg.2
    IL_0032:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0037:  call       int32 Game.Terrain::ToCell(float32)
    IL_003c:  stloc.0
    IL_003d:  ldarg.2
    IL_003e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0043:  call       int32 Game.Terrain::ToCell(float32)
    IL_0048:  stloc.1
    IL_0049:  ldarg.2
    IL_004a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_004f:  call       int32 Game.Terrain::ToCell(float32)
    IL_0054:  stloc.2
    IL_0055:  ldc.i4.0
    IL_0056:  stloc.3
    IL_0057:  ldloc.3
    IL_0058:  ldarg.1
    IL_0059:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005e:  ldloc.0
    IL_005f:  ldc.i4.1
    IL_0060:  add
    IL_0061:  ldloc.1
    IL_0062:  ldloc.2
    IL_0063:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0068:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_006d:  stloc.3
    IL_006e:  ldloc.3
    IL_006f:  ldarg.1
    IL_0070:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0075:  ldloc.0
    IL_0076:  ldc.i4.1
    IL_0077:  sub
    IL_0078:  ldloc.1
    IL_0079:  ldloc.2
    IL_007a:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_007f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0084:  stloc.3
    IL_0085:  ldloc.3
    IL_0086:  ldarg.1
    IL_0087:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_008c:  ldloc.0
    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.1
    IL_008f:  add
    IL_0090:  ldloc.2
    IL_0091:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0096:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_009b:  stloc.3
    IL_009c:  ldloc.3
    IL_009d:  ldarg.1
    IL_009e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00a3:  ldloc.0
    IL_00a4:  ldloc.1
    IL_00a5:  ldc.i4.1
    IL_00a6:  sub
    IL_00a7:  ldloc.2
    IL_00a8:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00ad:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00b2:  stloc.3
    IL_00b3:  ldloc.3
    IL_00b4:  ldarg.1
    IL_00b5:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00ba:  ldloc.0
    IL_00bb:  ldloc.1
    IL_00bc:  ldloc.2
    IL_00bd:  ldc.i4.1
    IL_00be:  add
    IL_00bf:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00c4:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00c9:  stloc.3
    IL_00ca:  ldloc.3
    IL_00cb:  ldarg.1
    IL_00cc:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00d1:  ldloc.0
    IL_00d2:  ldloc.1
    IL_00d3:  ldloc.2
    IL_00d4:  ldc.i4.1
    IL_00d5:  sub
    IL_00d6:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00db:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00e0:  stloc.3
    IL_00e1:  ldarg.0
    IL_00e2:  ldc.i4.s   16
    IL_00e4:  call       instance void class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_00e9:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00ee:  ldloc.3
    IL_00ef:  ldelem.r4
    IL_00f0:  stloc.s    V_4
    IL_00f2:  ldarg.0
    IL_00f3:  ldarg.s    color
    IL_00f5:  ldloc.s    V_4
    IL_00f7:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00fc:  stfld      valuetype [Engine]Engine.Color Game.PaintParticleSystem::m_color
    IL_0101:  ldarg.0
    IL_0102:  ldflda     valuetype [Engine]Engine.Color Game.PaintParticleSystem::m_color
    IL_0107:  ldarga.s   color
    IL_0109:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_010e:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0113:  ldarg.3
    IL_0114:  ldc.r4     0.37
    IL_0119:  ldc.r4     0.15000001
    IL_011e:  ldc.r4     0.17
    IL_0123:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0128:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_012d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0132:  stloc.s    V_5
    IL_0134:  ldarg.3
    IL_0135:  ldloc.s    V_5
    IL_0137:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_013c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0141:  stloc.s    V_6
    IL_0143:  ldc.i4.0
    IL_0144:  stloc.s    V_7
    IL_0146:  br         IL_0293

    IL_014b:  ldarg.0
    IL_014c:  call       instance !0[] class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>::get_Particles()
    IL_0151:  ldloc.s    V_7
    IL_0153:  ldelem.ref
    IL_0154:  dup
    IL_0155:  ldc.i4.1
    IL_0156:  stfld      bool Game.Particle::IsActive
    IL_015b:  ldloca.s   V_8
    IL_015d:  ldarg.0
    IL_015e:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_0163:  ldc.r4     -1.
    IL_0168:  ldc.r4     1.
    IL_016d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0172:  ldarg.0
    IL_0173:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_0178:  ldc.r4     -1.
    IL_017d:  ldc.r4     1.
    IL_0182:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0187:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_018c:  dup
    IL_018d:  ldarg.2
    IL_018e:  ldc.r4     0.40000001
    IL_0193:  ldloc.s    V_8
    IL_0195:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_019a:  ldloc.s    V_5
    IL_019c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a1:  ldloc.s    V_8
    IL_01a3:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01a8:  ldloc.s    V_6
    IL_01aa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01af:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01be:  ldc.r4     2.9999999e-002
    IL_01c3:  ldarg.3
    IL_01c4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ce:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01d3:  dup
    IL_01d4:  ldarg.0
    IL_01d5:  ldfld      valuetype [Engine]Engine.Color Game.PaintParticleSystem::m_color
    IL_01da:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01df:  dup
    IL_01e0:  ldarg.0
    IL_01e1:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_01e6:  ldc.r4     2.5e-002
    IL_01eb:  ldc.r4     3.5e-002
    IL_01f0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01f5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_01fa:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_01ff:  dup
    IL_0200:  ldarg.0
    IL_0201:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_0206:  ldc.r4     0.5
    IL_020b:  ldc.r4     1.5
    IL_0210:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0215:  stfld      float32 Game.PaintParticleSystem/Particle::TimeToLive
    IL_021a:  dup
    IL_021b:  ldc.r4     1.
    IL_0220:  ldloc.s    V_8
    IL_0222:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0227:  ldloc.s    V_5
    IL_0229:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_022e:  ldloc.s    V_8
    IL_0230:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0235:  ldloc.s    V_6
    IL_0237:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_023c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0241:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0246:  ldarg.0
    IL_0247:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_024c:  ldc.r4     -3.
    IL_0251:  ldc.r4     0.5
    IL_0256:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_025b:  ldarg.3
    IL_025c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0261:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0266:  stfld      valuetype [Engine]Engine.Vector3 Game.PaintParticleSystem/Particle::Velocity
    IL_026b:  dup
    IL_026c:  ldc.i4.s   15
    IL_026e:  stfld      int32 Game.Particle::TextureSlot
    IL_0273:  ldarg.0
    IL_0274:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_0279:  ldc.r4     0.30000001
    IL_027e:  ldc.r4     0.60000002
    IL_0283:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0288:  stfld      float32 Game.PaintParticleSystem/Particle::Alpha
    IL_028d:  ldloc.s    V_7
    IL_028f:  ldc.i4.1
    IL_0290:  add
    IL_0291:  stloc.s    V_7
    IL_0293:  ldloc.s    V_7
    IL_0295:  ldarg.0
    IL_0296:  call       instance !0[] class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>::get_Particles()
    IL_029b:  ldlen
    IL_029c:  conv.i4
    IL_029d:  blt        IL_014b

    IL_02a2:  ret
  } // end of method PaintParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       457 (0x1c9)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             bool V_2,
             int32 V_3,
             class Game.PaintParticleSystem/Particle V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_7,
             valuetype Game.TerrainRaycastResult V_8)
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     0.1
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0010:  starg.s    dt
    IL_0012:  ldc.r4     0.2
    IL_0017:  ldarg.1
    IL_0018:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_001d:  stloc.0
    IL_001e:  ldc.r4     1.e-007
    IL_0023:  ldarg.1
    IL_0024:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0029:  stloc.1
    IL_002a:  ldc.i4.0
    IL_002b:  stloc.2
    IL_002c:  ldc.i4.0
    IL_002d:  stloc.3
    IL_002e:  br         IL_01b6

    IL_0033:  ldarg.0
    IL_0034:  call       instance !0[] class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>::get_Particles()
    IL_0039:  ldloc.3
    IL_003a:  ldelem.ref
    IL_003b:  stloc.s    V_4
    IL_003d:  ldloc.s    V_4
    IL_003f:  ldfld      bool Game.Particle::IsActive
    IL_0044:  brfalse    IL_01b2

    IL_0049:  ldc.i4.1
    IL_004a:  stloc.2
    IL_004b:  ldloc.s    V_4
    IL_004d:  dup
    IL_004e:  ldfld      float32 Game.PaintParticleSystem/Particle::TimeToLive
    IL_0053:  ldarg.1
    IL_0054:  sub
    IL_0055:  stfld      float32 Game.PaintParticleSystem/Particle::TimeToLive
    IL_005a:  ldloc.s    V_4
    IL_005c:  ldfld      float32 Game.PaintParticleSystem/Particle::TimeToLive
    IL_0061:  ldc.r4     0.0
    IL_0066:  ble.un     IL_01aa

    IL_006b:  ldloc.s    V_4
    IL_006d:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0072:  stloc.s    V_5
    IL_0074:  ldloc.s    V_5
    IL_0076:  ldloc.s    V_4
    IL_0078:  ldfld      valuetype [Engine]Engine.Vector3 Game.PaintParticleSystem/Particle::Velocity
    IL_007d:  ldarg.1
    IL_007e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0083:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0088:  stloc.s    V_6
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.SubsystemTerrain Game.PaintParticleSystem::m_subsystemTerrain
    IL_0090:  ldloc.s    V_5
    IL_0092:  ldloc.s    V_6
    IL_0094:  ldc.i4.0
    IL_0095:  ldc.i4.1
    IL_0096:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.PaintParticleSystem/'<>c'::'<>9__5_0'
    IL_009b:  dup
    IL_009c:  brtrue.s   IL_00b5

    IL_009e:  pop
    IL_009f:  ldsfld     class Game.PaintParticleSystem/'<>c' Game.PaintParticleSystem/'<>c'::'<>9'
    IL_00a4:  ldftn      instance bool Game.PaintParticleSystem/'<>c'::'<Simulate>b__5_0'(int32,
                                                                                          float32)
    IL_00aa:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_00af:  dup
    IL_00b0:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.PaintParticleSystem/'<>c'::'<>9__5_0'
    IL_00b5:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_00ba:  stloc.s    V_7
    IL_00bc:  ldloca.s   V_7
    IL_00be:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_00c3:  brfalse.s  IL_0127

    IL_00c5:  ldloc.s    V_4
    IL_00c7:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_00cc:  stfld      valuetype [Engine]Engine.Vector3 Game.PaintParticleSystem/Particle::Velocity
    IL_00d1:  ldloc.s    V_4
    IL_00d3:  ldloca.s   V_7
    IL_00d5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00da:  stloc.s    V_8
    IL_00dc:  ldloca.s   V_8
    IL_00de:  ldc.r4     2.9999999e-002
    IL_00e3:  call       instance valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::HitPoint(float32)
    IL_00e8:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_00f5:  ldc.r4     0.5
    IL_00fa:  ldc.r4     1.
    IL_00ff:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0104:  stfld      float32 Game.PaintParticleSystem/Particle::HighDampingFactor
    IL_0109:  ldloca.s   V_7
    IL_010b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0110:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0115:  ldfld      int32 Game.CellFace::Face
    IL_011a:  ldc.i4.4
    IL_011b:  blt.s      IL_0130

    IL_011d:  ldloc.s    V_4
    IL_011f:  ldc.i4.1
    IL_0120:  stfld      bool Game.PaintParticleSystem/Particle::NoGravity
    IL_0125:  br.s       IL_0130

    IL_0127:  ldloc.s    V_4
    IL_0129:  ldloc.s    V_6
    IL_012b:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0130:  ldloc.s    V_4
    IL_0132:  ldfld      bool Game.PaintParticleSystem/Particle::NoGravity
    IL_0137:  brtrue.s   IL_0150

    IL_0139:  ldloc.s    V_4
    IL_013b:  ldflda     valuetype [Engine]Engine.Vector3 Game.PaintParticleSystem/Particle::Velocity
    IL_0140:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0145:  dup
    IL_0146:  ldind.r4
    IL_0147:  ldc.r4     -9.8100004
    IL_014c:  ldarg.1
    IL_014d:  mul
    IL_014e:  add
    IL_014f:  stind.r4
    IL_0150:  ldloc.s    V_4
    IL_0152:  dup
    IL_0153:  ldfld      valuetype [Engine]Engine.Vector3 Game.PaintParticleSystem/Particle::Velocity
    IL_0158:  ldloc.s    V_4
    IL_015a:  ldfld      float32 Game.PaintParticleSystem/Particle::HighDampingFactor
    IL_015f:  ldc.r4     0.0
    IL_0164:  bgt.s      IL_0169

    IL_0166:  ldloc.0
    IL_0167:  br.s       IL_0172

    IL_0169:  ldloc.1
    IL_016a:  ldloc.s    V_4
    IL_016c:  ldfld      float32 Game.PaintParticleSystem/Particle::HighDampingFactor
    IL_0171:  mul
    IL_0172:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0177:  stfld      valuetype [Engine]Engine.Vector3 Game.PaintParticleSystem/Particle::Velocity
    IL_017c:  ldloc.s    V_4
    IL_017e:  ldarg.0
    IL_017f:  ldfld      valuetype [Engine]Engine.Color Game.PaintParticleSystem::m_color
    IL_0184:  ldc.r4     1.5
    IL_0189:  ldloc.s    V_4
    IL_018b:  ldfld      float32 Game.PaintParticleSystem/Particle::TimeToLive
    IL_0190:  mul
    IL_0191:  ldloc.s    V_4
    IL_0193:  ldfld      float32 Game.PaintParticleSystem/Particle::Alpha
    IL_0198:  mul
    IL_0199:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_019e:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_01a3:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01a8:  br.s       IL_01b2

    IL_01aa:  ldloc.s    V_4
    IL_01ac:  ldc.i4.0
    IL_01ad:  stfld      bool Game.Particle::IsActive
    IL_01b2:  ldloc.3
    IL_01b3:  ldc.i4.1
    IL_01b4:  add
    IL_01b5:  stloc.3
    IL_01b6:  ldloc.3
    IL_01b7:  ldarg.0
    IL_01b8:  call       instance !0[] class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>::get_Particles()
    IL_01bd:  ldlen
    IL_01be:  conv.i4
    IL_01bf:  blt        IL_0033

    IL_01c4:  ldloc.2
    IL_01c5:  ldc.i4.0
    IL_01c6:  ceq
    IL_01c8:  ret
  } // end of method PaintParticleSystem::Simulate

} // end of class Game.PaintParticleSystem