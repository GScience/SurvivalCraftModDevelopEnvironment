.class public auto ansi beforefieldinit Game.ButtonElectricElement
       extends Game.MountedElectricElement
{
  .field private float32 m_voltage
  .field private bool m_wasPressed
  .method public hidebysig specialname rtspecialname 
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
  } // end of method ButtonElectricElement::.ctor

  .method public hidebysig instance void 
          Press() cil managed
  {
    // 代码大小       133 (0x85)
    .maxstack  7
    .locals init (valuetype Game.CellFace V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ButtonElectricElement::m_wasPressed
    IL_0006:  brtrue.s   IL_0084

    IL_0008:  ldarg.0
    IL_0009:  ldfld      float32 Game.ButtonElectricElement::m_voltage
    IL_000e:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_0013:  brtrue.s   IL_0084

    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.1
    IL_0017:  stfld      bool Game.ButtonElectricElement::m_wasPressed
    IL_001c:  ldarg.0
    IL_001d:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0022:  stloc.1
    IL_0023:  ldloca.s   V_1
    IL_0025:  ldc.i4.0
    IL_0026:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_002b:  stloc.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0032:  callvirt   instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    IL_0037:  ldstr      "Audio/Click"
    IL_003c:  ldc.r4     1.
    IL_0041:  ldc.r4     0.0
    IL_0046:  ldloc.0
    IL_0047:  ldfld      int32 Game.CellFace::X
    IL_004c:  conv.r4
    IL_004d:  ldloc.0
    IL_004e:  ldfld      int32 Game.CellFace::Y
    IL_0053:  conv.r4
    IL_0054:  ldloc.0
    IL_0055:  ldfld      int32 Game.CellFace::Z
    IL_005a:  conv.r4
    IL_005b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0060:  ldc.r4     2.
    IL_0065:  ldc.i4.1
    IL_0066:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_006b:  ldarg.0
    IL_006c:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0071:  ldarg.0
    IL_0072:  ldarg.0
    IL_0073:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0078:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_007d:  ldc.i4.1
    IL_007e:  add
    IL_007f:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_0084:  ret
  } // end of method ButtonElectricElement::Press

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ButtonElectricElement::m_voltage
    IL_0006:  ret
  } // end of method ButtonElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ButtonElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      bool Game.ButtonElectricElement::m_wasPressed
    IL_000d:  brfalse.s  IL_003d

    IL_000f:  ldarg.0
    IL_0010:  ldc.i4.0
    IL_0011:  stfld      bool Game.ButtonElectricElement::m_wasPressed
    IL_0016:  ldarg.0
    IL_0017:  ldc.r4     1.
    IL_001c:  stfld      float32 Game.ButtonElectricElement::m_voltage
    IL_0021:  ldarg.0
    IL_0022:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_002e:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0033:  ldc.i4.s   10
    IL_0035:  add
    IL_0036:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_003b:  br.s       IL_0048

    IL_003d:  ldarg.0
    IL_003e:  ldc.r4     0.0
    IL_0043:  stfld      float32 Game.ButtonElectricElement::m_voltage
    IL_0048:  ldarg.0
    IL_0049:  ldfld      float32 Game.ButtonElectricElement::m_voltage
    IL_004e:  ldloc.0
    IL_004f:  ceq
    IL_0051:  ldc.i4.0
    IL_0052:  ceq
    IL_0054:  ret
  } // end of method ButtonElectricElement::Simulate

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ButtonElectricElement::Press()
    IL_0006:  ldc.i4.1
    IL_0007:  ret
  } // end of method ButtonElectricElement::OnInteract

  .method public hidebysig virtual instance void 
          OnHitByProjectile(valuetype Game.CellFace cellFace,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ButtonElectricElement::Press()
    IL_0006:  ret
  } // end of method ButtonElectricElement::OnHitByProjectile

} // end of class Game.ButtonElectricElement