.class public auto ansi beforefieldinit Game.LedElectricElement
       extends Game.MountedElectricElement
{
  .field private class Game.SubsystemGlow m_subsystemGlow
  .field private float32 m_voltage
  .field private class Game.GlowPoint m_glowPoint
  .field private valuetype [Engine]Engine.Color m_color
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
    IL_0015:  stfld      class Game.SubsystemGlow Game.LedElectricElement::m_subsystemGlow
    IL_001a:  ret
  } // end of method LedElectricElement::.ctor

  .method public hidebysig virtual instance void 
          OnAdded() cil managed
  {
    // 代码大小       346 (0x15a)
    .maxstack  5
    .locals init (valuetype Game.CellFace V_0,
             int32 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.SubsystemGlow Game.LedElectricElement::m_subsystemGlow
    IL_0007:  callvirt   instance class Game.GlowPoint Game.SubsystemGlow::AddGlowPoint()
    IL_000c:  stfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_0011:  ldarg.0
    IL_0012:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0017:  stloc.s    V_4
    IL_0019:  ldloca.s   V_4
    IL_001b:  ldc.i4.0
    IL_001c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0021:  stloc.0
    IL_0022:  ldarg.0
    IL_0023:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0028:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_002d:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0032:  ldloc.0
    IL_0033:  ldfld      int32 Game.CellFace::X
    IL_0038:  ldloc.0
    IL_0039:  ldfld      int32 Game.CellFace::Y
    IL_003e:  ldloc.0
    IL_003f:  ldfld      int32 Game.CellFace::Z
    IL_0044:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0049:  call       int32 Game.Terrain::ExtractData(int32)
    IL_004e:  stloc.1
    IL_004f:  ldloc.1
    IL_0050:  call       int32 Game.LedBlock::GetMountingFace(int32)
    IL_0055:  stloc.2
    IL_0056:  ldarg.0
    IL_0057:  ldsfld     valuetype [Engine]Engine.Color[] Game.LedBlock::LedColors
    IL_005c:  ldloc.1
    IL_005d:  call       int32 Game.LedBlock::GetColor(int32)
    IL_0062:  ldelem     [Engine]Engine.Color
    IL_0067:  stfld      valuetype [Engine]Engine.Color Game.LedElectricElement::m_color
    IL_006c:  ldloca.s   V_3
    IL_006e:  ldloc.0
    IL_006f:  ldfld      int32 Game.CellFace::X
    IL_0074:  conv.r4
    IL_0075:  ldc.r4     0.5
    IL_007a:  add
    IL_007b:  ldloc.0
    IL_007c:  ldfld      int32 Game.CellFace::Y
    IL_0081:  conv.r4
    IL_0082:  ldc.r4     0.5
    IL_0087:  add
    IL_0088:  ldloc.0
    IL_0089:  ldfld      int32 Game.CellFace::Z
    IL_008e:  conv.r4
    IL_008f:  ldc.r4     0.5
    IL_0094:  add
    IL_0095:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_00a0:  ldloc.3
    IL_00a1:  ldc.r4     0.4375
    IL_00a6:  ldloc.2
    IL_00a7:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_00ac:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00b6:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_00c1:  ldloc.2
    IL_00c2:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_00c7:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_00d2:  ldloc.2
    IL_00d3:  ldc.i4.4
    IL_00d4:  blt.s      IL_00dd

    IL_00d6:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_00db:  br.s       IL_00e2

    IL_00dd:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00e2:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_00f3:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_00fe:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_0103:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0108:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
    IL_010d:  ldarg.0
    IL_010e:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_0113:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0118:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_011d:  ldarg.0
    IL_011e:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_0123:  ldc.r4     3.2400001e-002
    IL_0128:  stfld      float32 Game.GlowPoint::Size
    IL_012d:  ldarg.0
    IL_012e:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_0133:  ldc.r4     3.2400001e-002
    IL_0138:  stfld      float32 Game.GlowPoint::FarSize
    IL_013d:  ldarg.0
    IL_013e:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_0143:  ldc.r4     0.0
    IL_0148:  stfld      float32 Game.GlowPoint::FarDistance
    IL_014d:  ldarg.0
    IL_014e:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_0153:  ldc.i4.1
    IL_0154:  stfld      valuetype Game.GlowPointType Game.GlowPoint::Type
    IL_0159:  ret
  } // end of method LedElectricElement::OnAdded

  .method public hidebysig virtual instance void 
          OnRemoved() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGlow Game.LedElectricElement::m_subsystemGlow
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_000c:  callvirt   instance void Game.SubsystemGlow::RemoveGlowPoint(class Game.GlowPoint)
    IL_0011:  ret
  } // end of method LedElectricElement::OnRemoved

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  2
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.LedElectricElement::m_voltage
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance float32 Game.LedElectricElement::CalculateVoltage()
    IL_000e:  stfld      float32 Game.LedElectricElement::m_voltage
    IL_0013:  ldarg.0
    IL_0014:  ldfld      float32 Game.LedElectricElement::m_voltage
    IL_0019:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_001e:  ldloc.0
    IL_001f:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_0024:  beq.s      IL_0056

    IL_0026:  ldarg.0
    IL_0027:  ldfld      float32 Game.LedElectricElement::m_voltage
    IL_002c:  call       bool Game.ElectricElement::IsSignalHigh(float32)
    IL_0031:  brfalse.s  IL_0046

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_0039:  ldarg.0
    IL_003a:  ldfld      valuetype [Engine]Engine.Color Game.LedElectricElement::m_color
    IL_003f:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_0044:  br.s       IL_0056

    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.GlowPoint Game.LedElectricElement::m_glowPoint
    IL_004c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0051:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_0056:  ldc.i4.0
    IL_0057:  ret
  } // end of method LedElectricElement::Simulate

  .method private hidebysig instance float32 
          CalculateVoltage() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ElectricElement::CalculateHighInputsCount()
    IL_0006:  ldc.i4.0
    IL_0007:  bgt.s      IL_000c

    IL_0009:  ldc.i4.0
    IL_000a:  br.s       IL_000d

    IL_000c:  ldc.i4.1
    IL_000d:  conv.r4
    IL_000e:  ret
  } // end of method LedElectricElement::CalculateVoltage

} // end of class Game.LedElectricElement