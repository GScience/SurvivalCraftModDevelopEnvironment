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
      IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
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
    // 代码大小       663 (0x297)
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
    IL_0037:  conv.i4
    IL_0038:  stloc.0
    IL_0039:  ldarg.2
    IL_003a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_003f:  conv.i4
    IL_0040:  stloc.1
    IL_0041:  ldarg.2
    IL_0042:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0047:  conv.i4
    IL_0048:  stloc.2
    IL_0049:  ldc.i4.0
    IL_004a:  stloc.3
    IL_004b:  ldloc.3
    IL_004c:  ldarg.1
    IL_004d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0052:  ldloc.0
    IL_0053:  ldc.i4.1
    IL_0054:  add
    IL_0055:  ldloc.1
    IL_0056:  ldloc.2
    IL_0057:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_005c:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0061:  stloc.3
    IL_0062:  ldloc.3
    IL_0063:  ldarg.1
    IL_0064:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0069:  ldloc.0
    IL_006a:  ldc.i4.1
    IL_006b:  sub
    IL_006c:  ldloc.1
    IL_006d:  ldloc.2
    IL_006e:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0073:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0078:  stloc.3
    IL_0079:  ldloc.3
    IL_007a:  ldarg.1
    IL_007b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0080:  ldloc.0
    IL_0081:  ldloc.1
    IL_0082:  ldc.i4.1
    IL_0083:  add
    IL_0084:  ldloc.2
    IL_0085:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_008a:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_008f:  stloc.3
    IL_0090:  ldloc.3
    IL_0091:  ldarg.1
    IL_0092:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0097:  ldloc.0
    IL_0098:  ldloc.1
    IL_0099:  ldc.i4.1
    IL_009a:  sub
    IL_009b:  ldloc.2
    IL_009c:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00a1:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00a6:  stloc.3
    IL_00a7:  ldloc.3
    IL_00a8:  ldarg.1
    IL_00a9:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00ae:  ldloc.0
    IL_00af:  ldloc.1
    IL_00b0:  ldloc.2
    IL_00b1:  ldc.i4.1
    IL_00b2:  add
    IL_00b3:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00b8:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00bd:  stloc.3
    IL_00be:  ldloc.3
    IL_00bf:  ldarg.1
    IL_00c0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00c5:  ldloc.0
    IL_00c6:  ldloc.1
    IL_00c7:  ldloc.2
    IL_00c8:  ldc.i4.1
    IL_00c9:  sub
    IL_00ca:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00cf:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00d4:  stloc.3
    IL_00d5:  ldarg.0
    IL_00d6:  ldc.i4.s   16
    IL_00d8:  call       instance void class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_00dd:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00e2:  ldloc.3
    IL_00e3:  ldelem.r4
    IL_00e4:  stloc.s    V_4
    IL_00e6:  ldarg.0
    IL_00e7:  ldarg.s    color
    IL_00e9:  ldloc.s    V_4
    IL_00eb:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00f0:  stfld      valuetype [Engine]Engine.Color Game.PaintParticleSystem::m_color
    IL_00f5:  ldarg.0
    IL_00f6:  ldflda     valuetype [Engine]Engine.Color Game.PaintParticleSystem::m_color
    IL_00fb:  ldarga.s   color
    IL_00fd:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0102:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0107:  ldarg.3
    IL_0108:  ldc.r4     0.37
    IL_010d:  ldc.r4     0.15000001
    IL_0112:  ldc.r4     0.17
    IL_0117:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_011c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0121:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0126:  stloc.s    V_5
    IL_0128:  ldarg.3
    IL_0129:  ldloc.s    V_5
    IL_012b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0130:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0135:  stloc.s    V_6
    IL_0137:  ldc.i4.0
    IL_0138:  stloc.s    V_7
    IL_013a:  br         IL_0287

    IL_013f:  ldarg.0
    IL_0140:  call       instance !0[] class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>::get_Particles()
    IL_0145:  ldloc.s    V_7
    IL_0147:  ldelem.ref
    IL_0148:  dup
    IL_0149:  ldc.i4.1
    IL_014a:  stfld      bool Game.Particle::IsActive
    IL_014f:  ldloca.s   V_8
    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_0157:  ldc.r4     -1.
    IL_015c:  ldc.r4     1.
    IL_0161:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0166:  ldarg.0
    IL_0167:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_016c:  ldc.r4     -1.
    IL_0171:  ldc.r4     1.
    IL_0176:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_017b:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0180:  dup
    IL_0181:  ldarg.2
    IL_0182:  ldc.r4     0.40000001
    IL_0187:  ldloc.s    V_8
    IL_0189:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_018e:  ldloc.s    V_5
    IL_0190:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0195:  ldloc.s    V_8
    IL_0197:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_019c:  ldloc.s    V_6
    IL_019e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ad:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b2:  ldc.r4     2.9999999e-002
    IL_01b7:  ldarg.3
    IL_01b8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01bd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c2:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01c7:  dup
    IL_01c8:  ldarg.0
    IL_01c9:  ldfld      valuetype [Engine]Engine.Color Game.PaintParticleSystem::m_color
    IL_01ce:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01d3:  dup
    IL_01d4:  ldarg.0
    IL_01d5:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_01da:  ldc.r4     2.5e-002
    IL_01df:  ldc.r4     3.5e-002
    IL_01e4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_01ee:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_01f3:  dup
    IL_01f4:  ldarg.0
    IL_01f5:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_01fa:  ldc.r4     0.5
    IL_01ff:  ldc.r4     1.5
    IL_0204:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0209:  stfld      float32 Game.PaintParticleSystem/Particle::TimeToLive
    IL_020e:  dup
    IL_020f:  ldc.r4     1.
    IL_0214:  ldloc.s    V_8
    IL_0216:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_021b:  ldloc.s    V_5
    IL_021d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0222:  ldloc.s    V_8
    IL_0224:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0229:  ldloc.s    V_6
    IL_022b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0230:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0235:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_023a:  ldarg.0
    IL_023b:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_0240:  ldc.r4     -3.
    IL_0245:  ldc.r4     0.5
    IL_024a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_024f:  ldarg.3
    IL_0250:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0255:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_025a:  stfld      valuetype [Engine]Engine.Vector3 Game.PaintParticleSystem/Particle::Velocity
    IL_025f:  dup
    IL_0260:  ldc.i4.s   15
    IL_0262:  stfld      int32 Game.Particle::TextureSlot
    IL_0267:  ldarg.0
    IL_0268:  ldfld      class Game.Random Game.PaintParticleSystem::m_random
    IL_026d:  ldc.r4     0.30000001
    IL_0272:  ldc.r4     0.60000002
    IL_0277:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_027c:  stfld      float32 Game.PaintParticleSystem/Particle::Alpha
    IL_0281:  ldloc.s    V_7
    IL_0283:  ldc.i4.1
    IL_0284:  add
    IL_0285:  stloc.s    V_7
    IL_0287:  ldloc.s    V_7
    IL_0289:  ldarg.0
    IL_028a:  call       instance !0[] class Game.ParticleSystem`1<class Game.PaintParticleSystem/Particle>::get_Particles()
    IL_028f:  ldlen
    IL_0290:  conv.i4
    IL_0291:  blt        IL_013f

    IL_0296:  ret
  } // end of method PaintParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
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
    IL_0000:  ldarg.2
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     0.1
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0010:  starg.s    dt
    IL_0012:  ldc.r4     0.2
    IL_0017:  ldarg.2
    IL_0018:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_001d:  stloc.0
    IL_001e:  ldc.r4     1.e-007
    IL_0023:  ldarg.2
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
    IL_0053:  ldarg.2
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
    IL_007d:  ldarg.2
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
    IL_014c:  ldarg.2
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