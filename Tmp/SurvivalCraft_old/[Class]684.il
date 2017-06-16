.class public auto ansi beforefieldinit Game.SubsystemElectricity
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass61_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.ElectricElement electricElement
    .field public class [System.Runtime]System.Func`2<class Game.ElectricConnection,bool> '<>9__0'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass61_0'::.ctor

    .method assembly hidebysig instance bool 
            '<RemoveElectricElement>b__0'(class Game.ElectricConnection c) cil managed
    {
      // 代码大小       15 (0xf)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class Game.ElectricElement Game.SubsystemElectricity/'<>c__DisplayClass61_0'::electricElement
      IL_000c:  ceq
      IL_000e:  ret
    } // end of method '<>c__DisplayClass61_0'::'<RemoveElectricElement>b__0'

  } // end of class '<>c__DisplayClass61_0'

  .field private static class Game.ElectricConnectionPath[] m_connectionPathsTable
  .field private static valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>[] m_connectorDirectionsTable
  .field private static int32[] m_connectorFacesTable
  .field private float32 m_remainingSimulationTime
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> m_persistentElementsVoltages
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> m_electricElements
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement> m_electricElementsByCellFace
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> m_pointsToUpdate
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ElectricElement> m_electricElementsToAdd
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> m_electricElementsToRemove
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> m_wiresToUpdate
  .field private class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> m_listsCache
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> m_futureSimulateLists
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> m_nextStepSimulateList
  .field private class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> m_tmpConnectionPaths
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> m_tmpVisited
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> m_tmpResult
  .field public static bool DebugDrawElectrics
  .field public static int32 SimulatedElectricElements
  .field public static literal float32 CircuitStepDuration = float32(9.9999998e-003)
  .field private class Game.SubsystemTime '<SubsystemTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemTerrain '<SubsystemTerrain>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemAudio '<SubsystemAudio>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<FrameStartCircuitStep>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<CircuitStep>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.SubsystemTime 
          get_SubsystemTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemElectricity::'<SubsystemTime>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemElectricity::get_SubsystemTime

  .method private hidebysig specialname instance void 
          set_SubsystemTime(class Game.SubsystemTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemTime Game.SubsystemElectricity::'<SubsystemTime>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemElectricity::set_SubsystemTime

  .method public hidebysig specialname instance class Game.SubsystemTerrain 
          get_SubsystemTerrain() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemElectricity::'<SubsystemTerrain>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemElectricity::get_SubsystemTerrain

  .method private hidebysig specialname instance void 
          set_SubsystemTerrain(class Game.SubsystemTerrain 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemTerrain Game.SubsystemElectricity::'<SubsystemTerrain>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemElectricity::set_SubsystemTerrain

  .method public hidebysig specialname instance class Game.SubsystemAudio 
          get_SubsystemAudio() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.SubsystemElectricity::'<SubsystemAudio>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemElectricity::get_SubsystemAudio

  .method private hidebysig specialname instance void 
          set_SubsystemAudio(class Game.SubsystemAudio 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemAudio Game.SubsystemElectricity::'<SubsystemAudio>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemElectricity::set_SubsystemAudio

  .method public hidebysig specialname instance int32 
          get_FrameStartCircuitStep() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemElectricity::'<FrameStartCircuitStep>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemElectricity::get_FrameStartCircuitStep

  .method private hidebysig specialname instance void 
          set_FrameStartCircuitStep(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.SubsystemElectricity::'<FrameStartCircuitStep>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemElectricity::set_FrameStartCircuitStep

  .method public hidebysig specialname instance int32 
          get_CircuitStep() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemElectricity::'<CircuitStep>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemElectricity::get_CircuitStep

  .method private hidebysig specialname instance void 
          set_CircuitStep(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.SubsystemElectricity::'<CircuitStep>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemElectricity::set_CircuitStep

  .method public hidebysig instance void 
          OnElectricElementBlockGenerated(int32 x,
                                          int32 y,
                                          int32 z) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_pointsToUpdate
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000e:  ldc.i4.0
    IL_000f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_0014:  ret
  } // end of method SubsystemElectricity::OnElectricElementBlockGenerated

  .method public hidebysig instance void 
          OnElectricElementBlockAdded(int32 x,
                                      int32 y,
                                      int32 z) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_pointsToUpdate
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_0014:  ret
  } // end of method SubsystemElectricity::OnElectricElementBlockAdded

  .method public hidebysig instance void 
          OnElectricElementBlockRemoved(int32 x,
                                        int32 y,
                                        int32 z) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_pointsToUpdate
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_0014:  ret
  } // end of method SubsystemElectricity::OnElectricElementBlockRemoved

  .method public hidebysig instance void 
          OnElectricElementBlockModified(int32 x,
                                         int32 y,
                                         int32 z) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_pointsToUpdate
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_0014:  ret
  } // end of method SubsystemElectricity::OnElectricElementBlockModified

  .method public hidebysig instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       173 (0xad)
    .maxstack  4
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype Game.CellFace,class Game.ElectricElement> V_0,
             valuetype Game.CellFace V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsByCellFace
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement>::get_Keys()
    IL_000b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype Game.CellFace,class Game.ElectricElement>::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br.s       IL_0090

      IL_0013:  ldloca.s   V_0
      IL_0015:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype Game.CellFace,class Game.ElectricElement>::get_Current()
      IL_001a:  stloc.1
      IL_001b:  ldloc.1
      IL_001c:  ldfld      int32 Game.CellFace::X
      IL_0021:  ldarg.1
      IL_0022:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0027:  ldfld      int32 [Engine]Engine.Point2::X
      IL_002c:  blt.s      IL_0090

      IL_002e:  ldloc.1
      IL_002f:  ldfld      int32 Game.CellFace::X
      IL_0034:  ldarg.1
      IL_0035:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_003a:  ldfld      int32 [Engine]Engine.Point2::X
      IL_003f:  ldc.i4.s   16
      IL_0041:  add
      IL_0042:  bge.s      IL_0090

      IL_0044:  ldloc.1
      IL_0045:  ldfld      int32 Game.CellFace::Z
      IL_004a:  ldarg.1
      IL_004b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0050:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0055:  blt.s      IL_0090

      IL_0057:  ldloc.1
      IL_0058:  ldfld      int32 Game.CellFace::Z
      IL_005d:  ldarg.1
      IL_005e:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0063:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0068:  ldc.i4.s   16
      IL_006a:  add
      IL_006b:  bge.s      IL_0090

      IL_006d:  ldarg.0
      IL_006e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_pointsToUpdate
      IL_0073:  ldloc.1
      IL_0074:  ldfld      int32 Game.CellFace::X
      IL_0079:  ldloc.1
      IL_007a:  ldfld      int32 Game.CellFace::Y
      IL_007f:  ldloc.1
      IL_0080:  ldfld      int32 Game.CellFace::Z
      IL_0085:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_008a:  ldc.i4.0
      IL_008b:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                           !1)
      IL_0090:  ldloca.s   V_0
      IL_0092:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype Game.CellFace,class Game.ElectricElement>::MoveNext()
      IL_0097:  brtrue     IL_0013

      IL_009c:  leave.s    IL_00ac

    }  // end .try
    finally
    {
      IL_009e:  ldloca.s   V_0
      IL_00a0:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype Game.CellFace,class Game.ElectricElement>
      IL_00a6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00ab:  endfinally
    }  // end handler
    IL_00ac:  ret
  } // end of method SubsystemElectricity::OnChunkDiscarding

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> 
          GetConnectorDirection(int32 mountingFace,
                                int32 rotation,
                                int32 connectorFace) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_1)
    IL_0000:  ldsfld     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>[] Game.SubsystemElectricity::m_connectorDirectionsTable
    IL_0005:  ldc.i4.6
    IL_0006:  ldarg.0
    IL_0007:  mul
    IL_0008:  ldarg.2
    IL_0009:  add
    IL_000a:  ldelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_000f:  stloc.0
    IL_0010:  ldloca.s   V_0
    IL_0012:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0017:  brfalse.s  IL_0036

    IL_0019:  ldloca.s   V_0
    IL_001b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_0020:  ldc.i4.4
    IL_0021:  bge.s      IL_0034

    IL_0023:  ldloca.s   V_0
    IL_0025:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_002a:  ldarg.1
    IL_002b:  add
    IL_002c:  ldc.i4.4
    IL_002d:  rem
    IL_002e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0033:  ret

    IL_0034:  ldloc.0
    IL_0035:  ret

    IL_0036:  ldloca.s   V_1
    IL_0038:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_003e:  ldloc.1
    IL_003f:  ret
  } // end of method SubsystemElectricity::GetConnectorDirection

  .method public hidebysig static int32  GetConnectorFace(int32 mountingFace,
                                                          valuetype Game.ElectricConnectorDirection connectionDirection) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemElectricity::m_connectorFacesTable
    IL_0005:  ldc.i4.5
    IL_0006:  ldarg.0
    IL_0007:  mul
    IL_0008:  ldarg.1
    IL_0009:  add
    IL_000a:  ldelem.i4
    IL_000b:  ret
  } // end of method SubsystemElectricity::GetConnectorFace

  .method public hidebysig instance void 
          GetAllConnectedNeighbors(int32 x,
                                   int32 y,
                                   int32 z,
                                   int32 mountingFace,
                                   class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> list) cil managed
  {
    // 代码大小       343 (0x157)
    .maxstack  8
    .locals init (int32 V_0,
             class Game.IElectricElementBlock V_1,
             valuetype Game.ElectricConnectorDirection V_2,
             int32 V_3,
             class Game.ElectricConnectionPath V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             class Game.IElectricElementBlock V_10,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_11,
             int32 V_12)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  stloc.0
    IL_0014:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0019:  ldloc.0
    IL_001a:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_001f:  ldelem.ref
    IL_0020:  isinst     Game.IElectricElementBlock
    IL_0025:  stloc.1
    IL_0026:  ldloc.1
    IL_0027:  brfalse    IL_0156

    IL_002c:  ldc.i4.0
    IL_002d:  stloc.2
    IL_002e:  br         IL_014f

    IL_0033:  ldc.i4.0
    IL_0034:  stloc.3
    IL_0035:  br         IL_0144

    IL_003a:  ldsfld     class Game.ElectricConnectionPath[] Game.SubsystemElectricity::m_connectionPathsTable
    IL_003f:  ldc.i4.s   20
    IL_0041:  ldarg.s    mountingFace
    IL_0043:  mul
    IL_0044:  ldc.i4.4
    IL_0045:  ldloc.2
    IL_0046:  mul
    IL_0047:  add
    IL_0048:  ldloc.3
    IL_0049:  add
    IL_004a:  ldelem.ref
    IL_004b:  stloc.s    V_4
    IL_004d:  ldloc.s    V_4
    IL_004f:  brfalse    IL_014b

    IL_0054:  ldloc.1
    IL_0055:  ldarg.0
    IL_0056:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_005b:  ldloc.0
    IL_005c:  ldarg.s    mountingFace
    IL_005e:  ldloc.s    V_4
    IL_0060:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
    IL_0065:  ldarg.1
    IL_0066:  ldarg.2
    IL_0067:  ldarg.3
    IL_0068:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> Game.IElectricElementBlock::GetConnectorType(class Game.SubsystemTerrain,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_006d:  stloc.s    V_5
    IL_006f:  ldloca.s   V_5
    IL_0071:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::get_HasValue()
    IL_0076:  brfalse    IL_014b

    IL_007b:  ldarg.1
    IL_007c:  ldloc.s    V_4
    IL_007e:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetX
    IL_0083:  add
    IL_0084:  stloc.s    V_6
    IL_0086:  ldarg.2
    IL_0087:  ldloc.s    V_4
    IL_0089:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetY
    IL_008e:  add
    IL_008f:  stloc.s    V_7
    IL_0091:  ldarg.3
    IL_0092:  ldloc.s    V_4
    IL_0094:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetZ
    IL_0099:  add
    IL_009a:  stloc.s    V_8
    IL_009c:  ldarg.0
    IL_009d:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_00a2:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a7:  ldloc.s    V_6
    IL_00a9:  ldloc.s    V_7
    IL_00ab:  ldloc.s    V_8
    IL_00ad:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_00b2:  stloc.s    V_9
    IL_00b4:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00b9:  ldloc.s    V_9
    IL_00bb:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00c0:  ldelem.ref
    IL_00c1:  isinst     Game.IElectricElementBlock
    IL_00c6:  stloc.s    V_10
    IL_00c8:  ldloc.s    V_10
    IL_00ca:  brfalse.s  IL_0140

    IL_00cc:  ldloc.s    V_10
    IL_00ce:  ldarg.0
    IL_00cf:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_00d4:  ldloc.s    V_9
    IL_00d6:  ldloc.s    V_4
    IL_00d8:  ldfld      int32 Game.ElectricConnectionPath::NeighborFace
    IL_00dd:  ldloc.s    V_4
    IL_00df:  ldfld      int32 Game.ElectricConnectionPath::NeighborConnectorFace
    IL_00e4:  ldloc.s    V_6
    IL_00e6:  ldloc.s    V_7
    IL_00e8:  ldloc.s    V_8
    IL_00ea:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> Game.IElectricElementBlock::GetConnectorType(class Game.SubsystemTerrain,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_00ef:  stloc.s    V_11
    IL_00f1:  ldloca.s   V_11
    IL_00f3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::get_HasValue()
    IL_00f8:  brfalse.s  IL_0140

    IL_00fa:  ldloca.s   V_5
    IL_00fc:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::get_Value()
    IL_0101:  brfalse.s  IL_010d

    IL_0103:  ldloca.s   V_11
    IL_0105:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::get_Value()
    IL_010a:  ldc.i4.1
    IL_010b:  bne.un.s   IL_0120

    IL_010d:  ldloca.s   V_5
    IL_010f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::get_Value()
    IL_0114:  ldc.i4.1
    IL_0115:  beq.s      IL_0140

    IL_0117:  ldloca.s   V_11
    IL_0119:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::get_Value()
    IL_011e:  brfalse.s  IL_0140

    IL_0120:  ldloc.1
    IL_0121:  ldloc.0
    IL_0122:  callvirt   instance int32 Game.IElectricElementBlock::GetConnectionMask(int32)
    IL_0127:  ldloc.s    V_10
    IL_0129:  ldloc.s    V_9
    IL_012b:  callvirt   instance int32 Game.IElectricElementBlock::GetConnectionMask(int32)
    IL_0130:  stloc.s    V_12
    IL_0132:  ldloc.s    V_12
    IL_0134:  and
    IL_0135:  brfalse.s  IL_0140

    IL_0137:  ldarg.s    list
    IL_0139:  ldloc.s    V_4
    IL_013b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::Add(!0)
    IL_0140:  ldloc.3
    IL_0141:  ldc.i4.1
    IL_0142:  add
    IL_0143:  stloc.3
    IL_0144:  ldloc.3
    IL_0145:  ldc.i4.4
    IL_0146:  blt        IL_003a

    IL_014b:  ldloc.2
    IL_014c:  ldc.i4.1
    IL_014d:  add
    IL_014e:  stloc.2
    IL_014f:  ldloc.2
    IL_0150:  ldc.i4.5
    IL_0151:  blt        IL_0033

    IL_0156:  ret
  } // end of method SubsystemElectricity::GetAllConnectedNeighbors

  .method public hidebysig instance class Game.ElectricElement 
          GetElectricElement(int32 x,
                             int32 y,
                             int32 z,
                             int32 mountingFace) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  5
    .locals init (class Game.ElectricElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsByCellFace
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    mountingFace
    IL_000b:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0010:  ldloca.s   V_0
    IL_0012:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement>::TryGetValue(!0,
                                                                                                                                                                          !1&)
    IL_0017:  pop
    IL_0018:  ldloc.0
    IL_0019:  ret
  } // end of method SubsystemElectricity::GetElectricElement

  .method public hidebysig instance void 
          QueueElectricElementForSimulation(class Game.ElectricElement electricElement,
                                            int32 circuitStep) cil managed
  {
    // 代码大小       153 (0x99)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> V_0)
    IL_0000:  ldarg.2
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0007:  ldc.i4.1
    IL_0008:  add
    IL_0009:  bne.un.s   IL_0061

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_nextStepSimulateList
    IL_0011:  brtrue.s   IL_0053

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_futureSimulateLists
    IL_0019:  ldarg.0
    IL_001a:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_001f:  ldc.i4.1
    IL_0020:  add
    IL_0021:  ldarg.0
    IL_0022:  ldflda     class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_nextStepSimulateList
    IL_0027:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::TryGetValue(!0,
                                                                                                                                                                                                                                !1&)
    IL_002c:  brtrue.s   IL_0053

    IL_002e:  ldarg.0
    IL_002f:  ldarg.0
    IL_0030:  call       instance class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::GetListFromCache()
    IL_0035:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_nextStepSimulateList
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_futureSimulateLists
    IL_0040:  ldarg.0
    IL_0041:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0046:  ldc.i4.1
    IL_0047:  add
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_nextStepSimulateList
    IL_004e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::Add(!0,
                                                                                                                                                                                                                        !1)
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_nextStepSimulateList
    IL_0059:  ldarg.1
    IL_005a:  ldc.i4.1
    IL_005b:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::set_Item(!0,
                                                                                                                                                    !1)
    IL_0060:  ret

    IL_0061:  ldarg.2
    IL_0062:  ldarg.0
    IL_0063:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0068:  ldc.i4.1
    IL_0069:  add
    IL_006a:  ble.s      IL_0098

    IL_006c:  ldarg.0
    IL_006d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_futureSimulateLists
    IL_0072:  ldarg.2
    IL_0073:  ldloca.s   V_0
    IL_0075:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::TryGetValue(!0,
                                                                                                                                                                                                                                !1&)
    IL_007a:  brtrue.s   IL_0090

    IL_007c:  ldarg.0
    IL_007d:  call       instance class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::GetListFromCache()
    IL_0082:  stloc.0
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_futureSimulateLists
    IL_0089:  ldarg.2
    IL_008a:  ldloc.0
    IL_008b:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::Add(!0,
                                                                                                                                                                                                                        !1)
    IL_0090:  ldloc.0
    IL_0091:  ldarg.1
    IL_0092:  ldc.i4.1
    IL_0093:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::set_Item(!0,
                                                                                                                                                    !1)
    IL_0098:  ret
  } // end of method SubsystemElectricity::QueueElectricElementForSimulation

  .method public hidebysig instance void 
          QueueElectricElementConnectionsForSimulation(class Game.ElectricElement electricElement,
                                                       int32 circuitStep) cil managed
  {
    // 代码大小       78 (0x4e)
    .maxstack  3
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_0,
             class Game.ElectricConnection V_1)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0034

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldloc.1
      IL_0017:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_001c:  brfalse.s  IL_0034

      IL_001e:  ldloc.1
      IL_001f:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0024:  ldc.i4.1
      IL_0025:  beq.s      IL_0034

      IL_0027:  ldarg.0
      IL_0028:  ldloc.1
      IL_0029:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_002e:  ldarg.2
      IL_002f:  call       instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                      int32)
      IL_0034:  ldloca.s   V_0
      IL_0036:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_003b:  brtrue.s   IL_000e

      IL_003d:  leave.s    IL_004d

    }  // end .try
    finally
    {
      IL_003f:  ldloca.s   V_0
      IL_0041:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0047:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004c:  endfinally
    }  // end handler
    IL_004d:  ret
  } // end of method SubsystemElectricity::QueueElectricElementConnectionsForSimulation

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<float32> 
          ReadPersistentVoltage(valuetype [Engine]Engine.Point3 point) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  3
    .locals init (float32 V_0,
             valuetype [System.Runtime]System.Nullable`1<float32> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemElectricity::m_persistentElementsVoltages
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::TryGetValue(!0,
                                                                                                                                                               !1&)
    IL_000e:  brfalse.s  IL_0017

    IL_0010:  ldloc.0
    IL_0011:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0016:  ret

    IL_0017:  ldloca.s   V_1
    IL_0019:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_001f:  ldloc.1
    IL_0020:  ret
  } // end of method SubsystemElectricity::ReadPersistentVoltage

  .method public hidebysig instance void 
          WritePersistentVoltage(valuetype [Engine]Engine.Point3 point,
                                 float32 voltage) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemElectricity::m_persistentElementsVoltages
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                            !1)
    IL_000d:  ret
  } // end of method SubsystemElectricity::WritePersistentVoltage

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemElectricity::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       255 (0xff)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ElectricElement,bool> V_2,
             class Game.ElectricElement V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0007:  call       instance void Game.SubsystemElectricity::set_FrameStartCircuitStep(int32)
    IL_000c:  ldc.i4.0
    IL_000d:  stsfld     int32 Game.SubsystemElectricity::SimulatedElectricElements
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      float32 Game.SubsystemElectricity::m_remainingSimulationTime
    IL_0019:  ldarg.1
    IL_001a:  add
    IL_001b:  ldc.r4     0.1
    IL_0020:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0025:  stfld      float32 Game.SubsystemElectricity::m_remainingSimulationTime
    IL_002a:  br         IL_00e1

    IL_002f:  ldarg.0
    IL_0030:  call       instance void Game.SubsystemElectricity::UpdateElectricElements()
    IL_0035:  ldarg.0
    IL_0036:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_003b:  ldc.i4.1
    IL_003c:  add
    IL_003d:  stloc.1
    IL_003e:  ldarg.0
    IL_003f:  ldloc.1
    IL_0040:  call       instance void Game.SubsystemElectricity::set_CircuitStep(int32)
    IL_0045:  ldarg.0
    IL_0046:  ldarg.0
    IL_0047:  ldfld      float32 Game.SubsystemElectricity::m_remainingSimulationTime
    IL_004c:  ldc.r4     9.9999998e-003
    IL_0051:  sub
    IL_0052:  stfld      float32 Game.SubsystemElectricity::m_remainingSimulationTime
    IL_0057:  ldarg.0
    IL_0058:  ldnull
    IL_0059:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_nextStepSimulateList
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_futureSimulateLists
    IL_0064:  ldarg.0
    IL_0065:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_006a:  ldloca.s   V_0
    IL_006c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::TryGetValue(!0,
                                                                                                                                                                                                                                !1&)
    IL_0071:  brfalse.s  IL_00e1

    IL_0073:  ldarg.0
    IL_0074:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_futureSimulateLists
    IL_0079:  ldarg.0
    IL_007a:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_007f:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::Remove(!0)
    IL_0084:  pop
    IL_0085:  ldsfld     int32 Game.SubsystemElectricity::SimulatedElectricElements
    IL_008a:  ldloc.0
    IL_008b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::get_Count()
    IL_0090:  add
    IL_0091:  stsfld     int32 Game.SubsystemElectricity::SimulatedElectricElements
    IL_0096:  ldloc.0
    IL_0097:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::get_Keys()
    IL_009c:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ElectricElement,bool>::GetEnumerator()
    IL_00a1:  stloc.2
    .try
    {
      IL_00a2:  br.s       IL_00c1

      IL_00a4:  ldloca.s   V_2
      IL_00a6:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ElectricElement,bool>::get_Current()
      IL_00ab:  stloc.3
      IL_00ac:  ldarg.0
      IL_00ad:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_electricElements
      IL_00b2:  ldloc.3
      IL_00b3:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::ContainsKey(!0)
      IL_00b8:  brfalse.s  IL_00c1

      IL_00ba:  ldarg.0
      IL_00bb:  ldloc.3
      IL_00bc:  call       instance void Game.SubsystemElectricity::SimulateElectricElement(class Game.ElectricElement)
      IL_00c1:  ldloca.s   V_2
      IL_00c3:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ElectricElement,bool>::MoveNext()
      IL_00c8:  brtrue.s   IL_00a4

      IL_00ca:  leave.s    IL_00da

    }  // end .try
    finally
    {
      IL_00cc:  ldloca.s   V_2
      IL_00ce:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ElectricElement,bool>
      IL_00d4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d9:  endfinally
    }  // end handler
    IL_00da:  ldarg.0
    IL_00db:  ldloc.0
    IL_00dc:  call       instance void Game.SubsystemElectricity::ReturnListToCache(class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>)
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      float32 Game.SubsystemElectricity::m_remainingSimulationTime
    IL_00e7:  ldc.r4     9.9999998e-003
    IL_00ec:  bge        IL_002f

    IL_00f1:  ldsfld     bool Game.SubsystemElectricity::DebugDrawElectrics
    IL_00f6:  brfalse.s  IL_00fe

    IL_00f8:  ldarg.0
    IL_00f9:  call       instance void Game.SubsystemElectricity::DebugDraw()
    IL_00fe:  ret
  } // end of method SubsystemElectricity::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       199 (0xc7)
    .maxstack  5
    .locals init (string[] V_0,
             int32 V_1,
             string[] V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             float32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  call       instance void Game.SubsystemElectricity::set_SubsystemTerrain(class Game.SubsystemTerrain)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  call       instance void Game.SubsystemElectricity::set_SubsystemTime(class Game.SubsystemTime)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0031:  call       instance void Game.SubsystemElectricity::set_SubsystemAudio(class Game.SubsystemAudio)
    IL_0036:  ldarg.1
    IL_0037:  ldstr      "VoltagesByCell"
    IL_003c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0041:  ldc.i4.1
    IL_0042:  newarr     [System.Runtime]System.Char
    IL_0047:  dup
    IL_0048:  ldc.i4.0
    IL_0049:  ldc.i4.s   59
    IL_004b:  stelem.i2
    IL_004c:  ldc.i4.1
    IL_004d:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_0052:  stloc.0
    IL_0053:  ldc.i4.0
    IL_0054:  stloc.1
    IL_0055:  br.s       IL_00c0

    IL_0057:  ldloc.0
    IL_0058:  ldloc.1
    IL_0059:  ldelem.ref
    IL_005a:  ldc.i4.1
    IL_005b:  newarr     [System.Runtime]System.Char
    IL_0060:  dup
    IL_0061:  ldc.i4.0
    IL_0062:  ldc.i4.s   44
    IL_0064:  stelem.i2
    IL_0065:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_006a:  stloc.2
    IL_006b:  ldloc.2
    IL_006c:  ldlen
    IL_006d:  conv.i4
    IL_006e:  ldc.i4.4
    IL_006f:  bne.un.s   IL_00b1

    IL_0071:  ldloc.2
    IL_0072:  ldc.i4.0
    IL_0073:  ldelem.ref
    IL_0074:  call       int32 [System.Runtime]System.Int32::Parse(string)
    IL_0079:  stloc.3
    IL_007a:  ldloc.2
    IL_007b:  ldc.i4.1
    IL_007c:  ldelem.ref
    IL_007d:  call       int32 [System.Runtime]System.Int32::Parse(string)
    IL_0082:  stloc.s    V_4
    IL_0084:  ldloc.2
    IL_0085:  ldc.i4.2
    IL_0086:  ldelem.ref
    IL_0087:  call       int32 [System.Runtime]System.Int32::Parse(string)
    IL_008c:  stloc.s    V_5
    IL_008e:  ldloc.2
    IL_008f:  ldc.i4.3
    IL_0090:  ldelem.ref
    IL_0091:  call       float32 [System.Runtime]System.Single::Parse(string)
    IL_0096:  stloc.s    V_6
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemElectricity::m_persistentElementsVoltages
    IL_009e:  ldloc.3
    IL_009f:  ldloc.s    V_4
    IL_00a1:  ldloc.s    V_5
    IL_00a3:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00a8:  ldloc.s    V_6
    IL_00aa:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                            !1)
    IL_00af:  br.s       IL_00bc

    IL_00b1:  ldstr      "Invalid number of tokens."
    IL_00b6:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00bb:  throw

    IL_00bc:  ldloc.1
    IL_00bd:  ldc.i4.1
    IL_00be:  add
    IL_00bf:  stloc.1
    IL_00c0:  ldloc.1
    IL_00c1:  ldloc.0
    IL_00c2:  ldlen
    IL_00c3:  conv.i4
    IL_00c4:  blt.s      IL_0057

    IL_00c6:  ret
  } // end of method SubsystemElectricity::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       203 (0xcb)
    .maxstack  3
    .locals init (int32 V_0,
             class [System.Runtime]System.Text.StringBuilder V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32> V_2,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32> V_3)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0007:  stloc.1
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemElectricity::m_persistentElementsVoltages
    IL_000e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_0013:  stloc.2
    .try
    {
      IL_0014:  br         IL_009d

      IL_0019:  ldloca.s   V_2
      IL_001b:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_0020:  stloc.3
      IL_0021:  ldloc.0
      IL_0022:  ldc.i4     0x1f4
      IL_0027:  ble.s      IL_002e

      IL_0029:  leave      IL_00b9

      IL_002e:  ldloc.1
      IL_002f:  ldloca.s   V_3
      IL_0031:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0036:  ldfld      int32 [Engine]Engine.Point3::X
      IL_003b:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(int32)
      IL_0040:  pop
      IL_0041:  ldloc.1
      IL_0042:  ldc.i4.s   44
      IL_0044:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_0049:  pop
      IL_004a:  ldloc.1
      IL_004b:  ldloca.s   V_3
      IL_004d:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0052:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0057:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(int32)
      IL_005c:  pop
      IL_005d:  ldloc.1
      IL_005e:  ldc.i4.s   44
      IL_0060:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_0065:  pop
      IL_0066:  ldloc.1
      IL_0067:  ldloca.s   V_3
      IL_0069:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_006e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0073:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(int32)
      IL_0078:  pop
      IL_0079:  ldloc.1
      IL_007a:  ldc.i4.s   44
      IL_007c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_0081:  pop
      IL_0082:  ldloc.1
      IL_0083:  ldloca.s   V_3
      IL_0085:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_008a:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(float32)
      IL_008f:  pop
      IL_0090:  ldloc.1
      IL_0091:  ldc.i4.s   59
      IL_0093:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_0098:  pop
      IL_0099:  ldloc.0
      IL_009a:  ldc.i4.1
      IL_009b:  add
      IL_009c:  stloc.0
      IL_009d:  ldloca.s   V_2
      IL_009f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_00a4:  brtrue     IL_0019

      IL_00a9:  leave.s    IL_00b9

    }  // end .try
    finally
    {
      IL_00ab:  ldloca.s   V_2
      IL_00ad:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_00b3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00b8:  endfinally
    }  // end handler
    IL_00b9:  ldarg.1
    IL_00ba:  ldstr      "VoltagesByCell"
    IL_00bf:  ldloc.1
    IL_00c0:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00c5:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_00ca:  ret
  } // end of method SubsystemElectricity::Save

  .method private hidebysig static class Game.ElectricConnectionPath 
          GetConnectionPath(int32 mountingFace,
                            valuetype Game.ElectricConnectorDirection localConnector,
                            int32 neighborIndex) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldsfld     class Game.ElectricConnectionPath[] Game.SubsystemElectricity::m_connectionPathsTable
    IL_0005:  ldc.i4.s   16
    IL_0007:  ldarg.0
    IL_0008:  mul
    IL_0009:  ldc.i4.4
    IL_000a:  ldarg.1
    IL_000b:  mul
    IL_000c:  add
    IL_000d:  ldarg.2
    IL_000e:  add
    IL_000f:  ldelem.ref
    IL_0010:  ret
  } // end of method SubsystemElectricity::GetConnectionPath

  .method private hidebysig instance void 
          SimulateElectricElement(class Game.ElectricElement electricElement) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance bool Game.ElectricElement::Simulate()
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldarg.0
    IL_000b:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0010:  ldc.i4.1
    IL_0011:  add
    IL_0012:  call       instance void Game.SubsystemElectricity::QueueElectricElementConnectionsForSimulation(class Game.ElectricElement,
                                                                                                               int32)
    IL_0017:  ret
  } // end of method SubsystemElectricity::SimulateElectricElement

  .method private hidebysig instance void 
          AddElectricElement(class Game.ElectricElement electricElement) cil managed
  {
    // 代码大小       699 (0x2bb)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.CellFace> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_1,
             valuetype Game.CellFace V_2,
             valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath> V_3,
             class Game.ElectricConnectionPath V_4,
             valuetype Game.CellFace V_5,
             class Game.ElectricElement V_6,
             int32 V_7,
             int32 V_8,
             valuetype Game.ElectricConnectorType V_9,
             int32 V_10,
             int32 V_11,
             valuetype Game.ElectricConnectorType V_12,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_electricElements
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::Add(!0,
                                                                                                                                               !1)
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0013:  stloc.1
    IL_0014:  ldloca.s   V_1
    IL_0016:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::GetEnumerator()
    IL_001b:  stloc.0
    .try
    {
      IL_001c:  br         IL_027a

      IL_0021:  ldloca.s   V_0
      IL_0023:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.CellFace>::get_Current()
      IL_0028:  stloc.2
      IL_0029:  ldarg.0
      IL_002a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsByCellFace
      IL_002f:  ldloc.2
      IL_0030:  ldarg.1
      IL_0031:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement>::Add(!0,
                                                                                                                                                                    !1)
      IL_0036:  ldarg.0
      IL_0037:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.SubsystemElectricity::m_tmpConnectionPaths
      IL_003c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::Clear()
      IL_0041:  ldarg.0
      IL_0042:  ldloc.2
      IL_0043:  ldfld      int32 Game.CellFace::X
      IL_0048:  ldloc.2
      IL_0049:  ldfld      int32 Game.CellFace::Y
      IL_004e:  ldloc.2
      IL_004f:  ldfld      int32 Game.CellFace::Z
      IL_0054:  ldloc.2
      IL_0055:  ldfld      int32 Game.CellFace::Face
      IL_005a:  ldarg.0
      IL_005b:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.SubsystemElectricity::m_tmpConnectionPaths
      IL_0060:  call       instance void Game.SubsystemElectricity::GetAllConnectedNeighbors(int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>)
      IL_0065:  ldarg.0
      IL_0066:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.SubsystemElectricity::m_tmpConnectionPaths
      IL_006b:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::GetEnumerator()
      IL_0070:  stloc.3
      .try
      {
        IL_0071:  br         IL_025e

        IL_0076:  ldloca.s   V_3
        IL_0078:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>::get_Current()
        IL_007d:  stloc.s    V_4
        IL_007f:  ldloca.s   V_5
        IL_0081:  ldloc.2
        IL_0082:  ldfld      int32 Game.CellFace::X
        IL_0087:  ldloc.s    V_4
        IL_0089:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetX
        IL_008e:  add
        IL_008f:  ldloc.2
        IL_0090:  ldfld      int32 Game.CellFace::Y
        IL_0095:  ldloc.s    V_4
        IL_0097:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetY
        IL_009c:  add
        IL_009d:  ldloc.2
        IL_009e:  ldfld      int32 Game.CellFace::Z
        IL_00a3:  ldloc.s    V_4
        IL_00a5:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetZ
        IL_00aa:  add
        IL_00ab:  ldloc.s    V_4
        IL_00ad:  ldfld      int32 Game.ElectricConnectionPath::NeighborFace
        IL_00b2:  call       instance void Game.CellFace::.ctor(int32,
                                                                int32,
                                                                int32,
                                                                int32)
        IL_00b7:  ldarg.0
        IL_00b8:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsByCellFace
        IL_00bd:  ldloc.s    V_5
        IL_00bf:  ldloca.s   V_6
        IL_00c1:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement>::TryGetValue(!0,
                                                                                                                                                                              !1&)
        IL_00c6:  brfalse    IL_025e

        IL_00cb:  ldloc.s    V_6
        IL_00cd:  ldarg.1
        IL_00ce:  beq        IL_025e

        IL_00d3:  ldarg.0
        IL_00d4:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
        IL_00d9:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
        IL_00de:  ldloc.2
        IL_00df:  ldfld      int32 Game.CellFace::X
        IL_00e4:  ldloc.2
        IL_00e5:  ldfld      int32 Game.CellFace::Y
        IL_00ea:  ldloc.2
        IL_00eb:  ldfld      int32 Game.CellFace::Z
        IL_00f0:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                           int32,
                                                                           int32)
        IL_00f5:  stloc.s    V_7
        IL_00f7:  ldloc.s    V_7
        IL_00f9:  call       int32 Game.TerrainData::ExtractContents(int32)
        IL_00fe:  stloc.s    V_8
        IL_0100:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
        IL_0105:  ldloc.s    V_8
        IL_0107:  ldelem.ref
        IL_0108:  castclass  Game.IElectricElementBlock
        IL_010d:  ldarg.0
        IL_010e:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
        IL_0113:  ldloc.s    V_7
        IL_0115:  ldloc.2
        IL_0116:  ldfld      int32 Game.CellFace::Face
        IL_011b:  ldloc.s    V_4
        IL_011d:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
        IL_0122:  ldloc.2
        IL_0123:  ldfld      int32 Game.CellFace::X
        IL_0128:  ldloc.2
        IL_0129:  ldfld      int32 Game.CellFace::Y
        IL_012e:  ldloc.2
        IL_012f:  ldfld      int32 Game.CellFace::Z
        IL_0134:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> Game.IElectricElementBlock::GetConnectorType(class Game.SubsystemTerrain,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32)
        IL_0139:  stloc.s    V_13
        IL_013b:  ldloca.s   V_13
        IL_013d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::get_Value()
        IL_0142:  stloc.s    V_9
        IL_0144:  ldarg.0
        IL_0145:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
        IL_014a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
        IL_014f:  ldloc.s    V_5
        IL_0151:  ldfld      int32 Game.CellFace::X
        IL_0156:  ldloc.s    V_5
        IL_0158:  ldfld      int32 Game.CellFace::Y
        IL_015d:  ldloc.s    V_5
        IL_015f:  ldfld      int32 Game.CellFace::Z
        IL_0164:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                           int32,
                                                                           int32)
        IL_0169:  stloc.s    V_10
        IL_016b:  ldloc.s    V_10
        IL_016d:  call       int32 Game.TerrainData::ExtractContents(int32)
        IL_0172:  stloc.s    V_11
        IL_0174:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
        IL_0179:  ldloc.s    V_11
        IL_017b:  ldelem.ref
        IL_017c:  castclass  Game.IElectricElementBlock
        IL_0181:  ldarg.0
        IL_0182:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
        IL_0187:  ldloc.s    V_10
        IL_0189:  ldloc.s    V_5
        IL_018b:  ldfld      int32 Game.CellFace::Face
        IL_0190:  ldloc.s    V_4
        IL_0192:  ldfld      int32 Game.ElectricConnectionPath::NeighborConnectorFace
        IL_0197:  ldloc.s    V_5
        IL_0199:  ldfld      int32 Game.CellFace::X
        IL_019e:  ldloc.s    V_5
        IL_01a0:  ldfld      int32 Game.CellFace::Y
        IL_01a5:  ldloc.s    V_5
        IL_01a7:  ldfld      int32 Game.CellFace::Z
        IL_01ac:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> Game.IElectricElementBlock::GetConnectorType(class Game.SubsystemTerrain,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32)
        IL_01b1:  stloc.s    V_13
        IL_01b3:  ldloca.s   V_13
        IL_01b5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::get_Value()
        IL_01ba:  stloc.s    V_12
        IL_01bc:  ldarg.1
        IL_01bd:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
        IL_01c2:  newobj     instance void Game.ElectricConnection::.ctor()
        IL_01c7:  dup
        IL_01c8:  ldloc.2
        IL_01c9:  stfld      valuetype Game.CellFace Game.ElectricConnection::CellFace
        IL_01ce:  dup
        IL_01cf:  ldloc.s    V_4
        IL_01d1:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
        IL_01d6:  stfld      int32 Game.ElectricConnection::ConnectorFace
        IL_01db:  dup
        IL_01dc:  ldloc.s    V_9
        IL_01de:  stfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
        IL_01e3:  dup
        IL_01e4:  ldloc.s    V_6
        IL_01e6:  stfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
        IL_01eb:  dup
        IL_01ec:  ldloc.s    V_5
        IL_01ee:  stfld      valuetype Game.CellFace Game.ElectricConnection::NeighborCellFace
        IL_01f3:  dup
        IL_01f4:  ldloc.s    V_4
        IL_01f6:  ldfld      int32 Game.ElectricConnectionPath::NeighborConnectorFace
        IL_01fb:  stfld      int32 Game.ElectricConnection::NeighborConnectorFace
        IL_0200:  dup
        IL_0201:  ldloc.s    V_12
        IL_0203:  stfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
        IL_0208:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::Add(!0)
        IL_020d:  ldloc.s    V_6
        IL_020f:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
        IL_0214:  newobj     instance void Game.ElectricConnection::.ctor()
        IL_0219:  dup
        IL_021a:  ldloc.s    V_5
        IL_021c:  stfld      valuetype Game.CellFace Game.ElectricConnection::CellFace
        IL_0221:  dup
        IL_0222:  ldloc.s    V_4
        IL_0224:  ldfld      int32 Game.ElectricConnectionPath::NeighborConnectorFace
        IL_0229:  stfld      int32 Game.ElectricConnection::ConnectorFace
        IL_022e:  dup
        IL_022f:  ldloc.s    V_12
        IL_0231:  stfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
        IL_0236:  dup
        IL_0237:  ldarg.1
        IL_0238:  stfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
        IL_023d:  dup
        IL_023e:  ldloc.2
        IL_023f:  stfld      valuetype Game.CellFace Game.ElectricConnection::NeighborCellFace
        IL_0244:  dup
        IL_0245:  ldloc.s    V_4
        IL_0247:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
        IL_024c:  stfld      int32 Game.ElectricConnection::NeighborConnectorFace
        IL_0251:  dup
        IL_0252:  ldloc.s    V_9
        IL_0254:  stfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
        IL_0259:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::Add(!0)
        IL_025e:  ldloca.s   V_3
        IL_0260:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>::MoveNext()
        IL_0265:  brtrue     IL_0076

        IL_026a:  leave.s    IL_027a

      }  // end .try
      finally
      {
        IL_026c:  ldloca.s   V_3
        IL_026e:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>
        IL_0274:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0279:  endfinally
      }  // end handler
      IL_027a:  ldloca.s   V_0
      IL_027c:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.CellFace>::MoveNext()
      IL_0281:  brtrue     IL_0021

      IL_0286:  leave.s    IL_0296

    }  // end .try
    finally
    {
      IL_0288:  ldloca.s   V_0
      IL_028a:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.CellFace>
      IL_0290:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0295:  endfinally
    }  // end handler
    IL_0296:  ldarg.0
    IL_0297:  ldarg.1
    IL_0298:  ldarg.0
    IL_0299:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_029e:  ldc.i4.1
    IL_029f:  add
    IL_02a0:  call       instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_02a5:  ldarg.0
    IL_02a6:  ldarg.1
    IL_02a7:  ldarg.0
    IL_02a8:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_02ad:  ldc.i4.2
    IL_02ae:  add
    IL_02af:  call       instance void Game.SubsystemElectricity::QueueElectricElementConnectionsForSimulation(class Game.ElectricElement,
                                                                                                               int32)
    IL_02b4:  ldarg.1
    IL_02b5:  callvirt   instance void Game.ElectricElement::OnAdded()
    IL_02ba:  ret
  } // end of method SubsystemElectricity::AddElectricElement

  .method private hidebysig instance void 
          RemoveElectricElement(class Game.ElectricElement electricElement) cil managed
  {
    // 代码大小       261 (0x105)
    .maxstack  4
    .locals init (class Game.SubsystemElectricity/'<>c__DisplayClass61_0' V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.CellFace> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_2,
             valuetype Game.CellFace V_3,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_4,
             class Game.ElectricConnection V_5,
             int32 V_6,
             class [System.Runtime]System.Func`2<class Game.ElectricConnection,bool> V_7)
    IL_0000:  newobj     instance void Game.SubsystemElectricity/'<>c__DisplayClass61_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.ElectricElement Game.SubsystemElectricity/'<>c__DisplayClass61_0'::electricElement
    IL_000d:  ldloc.0
    IL_000e:  ldfld      class Game.ElectricElement Game.SubsystemElectricity/'<>c__DisplayClass61_0'::electricElement
    IL_0013:  callvirt   instance void Game.ElectricElement::OnRemoved()
    IL_0018:  ldarg.0
    IL_0019:  ldloc.0
    IL_001a:  ldfld      class Game.ElectricElement Game.SubsystemElectricity/'<>c__DisplayClass61_0'::electricElement
    IL_001f:  ldarg.0
    IL_0020:  call       instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0025:  ldc.i4.1
    IL_0026:  add
    IL_0027:  call       instance void Game.SubsystemElectricity::QueueElectricElementConnectionsForSimulation(class Game.ElectricElement,
                                                                                                               int32)
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_electricElements
    IL_0032:  ldloc.0
    IL_0033:  ldfld      class Game.ElectricElement Game.SubsystemElectricity/'<>c__DisplayClass61_0'::electricElement
    IL_0038:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::Remove(!0)
    IL_003d:  pop
    IL_003e:  ldloc.0
    IL_003f:  ldfld      class Game.ElectricElement Game.SubsystemElectricity/'<>c__DisplayClass61_0'::electricElement
    IL_0044:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0049:  stloc.2
    IL_004a:  ldloca.s   V_2
    IL_004c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::GetEnumerator()
    IL_0051:  stloc.1
    .try
    {
      IL_0052:  br.s       IL_0069

      IL_0054:  ldloca.s   V_1
      IL_0056:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.CellFace>::get_Current()
      IL_005b:  stloc.3
      IL_005c:  ldarg.0
      IL_005d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsByCellFace
      IL_0062:  ldloc.3
      IL_0063:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement>::Remove(!0)
      IL_0068:  pop
      IL_0069:  ldloca.s   V_1
      IL_006b:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.CellFace>::MoveNext()
      IL_0070:  brtrue.s   IL_0054

      IL_0072:  leave.s    IL_0082

    }  // end .try
    finally
    {
      IL_0074:  ldloca.s   V_1
      IL_0076:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.CellFace>
      IL_007c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0081:  endfinally
    }  // end handler
    IL_0082:  ldloc.0
    IL_0083:  ldfld      class Game.ElectricElement Game.SubsystemElectricity/'<>c__DisplayClass61_0'::electricElement
    IL_0088:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_008d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0092:  stloc.s    V_4
    .try
    {
      IL_0094:  br.s       IL_00eb

      IL_0096:  ldloca.s   V_4
      IL_0098:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_009d:  stloc.s    V_5
      IL_009f:  ldloc.s    V_5
      IL_00a1:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00a6:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
      IL_00ab:  ldloc.0
      IL_00ac:  ldfld      class [System.Runtime]System.Func`2<class Game.ElectricConnection,bool> Game.SubsystemElectricity/'<>c__DisplayClass61_0'::'<>9__0'
      IL_00b1:  dup
      IL_00b2:  brtrue.s   IL_00cc

      IL_00b4:  pop
      IL_00b5:  ldloc.0
      IL_00b6:  ldloc.0
      IL_00b7:  ldftn      instance bool Game.SubsystemElectricity/'<>c__DisplayClass61_0'::'<RemoveElectricElement>b__0'(class Game.ElectricConnection)
      IL_00bd:  newobj     instance void class [System.Runtime]System.Func`2<class Game.ElectricConnection,bool>::.ctor(object,
                                                                                                                        native int)
      IL_00c2:  dup
      IL_00c3:  stloc.s    V_7
      IL_00c5:  stfld      class [System.Runtime]System.Func`2<class Game.ElectricConnection,bool> Game.SubsystemElectricity/'<>c__DisplayClass61_0'::'<>9__0'
      IL_00ca:  ldloc.s    V_7
      IL_00cc:  call       int32 Game.CollectionUtils::FirstIndex<class Game.ElectricConnection>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                 class [System.Runtime]System.Func`2<!!0,bool>)
      IL_00d1:  stloc.s    V_6
      IL_00d3:  ldloc.s    V_6
      IL_00d5:  ldc.i4.0
      IL_00d6:  blt.s      IL_00eb

      IL_00d8:  ldloc.s    V_5
      IL_00da:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00df:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
      IL_00e4:  ldloc.s    V_6
      IL_00e6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::RemoveAt(int32)
      IL_00eb:  ldloca.s   V_4
      IL_00ed:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_00f2:  brtrue.s   IL_0096

      IL_00f4:  leave.s    IL_0104

    }  // end .try
    finally
    {
      IL_00f6:  ldloca.s   V_4
      IL_00f8:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_00fe:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0103:  endfinally
    }  // end handler
    IL_0104:  ret
  } // end of method SubsystemElectricity::RemoveElectricElement

  .method private hidebysig instance void 
          UpdateElectricElements() cil managed
  {
    // 代码大小       489 (0x1e9)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,bool> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,bool> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             class Game.ElectricElement V_6,
             class Game.IElectricElementBlock V_7,
             class Game.ElectricElement V_8,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.ElectricElement,bool> V_9,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.ElectricElement,bool> V_10,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.ElectricElement> V_11,
             class Game.ElectricElement V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_pointsToUpdate
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br         IL_0118

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,bool>::get_Current()
      IL_0018:  stloc.1
      IL_0019:  ldloca.s   V_1
      IL_001b:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,bool>::get_Key()
      IL_0020:  stloc.2
      IL_0021:  ldarg.0
      IL_0022:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
      IL_0027:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_002c:  ldloc.2
      IL_002d:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0032:  ldloc.2
      IL_0033:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0038:  ldloc.2
      IL_0039:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_003e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_0043:  stloc.3
      IL_0044:  ldc.i4.0
      IL_0045:  stloc.s    V_5
      IL_0047:  br.s       IL_0095

      IL_0049:  ldarg.0
      IL_004a:  ldloc.2
      IL_004b:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0050:  ldloc.2
      IL_0051:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0056:  ldloc.2
      IL_0057:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_005c:  ldloc.s    V_5
      IL_005e:  call       instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                             int32,
                                                                                                             int32,
                                                                                                             int32)
      IL_0063:  stloc.s    V_6
      IL_0065:  ldloc.s    V_6
      IL_0067:  brfalse.s  IL_008f

      IL_0069:  ldloc.s    V_6
      IL_006b:  isinst     Game.WireDomainElectricElement
      IL_0070:  brfalse.s  IL_0081

      IL_0072:  ldarg.0
      IL_0073:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_wiresToUpdate
      IL_0078:  ldloc.2
      IL_0079:  ldc.i4.1
      IL_007a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                           !1)
      IL_007f:  br.s       IL_008f

      IL_0081:  ldarg.0
      IL_0082:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_electricElementsToRemove
      IL_0087:  ldloc.s    V_6
      IL_0089:  ldc.i4.1
      IL_008a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::set_Item(!0,
                                                                                                                                                      !1)
      IL_008f:  ldloc.s    V_5
      IL_0091:  ldc.i4.1
      IL_0092:  add
      IL_0093:  stloc.s    V_5
      IL_0095:  ldloc.s    V_5
      IL_0097:  ldc.i4.6
      IL_0098:  blt.s      IL_0049

      IL_009a:  ldloca.s   V_1
      IL_009c:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,bool>::get_Value()
      IL_00a1:  brfalse.s  IL_00b0

      IL_00a3:  ldarg.0
      IL_00a4:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemElectricity::m_persistentElementsVoltages
      IL_00a9:  ldloc.2
      IL_00aa:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::Remove(!0)
      IL_00af:  pop
      IL_00b0:  ldloc.3
      IL_00b1:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_00b6:  stloc.s    V_4
      IL_00b8:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00bd:  ldloc.s    V_4
      IL_00bf:  ldelem.ref
      IL_00c0:  isinst     Game.IElectricWireElementBlock
      IL_00c5:  brfalse.s  IL_00d6

      IL_00c7:  ldarg.0
      IL_00c8:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_wiresToUpdate
      IL_00cd:  ldloc.2
      IL_00ce:  ldc.i4.1
      IL_00cf:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                           !1)
      IL_00d4:  br.s       IL_0118

      IL_00d6:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00db:  ldloc.s    V_4
      IL_00dd:  ldelem.ref
      IL_00de:  isinst     Game.IElectricElementBlock
      IL_00e3:  stloc.s    V_7
      IL_00e5:  ldloc.s    V_7
      IL_00e7:  brfalse.s  IL_0118

      IL_00e9:  ldloc.s    V_7
      IL_00eb:  ldarg.0
      IL_00ec:  ldloc.3
      IL_00ed:  ldloc.2
      IL_00ee:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00f3:  ldloc.2
      IL_00f4:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00f9:  ldloc.2
      IL_00fa:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00ff:  callvirt   instance class Game.ElectricElement Game.IElectricElementBlock::CreateElectricElement(class Game.SubsystemElectricity,
                                                                                                                 int32,
                                                                                                                 int32,
                                                                                                                 int32,
                                                                                                                 int32)
      IL_0104:  stloc.s    V_8
      IL_0106:  ldloc.s    V_8
      IL_0108:  brfalse.s  IL_0118

      IL_010a:  ldarg.0
      IL_010b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsToAdd
      IL_0110:  ldloc.2
      IL_0111:  ldloc.s    V_8
      IL_0113:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ElectricElement>::set_Item(!0,
                                                                                                                                                                                 !1)
      IL_0118:  ldloca.s   V_0
      IL_011a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,bool>::MoveNext()
      IL_011f:  brtrue     IL_0011

      IL_0124:  leave.s    IL_0134

    }  // end .try
    finally
    {
      IL_0126:  ldloca.s   V_0
      IL_0128:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,bool>
      IL_012e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0133:  endfinally
    }  // end handler
    IL_0134:  ldarg.0
    IL_0135:  call       instance void Game.SubsystemElectricity::RemoveWireDomains()
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_electricElementsToRemove
    IL_0140:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::GetEnumerator()
    IL_0145:  stloc.s    V_9
    .try
    {
      IL_0147:  br.s       IL_015f

      IL_0149:  ldloca.s   V_9
      IL_014b:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.ElectricElement,bool>::get_Current()
      IL_0150:  stloc.s    V_10
      IL_0152:  ldarg.0
      IL_0153:  ldloca.s   V_10
      IL_0155:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.ElectricElement,bool>::get_Key()
      IL_015a:  call       instance void Game.SubsystemElectricity::RemoveElectricElement(class Game.ElectricElement)
      IL_015f:  ldloca.s   V_9
      IL_0161:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.ElectricElement,bool>::MoveNext()
      IL_0166:  brtrue.s   IL_0149

      IL_0168:  leave.s    IL_0178

    }  // end .try
    finally
    {
      IL_016a:  ldloca.s   V_9
      IL_016c:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.ElectricElement,bool>
      IL_0172:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0177:  endfinally
    }  // end handler
    IL_0178:  ldarg.0
    IL_0179:  call       instance void Game.SubsystemElectricity::AddWireDomains()
    IL_017e:  ldarg.0
    IL_017f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsToAdd
    IL_0184:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ElectricElement>::get_Values()
    IL_0189:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.ElectricElement>::GetEnumerator()
    IL_018e:  stloc.s    V_11
    .try
    {
      IL_0190:  br.s       IL_01a3

      IL_0192:  ldloca.s   V_11
      IL_0194:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.ElectricElement>::get_Current()
      IL_0199:  stloc.s    V_12
      IL_019b:  ldarg.0
      IL_019c:  ldloc.s    V_12
      IL_019e:  call       instance void Game.SubsystemElectricity::AddElectricElement(class Game.ElectricElement)
      IL_01a3:  ldloca.s   V_11
      IL_01a5:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.ElectricElement>::MoveNext()
      IL_01aa:  brtrue.s   IL_0192

      IL_01ac:  leave.s    IL_01bc

    }  // end .try
    finally
    {
      IL_01ae:  ldloca.s   V_11
      IL_01b0:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.ElectricElement>
      IL_01b6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01bb:  endfinally
    }  // end handler
    IL_01bc:  ldarg.0
    IL_01bd:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_pointsToUpdate
    IL_01c2:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::Clear()
    IL_01c7:  ldarg.0
    IL_01c8:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_wiresToUpdate
    IL_01cd:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::Clear()
    IL_01d2:  ldarg.0
    IL_01d3:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsToAdd
    IL_01d8:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ElectricElement>::Clear()
    IL_01dd:  ldarg.0
    IL_01de:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_electricElementsToRemove
    IL_01e3:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::Clear()
    IL_01e8:  ret
  } // end of method SubsystemElectricity::UpdateElectricElements

  .method private hidebysig instance void 
          AddWireDomains() cil managed
  {
    // 代码大小       261 (0x105)
    .maxstack  5
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool> V_0,
             valuetype [Engine]Engine.Point3 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             class Game.WireDomainElectricElement V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> Game.SubsystemElectricity::m_tmpVisited
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_wiresToUpdate
    IL_0011:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Keys()
    IL_0016:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,bool>::GetEnumerator()
    IL_001b:  stloc.0
    .try
    {
      IL_001c:  br         IL_00e8

      IL_0021:  ldloca.s   V_0
      IL_0023:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::get_Current()
      IL_0028:  stloc.1
      IL_0029:  ldloc.1
      IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
      IL_002f:  ldc.i4.1
      IL_0030:  sub
      IL_0031:  stloc.2
      IL_0032:  br         IL_00da

      IL_0037:  ldloc.1
      IL_0038:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_003d:  ldc.i4.1
      IL_003e:  sub
      IL_003f:  stloc.3
      IL_0040:  br         IL_00c8

      IL_0045:  ldloc.1
      IL_0046:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_004b:  ldc.i4.1
      IL_004c:  sub
      IL_004d:  stloc.s    V_4
      IL_004f:  br.s       IL_00b8

      IL_0051:  ldc.i4.0
      IL_0052:  stloc.s    V_5
      IL_0054:  br.s       IL_00ad

      IL_0056:  ldarg.0
      IL_0057:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> Game.SubsystemElectricity::m_tmpResult
      IL_005c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>::Clear()
      IL_0061:  ldarg.0
      IL_0062:  ldloc.2
      IL_0063:  ldloc.3
      IL_0064:  ldloc.s    V_4
      IL_0066:  ldloc.s    V_5
      IL_0068:  newobj     instance void Game.CellFace::.ctor(int32,
                                                              int32,
                                                              int32,
                                                              int32)
      IL_006d:  ldarg.0
      IL_006e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> Game.SubsystemElectricity::m_tmpVisited
      IL_0073:  ldarg.0
      IL_0074:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> Game.SubsystemElectricity::m_tmpResult
      IL_0079:  call       instance void Game.SubsystemElectricity::ScanWireDomain(valuetype Game.CellFace,
                                                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>,
                                                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>)
      IL_007e:  ldarg.0
      IL_007f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> Game.SubsystemElectricity::m_tmpResult
      IL_0084:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>::get_Count()
      IL_0089:  ldc.i4.0
      IL_008a:  ble.s      IL_00a7

      IL_008c:  ldarg.0
      IL_008d:  ldarg.0
      IL_008e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> Game.SubsystemElectricity::m_tmpResult
      IL_0093:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>::get_Keys()
      IL_0098:  newobj     instance void Game.WireDomainElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                               class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace>)
      IL_009d:  stloc.s    V_6
      IL_009f:  ldarg.0
      IL_00a0:  ldloc.s    V_6
      IL_00a2:  call       instance void Game.SubsystemElectricity::AddElectricElement(class Game.ElectricElement)
      IL_00a7:  ldloc.s    V_5
      IL_00a9:  ldc.i4.1
      IL_00aa:  add
      IL_00ab:  stloc.s    V_5
      IL_00ad:  ldloc.s    V_5
      IL_00af:  ldc.i4.6
      IL_00b0:  blt.s      IL_0056

      IL_00b2:  ldloc.s    V_4
      IL_00b4:  ldc.i4.1
      IL_00b5:  add
      IL_00b6:  stloc.s    V_4
      IL_00b8:  ldloc.s    V_4
      IL_00ba:  ldloc.1
      IL_00bb:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00c0:  ldc.i4.1
      IL_00c1:  add
      IL_00c2:  ble.s      IL_0051

      IL_00c4:  ldloc.3
      IL_00c5:  ldc.i4.1
      IL_00c6:  add
      IL_00c7:  stloc.3
      IL_00c8:  ldloc.3
      IL_00c9:  ldloc.1
      IL_00ca:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00cf:  ldc.i4.1
      IL_00d0:  add
      IL_00d1:  ble        IL_0045

      IL_00d6:  ldloc.2
      IL_00d7:  ldc.i4.1
      IL_00d8:  add
      IL_00d9:  stloc.2
      IL_00da:  ldloc.2
      IL_00db:  ldloc.1
      IL_00dc:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00e1:  ldc.i4.1
      IL_00e2:  add
      IL_00e3:  ble        IL_0037

      IL_00e8:  ldloca.s   V_0
      IL_00ea:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::MoveNext()
      IL_00ef:  brtrue     IL_0021

      IL_00f4:  leave.s    IL_0104

    }  // end .try
    finally
    {
      IL_00f6:  ldloca.s   V_0
      IL_00f8:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>
      IL_00fe:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0103:  endfinally
    }  // end handler
    IL_0104:  ret
  } // end of method SubsystemElectricity::AddWireDomains

  .method private hidebysig instance void 
          RemoveWireDomains() cil managed
  {
    // 代码大小       203 (0xcb)
    .maxstack  5
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool> V_0,
             valuetype [Engine]Engine.Point3 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             class Game.ElectricElement V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_wiresToUpdate
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Keys()
    IL_000b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,bool>::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br         IL_00ae

      IL_0016:  ldloca.s   V_0
      IL_0018:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::get_Current()
      IL_001d:  stloc.1
      IL_001e:  ldloc.1
      IL_001f:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0024:  ldc.i4.1
      IL_0025:  sub
      IL_0026:  stloc.2
      IL_0027:  br.s       IL_00a0

      IL_0029:  ldloc.1
      IL_002a:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_002f:  ldc.i4.1
      IL_0030:  sub
      IL_0031:  stloc.3
      IL_0032:  br.s       IL_0091

      IL_0034:  ldloc.1
      IL_0035:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_003a:  ldc.i4.1
      IL_003b:  sub
      IL_003c:  stloc.s    V_4
      IL_003e:  br.s       IL_0081

      IL_0040:  ldc.i4.0
      IL_0041:  stloc.s    V_5
      IL_0043:  br.s       IL_0076

      IL_0045:  ldarg.0
      IL_0046:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsByCellFace
      IL_004b:  ldloc.2
      IL_004c:  ldloc.3
      IL_004d:  ldloc.s    V_4
      IL_004f:  ldloc.s    V_5
      IL_0051:  newobj     instance void Game.CellFace::.ctor(int32,
                                                              int32,
                                                              int32,
                                                              int32)
      IL_0056:  ldloca.s   V_6
      IL_0058:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement>::TryGetValue(!0,
                                                                                                                                                                            !1&)
      IL_005d:  brfalse.s  IL_0070

      IL_005f:  ldloc.s    V_6
      IL_0061:  isinst     Game.WireDomainElectricElement
      IL_0066:  brfalse.s  IL_0070

      IL_0068:  ldarg.0
      IL_0069:  ldloc.s    V_6
      IL_006b:  call       instance void Game.SubsystemElectricity::RemoveElectricElement(class Game.ElectricElement)
      IL_0070:  ldloc.s    V_5
      IL_0072:  ldc.i4.1
      IL_0073:  add
      IL_0074:  stloc.s    V_5
      IL_0076:  ldloc.s    V_5
      IL_0078:  ldc.i4.6
      IL_0079:  blt.s      IL_0045

      IL_007b:  ldloc.s    V_4
      IL_007d:  ldc.i4.1
      IL_007e:  add
      IL_007f:  stloc.s    V_4
      IL_0081:  ldloc.s    V_4
      IL_0083:  ldloc.1
      IL_0084:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0089:  ldc.i4.1
      IL_008a:  add
      IL_008b:  ble.s      IL_0040

      IL_008d:  ldloc.3
      IL_008e:  ldc.i4.1
      IL_008f:  add
      IL_0090:  stloc.3
      IL_0091:  ldloc.3
      IL_0092:  ldloc.1
      IL_0093:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0098:  ldc.i4.1
      IL_0099:  add
      IL_009a:  ble.s      IL_0034

      IL_009c:  ldloc.2
      IL_009d:  ldc.i4.1
      IL_009e:  add
      IL_009f:  stloc.2
      IL_00a0:  ldloc.2
      IL_00a1:  ldloc.1
      IL_00a2:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00a7:  ldc.i4.1
      IL_00a8:  add
      IL_00a9:  ble        IL_0029

      IL_00ae:  ldloca.s   V_0
      IL_00b0:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::MoveNext()
      IL_00b5:  brtrue     IL_0016

      IL_00ba:  leave.s    IL_00ca

    }  // end .try
    finally
    {
      IL_00bc:  ldloca.s   V_0
      IL_00be:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>
      IL_00c4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c9:  endfinally
    }  // end handler
    IL_00ca:  ret
  } // end of method SubsystemElectricity::RemoveWireDomains

  .method private hidebysig instance void 
          ScanWireDomain(valuetype Game.CellFace startCellFace,
                         class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> visited,
                         class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> result) cil managed
  {
    // 代码大小       461 (0x1cd)
    .maxstack  6
    .locals init (class [Engine]Engine.DynamicArray`1<valuetype Game.CellFace> V_0,
             valuetype Game.CellFace V_1,
             int32 V_2,
             class Game.TerrainChunk V_3,
             int32 V_4,
             int32 V_5,
             class Game.IElectricWireElementBlock V_6,
             int32 V_7,
             int32 V_8,
             valuetype Game.CellFace V_9,
             valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath> V_10,
             class Game.ElectricConnectionPath V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14)
    IL_0000:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.CellFace>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.CellFace>::Add(!0)
    IL_000d:  br         IL_01c0

    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.CellFace>::get_Array()
    IL_0018:  ldloc.0
    IL_0019:  dup
    IL_001a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.CellFace>::get_Count()
    IL_001f:  ldc.i4.1
    IL_0020:  sub
    IL_0021:  stloc.2
    IL_0022:  ldloc.2
    IL_0023:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.CellFace>::set_Count(int32)
    IL_0028:  ldloc.2
    IL_0029:  ldelem     Game.CellFace
    IL_002e:  stloc.1
    IL_002f:  ldarg.2
    IL_0030:  ldloc.1
    IL_0031:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>::ContainsKey(!0)
    IL_0036:  brtrue     IL_01c0

    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0041:  ldloc.1
    IL_0042:  ldfld      int32 Game.CellFace::X
    IL_0047:  ldloc.1
    IL_0048:  ldfld      int32 Game.CellFace::Z
    IL_004d:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0052:  stloc.3
    IL_0053:  ldloc.3
    IL_0054:  brfalse    IL_01c0

    IL_0059:  ldloc.3
    IL_005a:  ldfld      bool Game.TerrainChunk::AreBehaviorsNotified
    IL_005f:  brfalse    IL_01c0

    IL_0064:  ldarg.0
    IL_0065:  call       instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_006a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_006f:  ldloc.1
    IL_0070:  ldfld      int32 Game.CellFace::X
    IL_0075:  ldloc.1
    IL_0076:  ldfld      int32 Game.CellFace::Y
    IL_007b:  ldloc.1
    IL_007c:  ldfld      int32 Game.CellFace::Z
    IL_0081:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0086:  stloc.s    V_4
    IL_0088:  ldloc.s    V_4
    IL_008a:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_008f:  stloc.s    V_5
    IL_0091:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0096:  ldloc.s    V_5
    IL_0098:  ldelem.ref
    IL_0099:  isinst     Game.IElectricWireElementBlock
    IL_009e:  stloc.s    V_6
    IL_00a0:  ldloc.s    V_6
    IL_00a2:  brfalse    IL_01c0

    IL_00a7:  ldloc.s    V_6
    IL_00a9:  ldloc.s    V_4
    IL_00ab:  ldloc.1
    IL_00ac:  ldfld      int32 Game.CellFace::Face
    IL_00b1:  callvirt   instance int32 Game.IElectricWireElementBlock::GetConnectedWireFacesMask(int32,
                                                                                                  int32)
    IL_00b6:  stloc.s    V_7
    IL_00b8:  ldloc.s    V_7
    IL_00ba:  brfalse    IL_01c0

    IL_00bf:  ldc.i4.0
    IL_00c0:  stloc.s    V_8
    IL_00c2:  br         IL_01b8

    IL_00c7:  ldloc.s    V_7
    IL_00c9:  ldc.i4.1
    IL_00ca:  ldloc.s    V_8
    IL_00cc:  ldc.i4.s   31
    IL_00ce:  and
    IL_00cf:  shl
    IL_00d0:  and
    IL_00d1:  brfalse    IL_01b2

    IL_00d6:  ldloca.s   V_9
    IL_00d8:  ldloc.1
    IL_00d9:  ldfld      int32 Game.CellFace::X
    IL_00de:  ldloc.1
    IL_00df:  ldfld      int32 Game.CellFace::Y
    IL_00e4:  ldloc.1
    IL_00e5:  ldfld      int32 Game.CellFace::Z
    IL_00ea:  ldloc.s    V_8
    IL_00ec:  call       instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_00f1:  ldarg.2
    IL_00f2:  ldloc.s    V_9
    IL_00f4:  ldc.i4.1
    IL_00f5:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>::Add(!0,
                                                                                                                                            !1)
    IL_00fa:  ldarg.3
    IL_00fb:  ldloc.s    V_9
    IL_00fd:  ldc.i4.1
    IL_00fe:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>::Add(!0,
                                                                                                                                            !1)
    IL_0103:  ldarg.0
    IL_0104:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.SubsystemElectricity::m_tmpConnectionPaths
    IL_0109:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::Clear()
    IL_010e:  ldarg.0
    IL_010f:  ldloc.s    V_9
    IL_0111:  ldfld      int32 Game.CellFace::X
    IL_0116:  ldloc.s    V_9
    IL_0118:  ldfld      int32 Game.CellFace::Y
    IL_011d:  ldloc.s    V_9
    IL_011f:  ldfld      int32 Game.CellFace::Z
    IL_0124:  ldloc.s    V_9
    IL_0126:  ldfld      int32 Game.CellFace::Face
    IL_012b:  ldarg.0
    IL_012c:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.SubsystemElectricity::m_tmpConnectionPaths
    IL_0131:  call       instance void Game.SubsystemElectricity::GetAllConnectedNeighbors(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>)
    IL_0136:  ldarg.0
    IL_0137:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.SubsystemElectricity::m_tmpConnectionPaths
    IL_013c:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::GetEnumerator()
    IL_0141:  stloc.s    V_10
    .try
    {
      IL_0143:  br.s       IL_0199

      IL_0145:  ldloca.s   V_10
      IL_0147:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>::get_Current()
      IL_014c:  stloc.s    V_11
      IL_014e:  ldloc.s    V_9
      IL_0150:  ldfld      int32 Game.CellFace::X
      IL_0155:  ldloc.s    V_11
      IL_0157:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetX
      IL_015c:  add
      IL_015d:  stloc.s    V_12
      IL_015f:  ldloc.s    V_9
      IL_0161:  ldfld      int32 Game.CellFace::Y
      IL_0166:  ldloc.s    V_11
      IL_0168:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetY
      IL_016d:  add
      IL_016e:  stloc.s    V_13
      IL_0170:  ldloc.s    V_9
      IL_0172:  ldfld      int32 Game.CellFace::Z
      IL_0177:  ldloc.s    V_11
      IL_0179:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetZ
      IL_017e:  add
      IL_017f:  stloc.s    V_14
      IL_0181:  ldloc.0
      IL_0182:  ldloc.s    V_12
      IL_0184:  ldloc.s    V_13
      IL_0186:  ldloc.s    V_14
      IL_0188:  ldloc.s    V_11
      IL_018a:  ldfld      int32 Game.ElectricConnectionPath::NeighborFace
      IL_018f:  newobj     instance void Game.CellFace::.ctor(int32,
                                                              int32,
                                                              int32,
                                                              int32)
      IL_0194:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.CellFace>::Add(!0)
      IL_0199:  ldloca.s   V_10
      IL_019b:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>::MoveNext()
      IL_01a0:  brtrue.s   IL_0145

      IL_01a2:  leave.s    IL_01b2

    }  // end .try
    finally
    {
      IL_01a4:  ldloca.s   V_10
      IL_01a6:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>
      IL_01ac:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01b1:  endfinally
    }  // end handler
    IL_01b2:  ldloc.s    V_8
    IL_01b4:  ldc.i4.1
    IL_01b5:  add
    IL_01b6:  stloc.s    V_8
    IL_01b8:  ldloc.s    V_8
    IL_01ba:  ldc.i4.6
    IL_01bb:  blt        IL_00c7

    IL_01c0:  ldloc.0
    IL_01c1:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.CellFace>::get_Count()
    IL_01c6:  ldc.i4.0
    IL_01c7:  bgt        IL_0012

    IL_01cc:  ret
  } // end of method SubsystemElectricity::ScanWireDomain

  .method private hidebysig instance class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> 
          GetListFromCache() cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_listsCache
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  ble.s      IL_003f

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_listsCache
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_listsCache
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::get_Count()
    IL_001f:  ldc.i4.1
    IL_0020:  sub
    IL_0021:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::get_Item(int32)
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_listsCache
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_listsCache
    IL_0032:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::get_Count()
    IL_0037:  ldc.i4.1
    IL_0038:  sub
    IL_0039:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::RemoveAt(int32)
    IL_003e:  ret

    IL_003f:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::.ctor()
    IL_0044:  ret
  } // end of method SubsystemElectricity::GetListFromCache

  .method private hidebysig instance void 
          ReturnListToCache(class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> list) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::Clear()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_listsCache
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::Add(!0)
    IL_0012:  ret
  } // end of method SubsystemElectricity::ReturnListToCache

  .method private hidebysig instance void 
          DebugDraw() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemElectricity::DebugDraw

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       139 (0x8b)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemElectricity::m_persistentElementsVoltages
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_electricElements
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsByCellFace
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::.ctor()
    IL_0027:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_pointsToUpdate
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ElectricElement>::.ctor()
    IL_0032:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ElectricElement> Game.SubsystemElectricity::m_electricElementsToAdd
    IL_0037:  ldarg.0
    IL_0038:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>::.ctor()
    IL_003d:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool> Game.SubsystemElectricity::m_electricElementsToRemove
    IL_0042:  ldarg.0
    IL_0043:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::.ctor()
    IL_0048:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemElectricity::m_wiresToUpdate
    IL_004d:  ldarg.0
    IL_004e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::.ctor()
    IL_0053:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_listsCache
    IL_0058:  ldarg.0
    IL_0059:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>>::.ctor()
    IL_005e:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ElectricElement,bool>> Game.SubsystemElectricity::m_futureSimulateLists
    IL_0063:  ldarg.0
    IL_0064:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::.ctor()
    IL_0069:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.SubsystemElectricity::m_tmpConnectionPaths
    IL_006e:  ldarg.0
    IL_006f:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>::.ctor()
    IL_0074:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> Game.SubsystemElectricity::m_tmpVisited
    IL_0079:  ldarg.0
    IL_007a:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool>::.ctor()
    IL_007f:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.CellFace,bool> Game.SubsystemElectricity::m_tmpResult
    IL_0084:  ldarg.0
    IL_0085:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_008a:  ret
  } // end of method SubsystemElectricity::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       1988 (0x7c4)
    .maxstack  9
    IL_0000:  ldc.i4.s   120
    IL_0002:  newarr     Game.ElectricConnectionPath
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.0
    IL_000a:  ldc.i4.1
    IL_000b:  ldc.i4.m1
    IL_000c:  ldc.i4.4
    IL_000d:  ldc.i4.4
    IL_000e:  ldc.i4.0
    IL_000f:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0014:  stelem.ref
    IL_0015:  dup
    IL_0016:  ldc.i4.1
    IL_0017:  ldc.i4.0
    IL_0018:  ldc.i4.1
    IL_0019:  ldc.i4.0
    IL_001a:  ldc.i4.0
    IL_001b:  ldc.i4.4
    IL_001c:  ldc.i4.5
    IL_001d:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0022:  stelem.ref
    IL_0023:  dup
    IL_0024:  ldc.i4.2
    IL_0025:  ldc.i4.0
    IL_0026:  ldc.i4.1
    IL_0027:  ldc.i4.m1
    IL_0028:  ldc.i4.2
    IL_0029:  ldc.i4.4
    IL_002a:  ldc.i4.5
    IL_002b:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0030:  stelem.ref
    IL_0031:  dup
    IL_0032:  ldc.i4.3
    IL_0033:  ldc.i4.0
    IL_0034:  ldc.i4.0
    IL_0035:  ldc.i4.0
    IL_0036:  ldc.i4.5
    IL_0037:  ldc.i4.4
    IL_0038:  ldc.i4.2
    IL_0039:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_003e:  stelem.ref
    IL_003f:  dup
    IL_0040:  ldc.i4.4
    IL_0041:  ldc.i4.m1
    IL_0042:  ldc.i4.0
    IL_0043:  ldc.i4.m1
    IL_0044:  ldc.i4.3
    IL_0045:  ldc.i4.3
    IL_0046:  ldc.i4.0
    IL_0047:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_004c:  stelem.ref
    IL_004d:  dup
    IL_004e:  ldc.i4.5
    IL_004f:  ldc.i4.m1
    IL_0050:  ldc.i4.0
    IL_0051:  ldc.i4.0
    IL_0052:  ldc.i4.0
    IL_0053:  ldc.i4.3
    IL_0054:  ldc.i4.1
    IL_0055:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_005a:  stelem.ref
    IL_005b:  dup
    IL_005c:  ldc.i4.6
    IL_005d:  ldc.i4.m1
    IL_005e:  ldc.i4.0
    IL_005f:  ldc.i4.m1
    IL_0060:  ldc.i4.2
    IL_0061:  ldc.i4.3
    IL_0062:  ldc.i4.1
    IL_0063:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0068:  stelem.ref
    IL_0069:  dup
    IL_006a:  ldc.i4.7
    IL_006b:  ldc.i4.0
    IL_006c:  ldc.i4.0
    IL_006d:  ldc.i4.0
    IL_006e:  ldc.i4.1
    IL_006f:  ldc.i4.3
    IL_0070:  ldc.i4.2
    IL_0071:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0076:  stelem.ref
    IL_0077:  dup
    IL_0078:  ldc.i4.8
    IL_0079:  ldc.i4.0
    IL_007a:  ldc.i4.m1
    IL_007b:  ldc.i4.m1
    IL_007c:  ldc.i4.5
    IL_007d:  ldc.i4.5
    IL_007e:  ldc.i4.0
    IL_007f:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0084:  stelem.ref
    IL_0085:  dup
    IL_0086:  ldc.i4.s   9
    IL_0088:  ldc.i4.0
    IL_0089:  ldc.i4.m1
    IL_008a:  ldc.i4.0
    IL_008b:  ldc.i4.0
    IL_008c:  ldc.i4.5
    IL_008d:  ldc.i4.4
    IL_008e:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0093:  stelem.ref
    IL_0094:  dup
    IL_0095:  ldc.i4.s   10
    IL_0097:  ldc.i4.0
    IL_0098:  ldc.i4.m1
    IL_0099:  ldc.i4.m1
    IL_009a:  ldc.i4.2
    IL_009b:  ldc.i4.5
    IL_009c:  ldc.i4.4
    IL_009d:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_00a2:  stelem.ref
    IL_00a3:  dup
    IL_00a4:  ldc.i4.s   11
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldc.i4.0
    IL_00a8:  ldc.i4.0
    IL_00a9:  ldc.i4.4
    IL_00aa:  ldc.i4.5
    IL_00ab:  ldc.i4.2
    IL_00ac:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_00b1:  stelem.ref
    IL_00b2:  dup
    IL_00b3:  ldc.i4.s   12
    IL_00b5:  ldc.i4.1
    IL_00b6:  ldc.i4.0
    IL_00b7:  ldc.i4.m1
    IL_00b8:  ldc.i4.1
    IL_00b9:  ldc.i4.1
    IL_00ba:  ldc.i4.0
    IL_00bb:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_00c0:  stelem.ref
    IL_00c1:  dup
    IL_00c2:  ldc.i4.s   13
    IL_00c4:  ldc.i4.1
    IL_00c5:  ldc.i4.0
    IL_00c6:  ldc.i4.0
    IL_00c7:  ldc.i4.0
    IL_00c8:  ldc.i4.1
    IL_00c9:  ldc.i4.3
    IL_00ca:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_00cf:  stelem.ref
    IL_00d0:  dup
    IL_00d1:  ldc.i4.s   14
    IL_00d3:  ldc.i4.1
    IL_00d4:  ldc.i4.0
    IL_00d5:  ldc.i4.m1
    IL_00d6:  ldc.i4.2
    IL_00d7:  ldc.i4.1
    IL_00d8:  ldc.i4.3
    IL_00d9:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_00de:  stelem.ref
    IL_00df:  dup
    IL_00e0:  ldc.i4.s   15
    IL_00e2:  ldc.i4.0
    IL_00e3:  ldc.i4.0
    IL_00e4:  ldc.i4.0
    IL_00e5:  ldc.i4.3
    IL_00e6:  ldc.i4.1
    IL_00e7:  ldc.i4.2
    IL_00e8:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_00ed:  stelem.ref
    IL_00ee:  dup
    IL_00ef:  ldc.i4.s   16
    IL_00f1:  ldc.i4.0
    IL_00f2:  ldc.i4.0
    IL_00f3:  ldc.i4.m1
    IL_00f4:  ldc.i4.2
    IL_00f5:  ldc.i4.2
    IL_00f6:  ldc.i4.0
    IL_00f7:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_00fc:  stelem.ref
    IL_00fd:  dup
    IL_00fe:  ldc.i4.s   20
    IL_0100:  ldc.i4.m1
    IL_0101:  ldc.i4.1
    IL_0102:  ldc.i4.0
    IL_0103:  ldc.i4.4
    IL_0104:  ldc.i4.4
    IL_0105:  ldc.i4.1
    IL_0106:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_010b:  stelem.ref
    IL_010c:  dup
    IL_010d:  ldc.i4.s   21
    IL_010f:  ldc.i4.0
    IL_0110:  ldc.i4.1
    IL_0111:  ldc.i4.0
    IL_0112:  ldc.i4.1
    IL_0113:  ldc.i4.4
    IL_0114:  ldc.i4.5
    IL_0115:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_011a:  stelem.ref
    IL_011b:  dup
    IL_011c:  ldc.i4.s   22
    IL_011e:  ldc.i4.m1
    IL_011f:  ldc.i4.1
    IL_0120:  ldc.i4.0
    IL_0121:  ldc.i4.3
    IL_0122:  ldc.i4.4
    IL_0123:  ldc.i4.5
    IL_0124:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0129:  stelem.ref
    IL_012a:  dup
    IL_012b:  ldc.i4.s   23
    IL_012d:  ldc.i4.0
    IL_012e:  ldc.i4.0
    IL_012f:  ldc.i4.0
    IL_0130:  ldc.i4.5
    IL_0131:  ldc.i4.4
    IL_0132:  ldc.i4.3
    IL_0133:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0138:  stelem.ref
    IL_0139:  dup
    IL_013a:  ldc.i4.s   24
    IL_013c:  ldc.i4.m1
    IL_013d:  ldc.i4.0
    IL_013e:  ldc.i4.1
    IL_013f:  ldc.i4.0
    IL_0140:  ldc.i4.0
    IL_0141:  ldc.i4.1
    IL_0142:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0147:  stelem.ref
    IL_0148:  dup
    IL_0149:  ldc.i4.s   25
    IL_014b:  ldc.i4.0
    IL_014c:  ldc.i4.0
    IL_014d:  ldc.i4.1
    IL_014e:  ldc.i4.1
    IL_014f:  ldc.i4.0
    IL_0150:  ldc.i4.2
    IL_0151:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0156:  stelem.ref
    IL_0157:  dup
    IL_0158:  ldc.i4.s   26
    IL_015a:  ldc.i4.m1
    IL_015b:  ldc.i4.0
    IL_015c:  ldc.i4.1
    IL_015d:  ldc.i4.3
    IL_015e:  ldc.i4.0
    IL_015f:  ldc.i4.2
    IL_0160:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0165:  stelem.ref
    IL_0166:  dup
    IL_0167:  ldc.i4.s   27
    IL_0169:  ldc.i4.0
    IL_016a:  ldc.i4.0
    IL_016b:  ldc.i4.0
    IL_016c:  ldc.i4.2
    IL_016d:  ldc.i4.0
    IL_016e:  ldc.i4.3
    IL_016f:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0174:  stelem.ref
    IL_0175:  dup
    IL_0176:  ldc.i4.s   28
    IL_0178:  ldc.i4.m1
    IL_0179:  ldc.i4.m1
    IL_017a:  ldc.i4.0
    IL_017b:  ldc.i4.5
    IL_017c:  ldc.i4.5
    IL_017d:  ldc.i4.1
    IL_017e:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0183:  stelem.ref
    IL_0184:  dup
    IL_0185:  ldc.i4.s   29
    IL_0187:  ldc.i4.0
    IL_0188:  ldc.i4.m1
    IL_0189:  ldc.i4.0
    IL_018a:  ldc.i4.1
    IL_018b:  ldc.i4.5
    IL_018c:  ldc.i4.4
    IL_018d:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0192:  stelem.ref
    IL_0193:  dup
    IL_0194:  ldc.i4.s   30
    IL_0196:  ldc.i4.m1
    IL_0197:  ldc.i4.m1
    IL_0198:  ldc.i4.0
    IL_0199:  ldc.i4.3
    IL_019a:  ldc.i4.5
    IL_019b:  ldc.i4.4
    IL_019c:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_01a1:  stelem.ref
    IL_01a2:  dup
    IL_01a3:  ldc.i4.s   31
    IL_01a5:  ldc.i4.0
    IL_01a6:  ldc.i4.0
    IL_01a7:  ldc.i4.0
    IL_01a8:  ldc.i4.4
    IL_01a9:  ldc.i4.5
    IL_01aa:  ldc.i4.3
    IL_01ab:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_01b0:  stelem.ref
    IL_01b1:  dup
    IL_01b2:  ldc.i4.s   32
    IL_01b4:  ldc.i4.m1
    IL_01b5:  ldc.i4.0
    IL_01b6:  ldc.i4.m1
    IL_01b7:  ldc.i4.2
    IL_01b8:  ldc.i4.2
    IL_01b9:  ldc.i4.1
    IL_01ba:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_01bf:  stelem.ref
    IL_01c0:  dup
    IL_01c1:  ldc.i4.s   33
    IL_01c3:  ldc.i4.0
    IL_01c4:  ldc.i4.0
    IL_01c5:  ldc.i4.m1
    IL_01c6:  ldc.i4.1
    IL_01c7:  ldc.i4.2
    IL_01c8:  ldc.i4.0
    IL_01c9:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_01ce:  stelem.ref
    IL_01cf:  dup
    IL_01d0:  ldc.i4.s   34
    IL_01d2:  ldc.i4.m1
    IL_01d3:  ldc.i4.0
    IL_01d4:  ldc.i4.m1
    IL_01d5:  ldc.i4.3
    IL_01d6:  ldc.i4.2
    IL_01d7:  ldc.i4.0
    IL_01d8:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_01dd:  stelem.ref
    IL_01de:  dup
    IL_01df:  ldc.i4.s   35
    IL_01e1:  ldc.i4.0
    IL_01e2:  ldc.i4.0
    IL_01e3:  ldc.i4.0
    IL_01e4:  ldc.i4.0
    IL_01e5:  ldc.i4.2
    IL_01e6:  ldc.i4.3
    IL_01e7:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_01ec:  stelem.ref
    IL_01ed:  dup
    IL_01ee:  ldc.i4.s   36
    IL_01f0:  ldc.i4.m1
    IL_01f1:  ldc.i4.0
    IL_01f2:  ldc.i4.0
    IL_01f3:  ldc.i4.3
    IL_01f4:  ldc.i4.3
    IL_01f5:  ldc.i4.1
    IL_01f6:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_01fb:  stelem.ref
    IL_01fc:  dup
    IL_01fd:  ldc.i4.s   40
    IL_01ff:  ldc.i4.0
    IL_0200:  ldc.i4.1
    IL_0201:  ldc.i4.1
    IL_0202:  ldc.i4.4
    IL_0203:  ldc.i4.4
    IL_0204:  ldc.i4.2
    IL_0205:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_020a:  stelem.ref
    IL_020b:  dup
    IL_020c:  ldc.i4.s   41
    IL_020e:  ldc.i4.0
    IL_020f:  ldc.i4.1
    IL_0210:  ldc.i4.0
    IL_0211:  ldc.i4.2
    IL_0212:  ldc.i4.4
    IL_0213:  ldc.i4.5
    IL_0214:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0219:  stelem.ref
    IL_021a:  dup
    IL_021b:  ldc.i4.s   42
    IL_021d:  ldc.i4.0
    IL_021e:  ldc.i4.1
    IL_021f:  ldc.i4.1
    IL_0220:  ldc.i4.0
    IL_0221:  ldc.i4.4
    IL_0222:  ldc.i4.5
    IL_0223:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0228:  stelem.ref
    IL_0229:  dup
    IL_022a:  ldc.i4.s   43
    IL_022c:  ldc.i4.0
    IL_022d:  ldc.i4.0
    IL_022e:  ldc.i4.0
    IL_022f:  ldc.i4.5
    IL_0230:  ldc.i4.4
    IL_0231:  ldc.i4.0
    IL_0232:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0237:  stelem.ref
    IL_0238:  dup
    IL_0239:  ldc.i4.s   44
    IL_023b:  ldc.i4.1
    IL_023c:  ldc.i4.0
    IL_023d:  ldc.i4.1
    IL_023e:  ldc.i4.1
    IL_023f:  ldc.i4.1
    IL_0240:  ldc.i4.2
    IL_0241:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0246:  stelem.ref
    IL_0247:  dup
    IL_0248:  ldc.i4.s   45
    IL_024a:  ldc.i4.1
    IL_024b:  ldc.i4.0
    IL_024c:  ldc.i4.0
    IL_024d:  ldc.i4.2
    IL_024e:  ldc.i4.1
    IL_024f:  ldc.i4.3
    IL_0250:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0255:  stelem.ref
    IL_0256:  dup
    IL_0257:  ldc.i4.s   46
    IL_0259:  ldc.i4.1
    IL_025a:  ldc.i4.0
    IL_025b:  ldc.i4.1
    IL_025c:  ldc.i4.0
    IL_025d:  ldc.i4.1
    IL_025e:  ldc.i4.3
    IL_025f:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0264:  stelem.ref
    IL_0265:  dup
    IL_0266:  ldc.i4.s   47
    IL_0268:  ldc.i4.0
    IL_0269:  ldc.i4.0
    IL_026a:  ldc.i4.0
    IL_026b:  ldc.i4.3
    IL_026c:  ldc.i4.1
    IL_026d:  ldc.i4.0
    IL_026e:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0273:  stelem.ref
    IL_0274:  dup
    IL_0275:  ldc.i4.s   48
    IL_0277:  ldc.i4.0
    IL_0278:  ldc.i4.m1
    IL_0279:  ldc.i4.1
    IL_027a:  ldc.i4.5
    IL_027b:  ldc.i4.5
    IL_027c:  ldc.i4.2
    IL_027d:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0282:  stelem.ref
    IL_0283:  dup
    IL_0284:  ldc.i4.s   49
    IL_0286:  ldc.i4.0
    IL_0287:  ldc.i4.m1
    IL_0288:  ldc.i4.0
    IL_0289:  ldc.i4.2
    IL_028a:  ldc.i4.5
    IL_028b:  ldc.i4.4
    IL_028c:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0291:  stelem.ref
    IL_0292:  dup
    IL_0293:  ldc.i4.s   50
    IL_0295:  ldc.i4.0
    IL_0296:  ldc.i4.m1
    IL_0297:  ldc.i4.1
    IL_0298:  ldc.i4.0
    IL_0299:  ldc.i4.5
    IL_029a:  ldc.i4.4
    IL_029b:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_02a0:  stelem.ref
    IL_02a1:  dup
    IL_02a2:  ldc.i4.s   51
    IL_02a4:  ldc.i4.0
    IL_02a5:  ldc.i4.0
    IL_02a6:  ldc.i4.0
    IL_02a7:  ldc.i4.4
    IL_02a8:  ldc.i4.5
    IL_02a9:  ldc.i4.0
    IL_02aa:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_02af:  stelem.ref
    IL_02b0:  dup
    IL_02b1:  ldc.i4.s   52
    IL_02b3:  ldc.i4.m1
    IL_02b4:  ldc.i4.0
    IL_02b5:  ldc.i4.1
    IL_02b6:  ldc.i4.3
    IL_02b7:  ldc.i4.3
    IL_02b8:  ldc.i4.2
    IL_02b9:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_02be:  stelem.ref
    IL_02bf:  dup
    IL_02c0:  ldc.i4.s   53
    IL_02c2:  ldc.i4.m1
    IL_02c3:  ldc.i4.0
    IL_02c4:  ldc.i4.0
    IL_02c5:  ldc.i4.2
    IL_02c6:  ldc.i4.3
    IL_02c7:  ldc.i4.1
    IL_02c8:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_02cd:  stelem.ref
    IL_02ce:  dup
    IL_02cf:  ldc.i4.s   54
    IL_02d1:  ldc.i4.m1
    IL_02d2:  ldc.i4.0
    IL_02d3:  ldc.i4.1
    IL_02d4:  ldc.i4.0
    IL_02d5:  ldc.i4.3
    IL_02d6:  ldc.i4.1
    IL_02d7:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_02dc:  stelem.ref
    IL_02dd:  dup
    IL_02de:  ldc.i4.s   55
    IL_02e0:  ldc.i4.0
    IL_02e1:  ldc.i4.0
    IL_02e2:  ldc.i4.0
    IL_02e3:  ldc.i4.1
    IL_02e4:  ldc.i4.3
    IL_02e5:  ldc.i4.0
    IL_02e6:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_02eb:  stelem.ref
    IL_02ec:  dup
    IL_02ed:  ldc.i4.s   56
    IL_02ef:  ldc.i4.0
    IL_02f0:  ldc.i4.0
    IL_02f1:  ldc.i4.1
    IL_02f2:  ldc.i4.0
    IL_02f3:  ldc.i4.0
    IL_02f4:  ldc.i4.2
    IL_02f5:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_02fa:  stelem.ref
    IL_02fb:  dup
    IL_02fc:  ldc.i4.s   60
    IL_02fe:  ldc.i4.1
    IL_02ff:  ldc.i4.1
    IL_0300:  ldc.i4.0
    IL_0301:  ldc.i4.4
    IL_0302:  ldc.i4.4
    IL_0303:  ldc.i4.3
    IL_0304:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0309:  stelem.ref
    IL_030a:  dup
    IL_030b:  ldc.i4.s   61
    IL_030d:  ldc.i4.0
    IL_030e:  ldc.i4.1
    IL_030f:  ldc.i4.0
    IL_0310:  ldc.i4.3
    IL_0311:  ldc.i4.4
    IL_0312:  ldc.i4.5
    IL_0313:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0318:  stelem.ref
    IL_0319:  dup
    IL_031a:  ldc.i4.s   62
    IL_031c:  ldc.i4.1
    IL_031d:  ldc.i4.1
    IL_031e:  ldc.i4.0
    IL_031f:  ldc.i4.1
    IL_0320:  ldc.i4.4
    IL_0321:  ldc.i4.5
    IL_0322:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0327:  stelem.ref
    IL_0328:  dup
    IL_0329:  ldc.i4.s   63
    IL_032b:  ldc.i4.0
    IL_032c:  ldc.i4.0
    IL_032d:  ldc.i4.0
    IL_032e:  ldc.i4.5
    IL_032f:  ldc.i4.4
    IL_0330:  ldc.i4.1
    IL_0331:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0336:  stelem.ref
    IL_0337:  dup
    IL_0338:  ldc.i4.s   64
    IL_033a:  ldc.i4.1
    IL_033b:  ldc.i4.0
    IL_033c:  ldc.i4.m1
    IL_033d:  ldc.i4.2
    IL_033e:  ldc.i4.2
    IL_033f:  ldc.i4.3
    IL_0340:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0345:  stelem.ref
    IL_0346:  dup
    IL_0347:  ldc.i4.s   65
    IL_0349:  ldc.i4.0
    IL_034a:  ldc.i4.0
    IL_034b:  ldc.i4.m1
    IL_034c:  ldc.i4.3
    IL_034d:  ldc.i4.2
    IL_034e:  ldc.i4.0
    IL_034f:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0354:  stelem.ref
    IL_0355:  dup
    IL_0356:  ldc.i4.s   66
    IL_0358:  ldc.i4.1
    IL_0359:  ldc.i4.0
    IL_035a:  ldc.i4.m1
    IL_035b:  ldc.i4.1
    IL_035c:  ldc.i4.2
    IL_035d:  ldc.i4.0
    IL_035e:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0363:  stelem.ref
    IL_0364:  dup
    IL_0365:  ldc.i4.s   67
    IL_0367:  ldc.i4.0
    IL_0368:  ldc.i4.0
    IL_0369:  ldc.i4.0
    IL_036a:  ldc.i4.0
    IL_036b:  ldc.i4.2
    IL_036c:  ldc.i4.1
    IL_036d:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0372:  stelem.ref
    IL_0373:  dup
    IL_0374:  ldc.i4.s   68
    IL_0376:  ldc.i4.1
    IL_0377:  ldc.i4.m1
    IL_0378:  ldc.i4.0
    IL_0379:  ldc.i4.5
    IL_037a:  ldc.i4.5
    IL_037b:  ldc.i4.3
    IL_037c:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0381:  stelem.ref
    IL_0382:  dup
    IL_0383:  ldc.i4.s   69
    IL_0385:  ldc.i4.0
    IL_0386:  ldc.i4.m1
    IL_0387:  ldc.i4.0
    IL_0388:  ldc.i4.3
    IL_0389:  ldc.i4.5
    IL_038a:  ldc.i4.4
    IL_038b:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0390:  stelem.ref
    IL_0391:  dup
    IL_0392:  ldc.i4.s   70
    IL_0394:  ldc.i4.1
    IL_0395:  ldc.i4.m1
    IL_0396:  ldc.i4.0
    IL_0397:  ldc.i4.1
    IL_0398:  ldc.i4.5
    IL_0399:  ldc.i4.4
    IL_039a:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_039f:  stelem.ref
    IL_03a0:  dup
    IL_03a1:  ldc.i4.s   71
    IL_03a3:  ldc.i4.0
    IL_03a4:  ldc.i4.0
    IL_03a5:  ldc.i4.0
    IL_03a6:  ldc.i4.4
    IL_03a7:  ldc.i4.5
    IL_03a8:  ldc.i4.1
    IL_03a9:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_03ae:  stelem.ref
    IL_03af:  dup
    IL_03b0:  ldc.i4.s   72
    IL_03b2:  ldc.i4.1
    IL_03b3:  ldc.i4.0
    IL_03b4:  ldc.i4.1
    IL_03b5:  ldc.i4.0
    IL_03b6:  ldc.i4.0
    IL_03b7:  ldc.i4.3
    IL_03b8:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_03bd:  stelem.ref
    IL_03be:  dup
    IL_03bf:  ldc.i4.s   73
    IL_03c1:  ldc.i4.0
    IL_03c2:  ldc.i4.0
    IL_03c3:  ldc.i4.1
    IL_03c4:  ldc.i4.3
    IL_03c5:  ldc.i4.0
    IL_03c6:  ldc.i4.2
    IL_03c7:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_03cc:  stelem.ref
    IL_03cd:  dup
    IL_03ce:  ldc.i4.s   74
    IL_03d0:  ldc.i4.1
    IL_03d1:  ldc.i4.0
    IL_03d2:  ldc.i4.1
    IL_03d3:  ldc.i4.1
    IL_03d4:  ldc.i4.0
    IL_03d5:  ldc.i4.2
    IL_03d6:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_03db:  stelem.ref
    IL_03dc:  dup
    IL_03dd:  ldc.i4.s   75
    IL_03df:  ldc.i4.0
    IL_03e0:  ldc.i4.0
    IL_03e1:  ldc.i4.0
    IL_03e2:  ldc.i4.2
    IL_03e3:  ldc.i4.0
    IL_03e4:  ldc.i4.1
    IL_03e5:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_03ea:  stelem.ref
    IL_03eb:  dup
    IL_03ec:  ldc.i4.s   76
    IL_03ee:  ldc.i4.1
    IL_03ef:  ldc.i4.0
    IL_03f0:  ldc.i4.0
    IL_03f1:  ldc.i4.1
    IL_03f2:  ldc.i4.1
    IL_03f3:  ldc.i4.3
    IL_03f4:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_03f9:  stelem.ref
    IL_03fa:  dup
    IL_03fb:  ldc.i4.s   80
    IL_03fd:  ldc.i4.0
    IL_03fe:  ldc.i4.m1
    IL_03ff:  ldc.i4.m1
    IL_0400:  ldc.i4.2
    IL_0401:  ldc.i4.2
    IL_0402:  ldc.i4.4
    IL_0403:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0408:  stelem.ref
    IL_0409:  dup
    IL_040a:  ldc.i4.s   81
    IL_040c:  ldc.i4.0
    IL_040d:  ldc.i4.0
    IL_040e:  ldc.i4.m1
    IL_040f:  ldc.i4.4
    IL_0410:  ldc.i4.2
    IL_0411:  ldc.i4.0
    IL_0412:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0417:  stelem.ref
    IL_0418:  dup
    IL_0419:  ldc.i4.s   82
    IL_041b:  ldc.i4.0
    IL_041c:  ldc.i4.m1
    IL_041d:  ldc.i4.m1
    IL_041e:  ldc.i4.5
    IL_041f:  ldc.i4.2
    IL_0420:  ldc.i4.0
    IL_0421:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0426:  stelem.ref
    IL_0427:  dup
    IL_0428:  ldc.i4.s   83
    IL_042a:  ldc.i4.0
    IL_042b:  ldc.i4.0
    IL_042c:  ldc.i4.0
    IL_042d:  ldc.i4.0
    IL_042e:  ldc.i4.2
    IL_042f:  ldc.i4.5
    IL_0430:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0435:  stelem.ref
    IL_0436:  dup
    IL_0437:  ldc.i4.s   84
    IL_0439:  ldc.i4.m1
    IL_043a:  ldc.i4.m1
    IL_043b:  ldc.i4.0
    IL_043c:  ldc.i4.3
    IL_043d:  ldc.i4.3
    IL_043e:  ldc.i4.4
    IL_043f:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0444:  stelem.ref
    IL_0445:  dup
    IL_0446:  ldc.i4.s   85
    IL_0448:  ldc.i4.m1
    IL_0449:  ldc.i4.0
    IL_044a:  ldc.i4.0
    IL_044b:  ldc.i4.4
    IL_044c:  ldc.i4.3
    IL_044d:  ldc.i4.1
    IL_044e:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0453:  stelem.ref
    IL_0454:  dup
    IL_0455:  ldc.i4.s   86
    IL_0457:  ldc.i4.m1
    IL_0458:  ldc.i4.m1
    IL_0459:  ldc.i4.0
    IL_045a:  ldc.i4.5
    IL_045b:  ldc.i4.3
    IL_045c:  ldc.i4.1
    IL_045d:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0462:  stelem.ref
    IL_0463:  dup
    IL_0464:  ldc.i4.s   87
    IL_0466:  ldc.i4.0
    IL_0467:  ldc.i4.0
    IL_0468:  ldc.i4.0
    IL_0469:  ldc.i4.1
    IL_046a:  ldc.i4.3
    IL_046b:  ldc.i4.5
    IL_046c:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0471:  stelem.ref
    IL_0472:  dup
    IL_0473:  ldc.i4.s   88
    IL_0475:  ldc.i4.0
    IL_0476:  ldc.i4.m1
    IL_0477:  ldc.i4.1
    IL_0478:  ldc.i4.0
    IL_0479:  ldc.i4.0
    IL_047a:  ldc.i4.4
    IL_047b:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0480:  stelem.ref
    IL_0481:  dup
    IL_0482:  ldc.i4.s   89
    IL_0484:  ldc.i4.0
    IL_0485:  ldc.i4.0
    IL_0486:  ldc.i4.1
    IL_0487:  ldc.i4.4
    IL_0488:  ldc.i4.0
    IL_0489:  ldc.i4.2
    IL_048a:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_048f:  stelem.ref
    IL_0490:  dup
    IL_0491:  ldc.i4.s   90
    IL_0493:  ldc.i4.0
    IL_0494:  ldc.i4.m1
    IL_0495:  ldc.i4.1
    IL_0496:  ldc.i4.5
    IL_0497:  ldc.i4.0
    IL_0498:  ldc.i4.2
    IL_0499:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_049e:  stelem.ref
    IL_049f:  dup
    IL_04a0:  ldc.i4.s   91
    IL_04a2:  ldc.i4.0
    IL_04a3:  ldc.i4.0
    IL_04a4:  ldc.i4.0
    IL_04a5:  ldc.i4.2
    IL_04a6:  ldc.i4.0
    IL_04a7:  ldc.i4.5
    IL_04a8:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_04ad:  stelem.ref
    IL_04ae:  dup
    IL_04af:  ldc.i4.s   92
    IL_04b1:  ldc.i4.1
    IL_04b2:  ldc.i4.m1
    IL_04b3:  ldc.i4.0
    IL_04b4:  ldc.i4.1
    IL_04b5:  ldc.i4.1
    IL_04b6:  ldc.i4.4
    IL_04b7:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_04bc:  stelem.ref
    IL_04bd:  dup
    IL_04be:  ldc.i4.s   93
    IL_04c0:  ldc.i4.1
    IL_04c1:  ldc.i4.0
    IL_04c2:  ldc.i4.0
    IL_04c3:  ldc.i4.4
    IL_04c4:  ldc.i4.1
    IL_04c5:  ldc.i4.3
    IL_04c6:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_04cb:  stelem.ref
    IL_04cc:  dup
    IL_04cd:  ldc.i4.s   94
    IL_04cf:  ldc.i4.1
    IL_04d0:  ldc.i4.m1
    IL_04d1:  ldc.i4.0
    IL_04d2:  ldc.i4.5
    IL_04d3:  ldc.i4.1
    IL_04d4:  ldc.i4.3
    IL_04d5:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_04da:  stelem.ref
    IL_04db:  dup
    IL_04dc:  ldc.i4.s   95
    IL_04de:  ldc.i4.0
    IL_04df:  ldc.i4.0
    IL_04e0:  ldc.i4.0
    IL_04e1:  ldc.i4.3
    IL_04e2:  ldc.i4.1
    IL_04e3:  ldc.i4.5
    IL_04e4:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_04e9:  stelem.ref
    IL_04ea:  dup
    IL_04eb:  ldc.i4.s   96
    IL_04ed:  ldc.i4.0
    IL_04ee:  ldc.i4.m1
    IL_04ef:  ldc.i4.0
    IL_04f0:  ldc.i4.5
    IL_04f1:  ldc.i4.5
    IL_04f2:  ldc.i4.4
    IL_04f3:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_04f8:  stelem.ref
    IL_04f9:  dup
    IL_04fa:  ldc.i4.s   100
    IL_04fc:  ldc.i4.0
    IL_04fd:  ldc.i4.1
    IL_04fe:  ldc.i4.m1
    IL_04ff:  ldc.i4.2
    IL_0500:  ldc.i4.2
    IL_0501:  ldc.i4.5
    IL_0502:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0507:  stelem.ref
    IL_0508:  dup
    IL_0509:  ldc.i4.s   101
    IL_050b:  ldc.i4.0
    IL_050c:  ldc.i4.0
    IL_050d:  ldc.i4.m1
    IL_050e:  ldc.i4.5
    IL_050f:  ldc.i4.2
    IL_0510:  ldc.i4.0
    IL_0511:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0516:  stelem.ref
    IL_0517:  dup
    IL_0518:  ldc.i4.s   102
    IL_051a:  ldc.i4.0
    IL_051b:  ldc.i4.1
    IL_051c:  ldc.i4.m1
    IL_051d:  ldc.i4.4
    IL_051e:  ldc.i4.2
    IL_051f:  ldc.i4.0
    IL_0520:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0525:  stelem.ref
    IL_0526:  dup
    IL_0527:  ldc.i4.s   103
    IL_0529:  ldc.i4.0
    IL_052a:  ldc.i4.0
    IL_052b:  ldc.i4.0
    IL_052c:  ldc.i4.0
    IL_052d:  ldc.i4.2
    IL_052e:  ldc.i4.4
    IL_052f:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0534:  stelem.ref
    IL_0535:  dup
    IL_0536:  ldc.i4.s   104
    IL_0538:  ldc.i4.1
    IL_0539:  ldc.i4.1
    IL_053a:  ldc.i4.0
    IL_053b:  ldc.i4.1
    IL_053c:  ldc.i4.1
    IL_053d:  ldc.i4.5
    IL_053e:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0543:  stelem.ref
    IL_0544:  dup
    IL_0545:  ldc.i4.s   105
    IL_0547:  ldc.i4.1
    IL_0548:  ldc.i4.0
    IL_0549:  ldc.i4.0
    IL_054a:  ldc.i4.5
    IL_054b:  ldc.i4.1
    IL_054c:  ldc.i4.3
    IL_054d:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0552:  stelem.ref
    IL_0553:  dup
    IL_0554:  ldc.i4.s   106
    IL_0556:  ldc.i4.1
    IL_0557:  ldc.i4.1
    IL_0558:  ldc.i4.0
    IL_0559:  ldc.i4.4
    IL_055a:  ldc.i4.1
    IL_055b:  ldc.i4.3
    IL_055c:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0561:  stelem.ref
    IL_0562:  dup
    IL_0563:  ldc.i4.s   107
    IL_0565:  ldc.i4.0
    IL_0566:  ldc.i4.0
    IL_0567:  ldc.i4.0
    IL_0568:  ldc.i4.3
    IL_0569:  ldc.i4.1
    IL_056a:  ldc.i4.4
    IL_056b:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0570:  stelem.ref
    IL_0571:  dup
    IL_0572:  ldc.i4.s   108
    IL_0574:  ldc.i4.0
    IL_0575:  ldc.i4.1
    IL_0576:  ldc.i4.1
    IL_0577:  ldc.i4.0
    IL_0578:  ldc.i4.0
    IL_0579:  ldc.i4.5
    IL_057a:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_057f:  stelem.ref
    IL_0580:  dup
    IL_0581:  ldc.i4.s   109
    IL_0583:  ldc.i4.0
    IL_0584:  ldc.i4.0
    IL_0585:  ldc.i4.1
    IL_0586:  ldc.i4.5
    IL_0587:  ldc.i4.0
    IL_0588:  ldc.i4.2
    IL_0589:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_058e:  stelem.ref
    IL_058f:  dup
    IL_0590:  ldc.i4.s   110
    IL_0592:  ldc.i4.0
    IL_0593:  ldc.i4.1
    IL_0594:  ldc.i4.1
    IL_0595:  ldc.i4.4
    IL_0596:  ldc.i4.0
    IL_0597:  ldc.i4.2
    IL_0598:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_059d:  stelem.ref
    IL_059e:  dup
    IL_059f:  ldc.i4.s   111
    IL_05a1:  ldc.i4.0
    IL_05a2:  ldc.i4.0
    IL_05a3:  ldc.i4.0
    IL_05a4:  ldc.i4.2
    IL_05a5:  ldc.i4.0
    IL_05a6:  ldc.i4.4
    IL_05a7:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_05ac:  stelem.ref
    IL_05ad:  dup
    IL_05ae:  ldc.i4.s   112
    IL_05b0:  ldc.i4.m1
    IL_05b1:  ldc.i4.1
    IL_05b2:  ldc.i4.0
    IL_05b3:  ldc.i4.3
    IL_05b4:  ldc.i4.3
    IL_05b5:  ldc.i4.5
    IL_05b6:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_05bb:  stelem.ref
    IL_05bc:  dup
    IL_05bd:  ldc.i4.s   113
    IL_05bf:  ldc.i4.m1
    IL_05c0:  ldc.i4.0
    IL_05c1:  ldc.i4.0
    IL_05c2:  ldc.i4.5
    IL_05c3:  ldc.i4.3
    IL_05c4:  ldc.i4.1
    IL_05c5:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_05ca:  stelem.ref
    IL_05cb:  dup
    IL_05cc:  ldc.i4.s   114
    IL_05ce:  ldc.i4.m1
    IL_05cf:  ldc.i4.1
    IL_05d0:  ldc.i4.0
    IL_05d1:  ldc.i4.4
    IL_05d2:  ldc.i4.3
    IL_05d3:  ldc.i4.1
    IL_05d4:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_05d9:  stelem.ref
    IL_05da:  dup
    IL_05db:  ldc.i4.s   115
    IL_05dd:  ldc.i4.0
    IL_05de:  ldc.i4.0
    IL_05df:  ldc.i4.0
    IL_05e0:  ldc.i4.1
    IL_05e1:  ldc.i4.3
    IL_05e2:  ldc.i4.4
    IL_05e3:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_05e8:  stelem.ref
    IL_05e9:  dup
    IL_05ea:  ldc.i4.s   116
    IL_05ec:  ldc.i4.0
    IL_05ed:  ldc.i4.1
    IL_05ee:  ldc.i4.0
    IL_05ef:  ldc.i4.4
    IL_05f0:  ldc.i4.4
    IL_05f1:  ldc.i4.5
    IL_05f2:  newobj     instance void Game.ElectricConnectionPath::.ctor(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_05f7:  stelem.ref
    IL_05f8:  stsfld     class Game.ElectricConnectionPath[] Game.SubsystemElectricity::m_connectionPathsTable
    IL_05fd:  ldc.i4.s   36
    IL_05ff:  newarr     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0604:  dup
    IL_0605:  ldc.i4.1
    IL_0606:  ldc.i4.3
    IL_0607:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_060c:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0611:  dup
    IL_0612:  ldc.i4.2
    IL_0613:  ldc.i4.4
    IL_0614:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0619:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_061e:  dup
    IL_061f:  ldc.i4.3
    IL_0620:  ldc.i4.1
    IL_0621:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0626:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_062b:  dup
    IL_062c:  ldc.i4.4
    IL_062d:  ldc.i4.0
    IL_062e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0633:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0638:  dup
    IL_0639:  ldc.i4.5
    IL_063a:  ldc.i4.2
    IL_063b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0640:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0645:  dup
    IL_0646:  ldc.i4.6
    IL_0647:  ldc.i4.1
    IL_0648:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_064d:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0652:  dup
    IL_0653:  ldc.i4.8
    IL_0654:  ldc.i4.3
    IL_0655:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_065a:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_065f:  dup
    IL_0660:  ldc.i4.s   9
    IL_0662:  ldc.i4.4
    IL_0663:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0668:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_066d:  dup
    IL_066e:  ldc.i4.s   10
    IL_0670:  ldc.i4.0
    IL_0671:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0676:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_067b:  dup
    IL_067c:  ldc.i4.s   11
    IL_067e:  ldc.i4.2
    IL_067f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0684:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0689:  dup
    IL_068a:  ldc.i4.s   12
    IL_068c:  ldc.i4.4
    IL_068d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0692:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0697:  dup
    IL_0698:  ldc.i4.s   13
    IL_069a:  ldc.i4.1
    IL_069b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_06a0:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_06a5:  dup
    IL_06a6:  ldc.i4.s   15
    IL_06a8:  ldc.i4.3
    IL_06a9:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_06ae:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_06b3:  dup
    IL_06b4:  ldc.i4.s   16
    IL_06b6:  ldc.i4.0
    IL_06b7:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_06bc:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_06c1:  dup
    IL_06c2:  ldc.i4.s   17
    IL_06c4:  ldc.i4.2
    IL_06c5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_06ca:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_06cf:  dup
    IL_06d0:  ldc.i4.s   18
    IL_06d2:  ldc.i4.3
    IL_06d3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_06d8:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_06dd:  dup
    IL_06de:  ldc.i4.s   19
    IL_06e0:  ldc.i4.4
    IL_06e1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_06e6:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_06eb:  dup
    IL_06ec:  ldc.i4.s   20
    IL_06ee:  ldc.i4.1
    IL_06ef:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_06f4:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_06f9:  dup
    IL_06fa:  ldc.i4.s   22
    IL_06fc:  ldc.i4.0
    IL_06fd:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0702:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0707:  dup
    IL_0708:  ldc.i4.s   23
    IL_070a:  ldc.i4.2
    IL_070b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0710:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0715:  dup
    IL_0716:  ldc.i4.s   24
    IL_0718:  ldc.i4.2
    IL_0719:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_071e:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0723:  dup
    IL_0724:  ldc.i4.s   25
    IL_0726:  ldc.i4.3
    IL_0727:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_072c:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0731:  dup
    IL_0732:  ldc.i4.s   26
    IL_0734:  ldc.i4.0
    IL_0735:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_073a:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_073f:  dup
    IL_0740:  ldc.i4.s   27
    IL_0742:  ldc.i4.1
    IL_0743:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0748:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_074d:  dup
    IL_074e:  ldc.i4.s   29
    IL_0750:  ldc.i4.4
    IL_0751:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0756:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_075b:  dup
    IL_075c:  ldc.i4.s   30
    IL_075e:  ldc.i4.0
    IL_075f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0764:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0769:  dup
    IL_076a:  ldc.i4.s   31
    IL_076c:  ldc.i4.3
    IL_076d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0772:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0777:  dup
    IL_0778:  ldc.i4.s   32
    IL_077a:  ldc.i4.2
    IL_077b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_0780:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0785:  dup
    IL_0786:  ldc.i4.s   33
    IL_0788:  ldc.i4.1
    IL_0789:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_078e:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_0793:  dup
    IL_0794:  ldc.i4.s   34
    IL_0796:  ldc.i4.4
    IL_0797:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::.ctor(!0)
    IL_079c:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>
    IL_07a1:  stsfld     valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>[] Game.SubsystemElectricity::m_connectorDirectionsTable
    IL_07a6:  ldc.i4.s   30
    IL_07a8:  newarr     [System.Runtime]System.Int32
    IL_07ad:  dup
    IL_07ae:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=120' '<PrivateImplementationDetails>'::'910C0F600991CADD28B1A94EE11334BBC0E9A8BD'
    IL_07b3:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_07b8:  stsfld     int32[] Game.SubsystemElectricity::m_connectorFacesTable
    IL_07bd:  ldc.i4.0
    IL_07be:  stsfld     bool Game.SubsystemElectricity::DebugDrawElectrics
    IL_07c3:  ret
  } // end of method SubsystemElectricity::.cctor

  .property instance class Game.SubsystemTime
          SubsystemTime()
  {
    .get instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    .set instance void Game.SubsystemElectricity::set_SubsystemTime(class Game.SubsystemTime)
  } // end of property SubsystemElectricity::SubsystemTime
  .property instance class Game.SubsystemTerrain
          SubsystemTerrain()
  {
    .get instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    .set instance void Game.SubsystemElectricity::set_SubsystemTerrain(class Game.SubsystemTerrain)
  } // end of property SubsystemElectricity::SubsystemTerrain
  .property instance class Game.SubsystemAudio
          SubsystemAudio()
  {
    .get instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    .set instance void Game.SubsystemElectricity::set_SubsystemAudio(class Game.SubsystemAudio)
  } // end of property SubsystemElectricity::SubsystemAudio
  .property instance int32 FrameStartCircuitStep()
  {
    .get instance int32 Game.SubsystemElectricity::get_FrameStartCircuitStep()
    .set instance void Game.SubsystemElectricity::set_FrameStartCircuitStep(int32)
  } // end of property SubsystemElectricity::FrameStartCircuitStep
  .property instance int32 CircuitStep()
  {
    .get instance int32 Game.SubsystemElectricity::get_CircuitStep()
    .set instance void Game.SubsystemElectricity::set_CircuitStep(int32)
  } // end of property SubsystemElectricity::CircuitStep
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemElectricity::get_UpdateOrder()
  } // end of property SubsystemElectricity::UpdateOrder
} // end of class Game.SubsystemElectricity