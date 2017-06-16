.class public auto ansi beforefieldinit Game.LightBulbElectricElement
       extends Game.MountedElectricElement
{
  .field private int32 m_intensity
  .field private int32 m_lastChangeCircuitStep
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace,
                               int32 'value') cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.MountedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_000f:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0014:  stfld      int32 Game.LightBulbElectricElement::m_lastChangeCircuitStep
    IL_0019:  ldarg.3
    IL_001a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_001f:  stloc.0
    IL_0020:  ldarg.0
    IL_0021:  ldloc.0
    IL_0022:  call       int32 Game.LightbulbBlock::GetLightIntensity(int32)
    IL_0027:  stfld      int32 Game.LightBulbElectricElement::m_intensity
    IL_002c:  ret
  } // end of method LightBulbElectricElement::.ctor

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       352 (0x160)
    .maxstack  6
    .locals init (int32 V_0,
             float32 V_1,
             int32 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_3,
             class Game.ElectricConnection V_4,
             valuetype Game.CellFace V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_8)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0006:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      int32 Game.LightBulbElectricElement::m_lastChangeCircuitStep
    IL_0011:  sub
    IL_0012:  stloc.0
    IL_0013:  ldc.r4     0.0
    IL_0018:  stloc.1
    IL_0019:  ldarg.0
    IL_001a:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_001f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0024:  stloc.3
    .try
    {
      IL_0025:  br.s       IL_005d

      IL_0027:  ldloca.s   V_3
      IL_0029:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_002e:  stloc.s    V_4
      IL_0030:  ldloc.s    V_4
      IL_0032:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0037:  ldc.i4.1
      IL_0038:  beq.s      IL_005d

      IL_003a:  ldloc.s    V_4
      IL_003c:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0041:  brfalse.s  IL_005d

      IL_0043:  ldloc.1
      IL_0044:  ldloc.s    V_4
      IL_0046:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_004b:  ldloc.s    V_4
      IL_004d:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0052:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0057:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_005c:  stloc.1
      IL_005d:  ldloca.s   V_3
      IL_005f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0064:  brtrue.s   IL_0027

      IL_0066:  leave.s    IL_0076

    }  // end .try
    finally
    {
      IL_0068:  ldloca.s   V_3
      IL_006a:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0070:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0075:  endfinally
    }  // end handler
    IL_0076:  ldarg.0
    IL_0077:  ldfld      int32 Game.LightBulbElectricElement::m_intensity
    IL_007c:  stloc.2
    IL_007d:  ldarg.0
    IL_007e:  ldloc.1
    IL_007f:  ldc.r4     0.5
    IL_0084:  sub
    IL_0085:  ldc.r4     30.
    IL_008a:  mul
    IL_008b:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0090:  conv.i4
    IL_0091:  ldc.i4.0
    IL_0092:  ldc.i4.s   15
    IL_0094:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0099:  stfld      int32 Game.LightBulbElectricElement::m_intensity
    IL_009e:  ldarg.0
    IL_009f:  ldfld      int32 Game.LightBulbElectricElement::m_intensity
    IL_00a4:  ldloc.2
    IL_00a5:  beq.s      IL_00b8

    IL_00a7:  ldarg.0
    IL_00a8:  ldarg.0
    IL_00a9:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00ae:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_00b3:  stfld      int32 Game.LightBulbElectricElement::m_lastChangeCircuitStep
    IL_00b8:  ldloc.0
    IL_00b9:  ldc.i4.s   10
    IL_00bb:  blt        IL_0142

    IL_00c0:  ldarg.0
    IL_00c1:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_00c6:  stloc.s    V_8
    IL_00c8:  ldloca.s   V_8
    IL_00ca:  ldc.i4.0
    IL_00cb:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00d0:  stloc.s    V_5
    IL_00d2:  ldarg.0
    IL_00d3:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00d8:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_00dd:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00e2:  ldloc.s    V_5
    IL_00e4:  ldfld      int32 Game.CellFace::X
    IL_00e9:  ldloc.s    V_5
    IL_00eb:  ldfld      int32 Game.CellFace::Y
    IL_00f0:  ldloc.s    V_5
    IL_00f2:  ldfld      int32 Game.CellFace::Z
    IL_00f7:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_00fc:  dup
    IL_00fd:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0102:  ldarg.0
    IL_0103:  ldfld      int32 Game.LightBulbElectricElement::m_intensity
    IL_0108:  call       int32 Game.LightbulbBlock::SetLightIntensity(int32,
                                                                      int32)
    IL_010d:  stloc.s    V_6
    IL_010f:  ldloc.s    V_6
    IL_0111:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0116:  stloc.s    V_7
    IL_0118:  ldarg.0
    IL_0119:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_011e:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0123:  ldloc.s    V_5
    IL_0125:  ldfld      int32 Game.CellFace::X
    IL_012a:  ldloc.s    V_5
    IL_012c:  ldfld      int32 Game.CellFace::Y
    IL_0131:  ldloc.s    V_5
    IL_0133:  ldfld      int32 Game.CellFace::Z
    IL_0138:  ldloc.s    V_7
    IL_013a:  ldc.i4.1
    IL_013b:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0140:  br.s       IL_015e

    IL_0142:  ldarg.0
    IL_0143:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0148:  ldarg.0
    IL_0149:  ldarg.0
    IL_014a:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_014f:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
    IL_0154:  ldc.i4.s   10
    IL_0156:  add
    IL_0157:  ldloc.0
    IL_0158:  sub
    IL_0159:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                    int32)
    IL_015e:  ldc.i4.0
    IL_015f:  ret
  } // end of method LightBulbElectricElement::Simulate

} // end of class Game.LightBulbElectricElement