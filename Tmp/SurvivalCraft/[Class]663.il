.class public abstract auto ansi beforefieldinit Game.BaseDelayGateElectricElement
       extends Game.RotateableElectricElement
{
  .field private float32 m_voltage
  .field private float32 m_lastStoredVoltage
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> m_voltagesHistory
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.BaseDelayGateElectricElement::m_voltagesHistory
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  call       instance void Game.RotateableElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                             valuetype Game.CellFace)
    IL_0013:  ret
  } // end of method BaseDelayGateElectricElement::.ctor

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_DelaySteps() cil managed
  {
  } // end of method BaseDelayGateElectricElement::get_DelaySteps

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.BaseDelayGateElectricElement::m_voltage
    IL_0006:  ret
  } // end of method BaseDelayGateElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       289 (0x121)
    .maxstack  4
    .locals init (float32 V_0,
             int32 V_1,
             float32 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_3,
             class Game.ElectricConnection V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.BaseDelayGateElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance int32 Game.BaseDelayGateElectricElement::get_DelaySteps()
    IL_000d:  stloc.1
    IL_000e:  ldc.r4     0.0
    IL_0013:  stloc.2
    IL_0014:  ldarg.0
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_001a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_001f:  stloc.3
    .try
    {
      IL_0020:  br.s       IL_0054

      IL_0022:  ldloca.s   V_3
      IL_0024:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0029:  stloc.s    V_4
      IL_002b:  ldloc.s    V_4
      IL_002d:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0032:  ldc.i4.1
      IL_0033:  beq.s      IL_0054

      IL_0035:  ldloc.s    V_4
      IL_0037:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_003c:  brfalse.s  IL_0054

      IL_003e:  ldloc.s    V_4
      IL_0040:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0045:  ldloc.s    V_4
      IL_0047:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_004c:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0051:  stloc.2
      IL_0052:  leave.s    IL_006d

      IL_0054:  ldloca.s   V_3
      IL_0056:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_005b:  brtrue.s   IL_0022

      IL_005d:  leave.s    IL_006d

    }  // end .try
    finally
    {
      IL_005f:  ldloca.s   V_3
      IL_0061:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0067:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_006c:  endfinally
    }  // end handler
    IL_006d:  ldloc.1
    IL_006e:  ldc.i4.0
    IL_006f:  ble        IL_010d

    IL_0074:  ldarg.0
    IL_0075:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.BaseDelayGateElectricElement::m_voltagesHistory
    IL_007a:  ldarg.0
    IL_007b:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0080:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0085:  ldloca.s   V_5
    IL_0087:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::TryGetValue(!0,
                                                                                                                                     !1&)
    IL_008c:  brfalse.s  IL_00ad

    IL_008e:  ldarg.0
    IL_008f:  ldloc.s    V_5
    IL_0091:  stfld      float32 Game.BaseDelayGateElectricElement::m_voltage
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.BaseDelayGateElectricElement::m_voltagesHistory
    IL_009c:  ldarg.0
    IL_009d:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00a2:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_00a7:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::Remove(!0)
    IL_00ac:  pop
    IL_00ad:  ldloc.2
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      float32 Game.BaseDelayGateElectricElement::m_lastStoredVoltage
    IL_00b4:  beq.s      IL_0114

    IL_00b6:  ldarg.0
    IL_00b7:  ldloc.2
    IL_00b8:  stfld      float32 Game.BaseDelayGateElectricElement::m_lastStoredVoltage
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.BaseDelayGateElectricElement::m_voltagesHistory
    IL_00c3:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::get_Count()
    IL_00c8:  ldc.i4     0x12c
    IL_00cd:  bge.s      IL_0114

    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.BaseDelayGateElectricElement::m_voltagesHistory
    IL_00d5:  ldarg.0
    IL_00d6:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00db:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_00e0:  ldarg.0
    IL_00e1:  callvirt   instance int32 Game.BaseDelayGateElectricElement::get_DelaySteps()
    IL_00e6:  add
    IL_00e7:  ldloc.2
    IL_00e8:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::set_Item(!0,
                                                                                                                                  !1)
    IL_00ed:  ldarg.0
    IL_00ee:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00f3:  ldarg.0
    IL_00f4:  ldarg.0
    IL_00f5:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00fa:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_00ff:  ldarg.0
    IL_0100:  callvirt   instance int32 Game.BaseDelayGateElectricElement::get_DelaySteps()
    IL_0105:  add
    IL_0106:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_010b:  br.s       IL_0114

    IL_010d:  ldarg.0
    IL_010e:  ldloc.2
    IL_010f:  stfld      float32 Game.BaseDelayGateElectricElement::m_voltage
    IL_0114:  ldarg.0
    IL_0115:  ldfld      float32 Game.BaseDelayGateElectricElement::m_voltage
    IL_011a:  ldloc.0
    IL_011b:  ceq
    IL_011d:  ldc.i4.0
    IL_011e:  ceq
    IL_0120:  ret
  } // end of method BaseDelayGateElectricElement::Simulate

  .property instance int32 DelaySteps()
  {
    .get instance int32 Game.BaseDelayGateElectricElement::get_DelaySteps()
  } // end of property BaseDelayGateElectricElement::DelaySteps
} // end of class Game.BaseDelayGateElectricElement