.class public auto ansi beforefieldinit Game.AnalogToDigitalConverterElectricElement
       extends Game.RotateableElectricElement
{
  .field private int32 m_bits
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
  } // end of method AnalogToDigitalConverterElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       151 (0x97)
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
    IL_0028:  brfalse.s  IL_0091

    IL_002a:  ldloca.s   V_0
    IL_002c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_0031:  brtrue.s   IL_0043

    IL_0033:  ldarg.0
    IL_0034:  ldfld      int32 Game.AnalogToDigitalConverterElectricElement::m_bits
    IL_0039:  ldc.i4.1
    IL_003a:  and
    IL_003b:  brtrue.s   IL_0040

    IL_003d:  ldc.i4.0
    IL_003e:  br.s       IL_0041

    IL_0040:  ldc.i4.1
    IL_0041:  conv.r4
    IL_0042:  ret

    IL_0043:  ldloca.s   V_0
    IL_0045:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_004a:  ldc.i4.3
    IL_004b:  bne.un.s   IL_005d

    IL_004d:  ldarg.0
    IL_004e:  ldfld      int32 Game.AnalogToDigitalConverterElectricElement::m_bits
    IL_0053:  ldc.i4.2
    IL_0054:  and
    IL_0055:  brtrue.s   IL_005a

    IL_0057:  ldc.i4.0
    IL_0058:  br.s       IL_005b

    IL_005a:  ldc.i4.1
    IL_005b:  conv.r4
    IL_005c:  ret

    IL_005d:  ldloca.s   V_0
    IL_005f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_0064:  ldc.i4.2
    IL_0065:  bne.un.s   IL_0077

    IL_0067:  ldarg.0
    IL_0068:  ldfld      int32 Game.AnalogToDigitalConverterElectricElement::m_bits
    IL_006d:  ldc.i4.4
    IL_006e:  and
    IL_006f:  brtrue.s   IL_0074

    IL_0071:  ldc.i4.0
    IL_0072:  br.s       IL_0075

    IL_0074:  ldc.i4.1
    IL_0075:  conv.r4
    IL_0076:  ret

    IL_0077:  ldloca.s   V_0
    IL_0079:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
    IL_007e:  ldc.i4.1
    IL_007f:  bne.un.s   IL_0091

    IL_0081:  ldarg.0
    IL_0082:  ldfld      int32 Game.AnalogToDigitalConverterElectricElement::m_bits
    IL_0087:  ldc.i4.8
    IL_0088:  and
    IL_0089:  brtrue.s   IL_008e

    IL_008b:  ldc.i4.0
    IL_008c:  br.s       IL_008f

    IL_008e:  ldc.i4.1
    IL_008f:  conv.r4
    IL_0090:  ret

    IL_0091:  ldc.r4     0.0
    IL_0096:  ret
  } // end of method AnalogToDigitalConverterElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       184 (0xb8)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_2,
             class Game.ElectricConnection V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_5,
             float32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.AnalogToDigitalConverterElectricElement::m_bits
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance int32 Game.RotateableElectricElement::get_Rotation()
    IL_000d:  stloc.1
    IL_000e:  ldarg.0
    IL_000f:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0014:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0019:  stloc.2
    .try
    {
      IL_001a:  br.s       IL_0092

      IL_001c:  ldloca.s   V_2
      IL_001e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0023:  stloc.3
      IL_0024:  ldloc.3
      IL_0025:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_002a:  ldc.i4.1
      IL_002b:  beq.s      IL_0092

      IL_002d:  ldloc.3
      IL_002e:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0033:  brfalse.s  IL_0092

      IL_0035:  ldarg.0
      IL_0036:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
      IL_003b:  stloc.s    V_5
      IL_003d:  ldloca.s   V_5
      IL_003f:  ldc.i4.0
      IL_0040:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
      IL_0045:  ldfld      int32 Game.CellFace::Face
      IL_004a:  ldloc.1
      IL_004b:  ldloc.3
      IL_004c:  ldfld      int32 Game.ElectricConnection::ConnectorFace
      IL_0051:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                   int32,
                                                                                                                                                                   int32)
      IL_0056:  stloc.s    V_4
      IL_0058:  ldloca.s   V_4
      IL_005a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_005f:  brfalse.s  IL_0092

      IL_0061:  ldloca.s   V_4
      IL_0063:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_Value()
      IL_0068:  ldc.i4.4
      IL_0069:  bne.un.s   IL_0092

      IL_006b:  ldloc.3
      IL_006c:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0071:  ldloc.3
      IL_0072:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0077:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_007c:  stloc.s    V_6
      IL_007e:  ldarg.0
      IL_007f:  ldloc.s    V_6
      IL_0081:  ldc.r4     15.
      IL_0086:  mul
      IL_0087:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_008c:  conv.i4
      IL_008d:  stfld      int32 Game.AnalogToDigitalConverterElectricElement::m_bits
      IL_0092:  ldloca.s   V_2
      IL_0094:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0099:  brtrue.s   IL_001c

      IL_009b:  leave.s    IL_00ab

    }  // end .try
    finally
    {
      IL_009d:  ldloca.s   V_2
      IL_009f:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_00a5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00aa:  endfinally
    }  // end handler
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      int32 Game.AnalogToDigitalConverterElectricElement::m_bits
    IL_00b1:  ldloc.0
    IL_00b2:  ceq
    IL_00b4:  ldc.i4.0
    IL_00b5:  ceq
    IL_00b7:  ret
  } // end of method AnalogToDigitalConverterElectricElement::Simulate

} // end of class Game.AnalogToDigitalConverterElectricElement