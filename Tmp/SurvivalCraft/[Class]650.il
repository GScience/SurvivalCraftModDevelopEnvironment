.class public auto ansi beforefieldinit Game.SpikedPlankElectricElement
       extends Game.MountedElectricElement
{
  .field private int32 m_lastChangeCircuitStep
  .field private bool m_needsReset
  .field private float32 m_voltage
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.MountedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_000f:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0014:  stfld      int32 Game.SpikedPlankElectricElement::m_lastChangeCircuitStep
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.1
    IL_001b:  stfld      bool Game.SpikedPlankElectricElement::m_needsReset
    IL_0020:  ret
  } // end of method SpikedPlankElectricElement::.ctor

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       276 (0x114)
    .maxstack  6
    .locals init (int32 V_0,
             float32 V_1,
             valuetype Game.CellFace V_2,
             int32 V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0006:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      int32 Game.SpikedPlankElectricElement::m_lastChangeCircuitStep
    IL_0011:  sub
    IL_0012:  stloc.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance int32 Game.ElectricElement::CalculateHighInputsCount()
    IL_0019:  ldc.i4.0
    IL_001a:  bgt.s      IL_001f

    IL_001c:  ldc.i4.0
    IL_001d:  br.s       IL_0020

    IL_001f:  ldc.i4.1
    IL_0020:  conv.r4
    IL_0021:  stloc.1
    IL_0022:  ldloc.1
    IL_0023:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_0028:  ldarg.0
    IL_0029:  ldfld      float32 Game.SpikedPlankElectricElement::m_voltage
    IL_002e:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_0033:  beq.s      IL_0046

    IL_0035:  ldarg.0
    IL_0036:  ldarg.0
    IL_0037:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_003c:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0041:  stfld      int32 Game.SpikedPlankElectricElement::m_lastChangeCircuitStep
    IL_0046:  ldarg.0
    IL_0047:  ldloc.1
    IL_0048:  stfld      float32 Game.SpikedPlankElectricElement::m_voltage
    IL_004d:  ldarg.0
    IL_004e:  ldfld      float32 Game.SpikedPlankElectricElement::m_voltage
    IL_0053:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_0058:  brtrue.s   IL_0061

    IL_005a:  ldarg.0
    IL_005b:  ldc.i4.0
    IL_005c:  stfld      bool Game.SpikedPlankElectricElement::m_needsReset
    IL_0061:  ldarg.0
    IL_0062:  ldfld      bool Game.SpikedPlankElectricElement::m_needsReset
    IL_0067:  brtrue     IL_0112

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.s   10
    IL_006f:  blt        IL_00f6

    IL_0074:  ldarg.0
    IL_0075:  ldfld      float32 Game.SpikedPlankElectricElement::m_voltage
    IL_007a:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_007f:  brfalse    IL_0112

    IL_0084:  ldarg.0
    IL_0085:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_008a:  stloc.s    V_4
    IL_008c:  ldloca.s   V_4
    IL_008e:  ldc.i4.0
    IL_008f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0094:  stloc.2
    IL_0095:  ldarg.0
    IL_0096:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_009b:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_00a0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a5:  ldloc.2
    IL_00a6:  ldfld      int32 Game.CellFace::X
    IL_00ab:  ldloc.2
    IL_00ac:  ldfld      int32 Game.CellFace::Y
    IL_00b1:  ldloc.2
    IL_00b2:  ldfld      int32 Game.CellFace::Z
    IL_00b7:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_00bc:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_00c1:  stloc.3
    IL_00c2:  ldarg.0
    IL_00c3:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00c8:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSpikesBlockBehavior>(bool)
    IL_00d3:  ldloc.2
    IL_00d4:  ldfld      int32 Game.CellFace::X
    IL_00d9:  ldloc.2
    IL_00da:  ldfld      int32 Game.CellFace::Y
    IL_00df:  ldloc.2
    IL_00e0:  ldfld      int32 Game.CellFace::Z
    IL_00e5:  ldloc.3
    IL_00e6:  call       bool Game.SpikedPlankBlock::GetSpikesState(int32)
    IL_00eb:  ldc.i4.0
    IL_00ec:  ceq
    IL_00ee:  callvirt   instance bool Game.SubsystemSpikesBlockBehavior::RetractExtendSpikes(int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              bool)
    IL_00f3:  pop
    IL_00f4:  br.s       IL_0112

    IL_00f6:  ldarg.0
    IL_00f7:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00fc:  ldarg.0
    IL_00fd:  ldarg.0
    IL_00fe:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0103:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0108:  ldc.i4.s   10
    IL_010a:  add
    IL_010b:  ldloc.0
    IL_010c:  sub
    IL_010d:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_0112:  ldc.i4.0
    IL_0113:  ret
  } // end of method SpikedPlankElectricElement::Simulate

} // end of class Game.SpikedPlankElectricElement