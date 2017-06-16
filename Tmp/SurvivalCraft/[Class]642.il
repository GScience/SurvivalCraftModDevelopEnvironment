.class public auto ansi beforefieldinit Game.PhotodiodeElectricElement
       extends Game.MountedElectricElement
{
  .field private float32 m_voltage
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.MountedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance float32 Game.PhotodiodeElectricElement::CalculateVoltage()
    IL_000f:  stfld      float32 Game.PhotodiodeElectricElement::m_voltage
    IL_0014:  ret
  } // end of method PhotodiodeElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.PhotodiodeElectricElement::m_voltage
    IL_0006:  ret
  } // end of method PhotodiodeElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  5
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.PhotodiodeElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance float32 Game.PhotodiodeElectricElement::CalculateVoltage()
    IL_000e:  stfld      float32 Game.PhotodiodeElectricElement::m_voltage
    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0020:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0025:  ldc.i4.s   50
    IL_0027:  ldc.i4.1
    IL_0028:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_002d:  add
    IL_002e:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      float32 Game.PhotodiodeElectricElement::m_voltage
    IL_0039:  ldloc.0
    IL_003a:  ceq
    IL_003c:  ldc.i4.0
    IL_003d:  ceq
    IL_003f:  ret
  } // end of method PhotodiodeElectricElement::Simulate

  .method private hidebysig instance float32 
          CalculateVoltage() cil managed
  {
    // 代码大小       142 (0x8e)
    .maxstack  6
    .locals init (valuetype Game.CellFace V_0,
             valuetype [Engine]Engine.Point3 V_1,
             int32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0006:  stloc.3
    IL_0007:  ldloca.s   V_3
    IL_0009:  ldc.i4.0
    IL_000a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  ldfld      int32 Game.CellFace::Face
    IL_0016:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_001b:  stloc.1
    IL_001c:  ldarg.0
    IL_001d:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0022:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0027:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_002c:  ldloc.0
    IL_002d:  ldfld      int32 Game.CellFace::X
    IL_0032:  ldloc.0
    IL_0033:  ldfld      int32 Game.CellFace::Y
    IL_0038:  ldloc.0
    IL_0039:  ldfld      int32 Game.CellFace::Z
    IL_003e:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0043:  ldarg.0
    IL_0044:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0049:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_004e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0053:  ldloc.0
    IL_0054:  ldfld      int32 Game.CellFace::X
    IL_0059:  ldloc.1
    IL_005a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_005f:  add
    IL_0060:  ldloc.0
    IL_0061:  ldfld      int32 Game.CellFace::Y
    IL_0066:  ldloc.1
    IL_0067:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006c:  add
    IL_006d:  ldloc.0
    IL_006e:  ldfld      int32 Game.CellFace::Z
    IL_0073:  ldloc.1
    IL_0074:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0079:  add
    IL_007a:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_007f:  stloc.2
    IL_0080:  ldloc.2
    IL_0081:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0086:  conv.r4
    IL_0087:  ldc.r4     15.
    IL_008c:  div
    IL_008d:  ret
  } // end of method PhotodiodeElectricElement::CalculateVoltage

} // end of class Game.PhotodiodeElectricElement