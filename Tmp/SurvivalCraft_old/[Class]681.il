.class public auto ansi beforefieldinit Game.ChristmasTreeElectricElement
       extends Game.ElectricElement
{
  .field private int32 m_lastChangeCircuitStep
  .field private float32 m_voltage
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace,
                               int32 'value') cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                   valuetype Game.CellFace)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_000f:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0014:  stfld      int32 Game.ChristmasTreeElectricElement::m_lastChangeCircuitStep
    IL_0019:  ldarg.0
    IL_001a:  ldarg.3
    IL_001b:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0020:  call       bool Game.ChristmasTreeBlock::GetLightState(int32)
    IL_0025:  brtrue.s   IL_002a

    IL_0027:  ldc.i4.0
    IL_0028:  br.s       IL_002b

    IL_002a:  ldc.i4.1
    IL_002b:  conv.r4
    IL_002c:  stfld      float32 Game.ChristmasTreeElectricElement::m_voltage
    IL_0031:  ret
  } // end of method ChristmasTreeElectricElement::.ctor

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       238 (0xee)
    .maxstack  6
    .locals init (int32 V_0,
             float32 V_1,
             valuetype Game.CellFace V_2,
             int32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0006:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      int32 Game.ChristmasTreeElectricElement::m_lastChangeCircuitStep
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
    IL_0029:  ldfld      float32 Game.ChristmasTreeElectricElement::m_voltage
    IL_002e:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_0033:  beq.s      IL_0046

    IL_0035:  ldarg.0
    IL_0036:  ldarg.0
    IL_0037:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_003c:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0041:  stfld      int32 Game.ChristmasTreeElectricElement::m_lastChangeCircuitStep
    IL_0046:  ldarg.0
    IL_0047:  ldloc.1
    IL_0048:  stfld      float32 Game.ChristmasTreeElectricElement::m_voltage
    IL_004d:  ldloc.0
    IL_004e:  ldc.i4.s   10
    IL_0050:  blt.s      IL_00d0

    IL_0052:  ldarg.0
    IL_0053:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0058:  stloc.s    V_5
    IL_005a:  ldloca.s   V_5
    IL_005c:  ldc.i4.0
    IL_005d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0062:  stloc.2
    IL_0063:  ldarg.0
    IL_0064:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0069:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_006e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0073:  ldloc.2
    IL_0074:  ldfld      int32 Game.CellFace::X
    IL_0079:  ldloc.2
    IL_007a:  ldfld      int32 Game.CellFace::Y
    IL_007f:  ldloc.2
    IL_0080:  ldfld      int32 Game.CellFace::Z
    IL_0085:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_008a:  dup
    IL_008b:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0090:  ldarg.0
    IL_0091:  ldfld      float32 Game.ChristmasTreeElectricElement::m_voltage
    IL_0096:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_009b:  call       int32 Game.ChristmasTreeBlock::SetLightState(int32,
                                                                      bool)
    IL_00a0:  stloc.3
    IL_00a1:  ldloc.3
    IL_00a2:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_00a7:  stloc.s    V_4
    IL_00a9:  ldarg.0
    IL_00aa:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00af:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_00b4:  ldloc.2
    IL_00b5:  ldfld      int32 Game.CellFace::X
    IL_00ba:  ldloc.2
    IL_00bb:  ldfld      int32 Game.CellFace::Y
    IL_00c0:  ldloc.2
    IL_00c1:  ldfld      int32 Game.CellFace::Z
    IL_00c6:  ldloc.s    V_4
    IL_00c8:  ldc.i4.1
    IL_00c9:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_00ce:  br.s       IL_00ec

    IL_00d0:  ldarg.0
    IL_00d1:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00d6:  ldarg.0
    IL_00d7:  ldarg.0
    IL_00d8:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00dd:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_00e2:  ldc.i4.s   10
    IL_00e4:  add
    IL_00e5:  ldloc.0
    IL_00e6:  sub
    IL_00e7:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_00ec:  ldc.i4.0
    IL_00ed:  ret
  } // end of method ChristmasTreeElectricElement::Simulate

} // end of class Game.ChristmasTreeElectricElement