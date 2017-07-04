.class public auto ansi beforefieldinit Game.OneLedElectricElement
       extends Game.MountedElectricElement
{
  .field private class Game.SubsystemGlow m_subsystemGlow
  .field private float32 m_voltage
  .field private valuetype [Engine]Engine.Color m_color
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
    IL_0015:  stfld      class Game.SubsystemGlow Game.OneLedElectricElement::m_subsystemGlow
    IL_001a:  ret
  } // end of method OneLedElectricElement::.ctor

  .method public hidebysig virtual instance void 
          OnAdded() cil managed
  {
    // 代码大小       340 (0x154)
    .maxstack  5
    .locals init (valuetype Game.CellFace V_0,
             int32 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0006:  stloc.s    V_7
    IL_0008:  ldloca.s   V_7
    IL_000a:  ldc.i4.0
    IL_000b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0017:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_001c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0021:  ldloc.0
    IL_0022:  ldfld      int32 Game.CellFace::X
    IL_0027:  ldloc.0
    IL_0028:  ldfld      int32 Game.CellFace::Y
    IL_002d:  ldloc.0
    IL_002e:  ldfld      int32 Game.CellFace::Z
    IL_0033:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0038:  call       int32 Game.Terrain::ExtractData(int32)
    IL_003d:  stloc.1
    IL_003e:  ldloc.1
    IL_003f:  call       int32 Game.FourLedBlock::GetMountingFace(int32)
    IL_0044:  stloc.2
    IL_0045:  ldarg.0
    IL_0046:  ldsfld     valuetype [Engine]Engine.Color[] Game.LedBlock::LedColors
    IL_004b:  ldloc.1
    IL_004c:  call       int32 Game.FourLedBlock::GetColor(int32)
    IL_0051:  ldelem     [Engine]Engine.Color
    IL_0056:  stfld      valuetype [Engine]Engine.Color Game.OneLedElectricElement::m_color
    IL_005b:  ldloca.s   V_3
    IL_005d:  ldloc.0
    IL_005e:  ldfld      int32 Game.CellFace::X
    IL_0063:  conv.r4
    IL_0064:  ldc.r4     0.5
    IL_0069:  add
    IL_006a:  ldloc.0
    IL_006b:  ldfld      int32 Game.CellFace::Y
    IL_0070:  conv.r4
    IL_0071:  ldc.r4     0.5
    IL_0076:  add
    IL_0077:  ldloc.0
    IL_0078:  ldfld      int32 Game.CellFace::Z
    IL_007d:  conv.r4
    IL_007e:  ldc.r4     0.5
    IL_0083:  add
    IL_0084:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0089:  ldloc.2
    IL_008a:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_008f:  stloc.s    V_4
    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.4
    IL_0093:  blt.s      IL_009c

    IL_0095:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_009a:  br.s       IL_00a1

    IL_009c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00a1:  stloc.s    V_5
    IL_00a3:  ldloc.s    V_4
    IL_00a5:  ldloc.s    V_5
    IL_00a7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00ac:  stloc.s    V_6
    IL_00ae:  ldarg.0
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.SubsystemGlow Game.OneLedElectricElement::m_subsystemGlow
    IL_00b5:  callvirt   instance class Game.GlowPoint Game.SubsystemGlow::AddGlowPoint()
    IL_00ba:  stfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_00c5:  ldloc.3
    IL_00c6:  ldc.r4     0.4375
    IL_00cb:  ldloc.2
    IL_00cc:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_00d1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00db:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_00e6:  ldloc.s    V_4
    IL_00e8:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_00f3:  ldloc.s    V_5
    IL_00f5:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_0100:  ldloc.s    V_6
    IL_0102:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_010d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0112:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_011d:  ldc.r4     0.51999998
    IL_0122:  stfld      float32 Game.GlowPoint::Size
    IL_0127:  ldarg.0
    IL_0128:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_012d:  ldc.r4     0.51999998
    IL_0132:  stfld      float32 Game.GlowPoint::FarSize
    IL_0137:  ldarg.0
    IL_0138:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_013d:  ldc.r4     1.
    IL_0142:  stfld      float32 Game.GlowPoint::FarDistance
    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_014d:  ldc.i4.1
    IL_014e:  stfld      valuetype Game.GlowPointType Game.GlowPoint::Type
    IL_0153:  ret
  } // end of method OneLedElectricElement::OnAdded

  .method public hidebysig virtual instance void 
          OnRemoved() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGlow Game.OneLedElectricElement::m_subsystemGlow
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_000c:  callvirt   instance void Game.SubsystemGlow::RemoveGlowPoint(class Game.GlowPoint)
    IL_0011:  ret
  } // end of method OneLedElectricElement::OnRemoved

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
    IL_0001:  ldfld      float32 Game.OneLedElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldc.r4     0.0
    IL_000d:  stfld      float32 Game.OneLedElectricElement::m_voltage
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
      IL_003b:  ldfld      float32 Game.OneLedElectricElement::m_voltage
      IL_0040:  ldloc.2
      IL_0041:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0046:  ldloc.2
      IL_0047:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_004c:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0051:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0056:  stfld      float32 Game.OneLedElectricElement::m_voltage
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
    IL_0075:  ldfld      float32 Game.OneLedElectricElement::m_voltage
    IL_007a:  ldloc.0
    IL_007b:  beq.s      IL_00c5

    IL_007d:  ldarg.0
    IL_007e:  ldfld      float32 Game.OneLedElectricElement::m_voltage
    IL_0083:  ldc.r4     15.
    IL_0088:  mul
    IL_0089:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_008e:  conv.i4
    IL_008f:  stloc.3
    IL_0090:  ldloc.3
    IL_0091:  ldc.i4.8
    IL_0092:  blt.s      IL_00b5

    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
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
    IL_00b6:  ldfld      class Game.GlowPoint Game.OneLedElectricElement::m_glowPoint
    IL_00bb:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_00c0:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_00c5:  ldc.i4.0
    IL_00c6:  ret
  } // end of method OneLedElectricElement::Simulate

} // end of class Game.OneLedElectricElement