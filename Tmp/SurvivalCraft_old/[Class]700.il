.class public auto ansi beforefieldinit Game.TruthTableCircuitElectricElement
       extends Game.RotateableElectricElement
{
  .field private class Game.SubsystemTruthTableCircuitBlockBehavior m_subsystemTruthTableCircuitBlockBehavior
  .field private float32 m_voltage
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.RotateableElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                             valuetype Game.CellFace)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTruthTableCircuitBlockBehavior>(bool)
    IL_0015:  stfld      class Game.SubsystemTruthTableCircuitBlockBehavior Game.TruthTableCircuitElectricElement::m_subsystemTruthTableCircuitBlockBehavior
    IL_001a:  ret
  } // end of method TruthTableCircuitElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.TruthTableCircuitElectricElement::m_voltage
    IL_0006:  ret
  } // end of method TruthTableCircuitElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       480 (0x1e0)
    .maxstack  3
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2,
             class Game.TruthTableData V_3,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_4,
             class Game.ElectricConnection V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_6,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_7,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_8,
             valuetype Game.ElectricConnectorDirection V_9,
             valuetype Game.CellFace V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.TruthTableCircuitElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       instance int32 Game.RotateableElectricElement::get_Rotation()
    IL_000f:  stloc.2
    IL_0010:  ldarg.0
    IL_0011:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0016:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_001b:  stloc.s    V_4
    .try
    {
      IL_001d:  br         IL_0173

      IL_0022:  ldloca.s   V_4
      IL_0024:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0029:  stloc.s    V_5
      IL_002b:  ldloc.s    V_5
      IL_002d:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0032:  ldc.i4.1
      IL_0033:  beq        IL_0173

      IL_0038:  ldloc.s    V_5
      IL_003a:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_003f:  brfalse    IL_0173

      IL_0044:  ldarg.0
      IL_0045:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
      IL_004a:  stloc.s    V_7
      IL_004c:  ldloca.s   V_7
      IL_004e:  ldc.i4.0
      IL_004f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
      IL_0054:  ldfld      int32 Game.CellFace::Face
      IL_0059:  ldloc.2
      IL_005a:  ldloc.s    V_5
      IL_005c:  ldfld      int32 Game.ElectricConnection::ConnectorFace
      IL_0061:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                   int32,
                                                                                                                                                                   int32)
      IL_0066:  stloc.s    V_6
      IL_0068:  ldloca.s   V_6
      IL_006a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_006f:  brfalse    IL_0173

      IL_0074:  ldloc.s    V_6
      IL_0076:  stloc.s    V_8
      IL_0078:  ldc.i4.0
      IL_0079:  stloc.s    V_9
      IL_007b:  ldloca.s   V_8
      IL_007d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0082:  ldloc.s    V_9
      IL_0084:  beq.s      IL_0089

      IL_0086:  ldc.i4.0
      IL_0087:  br.s       IL_0090

      IL_0089:  ldloca.s   V_8
      IL_008b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0090:  brfalse.s  IL_00b8

      IL_0092:  ldloc.s    V_5
      IL_0094:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0099:  ldloc.s    V_5
      IL_009b:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_00a0:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00a5:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_00aa:  brfalse    IL_0173

      IL_00af:  ldloc.1
      IL_00b0:  ldc.i4.1
      IL_00b1:  or
      IL_00b2:  stloc.1
      IL_00b3:  br         IL_0173

      IL_00b8:  ldloc.s    V_6
      IL_00ba:  stloc.s    V_8
      IL_00bc:  ldc.i4.3
      IL_00bd:  stloc.s    V_9
      IL_00bf:  ldloca.s   V_8
      IL_00c1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_00c6:  ldloc.s    V_9
      IL_00c8:  beq.s      IL_00cd

      IL_00ca:  ldc.i4.0
      IL_00cb:  br.s       IL_00d4

      IL_00cd:  ldloca.s   V_8
      IL_00cf:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_00d4:  brfalse.s  IL_00f9

      IL_00d6:  ldloc.s    V_5
      IL_00d8:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00dd:  ldloc.s    V_5
      IL_00df:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_00e4:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00e9:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_00ee:  brfalse    IL_0173

      IL_00f3:  ldloc.1
      IL_00f4:  ldc.i4.2
      IL_00f5:  or
      IL_00f6:  stloc.1
      IL_00f7:  br.s       IL_0173

      IL_00f9:  ldloc.s    V_6
      IL_00fb:  stloc.s    V_8
      IL_00fd:  ldc.i4.2
      IL_00fe:  stloc.s    V_9
      IL_0100:  ldloca.s   V_8
      IL_0102:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0107:  ldloc.s    V_9
      IL_0109:  beq.s      IL_010e

      IL_010b:  ldc.i4.0
      IL_010c:  br.s       IL_0115

      IL_010e:  ldloca.s   V_8
      IL_0110:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0115:  brfalse.s  IL_0137

      IL_0117:  ldloc.s    V_5
      IL_0119:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_011e:  ldloc.s    V_5
      IL_0120:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0125:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_012a:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_012f:  brfalse.s  IL_0173

      IL_0131:  ldloc.1
      IL_0132:  ldc.i4.4
      IL_0133:  or
      IL_0134:  stloc.1
      IL_0135:  br.s       IL_0173

      IL_0137:  ldloc.s    V_6
      IL_0139:  stloc.s    V_8
      IL_013b:  ldc.i4.1
      IL_013c:  stloc.s    V_9
      IL_013e:  ldloca.s   V_8
      IL_0140:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0145:  ldloc.s    V_9
      IL_0147:  beq.s      IL_014c

      IL_0149:  ldc.i4.0
      IL_014a:  br.s       IL_0153

      IL_014c:  ldloca.s   V_8
      IL_014e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0153:  brfalse.s  IL_0173

      IL_0155:  ldloc.s    V_5
      IL_0157:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_015c:  ldloc.s    V_5
      IL_015e:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0163:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0168:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_016d:  brfalse.s  IL_0173

      IL_016f:  ldloc.1
      IL_0170:  ldc.i4.8
      IL_0171:  or
      IL_0172:  stloc.1
      IL_0173:  ldloca.s   V_4
      IL_0175:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_017a:  brtrue     IL_0022

      IL_017f:  leave.s    IL_018f

    }  // end .try
    finally
    {
      IL_0181:  ldloca.s   V_4
      IL_0183:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0189:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_018e:  endfinally
    }  // end handler
    IL_018f:  ldarg.0
    IL_0190:  ldfld      class Game.SubsystemTruthTableCircuitBlockBehavior Game.TruthTableCircuitElectricElement::m_subsystemTruthTableCircuitBlockBehavior
    IL_0195:  ldarg.0
    IL_0196:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_019b:  stloc.s    V_7
    IL_019d:  ldloca.s   V_7
    IL_019f:  ldc.i4.0
    IL_01a0:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_01a5:  stloc.s    V_10
    IL_01a7:  ldloca.s   V_10
    IL_01a9:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_01ae:  callvirt   instance !0 class Game.SubsystemEditableItemBehavior`1<class Game.TruthTableData>::GetBlockData(valuetype [Engine]Engine.Point3)
    IL_01b3:  stloc.3
    IL_01b4:  ldarg.0
    IL_01b5:  ldloc.3
    IL_01b6:  brtrue.s   IL_01bf

    IL_01b8:  ldc.r4     0.0
    IL_01bd:  br.s       IL_01ce

    IL_01bf:  ldloc.3
    IL_01c0:  ldfld      uint8[] Game.TruthTableData::Data
    IL_01c5:  ldloc.1
    IL_01c6:  ldelem.u1
    IL_01c7:  conv.r4
    IL_01c8:  ldc.r4     15.
    IL_01cd:  div
    IL_01ce:  stfld      float32 Game.TruthTableCircuitElectricElement::m_voltage
    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      float32 Game.TruthTableCircuitElectricElement::m_voltage
    IL_01d9:  ldloc.0
    IL_01da:  ceq
    IL_01dc:  ldc.i4.0
    IL_01dd:  ceq
    IL_01df:  ret
  } // end of method TruthTableCircuitElectricElement::Simulate

} // end of class Game.TruthTableCircuitElectricElement