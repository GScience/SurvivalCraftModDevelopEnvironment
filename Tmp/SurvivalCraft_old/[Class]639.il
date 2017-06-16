.class public auto ansi beforefieldinit Game.SwitchElectricElement
       extends Game.MountedElectricElement
{
  .field private float32 m_voltage
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace,
                               int32 'value') cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.MountedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.3
    IL_000a:  call       bool Game.SwitchBlock::GetLeverState(int32)
    IL_000f:  brtrue.s   IL_0014

    IL_0011:  ldc.i4.0
    IL_0012:  br.s       IL_0015

    IL_0014:  ldc.i4.1
    IL_0015:  conv.r4
    IL_0016:  stfld      float32 Game.SwitchElectricElement::m_voltage
    IL_001b:  ret
  } // end of method SwitchElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SwitchElectricElement::m_voltage
    IL_0006:  ret
  } // end of method SwitchElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       171 (0xab)
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
    IL_001b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0020:  ldloc.0
    IL_0021:  ldfld      int32 Game.CellFace::X
    IL_0026:  ldloc.0
    IL_0027:  ldfld      int32 Game.CellFace::Y
    IL_002c:  ldloc.0
    IL_002d:  ldfld      int32 Game.CellFace::Z
    IL_0032:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0037:  dup
    IL_0038:  call       bool Game.SwitchBlock::GetLeverState(int32)
    IL_003d:  ldc.i4.0
    IL_003e:  ceq
    IL_0040:  call       int32 Game.SwitchBlock::SetLeverState(int32,
                                                               bool)
    IL_0045:  stloc.1
    IL_0046:  ldarg.0
    IL_0047:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_004c:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0051:  ldloc.0
    IL_0052:  ldfld      int32 Game.CellFace::X
    IL_0057:  ldloc.0
    IL_0058:  ldfld      int32 Game.CellFace::Y
    IL_005d:  ldloc.0
    IL_005e:  ldfld      int32 Game.CellFace::Z
    IL_0063:  ldloc.1
    IL_0064:  ldc.i4.1
    IL_0065:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_006a:  ldarg.0
    IL_006b:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0070:  callvirt   instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    IL_0075:  ldstr      "Audio/Click"
    IL_007a:  ldc.r4     1.
    IL_007f:  ldc.r4     0.0
    IL_0084:  ldloc.0
    IL_0085:  ldfld      int32 Game.CellFace::X
    IL_008a:  conv.r4
    IL_008b:  ldloc.0
    IL_008c:  ldfld      int32 Game.CellFace::Y
    IL_0091:  conv.r4
    IL_0092:  ldloc.0
    IL_0093:  ldfld      int32 Game.CellFace::Z
    IL_0098:  conv.r4
    IL_0099:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_009e:  ldc.r4     2.
    IL_00a3:  ldc.i4.1
    IL_00a4:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_00a9:  ldc.i4.1
    IL_00aa:  ret
  } // end of method SwitchElectricElement::OnInteract

} // end of class Game.SwitchElectricElement