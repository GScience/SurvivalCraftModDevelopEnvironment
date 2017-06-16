.class public auto ansi beforefieldinit Game.FourLedElectricElement
       extends Game.MountedElectricElement
{
  .field private class Game.SubsystemGlow m_subsystemGlow
  .field private float32 m_voltage
  .field private valuetype [Engine]Engine.Color m_color
  .field private class Game.GlowPoint[] m_glowPoints
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  newarr     Game.GlowPoint
    IL_0007:  stfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  call       instance void Game.MountedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGlow>(bool)
    IL_0021:  stfld      class Game.SubsystemGlow Game.FourLedElectricElement::m_subsystemGlow
    IL_0026:  ret
  } // end of method FourLedElectricElement::.ctor

  .method public hidebysig virtual instance void 
          OnAdded() cil managed
  {
    // 代码大小       466 (0x1d2)
    .maxstack  5
    .locals init (valuetype Game.CellFace V_0,
             int32 V_1,
             int32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0006:  stloc.3
    IL_0007:  ldloca.s   V_3
    IL_0009:  ldc.i4.0
    IL_000a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_000f:  stloc.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0016:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_001b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0020:  ldloc.0
    IL_0021:  ldfld      int32 Game.CellFace::X
    IL_0026:  ldloc.0
    IL_0027:  ldfld      int32 Game.CellFace::Y
    IL_002c:  ldloc.0
    IL_002d:  ldfld      int32 Game.CellFace::Z
    IL_0032:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0037:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_003c:  stloc.1
    IL_003d:  ldloc.1
    IL_003e:  call       int32 Game.FourLedBlock::GetMountingFace(int32)
    IL_0043:  stloc.2
    IL_0044:  ldarg.0
    IL_0045:  ldsfld     valuetype [Engine]Engine.Color[] Game.LedBlock::LedColors
    IL_004a:  ldloc.1
    IL_004b:  call       int32 Game.FourLedBlock::GetColor(int32)
    IL_0050:  ldelem     [Engine]Engine.Color
    IL_0055:  stfld      valuetype [Engine]Engine.Color Game.FourLedElectricElement::m_color
    IL_005a:  ldc.i4.0
    IL_005b:  stloc.s    V_4
    IL_005d:  br         IL_01c9

    IL_0062:  ldloc.s    V_4
    IL_0064:  ldc.i4.2
    IL_0065:  rem
    IL_0066:  brfalse.s  IL_006b

    IL_0068:  ldc.i4.m1
    IL_0069:  br.s       IL_006c

    IL_006b:  ldc.i4.1
    IL_006c:  stloc.s    V_5
    IL_006e:  ldloc.s    V_4
    IL_0070:  ldc.i4.2
    IL_0071:  div
    IL_0072:  brfalse.s  IL_0077

    IL_0074:  ldc.i4.m1
    IL_0075:  br.s       IL_0078

    IL_0077:  ldc.i4.1
    IL_0078:  stloc.s    V_6
    IL_007a:  ldloca.s   V_7
    IL_007c:  ldloc.0
    IL_007d:  ldfld      int32 Game.CellFace::X
    IL_0082:  conv.r4
    IL_0083:  ldc.r4     0.5
    IL_0088:  add
    IL_0089:  ldloc.0
    IL_008a:  ldfld      int32 Game.CellFace::Y
    IL_008f:  conv.r4
    IL_0090:  ldc.r4     0.5
    IL_0095:  add
    IL_0096:  ldloc.0
    IL_0097:  ldfld      int32 Game.CellFace::Z
    IL_009c:  conv.r4
    IL_009d:  ldc.r4     0.5
    IL_00a2:  add
    IL_00a3:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a8:  ldloc.2
    IL_00a9:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_00ae:  stloc.s    V_8
    IL_00b0:  ldloc.2
    IL_00b1:  ldc.i4.4
    IL_00b2:  blt.s      IL_00bb

    IL_00b4:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_00b9:  br.s       IL_00c0

    IL_00bb:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00c0:  stloc.s    V_9
    IL_00c2:  ldloc.s    V_8
    IL_00c4:  ldloc.s    V_9
    IL_00c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00cb:  stloc.s    V_10
    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_00d3:  ldloc.s    V_4
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.SubsystemGlow Game.FourLedElectricElement::m_subsystemGlow
    IL_00db:  callvirt   instance class Game.GlowPoint Game.SubsystemGlow::AddGlowPoint()
    IL_00e0:  stelem.ref
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_00e7:  ldloc.s    V_4
    IL_00e9:  ldelem.ref
    IL_00ea:  ldloc.s    V_7
    IL_00ec:  ldc.r4     0.4375
    IL_00f1:  ldloc.2
    IL_00f2:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_00f7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0101:  ldc.r4     0.25
    IL_0106:  ldloc.s    V_10
    IL_0108:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_010d:  ldloc.s    V_5
    IL_010f:  conv.r4
    IL_0110:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0115:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011a:  ldc.r4     0.25
    IL_011f:  ldloc.s    V_9
    IL_0121:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0126:  ldloc.s    V_6
    IL_0128:  conv.r4
    IL_0129:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_012e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0133:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
    IL_0138:  ldarg.0
    IL_0139:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_013e:  ldloc.s    V_4
    IL_0140:  ldelem.ref
    IL_0141:  ldloc.s    V_8
    IL_0143:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_0148:  ldarg.0
    IL_0149:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_014e:  ldloc.s    V_4
    IL_0150:  ldelem.ref
    IL_0151:  ldloc.s    V_9
    IL_0153:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_0158:  ldarg.0
    IL_0159:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_015e:  ldloc.s    V_4
    IL_0160:  ldelem.ref
    IL_0161:  ldloc.s    V_10
    IL_0163:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
    IL_0168:  ldarg.0
    IL_0169:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_016e:  ldloc.s    V_4
    IL_0170:  ldelem.ref
    IL_0171:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0176:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_017b:  ldarg.0
    IL_017c:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_0181:  ldloc.s    V_4
    IL_0183:  ldelem.ref
    IL_0184:  ldc.r4     0.25999999
    IL_0189:  stfld      float32 Game.GlowPoint::Size
    IL_018e:  ldarg.0
    IL_018f:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_0194:  ldloc.s    V_4
    IL_0196:  ldelem.ref
    IL_0197:  ldc.r4     0.25999999
    IL_019c:  stfld      float32 Game.GlowPoint::FarSize
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_01a7:  ldloc.s    V_4
    IL_01a9:  ldelem.ref
    IL_01aa:  ldc.r4     1.
    IL_01af:  stfld      float32 Game.GlowPoint::FarDistance
    IL_01b4:  ldarg.0
    IL_01b5:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_01ba:  ldloc.s    V_4
    IL_01bc:  ldelem.ref
    IL_01bd:  ldc.i4.1
    IL_01be:  stfld      valuetype Game.GlowPointType Game.GlowPoint::Type
    IL_01c3:  ldloc.s    V_4
    IL_01c5:  ldc.i4.1
    IL_01c6:  add
    IL_01c7:  stloc.s    V_4
    IL_01c9:  ldloc.s    V_4
    IL_01cb:  ldc.i4.4
    IL_01cc:  blt        IL_0062

    IL_01d1:  ret
  } // end of method FourLedElectricElement::OnAdded

  .method public hidebysig virtual instance void 
          OnRemoved() cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_001b

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class Game.SubsystemGlow Game.FourLedElectricElement::m_subsystemGlow
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_0010:  ldloc.0
    IL_0011:  ldelem.ref
    IL_0012:  callvirt   instance void Game.SubsystemGlow::RemoveGlowPoint(class Game.GlowPoint)
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  add
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.4
    IL_001d:  blt.s      IL_0004

    IL_001f:  ret
  } // end of method FourLedElectricElement::OnRemoved

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       214 (0xd6)
    .maxstack  4
    .locals init (float32 V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_1,
             class Game.ElectricConnection V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.FourLedElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldc.r4     0.0
    IL_000d:  stfld      float32 Game.FourLedElectricElement::m_voltage
    IL_0012:  ldarg.0
    IL_0013:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0018:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_001d:  stloc.1
    .try
    {
      IL_001e:  br.s       IL_005b

      IL_0020:  ldloca.s   V_1
      IL_0022:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0027:  stloc.2
      IL_0028:  ldloc.2
      IL_0029:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_002e:  ldc.i4.1
      IL_002f:  beq.s      IL_005b

      IL_0031:  ldloc.2
      IL_0032:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0037:  brfalse.s  IL_005b

      IL_0039:  ldarg.0
      IL_003a:  ldarg.0
      IL_003b:  ldfld      float32 Game.FourLedElectricElement::m_voltage
      IL_0040:  ldloc.2
      IL_0041:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0046:  ldloc.2
      IL_0047:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_004c:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0051:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0056:  stfld      float32 Game.FourLedElectricElement::m_voltage
      IL_005b:  ldloca.s   V_1
      IL_005d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_0062:  brtrue.s   IL_0020

      IL_0064:  leave.s    IL_0074

    }  // end .try
    finally
    {
      IL_0066:  ldloca.s   V_1
      IL_0068:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_006e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0073:  endfinally
    }  // end handler
    IL_0074:  ldarg.0
    IL_0075:  ldfld      float32 Game.FourLedElectricElement::m_voltage
    IL_007a:  ldloc.0
    IL_007b:  beq.s      IL_00d4

    IL_007d:  ldarg.0
    IL_007e:  ldfld      float32 Game.FourLedElectricElement::m_voltage
    IL_0083:  ldc.r4     15.
    IL_0088:  mul
    IL_0089:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_008e:  conv.i4
    IL_008f:  stloc.3
    IL_0090:  ldc.i4.0
    IL_0091:  stloc.s    V_4
    IL_0093:  br.s       IL_00cf

    IL_0095:  ldloc.3
    IL_0096:  ldc.i4.1
    IL_0097:  ldloc.s    V_4
    IL_0099:  ldc.i4.s   31
    IL_009b:  and
    IL_009c:  shl
    IL_009d:  and
    IL_009e:  brfalse.s  IL_00b6

    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_00a6:  ldloc.s    V_4
    IL_00a8:  ldelem.ref
    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      valuetype [Engine]Engine.Color Game.FourLedElectricElement::m_color
    IL_00af:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_00b4:  br.s       IL_00c9

    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.GlowPoint[] Game.FourLedElectricElement::m_glowPoints
    IL_00bc:  ldloc.s    V_4
    IL_00be:  ldelem.ref
    IL_00bf:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_00c4:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_00c9:  ldloc.s    V_4
    IL_00cb:  ldc.i4.1
    IL_00cc:  add
    IL_00cd:  stloc.s    V_4
    IL_00cf:  ldloc.s    V_4
    IL_00d1:  ldc.i4.4
    IL_00d2:  blt.s      IL_0095

    IL_00d4:  ldc.i4.0
    IL_00d5:  ret
  } // end of method FourLedElectricElement::Simulate

} // end of class Game.FourLedElectricElement