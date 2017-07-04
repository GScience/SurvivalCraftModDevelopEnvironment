.class public abstract auto ansi beforefieldinit Game.MountedElectricElement
       extends Game.ElectricElement
{
  .method family hidebysig specialname rtspecialname 
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
  } // end of method MountedElectricElement::.ctor

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(valuetype Game.CellFace cellFace,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       204 (0xcc)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             class Game.Block V_5)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 Game.CellFace::Face
    IL_0006:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldfld      int32 Game.CellFace::X
    IL_0012:  ldloc.0
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0018:  sub
    IL_0019:  stloc.1
    IL_001a:  ldarg.1
    IL_001b:  ldfld      int32 Game.CellFace::Y
    IL_0020:  ldloc.0
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0026:  sub
    IL_0027:  stloc.2
    IL_0028:  ldarg.1
    IL_0029:  ldfld      int32 Game.CellFace::Z
    IL_002e:  ldloc.0
    IL_002f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0034:  sub
    IL_0035:  stloc.3
    IL_0036:  ldarg.0
    IL_0037:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_003c:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldloc.1
    IL_0047:  ldloc.2
    IL_0048:  ldloc.3
    IL_0049:  callvirt   instance bool Game.Terrain::IsCellValid(int32,
                                                                 int32,
                                                                 int32)
    IL_004e:  brfalse.s  IL_00cb

    IL_0050:  ldarg.0
    IL_0051:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0056:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_005b:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0060:  ldloc.1
    IL_0061:  ldloc.2
    IL_0062:  ldloc.3
    IL_0063:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0068:  stloc.s    V_4
    IL_006a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_006f:  ldloc.s    V_4
    IL_0071:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0076:  ldelem.ref
    IL_0077:  stloc.s    V_5
    IL_0079:  ldloc.s    V_5
    IL_007b:  ldfld      bool Game.Block::IsCollidable
    IL_0080:  brfalse.s  IL_0093

    IL_0082:  ldloc.s    V_5
    IL_0084:  ldarg.1
    IL_0085:  ldfld      int32 Game.CellFace::Face
    IL_008a:  ldloc.s    V_4
    IL_008c:  callvirt   instance bool Game.Block::IsFaceTransparent(int32,
                                                                     int32)
    IL_0091:  brfalse.s  IL_00cb

    IL_0093:  ldarg.1
    IL_0094:  ldfld      int32 Game.CellFace::Face
    IL_0099:  ldc.i4.4
    IL_009a:  bne.un.s   IL_00a5

    IL_009c:  ldloc.s    V_5
    IL_009e:  isinst     Game.FenceBlock
    IL_00a3:  brtrue.s   IL_00cb

    IL_00a5:  ldarg.0
    IL_00a6:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00ab:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_00b0:  ldc.i4.0
    IL_00b1:  ldarg.1
    IL_00b2:  ldfld      int32 Game.CellFace::X
    IL_00b7:  ldarg.1
    IL_00b8:  ldfld      int32 Game.CellFace::Y
    IL_00bd:  ldarg.1
    IL_00be:  ldfld      int32 Game.CellFace::Z
    IL_00c3:  ldc.i4.0
    IL_00c4:  ldc.i4.0
    IL_00c5:  ldc.i4.0
    IL_00c6:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_00cb:  ret
  } // end of method MountedElectricElement::OnNeighborBlockChanged

} // end of class Game.MountedElectricElement