.class public auto ansi beforefieldinit Game.WireDomainElectricElement
       extends Game.ElectricElement
{
  .field private float32 m_voltage
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace> cellFaces) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                   class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace>)
    IL_0008:  ret
  } // end of method WireDomainElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.WireDomainElectricElement::m_voltage
    IL_0006:  ret
  } // end of method WireDomainElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       132 (0x84)
    .maxstack  3
    .locals init (float32 V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_2,
             class Game.ElectricConnection V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.WireDomainElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_000f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0014:  stloc.2
    .try
    {
      IL_0015:  br.s       IL_0050

      IL_0017:  ldloca.s   V_2
      IL_0019:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_001e:  stloc.3
      IL_001f:  ldloc.3
      IL_0020:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0025:  ldc.i4.1
      IL_0026:  beq.s      IL_0050

      IL_0028:  ldloc.3
      IL_0029:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_002e:  brfalse.s  IL_0050

      IL_0030:  ldloc.1
      IL_0031:  ldloc.3
      IL_0032:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0037:  ldloc.3
      IL_0038:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_003d:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0042:  ldc.r4     15.
      IL_0047:  mul
      IL_0048:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_004d:  conv.i4
      IL_004e:  or
      IL_004f:  stloc.1
      IL_0050:  ldloca.s   V_2
      IL_0052:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0057:  brtrue.s   IL_0017

      IL_0059:  leave.s    IL_0069

    }  // end .try
    finally
    {
      IL_005b:  ldloca.s   V_2
      IL_005d:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0063:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0068:  endfinally
    }  // end handler
    IL_0069:  ldarg.0
    IL_006a:  ldloc.1
    IL_006b:  conv.r4
    IL_006c:  ldc.r4     15.
    IL_0071:  div
    IL_0072:  stfld      float32 Game.WireDomainElectricElement::m_voltage
    IL_0077:  ldarg.0
    IL_0078:  ldfld      float32 Game.WireDomainElectricElement::m_voltage
    IL_007d:  ldloc.0
    IL_007e:  ceq
    IL_0080:  ldc.i4.0
    IL_0081:  ceq
    IL_0083:  ret
  } // end of method WireDomainElectricElement::Simulate

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(valuetype Game.CellFace cellFace,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       308 (0x134)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Point3 V_4,
             int32 V_5,
             class Game.Block V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0006:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_000b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0010:  ldarg.1
    IL_0011:  ldfld      int32 Game.CellFace::X
    IL_0016:  ldarg.1
    IL_0017:  ldfld      int32 Game.CellFace::Y
    IL_001c:  ldarg.1
    IL_001d:  ldfld      int32 Game.CellFace::Z
    IL_0022:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0027:  stloc.0
    IL_0028:  ldloc.0
    IL_0029:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_002e:  stloc.1
    IL_002f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0034:  ldloc.1
    IL_0035:  ldelem.ref
    IL_0036:  isinst     Game.WireBlock
    IL_003b:  brfalse    IL_0133

    IL_0040:  ldloc.0
    IL_0041:  call       int32 Game.WireBlock::GetWireFacesBitmask(int32)
    IL_0046:  stloc.2
    IL_0047:  ldloc.2
    IL_0048:  stloc.3
    IL_0049:  ldloc.0
    IL_004a:  ldarg.1
    IL_004b:  ldfld      int32 Game.CellFace::Face
    IL_0050:  call       bool Game.WireBlock::WireExistsOnFace(int32,
                                                               int32)
    IL_0055:  brfalse.s  IL_00d5

    IL_0057:  ldarg.1
    IL_0058:  ldfld      int32 Game.CellFace::Face
    IL_005d:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0062:  stloc.s    V_4
    IL_0064:  ldarg.0
    IL_0065:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_006a:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_006f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0074:  ldarg.1
    IL_0075:  ldfld      int32 Game.CellFace::X
    IL_007a:  ldloc.s    V_4
    IL_007c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0081:  sub
    IL_0082:  ldarg.1
    IL_0083:  ldfld      int32 Game.CellFace::Y
    IL_0088:  ldloc.s    V_4
    IL_008a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_008f:  sub
    IL_0090:  ldarg.1
    IL_0091:  ldfld      int32 Game.CellFace::Z
    IL_0096:  ldloc.s    V_4
    IL_0098:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_009d:  sub
    IL_009e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_00a3:  stloc.s    V_5
    IL_00a5:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00aa:  ldloc.s    V_5
    IL_00ac:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00b1:  ldelem.ref
    IL_00b2:  stloc.s    V_6
    IL_00b4:  ldloc.s    V_6
    IL_00b6:  ldfld      bool Game.Block::IsCollidable
    IL_00bb:  brfalse.s  IL_00c6

    IL_00bd:  ldloc.s    V_6
    IL_00bf:  ldfld      bool Game.Block::IsTransparent
    IL_00c4:  brfalse.s  IL_00d5

    IL_00c6:  ldloc.3
    IL_00c7:  ldc.i4.1
    IL_00c8:  ldarg.1
    IL_00c9:  ldfld      int32 Game.CellFace::Face
    IL_00ce:  ldc.i4.s   31
    IL_00d0:  and
    IL_00d1:  shl
    IL_00d2:  not
    IL_00d3:  and
    IL_00d4:  stloc.3
    IL_00d5:  ldloc.3
    IL_00d6:  brtrue.s   IL_00ff

    IL_00d8:  ldarg.0
    IL_00d9:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_00de:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_00e3:  ldc.i4.0
    IL_00e4:  ldarg.1
    IL_00e5:  ldfld      int32 Game.CellFace::X
    IL_00ea:  ldarg.1
    IL_00eb:  ldfld      int32 Game.CellFace::Y
    IL_00f0:  ldarg.1
    IL_00f1:  ldfld      int32 Game.CellFace::Z
    IL_00f6:  ldc.i4.0
    IL_00f7:  ldc.i4.0
    IL_00f8:  ldc.i4.0
    IL_00f9:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_00fe:  ret

    IL_00ff:  ldloc.3
    IL_0100:  ldloc.2
    IL_0101:  beq.s      IL_0133

    IL_0103:  ldloc.0
    IL_0104:  ldloc.3
    IL_0105:  call       int32 Game.WireBlock::SetWireFacesBitmask(int32,
                                                                   int32)
    IL_010a:  stloc.s    V_7
    IL_010c:  ldarg.0
    IL_010d:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0112:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_0117:  ldc.i4.0
    IL_0118:  ldarg.1
    IL_0119:  ldfld      int32 Game.CellFace::X
    IL_011e:  ldarg.1
    IL_011f:  ldfld      int32 Game.CellFace::Y
    IL_0124:  ldarg.1
    IL_0125:  ldfld      int32 Game.CellFace::Z
    IL_012a:  ldloc.s    V_7
    IL_012c:  ldc.i4.0
    IL_012d:  ldc.i4.0
    IL_012e:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0133:  ret
  } // end of method WireDomainElectricElement::OnNeighborBlockChanged

} // end of class Game.WireDomainElectricElement