.class public abstract auto ansi beforefieldinit Game.BottomSuckerBlock
       extends Game.WaterBlock
{
  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       178 (0xb2)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype Game.BlockPlacementData V_4)
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldloc.0
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldloc.0
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0035:  ldloc.0
    IL_0036:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003b:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0040:  dup
    IL_0041:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0046:  stloc.1
    IL_0047:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_004c:  stloc.2
    IL_004d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0052:  ldloc.1
    IL_0053:  ldelem.ref
    IL_0054:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0059:  ldc.i4.4
    IL_005a:  rem
    IL_005b:  stloc.3
    IL_005c:  isinst     Game.WaterBlock
    IL_0061:  brfalse.s  IL_00a7

    IL_0063:  ldloca.s   V_4
    IL_0065:  initobj    Game.BlockPlacementData
    IL_006b:  ldloca.s   V_4
    IL_006d:  ldarg.s    raycastResult
    IL_006f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0074:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0079:  ldloca.s   V_4
    IL_007b:  ldarg.0
    IL_007c:  ldfld      int32 Game.Block::BlockIndex
    IL_0081:  ldc.i4.0
    IL_0082:  ldloc.2
    IL_0083:  ldarg.s    raycastResult
    IL_0085:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_008a:  ldfld      int32 Game.CellFace::Face
    IL_008f:  call       int32 Game.BottomSuckerBlock::SetFace(int32,
                                                               int32)
    IL_0094:  ldloc.3
    IL_0095:  call       int32 Game.BottomSuckerBlock::SetSubvariant(int32,
                                                                     int32)
    IL_009a:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_009f:  stfld      int32 Game.BlockPlacementData::Value
    IL_00a4:  ldloc.s    V_4
    IL_00a6:  ret

    IL_00a7:  ldloca.s   V_4
    IL_00a9:  initobj    Game.BlockPlacementData
    IL_00af:  ldloc.s    V_4
    IL_00b1:  ret
  } // end of method BottomSuckerBlock::GetPlacementValue

  .method public hidebysig static int32  GetFace(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  shr
    IL_0003:  ldc.i4.7
    IL_0004:  and
    IL_0005:  ret
  } // end of method BottomSuckerBlock::GetFace

  .method public hidebysig static int32  SetFace(int32 data,
                                                 int32 face) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xfffff8ff
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.7
    IL_0009:  and
    IL_000a:  ldc.i4.8
    IL_000b:  shl
    IL_000c:  or
    IL_000d:  ret
  } // end of method BottomSuckerBlock::SetFace

  .method public hidebysig static int32  GetSubvariant(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   11
    IL_0003:  shr
    IL_0004:  ldc.i4.3
    IL_0005:  and
    IL_0006:  ret
  } // end of method BottomSuckerBlock::GetSubvariant

  .method public hidebysig static int32  SetSubvariant(int32 data,
                                                       int32 face) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xffffe7ff
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.3
    IL_0009:  and
    IL_000a:  ldc.i4.s   11
    IL_000c:  shl
    IL_000d:  or
    IL_000e:  ret
  } // end of method BottomSuckerBlock::SetSubvariant

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.WaterBlock::.ctor()
    IL_0006:  ret
  } // end of method BottomSuckerBlock::.ctor

} // end of class Game.BottomSuckerBlock