.class public auto ansi beforefieldinit Game.TargetElectricElement
       extends Game.MountedElectricElement
{
  .field private float32 m_voltage
  .field private int32 m_score
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
  } // end of method TargetElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.TargetElectricElement::m_voltage
    IL_0006:  ret
  } // end of method TargetElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.TargetElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int32 Game.TargetElectricElement::m_score
    IL_000d:  ldc.i4.0
    IL_000e:  ble.s      IL_0048

    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      int32 Game.TargetElectricElement::m_score
    IL_0017:  ldc.i4.7
    IL_0018:  add
    IL_0019:  conv.r4
    IL_001a:  ldc.r4     15.
    IL_001f:  div
    IL_0020:  stfld      float32 Game.TargetElectricElement::m_voltage
    IL_0025:  ldarg.0
    IL_0026:  ldc.i4.0
    IL_0027:  stfld      int32 Game.TargetElectricElement::m_score
    IL_002c:  ldarg.0
    IL_002d:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0032:  ldarg.0
    IL_0033:  ldarg.0
    IL_0034:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0039:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_003e:  ldc.i4.s   50
    IL_0040:  add
    IL_0041:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_0046:  br.s       IL_0053

    IL_0048:  ldarg.0
    IL_0049:  ldc.r4     0.0
    IL_004e:  stfld      float32 Game.TargetElectricElement::m_voltage
    IL_0053:  ldarg.0
    IL_0054:  ldfld      float32 Game.TargetElectricElement::m_voltage
    IL_0059:  ldloc.0
    IL_005a:  ceq
    IL_005c:  ldc.i4.0
    IL_005d:  ceq
    IL_005f:  ret
  } // end of method TargetElectricElement::Simulate

  .method public hidebysig virtual instance void 
          OnHitByProjectile(valuetype Game.CellFace cellFace,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       274 (0x112)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.TargetElectricElement::m_score
    IL_0006:  brtrue     IL_0111

    IL_000b:  ldarg.0
    IL_000c:  ldfld      float32 Game.TargetElectricElement::m_voltage
    IL_0011:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_0016:  brtrue     IL_0111

    IL_001b:  ldarg.1
    IL_001c:  ldfld      int32 Game.CellFace::Face
    IL_0021:  brfalse.s  IL_002c

    IL_0023:  ldarg.1
    IL_0024:  ldfld      int32 Game.CellFace::Face
    IL_0029:  ldc.i4.2
    IL_002a:  bne.un.s   IL_0093

    IL_002c:  ldarg.2
    IL_002d:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_0032:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0037:  ldarg.1
    IL_0038:  ldfld      int32 Game.CellFace::X
    IL_003d:  conv.r4
    IL_003e:  sub
    IL_003f:  ldc.r4     0.5
    IL_0044:  sub
    IL_0045:  ldarg.2
    IL_0046:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_004b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0050:  ldarg.1
    IL_0051:  ldfld      int32 Game.CellFace::Y
    IL_0056:  conv.r4
    IL_0057:  sub
    IL_0058:  ldc.r4     0.5
    IL_005d:  sub
    IL_005e:  stloc.0
    IL_005f:  dup
    IL_0060:  mul
    IL_0061:  ldloc.0
    IL_0062:  ldloc.0
    IL_0063:  mul
    IL_0064:  add
    IL_0065:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_006a:  stloc.1
    IL_006b:  ldarg.0
    IL_006c:  ldc.r4     8.
    IL_0071:  ldc.r4     1.
    IL_0076:  ldloc.1
    IL_0077:  ldc.r4     0.70700002
    IL_007c:  div
    IL_007d:  sub
    IL_007e:  mul
    IL_007f:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0084:  conv.i4
    IL_0085:  ldc.i4.1
    IL_0086:  ldc.i4.8
    IL_0087:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_008c:  stfld      int32 Game.TargetElectricElement::m_score
    IL_0091:  br.s       IL_00f8

    IL_0093:  ldarg.2
    IL_0094:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_0099:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009e:  ldarg.1
    IL_009f:  ldfld      int32 Game.CellFace::Z
    IL_00a4:  conv.r4
    IL_00a5:  sub
    IL_00a6:  ldc.r4     0.5
    IL_00ab:  sub
    IL_00ac:  ldarg.2
    IL_00ad:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_00b2:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00b7:  ldarg.1
    IL_00b8:  ldfld      int32 Game.CellFace::Y
    IL_00bd:  conv.r4
    IL_00be:  sub
    IL_00bf:  ldc.r4     0.5
    IL_00c4:  sub
    IL_00c5:  stloc.2
    IL_00c6:  dup
    IL_00c7:  mul
    IL_00c8:  ldloc.2
    IL_00c9:  ldloc.2
    IL_00ca:  mul
    IL_00cb:  add
    IL_00cc:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_00d1:  stloc.3
    IL_00d2:  ldarg.0
    IL_00d3:  ldc.r4     8.
    IL_00d8:  ldc.r4     1.
    IL_00dd:  ldloc.3
    IL_00de:  ldc.r4     0.5
    IL_00e3:  div
    IL_00e4:  sub
    IL_00e5:  mul
    IL_00e6:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00eb:  conv.i4
    IL_00ec:  ldc.i4.1
    IL_00ed:  ldc.i4.8
    IL_00ee:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00f3:  stfld      int32 Game.TargetElectricElement::m_score
    IL_00f8:  ldarg.0
    IL_00f9:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00fe:  ldarg.0
    IL_00ff:  ldarg.0
    IL_0100:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0105:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_010a:  ldc.i4.1
    IL_010b:  add
    IL_010c:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_0111:  ret
  } // end of method TargetElectricElement::OnHitByProjectile

} // end of class Game.TargetElectricElement