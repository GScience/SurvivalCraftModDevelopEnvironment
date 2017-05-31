.class public auto ansi beforefieldinit Game.AdjustableDelayGateElectricElement
       extends Game.BaseDelayGateElectricElement
{
  .field private int32 m_delaySteps
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.BaseDelayGateElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                                valuetype Game.CellFace)
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_000e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0013:  ldarg.2
    IL_0014:  ldfld      int32 Game.CellFace::X
    IL_0019:  ldarg.2
    IL_001a:  ldfld      int32 Game.CellFace::Y
    IL_001f:  ldarg.2
    IL_0020:  ldfld      int32 Game.CellFace::Z
    IL_0025:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_002a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_002f:  stloc.0
    IL_0030:  ldarg.0
    IL_0031:  ldloc.0
    IL_0032:  call       int32 Game.AdjustableDelayGateBlock::GetDelay(int32)
    IL_0037:  stfld      int32 Game.AdjustableDelayGateElectricElement::m_delaySteps
    IL_003c:  ret
  } // end of method AdjustableDelayGateElectricElement::.ctor

  .method public hidebysig specialname virtual 
          instance int32  get_DelaySteps() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.AdjustableDelayGateElectricElement::m_delaySteps
    IL_0006:  ret
  } // end of method AdjustableDelayGateElectricElement::get_DelaySteps

  .property instance int32 DelaySteps()
  {
    .get instance int32 Game.AdjustableDelayGateElectricElement::get_DelaySteps()
  } // end of property AdjustableDelayGateElectricElement::DelaySteps
} // end of class Game.AdjustableDelayGateElectricElement