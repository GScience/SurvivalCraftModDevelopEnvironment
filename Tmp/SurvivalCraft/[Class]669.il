.class public auto ansi beforefieldinit Game.PressurePlateElectricElement
       extends Game.MountedElectricElement
{
  .field private float32 m_voltage
  .field private int32 m_lastPressFrameIndex
  .field private float32 m_pressure
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
  } // end of method PressurePlateElectricElement::.ctor

  .method public hidebysig instance void 
          Press(float32 pressure) cil managed
  {
    // 代码大小       132 (0x84)
    .maxstack  7
    .locals init (valuetype Game.CellFace V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0006:  stfld      int32 Game.PressurePlateElectricElement::m_lastPressFrameIndex
    IL_000b:  ldarg.1
    IL_000c:  ldarg.0
    IL_000d:  ldfld      float32 Game.PressurePlateElectricElement::m_pressure
    IL_0012:  ble.un.s   IL_0083

    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  stfld      float32 Game.PressurePlateElectricElement::m_pressure
    IL_001b:  ldarg.0
    IL_001c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0021:  stloc.1
    IL_0022:  ldloca.s   V_1
    IL_0024:  ldc.i4.0
    IL_0025:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_002a:  stloc.0
    IL_002b:  ldarg.0
    IL_002c:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0031:  callvirt   instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    IL_0036:  ldstr      "Audio/BlockPlaced"
    IL_003b:  ldc.r4     1.
    IL_0040:  ldc.r4     0.2
    IL_0045:  ldloc.0
    IL_0046:  ldfld      int32 Game.CellFace::X
    IL_004b:  conv.r4
    IL_004c:  ldloc.0
    IL_004d:  ldfld      int32 Game.CellFace::Y
    IL_0052:  conv.r4
    IL_0053:  ldloc.0
    IL_0054:  ldfld      int32 Game.CellFace::Z
    IL_0059:  conv.r4
    IL_005a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_005f:  ldc.r4     2.5
    IL_0064:  ldc.i4.1
    IL_0065:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_006a:  ldarg.0
    IL_006b:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0070:  ldarg.0
    IL_0071:  ldarg.0
    IL_0072:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0077:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_007c:  ldc.i4.1
    IL_007d:  add
    IL_007e:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_0083:  ret
  } // end of method PressurePlateElectricElement::Press

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.PressurePlateElectricElement::m_voltage
    IL_0006:  ret
  } // end of method PressurePlateElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       207 (0xcf)
    .maxstack  7
    .locals init (float32 V_0,
             valuetype Game.CellFace V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.PressurePlateElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      float32 Game.PressurePlateElectricElement::m_pressure
    IL_000d:  ldc.r4     0.0
    IL_0012:  ble.un.s   IL_0050

    IL_0014:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0019:  ldarg.0
    IL_001a:  ldfld      int32 Game.PressurePlateElectricElement::m_lastPressFrameIndex
    IL_001f:  sub
    IL_0020:  ldc.i4.2
    IL_0021:  bge.s      IL_0050

    IL_0023:  ldarg.0
    IL_0024:  ldarg.0
    IL_0025:  ldfld      float32 Game.PressurePlateElectricElement::m_pressure
    IL_002a:  call       float32 Game.PressurePlateElectricElement::PressureToVoltage(float32)
    IL_002f:  stfld      float32 Game.PressurePlateElectricElement::m_voltage
    IL_0034:  ldarg.0
    IL_0035:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0041:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0046:  ldc.i4.s   10
    IL_0048:  add
    IL_0049:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_004e:  br.s       IL_00c2

    IL_0050:  ldarg.0
    IL_0051:  ldfld      float32 Game.PressurePlateElectricElement::m_voltage
    IL_0056:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_005b:  brfalse.s  IL_00ac

    IL_005d:  ldarg.0
    IL_005e:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0063:  stloc.2
    IL_0064:  ldloca.s   V_2
    IL_0066:  ldc.i4.0
    IL_0067:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_006c:  stloc.1
    IL_006d:  ldarg.0
    IL_006e:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0073:  callvirt   instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    IL_0078:  ldstr      "Audio/BlockPlaced"
    IL_007d:  ldc.r4     0.60000002
    IL_0082:  ldc.r4     0.0
    IL_0087:  ldloc.1
    IL_0088:  ldfld      int32 Game.CellFace::X
    IL_008d:  conv.r4
    IL_008e:  ldloc.1
    IL_008f:  ldfld      int32 Game.CellFace::Y
    IL_0094:  conv.r4
    IL_0095:  ldloc.1
    IL_0096:  ldfld      int32 Game.CellFace::Z
    IL_009b:  conv.r4
    IL_009c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a1:  ldc.r4     2.5
    IL_00a6:  ldc.i4.1
    IL_00a7:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_00ac:  ldarg.0
    IL_00ad:  ldc.r4     0.0
    IL_00b2:  stfld      float32 Game.PressurePlateElectricElement::m_voltage
    IL_00b7:  ldarg.0
    IL_00b8:  ldc.r4     0.0
    IL_00bd:  stfld      float32 Game.PressurePlateElectricElement::m_pressure
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      float32 Game.PressurePlateElectricElement::m_voltage
    IL_00c8:  ldloc.0
    IL_00c9:  ceq
    IL_00cb:  ldc.i4.0
    IL_00cc:  ceq
    IL_00ce:  ret
  } // end of method PressurePlateElectricElement::Simulate

  .method public hidebysig virtual instance void 
          OnCollide(valuetype Game.CellFace cellFace,
                    float32 velocity,
                    class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.3
    IL_0002:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_0007:  call       instance void Game.PressurePlateElectricElement::Press(float32)
    IL_000c:  ldarg.3
    IL_000d:  ldc.r4     0.0
    IL_0012:  ldc.r4     -1.9999999e-005
    IL_0017:  ldc.r4     0.0
    IL_001c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0021:  callvirt   instance void Game.ComponentBody::ApplyImpulse(valuetype [Engine]Engine.Vector3)
    IL_0026:  ret
  } // end of method PressurePlateElectricElement::OnCollide

  .method public hidebysig virtual instance void 
          OnHitByProjectile(valuetype Game.CellFace cellFace,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (int32 V_0,
             class Game.Block V_1)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      int32 Game.WorldItem::Value
    IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_000b:  stloc.0
    IL_000c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0011:  ldloc.0
    IL_0012:  ldelem.ref
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  ldc.r4     1.
    IL_001a:  ldloc.1
    IL_001b:  ldfld      float32 Game.Block::Density
    IL_0020:  mul
    IL_0021:  call       instance void Game.PressurePlateElectricElement::Press(float32)
    IL_0026:  ret
  } // end of method PressurePlateElectricElement::OnHitByProjectile

  .method private hidebysig static float32 
          PressureToVoltage(float32 pressure) cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  bgt.un.s   IL_000e

    IL_0008:  ldc.r4     0.0
    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  ldc.r4     1.
    IL_0014:  bge.un.s   IL_001c

    IL_0016:  ldc.r4     0.53333336
    IL_001b:  ret

    IL_001c:  ldarg.0
    IL_001d:  ldc.r4     2.
    IL_0022:  bge.un.s   IL_002a

    IL_0024:  ldc.r4     0.60000002
    IL_0029:  ret

    IL_002a:  ldarg.0
    IL_002b:  ldc.r4     5.
    IL_0030:  bge.un.s   IL_0038

    IL_0032:  ldc.r4     0.66666669
    IL_0037:  ret

    IL_0038:  ldarg.0
    IL_0039:  ldc.r4     25.
    IL_003e:  bge.un.s   IL_0046

    IL_0040:  ldc.r4     0.73333335
    IL_0045:  ret

    IL_0046:  ldarg.0
    IL_0047:  ldc.r4     100.
    IL_004c:  bge.un.s   IL_0054

    IL_004e:  ldc.r4     0.80000001
    IL_0053:  ret

    IL_0054:  ldarg.0
    IL_0055:  ldc.r4     250.
    IL_005a:  bge.un.s   IL_0062

    IL_005c:  ldc.r4     0.86666667
    IL_0061:  ret

    IL_0062:  ldarg.0
    IL_0063:  ldc.r4     500.
    IL_0068:  bge.un.s   IL_0070

    IL_006a:  ldc.r4     0.93333334
    IL_006f:  ret

    IL_0070:  ldc.r4     1.
    IL_0075:  ret
  } // end of method PressurePlateElectricElement::PressureToVoltage

} // end of class Game.PressurePlateElectricElement