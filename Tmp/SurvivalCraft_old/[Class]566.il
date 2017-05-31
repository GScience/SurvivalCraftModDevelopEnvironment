.class public abstract auto ansi beforefieldinit Game.SubsystemFluidBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private static valuetype [Engine]Engine.Point2[] m_sideNeighbors
  .field private class Game.FluidBlock m_fluidBlock
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> m_toUpdate
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> m_toSet
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> m_visited
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2> m_fluidRandomFlowDirections
  .field private bool m_generateSources
  .field private class Game.SubsystemTime '<SubsystemTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemAudio '<SubsystemAudio>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemAmbientSounds '<SubsystemAmbientSounds>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method family hidebysig specialname instance class Game.SubsystemTime 
          get_SubsystemTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemFluidBlockBehavior::'<SubsystemTime>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemFluidBlockBehavior::get_SubsystemTime

  .method private hidebysig specialname instance void 
          set_SubsystemTime(class Game.SubsystemTime 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemTime Game.SubsystemFluidBlockBehavior::'<SubsystemTime>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemFluidBlockBehavior::set_SubsystemTime

  .method family hidebysig specialname instance class Game.SubsystemAudio 
          get_SubsystemAudio() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.SubsystemFluidBlockBehavior::'<SubsystemAudio>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemFluidBlockBehavior::get_SubsystemAudio

  .method private hidebysig specialname instance void 
          set_SubsystemAudio(class Game.SubsystemAudio 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemAudio Game.SubsystemFluidBlockBehavior::'<SubsystemAudio>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemFluidBlockBehavior::set_SubsystemAudio

  .method family hidebysig specialname instance class Game.SubsystemAmbientSounds 
          get_SubsystemAmbientSounds() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemFluidBlockBehavior::'<SubsystemAmbientSounds>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemFluidBlockBehavior::get_SubsystemAmbientSounds

  .method private hidebysig specialname instance void 
          set_SubsystemAmbientSounds(class Game.SubsystemAmbientSounds 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemAmbientSounds Game.SubsystemFluidBlockBehavior::'<SubsystemAmbientSounds>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemFluidBlockBehavior::set_SubsystemAmbientSounds

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.FluidBlock fluidBlock,
                               bool generateSources) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemFluidBlockBehavior::m_toUpdate
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_toSet
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_visited
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2>::.ctor()
    IL_0027:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2> Game.SubsystemFluidBlockBehavior::m_fluidRandomFlowDirections
    IL_002c:  ldarg.0
    IL_002d:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0032:  ldarg.0
    IL_0033:  ldarg.1
    IL_0034:  stfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_0039:  ldarg.0
    IL_003a:  ldarg.2
    IL_003b:  stfld      bool Game.SubsystemFluidBlockBehavior::m_generateSources
    IL_0040:  ret
  } // end of method SubsystemFluidBlockBehavior::.ctor

  .method private hidebysig instance void 
          UpdateIsTop(int32 'value',
                      int32 x,
                      int32 y,
                      int32 z) cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  5
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             bool V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldarg.3
    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_0013:  ldc.i4.1
    IL_0014:  sub
    IL_0015:  bge.s      IL_005e

    IL_0017:  ldloc.0
    IL_0018:  ldarg.2
    IL_0019:  ldarg.3
    IL_001a:  ldarg.s    z
    IL_001c:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  ldc.i4.1
    IL_0025:  add
    IL_0026:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_002b:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0030:  stloc.2
    IL_0031:  ldarg.1
    IL_0032:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0037:  stloc.3
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_003e:  ldloc.2
    IL_003f:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
    IL_0044:  ldc.i4.0
    IL_0045:  ceq
    IL_0047:  stloc.s    V_4
    IL_0049:  ldloc.0
    IL_004a:  ldloc.1
    IL_004b:  ldarg.1
    IL_004c:  ldloc.3
    IL_004d:  ldloc.s    V_4
    IL_004f:  call       int32 Game.FluidBlock::SetIsTop(int32,
                                                         bool)
    IL_0054:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0059:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_005e:  ret
  } // end of method SubsystemFluidBlockBehavior::UpdateIsTop

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
    IL_0007:  call       instance void Game.SubsystemFluidBlockBehavior::UpdateIsTop(int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32)
    IL_000c:  ret
  } // end of method SubsystemFluidBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockModified(int32 'value',
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
    IL_0007:  call       instance void Game.SubsystemFluidBlockBehavior::UpdateIsTop(int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32)
    IL_000c:  ret
  } // end of method SubsystemFluidBlockBehavior::OnBlockModified

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Point3 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemFluidBlockBehavior::m_toUpdate
    IL_0006:  ldloca.s   V_0
    IL_0008:  initobj    [Engine]Engine.Point3
    IL_000e:  ldloca.s   V_0
    IL_0010:  ldarg.1
    IL_0011:  stfld      int32 [Engine]Engine.Point3::X
    IL_0016:  ldloca.s   V_0
    IL_0018:  ldarg.2
    IL_0019:  stfld      int32 [Engine]Engine.Point3::Y
    IL_001e:  ldloca.s   V_0
    IL_0020:  ldarg.3
    IL_0021:  stfld      int32 [Engine]Engine.Point3::Z
    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.1
    IL_0028:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_002d:  ldarg.s    neighborY
    IL_002f:  ldarg.2
    IL_0030:  ldc.i4.1
    IL_0031:  add
    IL_0032:  bne.un.s   IL_0050

    IL_0034:  ldarg.0
    IL_0035:  ldarg.0
    IL_0036:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_003b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0040:  ldarg.1
    IL_0041:  ldarg.2
    IL_0042:  ldarg.3
    IL_0043:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0048:  ldarg.1
    IL_0049:  ldarg.2
    IL_004a:  ldarg.3
    IL_004b:  call       instance void Game.SubsystemFluidBlockBehavior::UpdateIsTop(int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32)
    IL_0050:  ret
  } // end of method SubsystemFluidBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnItemHarvested(int32 x,
                          int32 y,
                          int32 z,
                          int32 blockValue,
                          valuetype Game.BlockDropValue& dropValue,
                          int32& newBlockValue) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.s    newBlockValue
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_0008:  ldfld      int32 Game.Block::BlockIndex
    IL_000d:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0012:  stind.i4
    IL_0013:  ldarg.s    dropValue
    IL_0015:  ldc.i4.0
    IL_0016:  stfld      int32 Game.BlockDropValue::Value
    IL_001b:  ldarg.s    dropValue
    IL_001d:  ldc.i4.0
    IL_001e:  stfld      int32 Game.BlockDropValue::Count
    IL_0023:  ret
  } // end of method SubsystemFluidBlockBehavior::OnItemHarvested

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<float32> 
          GetSurfaceHeight(int32 x,
                           int32 y,
                           int32 z,
                           [out] class Game.FluidBlock& surfaceFluidBlock) cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class Game.FluidBlock V_3,
             int32 V_4,
             valuetype [System.Runtime]System.Nullable`1<float32> V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  add
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0015:  stloc.0
    IL_0016:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001b:  ldloc.0
    IL_001c:  ldelem.ref
    IL_001d:  isinst     Game.FluidBlock
    IL_0022:  brtrue.s   IL_0082

    IL_0024:  ldarg.0
    IL_0025:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_002a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_002f:  ldarg.1
    IL_0030:  ldarg.2
    IL_0031:  ldarg.3
    IL_0032:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0037:  stloc.1
    IL_0038:  ldloc.1
    IL_0039:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_003e:  stloc.2
    IL_003f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0044:  ldloc.2
    IL_0045:  ldelem.ref
    IL_0046:  isinst     Game.FluidBlock
    IL_004b:  stloc.3
    IL_004c:  ldloc.3
    IL_004d:  brfalse.s  IL_0073

    IL_004f:  ldarg.s    surfaceFluidBlock
    IL_0051:  ldloc.3
    IL_0052:  stind.ref
    IL_0053:  ldloc.1
    IL_0054:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0059:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_005e:  stloc.s    V_4
    IL_0060:  ldarg.2
    IL_0061:  conv.r4
    IL_0062:  ldarg.s    surfaceFluidBlock
    IL_0064:  ldind.ref
    IL_0065:  ldloc.s    V_4
    IL_0067:  callvirt   instance float32 Game.FluidBlock::GetLevelHeight(int32)
    IL_006c:  add
    IL_006d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0072:  ret

    IL_0073:  ldarg.s    surfaceFluidBlock
    IL_0075:  ldnull
    IL_0076:  stind.ref
    IL_0077:  ldloca.s   V_5
    IL_0079:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_007f:  ldloc.s    V_5
    IL_0081:  ret

    IL_0082:  ldarg.2
    IL_0083:  ldc.i4.1
    IL_0084:  add
    IL_0085:  starg.s    y
    IL_0087:  br         IL_0000
  } // end of method SubsystemFluidBlockBehavior::GetSurfaceHeight

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<float32> 
          GetSurfaceHeight(int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  5
    .locals init (class Game.FluidBlock V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldloca.s   V_0
    IL_0006:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemFluidBlockBehavior::GetSurfaceHeight(int32,
                                                                                                                                          int32,
                                                                                                                                          int32,
                                                                                                                                          class Game.FluidBlock&)
    IL_000b:  ret
  } // end of method SubsystemFluidBlockBehavior::GetSurfaceHeight

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 
          CalculateFlowSpeed(int32 x,
                             int32 y,
                             int32 z,
                             [out] class Game.FluidBlock& surfaceBlock,
                             [out] valuetype [System.Runtime]System.Nullable`1<float32>& surfaceHeight) cil managed
  {
    // 代码大小       666 (0x29a)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             valuetype [Engine]Engine.Vector2 V_14,
             valuetype [Engine]Engine.Vector2 V_15,
             valuetype [Engine]Engine.Vector2 V_16,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_17)
    IL_0000:  ldarg.s    surfaceHeight
    IL_0002:  ldarg.0
    IL_0003:  ldarg.1
    IL_0004:  ldarg.2
    IL_0005:  ldarg.3
    IL_0006:  ldarg.s    surfaceBlock
    IL_0008:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemFluidBlockBehavior::GetSurfaceHeight(int32,
                                                                                                                                          int32,
                                                                                                                                          int32,
                                                                                                                                          class Game.FluidBlock&)
    IL_000d:  stobj      valuetype [System.Runtime]System.Nullable`1<float32>
    IL_0012:  ldarg.s    surfaceHeight
    IL_0014:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0019:  brfalse    IL_028f

    IL_001e:  ldarg.s    surfaceHeight
    IL_0020:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0025:  conv.i4
    IL_0026:  starg.s    y
    IL_0028:  ldarg.0
    IL_0029:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_002e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0033:  ldarg.1
    IL_0034:  ldarg.2
    IL_0035:  ldarg.3
    IL_0036:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_003b:  stloc.0
    IL_003c:  ldloc.0
    IL_003d:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0042:  stloc.1
    IL_0043:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0048:  ldloc.1
    IL_0049:  ldelem.ref
    IL_004a:  isinst     Game.FluidBlock
    IL_004f:  brfalse    IL_028f

    IL_0054:  ldarg.0
    IL_0055:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_005a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005f:  ldarg.1
    IL_0060:  ldc.i4.1
    IL_0061:  sub
    IL_0062:  ldarg.2
    IL_0063:  ldarg.3
    IL_0064:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0069:  stloc.2
    IL_006a:  ldarg.0
    IL_006b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0070:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0075:  ldarg.1
    IL_0076:  ldc.i4.1
    IL_0077:  add
    IL_0078:  ldarg.2
    IL_0079:  ldarg.3
    IL_007a:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_007f:  stloc.3
    IL_0080:  ldarg.0
    IL_0081:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0086:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_008b:  ldarg.1
    IL_008c:  ldarg.2
    IL_008d:  ldarg.3
    IL_008e:  ldc.i4.1
    IL_008f:  sub
    IL_0090:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0095:  stloc.s    V_4
    IL_0097:  ldarg.0
    IL_0098:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_009d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a2:  ldarg.1
    IL_00a3:  ldarg.2
    IL_00a4:  ldarg.3
    IL_00a5:  ldc.i4.1
    IL_00a6:  add
    IL_00a7:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_00ac:  stloc.s    V_5
    IL_00ae:  ldloc.2
    IL_00af:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00b4:  stloc.s    V_6
    IL_00b6:  ldloc.3
    IL_00b7:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00bc:  stloc.s    V_7
    IL_00be:  ldloc.s    V_4
    IL_00c0:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00c5:  stloc.s    V_8
    IL_00c7:  ldloc.s    V_5
    IL_00c9:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00ce:  ldloc.0
    IL_00cf:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_00d4:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_00d9:  stloc.s    V_9
    IL_00db:  ldloc.s    V_6
    IL_00dd:  ldloc.1
    IL_00de:  beq.s      IL_00e4

    IL_00e0:  ldloc.s    V_9
    IL_00e2:  br.s       IL_00ef

    IL_00e4:  ldloc.2
    IL_00e5:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_00ea:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_00ef:  stloc.s    V_10
    IL_00f1:  ldloc.s    V_7
    IL_00f3:  ldloc.1
    IL_00f4:  beq.s      IL_00fa

    IL_00f6:  ldloc.s    V_9
    IL_00f8:  br.s       IL_0105

    IL_00fa:  ldloc.3
    IL_00fb:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0100:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_0105:  stloc.s    V_11
    IL_0107:  ldloc.s    V_8
    IL_0109:  ldloc.1
    IL_010a:  beq.s      IL_0110

    IL_010c:  ldloc.s    V_9
    IL_010e:  br.s       IL_011c

    IL_0110:  ldloc.s    V_4
    IL_0112:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0117:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_011c:  stloc.s    V_12
    IL_011e:  ldloc.1
    IL_011f:  beq.s      IL_0125

    IL_0121:  ldloc.s    V_9
    IL_0123:  br.s       IL_0131

    IL_0125:  ldloc.s    V_5
    IL_0127:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_012c:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_0131:  stloc.s    V_13
    IL_0133:  ldloca.s   V_16
    IL_0135:  initobj    [Engine]Engine.Vector2
    IL_013b:  ldloca.s   V_16
    IL_013d:  ldloc.s    V_9
    IL_013f:  ldloc.s    V_10
    IL_0141:  sub
    IL_0142:  call       int32 [Engine]Engine.MathUtils::Sign(int32)
    IL_0147:  ldloc.s    V_9
    IL_0149:  ldloc.s    V_11
    IL_014b:  sub
    IL_014c:  call       int32 [Engine]Engine.MathUtils::Sign(int32)
    IL_0151:  sub
    IL_0152:  conv.r4
    IL_0153:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0158:  ldloca.s   V_16
    IL_015a:  ldloc.s    V_9
    IL_015c:  ldloc.s    V_12
    IL_015e:  sub
    IL_015f:  call       int32 [Engine]Engine.MathUtils::Sign(int32)
    IL_0164:  ldloc.s    V_9
    IL_0166:  ldloc.s    V_13
    IL_0168:  sub
    IL_0169:  call       int32 [Engine]Engine.MathUtils::Sign(int32)
    IL_016e:  sub
    IL_016f:  conv.r4
    IL_0170:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0175:  ldloc.s    V_16
    IL_0177:  stloc.s    V_14
    IL_0179:  ldloca.s   V_14
    IL_017b:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_0180:  ldc.r4     1.
    IL_0185:  ble.un.s   IL_0190

    IL_0187:  ldloc.s    V_14
    IL_0189:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_018e:  stloc.s    V_14
    IL_0190:  ldarg.0
    IL_0191:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2> Game.SubsystemFluidBlockBehavior::m_fluidRandomFlowDirections
    IL_0196:  ldarg.1
    IL_0197:  ldarg.2
    IL_0198:  ldarg.3
    IL_0199:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_019e:  ldloca.s   V_15
    IL_01a0:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2>::TryGetValue(!0,
                                                                                                                                                                                        !1&)
    IL_01a5:  brtrue     IL_026e

    IL_01aa:  ldloca.s   V_15
    IL_01ac:  ldc.r4     5.0000001e-002
    IL_01b1:  ldc.r4     2.
    IL_01b6:  ldarg.1
    IL_01b7:  conv.r4
    IL_01b8:  ldc.r4     0.2
    IL_01bd:  ldarg.0
    IL_01be:  call       instance class Game.SubsystemTime Game.SubsystemFluidBlockBehavior::get_SubsystemTime()
    IL_01c3:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01c8:  conv.r4
    IL_01c9:  mul
    IL_01ca:  add
    IL_01cb:  ldarg.3
    IL_01cc:  conv.r4
    IL_01cd:  ldc.r4     0.1
    IL_01d2:  ldc.i4.1
    IL_01d3:  ldc.r4     1.
    IL_01d8:  ldc.r4     1.
    IL_01dd:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_01e2:  mul
    IL_01e3:  ldc.r4     1.
    IL_01e8:  sub
    IL_01e9:  mul
    IL_01ea:  stfld      float32 [Engine]Engine.Vector2::X
    IL_01ef:  ldloca.s   V_15
    IL_01f1:  ldc.r4     5.0000001e-002
    IL_01f6:  ldc.r4     2.
    IL_01fb:  ldarg.1
    IL_01fc:  conv.r4
    IL_01fd:  ldc.r4     0.2
    IL_0202:  ldarg.0
    IL_0203:  call       instance class Game.SubsystemTime Game.SubsystemFluidBlockBehavior::get_SubsystemTime()
    IL_0208:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_020d:  conv.r4
    IL_020e:  mul
    IL_020f:  add
    IL_0210:  ldc.r4     100.
    IL_0215:  add
    IL_0216:  ldarg.3
    IL_0217:  conv.r4
    IL_0218:  ldc.r4     0.1
    IL_021d:  ldc.i4.1
    IL_021e:  ldc.r4     1.
    IL_0223:  ldc.r4     1.
    IL_0228:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_022d:  mul
    IL_022e:  ldc.r4     1.
    IL_0233:  sub
    IL_0234:  mul
    IL_0235:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_023a:  ldarg.0
    IL_023b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2> Game.SubsystemFluidBlockBehavior::m_fluidRandomFlowDirections
    IL_0240:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2>::get_Count()
    IL_0245:  ldc.i4     0x3e8
    IL_024a:  bge.s      IL_0263

    IL_024c:  ldarg.0
    IL_024d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2> Game.SubsystemFluidBlockBehavior::m_fluidRandomFlowDirections
    IL_0252:  ldarg.1
    IL_0253:  ldarg.2
    IL_0254:  ldarg.3
    IL_0255:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_025a:  ldloc.s    V_15
    IL_025c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2>::set_Item(!0,
                                                                                                                                                                                     !1)
    IL_0261:  br.s       IL_026e

    IL_0263:  ldarg.0
    IL_0264:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2> Game.SubsystemFluidBlockBehavior::m_fluidRandomFlowDirections
    IL_0269:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype [Engine]Engine.Vector2>::Clear()
    IL_026e:  ldloc.s    V_14
    IL_0270:  ldloc.s    V_15
    IL_0272:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0277:  stloc.s    V_14
    IL_0279:  ldloc.s    V_14
    IL_027b:  ldc.r4     2.
    IL_0280:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0285:  stloc.s    V_14
    IL_0287:  ldloc.s    V_14
    IL_0289:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_028e:  ret

    IL_028f:  ldloca.s   V_17
    IL_0291:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0297:  ldloc.s    V_17
    IL_0299:  ret
  } // end of method SubsystemFluidBlockBehavior::CalculateFlowSpeed

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 
          CalculateFlowSpeed(int32 x,
                             int32 y,
                             int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0,
             class Game.FluidBlock V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldloca.s   V_1
    IL_0006:  ldloca.s   V_0
    IL_0008:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SubsystemFluidBlockBehavior::CalculateFlowSpeed(int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     int32,
                                                                                                                                                                     class Game.FluidBlock&,
                                                                                                                                                                     valuetype [System.Runtime]System.Nullable`1<float32>&)
    IL_000d:  ret
  } // end of method SubsystemFluidBlockBehavior::CalculateFlowSpeed

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
    IL_0014:  call       instance void Game.SubsystemFluidBlockBehavior::set_SubsystemTime(class Game.SubsystemTime)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0026:  call       instance void Game.SubsystemFluidBlockBehavior::set_SubsystemAudio(class Game.SubsystemAudio)
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAmbientSounds>(bool)
    IL_0038:  call       instance void Game.SubsystemFluidBlockBehavior::set_SubsystemAmbientSounds(class Game.SubsystemAmbientSounds)
    IL_003d:  ret
  } // end of method SubsystemFluidBlockBehavior::Load

  .method family hidebysig instance void 
          SpreadFluid() cil managed
  {
    // 代码大小       1282 (0x502)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool> V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
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
             int32 V_20,
             int32 V_21,
             int32 V_22,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32> V_23,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32> V_24,
             int32 V_25,
             int32 V_26,
             int32 V_27,
             int32 V_28,
             int32 V_29,
             int32 V_30,
             class Game.FluidBlock V_31)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_04fa

    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemFluidBlockBehavior::m_toUpdate
    IL_000d:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Keys()
    IL_0012:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,bool>::GetEnumerator()
    IL_0017:  stloc.1
    .try
    {
      IL_0018:  br         IL_03e4

      IL_001d:  ldloca.s   V_1
      IL_001f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::get_Current()
      IL_0024:  dup
      IL_0025:  ldfld      int32 [Engine]Engine.Point3::X
      IL_002a:  stloc.2
      IL_002b:  dup
      IL_002c:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0031:  stloc.3
      IL_0032:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0037:  stloc.s    V_4
      IL_0039:  ldarg.0
      IL_003a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_003f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0044:  ldloc.2
      IL_0045:  ldloc.3
      IL_0046:  ldloc.s    V_4
      IL_0048:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_004d:  dup
      IL_004e:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0053:  stloc.s    V_5
      IL_0055:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_005a:  stloc.s    V_6
      IL_005c:  ldloc.s    V_6
      IL_005e:  call       int32 Game.FluidBlock::GetLevel(int32)
      IL_0063:  stloc.s    V_7
      IL_0065:  ldarg.0
      IL_0066:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_006b:  ldloc.s    V_5
      IL_006d:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
      IL_0072:  brfalse    IL_03e4

      IL_0077:  ldarg.0
      IL_0078:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_007d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0082:  ldloc.2
      IL_0083:  ldloc.3
      IL_0084:  ldc.i4.1
      IL_0085:  sub
      IL_0086:  ldloc.s    V_4
      IL_0088:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_008d:  stloc.s    V_8
      IL_008f:  ldloc.s    V_8
      IL_0091:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0096:  stloc.s    V_9
      IL_0098:  ldloc.s    V_8
      IL_009a:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_009f:  stloc.s    V_10
      IL_00a1:  ldloc.s    V_10
      IL_00a3:  call       int32 Game.FluidBlock::GetLevel(int32)
      IL_00a8:  stloc.s    V_11
      IL_00aa:  ldarg.0
      IL_00ab:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_00b0:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_00b5:  ldc.i4.1
      IL_00b6:  add
      IL_00b7:  stloc.s    V_12
      IL_00b9:  ldc.i4.0
      IL_00ba:  stloc.s    V_13
      IL_00bc:  ldc.i4.0
      IL_00bd:  stloc.s    V_14
      IL_00bf:  br.s       IL_013c

      IL_00c1:  ldarg.0
      IL_00c2:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_00c7:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_00cc:  ldloc.2
      IL_00cd:  ldsfld     valuetype [Engine]Engine.Point2[] Game.SubsystemFluidBlockBehavior::m_sideNeighbors
      IL_00d2:  ldloc.s    V_14
      IL_00d4:  ldelema    [Engine]Engine.Point2
      IL_00d9:  ldfld      int32 [Engine]Engine.Point2::X
      IL_00de:  add
      IL_00df:  ldloc.3
      IL_00e0:  ldloc.s    V_4
      IL_00e2:  ldsfld     valuetype [Engine]Engine.Point2[] Game.SubsystemFluidBlockBehavior::m_sideNeighbors
      IL_00e7:  ldloc.s    V_14
      IL_00e9:  ldelema    [Engine]Engine.Point2
      IL_00ee:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_00f3:  add
      IL_00f4:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_00f9:  stloc.s    V_15
      IL_00fb:  ldloc.s    V_15
      IL_00fd:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0102:  stloc.s    V_16
      IL_0104:  ldarg.0
      IL_0105:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_010a:  ldloc.s    V_16
      IL_010c:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
      IL_0111:  brfalse.s  IL_0136

      IL_0113:  ldloc.s    V_15
      IL_0115:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_011a:  call       int32 Game.FluidBlock::GetLevel(int32)
      IL_011f:  stloc.s    V_17
      IL_0121:  ldloc.s    V_12
      IL_0123:  ldloc.s    V_17
      IL_0125:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32)
      IL_012a:  stloc.s    V_12
      IL_012c:  ldloc.s    V_17
      IL_012e:  brtrue.s   IL_0136

      IL_0130:  ldloc.s    V_13
      IL_0132:  ldc.i4.1
      IL_0133:  add
      IL_0134:  stloc.s    V_13
      IL_0136:  ldloc.s    V_14
      IL_0138:  ldc.i4.1
      IL_0139:  add
      IL_013a:  stloc.s    V_14
      IL_013c:  ldloc.s    V_14
      IL_013e:  ldc.i4.4
      IL_013f:  blt.s      IL_00c1

      IL_0141:  ldloc.s    V_7
      IL_0143:  brfalse.s  IL_01ba

      IL_0145:  ldloc.s    V_7
      IL_0147:  ldloc.s    V_12
      IL_0149:  bgt.s      IL_01ba

      IL_014b:  ldarg.0
      IL_014c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0151:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0156:  ldloc.2
      IL_0157:  ldloc.3
      IL_0158:  ldc.i4.1
      IL_0159:  add
      IL_015a:  ldloc.s    V_4
      IL_015c:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_0161:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0166:  stloc.s    V_18
      IL_0168:  ldarg.0
      IL_0169:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_016e:  ldloc.s    V_18
      IL_0170:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
      IL_0175:  brtrue.s   IL_01ba

      IL_0177:  ldloc.s    V_12
      IL_0179:  ldc.i4.1
      IL_017a:  add
      IL_017b:  ldarg.0
      IL_017c:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_0181:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_0186:  ble.s      IL_0198

      IL_0188:  ldarg.0
      IL_0189:  ldloc.2
      IL_018a:  ldloc.3
      IL_018b:  ldloc.s    V_4
      IL_018d:  ldc.i4.0
      IL_018e:  call       instance void Game.SubsystemFluidBlockBehavior::Set(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32)
      IL_0193:  br         IL_03e4

      IL_0198:  ldarg.0
      IL_0199:  ldloc.2
      IL_019a:  ldloc.3
      IL_019b:  ldloc.s    V_4
      IL_019d:  ldloc.s    V_5
      IL_019f:  ldc.i4.0
      IL_01a0:  ldloc.s    V_6
      IL_01a2:  ldloc.s    V_12
      IL_01a4:  ldc.i4.1
      IL_01a5:  add
      IL_01a6:  call       int32 Game.FluidBlock::SetLevel(int32,
                                                           int32)
      IL_01ab:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_01b0:  call       instance void Game.SubsystemFluidBlockBehavior::Set(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32)
      IL_01b5:  br         IL_03e4

      IL_01ba:  ldarg.0
      IL_01bb:  ldfld      bool Game.SubsystemFluidBlockBehavior::m_generateSources
      IL_01c0:  brfalse.s  IL_01ea

      IL_01c2:  ldloc.s    V_7
      IL_01c4:  brfalse.s  IL_01ea

      IL_01c6:  ldloc.s    V_13
      IL_01c8:  ldc.i4.2
      IL_01c9:  blt.s      IL_01ea

      IL_01cb:  ldarg.0
      IL_01cc:  ldloc.2
      IL_01cd:  ldloc.3
      IL_01ce:  ldloc.s    V_4
      IL_01d0:  ldloc.s    V_5
      IL_01d2:  ldc.i4.0
      IL_01d3:  ldloc.s    V_6
      IL_01d5:  ldc.i4.0
      IL_01d6:  call       int32 Game.FluidBlock::SetLevel(int32,
                                                           int32)
      IL_01db:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_01e0:  call       instance void Game.SubsystemFluidBlockBehavior::Set(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32)
      IL_01e5:  br         IL_03e4

      IL_01ea:  ldarg.0
      IL_01eb:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_01f0:  ldloc.s    V_9
      IL_01f2:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
      IL_01f7:  brfalse.s  IL_0222

      IL_01f9:  ldloc.s    V_11
      IL_01fb:  ldc.i4.1
      IL_01fc:  ble        IL_03e4

      IL_0201:  ldarg.0
      IL_0202:  ldloc.2
      IL_0203:  ldloc.3
      IL_0204:  ldc.i4.1
      IL_0205:  sub
      IL_0206:  ldloc.s    V_4
      IL_0208:  ldloc.s    V_9
      IL_020a:  ldc.i4.0
      IL_020b:  ldloc.s    V_10
      IL_020d:  ldc.i4.1
      IL_020e:  call       int32 Game.FluidBlock::SetLevel(int32,
                                                           int32)
      IL_0213:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0218:  call       instance void Game.SubsystemFluidBlockBehavior::Set(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32)
      IL_021d:  br         IL_03e4

      IL_0222:  ldarg.0
      IL_0223:  ldloc.s    V_8
      IL_0225:  ldloc.2
      IL_0226:  ldloc.3
      IL_0227:  ldc.i4.1
      IL_0228:  sub
      IL_0229:  ldloc.s    V_4
      IL_022b:  ldarg.0
      IL_022c:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_0231:  ldfld      int32 Game.Block::BlockIndex
      IL_0236:  ldc.i4.0
      IL_0237:  ldc.i4.0
      IL_0238:  ldc.i4.1
      IL_0239:  call       int32 Game.FluidBlock::SetLevel(int32,
                                                           int32)
      IL_023e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0243:  callvirt   instance bool Game.SubsystemFluidBlockBehavior::OnFluidInteract(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32)
      IL_0248:  brtrue     IL_03e4

      IL_024d:  ldloc.s    V_7
      IL_024f:  ldarg.0
      IL_0250:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_0255:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_025a:  bge        IL_03e4

      IL_025f:  ldarg.0
      IL_0260:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_visited
      IL_0265:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::Clear()
      IL_026a:  ldarg.0
      IL_026b:  ldloc.2
      IL_026c:  ldc.i4.1
      IL_026d:  add
      IL_026e:  ldloc.3
      IL_026f:  ldloc.s    V_4
      IL_0271:  ldloc.s    V_7
      IL_0273:  ldc.i4.1
      IL_0274:  add
      IL_0275:  ldarg.0
      IL_0276:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_visited
      IL_027b:  call       instance int32 Game.SubsystemFluidBlockBehavior::LevelAtNearestFall(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>)
      IL_0280:  ldarg.0
      IL_0281:  ldloc.2
      IL_0282:  ldc.i4.1
      IL_0283:  sub
      IL_0284:  ldloc.3
      IL_0285:  ldloc.s    V_4
      IL_0287:  ldloc.s    V_7
      IL_0289:  ldc.i4.1
      IL_028a:  add
      IL_028b:  ldarg.0
      IL_028c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_visited
      IL_0291:  call       instance int32 Game.SubsystemFluidBlockBehavior::LevelAtNearestFall(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>)
      IL_0296:  stloc.s    V_19
      IL_0298:  ldarg.0
      IL_0299:  ldloc.2
      IL_029a:  ldloc.3
      IL_029b:  ldloc.s    V_4
      IL_029d:  ldc.i4.1
      IL_029e:  add
      IL_029f:  ldloc.s    V_7
      IL_02a1:  ldc.i4.1
      IL_02a2:  add
      IL_02a3:  ldarg.0
      IL_02a4:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_visited
      IL_02a9:  call       instance int32 Game.SubsystemFluidBlockBehavior::LevelAtNearestFall(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>)
      IL_02ae:  stloc.s    V_20
      IL_02b0:  ldarg.0
      IL_02b1:  ldloc.2
      IL_02b2:  ldloc.3
      IL_02b3:  ldloc.s    V_4
      IL_02b5:  ldc.i4.1
      IL_02b6:  sub
      IL_02b7:  ldloc.s    V_7
      IL_02b9:  ldc.i4.1
      IL_02ba:  add
      IL_02bb:  ldarg.0
      IL_02bc:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_visited
      IL_02c1:  call       instance int32 Game.SubsystemFluidBlockBehavior::LevelAtNearestFall(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>)
      IL_02c6:  stloc.s    V_21
      IL_02c8:  dup
      IL_02c9:  ldloc.s    V_19
      IL_02cb:  ldloc.s    V_20
      IL_02cd:  ldloc.s    V_21
      IL_02cf:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32,
                                                               int32,
                                                               int32)
      IL_02d4:  stloc.s    V_22
      IL_02d6:  ldloc.s    V_22
      IL_02d8:  bne.un.s   IL_0318

      IL_02da:  ldarg.0
      IL_02db:  ldloc.2
      IL_02dc:  ldc.i4.1
      IL_02dd:  add
      IL_02de:  ldloc.3
      IL_02df:  ldloc.s    V_4
      IL_02e1:  ldloc.s    V_7
      IL_02e3:  ldc.i4.1
      IL_02e4:  add
      IL_02e5:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_02ea:  ldarg.0
      IL_02eb:  ldloc.2
      IL_02ec:  ldloc.3
      IL_02ed:  ldloc.s    V_4
      IL_02ef:  ldc.i4.1
      IL_02f0:  sub
      IL_02f1:  ldarg.0
      IL_02f2:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_02f7:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_02fc:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_0301:  ldarg.0
      IL_0302:  ldloc.2
      IL_0303:  ldloc.3
      IL_0304:  ldloc.s    V_4
      IL_0306:  ldc.i4.1
      IL_0307:  add
      IL_0308:  ldarg.0
      IL_0309:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_030e:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_0313:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_0318:  ldloc.s    V_19
      IL_031a:  ldloc.s    V_22
      IL_031c:  bne.un.s   IL_035c

      IL_031e:  ldarg.0
      IL_031f:  ldloc.2
      IL_0320:  ldc.i4.1
      IL_0321:  sub
      IL_0322:  ldloc.3
      IL_0323:  ldloc.s    V_4
      IL_0325:  ldloc.s    V_7
      IL_0327:  ldc.i4.1
      IL_0328:  add
      IL_0329:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_032e:  ldarg.0
      IL_032f:  ldloc.2
      IL_0330:  ldloc.3
      IL_0331:  ldloc.s    V_4
      IL_0333:  ldc.i4.1
      IL_0334:  sub
      IL_0335:  ldarg.0
      IL_0336:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_033b:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_0340:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_0345:  ldarg.0
      IL_0346:  ldloc.2
      IL_0347:  ldloc.3
      IL_0348:  ldloc.s    V_4
      IL_034a:  ldc.i4.1
      IL_034b:  add
      IL_034c:  ldarg.0
      IL_034d:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_0352:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_0357:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_035c:  ldloc.s    V_20
      IL_035e:  ldloc.s    V_22
      IL_0360:  bne.un.s   IL_03a0

      IL_0362:  ldarg.0
      IL_0363:  ldloc.2
      IL_0364:  ldloc.3
      IL_0365:  ldloc.s    V_4
      IL_0367:  ldc.i4.1
      IL_0368:  add
      IL_0369:  ldloc.s    V_7
      IL_036b:  ldc.i4.1
      IL_036c:  add
      IL_036d:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_0372:  ldarg.0
      IL_0373:  ldloc.2
      IL_0374:  ldc.i4.1
      IL_0375:  sub
      IL_0376:  ldloc.3
      IL_0377:  ldloc.s    V_4
      IL_0379:  ldarg.0
      IL_037a:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_037f:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_0384:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_0389:  ldarg.0
      IL_038a:  ldloc.2
      IL_038b:  ldc.i4.1
      IL_038c:  add
      IL_038d:  ldloc.3
      IL_038e:  ldloc.s    V_4
      IL_0390:  ldarg.0
      IL_0391:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_0396:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_039b:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_03a0:  ldloc.s    V_21
      IL_03a2:  ldloc.s    V_22
      IL_03a4:  bne.un.s   IL_03e4

      IL_03a6:  ldarg.0
      IL_03a7:  ldloc.2
      IL_03a8:  ldloc.3
      IL_03a9:  ldloc.s    V_4
      IL_03ab:  ldc.i4.1
      IL_03ac:  sub
      IL_03ad:  ldloc.s    V_7
      IL_03af:  ldc.i4.1
      IL_03b0:  add
      IL_03b1:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_03b6:  ldarg.0
      IL_03b7:  ldloc.2
      IL_03b8:  ldc.i4.1
      IL_03b9:  sub
      IL_03ba:  ldloc.3
      IL_03bb:  ldloc.s    V_4
      IL_03bd:  ldarg.0
      IL_03be:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_03c3:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_03c8:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_03cd:  ldarg.0
      IL_03ce:  ldloc.2
      IL_03cf:  ldc.i4.1
      IL_03d0:  add
      IL_03d1:  ldloc.3
      IL_03d2:  ldloc.s    V_4
      IL_03d4:  ldarg.0
      IL_03d5:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
      IL_03da:  ldfld      int32 Game.FluidBlock::MaxLevel
      IL_03df:  call       instance void Game.SubsystemFluidBlockBehavior::FlowTo(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
      IL_03e4:  ldloca.s   V_1
      IL_03e6:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::MoveNext()
      IL_03eb:  brtrue     IL_001d

      IL_03f0:  leave.s    IL_0400

    }  // end .try
    finally
    {
      IL_03f2:  ldloca.s   V_1
      IL_03f4:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>
      IL_03fa:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_03ff:  endfinally
    }  // end handler
    IL_0400:  ldarg.0
    IL_0401:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemFluidBlockBehavior::m_toUpdate
    IL_0406:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::Clear()
    IL_040b:  ldarg.0
    IL_040c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_toSet
    IL_0411:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::GetEnumerator()
    IL_0416:  stloc.s    V_23
    .try
    {
      IL_0418:  br         IL_04c4

      IL_041d:  ldloca.s   V_23
      IL_041f:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::get_Current()
      IL_0424:  stloc.s    V_24
      IL_0426:  ldloca.s   V_24
      IL_0428:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_042d:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0432:  stloc.s    V_25
      IL_0434:  ldloca.s   V_24
      IL_0436:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_043b:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0440:  stloc.s    V_26
      IL_0442:  ldloca.s   V_24
      IL_0444:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0449:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_044e:  stloc.s    V_27
      IL_0450:  ldloca.s   V_24
      IL_0452:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Value()
      IL_0457:  stloc.s    V_28
      IL_0459:  ldloca.s   V_24
      IL_045b:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Value()
      IL_0460:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0465:  stloc.s    V_29
      IL_0467:  ldarg.0
      IL_0468:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_046d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0472:  ldloc.s    V_25
      IL_0474:  ldloc.s    V_26
      IL_0476:  ldloc.s    V_27
      IL_0478:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                            int32,
                                                                            int32)
      IL_047d:  stloc.s    V_30
      IL_047f:  call       class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
      IL_0484:  ldloc.s    V_30
      IL_0486:  ldelem.ref
      IL_0487:  stloc.s    V_31
      IL_0489:  ldloc.s    V_31
      IL_048b:  brfalse.s  IL_04b0

      IL_048d:  ldloc.s    V_31
      IL_048f:  ldloc.s    V_29
      IL_0491:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
      IL_0496:  brtrue.s   IL_04b0

      IL_0498:  ldarg.0
      IL_0499:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_049e:  ldc.i4.0
      IL_049f:  ldloc.s    V_25
      IL_04a1:  ldloc.s    V_26
      IL_04a3:  ldloc.s    V_27
      IL_04a5:  ldloc.s    V_28
      IL_04a7:  ldc.i4.0
      IL_04a8:  ldc.i4.0
      IL_04a9:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            bool,
                                                                            bool)
      IL_04ae:  br.s       IL_04c4

      IL_04b0:  ldarg.0
      IL_04b1:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_04b6:  ldloc.s    V_25
      IL_04b8:  ldloc.s    V_26
      IL_04ba:  ldloc.s    V_27
      IL_04bc:  ldloc.s    V_28
      IL_04be:  ldc.i4.1
      IL_04bf:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_04c4:  ldloca.s   V_23
      IL_04c6:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::MoveNext()
      IL_04cb:  brtrue     IL_041d

      IL_04d0:  leave.s    IL_04e0

    }  // end .try
    finally
    {
      IL_04d2:  ldloca.s   V_23
      IL_04d4:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>
      IL_04da:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_04df:  endfinally
    }  // end handler
    IL_04e0:  ldarg.0
    IL_04e1:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_toSet
    IL_04e6:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::Clear()
    IL_04eb:  ldarg.0
    IL_04ec:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_04f1:  callvirt   instance void Game.SubsystemTerrain::ProcessModifiedCells()
    IL_04f6:  ldloc.0
    IL_04f7:  ldc.i4.1
    IL_04f8:  add
    IL_04f9:  stloc.0
    IL_04fa:  ldloc.0
    IL_04fb:  ldc.i4.2
    IL_04fc:  blt        IL_0007

    IL_0501:  ret
  } // end of method SubsystemFluidBlockBehavior::SpreadFluid

  .method family hidebysig newslot virtual 
          instance bool  OnFluidInteract(int32 interactValue,
                                         int32 x,
                                         int32 y,
                                         int32 z,
                                         int32 fluidValue) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.1
    IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_000b:  ldelem.ref
    IL_000c:  ldfld      bool Game.Block::IsFluidBlocker
    IL_0011:  brtrue.s   IL_0034

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0019:  ldc.i4.0
    IL_001a:  ldarg.2
    IL_001b:  ldarg.3
    IL_001c:  ldarg.s    z
    IL_001e:  ldc.i4.0
    IL_001f:  ldc.i4.0
    IL_0020:  ldc.i4.0
    IL_0021:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0026:  ldarg.0
    IL_0027:  ldarg.2
    IL_0028:  ldarg.3
    IL_0029:  ldarg.s    z
    IL_002b:  ldarg.s    fluidValue
    IL_002d:  call       instance void Game.SubsystemFluidBlockBehavior::Set(int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0032:  ldc.i4.1
    IL_0033:  ret

    IL_0034:  ldc.i4.0
    IL_0035:  ret
  } // end of method SubsystemFluidBlockBehavior::OnFluidInteract

  .method family hidebysig instance valuetype [System.Runtime]System.Nullable`1<float32> 
          CalculateDistanceToFluid(valuetype [Engine]Engine.Vector3 p,
                                   int32 radius,
                                   bool flowingFluidOnly) cil managed
  {
    // 代码大小       401 (0x191)
    .maxstack  4
    .locals init (float32 V_0,
             class Game.TerrainData V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             int32 V_16,
             valuetype [System.Runtime]System.Nullable`1<float32> V_17)
    IL_0000:  ldc.r4     3.4028235e+038
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_000c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0011:  stloc.1
    IL_0012:  ldarg.1
    IL_0013:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0018:  conv.i4
    IL_0019:  ldarg.2
    IL_001a:  sub
    IL_001b:  stloc.2
    IL_001c:  ldarg.1
    IL_001d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0022:  conv.i4
    IL_0023:  ldarg.2
    IL_0024:  add
    IL_0025:  stloc.3
    IL_0026:  ldarg.1
    IL_0027:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_002c:  conv.i4
    IL_002d:  ldarg.2
    IL_002e:  sub
    IL_002f:  ldc.i4.0
    IL_0030:  ldloc.1
    IL_0031:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_0036:  ldc.i4.2
    IL_0037:  sub
    IL_0038:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_003d:  stloc.s    V_4
    IL_003f:  ldarg.1
    IL_0040:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0045:  conv.i4
    IL_0046:  ldarg.2
    IL_0047:  add
    IL_0048:  ldc.i4.0
    IL_0049:  ldloc.1
    IL_004a:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_004f:  ldc.i4.2
    IL_0050:  sub
    IL_0051:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0056:  stloc.s    V_5
    IL_0058:  ldarg.1
    IL_0059:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005e:  conv.i4
    IL_005f:  ldarg.2
    IL_0060:  sub
    IL_0061:  ldarg.1
    IL_0062:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0067:  conv.i4
    IL_0068:  ldarg.2
    IL_0069:  add
    IL_006a:  stloc.s    V_6
    IL_006c:  stloc.s    V_7
    IL_006e:  br         IL_0169

    IL_0073:  ldloc.2
    IL_0074:  stloc.s    V_8
    IL_0076:  br         IL_015b

    IL_007b:  ldloc.1
    IL_007c:  ldloc.s    V_8
    IL_007e:  ldloc.s    V_7
    IL_0080:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_0085:  brfalse    IL_0155

    IL_008a:  ldloc.1
    IL_008b:  ldloc.s    V_8
    IL_008d:  ldloc.s    V_4
    IL_008f:  ldloc.s    V_7
    IL_0091:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0096:  stloc.s    V_9
    IL_0098:  ldloc.s    V_4
    IL_009a:  stloc.s    V_10
    IL_009c:  br         IL_014c

    IL_00a1:  ldloc.1
    IL_00a2:  ldloc.s    V_9
    IL_00a4:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_00a9:  stloc.s    V_11
    IL_00ab:  ldloc.s    V_11
    IL_00ad:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00b2:  stloc.s    V_12
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_00ba:  ldloc.s    V_12
    IL_00bc:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
    IL_00c1:  brfalse.s  IL_0140

    IL_00c3:  ldarg.3
    IL_00c4:  brfalse.s  IL_00f4

    IL_00c6:  ldloc.s    V_11
    IL_00c8:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_00cd:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_00d2:  brfalse.s  IL_0140

    IL_00d4:  ldloc.1
    IL_00d5:  ldloc.s    V_9
    IL_00d7:  ldc.i4.1
    IL_00d8:  add
    IL_00d9:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_00de:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00e3:  stloc.s    V_16
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_00eb:  ldloc.s    V_16
    IL_00ed:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
    IL_00f2:  brtrue.s   IL_0140

    IL_00f4:  ldarg.1
    IL_00f5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00fa:  ldloc.s    V_8
    IL_00fc:  conv.r4
    IL_00fd:  ldc.r4     0.5
    IL_0102:  add
    IL_0103:  sub
    IL_0104:  ldarg.1
    IL_0105:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_010a:  ldloc.s    V_10
    IL_010c:  conv.r4
    IL_010d:  ldc.r4     1.
    IL_0112:  add
    IL_0113:  sub
    IL_0114:  stloc.s    V_13
    IL_0116:  ldarg.1
    IL_0117:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_011c:  ldloc.s    V_7
    IL_011e:  conv.r4
    IL_011f:  ldc.r4     0.5
    IL_0124:  add
    IL_0125:  sub
    IL_0126:  stloc.s    V_14
    IL_0128:  dup
    IL_0129:  mul
    IL_012a:  ldloc.s    V_13
    IL_012c:  ldloc.s    V_13
    IL_012e:  mul
    IL_012f:  add
    IL_0130:  ldloc.s    V_14
    IL_0132:  ldloc.s    V_14
    IL_0134:  mul
    IL_0135:  add
    IL_0136:  stloc.s    V_15
    IL_0138:  ldloc.s    V_15
    IL_013a:  ldloc.0
    IL_013b:  bge.un.s   IL_0140

    IL_013d:  ldloc.s    V_15
    IL_013f:  stloc.0
    IL_0140:  ldloc.s    V_10
    IL_0142:  ldc.i4.1
    IL_0143:  add
    IL_0144:  stloc.s    V_10
    IL_0146:  ldloc.s    V_9
    IL_0148:  ldc.i4.1
    IL_0149:  add
    IL_014a:  stloc.s    V_9
    IL_014c:  ldloc.s    V_10
    IL_014e:  ldloc.s    V_5
    IL_0150:  ble        IL_00a1

    IL_0155:  ldloc.s    V_8
    IL_0157:  ldc.i4.1
    IL_0158:  add
    IL_0159:  stloc.s    V_8
    IL_015b:  ldloc.s    V_8
    IL_015d:  ldloc.3
    IL_015e:  ble        IL_007b

    IL_0163:  ldloc.s    V_7
    IL_0165:  ldc.i4.1
    IL_0166:  add
    IL_0167:  stloc.s    V_7
    IL_0169:  ldloc.s    V_7
    IL_016b:  ldloc.s    V_6
    IL_016d:  ble        IL_0073

    IL_0172:  ldloc.0
    IL_0173:  ldc.r4     3.4028235e+038
    IL_0178:  bne.un.s   IL_0185

    IL_017a:  ldloca.s   V_17
    IL_017c:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_0182:  ldloc.s    V_17
    IL_0184:  ret

    IL_0185:  ldloc.0
    IL_0186:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_018b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0190:  ret
  } // end of method SubsystemFluidBlockBehavior::CalculateDistanceToFluid

  .method family hidebysig instance void 
          Set(int32 x,
              int32 y,
              int32 z,
              int32 'value') cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_toSet
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::ContainsKey(!0)
    IL_0016:  brtrue.s   IL_0026

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFluidBlockBehavior::m_toSet
    IL_001e:  ldloc.0
    IL_001f:  ldarg.s    'value'
    IL_0021:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_0026:  ret
  } // end of method SubsystemFluidBlockBehavior::Set

  .method private hidebysig instance void 
          FlowTo(int32 x,
                 int32 y,
                 int32 z,
                 int32 level) cil managed
  {
    // 代码大小       137 (0x89)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.s    level
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_0008:  ldfld      int32 Game.FluidBlock::MaxLevel
    IL_000d:  bgt.s      IL_0088

    IL_000f:  ldarg.0
    IL_0010:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0015:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_001a:  ldarg.1
    IL_001b:  ldarg.2
    IL_001c:  ldarg.3
    IL_001d:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0022:  stloc.0
    IL_0023:  ldloc.0
    IL_0024:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0029:  stloc.1
    IL_002a:  ldloc.0
    IL_002b:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0030:  stloc.2
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
    IL_003d:  brfalse.s  IL_0064

    IL_003f:  ldloc.2
    IL_0040:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_0045:  stloc.3
    IL_0046:  ldarg.s    level
    IL_0048:  ldloc.3
    IL_0049:  bge.s      IL_0088

    IL_004b:  ldarg.0
    IL_004c:  ldarg.1
    IL_004d:  ldarg.2
    IL_004e:  ldarg.3
    IL_004f:  ldloc.1
    IL_0050:  ldc.i4.0
    IL_0051:  ldloc.2
    IL_0052:  ldarg.s    level
    IL_0054:  call       int32 Game.FluidBlock::SetLevel(int32,
                                                         int32)
    IL_0059:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_005e:  call       instance void Game.SubsystemFluidBlockBehavior::Set(int32,
                                                                             int32,
                                                                             int32,
                                                                             int32)
    IL_0063:  ret

    IL_0064:  ldarg.0
    IL_0065:  ldloc.0
    IL_0066:  ldarg.1
    IL_0067:  ldarg.2
    IL_0068:  ldarg.3
    IL_0069:  ldarg.0
    IL_006a:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_006f:  ldfld      int32 Game.Block::BlockIndex
    IL_0074:  ldc.i4.0
    IL_0075:  ldc.i4.0
    IL_0076:  ldarg.s    level
    IL_0078:  call       int32 Game.FluidBlock::SetLevel(int32,
                                                         int32)
    IL_007d:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0082:  callvirt   instance bool Game.SubsystemFluidBlockBehavior::OnFluidInteract(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32)
    IL_0087:  pop
    IL_0088:  ret
  } // end of method SubsystemFluidBlockBehavior::FlowTo

  .method private hidebysig instance int32 
          LevelAtNearestFall(int32 x,
                             int32 y,
                             int32 z,
                             int32 level,
                             class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> levels) cil managed
  {
    // 代码大小       304 (0x130)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.Block V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
    IL_0000:  ldarg.s    level
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_0008:  ldfld      int32 Game.FluidBlock::MaxLevel
    IL_000d:  ble.s      IL_0015

    IL_000f:  ldc.i4     0x7fffffff
    IL_0014:  ret

    IL_0015:  ldarg.s    levels
    IL_0017:  ldarg.1
    IL_0018:  ldarg.2
    IL_0019:  ldarg.3
    IL_001a:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_001f:  ldloca.s   V_0
    IL_0021:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::TryGetValue(!0,
                                                                                                                                                             !1&)
    IL_0026:  brtrue.s   IL_002e

    IL_0028:  ldc.i4     0x7fffffff
    IL_002d:  stloc.0
    IL_002e:  ldarg.s    level
    IL_0030:  ldloc.0
    IL_0031:  blt.s      IL_0039

    IL_0033:  ldc.i4     0x7fffffff
    IL_0038:  ret

    IL_0039:  ldarg.s    levels
    IL_003b:  ldarg.1
    IL_003c:  ldarg.2
    IL_003d:  ldarg.3
    IL_003e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0043:  ldarg.s    level
    IL_0045:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_004a:  ldarg.0
    IL_004b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0050:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0055:  ldarg.1
    IL_0056:  ldarg.2
    IL_0057:  ldarg.3
    IL_0058:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_005d:  stloc.1
    IL_005e:  ldloc.1
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0064:  stloc.2
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_006b:  ldloc.2
    IL_006c:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
    IL_0071:  brfalse.s  IL_0088

    IL_0073:  ldloc.1
    IL_0074:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0079:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_007e:  ldarg.s    level
    IL_0080:  bge.s      IL_009c

    IL_0082:  ldc.i4     0x7fffffff
    IL_0087:  ret

    IL_0088:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_008d:  ldloc.2
    IL_008e:  ldelem.ref
    IL_008f:  ldfld      bool Game.Block::IsFluidBlocker
    IL_0094:  brfalse.s  IL_009c

    IL_0096:  ldc.i4     0x7fffffff
    IL_009b:  ret

    IL_009c:  ldarg.0
    IL_009d:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00a2:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a7:  ldarg.1
    IL_00a8:  ldarg.2
    IL_00a9:  ldc.i4.1
    IL_00aa:  sub
    IL_00ab:  ldarg.3
    IL_00ac:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_00b1:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00b6:  stloc.3
    IL_00b7:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00bc:  ldloc.3
    IL_00bd:  ldelem.ref
    IL_00be:  stloc.s    V_4
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class Game.FluidBlock Game.SubsystemFluidBlockBehavior::m_fluidBlock
    IL_00c6:  ldloc.3
    IL_00c7:  callvirt   instance bool Game.FluidBlock::IsTheSameFluid(int32)
    IL_00cc:  brtrue.s   IL_00d7

    IL_00ce:  ldloc.s    V_4
    IL_00d0:  ldfld      bool Game.Block::IsFluidBlocker
    IL_00d5:  brtrue.s   IL_00da

    IL_00d7:  ldarg.s    level
    IL_00d9:  ret

    IL_00da:  ldarg.0
    IL_00db:  ldarg.1
    IL_00dc:  ldc.i4.1
    IL_00dd:  sub
    IL_00de:  ldarg.2
    IL_00df:  ldarg.3
    IL_00e0:  ldarg.s    level
    IL_00e2:  ldc.i4.1
    IL_00e3:  add
    IL_00e4:  ldarg.s    levels
    IL_00e6:  call       instance int32 Game.SubsystemFluidBlockBehavior::LevelAtNearestFall(int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>)
    IL_00eb:  ldarg.0
    IL_00ec:  ldarg.1
    IL_00ed:  ldc.i4.1
    IL_00ee:  add
    IL_00ef:  ldarg.2
    IL_00f0:  ldarg.3
    IL_00f1:  ldarg.s    level
    IL_00f3:  ldc.i4.1
    IL_00f4:  add
    IL_00f5:  ldarg.s    levels
    IL_00f7:  call       instance int32 Game.SubsystemFluidBlockBehavior::LevelAtNearestFall(int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>)
    IL_00fc:  stloc.s    V_5
    IL_00fe:  ldarg.0
    IL_00ff:  ldarg.1
    IL_0100:  ldarg.2
    IL_0101:  ldarg.3
    IL_0102:  ldc.i4.1
    IL_0103:  sub
    IL_0104:  ldarg.s    level
    IL_0106:  ldc.i4.1
    IL_0107:  add
    IL_0108:  ldarg.s    levels
    IL_010a:  call       instance int32 Game.SubsystemFluidBlockBehavior::LevelAtNearestFall(int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>)
    IL_010f:  stloc.s    V_6
    IL_0111:  ldarg.0
    IL_0112:  ldarg.1
    IL_0113:  ldarg.2
    IL_0114:  ldarg.3
    IL_0115:  ldc.i4.1
    IL_0116:  add
    IL_0117:  ldarg.s    level
    IL_0119:  ldc.i4.1
    IL_011a:  add
    IL_011b:  ldarg.s    levels
    IL_011d:  call       instance int32 Game.SubsystemFluidBlockBehavior::LevelAtNearestFall(int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             int32,
                                                                                             class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>)
    IL_0122:  stloc.s    V_7
    IL_0124:  ldloc.s    V_5
    IL_0126:  ldloc.s    V_6
    IL_0128:  ldloc.s    V_7
    IL_012a:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32,
                                                             int32,
                                                             int32)
    IL_012f:  ret
  } // end of method SubsystemFluidBlockBehavior::LevelAtNearestFall

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  5
    IL_0000:  ldc.i4.4
    IL_0001:  newarr     [Engine]Engine.Point2
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.m1
    IL_0009:  ldc.i4.0
    IL_000a:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_000f:  stelem     [Engine]Engine.Point2
    IL_0014:  dup
    IL_0015:  ldc.i4.1
    IL_0016:  ldc.i4.1
    IL_0017:  ldc.i4.0
    IL_0018:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_001d:  stelem     [Engine]Engine.Point2
    IL_0022:  dup
    IL_0023:  ldc.i4.2
    IL_0024:  ldc.i4.0
    IL_0025:  ldc.i4.m1
    IL_0026:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_002b:  stelem     [Engine]Engine.Point2
    IL_0030:  dup
    IL_0031:  ldc.i4.3
    IL_0032:  ldc.i4.0
    IL_0033:  ldc.i4.1
    IL_0034:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0039:  stelem     [Engine]Engine.Point2
    IL_003e:  stsfld     valuetype [Engine]Engine.Point2[] Game.SubsystemFluidBlockBehavior::m_sideNeighbors
    IL_0043:  ret
  } // end of method SubsystemFluidBlockBehavior::.cctor

  .property instance class Game.SubsystemTime
          SubsystemTime()
  {
    .get instance class Game.SubsystemTime Game.SubsystemFluidBlockBehavior::get_SubsystemTime()
    .set instance void Game.SubsystemFluidBlockBehavior::set_SubsystemTime(class Game.SubsystemTime)
  } // end of property SubsystemFluidBlockBehavior::SubsystemTime
  .property instance class Game.SubsystemAudio
          SubsystemAudio()
  {
    .get instance class Game.SubsystemAudio Game.SubsystemFluidBlockBehavior::get_SubsystemAudio()
    .set instance void Game.SubsystemFluidBlockBehavior::set_SubsystemAudio(class Game.SubsystemAudio)
  } // end of property SubsystemFluidBlockBehavior::SubsystemAudio
  .property instance class Game.SubsystemAmbientSounds
          SubsystemAmbientSounds()
  {
    .get instance class Game.SubsystemAmbientSounds Game.SubsystemFluidBlockBehavior::get_SubsystemAmbientSounds()
    .set instance void Game.SubsystemFluidBlockBehavior::set_SubsystemAmbientSounds(class Game.SubsystemAmbientSounds)
  } // end of property SubsystemFluidBlockBehavior::SubsystemAmbientSounds
} // end of class Game.SubsystemFluidBlockBehavior