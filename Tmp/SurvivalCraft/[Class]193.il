.class public abstract auto ansi beforefieldinit Game.WaterPlantBlock
       extends Game.WaterBlock
{
  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.BlockPlacementData V_3)
    IL_0000:  ldarga.s   raycastResult
    IL_0002:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0007:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_000c:  ldarg.s    raycastResult
    IL_000e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0013:  ldfld      int32 Game.CellFace::Face
    IL_0018:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_001d:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Addition(valuetype [Engine]Engine.Point3,
                                                                                            valuetype [Engine]Engine.Point3)
    IL_0022:  stloc.0
    IL_0023:  ldarg.1
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldloc.0
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldloc.0
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0035:  ldloc.0
    IL_0036:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003b:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0040:  dup
    IL_0041:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0046:  stloc.1
    IL_0047:  call       int32 Game.Terrain::ExtractData(int32)
    IL_004c:  stloc.2
    IL_004d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0052:  ldloc.1
    IL_0053:  ldelem.ref
    IL_0054:  isinst     Game.WaterBlock
    IL_0059:  brfalse.s  IL_0087

    IL_005b:  ldloca.s   V_3
    IL_005d:  initobj    Game.BlockPlacementData
    IL_0063:  ldloca.s   V_3
    IL_0065:  ldarg.s    raycastResult
    IL_0067:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_006c:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0071:  ldloca.s   V_3
    IL_0073:  ldarg.0
    IL_0074:  ldfld      int32 Game.Block::BlockIndex
    IL_0079:  ldc.i4.0
    IL_007a:  ldloc.2
    IL_007b:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0080:  stfld      int32 Game.BlockPlacementData::Value
    IL_0085:  ldloc.3
    IL_0086:  ret

    IL_0087:  ldloca.s   V_3
    IL_0089:  initobj    Game.BlockPlacementData
    IL_008f:  ldloc.3
    IL_0090:  ret
  } // end of method WaterPlantBlock::GetPlacementValue

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.WaterBlock::.ctor()
    IL_0006:  ret
  } // end of method WaterPlantBlock::.ctor

} // end of class Game.WaterPlantBlock