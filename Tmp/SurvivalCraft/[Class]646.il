.class public auto ansi beforefieldinit Game.SevenSegmentDisplayElectricElement
       extends Game.MountedElectricElement
{
  .field private class Game.SubsystemGlow m_subsystemGlow
  .field private float32 m_voltage
  .field private class Game.GlowPoint[] m_glowPoints
  .field private valuetype [Engine]Engine.Color m_color
  .field private valuetype [Engine]Engine.Vector2[] m_centers
  .field private valuetype [Engine]Engine.Vector2[] m_sizes
  .field private int32[] m_patterns
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       406 (0x196)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     (00 00 80 7F)
    IL_0006:  stfld      float32 Game.SevenSegmentDisplayElectricElement::m_voltage
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.7
    IL_000d:  newarr     Game.GlowPoint
    IL_0012:  stfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_0017:  ldarg.0
    IL_0018:  ldc.i4.7
    IL_0019:  newarr     [Engine]Engine.Vector2
    IL_001e:  dup
    IL_001f:  ldc.i4.0
    IL_0020:  ldc.r4     0.0
    IL_0025:  ldc.r4     6.
    IL_002a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_002f:  stelem     [Engine]Engine.Vector2
    IL_0034:  dup
    IL_0035:  ldc.i4.1
    IL_0036:  ldc.r4     -4.
    IL_003b:  ldc.r4     3.
    IL_0040:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0045:  stelem     [Engine]Engine.Vector2
    IL_004a:  dup
    IL_004b:  ldc.i4.2
    IL_004c:  ldc.r4     -4.
    IL_0051:  ldc.r4     -3.
    IL_0056:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_005b:  stelem     [Engine]Engine.Vector2
    IL_0060:  dup
    IL_0061:  ldc.i4.3
    IL_0062:  ldc.r4     0.0
    IL_0067:  ldc.r4     -6.
    IL_006c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0071:  stelem     [Engine]Engine.Vector2
    IL_0076:  dup
    IL_0077:  ldc.i4.4
    IL_0078:  ldc.r4     4.
    IL_007d:  ldc.r4     -3.
    IL_0082:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0087:  stelem     [Engine]Engine.Vector2
    IL_008c:  dup
    IL_008d:  ldc.i4.5
    IL_008e:  ldc.r4     4.
    IL_0093:  ldc.r4     3.
    IL_0098:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_009d:  stelem     [Engine]Engine.Vector2
    IL_00a2:  dup
    IL_00a3:  ldc.i4.6
    IL_00a4:  ldc.r4     0.0
    IL_00a9:  ldc.r4     0.0
    IL_00ae:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b3:  stelem     [Engine]Engine.Vector2
    IL_00b8:  stfld      valuetype [Engine]Engine.Vector2[] Game.SevenSegmentDisplayElectricElement::m_centers
    IL_00bd:  ldarg.0
    IL_00be:  ldc.i4.7
    IL_00bf:  newarr     [Engine]Engine.Vector2
    IL_00c4:  dup
    IL_00c5:  ldc.i4.0
    IL_00c6:  ldc.r4     3.2
    IL_00cb:  ldc.r4     1.
    IL_00d0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00d5:  stelem     [Engine]Engine.Vector2
    IL_00da:  dup
    IL_00db:  ldc.i4.1
    IL_00dc:  ldc.r4     1.
    IL_00e1:  ldc.r4     2.3
    IL_00e6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00eb:  stelem     [Engine]Engine.Vector2
    IL_00f0:  dup
    IL_00f1:  ldc.i4.2
    IL_00f2:  ldc.r4     1.
    IL_00f7:  ldc.r4     2.3
    IL_00fc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0101:  stelem     [Engine]Engine.Vector2
    IL_0106:  dup
    IL_0107:  ldc.i4.3
    IL_0108:  ldc.r4     3.2
    IL_010d:  ldc.r4     1.
    IL_0112:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0117:  stelem     [Engine]Engine.Vector2
    IL_011c:  dup
    IL_011d:  ldc.i4.4
    IL_011e:  ldc.r4     1.
    IL_0123:  ldc.r4     2.3
    IL_0128:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_012d:  stelem     [Engine]Engine.Vector2
    IL_0132:  dup
    IL_0133:  ldc.i4.5
    IL_0134:  ldc.r4     1.
    IL_0139:  ldc.r4     2.3
    IL_013e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0143:  stelem     [Engine]Engine.Vector2
    IL_0148:  dup
    IL_0149:  ldc.i4.6
    IL_014a:  ldc.r4     3.2
    IL_014f:  ldc.r4     1.
    IL_0154:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0159:  stelem     [Engine]Engine.Vector2
    IL_015e:  stfld      valuetype [Engine]Engine.Vector2[] Game.SevenSegmentDisplayElectricElement::m_sizes
    IL_0163:  ldarg.0
    IL_0164:  ldc.i4.s   16
    IL_0166:  newarr     [System.Runtime]System.Int32
    IL_016b:  dup
    IL_016c:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=64' '<PrivateImplementationDetails>'::BFAF78F979CE2EF17F54808EBAB34648C599C670
    IL_0171:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0176:  stfld      int32[] Game.SevenSegmentDisplayElectricElement::m_patterns
    IL_017b:  ldarg.0
    IL_017c:  ldarg.1
    IL_017d:  ldarg.2
    IL_017e:  call       instance void Game.MountedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0183:  ldarg.0
    IL_0184:  ldarg.1
    IL_0185:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_018a:  ldc.i4.1
    IL_018b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGlow>(bool)
    IL_0190:  stfld      class Game.SubsystemGlow Game.SevenSegmentDisplayElectricElement::m_subsystemGlow
    IL_0195:  ret
  } // end of method SevenSegmentDisplayElectricElement::.ctor

  .method public hidebysig virtual instance void 
          OnAdded() cil managed
  {
    // 代码大小       571 (0x23b)
    .maxstack  5
    .locals init (valuetype Game.CellFace V_0,
             int32 V_1,
             int32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8)
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
    IL_003e:  call       int32 Game.SevenSegmentDisplayBlock::GetMountingFace(int32)
    IL_0043:  stloc.2
    IL_0044:  ldarg.0
    IL_0045:  ldsfld     valuetype [Engine]Engine.Color[] Game.LedBlock::LedColors
    IL_004a:  ldloc.1
    IL_004b:  call       int32 Game.SevenSegmentDisplayBlock::GetColor(int32)
    IL_0050:  ldelem     [Engine]Engine.Color
    IL_0055:  stfld      valuetype [Engine]Engine.Color Game.SevenSegmentDisplayElectricElement::m_color
    IL_005a:  ldc.i4.0
    IL_005b:  stloc.s    V_4
    IL_005d:  br         IL_0232

    IL_0062:  ldloca.s   V_5
    IL_0064:  ldloc.0
    IL_0065:  ldfld      int32 Game.CellFace::X
    IL_006a:  conv.r4
    IL_006b:  ldc.r4     0.5
    IL_0070:  add
    IL_0071:  ldloc.0
    IL_0072:  ldfld      int32 Game.CellFace::Y
    IL_0077:  conv.r4
    IL_0078:  ldc.r4     0.5
    IL_007d:  add
    IL_007e:  ldloc.0
    IL_007f:  ldfld      int32 Game.CellFace::Z
    IL_0084:  conv.r4
    IL_0085:  ldc.r4     0.5
    IL_008a:  add
    IL_008b:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0090:  ldloc.2
    IL_0091:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0096:  stloc.s    V_6
    IL_0098:  ldloc.2
    IL_0099:  ldc.i4.4
    IL_009a:  blt.s      IL_00a3

    IL_009c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_00a1:  br.s       IL_00a8

    IL_00a3:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00a8:  stloc.s    V_7
    IL_00aa:  ldloc.s    V_6
    IL_00ac:  ldloc.s    V_7
    IL_00ae:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00b3:  stloc.s    V_8
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_00bb:  ldloc.s    V_4
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.SubsystemGlow Game.SevenSegmentDisplayElectricElement::m_subsystemGlow
    IL_00c3:  callvirt   instance class Game.GlowPoint Game.SubsystemGlow::AddGlowPoint()
    IL_00c8:  stelem.ref
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_00cf:  ldloc.s    V_4
    IL_00d1:  ldelem.ref
    IL_00d2:  ldloc.s    V_5
    IL_00d4:  ldc.r4     0.4375
    IL_00d9:  ldloc.2
    IL_00da:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_00df:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SevenSegmentDisplayElectricElement::m_centers
    IL_00ef:  ldloc.s    V_4
    IL_00f1:  ldelema    [Engine]Engine.Vector2
    IL_00f6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00fb:  ldc.r4     6.25e-002
    IL_0100:  mul
    IL_0101:  ldloc.s    V_8
    IL_0103:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0108:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_010d:  ldarg.0
    IL_010e:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SevenSegmentDisplayElectricElement::m_centers
    IL_0113:  ldloc.s    V_4
    IL_0115:  ldelema    [Engine]Engine.Vector2
    IL_011a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_011f:  ldc.r4     6.25e-002
    IL_0124:  mul
    IL_0125:  ldloc.s    V_7
    IL_0127:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0131:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
    IL_0136:  ldarg.0
    IL_0137:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_013c:  ldloc.s    V_4
    IL_013e:  ldelem.ref
    IL_013f:  ldloc.s    V_6
    IL_0141:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_014c:  ldloc.s    V_4
    IL_014e:  ldelem.ref
    IL_014f:  ldloc.s    V_8
    IL_0151:  ldarg.0
    IL_0152:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SevenSegmentDisplayElectricElement::m_sizes
    IL_0157:  ldloc.s    V_4
    IL_0159:  ldelema    [Engine]Engine.Vector2
    IL_015e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0163:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0168:  ldc.r4     6.25e-002
    IL_016d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0172:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
    IL_0177:  ldarg.0
    IL_0178:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_017d:  ldloc.s    V_4
    IL_017f:  ldelem.ref
    IL_0180:  ldloc.s    V_7
    IL_0182:  ldarg.0
    IL_0183:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SevenSegmentDisplayElectricElement::m_sizes
    IL_0188:  ldloc.s    V_4
    IL_018a:  ldelema    [Engine]Engine.Vector2
    IL_018f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0194:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0199:  ldc.r4     6.25e-002
    IL_019e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01a3:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_01ae:  ldloc.s    V_4
    IL_01b0:  ldelem.ref
    IL_01b1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_01b6:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_01c1:  ldloc.s    V_4
    IL_01c3:  ldelem.ref
    IL_01c4:  ldc.r4     1.35
    IL_01c9:  stfld      float32 Game.GlowPoint::Size
    IL_01ce:  ldarg.0
    IL_01cf:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_01d4:  ldloc.s    V_4
    IL_01d6:  ldelem.ref
    IL_01d7:  ldc.r4     1.35
    IL_01dc:  stfld      float32 Game.GlowPoint::FarSize
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_01e7:  ldloc.s    V_4
    IL_01e9:  ldelem.ref
    IL_01ea:  ldc.r4     1.
    IL_01ef:  stfld      float32 Game.GlowPoint::FarDistance
    IL_01f4:  ldarg.0
    IL_01f5:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_01fa:  ldloc.s    V_4
    IL_01fc:  ldelem.ref
    IL_01fd:  ldarg.0
    IL_01fe:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SevenSegmentDisplayElectricElement::m_sizes
    IL_0203:  ldloc.s    V_4
    IL_0205:  ldelema    [Engine]Engine.Vector2
    IL_020a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_020f:  ldarg.0
    IL_0210:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SevenSegmentDisplayElectricElement::m_sizes
    IL_0215:  ldloc.s    V_4
    IL_0217:  ldelema    [Engine]Engine.Vector2
    IL_021c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0221:  bgt.s      IL_0226

    IL_0223:  ldc.i4.3
    IL_0224:  br.s       IL_0227

    IL_0226:  ldc.i4.2
    IL_0227:  stfld      valuetype Game.GlowPointType Game.GlowPoint::Type
    IL_022c:  ldloc.s    V_4
    IL_022e:  ldc.i4.1
    IL_022f:  add
    IL_0230:  stloc.s    V_4
    IL_0232:  ldloc.s    V_4
    IL_0234:  ldc.i4.7
    IL_0235:  blt        IL_0062

    IL_023a:  ret
  } // end of method SevenSegmentDisplayElectricElement::OnAdded

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
    IL_0005:  ldfld      class Game.SubsystemGlow Game.SevenSegmentDisplayElectricElement::m_subsystemGlow
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_0010:  ldloc.0
    IL_0011:  ldelem.ref
    IL_0012:  callvirt   instance void Game.SubsystemGlow::RemoveGlowPoint(class Game.GlowPoint)
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  add
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.7
    IL_001d:  blt.s      IL_0004

    IL_001f:  ret
  } // end of method SevenSegmentDisplayElectricElement::OnRemoved

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       221 (0xdd)
    .maxstack  4
    .locals init (float32 V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_1,
             class Game.ElectricConnection V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SevenSegmentDisplayElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldc.r4     0.0
    IL_000d:  stfld      float32 Game.SevenSegmentDisplayElectricElement::m_voltage
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
      IL_003b:  ldfld      float32 Game.SevenSegmentDisplayElectricElement::m_voltage
      IL_0040:  ldloc.2
      IL_0041:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0046:  ldloc.2
      IL_0047:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_004c:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_0051:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0056:  stfld      float32 Game.SevenSegmentDisplayElectricElement::m_voltage
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
    IL_0075:  ldfld      float32 Game.SevenSegmentDisplayElectricElement::m_voltage
    IL_007a:  ldloc.0
    IL_007b:  beq.s      IL_00db

    IL_007d:  ldarg.0
    IL_007e:  ldfld      float32 Game.SevenSegmentDisplayElectricElement::m_voltage
    IL_0083:  ldc.r4     15.
    IL_0088:  mul
    IL_0089:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_008e:  conv.i4
    IL_008f:  stloc.3
    IL_0090:  ldc.i4.0
    IL_0091:  stloc.s    V_4
    IL_0093:  br.s       IL_00d6

    IL_0095:  ldarg.0
    IL_0096:  ldfld      int32[] Game.SevenSegmentDisplayElectricElement::m_patterns
    IL_009b:  ldloc.3
    IL_009c:  ldelem.i4
    IL_009d:  ldc.i4.1
    IL_009e:  ldloc.s    V_4
    IL_00a0:  ldc.i4.s   31
    IL_00a2:  and
    IL_00a3:  shl
    IL_00a4:  and
    IL_00a5:  brfalse.s  IL_00bd

    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_00ad:  ldloc.s    V_4
    IL_00af:  ldelem.ref
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      valuetype [Engine]Engine.Color Game.SevenSegmentDisplayElectricElement::m_color
    IL_00b6:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_00bb:  br.s       IL_00d0

    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.GlowPoint[] Game.SevenSegmentDisplayElectricElement::m_glowPoints
    IL_00c3:  ldloc.s    V_4
    IL_00c5:  ldelem.ref
    IL_00c6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_00cb:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_00d0:  ldloc.s    V_4
    IL_00d2:  ldc.i4.1
    IL_00d3:  add
    IL_00d4:  stloc.s    V_4
    IL_00d6:  ldloc.s    V_4
    IL_00d8:  ldc.i4.7
    IL_00d9:  blt.s      IL_0095

    IL_00db:  ldc.i4.0
    IL_00dc:  ret
  } // end of method SevenSegmentDisplayElectricElement::Simulate

} // end of class Game.SevenSegmentDisplayElectricElement