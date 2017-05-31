.class public auto ansi beforefieldinit Game.HygrometerElectricElement
       extends Game.ElectricElement
{
  .field private float32 m_voltage
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
  } // end of method HygrometerElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.HygrometerElectricElement::m_voltage
    IL_0006:  ret
  } // end of method HygrometerElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       108 (0x6c)
    .maxstack  3
    .locals init (float32 V_0,
             valuetype Game.CellFace V_1,
             class Game.TerrainData V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.HygrometerElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_000d:  stloc.3
    IL_000e:  ldloca.s   V_3
    IL_0010:  ldc.i4.0
    IL_0011:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0016:  stloc.1
    IL_0017:  ldarg.0
    IL_0018:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_001d:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0022:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0027:  stloc.2
    IL_0028:  ldloc.2
    IL_0029:  ldloc.1
    IL_002a:  ldfld      int32 Game.CellFace::X
    IL_002f:  ldloc.1
    IL_0030:  ldfld      int32 Game.CellFace::Z
    IL_0035:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_003a:  brfalse.s  IL_005f

    IL_003c:  ldloc.2
    IL_003d:  ldloc.1
    IL_003e:  ldfld      int32 Game.CellFace::X
    IL_0043:  ldloc.1
    IL_0044:  ldfld      int32 Game.CellFace::Z
    IL_0049:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_004e:  stloc.s    V_4
    IL_0050:  ldarg.0
    IL_0051:  ldloc.s    V_4
    IL_0053:  conv.r4
    IL_0054:  ldc.r4     15.
    IL_0059:  div
    IL_005a:  stfld      float32 Game.HygrometerElectricElement::m_voltage
    IL_005f:  ldarg.0
    IL_0060:  ldfld      float32 Game.HygrometerElectricElement::m_voltage
    IL_0065:  ldloc.0
    IL_0066:  ceq
    IL_0068:  ldc.i4.0
    IL_0069:  ceq
    IL_006b:  ret
  } // end of method HygrometerElectricElement::Simulate

} // end of class Game.HygrometerElectricElement