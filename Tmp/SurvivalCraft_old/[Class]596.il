.class public auto ansi beforefieldinit Game.SubsystemSnowBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   61
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemSnowBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0015:  call       bool Game.SubsystemSnowBlockBehavior::CanSupportSnow(int32)
    IL_001a:  brtrue.s   IL_002e

    IL_001c:  ldarg.0
    IL_001d:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0022:  ldc.i4.0
    IL_0023:  ldarg.1
    IL_0024:  ldarg.2
    IL_0025:  ldarg.3
    IL_0026:  ldc.i4.0
    IL_0027:  ldc.i4.0
    IL_0028:  ldc.i4.0
    IL_0029:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_002e:  ret
  } // end of method SubsystemSnowBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig static bool  CanSupportSnow(int32 'value') cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  2
    .locals init (int32 V_0,
             class Game.Block V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldfld      bool Game.Block::IsTransparent
    IL_0015:  brfalse.s  IL_0021

    IL_0017:  ldloc.1
    IL_0018:  isinst     Game.LeavesBlock
    IL_001d:  ldnull
    IL_001e:  cgt.un
    IL_0020:  ret

    IL_0021:  ldc.i4.1
    IL_0022:  ret
  } // end of method SubsystemSnowBlockBehavior::CanSupportSnow

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemSnowBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemSnowBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemSnowBlockBehavior::HandledBlocks
} // end of class Game.SubsystemSnowBlockBehavior