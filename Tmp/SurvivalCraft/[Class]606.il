.class public auto ansi beforefieldinit Game.SubsystemWaterPlantBlockBehavior
       extends Game.SubsystemInWaterBlockBehavior
{
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemWaterPlantBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    neighborX
    IL_0006:  ldarg.s    neighborY
    IL_0008:  ldarg.s    neighborZ
    IL_000a:  call       instance void Game.SubsystemFluidBlockBehavior::OnNeighborBlockChanged(int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32)
    IL_000f:  ldarg.0
    IL_0010:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0015:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_001a:  ldarg.1
    IL_001b:  ldarg.2
    IL_001c:  ldarg.3
    IL_001d:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0022:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0027:  stloc.0
    IL_0028:  ldarg.0
    IL_0029:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_002e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0033:  ldarg.1
    IL_0034:  ldarg.2
    IL_0035:  ldc.i4.1
    IL_0036:  sub
    IL_0037:  ldarg.3
    IL_0038:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_003d:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0042:  stloc.1
    IL_0043:  ldloc.1
    IL_0044:  ldc.i4.2
    IL_0045:  beq.s      IL_0066

    IL_0047:  ldloc.1
    IL_0048:  ldc.i4.7
    IL_0049:  beq.s      IL_0066

    IL_004b:  ldloc.1
    IL_004c:  ldc.i4.s   72
    IL_004e:  beq.s      IL_0066

    IL_0050:  ldloc.1
    IL_0051:  ldloc.0
    IL_0052:  beq.s      IL_0066

    IL_0054:  ldarg.0
    IL_0055:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_005a:  ldc.i4.0
    IL_005b:  ldarg.1
    IL_005c:  ldarg.2
    IL_005d:  ldarg.3
    IL_005e:  ldc.i4.0
    IL_005f:  ldc.i4.0
    IL_0060:  ldc.i4.0
    IL_0061:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0066:  ret
  } // end of method SubsystemWaterPlantBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemInWaterBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemWaterPlantBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemWaterPlantBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemWaterPlantBlockBehavior::HandledBlocks
} // end of class Game.SubsystemWaterPlantBlockBehavior