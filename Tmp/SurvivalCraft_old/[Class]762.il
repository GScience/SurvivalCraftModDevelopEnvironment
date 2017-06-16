.class public auto ansi beforefieldinit Game.SubsystemTerrain
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable,
                  Game.IUpdateable
{
  .field public static bool TerrainRenderingEnabled
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> m_modifiedCells
  .field private class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> m_modifiedList
  .field private static valuetype [Engine]Engine.Point3[] m_neighborOffsets
  .field private int32 m_lastExpectedChunksCount
  .field private class Game.SubsystemDrawing m_subsystemDrawing
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.SubsystemAnimatedTextures '<SubsystemAnimatedTextures>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemFurnitureBlockBehavior '<SubsystemFurnitureBlockBehavior>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<ChunksCount>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.TerrainChunk[] '<Chunks>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.TerrainData '<TerrainData>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.TerrainUpdater '<TerrainUpdater>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.TerrainRenderer '<TerrainRenderer>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.TerrainSerializer129 '<TerrainSerializer>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ITerrainContentsGenerator '<TerrainContentsGenerator>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.BlockGeometryGenerator '<BlockGeometryGenerator>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> m_dropValues
  .field private int32[] m_drawOrders
  .method public hidebysig specialname instance class Game.SubsystemAnimatedTextures 
          get_SubsystemAnimatedTextures() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAnimatedTextures Game.SubsystemTerrain::'<SubsystemAnimatedTextures>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_SubsystemAnimatedTextures

  .method private hidebysig specialname instance void 
          set_SubsystemAnimatedTextures(class Game.SubsystemAnimatedTextures 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemAnimatedTextures Game.SubsystemTerrain::'<SubsystemAnimatedTextures>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_SubsystemAnimatedTextures

  .method public hidebysig specialname instance class Game.SubsystemFurnitureBlockBehavior 
          get_SubsystemFurnitureBlockBehavior() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::'<SubsystemFurnitureBlockBehavior>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_SubsystemFurnitureBlockBehavior

  .method private hidebysig specialname instance void 
          set_SubsystemFurnitureBlockBehavior(class Game.SubsystemFurnitureBlockBehavior 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::'<SubsystemFurnitureBlockBehavior>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_SubsystemFurnitureBlockBehavior

  .method public hidebysig specialname instance int32 
          get_ChunksCount() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemTerrain::'<ChunksCount>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_ChunksCount

  .method private hidebysig specialname instance void 
          set_ChunksCount(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.SubsystemTerrain::'<ChunksCount>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_ChunksCount

  .method public hidebysig specialname instance class Game.TerrainChunk[] 
          get_Chunks() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainChunk[] Game.SubsystemTerrain::'<Chunks>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_Chunks

  .method private hidebysig specialname instance void 
          set_Chunks(class Game.TerrainChunk[] 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TerrainChunk[] Game.SubsystemTerrain::'<Chunks>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_Chunks

  .method public hidebysig specialname instance class Game.TerrainData 
          get_TerrainData() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.SubsystemTerrain::'<TerrainData>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_TerrainData

  .method private hidebysig specialname instance void 
          set_TerrainData(class Game.TerrainData 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TerrainData Game.SubsystemTerrain::'<TerrainData>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_TerrainData

  .method public hidebysig specialname instance class Game.TerrainUpdater 
          get_TerrainUpdater() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainUpdater Game.SubsystemTerrain::'<TerrainUpdater>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_TerrainUpdater

  .method private hidebysig specialname instance void 
          set_TerrainUpdater(class Game.TerrainUpdater 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TerrainUpdater Game.SubsystemTerrain::'<TerrainUpdater>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_TerrainUpdater

  .method public hidebysig specialname instance class Game.TerrainRenderer 
          get_TerrainRenderer() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainRenderer Game.SubsystemTerrain::'<TerrainRenderer>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_TerrainRenderer

  .method private hidebysig specialname instance void 
          set_TerrainRenderer(class Game.TerrainRenderer 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TerrainRenderer Game.SubsystemTerrain::'<TerrainRenderer>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_TerrainRenderer

  .method public hidebysig specialname instance class Game.TerrainSerializer129 
          get_TerrainSerializer() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainSerializer129 Game.SubsystemTerrain::'<TerrainSerializer>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_TerrainSerializer

  .method private hidebysig specialname instance void 
          set_TerrainSerializer(class Game.TerrainSerializer129 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.TerrainSerializer129 Game.SubsystemTerrain::'<TerrainSerializer>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_TerrainSerializer

  .method public hidebysig specialname instance class Game.ITerrainContentsGenerator 
          get_TerrainContentsGenerator() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ITerrainContentsGenerator Game.SubsystemTerrain::'<TerrainContentsGenerator>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_TerrainContentsGenerator

  .method private hidebysig specialname instance void 
          set_TerrainContentsGenerator(class Game.ITerrainContentsGenerator 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ITerrainContentsGenerator Game.SubsystemTerrain::'<TerrainContentsGenerator>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_TerrainContentsGenerator

  .method public hidebysig specialname instance class Game.BlockGeometryGenerator 
          get_BlockGeometryGenerator() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemTerrain::'<BlockGeometryGenerator>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_BlockGeometryGenerator

  .method private hidebysig specialname instance void 
          set_BlockGeometryGenerator(class Game.BlockGeometryGenerator 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.BlockGeometryGenerator Game.SubsystemTerrain::'<BlockGeometryGenerator>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_BlockGeometryGenerator

  .method public hidebysig instance class Game.TerrainChunk 
          CellToChunk(int32 x,
                      int32 z) cil managed
  {
    // 代码大小       200 (0xc8)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.s   16
    IL_0003:  div
    IL_0004:  ldarg.0
    IL_0005:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000a:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  ldc.i4.s   16
    IL_0016:  div
    IL_0017:  sub
    IL_0018:  stloc.0
    IL_0019:  ldarg.2
    IL_001a:  ldc.i4.s   16
    IL_001c:  div
    IL_001d:  ldarg.0
    IL_001e:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0023:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0028:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002d:  ldc.i4.s   16
    IL_002f:  div
    IL_0030:  sub
    IL_0031:  stloc.1
    IL_0032:  ldloc.0
    IL_0033:  ldc.i4.0
    IL_0034:  blt        IL_00c6

    IL_0039:  ldloc.0
    IL_003a:  ldarg.0
    IL_003b:  call       instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_0040:  bge        IL_00c6

    IL_0045:  ldloc.1
    IL_0046:  ldc.i4.0
    IL_0047:  blt.s      IL_00c6

    IL_0049:  ldloc.1
    IL_004a:  ldarg.0
    IL_004b:  call       instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_0050:  bge.s      IL_00c6

    IL_0052:  ldarg.0
    IL_0053:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0058:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_005d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0062:  ldarg.0
    IL_0063:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0068:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_006d:  ldc.i4.1
    IL_006e:  sub
    IL_006f:  and
    IL_0070:  stloc.2
    IL_0071:  ldarg.0
    IL_0072:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0077:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_007c:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0081:  ldarg.0
    IL_0082:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0087:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_008c:  ldc.i4.1
    IL_008d:  sub
    IL_008e:  and
    IL_008f:  stloc.3
    IL_0090:  ldloc.0
    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.s   16
    IL_0094:  div
    IL_0095:  add
    IL_0096:  ldarg.0
    IL_0097:  call       instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_009c:  ldc.i4.1
    IL_009d:  sub
    IL_009e:  and
    IL_009f:  stloc.s    V_4
    IL_00a1:  ldloc.1
    IL_00a2:  ldloc.3
    IL_00a3:  ldc.i4.s   16
    IL_00a5:  div
    IL_00a6:  add
    IL_00a7:  ldarg.0
    IL_00a8:  call       instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_00ad:  ldc.i4.1
    IL_00ae:  sub
    IL_00af:  and
    IL_00b0:  stloc.s    V_5
    IL_00b2:  ldarg.0
    IL_00b3:  call       instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_00b8:  ldloc.s    V_4
    IL_00ba:  ldloc.s    V_5
    IL_00bc:  ldarg.0
    IL_00bd:  call       instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_00c2:  mul
    IL_00c3:  add
    IL_00c4:  ldelem.ref
    IL_00c5:  ret

    IL_00c6:  ldnull
    IL_00c7:  ret
  } // end of method SubsystemTerrain::CellToChunk

  .method public hidebysig instance void 
          ProcessModifiedCells() cil managed
  {
    // 代码大小       334 (0x14e)
    .maxstack  7
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool> V_0,
             valuetype [Engine]Engine.Point3 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Point3 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Point3 V_5,
             int32 V_6,
             class Game.SubsystemBlockBehavior[] V_7,
             int32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemTerrain::m_modifiedList
    IL_0006:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemTerrain::m_modifiedCells
    IL_0011:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Keys()
    IL_0016:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,bool>::GetEnumerator()
    IL_001b:  stloc.0
    .try
    {
      IL_001c:  br.s       IL_0032

      IL_001e:  ldloca.s   V_0
      IL_0020:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::get_Current()
      IL_0025:  stloc.1
      IL_0026:  ldarg.0
      IL_0027:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemTerrain::m_modifiedList
      IL_002c:  ldloc.1
      IL_002d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_0032:  ldloca.s   V_0
      IL_0034:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::MoveNext()
      IL_0039:  brtrue.s   IL_001e

      IL_003b:  leave.s    IL_004b

    }  // end .try
    finally
    {
      IL_003d:  ldloca.s   V_0
      IL_003f:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>
      IL_0045:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004a:  endfinally
    }  // end handler
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemTerrain::m_modifiedCells
    IL_0051:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::Clear()
    IL_0056:  ldc.i4.0
    IL_0057:  stloc.2
    IL_0058:  br         IL_013c

    IL_005d:  ldarg.0
    IL_005e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemTerrain::m_modifiedList
    IL_0063:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Array()
    IL_0068:  ldloc.2
    IL_0069:  ldelem     [Engine]Engine.Point3
    IL_006e:  stloc.3
    IL_006f:  ldc.i4.0
    IL_0070:  stloc.s    V_4
    IL_0072:  br         IL_012a

    IL_0077:  ldsfld     valuetype [Engine]Engine.Point3[] Game.SubsystemTerrain::m_neighborOffsets
    IL_007c:  ldloc.s    V_4
    IL_007e:  ldelem     [Engine]Engine.Point3
    IL_0083:  stloc.s    V_5
    IL_0085:  ldarg.0
    IL_0086:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_008b:  ldloc.3
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0091:  ldloc.s    V_5
    IL_0093:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0098:  add
    IL_0099:  ldloc.3
    IL_009a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_009f:  ldloc.s    V_5
    IL_00a1:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00a6:  add
    IL_00a7:  ldloc.3
    IL_00a8:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00ad:  ldloc.s    V_5
    IL_00af:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b4:  add
    IL_00b5:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00ba:  stloc.s    V_6
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemTerrain::m_subsystemBlockBehaviors
    IL_00c2:  ldloc.s    V_6
    IL_00c4:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_00c9:  stloc.s    V_7
    IL_00cb:  ldc.i4.0
    IL_00cc:  stloc.s    V_8
    IL_00ce:  br.s       IL_011c

    IL_00d0:  ldloc.s    V_7
    IL_00d2:  ldloc.s    V_8
    IL_00d4:  ldelem.ref
    IL_00d5:  ldloc.3
    IL_00d6:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00db:  ldloc.s    V_5
    IL_00dd:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00e2:  add
    IL_00e3:  ldloc.3
    IL_00e4:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00e9:  ldloc.s    V_5
    IL_00eb:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00f0:  add
    IL_00f1:  ldloc.3
    IL_00f2:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00f7:  ldloc.s    V_5
    IL_00f9:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00fe:  add
    IL_00ff:  ldloc.3
    IL_0100:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0105:  ldloc.3
    IL_0106:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_010b:  ldloc.3
    IL_010c:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0111:  callvirt   instance void Game.SubsystemBlockBehavior::OnNeighborBlockChanged(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32)
    IL_0116:  ldloc.s    V_8
    IL_0118:  ldc.i4.1
    IL_0119:  add
    IL_011a:  stloc.s    V_8
    IL_011c:  ldloc.s    V_8
    IL_011e:  ldloc.s    V_7
    IL_0120:  ldlen
    IL_0121:  conv.i4
    IL_0122:  blt.s      IL_00d0

    IL_0124:  ldloc.s    V_4
    IL_0126:  ldc.i4.1
    IL_0127:  add
    IL_0128:  stloc.s    V_4
    IL_012a:  ldloc.s    V_4
    IL_012c:  ldsfld     valuetype [Engine]Engine.Point3[] Game.SubsystemTerrain::m_neighborOffsets
    IL_0131:  ldlen
    IL_0132:  conv.i4
    IL_0133:  blt        IL_0077

    IL_0138:  ldloc.2
    IL_0139:  ldc.i4.1
    IL_013a:  add
    IL_013b:  stloc.2
    IL_013c:  ldloc.2
    IL_013d:  ldarg.0
    IL_013e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemTerrain::m_modifiedList
    IL_0143:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_0148:  blt        IL_005d

    IL_014d:  ret
  } // end of method SubsystemTerrain::ProcessModifiedCells

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> 
          Raycast(valuetype [Engine]Engine.Vector3 start,
                  valuetype [Engine]Engine.Vector3 end,
                  bool useInteractionBoxes,
                  bool skipAirBlocks,
                  class [System.Runtime]System.Func`3<int32,float32,bool> action) cil managed
  {
    // 代码大小       1180 (0x49c)
    .maxstack  5
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Ray V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             float32 V_17,
             float32 V_18,
             float32 V_19,
             float32 V_20,
             float32 V_21,
             float32 V_22,
             float32 V_23,
             float32 V_24,
             float32 V_25,
             float32 V_26,
             float32 V_27,
             float32 V_28,
             valuetype [Engine]Engine.BoundingBox V_29,
             int32 V_30,
             valuetype [System.Runtime]System.Nullable`1<float32> V_31,
             int32 V_32,
             int32 V_33,
             valuetype [Engine]Engine.Ray V_34,
             class Game.Block V_35,
             valuetype [Engine]Engine.BoundingBox[] V_36,
             int32 V_37,
             valuetype [System.Runtime]System.Nullable`1<float32> V_38,
             int32 V_39,
             float32 V_40,
             float32 V_41,
             valuetype Game.TerrainRaycastResult V_42,
             valuetype Game.CellFace V_43,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_44)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.r4     1000.
    IL_000e:  ble.un.s   IL_0038

    IL_0010:  ldstr      "Terrain raycast too long, trimming."
    IL_0015:  call       void [Engine]Engine.Log::Warning(string)
    IL_001a:  ldarg.1
    IL_001b:  ldc.r4     1000.
    IL_0020:  ldarg.2
    IL_0021:  ldarg.1
    IL_0022:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0027:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_002c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0031:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0036:  starg.s    end
    IL_0038:  ldloca.s   V_1
    IL_003a:  ldarg.1
    IL_003b:  ldarg.2
    IL_003c:  ldarg.1
    IL_003d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0042:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0047:  call       instance void [Engine]Engine.Ray::.ctor(valuetype [Engine]Engine.Vector3,
                                                                 valuetype [Engine]Engine.Vector3)
    IL_004c:  ldarg.1
    IL_004d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0052:  stloc.2
    IL_0053:  ldarg.1
    IL_0054:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0059:  stloc.3
    IL_005a:  ldarg.1
    IL_005b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0060:  stloc.s    V_4
    IL_0062:  ldarg.2
    IL_0063:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0068:  stloc.s    V_5
    IL_006a:  ldarg.2
    IL_006b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0070:  stloc.s    V_6
    IL_0072:  ldarg.2
    IL_0073:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0078:  stloc.s    V_7
    IL_007a:  ldloc.2
    IL_007b:  conv.i4
    IL_007c:  stloc.s    V_8
    IL_007e:  ldloc.3
    IL_007f:  conv.i4
    IL_0080:  stloc.s    V_9
    IL_0082:  ldloc.s    V_4
    IL_0084:  conv.i4
    IL_0085:  stloc.s    V_10
    IL_0087:  ldloc.s    V_5
    IL_0089:  conv.i4
    IL_008a:  stloc.s    V_11
    IL_008c:  ldloc.s    V_6
    IL_008e:  conv.i4
    IL_008f:  stloc.s    V_12
    IL_0091:  ldloc.s    V_7
    IL_0093:  conv.i4
    IL_0094:  stloc.s    V_13
    IL_0096:  ldloc.2
    IL_0097:  ldloc.s    V_5
    IL_0099:  blt.s      IL_00a6

    IL_009b:  ldloc.2
    IL_009c:  ldloc.s    V_5
    IL_009e:  bgt.s      IL_00a3

    IL_00a0:  ldc.i4.0
    IL_00a1:  br.s       IL_00a7

    IL_00a3:  ldc.i4.m1
    IL_00a4:  br.s       IL_00a7

    IL_00a6:  ldc.i4.1
    IL_00a7:  stloc.s    V_14
    IL_00a9:  ldloc.3
    IL_00aa:  ldloc.s    V_6
    IL_00ac:  blt.s      IL_00b9

    IL_00ae:  ldloc.3
    IL_00af:  ldloc.s    V_6
    IL_00b1:  bgt.s      IL_00b6

    IL_00b3:  ldc.i4.0
    IL_00b4:  br.s       IL_00ba

    IL_00b6:  ldc.i4.m1
    IL_00b7:  br.s       IL_00ba

    IL_00b9:  ldc.i4.1
    IL_00ba:  stloc.s    V_15
    IL_00bc:  ldloc.s    V_4
    IL_00be:  ldloc.s    V_7
    IL_00c0:  blt.s      IL_00ce

    IL_00c2:  ldloc.s    V_4
    IL_00c4:  ldloc.s    V_7
    IL_00c6:  bgt.s      IL_00cb

    IL_00c8:  ldc.i4.0
    IL_00c9:  br.s       IL_00cf

    IL_00cb:  ldc.i4.m1
    IL_00cc:  br.s       IL_00cf

    IL_00ce:  ldc.i4.1
    IL_00cf:  stloc.s    V_16
    IL_00d1:  ldloc.2
    IL_00d2:  conv.i4
    IL_00d3:  conv.r4
    IL_00d4:  stloc.s    V_17
    IL_00d6:  ldloc.s    V_17
    IL_00d8:  ldc.r4     1.
    IL_00dd:  add
    IL_00de:  stloc.s    V_18
    IL_00e0:  ldloc.2
    IL_00e1:  ldloc.s    V_5
    IL_00e3:  bgt.s      IL_00eb

    IL_00e5:  ldloc.s    V_18
    IL_00e7:  ldloc.2
    IL_00e8:  sub
    IL_00e9:  br.s       IL_00ef

    IL_00eb:  ldloc.2
    IL_00ec:  ldloc.s    V_17
    IL_00ee:  sub
    IL_00ef:  ldloc.s    V_5
    IL_00f1:  ldloc.2
    IL_00f2:  sub
    IL_00f3:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_00f8:  div
    IL_00f9:  stloc.s    V_19
    IL_00fb:  ldloc.3
    IL_00fc:  conv.i4
    IL_00fd:  conv.r4
    IL_00fe:  stloc.s    V_20
    IL_0100:  ldloc.s    V_20
    IL_0102:  ldc.r4     1.
    IL_0107:  add
    IL_0108:  stloc.s    V_21
    IL_010a:  ldloc.3
    IL_010b:  ldloc.s    V_6
    IL_010d:  bgt.s      IL_0115

    IL_010f:  ldloc.s    V_21
    IL_0111:  ldloc.3
    IL_0112:  sub
    IL_0113:  br.s       IL_0119

    IL_0115:  ldloc.3
    IL_0116:  ldloc.s    V_20
    IL_0118:  sub
    IL_0119:  ldloc.s    V_6
    IL_011b:  ldloc.3
    IL_011c:  sub
    IL_011d:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0122:  div
    IL_0123:  stloc.s    V_22
    IL_0125:  ldloc.s    V_4
    IL_0127:  conv.i4
    IL_0128:  conv.r4
    IL_0129:  stloc.s    V_23
    IL_012b:  ldloc.s    V_23
    IL_012d:  ldc.r4     1.
    IL_0132:  add
    IL_0133:  stloc.s    V_24
    IL_0135:  ldloc.s    V_4
    IL_0137:  ldloc.s    V_7
    IL_0139:  bgt.s      IL_0142

    IL_013b:  ldloc.s    V_24
    IL_013d:  ldloc.s    V_4
    IL_013f:  sub
    IL_0140:  br.s       IL_0147

    IL_0142:  ldloc.s    V_4
    IL_0144:  ldloc.s    V_23
    IL_0146:  sub
    IL_0147:  ldloc.s    V_7
    IL_0149:  ldloc.s    V_4
    IL_014b:  sub
    IL_014c:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0151:  div
    IL_0152:  stloc.s    V_25
    IL_0154:  ldc.r4     1.
    IL_0159:  ldloc.s    V_5
    IL_015b:  ldloc.2
    IL_015c:  sub
    IL_015d:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0162:  div
    IL_0163:  stloc.s    V_26
    IL_0165:  ldc.r4     1.
    IL_016a:  ldloc.s    V_6
    IL_016c:  ldloc.3
    IL_016d:  sub
    IL_016e:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0173:  div
    IL_0174:  stloc.s    V_27
    IL_0176:  ldc.r4     1.
    IL_017b:  ldloc.s    V_7
    IL_017d:  ldloc.s    V_4
    IL_017f:  sub
    IL_0180:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0185:  div
    IL_0186:  stloc.s    V_28
    IL_0188:  ldloca.s   V_29
    IL_018a:  initobj    [Engine]Engine.BoundingBox
    IL_0190:  ldc.i4.0
    IL_0191:  stloc.s    V_30
    IL_0193:  ldloca.s   V_31
    IL_0195:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_019b:  ldarg.0
    IL_019c:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01a1:  ldloc.s    V_8
    IL_01a3:  ldloc.s    V_9
    IL_01a5:  ldloc.s    V_10
    IL_01a7:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_01ac:  stloc.s    V_32
    IL_01ae:  ldloc.s    V_32
    IL_01b0:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_01b5:  stloc.s    V_33
    IL_01b7:  ldloc.s    V_33
    IL_01b9:  brtrue.s   IL_01c2

    IL_01bb:  ldarg.s    skipAirBlocks
    IL_01bd:  brtrue     IL_0269

    IL_01c2:  ldloca.s   V_34
    IL_01c4:  ldloc.1
    IL_01c5:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Ray::Position
    IL_01ca:  ldloc.s    V_8
    IL_01cc:  conv.r4
    IL_01cd:  ldloc.s    V_9
    IL_01cf:  conv.r4
    IL_01d0:  ldloc.s    V_10
    IL_01d2:  conv.r4
    IL_01d3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01d8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01dd:  ldloc.1
    IL_01de:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Ray::Direction
    IL_01e3:  call       instance void [Engine]Engine.Ray::.ctor(valuetype [Engine]Engine.Vector3,
                                                                 valuetype [Engine]Engine.Vector3)
    IL_01e8:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01ed:  ldloc.s    V_33
    IL_01ef:  ldelem.ref
    IL_01f0:  stloc.s    V_35
    IL_01f2:  ldarg.3
    IL_01f3:  brfalse.s  IL_0203

    IL_01f5:  ldloc.s    V_35
    IL_01f7:  ldarg.0
    IL_01f8:  ldloc.s    V_32
    IL_01fa:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomInteractionBoxes(class Game.SubsystemTerrain,
                                                                                                               int32)
    IL_01ff:  stloc.s    V_36
    IL_0201:  br.s       IL_020f

    IL_0203:  ldloc.s    V_35
    IL_0205:  ldarg.0
    IL_0206:  ldloc.s    V_32
    IL_0208:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_020d:  stloc.s    V_36
    IL_020f:  ldc.i4.0
    IL_0210:  stloc.s    V_37
    IL_0212:  br.s       IL_0256

    IL_0214:  ldloca.s   V_34
    IL_0216:  ldloc.s    V_36
    IL_0218:  ldloc.s    V_37
    IL_021a:  ldelem     [Engine]Engine.BoundingBox
    IL_021f:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> [Engine]Engine.Ray::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0224:  stloc.s    V_38
    IL_0226:  ldloca.s   V_38
    IL_0228:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_022d:  brfalse.s  IL_0250

    IL_022f:  ldloca.s   V_31
    IL_0231:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0236:  brfalse.s  IL_0248

    IL_0238:  ldloca.s   V_38
    IL_023a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_023f:  ldloca.s   V_31
    IL_0241:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0246:  bge.un.s   IL_0250

    IL_0248:  ldloc.s    V_37
    IL_024a:  stloc.s    V_30
    IL_024c:  ldloc.s    V_38
    IL_024e:  stloc.s    V_31
    IL_0250:  ldloc.s    V_37
    IL_0252:  ldc.i4.1
    IL_0253:  add
    IL_0254:  stloc.s    V_37
    IL_0256:  ldloc.s    V_37
    IL_0258:  ldloc.s    V_36
    IL_025a:  ldlen
    IL_025b:  conv.i4
    IL_025c:  blt.s      IL_0214

    IL_025e:  ldloc.s    V_36
    IL_0260:  ldloc.s    V_30
    IL_0262:  ldelem     [Engine]Engine.BoundingBox
    IL_0267:  stloc.s    V_29
    IL_0269:  ldloca.s   V_31
    IL_026b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0270:  brfalse    IL_042e

    IL_0275:  ldloca.s   V_31
    IL_0277:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_027c:  ldloc.0
    IL_027d:  bgt.un     IL_042e

    IL_0282:  ldarg.s    action
    IL_0284:  brfalse.s  IL_029b

    IL_0286:  ldarg.s    action
    IL_0288:  ldloc.s    V_32
    IL_028a:  ldloca.s   V_31
    IL_028c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0291:  callvirt   instance !2 class [System.Runtime]System.Func`3<int32,float32,bool>::Invoke(!0,
                                                                                                     !1)
    IL_0296:  brfalse    IL_042e

    IL_029b:  ldc.i4.0
    IL_029c:  stloc.s    V_39
    IL_029e:  ldarg.1
    IL_029f:  ldloc.s    V_8
    IL_02a1:  conv.r4
    IL_02a2:  ldloc.s    V_9
    IL_02a4:  conv.r4
    IL_02a5:  ldloc.s    V_10
    IL_02a7:  conv.r4
    IL_02a8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02ad:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_02b2:  ldloca.s   V_31
    IL_02b4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_02b9:  ldloc.1
    IL_02ba:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Ray::Direction
    IL_02bf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02c4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02c9:  ldc.r4     3.4028235e+038
    IL_02ce:  stloc.s    V_40
    IL_02d0:  dup
    IL_02d1:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02d6:  ldloc.s    V_29
    IL_02d8:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_02dd:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02e2:  sub
    IL_02e3:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_02e8:  stloc.s    V_41
    IL_02ea:  ldloc.s    V_41
    IL_02ec:  ldloc.s    V_40
    IL_02ee:  bge.un.s   IL_02f7

    IL_02f0:  ldloc.s    V_41
    IL_02f2:  stloc.s    V_40
    IL_02f4:  ldc.i4.3
    IL_02f5:  stloc.s    V_39
    IL_02f7:  dup
    IL_02f8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02fd:  ldloc.s    V_29
    IL_02ff:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0304:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0309:  sub
    IL_030a:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_030f:  stloc.s    V_41
    IL_0311:  ldloc.s    V_41
    IL_0313:  ldloc.s    V_40
    IL_0315:  bge.un.s   IL_031e

    IL_0317:  ldloc.s    V_41
    IL_0319:  stloc.s    V_40
    IL_031b:  ldc.i4.1
    IL_031c:  stloc.s    V_39
    IL_031e:  dup
    IL_031f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0324:  ldloc.s    V_29
    IL_0326:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_032b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0330:  sub
    IL_0331:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0336:  stloc.s    V_41
    IL_0338:  ldloc.s    V_41
    IL_033a:  ldloc.s    V_40
    IL_033c:  bge.un.s   IL_0345

    IL_033e:  ldloc.s    V_41
    IL_0340:  stloc.s    V_40
    IL_0342:  ldc.i4.5
    IL_0343:  stloc.s    V_39
    IL_0345:  dup
    IL_0346:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_034b:  ldloc.s    V_29
    IL_034d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0352:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0357:  sub
    IL_0358:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_035d:  stloc.s    V_41
    IL_035f:  ldloc.s    V_41
    IL_0361:  ldloc.s    V_40
    IL_0363:  bge.un.s   IL_036c

    IL_0365:  ldloc.s    V_41
    IL_0367:  stloc.s    V_40
    IL_0369:  ldc.i4.4
    IL_036a:  stloc.s    V_39
    IL_036c:  dup
    IL_036d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0372:  ldloc.s    V_29
    IL_0374:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0379:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_037e:  sub
    IL_037f:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0384:  stloc.s    V_41
    IL_0386:  ldloc.s    V_41
    IL_0388:  ldloc.s    V_40
    IL_038a:  bge.un.s   IL_0393

    IL_038c:  ldloc.s    V_41
    IL_038e:  stloc.s    V_40
    IL_0390:  ldc.i4.2
    IL_0391:  stloc.s    V_39
    IL_0393:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0398:  ldloc.s    V_29
    IL_039a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_039f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03a4:  sub
    IL_03a5:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_03aa:  stloc.s    V_41
    IL_03ac:  ldloc.s    V_41
    IL_03ae:  ldloc.s    V_40
    IL_03b0:  bge.un.s   IL_03b9

    IL_03b2:  ldloc.s    V_41
    IL_03b4:  stloc.s    V_40
    IL_03b6:  ldc.i4.0
    IL_03b7:  stloc.s    V_39
    IL_03b9:  ldloca.s   V_42
    IL_03bb:  initobj    Game.TerrainRaycastResult
    IL_03c1:  ldloca.s   V_42
    IL_03c3:  ldloc.s    V_32
    IL_03c5:  stfld      int32 Game.TerrainRaycastResult::Value
    IL_03ca:  ldloca.s   V_42
    IL_03cc:  ldloca.s   V_43
    IL_03ce:  initobj    Game.CellFace
    IL_03d4:  ldloca.s   V_43
    IL_03d6:  ldloc.s    V_8
    IL_03d8:  stfld      int32 Game.CellFace::X
    IL_03dd:  ldloca.s   V_43
    IL_03df:  ldloc.s    V_9
    IL_03e1:  stfld      int32 Game.CellFace::Y
    IL_03e6:  ldloca.s   V_43
    IL_03e8:  ldloc.s    V_10
    IL_03ea:  stfld      int32 Game.CellFace::Z
    IL_03ef:  ldloca.s   V_43
    IL_03f1:  ldloc.s    V_39
    IL_03f3:  stfld      int32 Game.CellFace::Face
    IL_03f8:  ldloc.s    V_43
    IL_03fa:  stfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_03ff:  ldloca.s   V_42
    IL_0401:  ldloc.s    V_30
    IL_0403:  stfld      int32 Game.TerrainRaycastResult::CollisionBoxIndex
    IL_0408:  ldloca.s   V_42
    IL_040a:  ldloca.s   V_31
    IL_040c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0411:  stfld      float32 Game.TerrainRaycastResult::Distance
    IL_0416:  ldloca.s   V_42
    IL_0418:  ldarg.1
    IL_0419:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_041e:  ldloca.s   V_42
    IL_0420:  ldarg.2
    IL_0421:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastEnd
    IL_0426:  ldloc.s    V_42
    IL_0428:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::.ctor(!0)
    IL_042d:  ret

    IL_042e:  ldloc.s    V_19
    IL_0430:  ldloc.s    V_22
    IL_0432:  bgt.un.s   IL_0453

    IL_0434:  ldloc.s    V_19
    IL_0436:  ldloc.s    V_25
    IL_0438:  bgt.un.s   IL_0453

    IL_043a:  ldloc.s    V_8
    IL_043c:  ldloc.s    V_11
    IL_043e:  beq.s      IL_0491

    IL_0440:  ldloc.s    V_19
    IL_0442:  ldloc.s    V_26
    IL_0444:  add
    IL_0445:  stloc.s    V_19
    IL_0447:  ldloc.s    V_8
    IL_0449:  ldloc.s    V_14
    IL_044b:  add
    IL_044c:  stloc.s    V_8
    IL_044e:  br         IL_0188

    IL_0453:  ldloc.s    V_22
    IL_0455:  ldloc.s    V_19
    IL_0457:  bgt.un.s   IL_0478

    IL_0459:  ldloc.s    V_22
    IL_045b:  ldloc.s    V_25
    IL_045d:  bgt.un.s   IL_0478

    IL_045f:  ldloc.s    V_9
    IL_0461:  ldloc.s    V_12
    IL_0463:  beq.s      IL_0491

    IL_0465:  ldloc.s    V_22
    IL_0467:  ldloc.s    V_27
    IL_0469:  add
    IL_046a:  stloc.s    V_22
    IL_046c:  ldloc.s    V_9
    IL_046e:  ldloc.s    V_15
    IL_0470:  add
    IL_0471:  stloc.s    V_9
    IL_0473:  br         IL_0188

    IL_0478:  ldloc.s    V_10
    IL_047a:  ldloc.s    V_13
    IL_047c:  beq.s      IL_0491

    IL_047e:  ldloc.s    V_25
    IL_0480:  ldloc.s    V_28
    IL_0482:  add
    IL_0483:  stloc.s    V_25
    IL_0485:  ldloc.s    V_10
    IL_0487:  ldloc.s    V_16
    IL_0489:  add
    IL_048a:  stloc.s    V_10
    IL_048c:  br         IL_0188

    IL_0491:  ldloca.s   V_44
    IL_0493:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>
    IL_0499:  ldloc.s    V_44
    IL_049b:  ret
  } // end of method SubsystemTerrain::Raycast

  .method public hidebysig instance void 
          ChangeCell(int32 x,
                     int32 y,
                     int32 z,
                     int32 'value',
                     [opt] bool updateModificationCounter) cil managed
  {
    .param [5] = bool(true)
    // 代码大小       309 (0x135)
    .maxstack  6
    .locals init (int32 V_0,
             class Game.TerrainChunk V_1,
             int32 V_2,
             int32 V_3,
             class Game.SubsystemBlockBehavior[] V_4,
             class Game.SubsystemBlockBehavior[] V_5,
             int32 V_6,
             int32 V_7,
             class Game.SubsystemBlockBehavior[] V_8,
             int32 V_9)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  callvirt   instance bool Game.TerrainData::IsCellValid(int32,
                                                                     int32,
                                                                     int32)
    IL_000e:  brfalse    IL_0134

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0019:  ldarg.1
    IL_001a:  ldarg.2
    IL_001b:  ldarg.3
    IL_001c:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0021:  stloc.0
    IL_0022:  ldarg.s    'value'
    IL_0024:  ldc.i4.0
    IL_0025:  call       int32 Game.TerrainData::ReplaceLight(int32,
                                                              int32)
    IL_002a:  starg.s    'value'
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.0
    IL_002e:  call       int32 Game.TerrainData::ReplaceLight(int32,
                                                              int32)
    IL_0033:  stloc.0
    IL_0034:  ldarg.s    'value'
    IL_0036:  ldloc.0
    IL_0037:  beq        IL_0134

    IL_003c:  ldarg.0
    IL_003d:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0042:  ldarg.1
    IL_0043:  ldarg.2
    IL_0044:  ldarg.3
    IL_0045:  ldarg.s    'value'
    IL_0047:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_004c:  ldarg.0
    IL_004d:  ldarg.1
    IL_004e:  ldarg.3
    IL_004f:  call       instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0054:  stloc.1
    IL_0055:  ldloc.1
    IL_0056:  brfalse.s  IL_0079

    IL_0058:  ldarg.s    updateModificationCounter
    IL_005a:  brfalse.s  IL_006a

    IL_005c:  ldloc.1
    IL_005d:  dup
    IL_005e:  ldfld      int32 Game.TerrainChunk::ModificationCounter
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  stfld      int32 Game.TerrainChunk::ModificationCounter
    IL_006a:  ldarg.0
    IL_006b:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.1
    IL_0072:  ldc.i4.5
    IL_0073:  ldc.i4.0
    IL_0074:  callvirt   instance void Game.TerrainUpdater::DowngradeChunkNeighborhoodState(class Game.TerrainChunk,
                                                                                            int32,
                                                                                            valuetype Game.TerrainChunkState,
                                                                                            bool)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemTerrain::m_modifiedCells
    IL_007f:  ldarg.1
    IL_0080:  ldarg.2
    IL_0081:  ldarg.3
    IL_0082:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0087:  ldc.i4.1
    IL_0088:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_008d:  ldloc.0
    IL_008e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0093:  stloc.2
    IL_0094:  ldarg.s    'value'
    IL_0096:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_009b:  stloc.3
    IL_009c:  ldloc.3
    IL_009d:  ldloc.2
    IL_009e:  beq.s      IL_0103

    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemTerrain::m_subsystemBlockBehaviors
    IL_00a6:  ldloc.2
    IL_00a7:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_00ac:  stloc.s    V_4
    IL_00ae:  ldc.i4.0
    IL_00af:  stloc.s    V_6
    IL_00b1:  br.s       IL_00c9

    IL_00b3:  ldloc.s    V_4
    IL_00b5:  ldloc.s    V_6
    IL_00b7:  ldelem.ref
    IL_00b8:  ldloc.0
    IL_00b9:  ldarg.s    'value'
    IL_00bb:  ldarg.1
    IL_00bc:  ldarg.2
    IL_00bd:  ldarg.3
    IL_00be:  callvirt   instance void Game.SubsystemBlockBehavior::OnBlockRemoved(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
    IL_00c3:  ldloc.s    V_6
    IL_00c5:  ldc.i4.1
    IL_00c6:  add
    IL_00c7:  stloc.s    V_6
    IL_00c9:  ldloc.s    V_6
    IL_00cb:  ldloc.s    V_4
    IL_00cd:  ldlen
    IL_00ce:  conv.i4
    IL_00cf:  blt.s      IL_00b3

    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemTerrain::m_subsystemBlockBehaviors
    IL_00d7:  ldloc.3
    IL_00d8:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_00dd:  stloc.s    V_5
    IL_00df:  ldc.i4.0
    IL_00e0:  stloc.s    V_7
    IL_00e2:  br.s       IL_00fa

    IL_00e4:  ldloc.s    V_5
    IL_00e6:  ldloc.s    V_7
    IL_00e8:  ldelem.ref
    IL_00e9:  ldarg.s    'value'
    IL_00eb:  ldloc.0
    IL_00ec:  ldarg.1
    IL_00ed:  ldarg.2
    IL_00ee:  ldarg.3
    IL_00ef:  callvirt   instance void Game.SubsystemBlockBehavior::OnBlockAdded(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_00f4:  ldloc.s    V_7
    IL_00f6:  ldc.i4.1
    IL_00f7:  add
    IL_00f8:  stloc.s    V_7
    IL_00fa:  ldloc.s    V_7
    IL_00fc:  ldloc.s    V_5
    IL_00fe:  ldlen
    IL_00ff:  conv.i4
    IL_0100:  blt.s      IL_00e4

    IL_0102:  ret

    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemTerrain::m_subsystemBlockBehaviors
    IL_0109:  ldloc.3
    IL_010a:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_010f:  stloc.s    V_8
    IL_0111:  ldc.i4.0
    IL_0112:  stloc.s    V_9
    IL_0114:  br.s       IL_012c

    IL_0116:  ldloc.s    V_8
    IL_0118:  ldloc.s    V_9
    IL_011a:  ldelem.ref
    IL_011b:  ldarg.s    'value'
    IL_011d:  ldloc.0
    IL_011e:  ldarg.1
    IL_011f:  ldarg.2
    IL_0120:  ldarg.3
    IL_0121:  callvirt   instance void Game.SubsystemBlockBehavior::OnBlockModified(int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
    IL_0126:  ldloc.s    V_9
    IL_0128:  ldc.i4.1
    IL_0129:  add
    IL_012a:  stloc.s    V_9
    IL_012c:  ldloc.s    V_9
    IL_012e:  ldloc.s    V_8
    IL_0130:  ldlen
    IL_0131:  conv.i4
    IL_0132:  blt.s      IL_0116

    IL_0134:  ret
  } // end of method SubsystemTerrain::ChangeCell

  .method public hidebysig instance void 
          DestroyCell(int32 toolLevel,
                      int32 x,
                      int32 y,
                      int32 z,
                      int32 newValue,
                      bool noDrop,
                      bool noParticleSystem) cil managed
  {
    // 代码大小       410 (0x19a)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Block V_2,
             bool V_3,
             int32 V_4,
             valuetype Game.BlockDropValue V_5,
             class Game.SubsystemBlockBehavior[] V_6,
             int32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_9,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_10)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0006:  ldarg.2
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    z
    IL_000a:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0016:  stloc.1
    IL_0017:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001c:  ldloc.1
    IL_001d:  ldelem.ref
    IL_001e:  stloc.2
    IL_001f:  ldloc.1
    IL_0020:  brfalse    IL_018c

    IL_0025:  ldc.i4.1
    IL_0026:  stloc.3
    IL_0027:  ldarg.s    noDrop
    IL_0029:  brtrue     IL_012c

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> Game.SubsystemTerrain::m_dropValues
    IL_0034:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Clear()
    IL_0039:  ldloc.2
    IL_003a:  ldarg.0
    IL_003b:  ldloc.0
    IL_003c:  ldarg.s    newValue
    IL_003e:  ldarg.1
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> Game.SubsystemTerrain::m_dropValues
    IL_0045:  ldloca.s   V_3
    IL_0047:  callvirt   instance void Game.Block::GetDropValues(class Game.SubsystemTerrain,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>,
                                                                 bool&)
    IL_004c:  ldc.i4.0
    IL_004d:  stloc.s    V_4
    IL_004f:  br         IL_011a

    IL_0054:  ldarg.0
    IL_0055:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> Game.SubsystemTerrain::m_dropValues
    IL_005a:  ldloc.s    V_4
    IL_005c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::get_Item(int32)
    IL_0061:  stloc.s    V_5
    IL_0063:  ldloc.s    V_5
    IL_0065:  ldfld      int32 Game.BlockDropValue::Count
    IL_006a:  ldc.i4.0
    IL_006b:  ble        IL_0114

    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemTerrain::m_subsystemBlockBehaviors
    IL_0076:  ldloc.s    V_5
    IL_0078:  ldfld      int32 Game.BlockDropValue::Value
    IL_007d:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0082:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0087:  stloc.s    V_6
    IL_0089:  ldc.i4.0
    IL_008a:  stloc.s    V_7
    IL_008c:  br.s       IL_00a7

    IL_008e:  ldloc.s    V_6
    IL_0090:  ldloc.s    V_7
    IL_0092:  ldelem.ref
    IL_0093:  ldarg.2
    IL_0094:  ldarg.3
    IL_0095:  ldarg.s    z
    IL_0097:  ldloc.0
    IL_0098:  ldloca.s   V_5
    IL_009a:  ldarga.s   newValue
    IL_009c:  callvirt   instance void Game.SubsystemBlockBehavior::OnItemHarvested(int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    valuetype Game.BlockDropValue&,
                                                                                    int32&)
    IL_00a1:  ldloc.s    V_7
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  stloc.s    V_7
    IL_00a7:  ldloc.s    V_7
    IL_00a9:  ldloc.s    V_6
    IL_00ab:  ldlen
    IL_00ac:  conv.i4
    IL_00ad:  blt.s      IL_008e

    IL_00af:  ldloc.s    V_5
    IL_00b1:  ldfld      int32 Game.BlockDropValue::Count
    IL_00b6:  ldc.i4.0
    IL_00b7:  ble.s      IL_0114

    IL_00b9:  ldloc.s    V_5
    IL_00bb:  ldfld      int32 Game.BlockDropValue::Value
    IL_00c0:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00c5:  brfalse.s  IL_0114

    IL_00c7:  ldarg.2
    IL_00c8:  conv.r4
    IL_00c9:  ldarg.3
    IL_00ca:  conv.r4
    IL_00cb:  ldarg.s    z
    IL_00cd:  conv.r4
    IL_00ce:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d3:  ldc.r4     0.5
    IL_00d8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_00dd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e2:  stloc.s    V_8
    IL_00e4:  ldarg.0
    IL_00e5:  ldfld      class Game.SubsystemPickables Game.SubsystemTerrain::m_subsystemPickables
    IL_00ea:  ldloc.s    V_5
    IL_00ec:  ldfld      int32 Game.BlockDropValue::Value
    IL_00f1:  ldloc.s    V_5
    IL_00f3:  ldfld      int32 Game.BlockDropValue::Count
    IL_00f8:  ldloc.s    V_8
    IL_00fa:  ldloca.s   V_9
    IL_00fc:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0102:  ldloc.s    V_9
    IL_0104:  ldloca.s   V_10
    IL_0106:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_010c:  ldloc.s    V_10
    IL_010e:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0113:  pop
    IL_0114:  ldloc.s    V_4
    IL_0116:  ldc.i4.1
    IL_0117:  add
    IL_0118:  stloc.s    V_4
    IL_011a:  ldloc.s    V_4
    IL_011c:  ldarg.0
    IL_011d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> Game.SubsystemTerrain::m_dropValues
    IL_0122:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::get_Count()
    IL_0127:  blt        IL_0054

    IL_012c:  ldloc.3
    IL_012d:  brfalse.s  IL_018c

    IL_012f:  ldarg.s    noParticleSystem
    IL_0131:  brtrue.s   IL_018c

    IL_0133:  ldarg.0
    IL_0134:  ldfld      class Game.SubsystemDrawing Game.SubsystemTerrain::m_subsystemDrawing
    IL_0139:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_013e:  ldarg.2
    IL_013f:  conv.r4
    IL_0140:  ldarg.3
    IL_0141:  conv.r4
    IL_0142:  ldarg.s    z
    IL_0144:  conv.r4
    IL_0145:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014a:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_014f:  ldc.r4     256.
    IL_0154:  bge.un.s   IL_018c

    IL_0156:  ldarg.0
    IL_0157:  ldfld      class Game.SubsystemParticles Game.SubsystemTerrain::m_subsystemParticles
    IL_015c:  ldloc.2
    IL_015d:  ldarg.0
    IL_015e:  ldarg.2
    IL_015f:  conv.r4
    IL_0160:  ldc.r4     0.5
    IL_0165:  add
    IL_0166:  ldarg.3
    IL_0167:  conv.r4
    IL_0168:  ldc.r4     0.5
    IL_016d:  add
    IL_016e:  ldarg.s    z
    IL_0170:  conv.r4
    IL_0171:  ldc.r4     0.5
    IL_0176:  add
    IL_0177:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_017c:  ldloc.0
    IL_017d:  ldc.r4     1.
    IL_0182:  callvirt   instance class Game.BlockDebrisParticleSystem Game.Block::CreateDebrisParticleSystem(class Game.SubsystemTerrain,
                                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                                              int32,
                                                                                                              float32)
    IL_0187:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_018c:  ldarg.0
    IL_018d:  ldarg.2
    IL_018e:  ldarg.3
    IL_018f:  ldarg.s    z
    IL_0191:  ldarg.s    newValue
    IL_0193:  ldc.i4.1
    IL_0194:  call       instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0199:  ret
  } // end of method SubsystemTerrain::DestroyCell

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.SubsystemTerrain::m_drawOrders
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  3
    IL_0000:  ldsfld     bool Game.SubsystemTerrain::TerrainRenderingEnabled
    IL_0005:  brtrue.s   IL_0008

    IL_0007:  ret

    IL_0008:  ldarg.2
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.SubsystemTerrain::m_drawOrders
    IL_000f:  ldc.i4.0
    IL_0010:  ldelem.i4
    IL_0011:  bne.un.s   IL_0050

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance void Game.TerrainRenderer::DetermineChunksVisibility(class Game.SubsystemDrawing)
    IL_001f:  ldarg.0
    IL_0020:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance void Game.TerrainUpdater::PrepareForDrawing(class Game.SubsystemDrawing)
    IL_002b:  ldarg.0
    IL_002c:  call       instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_0031:  ldarg.1
    IL_0032:  callvirt   instance void Game.TerrainRenderer::PrepareForDrawing(class Game.SubsystemDrawing)
    IL_0037:  ldarg.0
    IL_0038:  call       instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_003d:  ldarg.1
    IL_003e:  callvirt   instance void Game.TerrainRenderer::DrawOpaque(class Game.SubsystemDrawing)
    IL_0043:  ldarg.0
    IL_0044:  call       instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_0049:  ldarg.1
    IL_004a:  callvirt   instance void Game.TerrainRenderer::DrawAlphaTested(class Game.SubsystemDrawing)
    IL_004f:  ret

    IL_0050:  ldarg.2
    IL_0051:  ldarg.0
    IL_0052:  ldfld      int32[] Game.SubsystemTerrain::m_drawOrders
    IL_0057:  ldc.i4.1
    IL_0058:  ldelem.i4
    IL_0059:  bne.un.s   IL_0067

    IL_005b:  ldarg.0
    IL_005c:  call       instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_0061:  ldarg.1
    IL_0062:  callvirt   instance void Game.TerrainRenderer::DrawTransparent(class Game.SubsystemDrawing)
    IL_0067:  ret
  } // end of method SubsystemTerrain::Draw

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       3 (0x3)
    .maxstack  8
    IL_0000:  ldc.i4.s   100
    IL_0002:  ret
  } // end of method SubsystemTerrain::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  call       int32 Game.SubsystemTerrain::CalculateRequiredChunksCount()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  call       instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_000c:  ldloc.0
    IL_000d:  beq.s      IL_003a

    IL_000f:  ldarg.0
    IL_0010:  ldfld      int32 Game.SubsystemTerrain::m_lastExpectedChunksCount
    IL_0015:  ldloc.0
    IL_0016:  beq.s      IL_003a

    IL_0018:  ldarg.0
    IL_0019:  ldloc.0
    IL_001a:  stfld      int32 Game.SubsystemTerrain::m_lastExpectedChunksCount
    IL_001f:  ldstr      "Reload Needed"
    IL_0024:  ldstr      "You must close and reload the world for the visibi"
    + "lity range settings to take effect."
    IL_0029:  ldstr      "OK"
    IL_002e:  ldnull
    IL_002f:  ldnull
    IL_0030:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0035:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_003a:  ldarg.0
    IL_003b:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0040:  callvirt   instance void Game.TerrainUpdater::Update()
    IL_0045:  ldarg.0
    IL_0046:  call       instance void Game.SubsystemTerrain::ProcessModifiedCells()
    IL_004b:  ret
  } // end of method SubsystemTerrain::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       382 (0x17e)
    .maxstack  6
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_000d:  stfld      class Game.SubsystemDrawing Game.SubsystemTerrain::m_subsystemDrawing
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_001f:  stfld      class Game.SubsystemGameInfo Game.SubsystemTerrain::m_subsystemGameInfo
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0031:  stfld      class Game.SubsystemParticles Game.SubsystemTerrain::m_subsystemParticles
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0043:  stfld      class Game.SubsystemPickables Game.SubsystemTerrain::m_subsystemPickables
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_0055:  stfld      class Game.SubsystemBlockBehaviors Game.SubsystemTerrain::m_subsystemBlockBehaviors
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAnimatedTextures>(bool)
    IL_0067:  call       instance void Game.SubsystemTerrain::set_SubsystemAnimatedTextures(class Game.SubsystemAnimatedTextures)
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
    IL_0079:  call       instance void Game.SubsystemTerrain::set_SubsystemFurnitureBlockBehavior(class Game.SubsystemFurnitureBlockBehavior)
    IL_007e:  ldarg.0
    IL_007f:  call       int32 Game.SubsystemTerrain::CalculateRequiredChunksCount()
    IL_0084:  call       instance void Game.SubsystemTerrain::set_ChunksCount(int32)
    IL_0089:  ldarg.0
    IL_008a:  ldarg.0
    IL_008b:  call       instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_0090:  ldc.i4.s   16
    IL_0092:  mul
    IL_0093:  ldc.i4     0x80
    IL_0098:  ldarg.0
    IL_0099:  call       instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_009e:  ldc.i4.s   16
    IL_00a0:  mul
    IL_00a1:  newobj     instance void Game.TerrainData::.ctor(int32,
                                                               int32,
                                                               int32)
    IL_00a6:  call       instance void Game.SubsystemTerrain::set_TerrainData(class Game.TerrainData)
    IL_00ab:  ldarg.0
    IL_00ac:  ldarg.0
    IL_00ad:  newobj     instance void Game.TerrainRenderer::.ctor(class Game.SubsystemTerrain)
    IL_00b2:  call       instance void Game.SubsystemTerrain::set_TerrainRenderer(class Game.TerrainRenderer)
    IL_00b7:  ldarg.0
    IL_00b8:  ldarg.0
    IL_00b9:  newobj     instance void Game.TerrainUpdater::.ctor(class Game.SubsystemTerrain)
    IL_00be:  call       instance void Game.SubsystemTerrain::set_TerrainUpdater(class Game.TerrainUpdater)
    IL_00c3:  ldarg.0
    IL_00c4:  ldarg.0
    IL_00c5:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTerrain::m_subsystemGameInfo
    IL_00d0:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_00d5:  ldfld      string Game.WorldInfo::DirectoryName
    IL_00da:  newobj     instance void Game.TerrainSerializer129::.ctor(class Game.TerrainData,
                                                                        string)
    IL_00df:  call       instance void Game.SubsystemTerrain::set_TerrainSerializer(class Game.TerrainSerializer129)
    IL_00e4:  ldarg.0
    IL_00e5:  ldarg.0
    IL_00e6:  call       instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00eb:  ldarg.0
    IL_00ec:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00f1:  ldc.i4.1
    IL_00f2:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemElectricity>(bool)
    IL_00f7:  ldarg.0
    IL_00f8:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00fd:  ldc.i4.1
    IL_00fe:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
    IL_0103:  ldarg.0
    IL_0104:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0109:  ldc.i4.1
    IL_010a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMetersBlockBehavior>(bool)
    IL_010f:  newobj     instance void Game.BlockGeometryGenerator::.ctor(class Game.TerrainData,
                                                                          class Game.SubsystemElectricity,
                                                                          class Game.SubsystemFurnitureBlockBehavior,
                                                                          class Game.SubsystemMetersBlockBehavior)
    IL_0114:  call       instance void Game.SubsystemTerrain::set_BlockGeometryGenerator(class Game.BlockGeometryGenerator)
    IL_0119:  ldarg.0
    IL_011a:  ldarg.0
    IL_011b:  call       instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_0120:  ldarg.0
    IL_0121:  call       instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_0126:  mul
    IL_0127:  newarr     Game.TerrainChunk
    IL_012c:  call       instance void Game.SubsystemTerrain::set_Chunks(class Game.TerrainChunk[])
    IL_0131:  ldc.i4.0
    IL_0132:  stloc.0
    IL_0133:  br.s       IL_0146

    IL_0135:  ldarg.0
    IL_0136:  call       instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_013b:  ldloc.0
    IL_013c:  newobj     instance void Game.TerrainChunk::.ctor()
    IL_0141:  stelem.ref
    IL_0142:  ldloc.0
    IL_0143:  ldc.i4.1
    IL_0144:  add
    IL_0145:  stloc.0
    IL_0146:  ldloc.0
    IL_0147:  ldarg.0
    IL_0148:  call       instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_014d:  ldlen
    IL_014e:  conv.i4
    IL_014f:  blt.s      IL_0135

    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTerrain::m_subsystemGameInfo
    IL_0157:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_015c:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldInfo::TerrainGenerationMode
    IL_0161:  ldc.i4.1
    IL_0162:  bne.un.s   IL_0171

    IL_0164:  ldarg.0
    IL_0165:  ldarg.0
    IL_0166:  newobj     instance void Game.TerrainContentsGeneratorFlat::.ctor(class Game.SubsystemTerrain)
    IL_016b:  call       instance void Game.SubsystemTerrain::set_TerrainContentsGenerator(class Game.ITerrainContentsGenerator)
    IL_0170:  ret

    IL_0171:  ldarg.0
    IL_0172:  ldarg.0
    IL_0173:  newobj     instance void Game.TerrainContentsGenerator::.ctor(class Game.SubsystemTerrain)
    IL_0178:  call       instance void Game.SubsystemTerrain::set_TerrainContentsGenerator(class Game.ITerrainContentsGenerator)
    IL_017d:  ret
  } // end of method SubsystemTerrain::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       75 (0x4b)
    .maxstack  2
    .locals init (class Game.TerrainChunk[] V_0,
             int32 V_1,
             class Game.TerrainChunk V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0006:  callvirt   instance class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::get_UpdateEvent()
    IL_000b:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne()
    IL_0010:  pop
    .try
    {
      IL_0011:  ldarg.0
      IL_0012:  call       instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
      IL_0017:  stloc.0
      IL_0018:  ldc.i4.0
      IL_0019:  stloc.1
      IL_001a:  br.s       IL_0030

      IL_001c:  ldloc.0
      IL_001d:  ldloc.1
      IL_001e:  ldelem.ref
      IL_001f:  stloc.2
      IL_0020:  ldarg.0
      IL_0021:  call       instance class Game.TerrainSerializer129 Game.SubsystemTerrain::get_TerrainSerializer()
      IL_0026:  ldloc.2
      IL_0027:  callvirt   instance void Game.TerrainSerializer129::SaveChunk(class Game.TerrainChunk)
      IL_002c:  ldloc.1
      IL_002d:  ldc.i4.1
      IL_002e:  add
      IL_002f:  stloc.1
      IL_0030:  ldloc.1
      IL_0031:  ldloc.0
      IL_0032:  ldlen
      IL_0033:  conv.i4
      IL_0034:  blt.s      IL_001c

      IL_0036:  leave.s    IL_004a

    }  // end .try
    finally
    {
      IL_0038:  ldarg.0
      IL_0039:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
      IL_003e:  callvirt   instance class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::get_UpdateEvent()
      IL_0043:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
      IL_0048:  pop
      IL_0049:  endfinally
    }  // end handler
    IL_004a:  ret
  } // end of method SubsystemTerrain::Save

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_0006:  callvirt   instance void Game.TerrainRenderer::Dispose()
    IL_000b:  ldarg.0
    IL_000c:  call       instance class Game.TerrainSerializer129 Game.SubsystemTerrain::get_TerrainSerializer()
    IL_0011:  callvirt   instance void Game.TerrainSerializer129::Dispose()
    IL_0016:  ldarg.0
    IL_0017:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_001c:  callvirt   instance void Game.TerrainUpdater::Dispose()
    IL_0021:  ret
  } // end of method SubsystemTerrain::Dispose

  .method private hidebysig static int32 
          CalculateRequiredChunksCount() cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.8
    IL_0001:  stloc.0
    IL_0002:  ldloc.0
    IL_0003:  ldc.i4.2
    IL_0004:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0009:  mul
    IL_000a:  ldc.i4.s   16
    IL_000c:  div
    IL_000d:  bge.s      IL_0013

    IL_000f:  ldloc.0
    IL_0010:  ldc.i4.2
    IL_0011:  mul
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.2
    IL_0015:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_001a:  mul
    IL_001b:  ldc.i4.s   16
    IL_001d:  div
    IL_001e:  bge.s      IL_0024

    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.2
    IL_0022:  mul
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.2
    IL_0026:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_002b:  mul
    IL_002c:  ldc.i4.s   16
    IL_002e:  div
    IL_002f:  bge.s      IL_0035

    IL_0031:  ldloc.0
    IL_0032:  ldc.i4.2
    IL_0033:  mul
    IL_0034:  stloc.0
    IL_0035:  ldloc.0
    IL_0036:  ldc.i4.2
    IL_0037:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_003c:  mul
    IL_003d:  ldc.i4.s   16
    IL_003f:  div
    IL_0040:  bge.s      IL_0046

    IL_0042:  ldloc.0
    IL_0043:  ldc.i4.2
    IL_0044:  mul
    IL_0045:  stloc.0
    IL_0046:  ldloc.0
    IL_0047:  ret
  } // end of method SubsystemTerrain::CalculateRequiredChunksCount

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemTerrain::m_modifiedCells
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemTerrain::m_modifiedList
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> Game.SubsystemTerrain::m_dropValues
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.2
    IL_0023:  newarr     [System.Runtime]System.Int32
    IL_0028:  dup
    IL_0029:  ldc.i4.1
    IL_002a:  ldc.i4.s   100
    IL_002c:  stelem.i4
    IL_002d:  stfld      int32[] Game.SubsystemTerrain::m_drawOrders
    IL_0032:  ldarg.0
    IL_0033:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0038:  ret
  } // end of method SubsystemTerrain::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       123 (0x7b)
    .maxstack  6
    IL_0000:  ldc.i4.1
    IL_0001:  stsfld     bool Game.SubsystemTerrain::TerrainRenderingEnabled
    IL_0006:  ldc.i4.7
    IL_0007:  newarr     [Engine]Engine.Point3
    IL_000c:  dup
    IL_000d:  ldc.i4.0
    IL_000e:  ldc.i4.0
    IL_000f:  ldc.i4.0
    IL_0010:  ldc.i4.0
    IL_0011:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0016:  stelem     [Engine]Engine.Point3
    IL_001b:  dup
    IL_001c:  ldc.i4.1
    IL_001d:  ldc.i4.m1
    IL_001e:  ldc.i4.0
    IL_001f:  ldc.i4.0
    IL_0020:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0025:  stelem     [Engine]Engine.Point3
    IL_002a:  dup
    IL_002b:  ldc.i4.2
    IL_002c:  ldc.i4.1
    IL_002d:  ldc.i4.0
    IL_002e:  ldc.i4.0
    IL_002f:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0034:  stelem     [Engine]Engine.Point3
    IL_0039:  dup
    IL_003a:  ldc.i4.3
    IL_003b:  ldc.i4.0
    IL_003c:  ldc.i4.m1
    IL_003d:  ldc.i4.0
    IL_003e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0043:  stelem     [Engine]Engine.Point3
    IL_0048:  dup
    IL_0049:  ldc.i4.4
    IL_004a:  ldc.i4.0
    IL_004b:  ldc.i4.1
    IL_004c:  ldc.i4.0
    IL_004d:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0052:  stelem     [Engine]Engine.Point3
    IL_0057:  dup
    IL_0058:  ldc.i4.5
    IL_0059:  ldc.i4.0
    IL_005a:  ldc.i4.0
    IL_005b:  ldc.i4.m1
    IL_005c:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0061:  stelem     [Engine]Engine.Point3
    IL_0066:  dup
    IL_0067:  ldc.i4.6
    IL_0068:  ldc.i4.0
    IL_0069:  ldc.i4.0
    IL_006a:  ldc.i4.1
    IL_006b:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0070:  stelem     [Engine]Engine.Point3
    IL_0075:  stsfld     valuetype [Engine]Engine.Point3[] Game.SubsystemTerrain::m_neighborOffsets
    IL_007a:  ret
  } // end of method SubsystemTerrain::.cctor

  .property instance class Game.SubsystemAnimatedTextures
          SubsystemAnimatedTextures()
  {
    .get instance class Game.SubsystemAnimatedTextures Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    .set instance void Game.SubsystemTerrain::set_SubsystemAnimatedTextures(class Game.SubsystemAnimatedTextures)
  } // end of property SubsystemTerrain::SubsystemAnimatedTextures
  .property instance class Game.SubsystemFurnitureBlockBehavior
          SubsystemFurnitureBlockBehavior()
  {
    .get instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    .set instance void Game.SubsystemTerrain::set_SubsystemFurnitureBlockBehavior(class Game.SubsystemFurnitureBlockBehavior)
  } // end of property SubsystemTerrain::SubsystemFurnitureBlockBehavior
  .property instance int32 ChunksCount()
  {
    .get instance int32 Game.SubsystemTerrain::get_ChunksCount()
    .set instance void Game.SubsystemTerrain::set_ChunksCount(int32)
  } // end of property SubsystemTerrain::ChunksCount
  .property instance class Game.TerrainChunk[]
          Chunks()
  {
    .get instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    .set instance void Game.SubsystemTerrain::set_Chunks(class Game.TerrainChunk[])
  } // end of property SubsystemTerrain::Chunks
  .property instance class Game.TerrainData
          TerrainData()
  {
    .get instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    .set instance void Game.SubsystemTerrain::set_TerrainData(class Game.TerrainData)
  } // end of property SubsystemTerrain::TerrainData
  .property instance class Game.TerrainUpdater
          TerrainUpdater()
  {
    .get instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    .set instance void Game.SubsystemTerrain::set_TerrainUpdater(class Game.TerrainUpdater)
  } // end of property SubsystemTerrain::TerrainUpdater
  .property instance class Game.TerrainRenderer
          TerrainRenderer()
  {
    .get instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    .set instance void Game.SubsystemTerrain::set_TerrainRenderer(class Game.TerrainRenderer)
  } // end of property SubsystemTerrain::TerrainRenderer
  .property instance class Game.TerrainSerializer129
          TerrainSerializer()
  {
    .get instance class Game.TerrainSerializer129 Game.SubsystemTerrain::get_TerrainSerializer()
    .set instance void Game.SubsystemTerrain::set_TerrainSerializer(class Game.TerrainSerializer129)
  } // end of property SubsystemTerrain::TerrainSerializer
  .property instance class Game.ITerrainContentsGenerator
          TerrainContentsGenerator()
  {
    .get instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    .set instance void Game.SubsystemTerrain::set_TerrainContentsGenerator(class Game.ITerrainContentsGenerator)
  } // end of property SubsystemTerrain::TerrainContentsGenerator
  .property instance class Game.BlockGeometryGenerator
          BlockGeometryGenerator()
  {
    .get instance class Game.BlockGeometryGenerator Game.SubsystemTerrain::get_BlockGeometryGenerator()
    .set instance void Game.SubsystemTerrain::set_BlockGeometryGenerator(class Game.BlockGeometryGenerator)
  } // end of property SubsystemTerrain::BlockGeometryGenerator
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemTerrain::get_DrawOrders()
  } // end of property SubsystemTerrain::DrawOrders
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemTerrain::get_UpdateOrder()
  } // end of property SubsystemTerrain::UpdateOrder
} // end of class Game.SubsystemTerrain