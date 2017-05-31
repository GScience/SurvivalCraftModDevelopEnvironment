.class public auto ansi beforefieldinit Game.RealTimeClockElectricElement
       extends Game.RotateableElectricElement
{
  .field private class Game.SubsystemTimeOfDay m_subsystemTimeOfDay
  .field private int32 m_lastClockValue
  .field private static literal int32 m_periodsPerDay = int32(0x00001000)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.m1
    IL_0002:  stfld      int32 Game.RealTimeClockElectricElement::m_lastClockValue
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  call       instance void Game.RotateableElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                             valuetype Game.CellFace)
    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0016:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTimeOfDay>(bool)
    IL_0021:  stfld      class Game.SubsystemTimeOfDay Game.RealTimeClockElectricElement::m_subsystemTimeOfDay
    IL_0026:  ret
  } // end of method RealTimeClockElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       195 (0xc3)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  ldc.i4.0
    IL_000a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_000f:  ldfld      int32 Game.CellFace::Face
    IL_0014:  ldarg.0
    IL_0015:  call       instance int32 Game.RotateableElectricElement::get_Rotation()
    IL_001a:  ldarg.1
    IL_001b:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0020:  stloc.0
    IL_0021:  ldloca.s   V_0
    IL_0023:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0028:  brfalse    IL_00bd

    IL_002d:  ldloca.s   V_0
    IL_002f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_0034:  brtrue.s   IL_0047

    IL_0036:  ldarg.0
    IL_0037:  call       instance int32 Game.RealTimeClockElectricElement::GetClockValue()
    IL_003c:  ldc.i4.s   15
    IL_003e:  and
    IL_003f:  conv.r4
    IL_0040:  ldc.r4     15.
    IL_0045:  div
    IL_0046:  ret

    IL_0047:  ldloca.s   V_0
    IL_0049:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_004e:  ldc.i4.3
    IL_004f:  bne.un.s   IL_0064

    IL_0051:  ldarg.0
    IL_0052:  call       instance int32 Game.RealTimeClockElectricElement::GetClockValue()
    IL_0057:  ldc.i4.4
    IL_0058:  shr
    IL_0059:  ldc.i4.s   15
    IL_005b:  and
    IL_005c:  conv.r4
    IL_005d:  ldc.r4     15.
    IL_0062:  div
    IL_0063:  ret

    IL_0064:  ldloca.s   V_0
    IL_0066:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_006b:  ldc.i4.2
    IL_006c:  bne.un.s   IL_0081

    IL_006e:  ldarg.0
    IL_006f:  call       instance int32 Game.RealTimeClockElectricElement::GetClockValue()
    IL_0074:  ldc.i4.8
    IL_0075:  shr
    IL_0076:  ldc.i4.s   15
    IL_0078:  and
    IL_0079:  conv.r4
    IL_007a:  ldc.r4     15.
    IL_007f:  div
    IL_0080:  ret

    IL_0081:  ldloca.s   V_0
    IL_0083:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_0088:  ldc.i4.1
    IL_0089:  bne.un.s   IL_009f

    IL_008b:  ldarg.0
    IL_008c:  call       instance int32 Game.RealTimeClockElectricElement::GetClockValue()
    IL_0091:  ldc.i4.s   12
    IL_0093:  shr
    IL_0094:  ldc.i4.s   15
    IL_0096:  and
    IL_0097:  conv.r4
    IL_0098:  ldc.r4     15.
    IL_009d:  div
    IL_009e:  ret

    IL_009f:  ldloca.s   V_0
    IL_00a1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_00a6:  ldc.i4.4
    IL_00a7:  bne.un.s   IL_00bd

    IL_00a9:  ldarg.0
    IL_00aa:  call       instance int32 Game.RealTimeClockElectricElement::GetClockValue()
    IL_00af:  ldc.i4.s   16
    IL_00b1:  shr
    IL_00b2:  ldc.i4.s   15
    IL_00b4:  and
    IL_00b5:  conv.r4
    IL_00b6:  ldc.r4     15.
    IL_00bb:  div
    IL_00bc:  ret

    IL_00bd:  ldc.r4     0.0
    IL_00c2:  ret
  } // end of method RealTimeClockElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       144 (0x90)
    .maxstack  3
    .locals init (float64 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTimeOfDay Game.RealTimeClockElectricElement::m_subsystemTimeOfDay
    IL_0006:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_Day()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.r8     4096.
    IL_0016:  mul
    IL_0017:  call       float64 [Engine]Engine.MathUtils::Ceiling(float64)
    IL_001c:  ldc.r8     0.5
    IL_0025:  add
    IL_0026:  ldc.r8     4096.
    IL_002f:  div
    IL_0030:  ldloc.0
    IL_0031:  sub
    IL_0032:  ldc.r8     1200.
    IL_003b:  mul
    IL_003c:  ldc.r8     9.9999997764825821e-003
    IL_0045:  div
    IL_0046:  conv.i4
    IL_0047:  stloc.1
    IL_0048:  ldarg.0
    IL_0049:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_004e:  callvirt   instance int32 Game.SubsystemElectricity::get_FrameStartCircuitStep()
    IL_0053:  ldloc.1
    IL_0054:  add
    IL_0055:  ldarg.0
    IL_0056:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_005b:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0060:  ldc.i4.1
    IL_0061:  add
    IL_0062:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0067:  stloc.2
    IL_0068:  ldarg.0
    IL_0069:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_006e:  ldarg.0
    IL_006f:  ldloc.2
    IL_0070:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_0075:  ldarg.0
    IL_0076:  call       instance int32 Game.RealTimeClockElectricElement::GetClockValue()
    IL_007b:  stloc.3
    IL_007c:  ldloc.3
    IL_007d:  ldarg.0
    IL_007e:  ldfld      int32 Game.RealTimeClockElectricElement::m_lastClockValue
    IL_0083:  beq.s      IL_008e

    IL_0085:  ldarg.0
    IL_0086:  ldloc.3
    IL_0087:  stfld      int32 Game.RealTimeClockElectricElement::m_lastClockValue
    IL_008c:  ldc.i4.1
    IL_008d:  ret

    IL_008e:  ldc.i4.0
    IL_008f:  ret
  } // end of method RealTimeClockElectricElement::Simulate

  .method private hidebysig instance int32 
          GetClockValue() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTimeOfDay Game.RealTimeClockElectricElement::m_subsystemTimeOfDay
    IL_0006:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_Day()
    IL_000b:  ldc.r8     4096.
    IL_0014:  mul
    IL_0015:  conv.i4
    IL_0016:  ret
  } // end of method RealTimeClockElectricElement::GetClockValue

} // end of class Game.RealTimeClockElectricElement