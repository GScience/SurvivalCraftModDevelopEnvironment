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
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
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
    // 代码大小       656 (0x290)
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
    IL_003d:  call       int32 Game.Terrain::ToCell(float32)
    IL_0042:  stloc.0
    IL_0043:  ldarg.2
    IL_0044:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0049:  call       int32 Game.Terrain::ToCell(float32)
    IL_004e:  stloc.1
    IL_004f:  ldarg.2
    IL_0050:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0055:  call       int32 Game.Terrain::ToCell(float32)
    IL_005a:  stloc.2
    IL_005b:  ldc.i4.0
    IL_005c:  stloc.3
    IL_005d:  ldloc.3
    IL_005e:  ldarg.1
    IL_005f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0064:  ldloc.0
    IL_0065:  ldc.i4.1
    IL_0066:  add
    IL_0067:  ldloc.1
    IL_0068:  ldloc.2
    IL_0069:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_006e:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0073:  stloc.3
    IL_0074:  ldloc.3
    IL_0075:  ldarg.1
    IL_0076:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_007b:  ldloc.0
    IL_007c:  ldc.i4.1
    IL_007d:  sub
    IL_007e:  ldloc.1
    IL_007f:  ldloc.2
    IL_0080:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0085:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_008a:  stloc.3
    IL_008b:  ldloc.3
    IL_008c:  ldarg.1
    IL_008d:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0092:  ldloc.0
    IL_0093:  ldloc.1
    IL_0094:  ldc.i4.1
    IL_0095:  add
    IL_0096:  ldloc.2
    IL_0097:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_009c:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00a1:  stloc.3
    IL_00a2:  ldloc.3
    IL_00a3:  ldarg.1
    IL_00a4:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00a9:  ldloc.0
    IL_00aa:  ldloc.1
    IL_00ab:  ldc.i4.1
    IL_00ac:  sub
    IL_00ad:  ldloc.2
    IL_00ae:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00b3:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00b8:  stloc.3
    IL_00b9:  ldloc.3
    IL_00ba:  ldarg.1
    IL_00bb:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00c0:  ldloc.0
    IL_00c1:  ldloc.1
    IL_00c2:  ldloc.2
    IL_00c3:  ldc.i4.1
    IL_00c4:  add
    IL_00c5:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00ca:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00cf:  stloc.3
    IL_00d0:  ldloc.3
    IL_00d1:  ldarg.1
    IL_00d2:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00d7:  ldloc.0
    IL_00d8:  ldloc.1
    IL_00d9:  ldloc.2
    IL_00da:  ldc.i4.1
    IL_00db:  sub
    IL_00dc:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00e1:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00e6:  stloc.3
    IL_00e7:  ldarg.0
    IL_00e8:  ldc.i4.s   32
    IL_00ea:  call       instance void class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_00ef:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00f4:  ldloc.3
    IL_00f5:  ldelem.r4
    IL_00f6:  stloc.s    V_4
    IL_00f8:  ldarg.s    color
    IL_00fa:  ldloc.s    V_4
    IL_00fc:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0101:  starg.s    color
    IL_0103:  ldarga.s   color
    IL_0105:  ldc.i4     0xff
    IL_010a:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_010f:  ldarg.3
    IL_0110:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0115:  stloc.s    V_5
    IL_0117:  ldc.i4.0
    IL_0118:  stloc.s    V_6
    IL_011a:  br         IL_0280

    IL_011f:  ldarg.0
    IL_0120:  call       instance !0[] class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>::get_Particles()
    IL_0125:  ldloc.s    V_6
    IL_0127:  ldelem.ref
    IL_0128:  dup
    IL_0129:  ldc.i4.1
    IL_012a:  stfld      bool Game.Particle::IsActive
    IL_012f:  ldloca.s   V_7
    IL_0131:  ldarg.0
    IL_0132:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_0137:  ldc.r4     -1.
    IL_013c:  ldc.r4     1.
    IL_0141:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_014c:  ldc.r4     -1.
    IL_0151:  ldc.r4     1.
    IL_0156:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_015b:  ldarg.0
    IL_015c:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_0161:  ldc.r4     -1.
    IL_0166:  ldc.r4     1.
    IL_016b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0170:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0175:  dup
    IL_0176:  ldarg.2
    IL_0177:  ldarg.3
    IL_0178:  ldc.r4     0.44999999
    IL_017d:  mul
    IL_017e:  ldloc.s    V_7
    IL_0180:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0185:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_018a:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_018f:  dup
    IL_0190:  ldarg.s    color
    IL_0192:  ldarg.0
    IL_0193:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_0198:  ldc.r4     0.69999999
    IL_019d:  ldc.r4     1.
    IL_01a2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01a7:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_01ac:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01b1:  dup
    IL_01b2:  ldloc.s    V_5
    IL_01b4:  ldarg.s    scale
    IL_01b6:  mul
    IL_01b7:  ldarg.0
    IL_01b8:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_01bd:  ldc.r4     5.0000001e-002
    IL_01c2:  ldc.r4     5.9999999e-002
    IL_01c7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01cc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_01d1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_01d6:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_01db:  dup
    IL_01dc:  ldloc.s    V_5
    IL_01de:  ldarg.0
    IL_01df:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_01e4:  ldc.r4     1.
    IL_01e9:  ldc.r4     3.
    IL_01ee:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01f3:  mul
    IL_01f4:  stfld      float32 Game.BlockDebrisParticleSystem/Particle::TimeToLive
    IL_01f9:  dup
    IL_01fa:  ldloc.s    V_5
    IL_01fc:  ldc.r4     2.
    IL_0201:  mul
    IL_0202:  ldloc.s    V_7
    IL_0204:  ldarg.0
    IL_0205:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_020a:  ldc.r4     -0.2
    IL_020f:  ldc.r4     0.2
    IL_0214:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0219:  ldc.r4     0.60000002
    IL_021e:  ldarg.0
    IL_021f:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_0224:  ldc.r4     -0.2
    IL_0229:  ldc.r4     0.2
    IL_022e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0233:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0238:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_023d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0242:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockDebrisParticleSystem/Particle::Velocity
    IL_0247:  ldarg.s    textureSlot
    IL_0249:  ldc.i4.s   16
    IL_024b:  rem
    IL_024c:  ldc.i4.2
    IL_024d:  mul
    IL_024e:  ldarg.0
    IL_024f:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_0254:  ldc.i4.0
    IL_0255:  ldc.i4.1
    IL_0256:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_025b:  add
    IL_025c:  ldc.i4.s   32
    IL_025e:  ldarg.s    textureSlot
    IL_0260:  ldc.i4.s   16
    IL_0262:  div
    IL_0263:  ldc.i4.2
    IL_0264:  mul
    IL_0265:  ldarg.0
    IL_0266:  ldfld      class Game.Random Game.BlockDebrisParticleSystem::m_random
    IL_026b:  ldc.i4.0
    IL_026c:  ldc.i4.1
    IL_026d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0272:  add
    IL_0273:  mul
    IL_0274:  add
    IL_0275:  stfld      int32 Game.Particle::TextureSlot
    IL_027a:  ldloc.s    V_6
    IL_027c:  ldc.i4.1
    IL_027d:  add
    IL_027e:  stloc.s    V_6
    IL_0280:  ldloc.s    V_6
    IL_0282:  ldarg.0
    IL_0283:  call       instance !0[] class Game.ParticleSystem`1<class Game.BlockDebrisParticleSystem/Particle>::get_Particles()
    IL_0288:  ldlen
    IL_0289:  conv.i4
    IL_028a:  blt        IL_011f

    IL_028f:  ret
  } // end of method BlockDebrisParticleSystem::.ctor

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
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
    IL_0044:  ldarg.1
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
    IL_006b:  ldarg.1
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
    IL_018d:  ldarg.1
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