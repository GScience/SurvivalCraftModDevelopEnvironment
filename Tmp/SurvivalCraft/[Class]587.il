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
      IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
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
    // 代码大小       107 (0x6b)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0018:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.1
    IL_002a:  ldloc.0
    IL_002b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0030:  conv.i4
    IL_0031:  sub
    IL_0032:  ldarg.2
    IL_0033:  ldloc.0
    IL_0034:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0039:  conv.i4
    IL_003a:  sub
    IL_003b:  ldarg.3
    IL_003c:  ldloc.0
    IL_003d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0042:  conv.i4
    IL_0043:  sub
    IL_0044:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0049:  stloc.1
    IL_004a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_004f:  ldloc.1
    IL_0050:  ldelem.ref
    IL_0051:  ldfld      bool Game.Block::IsTransparent
    IL_0056:  brfalse.s  IL_006a

    IL_0058:  ldarg.0
    IL_0059:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_005e:  ldc.i4.0
    IL_005f:  ldarg.1
    IL_0060:  ldarg.2
    IL_0061:  ldarg.3
    IL_0062:  ldc.i4.0
    IL_0063:  ldc.i4.0
    IL_0064:  ldc.i4.0
    IL_0065:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_006a:  ret
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
    // 代码大小       1502 (0x5de)
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
             int32 V_18,
             int32 V_19,
             class Game.Block V_20,
             int32 V_21,
             int32 V_22,
             float32 V_23,
             int32 V_24,
             int32 V_25,
             float32 V_26,
             valuetype Game.PrecipitationShaftInfo V_27,
             float32 V_28,
             float32 V_29,
             int32 V_30,
             int32 V_31,
             float32 V_32,
             float32 V_33,
             int32 V_34,
             int32 V_35,
             int32 V_36,
             int32 V_37,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_38,
             int32 V_39,
             int32 V_40,
             float32 V_41,
             float32 V_42,
             float32 V_43,
             float32 V_44)
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
    IL_0065:  br         IL_03a8

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
    IL_0091:  brtrue     IL_03a2

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
    IL_00ef:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00f4:  ldloc.s    V_15
    IL_00f6:  ldloc.s    V_16
    IL_00f8:  ldloc.s    V_17
    IL_00fa:  callvirt   instance bool Game.TerrainData::IsCellValid(int32,
                                                                     int32,
                                                                     int32)
    IL_00ff:  brfalse    IL_03a2

    IL_0104:  ldarg.0
    IL_0105:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_010a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_010f:  ldloc.s    V_15
    IL_0111:  ldloc.s    V_16
    IL_0113:  ldloc.s    V_17
    IL_0115:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_011a:  stloc.s    V_18
    IL_011c:  ldloc.s    V_18
    IL_011e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0123:  stloc.s    V_19
    IL_0125:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_012a:  ldloc.s    V_19
    IL_012c:  ldelem.ref
    IL_012d:  stloc.s    V_20
    IL_012f:  ldloc.s    V_20
    IL_0131:  ldloc.s    V_18
    IL_0133:  callvirt   instance bool Game.Block::IsHeatBlocker(int32)
    IL_0138:  brtrue     IL_030b

    IL_013d:  ldloc.s    V_18
    IL_013f:  call       bool Game.SubsystemMetersBlockBehavior::IsSourceOfHeat(int32)
    IL_0144:  brfalse.s  IL_0196

    IL_0146:  ldloc.s    V_12
    IL_0148:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_014d:  ldloc.s    V_13
    IL_014f:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_0154:  add
    IL_0155:  ldloc.s    V_14
    IL_0157:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_015c:  add
    IL_015d:  stloc.s    V_21
    IL_015f:  ldloc.s    V_21
    IL_0161:  ldc.i4.0
    IL_0162:  bgt.s      IL_0167

    IL_0164:  ldc.i4.1
    IL_0165:  br.s       IL_0170

    IL_0167:  ldc.i4.4
    IL_0168:  ldloc.s    V_21
    IL_016a:  mul
    IL_016b:  ldloc.s    V_21
    IL_016d:  mul
    IL_016e:  ldc.i4.2
    IL_016f:  add
    IL_0170:  stloc.s    V_22
    IL_0172:  ldc.r4     1.
    IL_0177:  ldloc.s    V_22
    IL_0179:  conv.r4
    IL_017a:  div
    IL_017b:  stloc.s    V_23
    IL_017d:  ldloc.s    V_4
    IL_017f:  ldloc.s    V_23
    IL_0181:  ldc.r4     32.
    IL_0186:  mul
    IL_0187:  add
    IL_0188:  stloc.s    V_4
    IL_018a:  ldloc.s    V_5
    IL_018c:  ldloc.s    V_23
    IL_018e:  add
    IL_018f:  stloc.s    V_5
    IL_0191:  br         IL_03a2

    IL_0196:  ldarg.2
    IL_0197:  ldarg.0
    IL_0198:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_019d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01a2:  ldloc.s    V_15
    IL_01a4:  ldloc.s    V_17
    IL_01a6:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_01ab:  blt        IL_0266

    IL_01b0:  ldloc.s    V_12
    IL_01b2:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_01b7:  ldloc.s    V_13
    IL_01b9:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_01be:  add
    IL_01bf:  ldloc.s    V_14
    IL_01c1:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_01c6:  add
    IL_01c7:  stloc.s    V_24
    IL_01c9:  ldloc.s    V_24
    IL_01cb:  ldc.i4.0
    IL_01cc:  bgt.s      IL_01d1

    IL_01ce:  ldc.i4.1
    IL_01cf:  br.s       IL_01da

    IL_01d1:  ldc.i4.4
    IL_01d2:  ldloc.s    V_24
    IL_01d4:  mul
    IL_01d5:  ldloc.s    V_24
    IL_01d7:  mul
    IL_01d8:  ldc.i4.2
    IL_01d9:  add
    IL_01da:  stloc.s    V_25
    IL_01dc:  ldc.r4     1.
    IL_01e1:  ldloc.s    V_25
    IL_01e3:  conv.r4
    IL_01e4:  div
    IL_01e5:  stloc.s    V_26
    IL_01e7:  ldarg.0
    IL_01e8:  ldfld      class Game.SubsystemWeather Game.SubsystemMetersBlockBehavior::m_subsystemWeather
    IL_01ed:  ldarg.1
    IL_01ee:  ldarg.3
    IL_01ef:  callvirt   instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_01f4:  stloc.s    V_27
    IL_01f6:  ldarg.2
    IL_01f7:  ldloc.s    V_27
    IL_01f9:  ldfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_01fe:  bge.s      IL_0207

    IL_0200:  ldc.r4     0.0
    IL_0205:  br.s       IL_021d

    IL_0207:  ldc.r4     0.0
    IL_020c:  ldc.r4     -2.
    IL_0211:  ldloc.s    V_27
    IL_0213:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_0218:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_021d:  stloc.s    V_28
    IL_021f:  ldc.r4     -2.
    IL_0224:  ldc.r4     0.0
    IL_0229:  ldarg.0
    IL_022a:  ldfld      class Game.SubsystemSky Game.SubsystemMetersBlockBehavior::m_subsystemSky
    IL_022f:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_0234:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0239:  stloc.s    V_29
    IL_023b:  ldloc.2
    IL_023c:  ldloc.s    V_26
    IL_023e:  ldarg.0
    IL_023f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0244:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0249:  ldloc.s    V_15
    IL_024b:  ldloc.s    V_17
    IL_024d:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0252:  conv.r4
    IL_0253:  ldloc.s    V_28
    IL_0255:  add
    IL_0256:  ldloc.s    V_29
    IL_0258:  add
    IL_0259:  mul
    IL_025a:  add
    IL_025b:  stloc.2
    IL_025c:  ldloc.3
    IL_025d:  ldloc.s    V_26
    IL_025f:  add
    IL_0260:  stloc.3
    IL_0261:  br         IL_03a2

    IL_0266:  ldarg.0
    IL_0267:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_026c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<int32>::get_Count()
    IL_0271:  ldc.i4     0xffa
    IL_0276:  bge        IL_03a2

    IL_027b:  ldloc.s    V_12
    IL_027d:  ldc.i4.s   -30
    IL_027f:  ble.s      IL_0290

    IL_0281:  ldarg.0
    IL_0282:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_0287:  ldloc.s    V_11
    IL_0289:  ldc.i4.1
    IL_028a:  sub
    IL_028b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_0290:  ldloc.s    V_12
    IL_0292:  ldc.i4.s   30
    IL_0294:  bge.s      IL_02a5

    IL_0296:  ldarg.0
    IL_0297:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_029c:  ldloc.s    V_11
    IL_029e:  ldc.i4.1
    IL_029f:  add
    IL_02a0:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_02a5:  ldloc.s    V_13
    IL_02a7:  ldc.i4.s   -30
    IL_02a9:  ble.s      IL_02bb

    IL_02ab:  ldarg.0
    IL_02ac:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_02b1:  ldloc.s    V_11
    IL_02b3:  ldc.i4.s   64
    IL_02b5:  sub
    IL_02b6:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_02bb:  ldloc.s    V_13
    IL_02bd:  ldc.i4.s   30
    IL_02bf:  bge.s      IL_02d1

    IL_02c1:  ldarg.0
    IL_02c2:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_02c7:  ldloc.s    V_11
    IL_02c9:  ldc.i4.s   64
    IL_02cb:  add
    IL_02cc:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_02d1:  ldloc.s    V_14
    IL_02d3:  ldc.i4.s   -30
    IL_02d5:  ble.s      IL_02ea

    IL_02d7:  ldarg.0
    IL_02d8:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_02dd:  ldloc.s    V_11
    IL_02df:  ldc.i4     0x1000
    IL_02e4:  sub
    IL_02e5:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_02ea:  ldloc.s    V_14
    IL_02ec:  ldc.i4.s   30
    IL_02ee:  bge        IL_03a2

    IL_02f3:  ldarg.0
    IL_02f4:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_02f9:  ldloc.s    V_11
    IL_02fb:  ldc.i4     0x1000
    IL_0300:  add
    IL_0301:  callvirt   instance void class [Engine]Engine.DynamicArray`1<int32>::Add(!0)
    IL_0306:  br         IL_03a2

    IL_030b:  ldloc.s    V_12
    IL_030d:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_0312:  ldloc.s    V_13
    IL_0314:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_0319:  add
    IL_031a:  ldloc.s    V_14
    IL_031c:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_0321:  add
    IL_0322:  stloc.s    V_30
    IL_0324:  ldloc.s    V_30
    IL_0326:  ldc.i4.0
    IL_0327:  bgt.s      IL_032c

    IL_0329:  ldc.i4.1
    IL_032a:  br.s       IL_0335

    IL_032c:  ldc.i4.4
    IL_032d:  ldloc.s    V_30
    IL_032f:  mul
    IL_0330:  ldloc.s    V_30
    IL_0332:  mul
    IL_0333:  ldc.i4.2
    IL_0334:  add
    IL_0335:  stloc.s    V_31
    IL_0337:  ldc.r4     1.
    IL_033c:  ldloc.s    V_31
    IL_033e:  conv.r4
    IL_033f:  div
    IL_0340:  stloc.s    V_32
    IL_0342:  ldarg.0
    IL_0343:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0348:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_034d:  ldloc.s    V_15
    IL_034f:  ldloc.s    V_17
    IL_0351:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0356:  conv.r4
    IL_0357:  stloc.s    V_33
    IL_0359:  ldloc.s    V_20
    IL_035b:  isinst     Game.WaterBlock
    IL_0360:  brfalse.s  IL_0385

    IL_0362:  ldarg.0
    IL_0363:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0368:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_036d:  ldloc.s    V_15
    IL_036f:  ldloc.s    V_17
    IL_0371:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0376:  ldc.i4.4
    IL_0377:  sub
    IL_0378:  ldc.i4.0
    IL_0379:  ldc.i4.s   12
    IL_037b:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0380:  conv.r4
    IL_0381:  stloc.s    V_33
    IL_0383:  br.s       IL_0395

    IL_0385:  ldloc.s    V_20
    IL_0387:  isinst     Game.IceBlock
    IL_038c:  brfalse.s  IL_0395

    IL_038e:  ldc.r4     0.0
    IL_0393:  stloc.s    V_33
    IL_0395:  ldloc.0
    IL_0396:  ldloc.s    V_32
    IL_0398:  ldloc.s    V_33
    IL_039a:  mul
    IL_039b:  add
    IL_039c:  stloc.0
    IL_039d:  ldloc.1
    IL_039e:  ldloc.s    V_32
    IL_03a0:  add
    IL_03a1:  stloc.1
    IL_03a2:  ldloc.s    V_10
    IL_03a4:  ldc.i4.1
    IL_03a5:  add
    IL_03a6:  stloc.s    V_10
    IL_03a8:  ldloc.s    V_10
    IL_03aa:  ldarg.0
    IL_03ab:  ldfld      class [Engine]Engine.DynamicArray`1<int32> Game.SubsystemMetersBlockBehavior::m_toVisit
    IL_03b0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<int32>::get_Count()
    IL_03b5:  blt        IL_006a

    IL_03ba:  ldc.r4     0.0
    IL_03bf:  stloc.s    V_6
    IL_03c1:  ldc.i4.s   -6
    IL_03c3:  stloc.s    V_34
    IL_03c5:  br         IL_04f6

    IL_03ca:  ldc.i4.s   -6
    IL_03cc:  stloc.s    V_35
    IL_03ce:  br         IL_04e8

    IL_03d3:  ldc.i4.s   -6
    IL_03d5:  stloc.s    V_36
    IL_03d7:  br         IL_04da

    IL_03dc:  ldloc.s    V_34
    IL_03de:  ldloc.s    V_34
    IL_03e0:  mul
    IL_03e1:  ldloc.s    V_35
    IL_03e3:  ldloc.s    V_35
    IL_03e5:  mul
    IL_03e6:  add
    IL_03e7:  ldloc.s    V_36
    IL_03e9:  ldloc.s    V_36
    IL_03eb:  mul
    IL_03ec:  add
    IL_03ed:  stloc.s    V_37
    IL_03ef:  ldloc.s    V_37
    IL_03f1:  ldc.i4.0
    IL_03f2:  ble        IL_04d4

    IL_03f7:  ldloc.s    V_37
    IL_03f9:  ldc.i4.s   36
    IL_03fb:  bgt        IL_04d4

    IL_0400:  ldarg.0
    IL_0401:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0406:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_040b:  ldarg.1
    IL_040c:  ldloc.s    V_34
    IL_040e:  add
    IL_040f:  ldarg.2
    IL_0410:  ldloc.s    V_35
    IL_0412:  add
    IL_0413:  ldarg.3
    IL_0414:  ldloc.s    V_36
    IL_0416:  add
    IL_0417:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_041c:  call       bool Game.SubsystemMetersBlockBehavior::IsSourceOfHeat(int32)
    IL_0421:  brfalse    IL_04d4

    IL_0426:  ldarg.0
    IL_0427:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_042c:  ldarg.1
    IL_042d:  conv.r4
    IL_042e:  ldarg.2
    IL_042f:  conv.r4
    IL_0430:  ldarg.3
    IL_0431:  conv.r4
    IL_0432:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0437:  ldc.r4     0.5
    IL_043c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0441:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0446:  ldarg.1
    IL_0447:  ldloc.s    V_34
    IL_0449:  add
    IL_044a:  conv.r4
    IL_044b:  ldarg.2
    IL_044c:  ldloc.s    V_35
    IL_044e:  add
    IL_044f:  conv.r4
    IL_0450:  ldarg.3
    IL_0451:  ldloc.s    V_36
    IL_0453:  add
    IL_0454:  conv.r4
    IL_0455:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_045a:  ldc.r4     0.5
    IL_045f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0464:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0469:  ldc.i4.0
    IL_046a:  ldc.i4.1
    IL_046b:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemMetersBlockBehavior/'<>c'::'<>9__25_0'
    IL_0470:  dup
    IL_0471:  brtrue.s   IL_048a

    IL_0473:  pop
    IL_0474:  ldsfld     class Game.SubsystemMetersBlockBehavior/'<>c' Game.SubsystemMetersBlockBehavior/'<>c'::'<>9'
    IL_0479:  ldftn      instance bool Game.SubsystemMetersBlockBehavior/'<>c'::'<CalculateTemperature>b__25_0'(int32,
                                                                                                                float32)
    IL_047f:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0484:  dup
    IL_0485:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemMetersBlockBehavior/'<>c'::'<>9__25_0'
    IL_048a:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_048f:  stloc.s    V_38
    IL_0491:  ldloca.s   V_38
    IL_0493:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0498:  brtrue.s   IL_04d4

    IL_049a:  ldloc.s    V_34
    IL_049c:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_04a1:  ldloc.s    V_35
    IL_04a3:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_04a8:  add
    IL_04a9:  ldloc.s    V_36
    IL_04ab:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_04b0:  add
    IL_04b1:  stloc.s    V_39
    IL_04b3:  ldloc.s    V_39
    IL_04b5:  ldc.i4.0
    IL_04b6:  bgt.s      IL_04bb

    IL_04b8:  ldc.i4.1
    IL_04b9:  br.s       IL_04c4

    IL_04bb:  ldc.i4.4
    IL_04bc:  ldloc.s    V_39
    IL_04be:  mul
    IL_04bf:  ldloc.s    V_39
    IL_04c1:  mul
    IL_04c2:  ldc.i4.2
    IL_04c3:  add
    IL_04c4:  stloc.s    V_40
    IL_04c6:  ldloc.s    V_6
    IL_04c8:  ldc.r4     1.
    IL_04cd:  ldloc.s    V_40
    IL_04cf:  conv.r4
    IL_04d0:  div
    IL_04d1:  add
    IL_04d2:  stloc.s    V_6
    IL_04d4:  ldloc.s    V_36
    IL_04d6:  ldc.i4.1
    IL_04d7:  add
    IL_04d8:  stloc.s    V_36
    IL_04da:  ldloc.s    V_36
    IL_04dc:  ldc.i4.6
    IL_04dd:  ble        IL_03dc

    IL_04e2:  ldloc.s    V_35
    IL_04e4:  ldc.i4.1
    IL_04e5:  add
    IL_04e6:  stloc.s    V_35
    IL_04e8:  ldloc.s    V_35
    IL_04ea:  ldc.i4.6
    IL_04eb:  ble        IL_03d3

    IL_04f0:  ldloc.s    V_34
    IL_04f2:  ldc.i4.1
    IL_04f3:  add
    IL_04f4:  stloc.s    V_34
    IL_04f6:  ldloc.s    V_34
    IL_04f8:  ldc.i4.6
    IL_04f9:  ble        IL_03ca

    IL_04fe:  ldc.r4     0.0
    IL_0503:  stloc.s    V_7
    IL_0505:  ldc.r4     0.0
    IL_050a:  stloc.s    V_8
    IL_050c:  ldloc.s    V_6
    IL_050e:  ldc.r4     0.0
    IL_0513:  ble.un.s   IL_0529

    IL_0515:  ldloc.s    V_7
    IL_0517:  ldc.r4     150.
    IL_051c:  ldloc.s    V_6
    IL_051e:  mul
    IL_051f:  add
    IL_0520:  stloc.s    V_7
    IL_0522:  ldloc.s    V_8
    IL_0524:  ldloc.s    V_6
    IL_0526:  add
    IL_0527:  stloc.s    V_8
    IL_0529:  ldloc.1
    IL_052a:  ldc.r4     0.0
    IL_052f:  ble.un.s   IL_054a

    IL_0531:  ldc.r4     1.
    IL_0536:  stloc.s    V_41
    IL_0538:  ldloc.s    V_7
    IL_053a:  ldloc.0
    IL_053b:  ldloc.1
    IL_053c:  div
    IL_053d:  ldloc.s    V_41
    IL_053f:  mul
    IL_0540:  add
    IL_0541:  stloc.s    V_7
    IL_0543:  ldloc.s    V_8
    IL_0545:  ldloc.s    V_41
    IL_0547:  add
    IL_0548:  stloc.s    V_8
    IL_054a:  ldloc.3
    IL_054b:  ldc.r4     0.0
    IL_0550:  ble.un.s   IL_0577

    IL_0552:  ldc.r4     4.
    IL_0557:  ldloc.3
    IL_0558:  ldc.r4     0.25
    IL_055d:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0562:  mul
    IL_0563:  stloc.s    V_42
    IL_0565:  ldloc.s    V_7
    IL_0567:  ldloc.2
    IL_0568:  ldloc.3
    IL_0569:  div
    IL_056a:  ldloc.s    V_42
    IL_056c:  mul
    IL_056d:  add
    IL_056e:  stloc.s    V_7
    IL_0570:  ldloc.s    V_8
    IL_0572:  ldloc.s    V_42
    IL_0574:  add
    IL_0575:  stloc.s    V_8
    IL_0577:  ldloc.s    V_5
    IL_0579:  ldc.r4     0.0
    IL_057e:  ble.un.s   IL_05a2

    IL_0580:  ldloc.s    V_5
    IL_0582:  ldc.r4     0.25
    IL_0587:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_058c:  stloc.s    V_43
    IL_058e:  ldloc.s    V_7
    IL_0590:  ldloc.s    V_4
    IL_0592:  ldloc.s    V_5
    IL_0594:  div
    IL_0595:  ldloc.s    V_43
    IL_0597:  mul
    IL_0598:  add
    IL_0599:  stloc.s    V_7
    IL_059b:  ldloc.s    V_8
    IL_059d:  ldloc.s    V_43
    IL_059f:  add
    IL_05a0:  stloc.s    V_8
    IL_05a2:  ldarg.s    meterInsulation
    IL_05a4:  ldc.r4     0.0
    IL_05a9:  ble.un.s   IL_05c0

    IL_05ab:  ldarg.s    meterInsulation
    IL_05ad:  stloc.s    V_44
    IL_05af:  ldloc.s    V_7
    IL_05b1:  ldarg.s    meterTemperature
    IL_05b3:  ldloc.s    V_44
    IL_05b5:  mul
    IL_05b6:  add
    IL_05b7:  stloc.s    V_7
    IL_05b9:  ldloc.s    V_8
    IL_05bb:  ldloc.s    V_44
    IL_05bd:  add
    IL_05be:  stloc.s    V_8
    IL_05c0:  ldarg.s    temperature
    IL_05c2:  ldloc.s    V_8
    IL_05c4:  ldc.r4     0.0
    IL_05c9:  bgt.s      IL_05cf

    IL_05cb:  ldarg.s    meterTemperature
    IL_05cd:  br.s       IL_05d4

    IL_05cf:  ldloc.s    V_7
    IL_05d1:  ldloc.s    V_8
    IL_05d3:  div
    IL_05d4:  stind.r4
    IL_05d5:  ldarg.s    temperatureFlux
    IL_05d7:  ldloc.s    V_8
    IL_05d9:  ldarg.s    meterInsulation
    IL_05db:  sub
    IL_05dc:  stind.r4
    IL_05dd:  ret
  } // end of method SubsystemMetersBlockBehavior::CalculateTemperature

  .method private hidebysig static bool  IsSourceOfHeat(int32 'value') cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Block V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_000d:  stloc.1
    IL_000e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0013:  ldloc.0
    IL_0014:  ldelem.ref
    IL_0015:  stloc.2
    IL_0016:  ldloc.2
    IL_0017:  isinst     Game.FireBlock
    IL_001c:  brtrue.s   IL_003d

    IL_001e:  ldloc.2
    IL_001f:  isinst     Game.MagmaBlock
    IL_0024:  brtrue.s   IL_003d

    IL_0026:  ldloc.2
    IL_0027:  isinst     Game.LitFurnaceBlock
    IL_002c:  brtrue.s   IL_003d

    IL_002e:  ldloc.2
    IL_002f:  isinst     Game.CampfireBlock
    IL_0034:  brfalse.s  IL_003b

    IL_0036:  ldloc.1
    IL_0037:  ldc.i4.0
    IL_0038:  cgt
    IL_003a:  ret

    IL_003b:  ldc.i4.0
    IL_003c:  ret

    IL_003d:  ldc.i4.1
    IL_003e:  ret
  } // end of method SubsystemMetersBlockBehavior::IsSourceOfHeat

  .method private hidebysig instance void 
          SimulateThermometer(int32 x,
                              int32 y,
                              int32 z,
                              bool invalidateTerrainOnChange) cil managed
  {
    // 代码大小       148 (0x94)
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
    IL_0016:  brfalse.s  IL_0093

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_001e:  ldloc.0
    IL_001f:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::get_Item(!0)
    IL_0024:  stloc.1
    IL_0025:  ldarg.0
    IL_0026:  ldarg.1
    IL_0027:  ldarg.2
    IL_0028:  ldarg.3
    IL_0029:  ldc.r4     0.0
    IL_002e:  ldc.r4     0.0
    IL_0033:  ldloca.s   V_2
    IL_0035:  ldloca.s   V_3
    IL_0037:  call       instance void Game.SubsystemMetersBlockBehavior::CalculateTemperature(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               float32,
                                                                                               float32,
                                                                                               float32&,
                                                                                               float32&)
    IL_003c:  ldloc.2
    IL_003d:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0042:  conv.i4
    IL_0043:  ldc.i4.0
    IL_0044:  ldc.i4.s   15
    IL_0046:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_004b:  stloc.s    V_4
    IL_004d:  ldloc.s    V_4
    IL_004f:  ldloc.1
    IL_0050:  beq.s      IL_0093

    IL_0052:  ldarg.0
    IL_0053:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemMetersBlockBehavior::m_thermometersByPoint
    IL_0058:  ldarg.1
    IL_0059:  ldarg.2
    IL_005a:  ldarg.3
    IL_005b:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0060:  ldloc.s    V_4
    IL_0062:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_0067:  ldarg.s    invalidateTerrainOnChange
    IL_0069:  brfalse.s  IL_0093

    IL_006b:  ldarg.0
    IL_006c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0071:  ldarg.1
    IL_0072:  ldarg.3
    IL_0073:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0078:  stloc.s    V_5
    IL_007a:  ldloc.s    V_5
    IL_007c:  brfalse.s  IL_0093

    IL_007e:  ldarg.0
    IL_007f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0084:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0089:  ldloc.s    V_5
    IL_008b:  ldc.i4.0
    IL_008c:  ldc.i4.7
    IL_008d:  ldc.i4.1
    IL_008e:  callvirt   instance void Game.TerrainUpdater::DowngradeChunkNeighborhoodState(class Game.TerrainChunk,
                                                                                            int32,
                                                                                            valuetype Game.TerrainChunkState,
                                                                                            bool)
    IL_0093:  ret
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
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
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