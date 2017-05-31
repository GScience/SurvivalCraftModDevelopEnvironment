.class public auto ansi beforefieldinit Game.BatteryElectricElement
       extends Game.ElectricElement
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                   valuetype Game.CellFace)
    IL_0008:  ret
  } // end of method BatteryElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_1,
             valuetype Game.CellFace V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  ldc.i4.0
    IL_000a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_000f:  stloc.2
    IL_0010:  ldloca.s   V_2
    IL_0012:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_001e:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0023:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0028:  ldloc.0
    IL_0029:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002e:  ldloc.0
    IL_002f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0034:  ldloc.0
    IL_0035:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003a:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_003f:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0044:  call       int32 Game.BatteryBlock::GetVoltageLevel(int32)
    IL_0049:  conv.r4
    IL_004a:  ldc.r4     15.
    IL_004f:  div
    IL_0050:  ret
  } // end of method BatteryElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(valuetype Game.CellFace cellFace,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  8
    .locals init (int32 V_0,
             class Game.Block V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0006:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_000b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0010:  ldarg.1
    IL_0011:  ldfld      int32 Game.CellFace::X
    IL_0016:  ldarg.1
    IL_0017:  ldfld      int32 Game.CellFace::Y
    IL_001c:  ldc.i4.1
    IL_001d:  sub
    IL_001e:  ldarg.1
    IL_001f:  ldfld      int32 Game.CellFace::Z
    IL_0024:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0029:  stloc.0
    IL_002a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002f:  ldloc.0
    IL_0030:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0035:  ldelem.ref
    IL_0036:  stloc.1
    IL_0037:  ldloc.1
    IL_0038:  ldfld      bool Game.Block::IsCollidable
    IL_003d:  brfalse.s  IL_0047

    IL_003f:  ldloc.1
    IL_0040:  ldfld      bool Game.Block::IsTransparent
    IL_0045:  brfalse.s  IL_006d

    IL_0047:  ldarg.0
    IL_0048:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_004d:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0052:  ldc.i4.0
    IL_0053:  ldarg.1
    IL_0054:  ldfld      int32 Game.CellFace::X
    IL_0059:  ldarg.1
    IL_005a:  ldfld      int32 Game.CellFace::Y
    IL_005f:  ldarg.1
    IL_0060:  ldfld      int32 Game.CellFace::Z
    IL_0065:  ldc.i4.0
    IL_0066:  ldc.i4.0
    IL_0067:  ldc.i4.0
    IL_0068:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_006d:  ret
  } // end of method BatteryElectricElement::OnNeighborBlockChanged

} // end of class Game.BatteryElectricElement