.class public auto ansi beforefieldinit Game.SRLatchElectricElement
       extends Game.RotateableElectricElement
{
  .field private bool m_setAllowed
  .field private bool m_resetAllowed
  .field private bool m_clockAllowed
  .field private float32 m_voltage
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.SRLatchElectricElement::m_setAllowed
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.SRLatchElectricElement::m_resetAllowed
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.1
    IL_0010:  stfld      bool Game.SRLatchElectricElement::m_clockAllowed
    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  call       instance void Game.RotateableElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                             valuetype Game.CellFace)
    IL_001d:  ldarg.1
    IL_001e:  ldarga.s   cellFace
    IL_0020:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0025:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemElectricity::ReadPersistentVoltage(valuetype [Engine]Engine.Point3)
    IL_002a:  stloc.0
    IL_002b:  ldloca.s   V_0
    IL_002d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0032:  brfalse.s  IL_0041

    IL_0034:  ldarg.0
    IL_0035:  ldloca.s   V_0
    IL_0037:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_003c:  stfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_0041:  ret
  } // end of method SRLatchElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_0006:  ret
  } // end of method SRLatchElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       561 (0x231)
    .maxstack  3
    .locals init (float32 V_0,
             bool V_1,
             bool V_2,
             bool V_3,
             bool V_4,
             int32 V_5,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_6,
             class Game.ElectricConnection V_7,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_8,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_9,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_10,
             valuetype Game.ElectricConnectorDirection V_11,
             valuetype Game.CellFace V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  ldc.i4.0
    IL_000a:  stloc.2
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.3
    IL_000d:  ldc.i4.0
    IL_000e:  stloc.s    V_4
    IL_0010:  ldarg.0
    IL_0011:  call       instance int32 Game.RotateableElectricElement::get_Rotation()
    IL_0016:  stloc.s    V_5
    IL_0018:  ldarg.0
    IL_0019:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_001e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0023:  stloc.s    V_6
    .try
    {
      IL_0025:  br         IL_0129

      IL_002a:  ldloca.s   V_6
      IL_002c:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0031:  stloc.s    V_7
      IL_0033:  ldloc.s    V_7
      IL_0035:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_003a:  ldc.i4.1
      IL_003b:  beq        IL_0129

      IL_0040:  ldloc.s    V_7
      IL_0042:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0047:  brfalse    IL_0129

      IL_004c:  ldarg.0
      IL_004d:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
      IL_0052:  stloc.s    V_9
      IL_0054:  ldloca.s   V_9
      IL_0056:  ldc.i4.0
      IL_0057:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
      IL_005c:  ldfld      int32 Game.CellFace::Face
      IL_0061:  ldloc.s    V_5
      IL_0063:  ldloc.s    V_7
      IL_0065:  ldfld      int32 Game.ElectricConnection::ConnectorFace
      IL_006a:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                   int32,
                                                                                                                                                                   int32)
      IL_006f:  stloc.s    V_8
      IL_0071:  ldloca.s   V_8
      IL_0073:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0078:  brfalse    IL_0129

      IL_007d:  ldloc.s    V_8
      IL_007f:  stloc.s    V_10
      IL_0081:  ldc.i4.3
      IL_0082:  stloc.s    V_11
      IL_0084:  ldloca.s   V_10
      IL_0086:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_008b:  ldloc.s    V_11
      IL_008d:  beq.s      IL_0092

      IL_008f:  ldc.i4.0
      IL_0090:  br.s       IL_0099

      IL_0092:  ldloca.s   V_10
      IL_0094:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0099:  brfalse.s  IL_00b6

      IL_009b:  ldloc.s    V_7
      IL_009d:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00a2:  ldloc.s    V_7
      IL_00a4:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_00a9:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00ae:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_00b3:  stloc.2
      IL_00b4:  br.s       IL_0129

      IL_00b6:  ldloc.s    V_8
      IL_00b8:  stloc.s    V_10
      IL_00ba:  ldc.i4.1
      IL_00bb:  stloc.s    V_11
      IL_00bd:  ldloca.s   V_10
      IL_00bf:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_00c4:  ldloc.s    V_11
      IL_00c6:  beq.s      IL_00cb

      IL_00c8:  ldc.i4.0
      IL_00c9:  br.s       IL_00d2

      IL_00cb:  ldloca.s   V_10
      IL_00cd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_00d2:  brfalse.s  IL_00ef

      IL_00d4:  ldloc.s    V_7
      IL_00d6:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00db:  ldloc.s    V_7
      IL_00dd:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_00e2:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00e7:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_00ec:  stloc.1
      IL_00ed:  br.s       IL_0129

      IL_00ef:  ldloc.s    V_8
      IL_00f1:  stloc.s    V_10
      IL_00f3:  ldc.i4.2
      IL_00f4:  stloc.s    V_11
      IL_00f6:  ldloca.s   V_10
      IL_00f8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_00fd:  ldloc.s    V_11
      IL_00ff:  beq.s      IL_0104

      IL_0101:  ldc.i4.0
      IL_0102:  br.s       IL_010b

      IL_0104:  ldloca.s   V_10
      IL_0106:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_010b:  brfalse.s  IL_0129

      IL_010d:  ldloc.s    V_7
      IL_010f:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0114:  ldloc.s    V_7
      IL_0116:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_011b:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0120:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_0125:  stloc.3
      IL_0126:  ldc.i4.1
      IL_0127:  stloc.s    V_4
      IL_0129:  ldloca.s   V_6
      IL_012b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0130:  brtrue     IL_002a

      IL_0135:  leave.s    IL_0145

    }  // end .try
    finally
    {
      IL_0137:  ldloca.s   V_6
      IL_0139:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_013f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0144:  endfinally
    }  // end handler
    IL_0145:  ldloc.s    V_4
    IL_0147:  brfalse.s  IL_01a0

    IL_0149:  ldloc.3
    IL_014a:  brfalse    IL_01dc

    IL_014f:  ldarg.0
    IL_0150:  ldfld      bool Game.SRLatchElectricElement::m_clockAllowed
    IL_0155:  brfalse    IL_01dc

    IL_015a:  ldarg.0
    IL_015b:  ldc.i4.0
    IL_015c:  stfld      bool Game.SRLatchElectricElement::m_clockAllowed
    IL_0161:  ldloc.1
    IL_0162:  ldloc.2
    IL_0163:  and
    IL_0164:  brfalse.s  IL_0180

    IL_0166:  ldarg.0
    IL_0167:  ldarg.0
    IL_0168:  ldfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_016d:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_0172:  brtrue.s   IL_0177

    IL_0174:  ldc.i4.1
    IL_0175:  br.s       IL_0178

    IL_0177:  ldc.i4.0
    IL_0178:  conv.r4
    IL_0179:  stfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_017e:  br.s       IL_01dc

    IL_0180:  ldloc.1
    IL_0181:  brfalse.s  IL_0190

    IL_0183:  ldarg.0
    IL_0184:  ldc.r4     1.
    IL_0189:  stfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_018e:  br.s       IL_01dc

    IL_0190:  ldloc.2
    IL_0191:  brfalse.s  IL_01dc

    IL_0193:  ldarg.0
    IL_0194:  ldc.r4     0.0
    IL_0199:  stfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_019e:  br.s       IL_01dc

    IL_01a0:  ldloc.1
    IL_01a1:  brfalse.s  IL_01bf

    IL_01a3:  ldarg.0
    IL_01a4:  ldfld      bool Game.SRLatchElectricElement::m_setAllowed
    IL_01a9:  brfalse.s  IL_01bf

    IL_01ab:  ldarg.0
    IL_01ac:  ldc.i4.0
    IL_01ad:  stfld      bool Game.SRLatchElectricElement::m_setAllowed
    IL_01b2:  ldarg.0
    IL_01b3:  ldc.r4     1.
    IL_01b8:  stfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_01bd:  br.s       IL_01dc

    IL_01bf:  ldloc.2
    IL_01c0:  brfalse.s  IL_01dc

    IL_01c2:  ldarg.0
    IL_01c3:  ldfld      bool Game.SRLatchElectricElement::m_resetAllowed
    IL_01c8:  brfalse.s  IL_01dc

    IL_01ca:  ldarg.0
    IL_01cb:  ldc.i4.0
    IL_01cc:  stfld      bool Game.SRLatchElectricElement::m_resetAllowed
    IL_01d1:  ldarg.0
    IL_01d2:  ldc.r4     0.0
    IL_01d7:  stfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_01dc:  ldloc.3
    IL_01dd:  brtrue.s   IL_01e6

    IL_01df:  ldarg.0
    IL_01e0:  ldc.i4.1
    IL_01e1:  stfld      bool Game.SRLatchElectricElement::m_clockAllowed
    IL_01e6:  ldloc.1
    IL_01e7:  brtrue.s   IL_01f0

    IL_01e9:  ldarg.0
    IL_01ea:  ldc.i4.1
    IL_01eb:  stfld      bool Game.SRLatchElectricElement::m_setAllowed
    IL_01f0:  ldloc.2
    IL_01f1:  brtrue.s   IL_01fa

    IL_01f3:  ldarg.0
    IL_01f4:  ldc.i4.1
    IL_01f5:  stfld      bool Game.SRLatchElectricElement::m_resetAllowed
    IL_01fa:  ldarg.0
    IL_01fb:  ldfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_0200:  ldloc.0
    IL_0201:  beq.s      IL_022f

    IL_0203:  ldarg.0
    IL_0204:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0209:  ldarg.0
    IL_020a:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_020f:  stloc.s    V_9
    IL_0211:  ldloca.s   V_9
    IL_0213:  ldc.i4.0
    IL_0214:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0219:  stloc.s    V_12
    IL_021b:  ldloca.s   V_12
    IL_021d:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0222:  ldarg.0
    IL_0223:  ldfld      float32 Game.SRLatchElectricElement::m_voltage
    IL_0228:  callvirt   instance void Game.SubsystemElectricity::WritePersistentVoltage(valuetype [Engine]Engine.Point3,
                                                                                         float32)
    IL_022d:  ldc.i4.1
    IL_022e:  ret

    IL_022f:  ldc.i4.0
    IL_0230:  ret
  } // end of method SRLatchElectricElement::Simulate

} // end of class Game.SRLatchElectricElement