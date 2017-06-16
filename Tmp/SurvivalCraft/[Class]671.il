.class public auto ansi beforefieldinit Game.RandomGeneratorElectricElement
       extends Game.RotateableElectricElement
{
  .field private bool m_clockAllowed
  .field private float32 m_voltage
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_1,
             valuetype Game.CellFace V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.RandomGeneratorElectricElement::m_clockAllowed
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  call       instance void Game.RotateableElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                             valuetype Game.CellFace)
    IL_000f:  ldarg.0
    IL_0010:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0015:  ldarg.0
    IL_0016:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_001b:  stloc.1
    IL_001c:  ldloca.s   V_1
    IL_001e:  ldc.i4.0
    IL_001f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0024:  stloc.2
    IL_0025:  ldloca.s   V_2
    IL_0027:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_002c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemElectricity::ReadPersistentVoltage(valuetype [Engine]Engine.Point3)
    IL_0031:  stloc.0
    IL_0032:  ldloca.s   V_0
    IL_0034:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0039:  brfalse.s  IL_0049

    IL_003b:  ldarg.0
    IL_003c:  ldloca.s   V_0
    IL_003e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0043:  stfld      float32 Game.RandomGeneratorElectricElement::m_voltage
    IL_0048:  ret

    IL_0049:  ldarg.0
    IL_004a:  call       float32 Game.RandomGeneratorElectricElement::GetRandomVoltage()
    IL_004f:  stfld      float32 Game.RandomGeneratorElectricElement::m_voltage
    IL_0054:  ret
  } // end of method RandomGeneratorElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.RandomGeneratorElectricElement::m_voltage
    IL_0006:  ret
  } // end of method RandomGeneratorElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       281 (0x119)
    .maxstack  6
    .locals init (float32 V_0,
             bool V_1,
             bool V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_3,
             class Game.ElectricConnection V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_5,
             valuetype Game.CellFace V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.RandomGeneratorElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  ldc.i4.0
    IL_000a:  stloc.2
    IL_000b:  ldarg.0
    IL_000c:  call       instance int32 Game.RotateableElectricElement::get_Rotation()
    IL_0011:  pop
    IL_0012:  ldarg.0
    IL_0013:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0018:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_001d:  stloc.3
    .try
    {
      IL_001e:  br.s       IL_0072

      IL_0020:  ldloca.s   V_3
      IL_0022:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0027:  stloc.s    V_4
      IL_0029:  ldloc.s    V_4
      IL_002b:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0030:  ldc.i4.1
      IL_0031:  beq.s      IL_0072

      IL_0033:  ldloc.s    V_4
      IL_0035:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_003a:  brfalse.s  IL_0072

      IL_003c:  ldloc.s    V_4
      IL_003e:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0043:  ldloc.s    V_4
      IL_0045:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_004a:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_004f:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_0054:  brfalse.s  IL_0069

      IL_0056:  ldarg.0
      IL_0057:  ldfld      bool Game.RandomGeneratorElectricElement::m_clockAllowed
      IL_005c:  brfalse.s  IL_0070

      IL_005e:  ldc.i4.1
      IL_005f:  stloc.1
      IL_0060:  ldarg.0
      IL_0061:  ldc.i4.0
      IL_0062:  stfld      bool Game.RandomGeneratorElectricElement::m_clockAllowed
      IL_0067:  br.s       IL_0070

      IL_0069:  ldarg.0
      IL_006a:  ldc.i4.1
      IL_006b:  stfld      bool Game.RandomGeneratorElectricElement::m_clockAllowed
      IL_0070:  ldc.i4.1
      IL_0071:  stloc.2
      IL_0072:  ldloca.s   V_3
      IL_0074:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0079:  brtrue.s   IL_0020

      IL_007b:  leave.s    IL_008b

    }  // end .try
    finally
    {
      IL_007d:  ldloca.s   V_3
      IL_007f:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0085:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008a:  endfinally
    }  // end handler
    IL_008b:  ldloc.2
    IL_008c:  brfalse.s  IL_009e

    IL_008e:  ldloc.1
    IL_008f:  brfalse.s  IL_00e2

    IL_0091:  ldarg.0
    IL_0092:  call       float32 Game.RandomGeneratorElectricElement::GetRandomVoltage()
    IL_0097:  stfld      float32 Game.RandomGeneratorElectricElement::m_voltage
    IL_009c:  br.s       IL_00e2

    IL_009e:  ldarg.0
    IL_009f:  call       float32 Game.RandomGeneratorElectricElement::GetRandomVoltage()
    IL_00a4:  stfld      float32 Game.RandomGeneratorElectricElement::m_voltage
    IL_00a9:  ldarg.0
    IL_00aa:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00af:  ldarg.0
    IL_00b0:  ldarg.0
    IL_00b1:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00b6:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_00bb:  ldsfld     class Game.Random Game.Random::GlobalRandom
    IL_00c0:  ldc.r4     0.25
    IL_00c5:  ldc.r4     0.75
    IL_00ca:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00cf:  ldc.r4     9.9999998e-003
    IL_00d4:  div
    IL_00d5:  conv.i4
    IL_00d6:  ldc.i4.1
    IL_00d7:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00dc:  add
    IL_00dd:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_00e2:  ldarg.0
    IL_00e3:  ldfld      float32 Game.RandomGeneratorElectricElement::m_voltage
    IL_00e8:  ldloc.0
    IL_00e9:  beq.s      IL_0117

    IL_00eb:  ldarg.0
    IL_00ec:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00f1:  ldarg.0
    IL_00f2:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00f7:  stloc.s    V_5
    IL_00f9:  ldloca.s   V_5
    IL_00fb:  ldc.i4.0
    IL_00fc:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0101:  stloc.s    V_6
    IL_0103:  ldloca.s   V_6
    IL_0105:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_010a:  ldarg.0
    IL_010b:  ldfld      float32 Game.RandomGeneratorElectricElement::m_voltage
    IL_0110:  callvirt   instance void Game.SubsystemElectricity::WritePersistentVoltage(valuetype [Engine]Engine.Point3,
                                                                                         float32)
    IL_0115:  ldc.i4.1
    IL_0116:  ret

    IL_0117:  ldc.i4.0
    IL_0118:  ret
  } // end of method RandomGeneratorElectricElement::Simulate

  .method private hidebysig static float32 
          GetRandomVoltage() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldsfld     class Game.Random Game.Random::GlobalRandom
    IL_0005:  ldc.i4.0
    IL_0006:  ldc.i4.s   15
    IL_0008:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_000d:  conv.r4
    IL_000e:  ldc.r4     15.
    IL_0013:  div
    IL_0014:  ret
  } // end of method RandomGeneratorElectricElement::GetRandomVoltage

} // end of class Game.RandomGeneratorElectricElement