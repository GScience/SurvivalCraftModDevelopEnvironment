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
    // 代码大小       143 (0x8f)
    .maxstack  7
    .locals init (valuetype Game.CellFace V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0007:  callvirt   instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    IL_000c:  callvirt   instance int32 Game.SubsystemTime::get_FrameIndex()
    IL_0011:  stfld      int32 Game.PressurePlateElectricElement::m_lastPressFrameIndex
    IL_0016:  ldarg.1
    IL_0017:  ldarg.0
    IL_0018:  ldfld      float32 Game.PressurePlateElectricElement::m_pressure
    IL_001d:  ble.un.s   IL_008e

    IL_001f:  ldarg.0
    IL_0020:  ldarg.1
    IL_0021:  stfld      float32 Game.PressurePlateElectricElement::m_pressure
    IL_0026:  ldarg.0
    IL_0027:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_002c:  stloc.1
    IL_002d:  ldloca.s   V_1
    IL_002f:  ldc.i4.0
    IL_0030:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0035:  stloc.0
    IL_0036:  ldarg.0
    IL_0037:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_003c:  callvirt   instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    IL_0041:  ldstr      "Audio/BlockPlaced"
    IL_0046:  ldc.r4     1.
    IL_004b:  ldc.r4     0.2
    IL_0050:  ldloc.0
    IL_0051:  ldfld      int32 Game.CellFace::X
    IL_0056:  conv.r4
    IL_0057:  ldloc.0
    IL_0058:  ldfld      int32 Game.CellFace::Y
    IL_005d:  conv.r4
    IL_005e:  ldloc.0
    IL_005f:  ldfld      int32 Game.CellFace::Z
    IL_0064:  conv.r4
    IL_0065:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_006a:  ldc.r4     2.5
    IL_006f:  ldc.i4.1
    IL_0070:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0075:  ldarg.0
    IL_0076:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_007b:  ldarg.0
    IL_007c:  ldarg.0
    IL_007d:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0082:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0087:  ldc.i4.1
    IL_0088:  add
    IL_0089:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_008e:  ret
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
    // 代码大小       218 (0xda)
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
    IL_0012:  ble.un.s   IL_005b

    IL_0014:  ldarg.0
    IL_0015:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_001a:  callvirt   instance class Game.SubsystemTime Game.SubsystemElectricity::get_SubsystemTime()
    IL_001f:  callvirt   instance int32 Game.SubsystemTime::get_FrameIndex()
    IL_0024:  ldarg.0
    IL_0025:  ldfld      int32 Game.PressurePlateElectricElement::m_lastPressFrameIndex
    IL_002a:  sub
    IL_002b:  ldc.i4.2
    IL_002c:  bge.s      IL_005b

    IL_002e:  ldarg.0
    IL_002f:  ldarg.0
    IL_0030:  ldfld      float32 Game.PressurePlateElectricElement::m_pressure
    IL_0035:  call       float32 Game.PressurePlateElectricElement::PressureToVoltage(float32)
    IL_003a:  stfld      float32 Game.PressurePlateElectricElement::m_voltage
    IL_003f:  ldarg.0
    IL_0040:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0045:  ldarg.0
    IL_0046:  ldarg.0
    IL_0047:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_004c:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0051:  ldc.i4.s   10
    IL_0053:  add
    IL_0054:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_0059:  br.s       IL_00cd

    IL_005b:  ldarg.0
    IL_005c:  ldfld      float32 Game.PressurePlateElectricElement::m_voltage
    IL_0061:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_0066:  brfalse.s  IL_00b7

    IL_0068:  ldarg.0
    IL_0069:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_006e:  stloc.2
    IL_006f:  ldloca.s   V_2
    IL_0071:  ldc.i4.0
    IL_0072:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0077:  stloc.1
    IL_0078:  ldarg.0
    IL_0079:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_007e:  callvirt   instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    IL_0083:  ldstr      "Audio/BlockPlaced"
    IL_0088:  ldc.r4     0.60000002
    IL_008d:  ldc.r4     0.0
    IL_0092:  ldloc.1
    IL_0093:  ldfld      int32 Game.CellFace::X
    IL_0098:  conv.r4
    IL_0099:  ldloc.1
    IL_009a:  ldfld      int32 Game.CellFace::Y
    IL_009f:  conv.r4
    IL_00a0:  ldloc.1
    IL_00a1:  ldfld      int32 Game.CellFace::Z
    IL_00a6:  conv.r4
    IL_00a7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00ac:  ldc.r4     2.5
    IL_00b1:  ldc.i4.1
    IL_00b2:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_00b7:  ldarg.0
    IL_00b8:  ldc.r4     0.0
    IL_00bd:  stfld      float32 Game.PressurePlateElectricElement::m_voltage
    IL_00c2:  ldarg.0
    IL_00c3:  ldc.r4     0.0
    IL_00c8:  stfld      float32 Game.PressurePlateElectricElement::m_pressure
    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      float32 Game.PressurePlateElectricElement::m_voltage
    IL_00d3:  ldloc.0
    IL_00d4:  ceq
    IL_00d6:  ldc.i4.0
    IL_00d7:  ceq
    IL_00d9:  ret
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
    IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
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