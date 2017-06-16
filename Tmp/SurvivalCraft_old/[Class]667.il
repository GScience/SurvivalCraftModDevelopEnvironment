.class public auto ansi beforefieldinit Game.CounterElectricElement
       extends Game.RotateableElectricElement
{
  .field private bool m_plusAllowed
  .field private bool m_minusAllowed
  .field private bool m_resetAllowed
  .field private int32 m_counter
  .field private bool m_overflow
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.CounterElectricElement::m_plusAllowed
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.CounterElectricElement::m_minusAllowed
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.1
    IL_0010:  stfld      bool Game.CounterElectricElement::m_resetAllowed
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
    IL_0032:  brfalse.s  IL_0066

    IL_0034:  ldarg.0
    IL_0035:  ldloca.s   V_0
    IL_0037:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_003c:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0041:  ldc.r4     15.
    IL_0046:  mul
    IL_0047:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_004c:  conv.i4
    IL_004d:  stfld      int32 Game.CounterElectricElement::m_counter
    IL_0052:  ldarg.0
    IL_0053:  ldloca.s   V_0
    IL_0055:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_005a:  ldc.r4     0.0
    IL_005f:  clt
    IL_0061:  stfld      bool Game.CounterElectricElement::m_overflow
    IL_0066:  ret
  } // end of method CounterElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       95 (0x5f)
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
    IL_0028:  brfalse.s  IL_0059

    IL_002a:  ldloca.s   V_0
    IL_002c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_0031:  brtrue.s   IL_0041

    IL_0033:  ldarg.0
    IL_0034:  ldfld      int32 Game.CounterElectricElement::m_counter
    IL_0039:  conv.r4
    IL_003a:  ldc.r4     15.
    IL_003f:  div
    IL_0040:  ret

    IL_0041:  ldloca.s   V_0
    IL_0043:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_0048:  ldc.i4.2
    IL_0049:  bne.un.s   IL_0059

    IL_004b:  ldarg.0
    IL_004c:  ldfld      bool Game.CounterElectricElement::m_overflow
    IL_0051:  brtrue.s   IL_0056

    IL_0053:  ldc.i4.0
    IL_0054:  br.s       IL_0057

    IL_0056:  ldc.i4.1
    IL_0057:  conv.r4
    IL_0058:  ret

    IL_0059:  ldc.r4     0.0
    IL_005e:  ret
  } // end of method CounterElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       604 (0x25c)
    .maxstack  4
    .locals init (int32 V_0,
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
    IL_0001:  ldfld      int32 Game.CounterElectricElement::m_counter
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      bool Game.CounterElectricElement::m_overflow
    IL_000d:  stloc.1
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.2
    IL_0010:  ldc.i4.0
    IL_0011:  stloc.3
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.s    V_4
    IL_0015:  ldarg.0
    IL_0016:  call       instance int32 Game.RotateableElectricElement::get_Rotation()
    IL_001b:  stloc.s    V_5
    IL_001d:  ldarg.0
    IL_001e:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0023:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0028:  stloc.s    V_6
    .try
    {
      IL_002a:  br         IL_012c

      IL_002f:  ldloca.s   V_6
      IL_0031:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0036:  stloc.s    V_7
      IL_0038:  ldloc.s    V_7
      IL_003a:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_003f:  ldc.i4.1
      IL_0040:  beq        IL_012c

      IL_0045:  ldloc.s    V_7
      IL_0047:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_004c:  brfalse    IL_012c

      IL_0051:  ldarg.0
      IL_0052:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
      IL_0057:  stloc.s    V_9
      IL_0059:  ldloca.s   V_9
      IL_005b:  ldc.i4.0
      IL_005c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
      IL_0061:  ldfld      int32 Game.CellFace::Face
      IL_0066:  ldloc.s    V_5
      IL_0068:  ldloc.s    V_7
      IL_006a:  ldfld      int32 Game.ElectricConnection::ConnectorFace
      IL_006f:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                   int32,
                                                                                                                                                                   int32)
      IL_0074:  stloc.s    V_8
      IL_0076:  ldloca.s   V_8
      IL_0078:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_007d:  brfalse    IL_012c

      IL_0082:  ldloc.s    V_8
      IL_0084:  stloc.s    V_10
      IL_0086:  ldc.i4.3
      IL_0087:  stloc.s    V_11
      IL_0089:  ldloca.s   V_10
      IL_008b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0090:  ldloc.s    V_11
      IL_0092:  beq.s      IL_0097

      IL_0094:  ldc.i4.0
      IL_0095:  br.s       IL_009e

      IL_0097:  ldloca.s   V_10
      IL_0099:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_009e:  brfalse.s  IL_00bb

      IL_00a0:  ldloc.s    V_7
      IL_00a2:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00a7:  ldloc.s    V_7
      IL_00a9:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_00ae:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00b3:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_00b8:  stloc.2
      IL_00b9:  br.s       IL_012c

      IL_00bb:  ldloc.s    V_8
      IL_00bd:  stloc.s    V_10
      IL_00bf:  ldc.i4.1
      IL_00c0:  stloc.s    V_11
      IL_00c2:  ldloca.s   V_10
      IL_00c4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_00c9:  ldloc.s    V_11
      IL_00cb:  beq.s      IL_00d0

      IL_00cd:  ldc.i4.0
      IL_00ce:  br.s       IL_00d7

      IL_00d0:  ldloca.s   V_10
      IL_00d2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_00d7:  brfalse.s  IL_00f4

      IL_00d9:  ldloc.s    V_7
      IL_00db:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00e0:  ldloc.s    V_7
      IL_00e2:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_00e7:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00ec:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_00f1:  stloc.3
      IL_00f2:  br.s       IL_012c

      IL_00f4:  ldloc.s    V_8
      IL_00f6:  stloc.s    V_10
      IL_00f8:  ldc.i4.4
      IL_00f9:  stloc.s    V_11
      IL_00fb:  ldloca.s   V_10
      IL_00fd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0102:  ldloc.s    V_11
      IL_0104:  beq.s      IL_0109

      IL_0106:  ldc.i4.0
      IL_0107:  br.s       IL_0110

      IL_0109:  ldloca.s   V_10
      IL_010b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0110:  brfalse.s  IL_012c

      IL_0112:  ldloc.s    V_7
      IL_0114:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0119:  ldloc.s    V_7
      IL_011b:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0120:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0125:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_012a:  stloc.s    V_4
      IL_012c:  ldloca.s   V_6
      IL_012e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0133:  brtrue     IL_002f

      IL_0138:  leave.s    IL_0148

    }  // end .try
    finally
    {
      IL_013a:  ldloca.s   V_6
      IL_013c:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0142:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0147:  endfinally
    }  // end handler
    IL_0148:  ldloc.2
    IL_0149:  brfalse.s  IL_018b

    IL_014b:  ldarg.0
    IL_014c:  ldfld      bool Game.CounterElectricElement::m_plusAllowed
    IL_0151:  brfalse.s  IL_018b

    IL_0153:  ldarg.0
    IL_0154:  ldc.i4.0
    IL_0155:  stfld      bool Game.CounterElectricElement::m_plusAllowed
    IL_015a:  ldarg.0
    IL_015b:  ldfld      int32 Game.CounterElectricElement::m_counter
    IL_0160:  ldc.i4.s   15
    IL_0162:  bge.s      IL_017b

    IL_0164:  ldarg.0
    IL_0165:  ldarg.0
    IL_0166:  ldfld      int32 Game.CounterElectricElement::m_counter
    IL_016b:  ldc.i4.1
    IL_016c:  add
    IL_016d:  stfld      int32 Game.CounterElectricElement::m_counter
    IL_0172:  ldarg.0
    IL_0173:  ldc.i4.0
    IL_0174:  stfld      bool Game.CounterElectricElement::m_overflow
    IL_0179:  br.s       IL_01e8

    IL_017b:  ldarg.0
    IL_017c:  ldc.i4.0
    IL_017d:  stfld      int32 Game.CounterElectricElement::m_counter
    IL_0182:  ldarg.0
    IL_0183:  ldc.i4.1
    IL_0184:  stfld      bool Game.CounterElectricElement::m_overflow
    IL_0189:  br.s       IL_01e8

    IL_018b:  ldloc.3
    IL_018c:  brfalse.s  IL_01ce

    IL_018e:  ldarg.0
    IL_018f:  ldfld      bool Game.CounterElectricElement::m_minusAllowed
    IL_0194:  brfalse.s  IL_01ce

    IL_0196:  ldarg.0
    IL_0197:  ldc.i4.0
    IL_0198:  stfld      bool Game.CounterElectricElement::m_minusAllowed
    IL_019d:  ldarg.0
    IL_019e:  ldfld      int32 Game.CounterElectricElement::m_counter
    IL_01a3:  ldc.i4.0
    IL_01a4:  ble.s      IL_01bd

    IL_01a6:  ldarg.0
    IL_01a7:  ldarg.0
    IL_01a8:  ldfld      int32 Game.CounterElectricElement::m_counter
    IL_01ad:  ldc.i4.1
    IL_01ae:  sub
    IL_01af:  stfld      int32 Game.CounterElectricElement::m_counter
    IL_01b4:  ldarg.0
    IL_01b5:  ldc.i4.0
    IL_01b6:  stfld      bool Game.CounterElectricElement::m_overflow
    IL_01bb:  br.s       IL_01e8

    IL_01bd:  ldarg.0
    IL_01be:  ldc.i4.s   15
    IL_01c0:  stfld      int32 Game.CounterElectricElement::m_counter
    IL_01c5:  ldarg.0
    IL_01c6:  ldc.i4.1
    IL_01c7:  stfld      bool Game.CounterElectricElement::m_overflow
    IL_01cc:  br.s       IL_01e8

    IL_01ce:  ldloc.s    V_4
    IL_01d0:  brfalse.s  IL_01e8

    IL_01d2:  ldarg.0
    IL_01d3:  ldfld      bool Game.CounterElectricElement::m_resetAllowed
    IL_01d8:  brfalse.s  IL_01e8

    IL_01da:  ldarg.0
    IL_01db:  ldc.i4.0
    IL_01dc:  stfld      int32 Game.CounterElectricElement::m_counter
    IL_01e1:  ldarg.0
    IL_01e2:  ldc.i4.0
    IL_01e3:  stfld      bool Game.CounterElectricElement::m_overflow
    IL_01e8:  ldloc.2
    IL_01e9:  brtrue.s   IL_01f2

    IL_01eb:  ldarg.0
    IL_01ec:  ldc.i4.1
    IL_01ed:  stfld      bool Game.CounterElectricElement::m_plusAllowed
    IL_01f2:  ldloc.3
    IL_01f3:  brtrue.s   IL_01fc

    IL_01f5:  ldarg.0
    IL_01f6:  ldc.i4.1
    IL_01f7:  stfld      bool Game.CounterElectricElement::m_minusAllowed
    IL_01fc:  ldloc.s    V_4
    IL_01fe:  brtrue.s   IL_0207

    IL_0200:  ldarg.0
    IL_0201:  ldc.i4.1
    IL_0202:  stfld      bool Game.CounterElectricElement::m_resetAllowed
    IL_0207:  ldarg.0
    IL_0208:  ldfld      int32 Game.CounterElectricElement::m_counter
    IL_020d:  ldloc.0
    IL_020e:  bne.un.s   IL_0219

    IL_0210:  ldarg.0
    IL_0211:  ldfld      bool Game.CounterElectricElement::m_overflow
    IL_0216:  ldloc.1
    IL_0217:  beq.s      IL_025a

    IL_0219:  ldarg.0
    IL_021a:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_021f:  ldarg.0
    IL_0220:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0225:  stloc.s    V_9
    IL_0227:  ldloca.s   V_9
    IL_0229:  ldc.i4.0
    IL_022a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_022f:  stloc.s    V_12
    IL_0231:  ldloca.s   V_12
    IL_0233:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0238:  ldarg.0
    IL_0239:  ldfld      int32 Game.CounterElectricElement::m_counter
    IL_023e:  conv.r4
    IL_023f:  ldc.r4     15.
    IL_0244:  div
    IL_0245:  ldarg.0
    IL_0246:  ldfld      bool Game.CounterElectricElement::m_overflow
    IL_024b:  brtrue.s   IL_0250

    IL_024d:  ldc.i4.1
    IL_024e:  br.s       IL_0251

    IL_0250:  ldc.i4.m1
    IL_0251:  conv.r4
    IL_0252:  mul
    IL_0253:  callvirt   instance void Game.SubsystemElectricity::WritePersistentVoltage(valuetype [Engine]Engine.Point3,
                                                                                         float32)
    IL_0258:  ldc.i4.1
    IL_0259:  ret

    IL_025a:  ldc.i4.0
    IL_025b:  ret
  } // end of method CounterElectricElement::Simulate

} // end of class Game.CounterElectricElement