.class public auto ansi beforefieldinit Game.PukeParticleSystem
       extends class Game.ParticleSystem`1<class Game.PukeParticleSystem/Particle>
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
    .field public static initonly class Game.PukeParticleSystem/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__18_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.PukeParticleSystem/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.PukeParticleSystem/'<>c' Game.PukeParticleSystem/'<>c'::'<>9'
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
            '<Simulate>b__18_0'(int32 'value',
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
    } // end of method '<>c'::'<Simulate>b__18_0'

  } // end of class '<>c'

  .field private class Game.Random m_random
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private float32 m_duration
  .field private float32 m_toGenerate
  .field private valuetype [Engine]Engine.Vector3 '<Position>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<Direction>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsStopped>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_Position() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::'<Position>k__BackingField'
    IL_0006:  ret
  } // end of method PukeParticleSystem::get_Position

  .method public hidebysig specialname instance void 
          set_Position(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::'<Position>k__BackingField'
    IL_0007:  ret
  } // end of method PukeParticleSystem::set_Position

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_Direction() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::'<Direction>k__BackingField'
    IL_0006:  ret
  } // end of method PukeParticleSystem::get_Direction

  .method public hidebysig specialname instance void 
          set_Direction(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::'<Direction>k__BackingField'
    IL_0007:  ret
  } // end of method PukeParticleSystem::set_Direction

  .method public hidebysig specialname instance bool 
          get_IsStopped() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.PukeParticleSystem::'<IsStopped>k__BackingField'
    IL_0006:  ret
  } // end of method PukeParticleSystem::get_IsStopped

  .method public hidebysig specialname instance void 
          set_IsStopped(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.PukeParticleSystem::'<IsStopped>k__BackingField'
    IL_0007:  ret
  } // end of method PukeParticleSystem::set_IsStopped

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain terrain) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.PukeParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   80
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.PukeParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      class Game.SubsystemTerrain Game.PukeParticleSystem::m_subsystemTerrain
    IL_001a:  ldarg.0
    IL_001b:  ldstr      "Textures/PukeParticle"
    IL_0020:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0025:  call       instance void class Game.ParticleSystem`1<class Game.PukeParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_002a:  ldarg.0
    IL_002b:  ldc.i4.3
    IL_002c:  call       instance void class Game.ParticleSystem`1<class Game.PukeParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_0031:  ret
  } // end of method PukeParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       1186 (0x4a2)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Color V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             bool V_9,
             int32 V_10,
             class Game.PukeParticleSystem/Particle V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_14,
             valuetype Game.TerrainRaycastResult V_15,
             valuetype [Engine]Engine.Vector3 V_16)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::get_Position()
    IL_0006:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000b:  call       int32 Game.Terrain::ToCell(float32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::get_Position()
    IL_0017:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_001c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0021:  stloc.1
    IL_0022:  ldarg.0
    IL_0023:  call       instance valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::get_Position()
    IL_0028:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_002d:  call       int32 Game.Terrain::ToCell(float32)
    IL_0032:  stloc.2
    IL_0033:  ldc.i4.0
    IL_0034:  stloc.3
    IL_0035:  ldloc.3
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.SubsystemTerrain Game.PukeParticleSystem::m_subsystemTerrain
    IL_003c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0041:  ldloc.0
    IL_0042:  ldc.i4.1
    IL_0043:  add
    IL_0044:  ldloc.1
    IL_0045:  ldloc.2
    IL_0046:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_004b:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0050:  stloc.3
    IL_0051:  ldloc.3
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.SubsystemTerrain Game.PukeParticleSystem::m_subsystemTerrain
    IL_0058:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005d:  ldloc.0
    IL_005e:  ldc.i4.1
    IL_005f:  sub
    IL_0060:  ldloc.1
    IL_0061:  ldloc.2
    IL_0062:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0067:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_006c:  stloc.3
    IL_006d:  ldloc.3
    IL_006e:  ldarg.0
    IL_006f:  ldfld      class Game.SubsystemTerrain Game.PukeParticleSystem::m_subsystemTerrain
    IL_0074:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0079:  ldloc.0
    IL_007a:  ldloc.1
    IL_007b:  ldc.i4.1
    IL_007c:  add
    IL_007d:  ldloc.2
    IL_007e:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0083:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0088:  stloc.3
    IL_0089:  ldloc.3
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.SubsystemTerrain Game.PukeParticleSystem::m_subsystemTerrain
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
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class Game.SubsystemTerrain Game.PukeParticleSystem::m_subsystemTerrain
    IL_00ac:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00b1:  ldloc.0
    IL_00b2:  ldloc.1
    IL_00b3:  ldloc.2
    IL_00b4:  ldc.i4.1
    IL_00b5:  add
    IL_00b6:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00bb:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00c0:  stloc.3
    IL_00c1:  ldloc.3
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.SubsystemTerrain Game.PukeParticleSystem::m_subsystemTerrain
    IL_00c8:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00cd:  ldloc.0
    IL_00ce:  ldloc.1
    IL_00cf:  ldloc.2
    IL_00d0:  ldc.i4.1
    IL_00d1:  sub
    IL_00d2:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00d7:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00dc:  stloc.3
    IL_00dd:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00e2:  stloc.s    V_4
    IL_00e4:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00e9:  ldloc.3
    IL_00ea:  ldelem.r4
    IL_00eb:  stloc.s    V_5
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  ldloc.s    V_5
    IL_00f1:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00f6:  stloc.s    V_4
    IL_00f8:  ldloca.s   V_4
    IL_00fa:  ldc.i4     0xff
    IL_00ff:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0104:  ldarg.1
    IL_0105:  ldc.r4     0.0
    IL_010a:  ldc.r4     0.1
    IL_010f:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0114:  starg.s    dt
    IL_0116:  ldc.r4     2.9999999e-002
    IL_011b:  ldarg.1
    IL_011c:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0121:  stloc.s    V_6
    IL_0123:  ldarg.0
    IL_0124:  ldarg.0
    IL_0125:  ldfld      float32 Game.PukeParticleSystem::m_duration
    IL_012a:  ldarg.1
    IL_012b:  add
    IL_012c:  stfld      float32 Game.PukeParticleSystem::m_duration
    IL_0131:  ldarg.0
    IL_0132:  ldfld      float32 Game.PukeParticleSystem::m_duration
    IL_0137:  ldc.r4     3.5
    IL_013c:  ble.un.s   IL_0145

    IL_013e:  ldarg.0
    IL_013f:  ldc.i4.1
    IL_0140:  call       instance void Game.PukeParticleSystem::set_IsStopped(bool)
    IL_0145:  ldc.r4     1.3
    IL_014a:  ldc.r4     3.
    IL_014f:  ldarg.0
    IL_0150:  ldfld      float32 Game.PukeParticleSystem::m_duration
    IL_0155:  mul
    IL_0156:  ldarg.0
    IL_0157:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_015c:  ldc.i4.s   100
    IL_015e:  rem
    IL_015f:  conv.r4
    IL_0160:  add
    IL_0161:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0166:  mul
    IL_0167:  ldc.r4     0.30000001
    IL_016c:  sub
    IL_016d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0172:  stloc.s    V_7
    IL_0174:  ldc.r4     30.
    IL_0179:  ldloc.s    V_7
    IL_017b:  mul
    IL_017c:  stloc.s    V_8
    IL_017e:  ldarg.0
    IL_017f:  ldarg.0
    IL_0180:  ldfld      float32 Game.PukeParticleSystem::m_toGenerate
    IL_0185:  ldloc.s    V_8
    IL_0187:  ldarg.1
    IL_0188:  mul
    IL_0189:  add
    IL_018a:  stfld      float32 Game.PukeParticleSystem::m_toGenerate
    IL_018f:  ldc.i4.0
    IL_0190:  stloc.s    V_9
    IL_0192:  ldc.i4.0
    IL_0193:  stloc.s    V_10
    IL_0195:  br         IL_0483

    IL_019a:  ldarg.0
    IL_019b:  call       instance !0[] class Game.ParticleSystem`1<class Game.PukeParticleSystem/Particle>::get_Particles()
    IL_01a0:  ldloc.s    V_10
    IL_01a2:  ldelem.ref
    IL_01a3:  stloc.s    V_11
    IL_01a5:  ldloc.s    V_11
    IL_01a7:  ldfld      bool Game.Particle::IsActive
    IL_01ac:  brfalse    IL_0375

    IL_01b1:  ldc.i4.1
    IL_01b2:  stloc.s    V_9
    IL_01b4:  ldloc.s    V_11
    IL_01b6:  dup
    IL_01b7:  ldfld      float32 Game.PukeParticleSystem/Particle::TimeToLive
    IL_01bc:  ldarg.1
    IL_01bd:  sub
    IL_01be:  stfld      float32 Game.PukeParticleSystem/Particle::TimeToLive
    IL_01c3:  ldloc.s    V_11
    IL_01c5:  ldfld      float32 Game.PukeParticleSystem/Particle::TimeToLive
    IL_01ca:  ldc.r4     0.0
    IL_01cf:  ble.un     IL_0368

    IL_01d4:  ldloc.s    V_11
    IL_01d6:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_01db:  stloc.s    V_12
    IL_01dd:  ldloc.s    V_12
    IL_01df:  ldloc.s    V_11
    IL_01e1:  ldfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_01e6:  ldarg.1
    IL_01e7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01ec:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01f1:  stloc.s    V_13
    IL_01f3:  ldarg.0
    IL_01f4:  ldfld      class Game.SubsystemTerrain Game.PukeParticleSystem::m_subsystemTerrain
    IL_01f9:  ldloc.s    V_12
    IL_01fb:  ldloc.s    V_13
    IL_01fd:  ldc.i4.0
    IL_01fe:  ldc.i4.1
    IL_01ff:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.PukeParticleSystem/'<>c'::'<>9__18_0'
    IL_0204:  dup
    IL_0205:  brtrue.s   IL_021e

    IL_0207:  pop
    IL_0208:  ldsfld     class Game.PukeParticleSystem/'<>c' Game.PukeParticleSystem/'<>c'::'<>9'
    IL_020d:  ldftn      instance bool Game.PukeParticleSystem/'<>c'::'<Simulate>b__18_0'(int32,
                                                                                          float32)
    IL_0213:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0218:  dup
    IL_0219:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.PukeParticleSystem/'<>c'::'<>9__18_0'
    IL_021e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0223:  stloc.s    V_14
    IL_0225:  ldloca.s   V_14
    IL_0227:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_022c:  brfalse    IL_02f1

    IL_0231:  ldloca.s   V_14
    IL_0233:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0238:  stloc.s    V_15
    IL_023a:  ldloca.s   V_15
    IL_023c:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0241:  call       instance valuetype [Engine]Engine.Plane Game.CellFace::CalculatePlane()
    IL_0246:  ldloc.s    V_12
    IL_0248:  stloc.s    V_13
    IL_024a:  dup
    IL_024b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
    IL_0250:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0255:  ldc.r4     0.0
    IL_025a:  beq.s      IL_0282

    IL_025c:  ldloc.s    V_11
    IL_025e:  dup
    IL_025f:  ldfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_0264:  ldc.r4     -5.0000001e-002
    IL_0269:  ldc.r4     5.0000001e-002
    IL_026e:  ldc.r4     5.0000001e-002
    IL_0273:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0278:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_027d:  stfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_0282:  dup
    IL_0283:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
    IL_0288:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_028d:  ldc.r4     0.0
    IL_0292:  beq.s      IL_02ba

    IL_0294:  ldloc.s    V_11
    IL_0296:  dup
    IL_0297:  ldfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_029c:  ldc.r4     5.0000001e-002
    IL_02a1:  ldc.r4     -5.0000001e-002
    IL_02a6:  ldc.r4     5.0000001e-002
    IL_02ab:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02b0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02b5:  stfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_02ba:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
    IL_02bf:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02c4:  ldc.r4     0.0
    IL_02c9:  beq.s      IL_02f1

    IL_02cb:  ldloc.s    V_11
    IL_02cd:  dup
    IL_02ce:  ldfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_02d3:  ldc.r4     5.0000001e-002
    IL_02d8:  ldc.r4     5.0000001e-002
    IL_02dd:  ldc.r4     -5.0000001e-002
    IL_02e2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02e7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02ec:  stfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_02f1:  ldloc.s    V_11
    IL_02f3:  ldloc.s    V_13
    IL_02f5:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_02fa:  ldloc.s    V_11
    IL_02fc:  ldflda     valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_0301:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0306:  dup
    IL_0307:  ldind.r4
    IL_0308:  ldc.r4     -9.8100004
    IL_030d:  ldarg.1
    IL_030e:  mul
    IL_030f:  add
    IL_0310:  stind.r4
    IL_0311:  ldloc.s    V_11
    IL_0313:  dup
    IL_0314:  ldfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_0319:  ldloc.s    V_6
    IL_031b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0320:  stfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_0325:  ldloc.s    V_11
    IL_0327:  dup
    IL_0328:  ldfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_032d:  ldloc.s    V_11
    IL_032f:  ldfld      float32 Game.PukeParticleSystem/Particle::TimeToLive
    IL_0334:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0339:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_033e:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0343:  ldloc.s    V_11
    IL_0345:  ldc.r4     8.9899998
    IL_034a:  ldc.r4     3.
    IL_034f:  ldloc.s    V_11
    IL_0351:  ldfld      float32 Game.PukeParticleSystem/Particle::TimeToLive
    IL_0356:  sub
    IL_0357:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_035c:  mul
    IL_035d:  conv.i4
    IL_035e:  stfld      int32 Game.Particle::TextureSlot
    IL_0363:  br         IL_047d

    IL_0368:  ldloc.s    V_11
    IL_036a:  ldc.i4.0
    IL_036b:  stfld      bool Game.Particle::IsActive
    IL_0370:  br         IL_047d

    IL_0375:  ldarg.0
    IL_0376:  call       instance bool Game.PukeParticleSystem::get_IsStopped()
    IL_037b:  brtrue     IL_047d

    IL_0380:  ldarg.0
    IL_0381:  ldfld      float32 Game.PukeParticleSystem::m_toGenerate
    IL_0386:  ldc.r4     1.
    IL_038b:  blt.un     IL_047d

    IL_0390:  ldarg.0
    IL_0391:  ldfld      class Game.Random Game.PukeParticleSystem::m_random
    IL_0396:  ldc.r4     0.0
    IL_039b:  ldc.r4     1.
    IL_03a0:  ldc.i4.1
    IL_03a1:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                               float32,
                                                                                               bool)
    IL_03a6:  stloc.s    V_16
    IL_03a8:  ldloc.s    V_11
    IL_03aa:  ldc.i4.1
    IL_03ab:  stfld      bool Game.Particle::IsActive
    IL_03b0:  ldloc.s    V_11
    IL_03b2:  ldarg.0
    IL_03b3:  call       instance valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::get_Position()
    IL_03b8:  ldc.r4     5.0000001e-002
    IL_03bd:  ldloc.s    V_16
    IL_03bf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03c4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03c9:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_03ce:  ldloc.s    V_11
    IL_03d0:  ldloc.s    V_4
    IL_03d2:  ldarg.0
    IL_03d3:  ldfld      class Game.Random Game.PukeParticleSystem::m_random
    IL_03d8:  ldc.r4     0.69999999
    IL_03dd:  ldc.r4     1.
    IL_03e2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_03e7:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_03ec:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_03f1:  ldloc.s    V_11
    IL_03f3:  ldc.r4     1.
    IL_03f8:  ldc.r4     2.5
    IL_03fd:  ldloc.s    V_7
    IL_03ff:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0404:  ldarg.0
    IL_0405:  call       instance valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::get_Direction()
    IL_040a:  ldc.r4     0.25
    IL_040f:  ldloc.s    V_16
    IL_0411:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0416:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_041b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0420:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0425:  stfld      valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem/Particle::Velocity
    IL_042a:  ldloc.s    V_11
    IL_042c:  ldc.r4     3.
    IL_0431:  stfld      float32 Game.PukeParticleSystem/Particle::TimeToLive
    IL_0436:  ldloc.s    V_11
    IL_0438:  ldc.r4     0.1
    IL_043d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0442:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_0447:  ldloc.s    V_11
    IL_0449:  ldarg.0
    IL_044a:  ldfld      class Game.Random Game.PukeParticleSystem::m_random
    IL_044f:  callvirt   instance bool Game.Random::Bool()
    IL_0454:  stfld      bool Game.Particle::FlipX
    IL_0459:  ldloc.s    V_11
    IL_045b:  ldarg.0
    IL_045c:  ldfld      class Game.Random Game.PukeParticleSystem::m_random
    IL_0461:  callvirt   instance bool Game.Random::Bool()
    IL_0466:  stfld      bool Game.Particle::FlipY
    IL_046b:  ldarg.0
    IL_046c:  ldarg.0
    IL_046d:  ldfld      float32 Game.PukeParticleSystem::m_toGenerate
    IL_0472:  ldc.r4     1.
    IL_0477:  sub
    IL_0478:  stfld      float32 Game.PukeParticleSystem::m_toGenerate
    IL_047d:  ldloc.s    V_10
    IL_047f:  ldc.i4.1
    IL_0480:  add
    IL_0481:  stloc.s    V_10
    IL_0483:  ldloc.s    V_10
    IL_0485:  ldarg.0
    IL_0486:  call       instance !0[] class Game.ParticleSystem`1<class Game.PukeParticleSystem/Particle>::get_Particles()
    IL_048b:  ldlen
    IL_048c:  conv.i4
    IL_048d:  blt        IL_019a

    IL_0492:  ldarg.0
    IL_0493:  call       instance bool Game.PukeParticleSystem::get_IsStopped()
    IL_0498:  brfalse.s  IL_04a0

    IL_049a:  ldloc.s    V_9
    IL_049c:  ldc.i4.0
    IL_049d:  ceq
    IL_049f:  ret

    IL_04a0:  ldc.i4.0
    IL_04a1:  ret
  } // end of method PukeParticleSystem::Simulate

  .property instance valuetype [Engine]Engine.Vector3
          Position()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::get_Position()
    .set instance void Game.PukeParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
  } // end of property PukeParticleSystem::Position
  .property instance valuetype [Engine]Engine.Vector3
          Direction()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.PukeParticleSystem::get_Direction()
    .set instance void Game.PukeParticleSystem::set_Direction(valuetype [Engine]Engine.Vector3)
  } // end of property PukeParticleSystem::Direction
  .property instance bool IsStopped()
  {
    .get instance bool Game.PukeParticleSystem::get_IsStopped()
    .set instance void Game.PukeParticleSystem::set_IsStopped(bool)
  } // end of property PukeParticleSystem::IsStopped
} // end of class Game.PukeParticleSystem