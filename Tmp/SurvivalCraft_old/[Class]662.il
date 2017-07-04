.class public abstract auto ansi beforefieldinit Game.RotateableElectricElement
       extends Game.MountedElectricElement
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
    IL_0003:  call       instance void Game.MountedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0008:  ret
  } // end of method RotateableElectricElement::.ctor

  .method public hidebysig specialname instance int32 
          get_Rotation() cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  4
    .locals init (valuetype Game.CellFace V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  ldc.i4.0
    IL_000a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_000f:  stloc.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0016:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_001b:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0020:  ldloc.0
    IL_0021:  ldfld      int32 Game.CellFace::X
    IL_0026:  ldloc.0
    IL_0027:  ldfld      int32 Game.CellFace::Y
    IL_002c:  ldloc.0
    IL_002d:  ldfld      int32 Game.CellFace::Z
    IL_0032:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0037:  call       int32 Game.Terrain::ExtractData(int32)
    IL_003c:  call       int32 Game.RotateableMountedElectricElementBlock::GetRotation(int32)
    IL_0041:  ret
  } // end of method RotateableElectricElement::get_Rotation

  .method public hidebysig specialname instance void 
          set_Rotation(int32 'value') cil managed
  {
    // 代码大小       175 (0xaf)
    .maxstack  7
    .locals init (valuetype Game.CellFace V_0,
             int32 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0006:  stloc.2
    IL_0007:  ldloca.s   V_2
    IL_0009:  ldc.i4.0
    IL_000a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_000f:  stloc.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0016:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_001b:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0020:  ldloc.0
    IL_0021:  ldfld      int32 Game.CellFace::X
    IL_0026:  ldloc.0
    IL_0027:  ldfld      int32 Game.CellFace::Y
    IL_002c:  ldloc.0
    IL_002d:  ldfld      int32 Game.CellFace::Z
    IL_0032:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0037:  dup
    IL_0038:  call       int32 Game.Terrain::ExtractData(int32)
    IL_003d:  ldarg.1
    IL_003e:  ldc.i4.4
    IL_003f:  rem
    IL_0040:  call       int32 Game.RotateableMountedElectricElementBlock::SetRotation(int32,
                                                                                       int32)
    IL_0045:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_004a:  stloc.1
    IL_004b:  ldarg.0
    IL_004c:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0051:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0056:  ldloc.0
    IL_0057:  ldfld      int32 Game.CellFace::X
    IL_005c:  ldloc.0
    IL_005d:  ldfld      int32 Game.CellFace::Y
    IL_0062:  ldloc.0
    IL_0063:  ldfld      int32 Game.CellFace::Z
    IL_0068:  ldloc.1
    IL_0069:  ldc.i4.1
    IL_006a:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_006f:  ldarg.0
    IL_0070:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0075:  callvirt   instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    IL_007a:  ldstr      "Audio/Click"
    IL_007f:  ldc.r4     1.
    IL_0084:  ldc.r4     0.0
    IL_0089:  ldloc.0
    IL_008a:  ldfld      int32 Game.CellFace::X
    IL_008f:  conv.r4
    IL_0090:  ldloc.0
    IL_0091:  ldfld      int32 Game.CellFace::Y
    IL_0096:  conv.r4
    IL_0097:  ldloc.0
    IL_0098:  ldfld      int32 Game.CellFace::Z
    IL_009d:  conv.r4
    IL_009e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a3:  ldc.r4     2.
    IL_00a8:  ldc.i4.1
    IL_00a9:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_00ae:  ret
  } // end of method RotateableElectricElement::set_Rotation

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.RotateableElectricElement::get_Rotation()
    IL_0006:  ldc.i4.1
    IL_0007:  add
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldloc.0
    IL_000b:  call       instance void Game.RotateableElectricElement::set_Rotation(int32)
    IL_0010:  ldc.i4.1
    IL_0011:  ret
  } // end of method RotateableElectricElement::OnInteract

  .property instance int32 Rotation()
  {
    .get instance int32 Game.RotateableElectricElement::get_Rotation()
    .set instance void Game.RotateableElectricElement::set_Rotation(int32)
  } // end of property RotateableElectricElement::Rotation
} // end of class Game.RotateableElectricElement