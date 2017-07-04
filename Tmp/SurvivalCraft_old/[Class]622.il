.class public auto ansi beforefieldinit Game.SubsystemLadderBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   59
    IL_000a:  stelem.i4
    IL_000b:  dup
    IL_000c:  ldc.i4.1
    IL_000d:  ldc.i4     0xd5
    IL_0012:  stelem.i4
    IL_0013:  ret
  } // end of method SubsystemLadderBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       120 (0x78)
    .maxstack  8
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Point3 V_1,
             int32 V_2,
             int32 V_3)
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
    IL_0018:  call       int32 Game.LadderBlock::GetFace(int32)
    IL_001d:  stloc.0
    IL_001e:  ldloc.0
    IL_001f:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0024:  stloc.1
    IL_0025:  ldarg.0
    IL_0026:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_002b:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0030:  ldarg.1
    IL_0031:  ldloc.1
    IL_0032:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0037:  sub
    IL_0038:  ldarg.2
    IL_0039:  ldloc.1
    IL_003a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_003f:  sub
    IL_0040:  ldarg.3
    IL_0041:  ldloc.1
    IL_0042:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0047:  sub
    IL_0048:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_004d:  stloc.2
    IL_004e:  ldloc.2
    IL_004f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0054:  stloc.3
    IL_0055:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_005a:  ldloc.3
    IL_005b:  ldelem.ref
    IL_005c:  ldloc.0
    IL_005d:  ldloc.2
    IL_005e:  callvirt   instance bool Game.Block::IsFaceTransparent(int32,
                                                                     int32)
    IL_0063:  brfalse.s  IL_0077

    IL_0065:  ldarg.0
    IL_0066:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_006b:  ldc.i4.0
    IL_006c:  ldarg.1
    IL_006d:  ldarg.2
    IL_006e:  ldarg.3
    IL_006f:  ldc.i4.0
    IL_0070:  ldc.i4.0
    IL_0071:  ldc.i4.0
    IL_0072:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0077:  ret
  } // end of method SubsystemLadderBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemLadderBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemLadderBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemLadderBlockBehavior::HandledBlocks
} // end of class Game.SubsystemLadderBlockBehavior