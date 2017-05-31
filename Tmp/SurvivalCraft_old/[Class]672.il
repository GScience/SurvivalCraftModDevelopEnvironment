.class public auto ansi beforefieldinit Game.DigitalToAnalogConverterElectricElement
       extends Game.RotateableElectricElement
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
    IL_0003:  call       instance void Game.RotateableElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                             valuetype Game.CellFace)
    IL_0008:  ret
  } // end of method DigitalToAnalogConverterElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
    IL_0006:  ret
  } // end of method DigitalToAnalogConverterElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       296 (0x128)
    .maxstack  3
    .locals init (float32 V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_2,
             class Game.ElectricConnection V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldc.r4     0.0
    IL_000d:  stfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
    IL_0012:  ldarg.0
    IL_0013:  call       instance int32 Game.RotateableElectricElement::get_Rotation()
    IL_0018:  stloc.1
    IL_0019:  ldarg.0
    IL_001a:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_001f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0024:  stloc.2
    .try
    {
      IL_0025:  br         IL_00ff

      IL_002a:  ldloca.s   V_2
      IL_002c:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0031:  stloc.3
      IL_0032:  ldloc.3
      IL_0033:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0038:  ldc.i4.1
      IL_0039:  beq        IL_00ff

      IL_003e:  ldloc.3
      IL_003f:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0044:  brfalse    IL_00ff

      IL_0049:  ldloc.3
      IL_004a:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_004f:  ldloc.3
      IL_0050:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0055:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_005a:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_005f:  brfalse    IL_00ff

      IL_0064:  ldarg.0
      IL_0065:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
      IL_006a:  stloc.s    V_5
      IL_006c:  ldloca.s   V_5
      IL_006e:  ldc.i4.0
      IL_006f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
      IL_0074:  ldfld      int32 Game.CellFace::Face
      IL_0079:  ldloc.1
      IL_007a:  ldloc.3
      IL_007b:  ldfld      int32 Game.ElectricConnection::ConnectorFace
      IL_0080:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                   int32,
                                                                                                                                                                   int32)
      IL_0085:  stloc.s    V_4
      IL_0087:  ldloca.s   V_4
      IL_0089:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_008e:  brfalse.s  IL_00ff

      IL_0090:  ldloca.s   V_4
      IL_0092:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
      IL_0097:  brtrue.s   IL_00ab

      IL_0099:  ldarg.0
      IL_009a:  ldarg.0
      IL_009b:  ldfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
      IL_00a0:  ldc.r4     6.666667e-002
      IL_00a5:  add
      IL_00a6:  stfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
      IL_00ab:  ldloca.s   V_4
      IL_00ad:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
      IL_00b2:  ldc.i4.3
      IL_00b3:  bne.un.s   IL_00c7

      IL_00b5:  ldarg.0
      IL_00b6:  ldarg.0
      IL_00b7:  ldfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
      IL_00bc:  ldc.r4     0.13333334
      IL_00c1:  add
      IL_00c2:  stfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
      IL_00c7:  ldloca.s   V_4
      IL_00c9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
      IL_00ce:  ldc.i4.2
      IL_00cf:  bne.un.s   IL_00e3

      IL_00d1:  ldarg.0
      IL_00d2:  ldarg.0
      IL_00d3:  ldfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
      IL_00d8:  ldc.r4     0.26666668
      IL_00dd:  add
      IL_00de:  stfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
      IL_00e3:  ldloca.s   V_4
      IL_00e5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
      IL_00ea:  ldc.i4.1
      IL_00eb:  bne.un.s   IL_00ff

      IL_00ed:  ldarg.0
      IL_00ee:  ldarg.0
      IL_00ef:  ldfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
      IL_00f4:  ldc.r4     0.53333336
      IL_00f9:  add
      IL_00fa:  stfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
      IL_00ff:  ldloca.s   V_2
      IL_0101:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0106:  brtrue     IL_002a

      IL_010b:  leave.s    IL_011b

    }  // end .try
    finally
    {
      IL_010d:  ldloca.s   V_2
      IL_010f:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0115:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_011a:  endfinally
    }  // end handler
    IL_011b:  ldarg.0
    IL_011c:  ldfld      float32 Game.DigitalToAnalogConverterElectricElement::m_voltage
    IL_0121:  ldloc.0
    IL_0122:  ceq
    IL_0124:  ldc.i4.0
    IL_0125:  ceq
    IL_0127:  ret
  } // end of method DigitalToAnalogConverterElectricElement::Simulate

} // end of class Game.DigitalToAnalogConverterElectricElement