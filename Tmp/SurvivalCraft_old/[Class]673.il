.class public auto ansi beforefieldinit Game.MulticoloredLedElectricElement
       extends Game.MountedElectricElement
{
  .field private class Game.SubsystemGlow m_subsystemGlow
  .field private float32 m_voltage
  .field private class Game.GlowPoint m_glowPoint
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.MountedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGlow>(bool)
    IL_0015:  stfld      class Game.SubsystemGlow Game.MulticoloredLedElectricElement::m_subsystemGlow
    IL_001a:  ret
  } // end of method MulticoloredLedElectricElement::.ctor

  .method public hidebysig virtual instance void 
          OnAdded() cil managed
  {
    // 代码大小       321 (0x141)
    .maxstack  5
    .locals init (valuetype Game.CellFace V_0,
             int32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.SubsystemGlow Game.MulticoloredLedElectricElement::m_subsystemGlow
    IL_0007:  callvirt   instance class Game.GlowPoint Game.SubsystemGlow::AddGlowPoint()
    IL_000c:  stfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_0011:  ldarg.0
    IL_0012:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0017:  stloc.3
    IL_0018:  ldloca.s   V_3
    IL_001a:  ldc.i4.0
    IL_001b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0020:  stloc.0
    IL_0021:  ldarg.0
    IL_0022:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0027:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_002c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0031:  ldloc.0
    IL_0032:  ldfld      int32 Game.CellFace::X
    IL_0037:  ldloc.0
    IL_0038:  ldfld      int32 Game.CellFace::Y
    IL_003d:  ldloc.0
    IL_003e:  ldfld      int32 Game.CellFace::Z
    IL_0043:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0048:  call       int32 Game.Terrain::ExtractData(int32)
    IL_004d:  call       int32 Game.MulticoloredLedBlock::GetMountingFace(int32)
    IL_0052:  stloc.1
    IL_0053:  ldloca.s   V_2
    IL_0055:  ldloc.0
    IL_0056:  ldfld      int32 Game.CellFace::X
    IL_005b:  conv.r4
    IL_005c:  ldc.r4     0.5
    IL_0061:  add
    IL_0062:  ldloc.0
    IL_0063:  ldfld      int32 Game.CellFace::Y
    IL_0068:  conv.r4
    IL_0069:  ldc.r4     0.5
    IL_006e:  add
    IL_006f:  ldloc.0
    IL_0070:  ldfld      int32 Game.CellFace::Z
    IL_0075:  conv.r4
    IL_0076:  ldc.r4     0.5
    IL_007b:  add
    IL_007c:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_0087:  ldloc.2
    IL_0088:  ldc.r4     0.4375
    IL_008d:  ldloc.1
    IL_008e:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0093:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0098:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_009d:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_00a8:  ldloc.1
    IL_00a9:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_00ae:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_00b9:  ldloc.1
    IL_00ba:  ldc.i4.4
    IL_00bb:  blt.s      IL_00c4

    IL_00bd:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_00c2:  br.s       IL_00c9

    IL_00c4:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00c9:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_00da:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_00e5:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_00ea:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00ef:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_00fa:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_00ff:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_0104:  ldarg.0
    IL_0105:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_010a:  ldc.r4     3.2400001e-002
    IL_010f:  stfld      float32 Game.GlowPoint::Size
    IL_0114:  ldarg.0
    IL_0115:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_011a:  ldc.r4     3.2400001e-002
    IL_011f:  stfld      float32 Game.GlowPoint::FarSize
    IL_0124:  ldarg.0
    IL_0125:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_012a:  ldc.r4     0.0
    IL_012f:  stfld      float32 Game.GlowPoint::FarDistance
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_013a:  ldc.i4.1
    IL_013b:  stfld      valuetype Game.GlowPointType Game.GlowPoint::Type
    IL_0140:  ret
  } // end of method MulticoloredLedElectricElement::OnAdded

  .method public hidebysig virtual instance void 
          OnRemoved() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGlow Game.MulticoloredLedElectricElement::m_subsystemGlow
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_000c:  callvirt   instance void Game.SubsystemGlow::RemoveGlowPoint(class Game.GlowPoint)
    IL_0011:  ret
  } // end of method MulticoloredLedElectricElement::OnRemoved

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       199 (0xc7)
    .maxstack  5
    .locals init (float32 V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_1,
             class Game.ElectricConnection V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.MulticoloredLedElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldc.r4     0.0
    IL_000d:  stfld      float32 Game.MulticoloredLedElectricElement::m_voltage
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
      IL_003b:  ldfld      float32 Game.MulticoloredLedElectricElement::m_voltage
      IL_0040:  ldloc.2
      IL_0041:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0046:  ldloc.2
      IL_0047:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_004c:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0051:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0056:  stfld      float32 Game.MulticoloredLedElectricElement::m_voltage
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
    IL_0075:  ldfld      float32 Game.MulticoloredLedElectricElement::m_voltage
    IL_007a:  ldloc.0
    IL_007b:  beq.s      IL_00c5

    IL_007d:  ldarg.0
    IL_007e:  ldfld      float32 Game.MulticoloredLedElectricElement::m_voltage
    IL_0083:  ldc.r4     15.
    IL_0088:  mul
    IL_0089:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_008e:  conv.i4
    IL_008f:  stloc.3
    IL_0090:  ldloc.3
    IL_0091:  ldc.i4.8
    IL_0092:  blt.s      IL_00b5

    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_009a:  ldsfld     valuetype [Engine]Engine.Color[] Game.LedBlock::LedColors
    IL_009f:  ldloc.3
    IL_00a0:  ldc.i4.8
    IL_00a1:  sub
    IL_00a2:  ldc.i4.0
    IL_00a3:  ldc.i4.7
    IL_00a4:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00a9:  ldelem     [Engine]Engine.Color
    IL_00ae:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_00b3:  br.s       IL_00c5

    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class Game.GlowPoint Game.MulticoloredLedElectricElement::m_glowPoint
    IL_00bb:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_00c0:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_00c5:  ldc.i4.0
    IL_00c6:  ret
  } // end of method MulticoloredLedElectricElement::Simulate

} // end of class Game.MulticoloredLedElectricElement