.class public auto ansi beforefieldinit Game.SubsystemFenceBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemFenceBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  stloc.0
    IL_0014:  ldarg.0
    IL_0015:  ldloc.0
    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  ldarg.3
    IL_0019:  call       instance void Game.SubsystemFenceBlockBehavior::UpdateVariant(int32,
                                                                                       int32,
                                                                                       int32,
                                                                                       int32)
    IL_001e:  ret
  } // end of method SubsystemFenceBlockBehavior::OnNeighborBlockChanged

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
    IL_0007:  call       instance void Game.SubsystemFenceBlockBehavior::UpdateVariant(int32,
                                                                                       int32,
                                                                                       int32,
                                                                                       int32)
    IL_000c:  ret
  } // end of method SubsystemFenceBlockBehavior::OnBlockAdded

  .method private hidebysig instance void 
          UpdateVariant(int32 'value',
                        int32 x,
                        int32 y,
                        int32 z) cil managed
  {
    // 代码大小       229 (0xe5)
    .maxstack  6
    .locals init (int32 V_0,
             class Game.FenceBlock V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  isinst     Game.FenceBlock
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  brfalse    IL_00e4

    IL_001a:  ldarg.0
    IL_001b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0020:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0025:  ldarg.2
    IL_0026:  ldc.i4.1
    IL_0027:  add
    IL_0028:  ldarg.3
    IL_0029:  ldarg.s    z
    IL_002b:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0030:  stloc.2
    IL_0031:  ldarg.0
    IL_0032:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0037:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003c:  ldarg.2
    IL_003d:  ldc.i4.1
    IL_003e:  sub
    IL_003f:  ldarg.3
    IL_0040:  ldarg.s    z
    IL_0042:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0047:  stloc.3
    IL_0048:  ldarg.0
    IL_0049:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_004e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0053:  ldarg.2
    IL_0054:  ldarg.3
    IL_0055:  ldarg.s    z
    IL_0057:  ldc.i4.1
    IL_0058:  add
    IL_0059:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_005e:  stloc.s    V_4
    IL_0060:  ldarg.0
    IL_0061:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0066:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_006b:  ldarg.2
    IL_006c:  ldarg.3
    IL_006d:  ldarg.s    z
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0076:  stloc.s    V_5
    IL_0078:  ldc.i4.0
    IL_0079:  stloc.s    V_6
    IL_007b:  ldloc.1
    IL_007c:  ldloc.2
    IL_007d:  callvirt   instance bool Game.FenceBlock::ShouldConnectTo(int32)
    IL_0082:  brfalse.s  IL_008a

    IL_0084:  ldloc.s    V_6
    IL_0086:  ldc.i4.1
    IL_0087:  add
    IL_0088:  stloc.s    V_6
    IL_008a:  ldloc.1
    IL_008b:  ldloc.3
    IL_008c:  callvirt   instance bool Game.FenceBlock::ShouldConnectTo(int32)
    IL_0091:  brfalse.s  IL_0099

    IL_0093:  ldloc.s    V_6
    IL_0095:  ldc.i4.2
    IL_0096:  add
    IL_0097:  stloc.s    V_6
    IL_0099:  ldloc.1
    IL_009a:  ldloc.s    V_4
    IL_009c:  callvirt   instance bool Game.FenceBlock::ShouldConnectTo(int32)
    IL_00a1:  brfalse.s  IL_00a9

    IL_00a3:  ldloc.s    V_6
    IL_00a5:  ldc.i4.4
    IL_00a6:  add
    IL_00a7:  stloc.s    V_6
    IL_00a9:  ldloc.1
    IL_00aa:  ldloc.s    V_5
    IL_00ac:  callvirt   instance bool Game.FenceBlock::ShouldConnectTo(int32)
    IL_00b1:  brfalse.s  IL_00b9

    IL_00b3:  ldloc.s    V_6
    IL_00b5:  ldc.i4.8
    IL_00b6:  add
    IL_00b7:  stloc.s    V_6
    IL_00b9:  ldarg.1
    IL_00ba:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_00bf:  stloc.s    V_7
    IL_00c1:  ldarg.1
    IL_00c2:  ldloc.s    V_7
    IL_00c4:  ldloc.s    V_6
    IL_00c6:  call       int32 Game.FenceBlock::SetVariant(int32,
                                                           int32)
    IL_00cb:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_00d0:  stloc.s    V_8
    IL_00d2:  ldarg.0
    IL_00d3:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00d8:  ldarg.2
    IL_00d9:  ldarg.3
    IL_00da:  ldarg.s    z
    IL_00dc:  ldloc.s    V_8
    IL_00de:  ldc.i4.1
    IL_00df:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_00e4:  ret
  } // end of method SubsystemFenceBlockBehavior::UpdateVariant

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemFenceBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemFenceBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemFenceBlockBehavior::HandledBlocks
} // end of class Game.SubsystemFenceBlockBehavior