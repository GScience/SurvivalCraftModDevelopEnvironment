.class public auto ansi beforefieldinit Game.MemoryBankElectricElement
       extends Game.RotateableElectricElement
{
  .field private class Game.SubsystemMemoryBankBlockBehavior m_subsystemMemoryBankBlockBehavior
  .field private float32 m_voltage
  .field private bool m_writeAllowed
  .field private bool m_clockAllowed
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  3
    .locals init (class Game.MemoryBankData V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.RotateableElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                             valuetype Game.CellFace)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMemoryBankBlockBehavior>(bool)
    IL_0015:  stfld      class Game.SubsystemMemoryBankBlockBehavior Game.MemoryBankElectricElement::m_subsystemMemoryBankBlockBehavior
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemMemoryBankBlockBehavior Game.MemoryBankElectricElement::m_subsystemMemoryBankBlockBehavior
    IL_0020:  ldarga.s   cellFace
    IL_0022:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0027:  callvirt   instance !0 class Game.SubsystemEditableItemBehavior`1<class Game.MemoryBankData>::GetBlockData(valuetype [Engine]Engine.Point3)
    IL_002c:  stloc.0
    IL_002d:  ldloc.0
    IL_002e:  brfalse.s  IL_0043

    IL_0030:  ldarg.0
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance uint8 Game.MemoryBankData::get_LastOutput()
    IL_0037:  conv.r4
    IL_0038:  ldc.r4     15.
    IL_003d:  div
    IL_003e:  stfld      float32 Game.MemoryBankElectricElement::m_voltage
    IL_0043:  ret
  } // end of method MemoryBankElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.MemoryBankElectricElement::m_voltage
    IL_0006:  ret
  } // end of method MemoryBankElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       733 (0x2dd)
    .maxstack  4
    .locals init (float32 V_0,
             bool V_1,
             bool V_2,
             bool V_3,
             float32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class Game.MemoryBankData V_8,
             int32 V_9,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_10,
             class Game.ElectricConnection V_11,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_12,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_13,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_14,
             valuetype Game.ElectricConnectorDirection V_15,
             int32 V_16,
             valuetype Game.CellFace V_17)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.MemoryBankElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  ldc.i4.0
    IL_000a:  stloc.2
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.3
    IL_000d:  ldc.r4     0.0
    IL_0012:  stloc.s    V_4
    IL_0014:  ldc.i4.0
    IL_0015:  stloc.s    V_5
    IL_0017:  ldc.i4.0
    IL_0018:  stloc.s    V_6
    IL_001a:  ldarg.0
    IL_001b:  call       instance int32 Game.RotateableElectricElement::get_Rotation()
    IL_0020:  stloc.s    V_7
    IL_0022:  ldarg.0
    IL_0023:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0028:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_002d:  stloc.s    V_10
    .try
    {
      IL_002f:  br         IL_019c

      IL_0034:  ldloca.s   V_10
      IL_0036:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_003b:  stloc.s    V_11
      IL_003d:  ldloc.s    V_11
      IL_003f:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0044:  ldc.i4.1
      IL_0045:  beq        IL_019c

      IL_004a:  ldloc.s    V_11
      IL_004c:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0051:  brfalse    IL_019c

      IL_0056:  ldarg.0
      IL_0057:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
      IL_005c:  stloc.s    V_13
      IL_005e:  ldloca.s   V_13
      IL_0060:  ldc.i4.0
      IL_0061:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
      IL_0066:  ldfld      int32 Game.CellFace::Face
      IL_006b:  ldloc.s    V_7
      IL_006d:  ldloc.s    V_11
      IL_006f:  ldfld      int32 Game.ElectricConnection::ConnectorFace
      IL_0074:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                   int32,
                                                                                                                                                                   int32)
      IL_0079:  stloc.s    V_12
      IL_007b:  ldloca.s   V_12
      IL_007d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0082:  brfalse    IL_019c

      IL_0087:  ldloc.s    V_12
      IL_0089:  stloc.s    V_14
      IL_008b:  ldc.i4.3
      IL_008c:  stloc.s    V_15
      IL_008e:  ldloca.s   V_14
      IL_0090:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0095:  ldloc.s    V_15
      IL_0097:  beq.s      IL_009c

      IL_0099:  ldc.i4.0
      IL_009a:  br.s       IL_00a3

      IL_009c:  ldloca.s   V_14
      IL_009e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_00a3:  brfalse.s  IL_00cb

      IL_00a5:  ldloc.s    V_11
      IL_00a7:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00ac:  ldloc.s    V_11
      IL_00ae:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_00b3:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00b8:  ldc.r4     15.
      IL_00bd:  mul
      IL_00be:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_00c3:  conv.i4
      IL_00c4:  stloc.s    V_5
      IL_00c6:  br         IL_019c

      IL_00cb:  ldloc.s    V_12
      IL_00cd:  stloc.s    V_14
      IL_00cf:  ldc.i4.1
      IL_00d0:  stloc.s    V_15
      IL_00d2:  ldloca.s   V_14
      IL_00d4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_00d9:  ldloc.s    V_15
      IL_00db:  beq.s      IL_00e0

      IL_00dd:  ldc.i4.0
      IL_00de:  br.s       IL_00e7

      IL_00e0:  ldloca.s   V_14
      IL_00e2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_00e7:  brfalse.s  IL_010f

      IL_00e9:  ldloc.s    V_11
      IL_00eb:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_00f0:  ldloc.s    V_11
      IL_00f2:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_00f7:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_00fc:  ldc.r4     15.
      IL_0101:  mul
      IL_0102:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_0107:  conv.i4
      IL_0108:  stloc.s    V_6
      IL_010a:  br         IL_019c

      IL_010f:  ldloc.s    V_12
      IL_0111:  stloc.s    V_14
      IL_0113:  ldc.i4.2
      IL_0114:  stloc.s    V_15
      IL_0116:  ldloca.s   V_14
      IL_0118:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_011d:  ldloc.s    V_15
      IL_011f:  beq.s      IL_0124

      IL_0121:  ldc.i4.0
      IL_0122:  br.s       IL_012b

      IL_0124:  ldloca.s   V_14
      IL_0126:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_012b:  brfalse.s  IL_0169

      IL_012d:  ldloc.s    V_11
      IL_012f:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0134:  ldloc.s    V_11
      IL_0136:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_013b:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0140:  ldc.r4     15.
      IL_0145:  mul
      IL_0146:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_014b:  conv.i4
      IL_014c:  stloc.s    V_16
      IL_014e:  ldloc.s    V_16
      IL_0150:  ldc.i4.8
      IL_0151:  clt
      IL_0153:  ldc.i4.0
      IL_0154:  ceq
      IL_0156:  stloc.1
      IL_0157:  ldloc.s    V_16
      IL_0159:  ldc.i4.0
      IL_015a:  ble.s      IL_0163

      IL_015c:  ldloc.s    V_16
      IL_015e:  ldc.i4.8
      IL_015f:  clt
      IL_0161:  br.s       IL_0164

      IL_0163:  ldc.i4.0
      IL_0164:  stloc.3
      IL_0165:  ldc.i4.1
      IL_0166:  stloc.2
      IL_0167:  br.s       IL_019c

      IL_0169:  ldloc.s    V_12
      IL_016b:  stloc.s    V_14
      IL_016d:  ldc.i4.4
      IL_016e:  stloc.s    V_15
      IL_0170:  ldloca.s   V_14
      IL_0172:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0177:  ldloc.s    V_15
      IL_0179:  beq.s      IL_017e

      IL_017b:  ldc.i4.0
      IL_017c:  br.s       IL_0185

      IL_017e:  ldloca.s   V_14
      IL_0180:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0185:  brfalse.s  IL_019c

      IL_0187:  ldloc.s    V_11
      IL_0189:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_018e:  ldloc.s    V_11
      IL_0190:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0195:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_019a:  stloc.s    V_4
      IL_019c:  ldloca.s   V_10
      IL_019e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_01a3:  brtrue     IL_0034

      IL_01a8:  leave.s    IL_01b8

    }  // end .try
    finally
    {
      IL_01aa:  ldloca.s   V_10
      IL_01ac:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_01b2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01b7:  endfinally
    }  // end handler
    IL_01b8:  ldarg.0
    IL_01b9:  ldfld      class Game.SubsystemMemoryBankBlockBehavior Game.MemoryBankElectricElement::m_subsystemMemoryBankBlockBehavior
    IL_01be:  ldarg.0
    IL_01bf:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_01c4:  stloc.s    V_13
    IL_01c6:  ldloca.s   V_13
    IL_01c8:  ldc.i4.0
    IL_01c9:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_01ce:  stloc.s    V_17
    IL_01d0:  ldloca.s   V_17
    IL_01d2:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_01d7:  callvirt   instance !0 class Game.SubsystemEditableItemBehavior`1<class Game.MemoryBankData>::GetBlockData(valuetype [Engine]Engine.Point3)
    IL_01dc:  stloc.s    V_8
    IL_01de:  ldloc.s    V_5
    IL_01e0:  ldloc.s    V_6
    IL_01e2:  ldc.i4.4
    IL_01e3:  shl
    IL_01e4:  add
    IL_01e5:  stloc.s    V_9
    IL_01e7:  ldloc.2
    IL_01e8:  brfalse    IL_027e

    IL_01ed:  ldloc.1
    IL_01ee:  brfalse.s  IL_0222

    IL_01f0:  ldarg.0
    IL_01f1:  ldfld      bool Game.MemoryBankElectricElement::m_clockAllowed
    IL_01f6:  brfalse.s  IL_0222

    IL_01f8:  ldarg.0
    IL_01f9:  ldc.i4.0
    IL_01fa:  stfld      bool Game.MemoryBankElectricElement::m_clockAllowed
    IL_01ff:  ldarg.0
    IL_0200:  ldloc.s    V_8
    IL_0202:  brtrue.s   IL_020b

    IL_0204:  ldc.r4     0.0
    IL_0209:  br.s       IL_021b

    IL_020b:  ldloc.s    V_8
    IL_020d:  ldloc.s    V_9
    IL_020f:  callvirt   instance uint8 Game.MemoryBankData::Read(int32)
    IL_0214:  conv.r4
    IL_0215:  ldc.r4     15.
    IL_021a:  div
    IL_021b:  stfld      float32 Game.MemoryBankElectricElement::m_voltage
    IL_0220:  br.s       IL_029f

    IL_0222:  ldloc.3
    IL_0223:  brfalse.s  IL_029f

    IL_0225:  ldarg.0
    IL_0226:  ldfld      bool Game.MemoryBankElectricElement::m_writeAllowed
    IL_022b:  brfalse.s  IL_029f

    IL_022d:  ldarg.0
    IL_022e:  ldc.i4.0
    IL_022f:  stfld      bool Game.MemoryBankElectricElement::m_writeAllowed
    IL_0234:  ldloc.s    V_8
    IL_0236:  brtrue.s   IL_0265

    IL_0238:  newobj     instance void Game.MemoryBankData::.ctor()
    IL_023d:  stloc.s    V_8
    IL_023f:  ldarg.0
    IL_0240:  ldfld      class Game.SubsystemMemoryBankBlockBehavior Game.MemoryBankElectricElement::m_subsystemMemoryBankBlockBehavior
    IL_0245:  ldarg.0
    IL_0246:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_024b:  stloc.s    V_13
    IL_024d:  ldloca.s   V_13
    IL_024f:  ldc.i4.0
    IL_0250:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0255:  stloc.s    V_17
    IL_0257:  ldloca.s   V_17
    IL_0259:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_025e:  ldloc.s    V_8
    IL_0260:  callvirt   instance void class Game.SubsystemEditableItemBehavior`1<class Game.MemoryBankData>::SetBlockData(valuetype [Engine]Engine.Point3,
                                                                                                                           !0)
    IL_0265:  ldloc.s    V_8
    IL_0267:  ldloc.s    V_9
    IL_0269:  ldloc.s    V_4
    IL_026b:  ldc.r4     15.
    IL_0270:  mul
    IL_0271:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0276:  conv.u1
    IL_0277:  callvirt   instance void Game.MemoryBankData::Write(int32,
                                                                  uint8)
    IL_027c:  br.s       IL_029f

    IL_027e:  ldarg.0
    IL_027f:  ldloc.s    V_8
    IL_0281:  brtrue.s   IL_028a

    IL_0283:  ldc.r4     0.0
    IL_0288:  br.s       IL_029a

    IL_028a:  ldloc.s    V_8
    IL_028c:  ldloc.s    V_9
    IL_028e:  callvirt   instance uint8 Game.MemoryBankData::Read(int32)
    IL_0293:  conv.r4
    IL_0294:  ldc.r4     15.
    IL_0299:  div
    IL_029a:  stfld      float32 Game.MemoryBankElectricElement::m_voltage
    IL_029f:  ldloc.1
    IL_02a0:  brtrue.s   IL_02a9

    IL_02a2:  ldarg.0
    IL_02a3:  ldc.i4.1
    IL_02a4:  stfld      bool Game.MemoryBankElectricElement::m_clockAllowed
    IL_02a9:  ldloc.3
    IL_02aa:  brtrue.s   IL_02b3

    IL_02ac:  ldarg.0
    IL_02ad:  ldc.i4.1
    IL_02ae:  stfld      bool Game.MemoryBankElectricElement::m_writeAllowed
    IL_02b3:  ldloc.s    V_8
    IL_02b5:  brfalse.s  IL_02d0

    IL_02b7:  ldloc.s    V_8
    IL_02b9:  ldarg.0
    IL_02ba:  ldfld      float32 Game.MemoryBankElectricElement::m_voltage
    IL_02bf:  ldc.r4     15.
    IL_02c4:  mul
    IL_02c5:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_02ca:  conv.u1
    IL_02cb:  callvirt   instance void Game.MemoryBankData::set_LastOutput(uint8)
    IL_02d0:  ldarg.0
    IL_02d1:  ldfld      float32 Game.MemoryBankElectricElement::m_voltage
    IL_02d6:  ldloc.0
    IL_02d7:  ceq
    IL_02d9:  ldc.i4.0
    IL_02da:  ceq
    IL_02dc:  ret
  } // end of method MemoryBankElectricElement::Simulate

} // end of class Game.MemoryBankElectricElement