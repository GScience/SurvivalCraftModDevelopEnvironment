.class public auto ansi beforefieldinit Game.BlockDebrisParticleSystem
       extends class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>
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
    .field public static initonly class Game.BlockDebrisParticleSystem/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__4_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.BlockDebrisParticleSystem/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.BlockDebrisParticleSystem/'<>c' Game.BlockDebrisParticleSystem/'<>c'::'<>9'
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
            '<Simulate>b__4_0'(int32 'value',
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
    } // end of method '<>c'::'<Simulate>b__4_0'

  } // end of class '<>c'

  .field private class Game.Random m_random
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain terrain,
                               valuetype [Engine]Engine.Vector3 position,
                               float32 strength,
                               float32 scale,
                               valuetype [Engine]Engine.Color color,
                               int32 textureSlot) cil managed
  {
    // 代码大小       664 (0x298)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             float32 V_4,
             float32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Vector3 V_7)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     50.
    IL_0011:  ldarg.3
    IL_0012:  mul
    IL_0013:  conv.i4
    IL_0014:  call       instance void class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>::.ctor(int32)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  stfld      class Game.SubsystemTerrain Game.BlockDebrisParticleSystem::m_subsystemTerrain
    IL_0020:  ldarg.0
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0027:  ldc.i4.1
    IL_0028:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlocksTexture>(bool)
    IL_002d:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::get_BlocksTexture()
    IL_0032:  call       instance void class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0037:  ldarg.2
    IL_0038:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_003d:  conv.i4
    IL_003e:  stloc.0
    IL_003f:  ldarg.2
    IL_0040:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0045:  conv.i4
    IL_0046:  stloc.1
    IL_0047:  ldarg.2
    IL_0048:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_004d:  conv.i4
    IL_004e:  stloc.2
    IL_004f:  ldc.i4.0
    IL_0050:  stloc.3
    IL_0051:  ldloc.3
    IL_0052:  ldarg.1
    IL_0053:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0058:  ldloc.0
    IL_0059:  ldc.i4.1
    IL_005a:  add
    IL_005b:  ldloc.1
    IL_005c:  ldloc.2
    IL_005d:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0062:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0067:  stloc.3
    IL_0068:  ldloc.3
    IL_0069:  ldarg.1
    IL_006a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_006f:  ldloc.0
    IL_0070:  ldc.i4.1
    IL_0071:  sub
    IL_0072:  ldloc.1
    IL_0073:  ldloc.2
    IL_0074:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0079:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_007e:  stloc.3
    IL_007f:  ldloc.3
    IL_0080:  ldarg.1
    IL_0081:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0086:  ldloc.0
    IL_0087:  ldloc.1
    IL_0088:  ldc.i4.1
    IL_0089:  add
    IL_008a:  ldloc.2
    IL_008b:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0090:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0095:  stloc.3
    IL_0096:  ldloc.3
    IL_0097:  ldarg.1
    IL_0098:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_009d:  ldloc.0
    IL_009e:  ldloc.1
    IL_009f:  ldc.i4.1
    IL_00a0:  sub
    IL_00a1:  ldloc.2
    IL_00a2:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00a7:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00ac:  stloc.3
    IL_00ad:  ldloc.3
    IL_00ae:  ldarg.1
    IL_00af:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00b4:  ldloc.0
    IL_00b5:  ldloc.1
    IL_00b6:  ldloc.2
    IL_00b7:  ldc.i4.1
    IL_00b8:  add
    IL_00b9:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00be:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00c3:  stloc.3
    IL_00c4:  ldloc.3
    IL_00c5:  ldarg.1
    IL_00c6:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00cb:  ldloc.0
    IL_00cc:  ldloc.1
    IL_00cd:  ldloc.2
    IL_00ce:  ldc.i4.1
    IL_00cf:  sub
    IL_00d0:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00d5:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00da:  stloc.3
    IL_00db:  ldarg.0
    IL_00dc:  ldc.i4.s   32
    IL_00de:  call       instance void class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_00e3:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00e8:  ldloc.3
    IL_00e9:  ldelem.r4
    IL_00ea:  stloc.s    V_4
    IL_00ec:  ldarg.s    color
    IL_00ee:  ldloc.s    V_4
    IL_00f0:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00f5:  starg.s    color
    IL_00f7:  ldarga.s   color
    IL_00f9:  ldc.i4     0xff
    IL_00fe:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0103:  ldarg.3
    IL_0104:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0109:  stloc.s    V_5
    IL_010b:  ldc.i4.0
    IL_010c:  stloc.s    V_6
    IL_010e:  br         IL_0288

    IL_0113:  ldarg.0
    IL_0114:  call       instance !0[] class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>::get_Particles()
    IL_0119:  ldloc.s    V_6
    IL_011b:  ldelem.ref
    IL_011c:  dup
    IL_011d:  ldc.i4.1
    IL_011e:  stfld      bool Game.Particle::IsActive
    IL_0123:  ldloca.s   V_7
    IL_0125:  ldarg.0
    IL_0126:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_012b:  ldc.r4     -1.
    IL_0130:  ldc.r4     1.
    IL_0135:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_0140:  ldc.r4     -1.
    IL_0145:  ldc.r4     1.
    IL_014a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_014f:  ldarg.0
    IL_0150:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_0155:  ldc.r4     -1.
    IL_015a:  ldc.r4     1.
    IL_015f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0164:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0169:  dup
    IL_016a:  ldarg.2
    IL_016b:  ldarg.3
    IL_016c:  ldc.r4     0.40000001
    IL_0171:  mul
    IL_0172:  ldloc.s    V_7
    IL_0174:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0179:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_017e:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0183:  dup
    IL_0184:  ldarg.s    color
    IL_0186:  ldarg.0
    IL_0187:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_018c:  ldc.r4     0.80000001
    IL_0191:  ldc.r4     0.89999998
    IL_0196:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_019b:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_01a0:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01a5:  dup
    IL_01a6:  ldflda     valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01ab:  ldc.i4     0xff
    IL_01b0:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_01b5:  dup
    IL_01b6:  ldloc.s    V_5
    IL_01b8:  ldarg.s    scale
    IL_01ba:  mul
    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_01c1:  ldc.r4     5.0000001e-002
    IL_01c6:  ldc.r4     5.9999999e-002
    IL_01cb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01d0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_01d5:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_01da:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_01df:  dup
    IL_01e0:  ldloc.s    V_5
    IL_01e2:  ldarg.0
    IL_01e3:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_01e8:  ldc.r4     0.75
    IL_01ed:  ldc.r4     2.5
    IL_01f2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01f7:  mul
    IL_01f8:  stfld      float32 Game.BlockDebrisParticleSystem/Particle::TimeToLive
    IL_01fd:  dup
    IL_01fe:  ldloc.s    V_5
    IL_0200:  ldloc.s    V_7
    IL_0202:  ldarg.0
    IL_0203:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_0208:  ldc.r4     -0.30000001
    IL_020d:  ldc.r4     0.30000001
    IL_0212:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0217:  ldc.r4     0.30000001
    IL_021c:  ldarg.0
    IL_021d:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_0222:  ldc.r4     -0.30000001
    IL_0227:  ldc.r4     0.30000001
    IL_022c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0231:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0236:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_023b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0240:  ldc.r4     2.
    IL_0245:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_024a:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_024f:  ldarg.s    textureSlot
    IL_0251:  ldc.i4.s   16
    IL_0253:  rem
    IL_0254:  ldc.i4.2
    IL_0255:  mul
    IL_0256:  ldarg.0
    IL_0257:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_025c:  ldc.i4.0
    IL_025d:  ldc.i4.1
    IL_025e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0263:  add
    IL_0264:  ldc.i4.s   32
    IL_0266:  ldarg.s    textureSlot
    IL_0268:  ldc.i4.s   16
    IL_026a:  div
    IL_026b:  ldc.i4.2
    IL_026c:  mul
    IL_026d:  ldarg.0
    IL_026e:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_0273:  ldc.i4.0
    IL_0274:  ldc.i4.1
    IL_0275:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_027a:  add
    IL_027b:  mul
    IL_027c:  add
    IL_027d:  stfld      int32 Game.Particle::TextureSlot
    IL_0282:  ldloc.s    V_6
    IL_0284:  ldc.i4.1
    IL_0285:  add
    IL_0286:  stloc.s    V_6
    IL_0288:  ldloc.s    V_6
    IL_028a:  ldarg.0
    IL_028b:  call       instance !0[] class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>::get_Particles()
    IL_0290:  ldlen
    IL_0291:  conv.i4
    IL_0292:  blt        IL_0113

    IL_0297:  ret
  } // end of method BlockDebrisParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
  {
    // 代码大小       479 (0x1df)
    .maxstack  7
    .locals init (float32 V_0,
             bool V_1,
             int32 V_2,
             class Game.BlockDebrisParticleSystem/Particle V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_6,
             valuetype Game.TerrainRaycastResult V_7)
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
    IL_0022:  br         IL_01cc

    IL_0027:  ldarg.0
    IL_0028:  call       instance !0[] class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>::get_Particles()
    IL_002d:  ldloc.2
    IL_002e:  ldelem.ref
    IL_002f:  stloc.3
    IL_0030:  ldloc.3
    IL_0031:  ldfld      bool Game.Particle::IsActive
    IL_0036:  brfalse    IL_01c8

    IL_003b:  ldc.i4.1
    IL_003c:  stloc.1
    IL_003d:  ldloc.3
    IL_003e:  dup
    IL_003f:  ldfld      float32 Game.BlockDebrisParticleSystem/Particle::TimeToLive
    IL_0044:  ldarg.2
    IL_0045:  sub
    IL_0046:  stfld      float32 Game.BlockDebrisParticleSystem/Particle::TimeToLive
    IL_004b:  ldloc.3
    IL_004c:  ldfld      float32 Game.BlockDebrisParticleSystem/Particle::TimeToLive
    IL_0051:  ldc.r4     0.0
    IL_0056:  ble.un     IL_01c1

    IL_005b:  ldloc.3
    IL_005c:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0061:  stloc.s    V_4
    IL_0063:  ldloc.s    V_4
    IL_0065:  ldloc.3
    IL_0066:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_006b:  ldarg.2
    IL_006c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0071:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0076:  stloc.s    V_5
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.SubsystemTerrain Game.BlockDebrisParticleSystem::m_subsystemTerrain
    IL_007e:  ldloc.s    V_4
    IL_0080:  ldloc.s    V_5
    IL_0082:  ldc.i4.0
    IL_0083:  ldc.i4.1
    IL_0084:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.BlockDebrisParticleSystem/'<>c'::'<>9__4_0'
    IL_0089:  dup
    IL_008a:  brtrue.s   IL_00a3

    IL_008c:  pop
    IL_008d:  ldsfld     class Game.BlockDebrisParticleSystem/'<>c' Game.BlockDebrisParticleSystem/'<>c'::'<>9'
    IL_0092:  ldftn      instance bool Game.BlockDebrisParticleSystem/'<>c'::'<Simulate>b__4_0'(int32,
                                                                                                float32)
    IL_0098:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_009d:  dup
    IL_009e:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.BlockDebrisParticleSystem/'<>c'::'<>9__4_0'
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
    IL_00e3:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_00e8:  ldc.r4     -0.25
    IL_00ed:  ldc.r4     0.25
    IL_00f2:  ldc.r4     0.25
    IL_00f7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00fc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0101:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_0106:  dup
    IL_0107:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
    IL_010c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0111:  ldc.r4     0.0
    IL_0116:  beq.s      IL_013d

    IL_0118:  ldloc.3
    IL_0119:  dup
    IL_011a:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_011f:  ldc.r4     0.25
    IL_0124:  ldc.r4     -0.25
    IL_0129:  ldc.r4     0.25
    IL_012e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0133:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0138:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_013d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
    IL_0142:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0147:  ldc.r4     0.0
    IL_014c:  beq.s      IL_0173

    IL_014e:  ldloc.3
    IL_014f:  dup
    IL_0150:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_0155:  ldc.r4     0.25
    IL_015a:  ldc.r4     0.25
    IL_015f:  ldc.r4     -0.25
    IL_0164:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0169:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_016e:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_0173:  ldloc.3
    IL_0174:  ldloc.s    V_5
    IL_0176:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_017b:  ldloc.3
    IL_017c:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_0181:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0186:  dup
    IL_0187:  ldind.r4
    IL_0188:  ldc.r4     -9.8100004
    IL_018d:  ldarg.2
    IL_018e:  mul
    IL_018f:  add
    IL_0190:  stind.r4
    IL_0191:  ldloc.3
    IL_0192:  dup
    IL_0193:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_0198:  ldloc.0
    IL_0199:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_019e:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_01a3:  ldloc.3
    IL_01a4:  dup
    IL_01a5:  ldfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01aa:  ldloc.3
    IL_01ab:  ldfld      float32 Game.BlockDebrisParticleSystem/Particle::TimeToLive
    IL_01b0:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01b5:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_01ba:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01bf:  br.s       IL_01c8

    IL_01c1:  ldloc.3
    IL_01c2:  ldc.i4.0
    IL_01c3:  stfld      bool Game.Particle::IsActive
    IL_01c8:  ldloc.2
    IL_01c9:  ldc.i4.1
    IL_01ca:  add
    IL_01cb:  stloc.2
    IL_01cc:  ldloc.2
    IL_01cd:  ldarg.0
    IL_01ce:  call       instance !0[] class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>::get_Particles()
    IL_01d3:  ldlen
    IL_01d4:  conv.i4
    IL_01d5:  blt        IL_0027

    IL_01da:  ldloc.1
    IL_01db:  ldc.i4.0
    IL_01dc:  ceq
    IL_01de:  ret
  } // end of method BlockDebrisParticleSystem::Simulate

} // end of class Game.BlockDebrisParticleSystem