.class public auto ansi beforefieldinit Game.SubsystemMetersBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemMetersBlockBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__25_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemMetersBlockBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemMetersBlockBehavior/'<>c' Game.SubsystemMetersBlockBehavior/'<>c'::'<>9'
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
            '<CalculateTemperature>b__25_0'(int32 raycastValue,
                                            float32 d) cil managed
    {
      // 代码大小       33 (0x21)
      .maxstack  2
      .locals init (class Game.Block V_0)
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  stloc.0
      IL_000d:  ldloc.0
      IL_000e:  ldfld      bool Game.Block::IsCollidable
      IL_0013:  brfalse.s  IL_001f

      IL_0015:  ldloc.0
      IL_0016:  ldfld      bool Game.Block::IsTransparent
      IL_001b:  ldc.i4.0
      IL_001c:  ceq
      IL_001e:  ret

      IL_001f:  ldc.i4.0
      IL_0020:  ret
    } // end of method '<>c'::'<CalculateTemperature>b__25_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemWeather m_subsystemWeather
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> m_thermometersByPoint
  .field private class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> m_thermometersToSimulate
  .field private int32 m_thermometersToSimulateIndex
  .field private static literal int32 m_diameterBits = int32(0x00000006)
  .field private static literal int32 m_diameter = int32(0x00000040)
  .field private static literal int32 m_diameterMask = int32(0x0000003F)
  .field private static literal int32 m_radius = int32(0x00000020)
  .field private class [Engine]Engine.DynamicArray`1<int32> m_toVisit
  .field private int32[] m_visited
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   120
    IL_000a:  stelem.i4
    IL_000b:  dup
    IL_000c:  ldc.i4.1
    IL_000d:  ldc.i4.s   121
    IL_000f:  stelem.i4
    IL_0010:  ret
  } // end of method SubsystemMetersBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0013:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0018:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.1
    IL_002a:  ldloc.0
    IL_002b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0030:  sub
    IL_0031:  ldarg.2
    IL_0032:  ldloc.0
    IL_0033:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0038:  sub
    IL_0039:  ldarg.3
    IL_003a:  ldloc.0
    IL_003b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0040:  sub
    IL_0041:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0046:  stloc.1
    IL_0047:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_004c:  ldloc.1
    IL_004d:  ldelem.ref
    IL_004e:  ldfld      bool Game.Block::IsTransparent
    IL_0053:  brfalse.s  IL_0067

    IL_0055:  ldarg.0
    IL_0056:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_005b:  ldc.i4.0
    IL_005c:  ldarg.1
    IL_005d:  ldarg.2
    IL_005e:  ldarg.3
    IL_005f:  ldc.i4.0
    IL_0060:  ldc.i4.0
    IL_0061:  ldc.i4.0
    IL_0062:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0067:  ret
  } // end of method SubsystemMetersBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    y
    IL_0005:  ldarg.s    z
    IL_0007:  call       instance void Game.SubsystemMetersBlockBehavior::AddMeter(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
    IL_000c:  ret
  } // end of method SubsystemMetersBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 oldValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    y
    IL_0005:  ldarg.s    z
    IL_0007:  call       instance void Game.SubsystemMetersBlockBehavior::RemoveMeter(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32)
    IL_000c:  ret
  } // end of method SubsystemMetersBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnBlockModified(int32 'value',
                          int32 oldValue,
                          int32 x,
                          int32 y,
                          int32 z) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    y
    IL_0005:  ldarg.s    z
    IL_0007:  call       instance void Game.SubsystemMetersBlockBehavior::RemoveMeter(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      int32)
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldarg.3
    IL_000f:  ldarg.s    y
    IL_0011:  ldarg.s    z
    IL_0013:  call       instance void Game.SubsystemMetersBlockBehavior::AddMeter(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
    IL_0018:  ret
  } // end of method SubsystemMetersBlockBehavior::OnBlockModified

  .method public hidebysig virtual instance void 
          OnBlockGenerated(int32 'value',
                           int32 x,
                           int32 y,
                           int32 z,
                           bool isLoaded) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    z
    IL_0006:  call       instance void Game.SubsystemMetersBlockBehavior::AddMeter(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
    IL_000b:  ret
  } // end of method SubsystemMetersBlockBehavior::OnBlockGenerated

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       205 (0xcd)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,int32> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3> V_3,
             valuetype [Engine]Engine.Point3 V_4)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_000c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::get_Keys()
    IL_0011:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,int32>::GetEnumerator()
    IL_0016:  stloc.1
    .try
    {
      IL_0017:  br.s       IL_007a

      IL_0019:  ldloca.s   V_1
      IL_001b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,int32>::get_Current()
      IL_0020:  stloc.2
      IL_0021:  ldloc.2
      IL_0022:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0027:  ldarg.1
      IL_0028:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_002d:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0032:  blt.s      IL_007a

      IL_0034:  ldloc.2
      IL_0035:  ldfld      int32 [Engine]Engine.Point3::X
      IL_003a:  ldarg.1
      IL_003b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0040:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0045:  ldc.i4.s   16
      IL_0047:  add
      IL_0048:  bge.s      IL_007a

      IL_004a:  ldloc.2
      IL_004b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0050:  ldarg.1
      IL_0051:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0056:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_005b:  blt.s      IL_007a

      IL_005d:  ldloc.2
      IL_005e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0063:  ldarg.1
      IL_0064:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0069:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_006e:  ldc.i4.s   16
      IL_0070:  add
      IL_0071:  bge.s      IL_007a

      IL_0073:  ldloc.0
      IL_0074:  ldloc.2
      IL_0075:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_007a:  ldloca.s   V_1
      IL_007c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,int32>::MoveNext()
      IL_0081:  brtrue.s   IL_0019

      IL_0083:  leave.s    IL_0093

    }  // end .try
    finally
    {
      IL_0085:  ldloca.s   V_1
      IL_0087:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,int32>
      IL_008d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0092:  endfinally
    }  // end handler
    IL_0093:  ldloc.0
    IL_0094:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_0099:  stloc.3
    .try
    {
      IL_009a:  br.s       IL_00b3

      IL_009c:  ldloca.s   V_3
      IL_009e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_00a3:  stloc.s    V_4
      IL_00a5:  ldarg.0
      IL_00a6:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
      IL_00ab:  ldloc.s    V_4
      IL_00ad:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::Remove(!0)
      IL_00b2:  pop
      IL_00b3:  ldloca.s   V_3
      IL_00b5:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_00ba:  brtrue.s   IL_009c

      IL_00bc:  leave.s    IL_00cc

    }  // end .try
    finally
    {
      IL_00be:  ldloca.s   V_3
      IL_00c0:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_00c6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00cb:  endfinally
    }  // end handler
    IL_00cc:  ret
  } // end of method SubsystemMetersBlockBehavior::OnChunkDiscarding

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0014:  stfld      class Game.SubsystemTime Game.SubsystemMetersBlockBehavior::m_subsystemTime
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemWeather>(bool)
    IL_0026:  stfld      class Game.SubsystemWeather Game.SubsystemMetersBlockBehavior::m_subsystemWeather
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0038:  stfld      class Game.SubsystemSky Game.SubsystemMetersBlockBehavior::m_subsystemSky
    IL_003d:  ret
  } // end of method SubsystemMetersBlockBehavior::Load

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemMetersBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       197 (0xc5)
    .maxstack  5
    .locals init (float64 V_0,
             valuetype [Engine]Engine.Point3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemMetersBlockBehavior::m_thermometersToSimulateIndex
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemMetersBlockBehavior::m_thermometersToSimulate
    IL_000c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_0011:  bge.s      IL_008e

    IL_0013:  ldc.r8     5.
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemMetersBlockBehavior::m_thermometersToSimulate
    IL_0022:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_0027:  conv.r8
    IL_0028:  div
    IL_0029:  ldc.r8     1.
    IL_0032:  call       float64 [Engine]Engine.MathUtils::Max(float64,
                                                               float64)
    IL_0037:  stloc.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.SubsystemTime Game.SubsystemMetersBlockBehavior::m_subsystemTime
    IL_003e:  ldloc.0
    IL_003f:  ldc.r8     0.0
    IL_0048:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_004d:  brfalse.s  IL_00c4

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemMetersBlockBehavior::m_thermometersToSimulate
    IL_0055:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Array()
    IL_005a:  ldarg.0
    IL_005b:  ldfld      int32 Game.SubsystemMetersBlockBehavior::m_thermometersToSimulateIndex
    IL_0060:  ldelem     [Engine]Engine.Point3
    IL_0065:  stloc.1
    IL_0066:  ldarg.0
    IL_0067:  ldloc.1
    IL_0068:  ldfld      int32 [Engine]Engine.Point3::X
    IL_006d:  ldloc.1
    IL_006e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0073:  ldloc.1
    IL_0074:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0079:  ldc.i4.1
    IL_007a:  call       instance void Game.SubsystemMetersBlockBehavior::SimulateThermometer(int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              bool)
    IL_007f:  ldarg.0
    IL_0080:  ldarg.0
    IL_0081:  ldfld      int32 Game.SubsystemMetersBlockBehavior::m_thermometersToSimulateIndex
    IL_0086:  ldc.i4.1
    IL_0087:  add
    IL_0088:  stfld      int32 Game.SubsystemMetersBlockBehavior::m_thermometersToSimulateIndex
    IL_008d:  ret

    IL_008e:  ldarg.0
    IL_008f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_0094:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::get_Count()
    IL_0099:  ldc.i4.0
    IL_009a:  ble.s      IL_00c4

    IL_009c:  ldarg.0
    IL_009d:  ldc.i4.0
    IL_009e:  stfld      int32 Game.SubsystemMetersBlockBehavior::m_thermometersToSimulateIndex
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemMetersBlockBehavior::m_thermometersToSimulate
    IL_00a9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::Clear()
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemMetersBlockBehavior::m_thermometersToSimulate
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_00ba:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::get_Keys()
    IL_00bf:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_00c4:  ret
  } // end of method SubsystemMetersBlockBehavior::Update

  .method public hidebysig instance int32 
          GetThermometerReading(int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  ldarg.3
    IL_000b:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0010:  ldloca.s   V_0
    IL_0012:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::TryGetValue(!0,
                                                                                                                                                             !1&)
    IL_0017:  pop
    IL_0018:  ldloc.0
    IL_0019:  ret
  } // end of method SubsystemMetersBlockBehavior::GetThermometerReading

  .method public hidebysig instance void 
          CalculateTemperature(int32 x,
                               int32 y,
                               int32 z,
                               float32 meterTemperature,
                               float32 meterInsulation,
                               [out] float32& temperature,
                               [out] float32& temperatureFlux) cil managed
  {
    // 代码大小       1587 (0x633)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             class Game.TerrainChunk V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             int32 V_23,
             class Game.Block V_24,
             float32 V_25,
             int32 V_26,
             int32 V_27,
             float32 V_28,
             int32 V_29,
             int32 V_30,
             float32 V_31,
             float32 V_32,
             int32 V_33,
             int32 V_34,
             float32 V_35,
             valuetype Game.PrecipitationShaftInfo V_36,
             float32 V_37,
             float32 V_38,
             int32 V_39,
             int32 V_40,
             class Game.TerrainChunk V_41,
             int32 V_42,
             int32 V_43,
             int32 V_44,
             int32 V_45,
             int32 V_46,
             float32 V_47,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_48,
             float32 V_49,
             float32 V_50,
             float32 V_51,
             float32 V_52,
             float32 V_53)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_0006:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Clear()
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.s    V_9
    IL_000e:  br.s       IL_0020

    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32[] Game.SubsystemMetersBlockBehavior::m_visited
    IL_0016:  ldloc.s    V_9
    IL_0018:  ldc.i4.0
    IL_0019:  stelem.i4
    IL_001a:  ldloc.s    V_9
    IL_001c:  ldc.i4.1
    IL_001d:  add
    IL_001e:  stloc.s    V_9
    IL_0020:  ldloc.s    V_9
    IL_0022:  ldarg.0
    IL_0023:  ldfld      int32[] Game.SubsystemMetersBlockBehavior::m_visited
    IL_0028:  ldlen
    IL_0029:  conv.i4
    IL_002a:  blt.s      IL_0010

    IL_002c:  ldc.r4     0.0
    IL_0031:  stloc.0
    IL_0032:  ldc.r4     0.0
    IL_0037:  stloc.1
    IL_0038:  ldc.r4     0.0
    IL_003d:  stloc.2
    IL_003e:  ldc.r4     0.0
    IL_0043:  stloc.3
    IL_0044:  ldc.r4     0.0
    IL_0049:  stloc.s    V_4
    IL_004b:  ldc.r4     0.0
    IL_0050:  stloc.s    V_5
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_0058:  ldc.i4     0x20820
    IL_005d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_0062:  ldc.i4.0
    IL_0063:  stloc.s    V_10
    IL_0065:  br         IL_03ac

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_0070:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<int32>::get_Array()
    IL_0075:  ldloc.s    V_10
    IL_0077:  ldelem.i4
    IL_0078:  stloc.s    V_11
    IL_007a:  ldarg.0
    IL_007b:  ldfld      int32[] Game.SubsystemMetersBlockBehavior::m_visited
    IL_0080:  ldloc.s    V_11
    IL_0082:  ldc.i4.s   32
    IL_0084:  div
    IL_0085:  ldelem.i4
    IL_0086:  ldc.i4.1
    IL_0087:  ldloc.s    V_11
    IL_0089:  ldc.i4.s   31
    IL_008b:  and
    IL_008c:  ldc.i4.s   31
    IL_008e:  and
    IL_008f:  shl
    IL_0090:  and
    IL_0091:  brtrue     IL_03a6

    IL_0096:  ldarg.0
    IL_0097:  ldfld      int32[] Game.SubsystemMetersBlockBehavior::m_visited
    IL_009c:  ldloc.s    V_11
    IL_009e:  ldc.i4.s   32
    IL_00a0:  div
    IL_00a1:  ldelema    [System.Runtime]System.Int32
    IL_00a6:  dup
    IL_00a7:  ldind.i4
    IL_00a8:  ldc.i4.1
    IL_00a9:  ldloc.s    V_11
    IL_00ab:  ldc.i4.s   31
    IL_00ad:  and
    IL_00ae:  ldc.i4.s   31
    IL_00b0:  and
    IL_00b1:  shl
    IL_00b2:  or
    IL_00b3:  stind.i4
    IL_00b4:  ldloc.s    V_11
    IL_00b6:  ldc.i4.s   63
    IL_00b8:  and
    IL_00b9:  ldc.i4.s   32
    IL_00bb:  sub
    IL_00bc:  stloc.s    V_12
    IL_00be:  ldloc.s    V_11
    IL_00c0:  ldc.i4.6
    IL_00c1:  shr
    IL_00c2:  ldc.i4.s   63
    IL_00c4:  and
    IL_00c5:  ldc.i4.s   32
    IL_00c7:  sub
    IL_00c8:  stloc.s    V_13
    IL_00ca:  ldloc.s    V_11
    IL_00cc:  ldc.i4.s   12
    IL_00ce:  shr
    IL_00cf:  ldc.i4.s   63
    IL_00d1:  and
    IL_00d2:  ldc.i4.s   32
    IL_00d4:  sub
    IL_00d5:  stloc.s    V_14
    IL_00d7:  ldloc.s    V_12
    IL_00d9:  ldarg.1
    IL_00da:  add
    IL_00db:  stloc.s    V_15
    IL_00dd:  ldloc.s    V_13
    IL_00df:  ldarg.2
    IL_00e0:  add
    IL_00e1:  stloc.s    V_16
    IL_00e3:  ldloc.s    V_14
    IL_00e5:  ldarg.3
    IL_00e6:  add
    IL_00e7:  stloc.s    V_17
    IL_00e9:  ldarg.0
    IL_00ea:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00ef:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00f4:  ldloc.s    V_15
    IL_00f6:  ldloc.s    V_17
    IL_00f8:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_00fd:  stloc.s    V_18
    IL_00ff:  ldloc.s    V_18
    IL_0101:  brfalse    IL_03a6

    IL_0106:  ldloc.s    V_16
    IL_0108:  ldc.i4.0
    IL_0109:  blt        IL_03a6

    IL_010e:  ldloc.s    V_16
    IL_0110:  ldc.i4     0x80
    IL_0115:  bge        IL_03a6

    IL_011a:  ldloc.s    V_15
    IL_011c:  ldc.i4.s   15
    IL_011e:  and
    IL_011f:  stloc.s    V_19
    IL_0121:  ldloc.s    V_16
    IL_0123:  stloc.s    V_20
    IL_0125:  ldloc.s    V_17
    IL_0127:  ldc.i4.s   15
    IL_0129:  and
    IL_012a:  stloc.s    V_21
    IL_012c:  ldloc.s    V_18
    IL_012e:  ldloc.s    V_19
    IL_0130:  ldloc.s    V_20
    IL_0132:  ldloc.s    V_21
    IL_0134:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0139:  stloc.s    V_22
    IL_013b:  ldloc.s    V_22
    IL_013d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0142:  stloc.s    V_23
    IL_0144:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0149:  ldloc.s    V_23
    IL_014b:  ldelem.ref
    IL_014c:  stloc.s    V_24
    IL_014e:  ldloc.s    V_22
    IL_0150:  call       float32 Game.SubsystemMetersBlockBehavior::GetHeat(int32)
    IL_0155:  stloc.s    V_25
    IL_0157:  ldloc.s    V_25
    IL_0159:  ldc.r4     0.0
    IL_015e:  ble.un.s   IL_01b3

    IL_0160:  ldloc.s    V_12
    IL_0162:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_0167:  ldloc.s    V_13
    IL_0169:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_016e:  add
    IL_016f:  ldloc.s    V_14
    IL_0171:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_0176:  add
    IL_0177:  stloc.s    V_26
    IL_0179:  ldloc.s    V_26
    IL_017b:  ldc.i4.0
    IL_017c:  bgt.s      IL_0181

    IL_017e:  ldc.i4.1
    IL_017f:  br.s       IL_018a

    IL_0181:  ldc.i4.4
    IL_0182:  ldloc.s    V_26
    IL_0184:  mul
    IL_0185:  ldloc.s    V_26
    IL_0187:  mul
    IL_0188:  ldc.i4.2
    IL_0189:  add
    IL_018a:  stloc.s    V_27
    IL_018c:  ldc.r4     1.
    IL_0191:  ldloc.s    V_27
    IL_0193:  conv.r4
    IL_0194:  div
    IL_0195:  stloc.s    V_28
    IL_0197:  ldloc.s    V_4
    IL_0199:  ldloc.s    V_28
    IL_019b:  ldc.r4     36.
    IL_01a0:  mul
    IL_01a1:  ldloc.s    V_25
    IL_01a3:  mul
    IL_01a4:  add
    IL_01a5:  stloc.s    V_4
    IL_01a7:  ldloc.s    V_5
    IL_01a9:  ldloc.s    V_28
    IL_01ab:  add
    IL_01ac:  stloc.s    V_5
    IL_01ae:  br         IL_03a6

    IL_01b3:  ldloc.s    V_24
    IL_01b5:  ldloc.s    V_22
    IL_01b7:  callvirt   instance bool Game.Block::IsHeatBlocker(int32)
    IL_01bc:  brfalse    IL_024b

    IL_01c1:  ldloc.s    V_12
    IL_01c3:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_01c8:  ldloc.s    V_13
    IL_01ca:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_01cf:  add
    IL_01d0:  ldloc.s    V_14
    IL_01d2:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_01d7:  add
    IL_01d8:  stloc.s    V_29
    IL_01da:  ldloc.s    V_29
    IL_01dc:  ldc.i4.0
    IL_01dd:  bgt.s      IL_01e2

    IL_01df:  ldc.i4.1
    IL_01e0:  br.s       IL_01eb

    IL_01e2:  ldc.i4.4
    IL_01e3:  ldloc.s    V_29
    IL_01e5:  mul
    IL_01e6:  ldloc.s    V_29
    IL_01e8:  mul
    IL_01e9:  ldc.i4.2
    IL_01ea:  add
    IL_01eb:  stloc.s    V_30
    IL_01ed:  ldc.r4     1.
    IL_01f2:  ldloc.s    V_30
    IL_01f4:  conv.r4
    IL_01f5:  div
    IL_01f6:  stloc.s    V_31
    IL_01f8:  ldloc.s    V_18
    IL_01fa:  ldloc.s    V_19
    IL_01fc:  ldloc.s    V_21
    IL_01fe:  callvirt   instance int32 Game.TerrainChunk::GetTemperatureFast(int32,
                                                                              int32)
    IL_0203:  conv.r4
    IL_0204:  stloc.s    V_32
    IL_0206:  ldloc.s    V_24
    IL_0208:  isinst     Game.WaterBlock
    IL_020d:  brfalse.s  IL_0229

    IL_020f:  ldloc.s    V_18
    IL_0211:  ldloc.s    V_19
    IL_0213:  ldloc.s    V_21
    IL_0215:  callvirt   instance int32 Game.TerrainChunk::GetTemperatureFast(int32,
                                                                              int32)
    IL_021a:  ldc.i4.4
    IL_021b:  sub
    IL_021c:  ldc.i4.0
    IL_021d:  ldc.i4.s   12
    IL_021f:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0224:  conv.r4
    IL_0225:  stloc.s    V_32
    IL_0227:  br.s       IL_0239

    IL_0229:  ldloc.s    V_24
    IL_022b:  isinst     Game.IceBlock
    IL_0230:  brfalse.s  IL_0239

    IL_0232:  ldc.r4     0.0
    IL_0237:  stloc.s    V_32
    IL_0239:  ldloc.0
    IL_023a:  ldloc.s    V_31
    IL_023c:  ldloc.s    V_32
    IL_023e:  mul
    IL_023f:  add
    IL_0240:  stloc.0
    IL_0241:  ldloc.1
    IL_0242:  ldloc.s    V_31
    IL_0244:  add
    IL_0245:  stloc.1
    IL_0246:  br         IL_03a6

    IL_024b:  ldarg.2
    IL_024c:  ldloc.s    V_18
    IL_024e:  ldloc.s    V_19
    IL_0250:  ldloc.s    V_21
    IL_0252:  callvirt   instance int32 Game.TerrainChunk::GetTopHeightFast(int32,
                                                                            int32)
    IL_0257:  blt        IL_0309

    IL_025c:  ldloc.s    V_12
    IL_025e:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_0263:  ldloc.s    V_13
    IL_0265:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_026a:  add
    IL_026b:  ldloc.s    V_14
    IL_026d:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_0272:  add
    IL_0273:  stloc.s    V_33
    IL_0275:  ldloc.s    V_33
    IL_0277:  ldc.i4.0
    IL_0278:  bgt.s      IL_027d

    IL_027a:  ldc.i4.1
    IL_027b:  br.s       IL_0286

    IL_027d:  ldc.i4.4
    IL_027e:  ldloc.s    V_33
    IL_0280:  mul
    IL_0281:  ldloc.s    V_33
    IL_0283:  mul
    IL_0284:  ldc.i4.2
    IL_0285:  add
    IL_0286:  stloc.s    V_34
    IL_0288:  ldc.r4     1.
    IL_028d:  ldloc.s    V_34
    IL_028f:  conv.r4
    IL_0290:  div
    IL_0291:  stloc.s    V_35
    IL_0293:  ldarg.0
    IL_0294:  ldfld      class Game.SubsystemWeather Game.SubsystemMetersBlockBehavior::m_subsystemWeather
    IL_0299:  ldarg.1
    IL_029a:  ldarg.3
    IL_029b:  callvirt   instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_02a0:  stloc.s    V_36
    IL_02a2:  ldarg.2
    IL_02a3:  ldloc.s    V_36
    IL_02a5:  ldfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_02aa:  bge.s      IL_02b3

    IL_02ac:  ldc.r4     0.0
    IL_02b1:  br.s       IL_02c9

    IL_02b3:  ldc.r4     0.0
    IL_02b8:  ldc.r4     -2.
    IL_02bd:  ldloc.s    V_36
    IL_02bf:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_02c4:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_02c9:  stloc.s    V_37
    IL_02cb:  ldc.r4     -6.
    IL_02d0:  ldc.r4     0.0
    IL_02d5:  ldarg.0
    IL_02d6:  ldfld      class Game.SubsystemSky Game.SubsystemMetersBlockBehavior::m_subsystemSky
    IL_02db:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_02e0:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_02e5:  stloc.s    V_38
    IL_02e7:  ldloc.2
    IL_02e8:  ldloc.s    V_35
    IL_02ea:  ldloc.s    V_18
    IL_02ec:  ldloc.s    V_19
    IL_02ee:  ldloc.s    V_21
    IL_02f0:  callvirt   instance int32 Game.TerrainChunk::GetTemperatureFast(int32,
                                                                              int32)
    IL_02f5:  conv.r4
    IL_02f6:  ldloc.s    V_37
    IL_02f8:  add
    IL_02f9:  ldloc.s    V_38
    IL_02fb:  add
    IL_02fc:  mul
    IL_02fd:  add
    IL_02fe:  stloc.2
    IL_02ff:  ldloc.3
    IL_0300:  ldloc.s    V_35
    IL_0302:  add
    IL_0303:  stloc.3
    IL_0304:  br         IL_03a6

    IL_0309:  ldarg.0
    IL_030a:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_030f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<int32>::get_Count()
    IL_0314:  ldc.i4     0xffa
    IL_0319:  bge        IL_03a6

    IL_031e:  ldloc.s    V_12
    IL_0320:  ldc.i4.s   -30
    IL_0322:  ble.s      IL_0333

    IL_0324:  ldarg.0
    IL_0325:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_032a:  ldloc.s    V_11
    IL_032c:  ldc.i4.1
    IL_032d:  sub
    IL_032e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_0333:  ldloc.s    V_12
    IL_0335:  ldc.i4.s   30
    IL_0337:  bge.s      IL_0348

    IL_0339:  ldarg.0
    IL_033a:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_033f:  ldloc.s    V_11
    IL_0341:  ldc.i4.1
    IL_0342:  add
    IL_0343:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_0348:  ldloc.s    V_13
    IL_034a:  ldc.i4.s   -30
    IL_034c:  ble.s      IL_035e

    IL_034e:  ldarg.0
    IL_034f:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_0354:  ldloc.s    V_11
    IL_0356:  ldc.i4.s   64
    IL_0358:  sub
    IL_0359:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_035e:  ldloc.s    V_13
    IL_0360:  ldc.i4.s   30
    IL_0362:  bge.s      IL_0374

    IL_0364:  ldarg.0
    IL_0365:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_036a:  ldloc.s    V_11
    IL_036c:  ldc.i4.s   64
    IL_036e:  add
    IL_036f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_0374:  ldloc.s    V_14
    IL_0376:  ldc.i4.s   -30
    IL_0378:  ble.s      IL_038d

    IL_037a:  ldarg.0
    IL_037b:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_0380:  ldloc.s    V_11
    IL_0382:  ldc.i4     0x1000
    IL_0387:  sub
    IL_0388:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_038d:  ldloc.s    V_14
    IL_038f:  ldc.i4.s   30
    IL_0391:  bge.s      IL_03a6

    IL_0393:  ldarg.0
    IL_0394:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_0399:  ldloc.s    V_11
    IL_039b:  ldc.i4     0x1000
    IL_03a0:  add
    IL_03a1:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_03a6:  ldloc.s    V_10
    IL_03a8:  ldc.i4.1
    IL_03a9:  add
    IL_03aa:  stloc.s    V_10
    IL_03ac:  ldloc.s    V_10
    IL_03ae:  ldarg.0
    IL_03af:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_03b4:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<int32>::get_Count()
    IL_03b9:  blt        IL_006a

    IL_03be:  ldc.r4     0.0
    IL_03c3:  stloc.s    V_6
    IL_03c5:  ldc.i4.s   -7
    IL_03c7:  stloc.s    V_39
    IL_03c9:  br         IL_053b

    IL_03ce:  ldc.i4.s   -7
    IL_03d0:  stloc.s    V_40
    IL_03d2:  br         IL_052d

    IL_03d7:  ldarg.0
    IL_03d8:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_03dd:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_03e2:  ldarg.1
    IL_03e3:  ldloc.s    V_39
    IL_03e5:  add
    IL_03e6:  ldarg.3
    IL_03e7:  ldloc.s    V_40
    IL_03e9:  add
    IL_03ea:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_03ef:  stloc.s    V_41
    IL_03f1:  ldloc.s    V_41
    IL_03f3:  brfalse    IL_0527

    IL_03f8:  ldloc.s    V_41
    IL_03fa:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_03ff:  ldc.i4.7
    IL_0400:  blt        IL_0527

    IL_0405:  ldc.i4.s   -7
    IL_0407:  stloc.s    V_42
    IL_0409:  br         IL_051f

    IL_040e:  ldloc.s    V_39
    IL_0410:  ldloc.s    V_39
    IL_0412:  mul
    IL_0413:  ldloc.s    V_42
    IL_0415:  ldloc.s    V_42
    IL_0417:  mul
    IL_0418:  add
    IL_0419:  ldloc.s    V_40
    IL_041b:  ldloc.s    V_40
    IL_041d:  mul
    IL_041e:  add
    IL_041f:  stloc.s    V_43
    IL_0421:  ldloc.s    V_43
    IL_0423:  ldc.i4.s   49
    IL_0425:  bgt        IL_0519

    IL_042a:  ldloc.s    V_43
    IL_042c:  ldc.i4.0
    IL_042d:  ble        IL_0519

    IL_0432:  ldarg.1
    IL_0433:  ldloc.s    V_39
    IL_0435:  add
    IL_0436:  ldc.i4.s   15
    IL_0438:  and
    IL_0439:  stloc.s    V_44
    IL_043b:  ldarg.2
    IL_043c:  ldloc.s    V_42
    IL_043e:  add
    IL_043f:  stloc.s    V_45
    IL_0441:  ldarg.3
    IL_0442:  ldloc.s    V_40
    IL_0444:  add
    IL_0445:  ldc.i4.s   15
    IL_0447:  and
    IL_0448:  stloc.s    V_46
    IL_044a:  ldloc.s    V_45
    IL_044c:  ldc.i4.0
    IL_044d:  blt        IL_0519

    IL_0452:  ldloc.s    V_45
    IL_0454:  ldc.i4     0x80
    IL_0459:  bge        IL_0519

    IL_045e:  ldloc.s    V_41
    IL_0460:  ldloc.s    V_44
    IL_0462:  ldloc.s    V_45
    IL_0464:  ldloc.s    V_46
    IL_0466:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_046b:  call       float32 Game.SubsystemMetersBlockBehavior::GetHeat(int32)
    IL_0470:  stloc.s    V_47
    IL_0472:  ldloc.s    V_47
    IL_0474:  ldc.r4     0.0
    IL_0479:  ble.un     IL_0519

    IL_047e:  ldarg.0
    IL_047f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0484:  ldarg.1
    IL_0485:  conv.r4
    IL_0486:  ldarg.2
    IL_0487:  conv.r4
    IL_0488:  ldarg.3
    IL_0489:  conv.r4
    IL_048a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_048f:  ldc.r4     0.5
    IL_0494:  ldc.r4     0.75
    IL_0499:  ldc.r4     0.5
    IL_049e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04a3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_04a8:  ldarg.1
    IL_04a9:  ldloc.s    V_39
    IL_04ab:  add
    IL_04ac:  conv.r4
    IL_04ad:  ldarg.2
    IL_04ae:  ldloc.s    V_42
    IL_04b0:  add
    IL_04b1:  conv.r4
    IL_04b2:  ldarg.3
    IL_04b3:  ldloc.s    V_40
    IL_04b5:  add
    IL_04b6:  conv.r4
    IL_04b7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04bc:  ldc.r4     0.5
    IL_04c1:  ldc.r4     0.75
    IL_04c6:  ldc.r4     0.5
    IL_04cb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04d0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_04d5:  ldc.i4.0
    IL_04d6:  ldc.i4.1
    IL_04d7:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemMetersBlockBehavior/'<>c'::'<>9__25_0'
    IL_04dc:  dup
    IL_04dd:  brtrue.s   IL_04f6

    IL_04df:  pop
    IL_04e0:  ldsfld     class Game.SubsystemMetersBlockBehavior/'<>c' Game.SubsystemMetersBlockBehavior/'<>c'::'<>9'
    IL_04e5:  ldftn      instance bool Game.SubsystemMetersBlockBehavior/'<>c'::'<CalculateTemperature>b__25_0'(int32,
                                                                                                                float32)
    IL_04eb:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_04f0:  dup
    IL_04f1:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemMetersBlockBehavior/'<>c'::'<>9__25_0'
    IL_04f6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_04fb:  stloc.s    V_48
    IL_04fd:  ldloca.s   V_48
    IL_04ff:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0504:  brtrue.s   IL_0519

    IL_0506:  ldloc.s    V_6
    IL_0508:  ldloc.s    V_47
    IL_050a:  ldc.r4     3.
    IL_050f:  mul
    IL_0510:  ldloc.s    V_43
    IL_0512:  ldc.i4.2
    IL_0513:  add
    IL_0514:  conv.r4
    IL_0515:  div
    IL_0516:  add
    IL_0517:  stloc.s    V_6
    IL_0519:  ldloc.s    V_42
    IL_051b:  ldc.i4.1
    IL_051c:  add
    IL_051d:  stloc.s    V_42
    IL_051f:  ldloc.s    V_42
    IL_0521:  ldc.i4.7
    IL_0522:  ble        IL_040e

    IL_0527:  ldloc.s    V_40
    IL_0529:  ldc.i4.1
    IL_052a:  add
    IL_052b:  stloc.s    V_40
    IL_052d:  ldloc.s    V_40
    IL_052f:  ldc.i4.7
    IL_0530:  ble        IL_03d7

    IL_0535:  ldloc.s    V_39
    IL_0537:  ldc.i4.1
    IL_0538:  add
    IL_0539:  stloc.s    V_39
    IL_053b:  ldloc.s    V_39
    IL_053d:  ldc.i4.7
    IL_053e:  ble        IL_03ce

    IL_0543:  ldc.r4     0.0
    IL_0548:  stloc.s    V_7
    IL_054a:  ldc.r4     0.0
    IL_054f:  stloc.s    V_8
    IL_0551:  ldloc.s    V_6
    IL_0553:  ldc.r4     0.0
    IL_0558:  ble.un.s   IL_0578

    IL_055a:  ldc.r4     3.
    IL_055f:  ldloc.s    V_6
    IL_0561:  mul
    IL_0562:  stloc.s    V_49
    IL_0564:  ldloc.s    V_7
    IL_0566:  ldc.r4     35.
    IL_056b:  ldloc.s    V_49
    IL_056d:  mul
    IL_056e:  add
    IL_056f:  stloc.s    V_7
    IL_0571:  ldloc.s    V_8
    IL_0573:  ldloc.s    V_49
    IL_0575:  add
    IL_0576:  stloc.s    V_8
    IL_0578:  ldloc.1
    IL_0579:  ldc.r4     0.0
    IL_057e:  ble.un.s   IL_0599

    IL_0580:  ldc.r4     1.
    IL_0585:  stloc.s    V_50
    IL_0587:  ldloc.s    V_7
    IL_0589:  ldloc.0
    IL_058a:  ldloc.1
    IL_058b:  div
    IL_058c:  ldloc.s    V_50
    IL_058e:  mul
    IL_058f:  add
    IL_0590:  stloc.s    V_7
    IL_0592:  ldloc.s    V_8
    IL_0594:  ldloc.s    V_50
    IL_0596:  add
    IL_0597:  stloc.s    V_8
    IL_0599:  ldloc.3
    IL_059a:  ldc.r4     0.0
    IL_059f:  ble.un.s   IL_05c6

    IL_05a1:  ldc.r4     4.
    IL_05a6:  ldloc.3
    IL_05a7:  ldc.r4     0.25
    IL_05ac:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_05b1:  mul
    IL_05b2:  stloc.s    V_51
    IL_05b4:  ldloc.s    V_7
    IL_05b6:  ldloc.2
    IL_05b7:  ldloc.3
    IL_05b8:  div
    IL_05b9:  ldloc.s    V_51
    IL_05bb:  mul
    IL_05bc:  add
    IL_05bd:  stloc.s    V_7
    IL_05bf:  ldloc.s    V_8
    IL_05c1:  ldloc.s    V_51
    IL_05c3:  add
    IL_05c4:  stloc.s    V_8
    IL_05c6:  ldloc.s    V_5
    IL_05c8:  ldc.r4     0.0
    IL_05cd:  ble.un.s   IL_05f7

    IL_05cf:  ldc.r4     1.5
    IL_05d4:  ldloc.s    V_5
    IL_05d6:  ldc.r4     0.25
    IL_05db:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_05e0:  mul
    IL_05e1:  stloc.s    V_52
    IL_05e3:  ldloc.s    V_7
    IL_05e5:  ldloc.s    V_4
    IL_05e7:  ldloc.s    V_5
    IL_05e9:  div
    IL_05ea:  ldloc.s    V_52
    IL_05ec:  mul
    IL_05ed:  add
    IL_05ee:  stloc.s    V_7
    IL_05f0:  ldloc.s    V_8
    IL_05f2:  ldloc.s    V_52
    IL_05f4:  add
    IL_05f5:  stloc.s    V_8
    IL_05f7:  ldarg.s    meterInsulation
    IL_05f9:  ldc.r4     0.0
    IL_05fe:  ble.un.s   IL_0615

    IL_0600:  ldarg.s    meterInsulation
    IL_0602:  stloc.s    V_53
    IL_0604:  ldloc.s    V_7
    IL_0606:  ldarg.s    meterTemperature
    IL_0608:  ldloc.s    V_53
    IL_060a:  mul
    IL_060b:  add
    IL_060c:  stloc.s    V_7
    IL_060e:  ldloc.s    V_8
    IL_0610:  ldloc.s    V_53
    IL_0612:  add
    IL_0613:  stloc.s    V_8
    IL_0615:  ldarg.s    temperature
    IL_0617:  ldloc.s    V_8
    IL_0619:  ldc.r4     0.0
    IL_061e:  bgt.s      IL_0624

    IL_0620:  ldarg.s    meterTemperature
    IL_0622:  br.s       IL_0629

    IL_0624:  ldloc.s    V_7
    IL_0626:  ldloc.s    V_8
    IL_0628:  div
    IL_0629:  stind.r4
    IL_062a:  ldarg.s    temperatureFlux
    IL_062c:  ldloc.s    V_8
    IL_062e:  ldarg.s    meterInsulation
    IL_0630:  sub
    IL_0631:  stind.r4
    IL_0632:  ret
  } // end of method SubsystemMetersBlockBehavior::CalculateTemperature

  .method private hidebysig static float32 
          GetHeat(int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  ldarg.0
    IL_000f:  callvirt   instance float32 Game.Block::GetHeat(int32)
    IL_0014:  ret
  } // end of method SubsystemMetersBlockBehavior::GetHeat

  .method private hidebysig instance void 
          SimulateThermometer(int32 x,
                              int32 y,
                              int32 z,
                              bool invalidateTerrainOnChange) cil managed
  {
    // 代码大小       161 (0xa1)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             int32 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             class Game.TerrainChunk V_5)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::ContainsKey(!0)
    IL_0016:  brfalse    IL_00a0

    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_0021:  ldloc.0
    IL_0022:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::get_Item(!0)
    IL_0027:  stloc.1
    IL_0028:  ldarg.0
    IL_0029:  ldarg.1
    IL_002a:  ldarg.2
    IL_002b:  ldarg.3
    IL_002c:  ldc.r4     0.0
    IL_0031:  ldc.r4     0.0
    IL_0036:  ldloca.s   V_2
    IL_0038:  ldloca.s   V_3
    IL_003a:  call       instance void Game.SubsystemMetersBlockBehavior::CalculateTemperature(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               float32,
                                                                                               float32,
                                                                                               float32&,
                                                                                               float32&)
    IL_003f:  ldloc.2
    IL_0040:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0045:  conv.i4
    IL_0046:  ldc.i4.0
    IL_0047:  ldc.i4.s   15
    IL_0049:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_004e:  stloc.s    V_4
    IL_0050:  ldloc.s    V_4
    IL_0052:  ldloc.1
    IL_0053:  beq.s      IL_00a0

    IL_0055:  ldarg.0
    IL_0056:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_005b:  ldarg.1
    IL_005c:  ldarg.2
    IL_005d:  ldarg.3
    IL_005e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0063:  ldloc.s    V_4
    IL_0065:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_006a:  ldarg.s    invalidateTerrainOnChange
    IL_006c:  brfalse.s  IL_00a0

    IL_006e:  ldarg.0
    IL_006f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0074:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0079:  ldarg.1
    IL_007a:  ldarg.3
    IL_007b:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0080:  stloc.s    V_5
    IL_0082:  ldloc.s    V_5
    IL_0084:  brfalse.s  IL_00a0

    IL_0086:  ldarg.0
    IL_0087:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_008c:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0091:  ldloc.s    V_5
    IL_0093:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0098:  ldc.i4.0
    IL_0099:  ldc.i4.7
    IL_009a:  ldc.i4.1
    IL_009b:  callvirt   instance void Game.TerrainUpdater::DowngradeChunkNeighborhoodState(valuetype [Engine]Engine.Point2,
                                                                                            int32,
                                                                                            valuetype Game.TerrainChunkState,
                                                                                            bool)
    IL_00a0:  ret
  } // end of method SubsystemMetersBlockBehavior::SimulateThermometer

  .method private hidebysig instance void 
          AddMeter(int32 'value',
                   int32 x,
                   int32 y,
                   int32 z) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  ldc.i4.s   120
    IL_0008:  bne.un.s   IL_002a

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_0010:  ldarg.2
    IL_0011:  ldarg.3
    IL_0012:  ldarg.s    z
    IL_0014:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0019:  ldc.i4.0
    IL_001a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::Add(!0,
                                                                                                                                                     !1)
    IL_001f:  ldarg.0
    IL_0020:  ldarg.2
    IL_0021:  ldarg.3
    IL_0022:  ldarg.s    z
    IL_0024:  ldc.i4.0
    IL_0025:  call       instance void Game.SubsystemMetersBlockBehavior::SimulateThermometer(int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              bool)
    IL_002a:  ret
  } // end of method SubsystemMetersBlockBehavior::AddMeter

  .method private hidebysig instance void 
          RemoveMeter(int32 'value',
                      int32 x,
                      int32 y,
                      int32 z) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_0006:  ldarg.2
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    z
    IL_000a:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000f:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::Remove(!0)
    IL_0014:  pop
    IL_0015:  ret
  } // end of method SubsystemMetersBlockBehavior::RemoveMeter

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemMetersBlockBehavior::m_thermometersToSimulate
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [Engine]Engine.DynamicArray`1<int32>::.ctor()
    IL_001c:  stfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4     0x2000
    IL_0027:  newarr     [System.Runtime]System.Int32
    IL_002c:  stfld      int32[] Game.SubsystemMetersBlockBehavior::m_visited
    IL_0031:  ldarg.0
    IL_0032:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0037:  ret
  } // end of method SubsystemMetersBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemMetersBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemMetersBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemMetersBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemMetersBlockBehavior::UpdateOrder
} // end of class Game.SubsystemMetersBlockBehavior