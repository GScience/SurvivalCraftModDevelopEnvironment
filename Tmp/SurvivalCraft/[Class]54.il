.class public auto ansi beforefieldinit Game.ComponentGlowingEyes
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IDrawable
{
  .field private class Game.SubsystemGlow m_subsystemGlow
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentCreatureModel m_componentCreatureModel
  .field private class Game.GlowPoint[] m_eyeGlowPoints
  .field private valuetype [Engine]Engine.Vector3 '<GlowingEyesOffset>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<GlowingEyesColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_GlowingEyesOffset() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::'<GlowingEyesOffset>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentGlowingEyes::get_GlowingEyesOffset

  .method private hidebysig specialname instance void 
          set_GlowingEyesOffset(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::'<GlowingEyesOffset>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentGlowingEyes::set_GlowingEyesOffset

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_GlowingEyesColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.ComponentGlowingEyes::'<GlowingEyesColor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentGlowingEyes::get_GlowingEyesColor

  .method private hidebysig specialname instance void 
          set_GlowingEyesColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.ComponentGlowingEyes::'<GlowingEyesColor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentGlowingEyes::set_GlowingEyesColor

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGlow>(bool)
    IL_000d:  stfld      class Game.SubsystemGlow Game.ComponentGlowingEyes::m_subsystemGlow
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.ComponentGlowingEyes::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreatureModel>(bool)
    IL_0031:  stfld      class Game.ComponentCreatureModel Game.ComponentGlowingEyes::m_componentCreatureModel
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  ldstr      "GlowingEyesOffset"
    IL_003d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
    IL_0042:  call       instance void Game.ComponentGlowingEyes::set_GlowingEyesOffset(valuetype [Engine]Engine.Vector3)
    IL_0047:  ldarg.0
    IL_0048:  ldarg.1
    IL_0049:  ldstr      "GlowingEyesColor"
    IL_004e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Color>(string)
    IL_0053:  call       instance void Game.ComponentGlowingEyes::set_GlowingEyesColor(valuetype [Engine]Engine.Color)
    IL_0058:  ret
  } // end of method ComponentGlowingEyes::Load

  .method family hidebysig virtual instance void 
          OnEntityAdded() cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_001b

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_000a:  ldloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.SubsystemGlow Game.ComponentGlowingEyes::m_subsystemGlow
    IL_0011:  callvirt   instance class Game.GlowPoint Game.SubsystemGlow::AddGlowPoint()
    IL_0016:  stelem.ref
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  add
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0022:  ldlen
    IL_0023:  conv.i4
    IL_0024:  blt.s      IL_0004

    IL_0026:  ret
  } // end of method ComponentGlowingEyes::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved() cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_001b

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class Game.SubsystemGlow Game.ComponentGlowingEyes::m_subsystemGlow
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0010:  ldloc.0
    IL_0011:  ldelem.ref
    IL_0012:  callvirt   instance void Game.SubsystemGlow::RemoveGlowPoint(class Game.GlowPoint)
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  add
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0022:  ldlen
    IL_0023:  conv.i4
    IL_0024:  blt.s      IL_0004

    IL_0026:  ret
  } // end of method ComponentGlowingEyes::OnEntityRemoved

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.ComponentGlowingEyes::m_drawOrders
    IL_0005:  ret
  } // end of method ComponentGlowingEyes::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       779 (0x30b)
    .maxstack  4
    .locals init (class [Engine]Engine.Graphics.ModelBone V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             int32 V_5,
             float32 V_6,
             float32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Color V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0006:  ldc.i4.0
    IL_0007:  ldelem.ref
    IL_0008:  brfalse    IL_030a

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0013:  ldc.i4.0
    IL_0014:  ldelem.ref
    IL_0015:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_001a:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0025:  ldc.i4.1
    IL_0026:  ldelem.ref
    IL_0027:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_002c:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.ComponentCreatureModel Game.ComponentGlowingEyes::m_componentCreatureModel
    IL_0037:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_003c:  ldstr      "Head"
    IL_0041:  ldc.i4.0
    IL_0042:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0047:  stloc.0
    IL_0048:  ldloc.0
    IL_0049:  brfalse    IL_030a

    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.ComponentCreatureModel Game.ComponentGlowingEyes::m_componentCreatureModel
    IL_0054:  callvirt   instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransforms()
    IL_0059:  ldloc.0
    IL_005a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_005f:  ldelem     [Engine]Engine.Matrix
    IL_0064:  stloc.1
    IL_0065:  ldloc.1
    IL_0066:  ldarg.1
    IL_0067:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_InvertedViewMatrix()
    IL_006c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0071:  stloc.1
    IL_0072:  ldloca.s   V_1
    IL_0074:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0079:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_007e:  stloc.2
    IL_007f:  ldloca.s   V_1
    IL_0081:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0086:  ldarg.1
    IL_0087:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_008c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0091:  ldarg.1
    IL_0092:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0097:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_009c:  stloc.3
    IL_009d:  ldloc.3
    IL_009e:  ldc.r4     0.0
    IL_00a3:  ble.un     IL_030a

    IL_00a8:  ldloca.s   V_1
    IL_00aa:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00af:  stloc.s    V_4
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class Game.SubsystemTerrain Game.ComponentGlowingEyes::m_subsystemTerrain
    IL_00b7:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00bc:  ldloc.s    V_4
    IL_00be:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c3:  conv.i4
    IL_00c4:  ldloc.s    V_4
    IL_00c6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00cb:  conv.i4
    IL_00cc:  ldloc.s    V_4
    IL_00ce:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00d3:  conv.i4
    IL_00d4:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_00d9:  stloc.s    V_5
    IL_00db:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00e0:  ldloc.s    V_5
    IL_00e2:  ldelem.r4
    IL_00e3:  stloc.s    V_6
    IL_00e5:  ldloc.2
    IL_00e6:  ldloca.s   V_1
    IL_00e8:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00ed:  ldarg.1
    IL_00ee:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_00f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00f8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00fd:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0102:  neg
    IL_0103:  ldc.r4     0.69999999
    IL_0108:  bgt.s      IL_010d

    IL_010a:  ldc.i4.0
    IL_010b:  br.s       IL_010e

    IL_010d:  ldc.i4.1
    IL_010e:  conv.r4
    IL_010f:  stloc.s    V_7
    IL_0111:  ldloc.s    V_7
    IL_0113:  ldc.r4     1.
    IL_0118:  ldloc.3
    IL_0119:  ldc.r4     1.
    IL_011e:  sub
    IL_011f:  mul
    IL_0120:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0125:  mul
    IL_0126:  stloc.s    V_7
    IL_0128:  ldloc.s    V_7
    IL_012a:  ldc.r4     1.
    IL_012f:  ldloc.s    V_6
    IL_0131:  sub
    IL_0132:  ldc.r4     0.5
    IL_0137:  sub
    IL_0138:  ldc.r4     0.5
    IL_013d:  div
    IL_013e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0143:  mul
    IL_0144:  stloc.s    V_7
    IL_0146:  ldloc.s    V_7
    IL_0148:  ldc.r4     0.25
    IL_014d:  ble.un     IL_030a

    IL_0152:  ldloca.s   V_1
    IL_0154:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0159:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_015e:  stloc.s    V_8
    IL_0160:  ldloca.s   V_1
    IL_0162:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0167:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_016c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0171:  stloc.s    V_9
    IL_0173:  ldarg.0
    IL_0174:  call       instance valuetype [Engine]Engine.Color Game.ComponentGlowingEyes::get_GlowingEyesColor()
    IL_0179:  ldloc.s    V_7
    IL_017b:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0180:  stloc.s    V_10
    IL_0182:  ldarg.0
    IL_0183:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0188:  ldc.i4.0
    IL_0189:  ldelem.ref
    IL_018a:  ldloc.s    V_4
    IL_018c:  ldloc.s    V_8
    IL_018e:  ldarg.0
    IL_018f:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_0194:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0199:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_019e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a3:  ldloc.s    V_9
    IL_01a5:  ldarg.0
    IL_01a6:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_01ab:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01b0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01b5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ba:  ldloc.2
    IL_01bb:  ldarg.0
    IL_01bc:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_01c1:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01cb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01d0:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_01db:  ldc.i4.0
    IL_01dc:  ldelem.ref
    IL_01dd:  ldloc.s    V_8
    IL_01df:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
    IL_01e4:  ldarg.0
    IL_01e5:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_01ea:  ldc.i4.0
    IL_01eb:  ldelem.ref
    IL_01ec:  ldloc.s    V_9
    IL_01ee:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_01f3:  ldarg.0
    IL_01f4:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_01f9:  ldc.i4.0
    IL_01fa:  ldelem.ref
    IL_01fb:  ldloc.2
    IL_01fc:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_0201:  ldarg.0
    IL_0202:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0207:  ldc.i4.0
    IL_0208:  ldelem.ref
    IL_0209:  ldc.r4     9.9999998e-003
    IL_020e:  stfld      float32 Game.GlowPoint::Size
    IL_0213:  ldarg.0
    IL_0214:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0219:  ldc.i4.0
    IL_021a:  ldelem.ref
    IL_021b:  ldc.r4     5.9999999e-002
    IL_0220:  stfld      float32 Game.GlowPoint::FarSize
    IL_0225:  ldarg.0
    IL_0226:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_022b:  ldc.i4.0
    IL_022c:  ldelem.ref
    IL_022d:  ldc.r4     14.
    IL_0232:  stfld      float32 Game.GlowPoint::FarDistance
    IL_0237:  ldarg.0
    IL_0238:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_023d:  ldc.i4.0
    IL_023e:  ldelem.ref
    IL_023f:  ldloc.s    V_10
    IL_0241:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_0246:  ldarg.0
    IL_0247:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_024c:  ldc.i4.1
    IL_024d:  ldelem.ref
    IL_024e:  ldloc.s    V_4
    IL_0250:  ldloc.s    V_8
    IL_0252:  ldarg.0
    IL_0253:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_0258:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_025d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0262:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0267:  ldloc.s    V_9
    IL_0269:  ldarg.0
    IL_026a:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_026f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0274:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0279:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_027e:  ldloc.2
    IL_027f:  ldarg.0
    IL_0280:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_0285:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_028a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_028f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0294:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
    IL_0299:  ldarg.0
    IL_029a:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_029f:  ldc.i4.1
    IL_02a0:  ldelem.ref
    IL_02a1:  ldloc.s    V_8
    IL_02a3:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
    IL_02a8:  ldarg.0
    IL_02a9:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_02ae:  ldc.i4.1
    IL_02af:  ldelem.ref
    IL_02b0:  ldloc.s    V_9
    IL_02b2:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_02b7:  ldarg.0
    IL_02b8:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_02bd:  ldc.i4.1
    IL_02be:  ldelem.ref
    IL_02bf:  ldloc.2
    IL_02c0:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_02c5:  ldarg.0
    IL_02c6:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_02cb:  ldc.i4.1
    IL_02cc:  ldelem.ref
    IL_02cd:  ldc.r4     9.9999998e-003
    IL_02d2:  stfld      float32 Game.GlowPoint::Size
    IL_02d7:  ldarg.0
    IL_02d8:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_02dd:  ldc.i4.1
    IL_02de:  ldelem.ref
    IL_02df:  ldc.r4     5.9999999e-002
    IL_02e4:  stfld      float32 Game.GlowPoint::FarSize
    IL_02e9:  ldarg.0
    IL_02ea:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_02ef:  ldc.i4.1
    IL_02f0:  ldelem.ref
    IL_02f1:  ldc.r4     14.
    IL_02f6:  stfld      float32 Game.GlowPoint::FarDistance
    IL_02fb:  ldarg.0
    IL_02fc:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0301:  ldc.i4.1
    IL_0302:  ldelem.ref
    IL_0303:  ldloc.s    V_10
    IL_0305:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_030a:  ret
  } // end of method ComponentGlowingEyes::Draw

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  newarr     Game.GlowPoint
    IL_0007:  stfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_000c:  ldarg.0
    IL_000d:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0012:  ret
  } // end of method ComponentGlowingEyes::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  stsfld     int32[] Game.ComponentGlowingEyes::m_drawOrders
    IL_000b:  ret
  } // end of method ComponentGlowingEyes::.cctor

  .property instance valuetype [Engine]Engine.Vector3
          GlowingEyesOffset()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    .set instance void Game.ComponentGlowingEyes::set_GlowingEyesOffset(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentGlowingEyes::GlowingEyesOffset
  .property instance valuetype [Engine]Engine.Color
          GlowingEyesColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.ComponentGlowingEyes::get_GlowingEyesColor()
    .set instance void Game.ComponentGlowingEyes::set_GlowingEyesColor(valuetype [Engine]Engine.Color)
  } // end of property ComponentGlowingEyes::GlowingEyesColor
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.ComponentGlowingEyes::get_DrawOrders()
  } // end of property ComponentGlowingEyes::DrawOrders
} // end of class Game.ComponentGlowingEyes