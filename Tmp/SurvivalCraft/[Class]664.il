.class public auto ansi beforefieldinit Game.DelayGateElectricElement
       extends Game.BaseDelayGateElectricElement
{
  .field private valuetype [System.Runtime]System.Nullable`1<int32> m_delaySteps
  .field private int32 m_lastDelayCalculationStep
  .field private static int32[] m_delaysByPredecessorsCount
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.BaseDelayGateElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                                valuetype Game.CellFace)
    IL_0008:  ret
  } // end of method DelayGateElectricElement::.ctor

  .method public hidebysig specialname virtual 
          instance int32  get_DelaySteps() cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0006:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      int32 Game.DelayGateElectricElement::m_lastDelayCalculationStep
    IL_0011:  sub
    IL_0012:  ldc.i4.s   50
    IL_0014:  ble.s      IL_0022

    IL_0016:  ldarg.0
    IL_0017:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.DelayGateElectricElement::m_delaySteps
    IL_001c:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0022:  ldarg.0
    IL_0023:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.DelayGateElectricElement::m_delaySteps
    IL_0028:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_002d:  brtrue.s   IL_005c

    IL_002f:  ldc.i4.0
    IL_0030:  stloc.0
    IL_0031:  ldarg.0
    IL_0032:  ldloca.s   V_0
    IL_0034:  call       void Game.DelayGateElectricElement::CountDelayPredecessors(class Game.DelayGateElectricElement,
                                                                                    int32&)
    IL_0039:  ldarg.0
    IL_003a:  ldsfld     int32[] Game.DelayGateElectricElement::m_delaysByPredecessorsCount
    IL_003f:  ldloc.0
    IL_0040:  ldelem.i4
    IL_0041:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0046:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.DelayGateElectricElement::m_delaySteps
    IL_004b:  ldarg.0
    IL_004c:  ldarg.0
    IL_004d:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0052:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0057:  stfld      int32 Game.DelayGateElectricElement::m_lastDelayCalculationStep
    IL_005c:  ldarg.0
    IL_005d:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.DelayGateElectricElement::m_delaySteps
    IL_0062:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0067:  ret
  } // end of method DelayGateElectricElement::get_DelaySteps

  .method private hidebysig static void  CountDelayPredecessors(class Game.DelayGateElectricElement delayGate,
                                                                int32& count) cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  3
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_0,
             class Game.ElectricConnection V_1,
             class Game.DelayGateElectricElement V_2)
    IL_0000:  ldarg.1
    IL_0001:  ldind.i4
    IL_0002:  ldc.i4.2
    IL_0003:  bge.s      IL_005a

    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_000b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br.s       IL_0041

      IL_0013:  ldloca.s   V_0
      IL_0015:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_001a:  stloc.1
      IL_001b:  ldloc.1
      IL_001c:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0021:  brtrue.s   IL_0041

      IL_0023:  ldloc.1
      IL_0024:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0029:  isinst     Game.DelayGateElectricElement
      IL_002e:  stloc.2
      IL_002f:  ldloc.2
      IL_0030:  brfalse.s  IL_0041

      IL_0032:  ldarg.1
      IL_0033:  ldarg.1
      IL_0034:  ldind.i4
      IL_0035:  ldc.i4.1
      IL_0036:  add
      IL_0037:  stind.i4
      IL_0038:  ldloc.2
      IL_0039:  ldarg.1
      IL_003a:  call       void Game.DelayGateElectricElement::CountDelayPredecessors(class Game.DelayGateElectricElement,
                                                                                      int32&)
      IL_003f:  leave.s    IL_005a

      IL_0041:  ldloca.s   V_0
      IL_0043:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0048:  brtrue.s   IL_0013

      IL_004a:  leave.s    IL_005a

    }  // end .try
    finally
    {
      IL_004c:  ldloca.s   V_0
      IL_004e:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0054:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0059:  endfinally
    }  // end handler
    IL_005a:  ret
  } // end of method DelayGateElectricElement::CountDelayPredecessors

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldc.i4.3
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::'1FDEA76486231C81FE54FBA93CD713D9B05584D8'
    IL_000c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0011:  stsfld     int32[] Game.DelayGateElectricElement::m_delaysByPredecessorsCount
    IL_0016:  ret
  } // end of method DelayGateElectricElement::.cctor

  .property instance int32 DelaySteps()
  {
    .get instance int32 Game.DelayGateElectricElement::get_DelaySteps()
  } // end of property DelayGateElectricElement::DelaySteps
} // end of class Game.DelayGateElectricElement