.class public auto ansi beforefieldinit Game.ThermometerElectricElement
       extends Game.ElectricElement
{
  .field private class Game.SubsystemMetersBlockBehavior m_subsystemMetersBlockBehavior
  .field private float32 m_voltage
  .field private static literal float32 m_pollingPeriod = float32(0.5)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                   valuetype Game.CellFace)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_000f:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0014:  ldc.i4.1
    IL_0015:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMetersBlockBehavior>(bool)
    IL_001a:  stfld      class Game.SubsystemMetersBlockBehavior Game.ThermometerElectricElement::m_subsystemMetersBlockBehavior
    IL_001f:  ret
  } // end of method ThermometerElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ThermometerElectricElement::m_voltage
    IL_0006:  ret
  } // end of method ThermometerElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       153 (0x99)
    .maxstack  5
    .locals init (float32 V_0,
             valuetype Game.CellFace V_1,
             float32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ThermometerElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_000d:  stloc.3
    IL_000e:  ldloca.s   V_3
    IL_0010:  ldc.i4.0
    IL_0011:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0016:  stloc.1
    IL_0017:  ldarg.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.SubsystemMetersBlockBehavior Game.ThermometerElectricElement::m_subsystemMetersBlockBehavior
    IL_001e:  ldloc.1
    IL_001f:  ldfld      int32 Game.CellFace::X
    IL_0024:  ldloc.1
    IL_0025:  ldfld      int32 Game.CellFace::Y
    IL_002a:  ldloc.1
    IL_002b:  ldfld      int32 Game.CellFace::Z
    IL_0030:  callvirt   instance int32 Game.SubsystemMetersBlockBehavior::GetThermometerReading(int32,
                                                                                                 int32,
                                                                                                 int32)
    IL_0035:  conv.r4
    IL_0036:  ldc.r4     15.
    IL_003b:  div
    IL_003c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0041:  stfld      float32 Game.ThermometerElectricElement::m_voltage
    IL_0046:  ldc.r4     0.5
    IL_004b:  ldc.r4     0.89999998
    IL_0050:  ldc.r4     2.0000001e-004
    IL_0055:  ldarg.0
    IL_0056:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_005b:  ldc.i4     0x3e8
    IL_0060:  rem
    IL_0061:  conv.r4
    IL_0062:  mul
    IL_0063:  add
    IL_0064:  mul
    IL_0065:  stloc.2
    IL_0066:  ldarg.0
    IL_0067:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0073:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0078:  ldloc.2
    IL_0079:  ldc.r4     9.9999998e-003
    IL_007e:  div
    IL_007f:  conv.i4
    IL_0080:  ldc.i4.1
    IL_0081:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0086:  add
    IL_0087:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_008c:  ldarg.0
    IL_008d:  ldfld      float32 Game.ThermometerElectricElement::m_voltage
    IL_0092:  ldloc.0
    IL_0093:  ceq
    IL_0095:  ldc.i4.0
    IL_0096:  ceq
    IL_0098:  ret
  } // end of method ThermometerElectricElement::Simulate

} // end of class Game.ThermometerElectricElement