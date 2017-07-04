.class public auto ansi beforefieldinit Game.OrGateElectricElement
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
  } // end of method OrGateElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.OrGateElectricElement::m_voltage
    IL_0006:  ret
  } // end of method OrGateElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       132 (0x84)
    .maxstack  3
    .locals init (float32 V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_2,
             class Game.ElectricConnection V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.OrGateElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_000f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0014:  stloc.2
    .try
    {
      IL_0015:  br.s       IL_0050

      IL_0017:  ldloca.s   V_2
      IL_0019:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_001e:  stloc.3
      IL_001f:  ldloc.3
      IL_0020:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0025:  ldc.i4.1
      IL_0026:  beq.s      IL_0050

      IL_0028:  ldloc.3
      IL_0029:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_002e:  brfalse.s  IL_0050

      IL_0030:  ldloc.1
      IL_0031:  ldloc.3
      IL_0032:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0037:  ldloc.3
      IL_0038:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_003d:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0042:  ldc.r4     15.
      IL_0047:  mul
      IL_0048:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_004d:  conv.i4
      IL_004e:  or
      IL_004f:  stloc.1
      IL_0050:  ldloca.s   V_2
      IL_0052:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0057:  brtrue.s   IL_0017

      IL_0059:  leave.s    IL_0069

    }  // end .try
    finally
    {
      IL_005b:  ldloca.s   V_2
      IL_005d:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0063:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0068:  endfinally
    }  // end handler
    IL_0069:  ldarg.0
    IL_006a:  ldloc.1
    IL_006b:  conv.r4
    IL_006c:  ldc.r4     15.
    IL_0071:  div
    IL_0072:  stfld      float32 Game.OrGateElectricElement::m_voltage
    IL_0077:  ldarg.0
    IL_0078:  ldfld      float32 Game.OrGateElectricElement::m_voltage
    IL_007d:  ldloc.0
    IL_007e:  ceq
    IL_0080:  ldc.i4.0
    IL_0081:  ceq
    IL_0083:  ret
  } // end of method OrGateElectricElement::Simulate

} // end of class Game.OrGateElectricElement