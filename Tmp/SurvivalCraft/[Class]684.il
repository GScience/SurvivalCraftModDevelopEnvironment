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
    // 代码大小       84 (0x54)
    .maxstack  3
    .locals init (float32 V_0,
             valuetype Game.CellFace V_1,
             int32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_3)
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
    IL_0022:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0027:  ldloc.1
    IL_0028:  ldfld      int32 Game.CellFace::X
    IL_002d:  ldloc.1
    IL_002e:  ldfld      int32 Game.CellFace::Z
    IL_0033:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0038:  stloc.2
    IL_0039:  ldarg.0
    IL_003a:  ldloc.2
    IL_003b:  conv.r4
    IL_003c:  ldc.r4     15.
    IL_0041:  div
    IL_0042:  stfld      float32 Game.HygrometerElectricElement::m_voltage
    IL_0047:  ldarg.0
    IL_0048:  ldfld      float32 Game.HygrometerElectricElement::m_voltage
    IL_004d:  ldloc.0
    IL_004e:  ceq
    IL_0050:  ldc.i4.0
    IL_0051:  ceq
    IL_0053:  ret
  } // end of method HygrometerElectricElement::Simulate

} // end of class Game.HygrometerElectricElement