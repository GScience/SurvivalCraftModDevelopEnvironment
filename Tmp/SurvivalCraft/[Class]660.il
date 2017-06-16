.class public auto ansi beforefieldinit Game.XorGateElectricElement
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
  } // end of method XorGateElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.XorGateElectricElement::m_voltage
    IL_0006:  ret
  } // end of method XorGateElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       226 (0xe2)
    .maxstack  3
    .locals init (float32 V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_2,
             class Game.ElectricConnection V_3,
             int32 V_4,
             valuetype [System.Runtime]System.Nullable`1<int32> V_5,
             int32 V_6,
             valuetype [System.Runtime]System.Nullable`1<int32> V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.XorGateElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_1
    IL_0009:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_000f:  ldarg.0
    IL_0010:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0015:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_001a:  stloc.2
    .try
    {
      IL_001b:  br.s       IL_0095

      IL_001d:  ldloca.s   V_2
      IL_001f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0024:  stloc.3
      IL_0025:  ldloc.3
      IL_0026:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_002b:  ldc.i4.1
      IL_002c:  beq.s      IL_0095

      IL_002e:  ldloc.3
      IL_002f:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0034:  brfalse.s  IL_0095

      IL_0036:  ldloc.3
      IL_0037:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_003c:  ldloc.3
      IL_003d:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0042:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0047:  ldc.r4     15.
      IL_004c:  mul
      IL_004d:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_0052:  conv.i4
      IL_0053:  stloc.s    V_4
      IL_0055:  ldloca.s   V_1
      IL_0057:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_005c:  brtrue.s   IL_0067

      IL_005e:  ldloc.s    V_4
      IL_0060:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_0065:  br.s       IL_0094

      IL_0067:  ldloc.1
      IL_0068:  stloc.s    V_5
      IL_006a:  ldloc.s    V_4
      IL_006c:  stloc.s    V_6
      IL_006e:  ldloca.s   V_5
      IL_0070:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0075:  brtrue.s   IL_0083

      IL_0077:  ldloca.s   V_7
      IL_0079:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_007f:  ldloc.s    V_7
      IL_0081:  br.s       IL_0092

      IL_0083:  ldloca.s   V_5
      IL_0085:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
      IL_008a:  ldloc.s    V_6
      IL_008c:  xor
      IL_008d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_0092:  dup
      IL_0093:  stloc.1
      IL_0094:  stloc.1
      IL_0095:  ldloca.s   V_2
      IL_0097:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_009c:  brtrue     IL_001d

      IL_00a1:  leave.s    IL_00b1

    }  // end .try
    finally
    {
      IL_00a3:  ldloca.s   V_2
      IL_00a5:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_00ab:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00b0:  endfinally
    }  // end handler
    IL_00b1:  ldarg.0
    IL_00b2:  ldloca.s   V_1
    IL_00b4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_00b9:  brtrue.s   IL_00c2

    IL_00bb:  ldc.r4     0.0
    IL_00c0:  br.s       IL_00d0

    IL_00c2:  ldloca.s   V_1
    IL_00c4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_00c9:  conv.r4
    IL_00ca:  ldc.r4     15.
    IL_00cf:  div
    IL_00d0:  stfld      float32 Game.XorGateElectricElement::m_voltage
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      float32 Game.XorGateElectricElement::m_voltage
    IL_00db:  ldloc.0
    IL_00dc:  ceq
    IL_00de:  ldc.i4.0
    IL_00df:  ceq
    IL_00e1:  ret
  } // end of method XorGateElectricElement::Simulate

} // end of class Game.XorGateElectricElement