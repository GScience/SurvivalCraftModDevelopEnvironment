.class public auto ansi beforefieldinit Game.AndGateElectricElement
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
  } // end of method AndGateElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.AndGateElectricElement::m_voltage
    IL_0006:  ret
  } // end of method AndGateElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       155 (0x9b)
    .maxstack  3
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_3,
             class Game.ElectricConnection V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.AndGateElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  ldc.i4.s   15
    IL_000b:  stloc.2
    IL_000c:  ldarg.0
    IL_000d:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0012:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0017:  stloc.3
    .try
    {
      IL_0018:  br.s       IL_005c

      IL_001a:  ldloca.s   V_3
      IL_001c:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0021:  stloc.s    V_4
      IL_0023:  ldloc.s    V_4
      IL_0025:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_002a:  ldc.i4.1
      IL_002b:  beq.s      IL_005c

      IL_002d:  ldloc.s    V_4
      IL_002f:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0034:  brfalse.s  IL_005c

      IL_0036:  ldloc.2
      IL_0037:  ldloc.s    V_4
      IL_0039:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_003e:  ldloc.s    V_4
      IL_0040:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0045:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_004a:  ldc.r4     15.
      IL_004f:  mul
      IL_0050:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_0055:  conv.i4
      IL_0056:  and
      IL_0057:  stloc.2
      IL_0058:  ldloc.1
      IL_0059:  ldc.i4.1
      IL_005a:  add
      IL_005b:  stloc.1
      IL_005c:  ldloca.s   V_3
      IL_005e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0063:  brtrue.s   IL_001a

      IL_0065:  leave.s    IL_0075

    }  // end .try
    finally
    {
      IL_0067:  ldloca.s   V_3
      IL_0069:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_006f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0074:  endfinally
    }  // end handler
    IL_0075:  ldarg.0
    IL_0076:  ldloc.1
    IL_0077:  ldc.i4.2
    IL_0078:  beq.s      IL_0081

    IL_007a:  ldc.r4     0.0
    IL_007f:  br.s       IL_0089

    IL_0081:  ldloc.2
    IL_0082:  conv.r4
    IL_0083:  ldc.r4     15.
    IL_0088:  div
    IL_0089:  stfld      float32 Game.AndGateElectricElement::m_voltage
    IL_008e:  ldarg.0
    IL_008f:  ldfld      float32 Game.AndGateElectricElement::m_voltage
    IL_0094:  ldloc.0
    IL_0095:  ceq
    IL_0097:  ldc.i4.0
    IL_0098:  ceq
    IL_009a:  ret
  } // end of method AndGateElectricElement::Simulate

} // end of class Game.AndGateElectricElement