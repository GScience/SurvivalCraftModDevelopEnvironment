.class public auto ansi beforefieldinit Game.SubsystemTerrain
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable,
                  Game.IUpdateable
{
  .field public static bool TerrainRenderingEnabled
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> m_modifiedCells
  .field private class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> m_modifiedList
  .field private static valuetype [Engine]Engine.Point3[] m_neighborOffsets
  .field private class Game.SubsystemViews m_subsystemViews
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.SubsystemAnimatedTextures '<SubsystemAnimatedTextures>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemFurnitureBlockBehavior '<SubsystemFurnitureBlockBehavior>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemPalette '<SubsystemPalette>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.Terrain '<Terrain>k__BackingField'
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

  .method public hidebysig specialname instance class Game.SubsystemPalette 
          get_SubsystemPalette() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemPalette Game.SubsystemTerrain::'<SubsystemPalette>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_SubsystemPalette

  .method private hidebysig specialname instance void 
          set_SubsystemPalette(class Game.SubsystemPalette 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemPalette Game.SubsystemTerrain::'<SubsystemPalette>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_SubsystemPalette

  .method public hidebysig specialname instance class Game.Terrain 
          get_Terrain() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Terrain Game.SubsystemTerrain::'<Terrain>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTerrain::get_Terrain

  .method private hidebysig specialname instance void 
          set_Terrain(class Game.Terrain 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.Terrain Game.SubsystemTerrain::'<Terrain>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTerrain::set_Terrain

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
    IL_0086:  call       instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
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
    IL_00b5:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
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
    // 代码大小       1213 (0x4bd)
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
    IL_007b:  call       int32 Game.Terrain::ToCell(float32)
    IL_0080:  stloc.s    V_8
    IL_0082:  ldloc.3
    IL_0083:  call       int32 Game.Terrain::ToCell(float32)
    IL_0088:  stloc.s    V_9
    IL_008a:  ldloc.s    V_4
    IL_008c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0091:  stloc.s    V_10
    IL_0093:  ldloc.s    V_5
    IL_0095:  call       int32 Game.Terrain::ToCell(float32)
    IL_009a:  stloc.s    V_11
    IL_009c:  ldloc.s    V_6
    IL_009e:  call       int32 Game.Terrain::ToCell(float32)
    IL_00a3:  stloc.s    V_12
    IL_00a5:  ldloc.s    V_7
    IL_00a7:  call       int32 Game.Terrain::ToCell(float32)
    IL_00ac:  stloc.s    V_13
    IL_00ae:  ldloc.2
    IL_00af:  ldloc.s    V_5
    IL_00b1:  blt.s      IL_00be

    IL_00b3:  ldloc.2
    IL_00b4:  ldloc.s    V_5
    IL_00b6:  bgt.s      IL_00bb

    IL_00b8:  ldc.i4.0
    IL_00b9:  br.s       IL_00bf

    IL_00bb:  ldc.i4.m1
    IL_00bc:  br.s       IL_00bf

    IL_00be:  ldc.i4.1
    IL_00bf:  stloc.s    V_14
    IL_00c1:  ldloc.3
    IL_00c2:  ldloc.s    V_6
    IL_00c4:  blt.s      IL_00d1

    IL_00c6:  ldloc.3
    IL_00c7:  ldloc.s    V_6
    IL_00c9:  bgt.s      IL_00ce

    IL_00cb:  ldc.i4.0
    IL_00cc:  br.s       IL_00d2

    IL_00ce:  ldc.i4.m1
    IL_00cf:  br.s       IL_00d2

    IL_00d1:  ldc.i4.1
    IL_00d2:  stloc.s    V_15
    IL_00d4:  ldloc.s    V_4
    IL_00d6:  ldloc.s    V_7
    IL_00d8:  blt.s      IL_00e6

    IL_00da:  ldloc.s    V_4
    IL_00dc:  ldloc.s    V_7
    IL_00de:  bgt.s      IL_00e3

    IL_00e0:  ldc.i4.0
    IL_00e1:  br.s       IL_00e7

    IL_00e3:  ldc.i4.m1
    IL_00e4:  br.s       IL_00e7

    IL_00e6:  ldc.i4.1
    IL_00e7:  stloc.s    V_16
    IL_00e9:  ldloc.2
    IL_00ea:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00ef:  stloc.s    V_17
    IL_00f1:  ldloc.s    V_17
    IL_00f3:  ldc.r4     1.
    IL_00f8:  add
    IL_00f9:  stloc.s    V_18
    IL_00fb:  ldloc.2
    IL_00fc:  ldloc.s    V_5
    IL_00fe:  bgt.s      IL_0106

    IL_0100:  ldloc.s    V_18
    IL_0102:  ldloc.2
    IL_0103:  sub
    IL_0104:  br.s       IL_010a

    IL_0106:  ldloc.2
    IL_0107:  ldloc.s    V_17
    IL_0109:  sub
    IL_010a:  ldloc.s    V_5
    IL_010c:  ldloc.2
    IL_010d:  sub
    IL_010e:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0113:  div
    IL_0114:  stloc.s    V_19
    IL_0116:  ldloc.3
    IL_0117:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_011c:  stloc.s    V_20
    IL_011e:  ldloc.s    V_20
    IL_0120:  ldc.r4     1.
    IL_0125:  add
    IL_0126:  stloc.s    V_21
    IL_0128:  ldloc.3
    IL_0129:  ldloc.s    V_6
    IL_012b:  bgt.s      IL_0133

    IL_012d:  ldloc.s    V_21
    IL_012f:  ldloc.3
    IL_0130:  sub
    IL_0131:  br.s       IL_0137

    IL_0133:  ldloc.3
    IL_0134:  ldloc.s    V_20
    IL_0136:  sub
    IL_0137:  ldloc.s    V_6
    IL_0139:  ldloc.3
    IL_013a:  sub
    IL_013b:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0140:  div
    IL_0141:  stloc.s    V_22
    IL_0143:  ldloc.s    V_4
    IL_0145:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_014a:  stloc.s    V_23
    IL_014c:  ldloc.s    V_23
    IL_014e:  ldc.r4     1.
    IL_0153:  add
    IL_0154:  stloc.s    V_24
    IL_0156:  ldloc.s    V_4
    IL_0158:  ldloc.s    V_7
    IL_015a:  bgt.s      IL_0163

    IL_015c:  ldloc.s    V_24
    IL_015e:  ldloc.s    V_4
    IL_0160:  sub
    IL_0161:  br.s       IL_0168

    IL_0163:  ldloc.s    V_4
    IL_0165:  ldloc.s    V_23
    IL_0167:  sub
    IL_0168:  ldloc.s    V_7
    IL_016a:  ldloc.s    V_4
    IL_016c:  sub
    IL_016d:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0172:  div
    IL_0173:  stloc.s    V_25
    IL_0175:  ldc.r4     1.
    IL_017a:  ldloc.s    V_5
    IL_017c:  ldloc.2
    IL_017d:  sub
    IL_017e:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0183:  div
    IL_0184:  stloc.s    V_26
    IL_0186:  ldc.r4     1.
    IL_018b:  ldloc.s    V_6
    IL_018d:  ldloc.3
    IL_018e:  sub
    IL_018f:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0194:  div
    IL_0195:  stloc.s    V_27
    IL_0197:  ldc.r4     1.
    IL_019c:  ldloc.s    V_7
    IL_019e:  ldloc.s    V_4
    IL_01a0:  sub
    IL_01a1:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_01a6:  div
    IL_01a7:  stloc.s    V_28
    IL_01a9:  ldloca.s   V_29
    IL_01ab:  initobj    [Engine]Engine.BoundingBox
    IL_01b1:  ldc.i4.0
    IL_01b2:  stloc.s    V_30
    IL_01b4:  ldloca.s   V_31
    IL_01b6:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_01bc:  ldarg.0
    IL_01bd:  call       instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01c2:  ldloc.s    V_8
    IL_01c4:  ldloc.s    V_9
    IL_01c6:  ldloc.s    V_10
    IL_01c8:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_01cd:  stloc.s    V_32
    IL_01cf:  ldloc.s    V_32
    IL_01d1:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01d6:  stloc.s    V_33
    IL_01d8:  ldloc.s    V_33
    IL_01da:  brtrue.s   IL_01e3

    IL_01dc:  ldarg.s    skipAirBlocks
    IL_01de:  brtrue     IL_028a

    IL_01e3:  ldloca.s   V_34
    IL_01e5:  ldloc.1
    IL_01e6:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Ray::Position
    IL_01eb:  ldloc.s    V_8
    IL_01ed:  conv.r4
    IL_01ee:  ldloc.s    V_9
    IL_01f0:  conv.r4
    IL_01f1:  ldloc.s    V_10
    IL_01f3:  conv.r4
    IL_01f4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01f9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01fe:  ldloc.1
    IL_01ff:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Ray::Direction
    IL_0204:  call       instance void [Engine]Engine.Ray::.ctor(valuetype [Engine]Engine.Vector3,
                                                                 valuetype [Engine]Engine.Vector3)
    IL_0209:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_020e:  ldloc.s    V_33
    IL_0210:  ldelem.ref
    IL_0211:  stloc.s    V_35
    IL_0213:  ldarg.3
    IL_0214:  brfalse.s  IL_0224

    IL_0216:  ldloc.s    V_35
    IL_0218:  ldarg.0
    IL_0219:  ldloc.s    V_32
    IL_021b:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomInteractionBoxes(class Game.SubsystemTerrain,
                                                                                                               int32)
    IL_0220:  stloc.s    V_36
    IL_0222:  br.s       IL_0230

    IL_0224:  ldloc.s    V_35
    IL_0226:  ldarg.0
    IL_0227:  ldloc.s    V_32
    IL_0229:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_022e:  stloc.s    V_36
    IL_0230:  ldc.i4.0
    IL_0231:  stloc.s    V_37
    IL_0233:  br.s       IL_0277

    IL_0235:  ldloca.s   V_34
    IL_0237:  ldloc.s    V_36
    IL_0239:  ldloc.s    V_37
    IL_023b:  ldelem     [Engine]Engine.BoundingBox
    IL_0240:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> [Engine]Engine.Ray::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0245:  stloc.s    V_38
    IL_0247:  ldloca.s   V_38
    IL_0249:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_024e:  brfalse.s  IL_0271

    IL_0250:  ldloca.s   V_31
    IL_0252:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0257:  brfalse.s  IL_0269

    IL_0259:  ldloca.s   V_38
    IL_025b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0260:  ldloca.s   V_31
    IL_0262:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0267:  bge.un.s   IL_0271

    IL_0269:  ldloc.s    V_37
    IL_026b:  stloc.s    V_30
    IL_026d:  ldloc.s    V_38
    IL_026f:  stloc.s    V_31
    IL_0271:  ldloc.s    V_37
    IL_0273:  ldc.i4.1
    IL_0274:  add
    IL_0275:  stloc.s    V_37
    IL_0277:  ldloc.s    V_37
    IL_0279:  ldloc.s    V_36
    IL_027b:  ldlen
    IL_027c:  conv.i4
    IL_027d:  blt.s      IL_0235

    IL_027f:  ldloc.s    V_36
    IL_0281:  ldloc.s    V_30
    IL_0283:  ldelem     [Engine]Engine.BoundingBox
    IL_0288:  stloc.s    V_29
    IL_028a:  ldloca.s   V_31
    IL_028c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0291:  brfalse    IL_044f

    IL_0296:  ldloca.s   V_31
    IL_0298:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_029d:  ldloc.0
    IL_029e:  bgt.un     IL_044f

    IL_02a3:  ldarg.s    action
    IL_02a5:  brfalse.s  IL_02bc

    IL_02a7:  ldarg.s    action
    IL_02a9:  ldloc.s    V_32
    IL_02ab:  ldloca.s   V_31
    IL_02ad:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_02b2:  callvirt   instance !2 class [System.Runtime]System.Func`3<int32,float32,bool>::Invoke(!0,
                                                                                                     !1)
    IL_02b7:  brfalse    IL_044f

    IL_02bc:  ldc.i4.0
    IL_02bd:  stloc.s    V_39
    IL_02bf:  ldarg.1
    IL_02c0:  ldloc.s    V_8
    IL_02c2:  conv.r4
    IL_02c3:  ldloc.s    V_9
    IL_02c5:  conv.r4
    IL_02c6:  ldloc.s    V_10
    IL_02c8:  conv.r4
    IL_02c9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02ce:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_02d3:  ldloca.s   V_31
    IL_02d5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_02da:  ldloc.1
    IL_02db:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Ray::Direction
    IL_02e0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02e5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02ea:  ldc.r4     3.4028235e+038
    IL_02ef:  stloc.s    V_40
    IL_02f1:  dup
    IL_02f2:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02f7:  ldloc.s    V_29
    IL_02f9:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_02fe:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0303:  sub
    IL_0304:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0309:  stloc.s    V_41
    IL_030b:  ldloc.s    V_41
    IL_030d:  ldloc.s    V_40
    IL_030f:  bge.un.s   IL_0318

    IL_0311:  ldloc.s    V_41
    IL_0313:  stloc.s    V_40
    IL_0315:  ldc.i4.3
    IL_0316:  stloc.s    V_39
    IL_0318:  dup
    IL_0319:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_031e:  ldloc.s    V_29
    IL_0320:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0325:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_032a:  sub
    IL_032b:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0330:  stloc.s    V_41
    IL_0332:  ldloc.s    V_41
    IL_0334:  ldloc.s    V_40
    IL_0336:  bge.un.s   IL_033f

    IL_0338:  ldloc.s    V_41
    IL_033a:  stloc.s    V_40
    IL_033c:  ldc.i4.1
    IL_033d:  stloc.s    V_39
    IL_033f:  dup
    IL_0340:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0345:  ldloc.s    V_29
    IL_0347:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_034c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0351:  sub
    IL_0352:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0357:  stloc.s    V_41
    IL_0359:  ldloc.s    V_41
    IL_035b:  ldloc.s    V_40
    IL_035d:  bge.un.s   IL_0366

    IL_035f:  ldloc.s    V_41
    IL_0361:  stloc.s    V_40
    IL_0363:  ldc.i4.5
    IL_0364:  stloc.s    V_39
    IL_0366:  dup
    IL_0367:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_036c:  ldloc.s    V_29
    IL_036e:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0373:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0378:  sub
    IL_0379:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_037e:  stloc.s    V_41
    IL_0380:  ldloc.s    V_41
    IL_0382:  ldloc.s    V_40
    IL_0384:  bge.un.s   IL_038d

    IL_0386:  ldloc.s    V_41
    IL_0388:  stloc.s    V_40
    IL_038a:  ldc.i4.4
    IL_038b:  stloc.s    V_39
    IL_038d:  dup
    IL_038e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0393:  ldloc.s    V_29
    IL_0395:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_039a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_039f:  sub
    IL_03a0:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_03a5:  stloc.s    V_41
    IL_03a7:  ldloc.s    V_41
    IL_03a9:  ldloc.s    V_40
    IL_03ab:  bge.un.s   IL_03b4

    IL_03ad:  ldloc.s    V_41
    IL_03af:  stloc.s    V_40
    IL_03b1:  ldc.i4.2
    IL_03b2:  stloc.s    V_39
    IL_03b4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03b9:  ldloc.s    V_29
    IL_03bb:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_03c0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03c5:  sub
    IL_03c6:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_03cb:  stloc.s    V_41
    IL_03cd:  ldloc.s    V_41
    IL_03cf:  ldloc.s    V_40
    IL_03d1:  bge.un.s   IL_03da

    IL_03d3:  ldloc.s    V_41
    IL_03d5:  stloc.s    V_40
    IL_03d7:  ldc.i4.0
    IL_03d8:  stloc.s    V_39
    IL_03da:  ldloca.s   V_42
    IL_03dc:  initobj    Game.TerrainRaycastResult
    IL_03e2:  ldloca.s   V_42
    IL_03e4:  ldloc.s    V_32
    IL_03e6:  stfld      int32 Game.TerrainRaycastResult::Value
    IL_03eb:  ldloca.s   V_42
    IL_03ed:  ldloca.s   V_43
    IL_03ef:  initobj    Game.CellFace
    IL_03f5:  ldloca.s   V_43
    IL_03f7:  ldloc.s    V_8
    IL_03f9:  stfld      int32 Game.CellFace::X
    IL_03fe:  ldloca.s   V_43
    IL_0400:  ldloc.s    V_9
    IL_0402:  stfld      int32 Game.CellFace::Y
    IL_0407:  ldloca.s   V_43
    IL_0409:  ldloc.s    V_10
    IL_040b:  stfld      int32 Game.CellFace::Z
    IL_0410:  ldloca.s   V_43
    IL_0412:  ldloc.s    V_39
    IL_0414:  stfld      int32 Game.CellFace::Face
    IL_0419:  ldloc.s    V_43
    IL_041b:  stfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0420:  ldloca.s   V_42
    IL_0422:  ldloc.s    V_30
    IL_0424:  stfld      int32 Game.TerrainRaycastResult::CollisionBoxIndex
    IL_0429:  ldloca.s   V_42
    IL_042b:  ldloca.s   V_31
    IL_042d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0432:  stfld      float32 Game.TerrainRaycastResult::Distance
    IL_0437:  ldloca.s   V_42
    IL_0439:  ldarg.1
    IL_043a:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_043f:  ldloca.s   V_42
    IL_0441:  ldarg.2
    IL_0442:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastEnd
    IL_0447:  ldloc.s    V_42
    IL_0449:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::.ctor(!0)
    IL_044e:  ret

    IL_044f:  ldloc.s    V_19
    IL_0451:  ldloc.s    V_22
    IL_0453:  bgt.un.s   IL_0474

    IL_0455:  ldloc.s    V_19
    IL_0457:  ldloc.s    V_25
    IL_0459:  bgt.un.s   IL_0474

    IL_045b:  ldloc.s    V_8
    IL_045d:  ldloc.s    V_11
    IL_045f:  beq.s      IL_04b2

    IL_0461:  ldloc.s    V_19
    IL_0463:  ldloc.s    V_26
    IL_0465:  add
    IL_0466:  stloc.s    V_19
    IL_0468:  ldloc.s    V_8
    IL_046a:  ldloc.s    V_14
    IL_046c:  add
    IL_046d:  stloc.s    V_8
    IL_046f:  br         IL_01a9

    IL_0474:  ldloc.s    V_22
    IL_0476:  ldloc.s    V_19
    IL_0478:  bgt.un.s   IL_0499

    IL_047a:  ldloc.s    V_22
    IL_047c:  ldloc.s    V_25
    IL_047e:  bgt.un.s   IL_0499

    IL_0480:  ldloc.s    V_9
    IL_0482:  ldloc.s    V_12
    IL_0484:  beq.s      IL_04b2

    IL_0486:  ldloc.s    V_22
    IL_0488:  ldloc.s    V_27
    IL_048a:  add
    IL_048b:  stloc.s    V_22
    IL_048d:  ldloc.s    V_9
    IL_048f:  ldloc.s    V_15
    IL_0491:  add
    IL_0492:  stloc.s    V_9
    IL_0494:  br         IL_01a9

    IL_0499:  ldloc.s    V_10
    IL_049b:  ldloc.s    V_13
    IL_049d:  beq.s      IL_04b2

    IL_049f:  ldloc.s    V_25
    IL_04a1:  ldloc.s    V_28
    IL_04a3:  add
    IL_04a4:  stloc.s    V_25
    IL_04a6:  ldloc.s    V_10
    IL_04a8:  ldloc.s    V_16
    IL_04aa:  add
    IL_04ab:  stloc.s    V_10
    IL_04ad:  br         IL_01a9

    IL_04b2:  ldloca.s   V_44
    IL_04b4:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>
    IL_04ba:  ldloc.s    V_44
    IL_04bc:  ret
  } // end of method SubsystemTerrain::Raycast

  .method public hidebysig instance void 
          ChangeCell(int32 x,
                     int32 y,
                     int32 z,
                     int32 'value',
                     [opt] bool updateModificationCounter) cil managed
  {
    .param [5] = bool(true)
    // 代码大小       319 (0x13f)
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
    IL_0001:  call       instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  callvirt   instance bool Game.Terrain::IsCellValid(int32,
                                                                 int32,
                                                                 int32)
    IL_000e:  brfalse    IL_013e

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0019:  ldarg.1
    IL_001a:  ldarg.2
    IL_001b:  ldarg.3
    IL_001c:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0021:  stloc.0
    IL_0022:  ldarg.s    'value'
    IL_0024:  ldc.i4.0
    IL_0025:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                          int32)
    IL_002a:  starg.s    'value'
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.0
    IL_002e:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                          int32)
    IL_0033:  stloc.0
    IL_0034:  ldarg.s    'value'
    IL_0036:  ldloc.0
    IL_0037:  beq        IL_013e

    IL_003c:  ldarg.0
    IL_003d:  call       instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0042:  ldarg.1
    IL_0043:  ldarg.2
    IL_0044:  ldarg.3
    IL_0045:  ldarg.s    'value'
    IL_0047:  callvirt   instance void Game.Terrain::SetCellValueFast(int32,
                                                                      int32,
                                                                      int32,
                                                                      int32)
    IL_004c:  ldarg.0
    IL_004d:  call       instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0052:  ldarg.1
    IL_0053:  ldarg.3
    IL_0054:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0059:  stloc.1
    IL_005a:  ldloc.1
    IL_005b:  brfalse.s  IL_0083

    IL_005d:  ldarg.s    updateModificationCounter
    IL_005f:  brfalse.s  IL_006f

    IL_0061:  ldloc.1
    IL_0062:  dup
    IL_0063:  ldfld      int32 Game.TerrainChunk::ModificationCounter
    IL_0068:  ldc.i4.1
    IL_0069:  add
    IL_006a:  stfld      int32 Game.TerrainChunk::ModificationCounter
    IL_006f:  ldarg.0
    IL_0070:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0075:  ldloc.1
    IL_0076:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_007b:  ldc.i4.1
    IL_007c:  ldc.i4.5
    IL_007d:  ldc.i4.0
    IL_007e:  callvirt   instance void Game.TerrainUpdater::DowngradeChunkNeighborhoodState(valuetype [Engine]Engine.Point2,
                                                                                            int32,
                                                                                            valuetype Game.TerrainChunkState,
                                                                                            bool)
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemTerrain::m_modifiedCells
    IL_0089:  ldarg.1
    IL_008a:  ldarg.2
    IL_008b:  ldarg.3
    IL_008c:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0091:  ldc.i4.1
    IL_0092:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_0097:  ldloc.0
    IL_0098:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_009d:  stloc.2
    IL_009e:  ldarg.s    'value'
    IL_00a0:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00a5:  stloc.3
    IL_00a6:  ldloc.3
    IL_00a7:  ldloc.2
    IL_00a8:  beq.s      IL_010d

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemTerrain::m_subsystemBlockBehaviors
    IL_00b0:  ldloc.2
    IL_00b1:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_00b6:  stloc.s    V_4
    IL_00b8:  ldc.i4.0
    IL_00b9:  stloc.s    V_6
    IL_00bb:  br.s       IL_00d3

    IL_00bd:  ldloc.s    V_4
    IL_00bf:  ldloc.s    V_6
    IL_00c1:  ldelem.ref
    IL_00c2:  ldloc.0
    IL_00c3:  ldarg.s    'value'
    IL_00c5:  ldarg.1
    IL_00c6:  ldarg.2
    IL_00c7:  ldarg.3
    IL_00c8:  callvirt   instance void Game.SubsystemBlockBehavior::OnBlockRemoved(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
    IL_00cd:  ldloc.s    V_6
    IL_00cf:  ldc.i4.1
    IL_00d0:  add
    IL_00d1:  stloc.s    V_6
    IL_00d3:  ldloc.s    V_6
    IL_00d5:  ldloc.s    V_4
    IL_00d7:  ldlen
    IL_00d8:  conv.i4
    IL_00d9:  blt.s      IL_00bd

    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemTerrain::m_subsystemBlockBehaviors
    IL_00e1:  ldloc.3
    IL_00e2:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_00e7:  stloc.s    V_5
    IL_00e9:  ldc.i4.0
    IL_00ea:  stloc.s    V_7
    IL_00ec:  br.s       IL_0104

    IL_00ee:  ldloc.s    V_5
    IL_00f0:  ldloc.s    V_7
    IL_00f2:  ldelem.ref
    IL_00f3:  ldarg.s    'value'
    IL_00f5:  ldloc.0
    IL_00f6:  ldarg.1
    IL_00f7:  ldarg.2
    IL_00f8:  ldarg.3
    IL_00f9:  callvirt   instance void Game.SubsystemBlockBehavior::OnBlockAdded(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_00fe:  ldloc.s    V_7
    IL_0100:  ldc.i4.1
    IL_0101:  add
    IL_0102:  stloc.s    V_7
    IL_0104:  ldloc.s    V_7
    IL_0106:  ldloc.s    V_5
    IL_0108:  ldlen
    IL_0109:  conv.i4
    IL_010a:  blt.s      IL_00ee

    IL_010c:  ret

    IL_010d:  ldarg.0
    IL_010e:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemTerrain::m_subsystemBlockBehaviors
    IL_0113:  ldloc.3
    IL_0114:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0119:  stloc.s    V_8
    IL_011b:  ldc.i4.0
    IL_011c:  stloc.s    V_9
    IL_011e:  br.s       IL_0136

    IL_0120:  ldloc.s    V_8
    IL_0122:  ldloc.s    V_9
    IL_0124:  ldelem.ref
    IL_0125:  ldarg.s    'value'
    IL_0127:  ldloc.0
    IL_0128:  ldarg.1
    IL_0129:  ldarg.2
    IL_012a:  ldarg.3
    IL_012b:  callvirt   instance void Game.SubsystemBlockBehavior::OnBlockModified(int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
    IL_0130:  ldloc.s    V_9
    IL_0132:  ldc.i4.1
    IL_0133:  add
    IL_0134:  stloc.s    V_9
    IL_0136:  ldloc.s    V_9
    IL_0138:  ldloc.s    V_8
    IL_013a:  ldlen
    IL_013b:  conv.i4
    IL_013c:  blt.s      IL_0120

    IL_013e:  ret
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
    // 代码大小       405 (0x195)
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
    IL_0001:  call       instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0006:  ldarg.2
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    z
    IL_000a:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0016:  stloc.1
    IL_0017:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001c:  ldloc.1
    IL_001d:  ldelem.ref
    IL_001e:  stloc.2
    IL_001f:  ldloc.1
    IL_0020:  brfalse    IL_0187

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
    IL_007d:  call       int32 Game.Terrain::ExtractContents(int32)
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
    IL_00c0:  call       int32 Game.Terrain::ExtractContents(int32)
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
    IL_012d:  brfalse.s  IL_0187

    IL_012f:  ldarg.s    noParticleSystem
    IL_0131:  brtrue.s   IL_0187

    IL_0133:  ldarg.0
    IL_0134:  ldfld      class Game.SubsystemViews Game.SubsystemTerrain::m_subsystemViews
    IL_0139:  ldarg.2
    IL_013a:  conv.r4
    IL_013b:  ldarg.3
    IL_013c:  conv.r4
    IL_013d:  ldarg.s    z
    IL_013f:  conv.r4
    IL_0140:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0145:  callvirt   instance float32 Game.SubsystemViews::CalculateDistanceFromNearestView(valuetype [Engine]Engine.Vector3)
    IL_014a:  ldc.r4     16.
    IL_014f:  bge.un.s   IL_0187

    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.SubsystemParticles Game.SubsystemTerrain::m_subsystemParticles
    IL_0157:  ldloc.2
    IL_0158:  ldarg.0
    IL_0159:  ldarg.2
    IL_015a:  conv.r4
    IL_015b:  ldc.r4     0.5
    IL_0160:  add
    IL_0161:  ldarg.3
    IL_0162:  conv.r4
    IL_0163:  ldc.r4     0.5
    IL_0168:  add
    IL_0169:  ldarg.s    z
    IL_016b:  conv.r4
    IL_016c:  ldc.r4     0.5
    IL_0171:  add
    IL_0172:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0177:  ldloc.0
    IL_0178:  ldc.r4     1.
    IL_017d:  callvirt   instance class Game.BlockDebrisParticleSystem Game.Block::CreateDebrisParticleSystem(class Game.SubsystemTerrain,
                                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                                              int32,
                                                                                                              float32)
    IL_0182:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0187:  ldarg.0
    IL_0188:  ldarg.2
    IL_0189:  ldarg.3
    IL_018a:  ldarg.s    z
    IL_018c:  ldarg.s    newValue
    IL_018e:  ldc.i4.1
    IL_018f:  call       instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0194:  ret
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
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  3
    IL_0000:  ldsfld     bool Game.SubsystemTerrain::TerrainRenderingEnabled
    IL_0005:  brtrue.s   IL_0008

    IL_0007:  ret

    IL_0008:  ldarg.2
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32[] Game.SubsystemTerrain::m_drawOrders
    IL_000f:  ldc.i4.0
    IL_0010:  ldelem.i4
    IL_0011:  bne.un.s   IL_0044

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance void Game.TerrainUpdater::PrepareForDrawing(class Game.Camera)
    IL_001f:  ldarg.0
    IL_0020:  call       instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance void Game.TerrainRenderer::PrepareForDrawing(class Game.Camera)
    IL_002b:  ldarg.0
    IL_002c:  call       instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_0031:  ldarg.1
    IL_0032:  callvirt   instance void Game.TerrainRenderer::DrawOpaque(class Game.Camera)
    IL_0037:  ldarg.0
    IL_0038:  call       instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_003d:  ldarg.1
    IL_003e:  callvirt   instance void Game.TerrainRenderer::DrawAlphaTested(class Game.Camera)
    IL_0043:  ret

    IL_0044:  ldarg.2
    IL_0045:  ldarg.0
    IL_0046:  ldfld      int32[] Game.SubsystemTerrain::m_drawOrders
    IL_004b:  ldc.i4.1
    IL_004c:  ldelem.i4
    IL_004d:  bne.un.s   IL_005b

    IL_004f:  ldarg.0
    IL_0050:  call       instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_0055:  ldarg.1
    IL_0056:  callvirt   instance void Game.TerrainRenderer::DrawTransparent(class Game.Camera)
    IL_005b:  ret
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
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0006:  callvirt   instance void Game.TerrainUpdater::Update()
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemTerrain::ProcessModifiedCells()
    IL_0011:  ret
  } // end of method SubsystemTerrain::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       305 (0x131)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemViews>(bool)
    IL_000d:  stfld      class Game.SubsystemViews Game.SubsystemTerrain::m_subsystemViews
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
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPalette>(bool)
    IL_008b:  call       instance void Game.SubsystemTerrain::set_SubsystemPalette(class Game.SubsystemPalette)
    IL_0090:  ldarg.0
    IL_0091:  newobj     instance void Game.Terrain::.ctor()
    IL_0096:  call       instance void Game.SubsystemTerrain::set_Terrain(class Game.Terrain)
    IL_009b:  ldarg.0
    IL_009c:  ldarg.0
    IL_009d:  newobj     instance void Game.TerrainRenderer::.ctor(class Game.SubsystemTerrain)
    IL_00a2:  call       instance void Game.SubsystemTerrain::set_TerrainRenderer(class Game.TerrainRenderer)
    IL_00a7:  ldarg.0
    IL_00a8:  ldarg.0
    IL_00a9:  newobj     instance void Game.TerrainUpdater::.ctor(class Game.SubsystemTerrain)
    IL_00ae:  call       instance void Game.SubsystemTerrain::set_TerrainUpdater(class Game.TerrainUpdater)
    IL_00b3:  ldarg.0
    IL_00b4:  ldarg.0
    IL_00b5:  call       instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTerrain::m_subsystemGameInfo
    IL_00c0:  callvirt   instance string Game.SubsystemGameInfo::get_DirectoryName()
    IL_00c5:  newobj     instance void Game.TerrainSerializer129::.ctor(class Game.Terrain,
                                                                        string)
    IL_00ca:  call       instance void Game.SubsystemTerrain::set_TerrainSerializer(class Game.TerrainSerializer129)
    IL_00cf:  ldarg.0
    IL_00d0:  ldarg.0
    IL_00d1:  call       instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00d6:  ldarg.0
    IL_00d7:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00dc:  ldc.i4.1
    IL_00dd:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemElectricity>(bool)
    IL_00e2:  ldarg.0
    IL_00e3:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_00e8:  ldarg.0
    IL_00e9:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00ee:  ldc.i4.1
    IL_00ef:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMetersBlockBehavior>(bool)
    IL_00f4:  ldarg.0
    IL_00f5:  call       instance class Game.SubsystemPalette Game.SubsystemTerrain::get_SubsystemPalette()
    IL_00fa:  newobj     instance void Game.BlockGeometryGenerator::.ctor(class Game.Terrain,
                                                                          class Game.SubsystemElectricity,
                                                                          class Game.SubsystemFurnitureBlockBehavior,
                                                                          class Game.SubsystemMetersBlockBehavior,
                                                                          class Game.SubsystemPalette)
    IL_00ff:  call       instance void Game.SubsystemTerrain::set_BlockGeometryGenerator(class Game.BlockGeometryGenerator)
    IL_0104:  ldarg.0
    IL_0105:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTerrain::m_subsystemGameInfo
    IL_010a:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_010f:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_0114:  ldc.i4.2
    IL_0115:  bne.un.s   IL_0124

    IL_0117:  ldarg.0
    IL_0118:  ldarg.0
    IL_0119:  newobj     instance void Game.TerrainContentsGeneratorFlat::.ctor(class Game.SubsystemTerrain)
    IL_011e:  call       instance void Game.SubsystemTerrain::set_TerrainContentsGenerator(class Game.ITerrainContentsGenerator)
    IL_0123:  ret

    IL_0124:  ldarg.0
    IL_0125:  ldarg.0
    IL_0126:  newobj     instance void Game.TerrainContentsGenerator::.ctor(class Game.SubsystemTerrain)
    IL_012b:  call       instance void Game.SubsystemTerrain::set_TerrainContentsGenerator(class Game.ITerrainContentsGenerator)
    IL_0130:  ret
  } // end of method SubsystemTerrain::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       80 (0x50)
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
      IL_0012:  call       instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0017:  callvirt   instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
      IL_001c:  stloc.0
      IL_001d:  ldc.i4.0
      IL_001e:  stloc.1
      IL_001f:  br.s       IL_0035

      IL_0021:  ldloc.0
      IL_0022:  ldloc.1
      IL_0023:  ldelem.ref
      IL_0024:  stloc.2
      IL_0025:  ldarg.0
      IL_0026:  call       instance class Game.TerrainSerializer129 Game.SubsystemTerrain::get_TerrainSerializer()
      IL_002b:  ldloc.2
      IL_002c:  callvirt   instance void Game.TerrainSerializer129::SaveChunk(class Game.TerrainChunk)
      IL_0031:  ldloc.1
      IL_0032:  ldc.i4.1
      IL_0033:  add
      IL_0034:  stloc.1
      IL_0035:  ldloc.1
      IL_0036:  ldloc.0
      IL_0037:  ldlen
      IL_0038:  conv.i4
      IL_0039:  blt.s      IL_0021

      IL_003b:  leave.s    IL_004f

    }  // end .try
    finally
    {
      IL_003d:  ldarg.0
      IL_003e:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
      IL_0043:  callvirt   instance class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::get_UpdateEvent()
      IL_0048:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
      IL_004d:  pop
      IL_004e:  endfinally
    }  // end handler
    IL_004f:  ret
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
    IL_000c:  call       instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0011:  callvirt   instance void Game.TerrainUpdater::Dispose()
    IL_0016:  ldarg.0
    IL_0017:  call       instance class Game.TerrainSerializer129 Game.SubsystemTerrain::get_TerrainSerializer()
    IL_001c:  callvirt   instance void Game.TerrainSerializer129::Dispose()
    IL_0021:  ret
  } // end of method SubsystemTerrain::Dispose

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
  .property instance class Game.SubsystemPalette
          SubsystemPalette()
  {
    .get instance class Game.SubsystemPalette Game.SubsystemTerrain::get_SubsystemPalette()
    .set instance void Game.SubsystemTerrain::set_SubsystemPalette(class Game.SubsystemPalette)
  } // end of property SubsystemTerrain::SubsystemPalette
  .property instance class Game.Terrain Terrain()
  {
    .get instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    .set instance void Game.SubsystemTerrain::set_Terrain(class Game.Terrain)
  } // end of property SubsystemTerrain::Terrain
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