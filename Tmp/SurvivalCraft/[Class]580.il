.class public auto ansi beforefieldinit Game.SubsystemInWaterBlockBehavior
       extends Game.SubsystemWaterBlockBehavior
{
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemInWaterBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnItemHarvested(int32 x,
                          int32 y,
                          int32 z,
                          int32 blockValue,
                          valuetype Game.BlockDropValue& dropValue,
                          int32& newBlockValue) cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.s    blockValue
    IL_0002:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0007:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_000c:  stloc.0
    IL_000d:  ldarg.s    newBlockValue
    IL_000f:  ldc.i4.s   18
    IL_0011:  ldc.i4.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldloc.0
    IL_0014:  call       int32 Game.FluidBlock::SetLevel(int32,
                                                         int32)
    IL_0019:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_001e:  stind.i4
    IL_001f:  ldarg.s    dropValue
    IL_0021:  ldarg.s    blockValue
    IL_0023:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0028:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_002d:  stfld      int32 Game.BlockDropValue::Value
    IL_0032:  ldarg.s    dropValue
    IL_0034:  ldc.i4.1
    IL_0035:  stfld      int32 Game.BlockDropValue::Count
    IL_003a:  ret
  } // end of method SubsystemInWaterBlockBehavior::OnItemHarvested

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemWaterBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemInWaterBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemInWaterBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemInWaterBlockBehavior::HandledBlocks
} // end of class Game.SubsystemInWaterBlockBehavior