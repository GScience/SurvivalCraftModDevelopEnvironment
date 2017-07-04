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
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       807 (0x327)
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
    IL_0008:  brfalse    IL_0326

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentCreatureModel Game.ComponentGlowingEyes::m_componentCreatureModel
    IL_0013:  callvirt   instance bool Game.ComponentModel::get_IsVisibleForCamera()
    IL_0018:  brfalse    IL_0326

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0023:  ldc.i4.0
    IL_0024:  ldelem.ref
    IL_0025:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_002a:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0035:  ldc.i4.1
    IL_0036:  ldelem.ref
    IL_0037:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_003c:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.ComponentCreatureModel Game.ComponentGlowingEyes::m_componentCreatureModel
    IL_0047:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_004c:  ldstr      "Head"
    IL_0051:  ldc.i4.0
    IL_0052:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0057:  stloc.0
    IL_0058:  ldloc.0
    IL_0059:  brfalse    IL_0326

    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.ComponentCreatureModel Game.ComponentGlowingEyes::m_componentCreatureModel
    IL_0064:  callvirt   instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransformsForCamera()
    IL_0069:  ldloc.0
    IL_006a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_006f:  ldelem     [Engine]Engine.Matrix
    IL_0074:  stloc.1
    IL_0075:  ldloc.1
    IL_0076:  ldarg.1
    IL_0077:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_InvertedViewMatrix()
    IL_007c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0081:  stloc.1
    IL_0082:  ldloca.s   V_1
    IL_0084:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0089:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_008e:  stloc.2
    IL_008f:  ldloca.s   V_1
    IL_0091:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0096:  ldarg.1
    IL_0097:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_009c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00a1:  ldarg.1
    IL_00a2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_00a7:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_00ac:  stloc.3
    IL_00ad:  ldloc.3
    IL_00ae:  ldc.r4     0.0
    IL_00b3:  ble.un     IL_0326

    IL_00b8:  ldloca.s   V_1
    IL_00ba:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00bf:  stloc.s    V_4
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class Game.SubsystemTerrain Game.ComponentGlowingEyes::m_subsystemTerrain
    IL_00c7:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00cc:  ldloc.s    V_4
    IL_00ce:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00d3:  call       int32 Game.Terrain::ToCell(float32)
    IL_00d8:  ldloc.s    V_4
    IL_00da:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00df:  call       int32 Game.Terrain::ToCell(float32)
    IL_00e4:  ldloc.s    V_4
    IL_00e6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00eb:  call       int32 Game.Terrain::ToCell(float32)
    IL_00f0:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_00f5:  stloc.s    V_5
    IL_00f7:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00fc:  ldloc.s    V_5
    IL_00fe:  ldelem.r4
    IL_00ff:  stloc.s    V_6
    IL_0101:  ldloc.2
    IL_0102:  ldloca.s   V_1
    IL_0104:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0109:  ldarg.1
    IL_010a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_010f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0114:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0119:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_011e:  neg
    IL_011f:  ldc.r4     0.69999999
    IL_0124:  bgt.s      IL_0129

    IL_0126:  ldc.i4.0
    IL_0127:  br.s       IL_012a

    IL_0129:  ldc.i4.1
    IL_012a:  conv.r4
    IL_012b:  stloc.s    V_7
    IL_012d:  ldloc.s    V_7
    IL_012f:  ldc.r4     1.
    IL_0134:  ldloc.3
    IL_0135:  ldc.r4     1.
    IL_013a:  sub
    IL_013b:  mul
    IL_013c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0141:  mul
    IL_0142:  stloc.s    V_7
    IL_0144:  ldloc.s    V_7
    IL_0146:  ldc.r4     1.
    IL_014b:  ldloc.s    V_6
    IL_014d:  sub
    IL_014e:  ldc.r4     0.5
    IL_0153:  sub
    IL_0154:  ldc.r4     0.5
    IL_0159:  div
    IL_015a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_015f:  mul
    IL_0160:  stloc.s    V_7
    IL_0162:  ldloc.s    V_7
    IL_0164:  ldc.r4     0.25
    IL_0169:  ble.un     IL_0326

    IL_016e:  ldloca.s   V_1
    IL_0170:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0175:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_017a:  stloc.s    V_8
    IL_017c:  ldloca.s   V_1
    IL_017e:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0183:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0188:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_018d:  stloc.s    V_9
    IL_018f:  ldarg.0
    IL_0190:  call       instance valuetype [Engine]Engine.Color Game.ComponentGlowingEyes::get_GlowingEyesColor()
    IL_0195:  ldloc.s    V_7
    IL_0197:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_019c:  stloc.s    V_10
    IL_019e:  ldarg.0
    IL_019f:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_01a4:  ldc.i4.0
    IL_01a5:  ldelem.ref
    IL_01a6:  ldloc.s    V_4
    IL_01a8:  ldloc.s    V_8
    IL_01aa:  ldarg.0
    IL_01ab:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_01b0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01b5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01ba:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01bf:  ldloc.s    V_9
    IL_01c1:  ldarg.0
    IL_01c2:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_01c7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01cc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01d1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01d6:  ldloc.2
    IL_01d7:  ldarg.0
    IL_01d8:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_01dd:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01e2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01e7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ec:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_01f7:  ldc.i4.0
    IL_01f8:  ldelem.ref
    IL_01f9:  ldloc.s    V_8
    IL_01fb:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
    IL_0200:  ldarg.0
    IL_0201:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0206:  ldc.i4.0
    IL_0207:  ldelem.ref
    IL_0208:  ldloc.s    V_9
    IL_020a:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_020f:  ldarg.0
    IL_0210:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0215:  ldc.i4.0
    IL_0216:  ldelem.ref
    IL_0217:  ldloc.2
    IL_0218:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_021d:  ldarg.0
    IL_021e:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0223:  ldc.i4.0
    IL_0224:  ldelem.ref
    IL_0225:  ldc.r4     9.9999998e-003
    IL_022a:  stfld      float32 Game.GlowPoint::Size
    IL_022f:  ldarg.0
    IL_0230:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0235:  ldc.i4.0
    IL_0236:  ldelem.ref
    IL_0237:  ldc.r4     5.9999999e-002
    IL_023c:  stfld      float32 Game.GlowPoint::FarSize
    IL_0241:  ldarg.0
    IL_0242:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0247:  ldc.i4.0
    IL_0248:  ldelem.ref
    IL_0249:  ldc.r4     14.
    IL_024e:  stfld      float32 Game.GlowPoint::FarDistance
    IL_0253:  ldarg.0
    IL_0254:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0259:  ldc.i4.0
    IL_025a:  ldelem.ref
    IL_025b:  ldloc.s    V_10
    IL_025d:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_0262:  ldarg.0
    IL_0263:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_0268:  ldc.i4.1
    IL_0269:  ldelem.ref
    IL_026a:  ldloc.s    V_4
    IL_026c:  ldloc.s    V_8
    IL_026e:  ldarg.0
    IL_026f:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_0274:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0279:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_027e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0283:  ldloc.s    V_9
    IL_0285:  ldarg.0
    IL_0286:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_028b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0290:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0295:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_029a:  ldloc.2
    IL_029b:  ldarg.0
    IL_029c:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentGlowingEyes::get_GlowingEyesOffset()
    IL_02a1:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02a6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_02ab:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02b0:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
    IL_02b5:  ldarg.0
    IL_02b6:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_02bb:  ldc.i4.1
    IL_02bc:  ldelem.ref
    IL_02bd:  ldloc.s    V_8
    IL_02bf:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
    IL_02c4:  ldarg.0
    IL_02c5:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_02ca:  ldc.i4.1
    IL_02cb:  ldelem.ref
    IL_02cc:  ldloc.s    V_9
    IL_02ce:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
    IL_02d3:  ldarg.0
    IL_02d4:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_02d9:  ldc.i4.1
    IL_02da:  ldelem.ref
    IL_02db:  ldloc.2
    IL_02dc:  stfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Forward
    IL_02e1:  ldarg.0
    IL_02e2:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_02e7:  ldc.i4.1
    IL_02e8:  ldelem.ref
    IL_02e9:  ldc.r4     9.9999998e-003
    IL_02ee:  stfld      float32 Game.GlowPoint::Size
    IL_02f3:  ldarg.0
    IL_02f4:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_02f9:  ldc.i4.1
    IL_02fa:  ldelem.ref
    IL_02fb:  ldc.r4     5.9999999e-002
    IL_0300:  stfld      float32 Game.GlowPoint::FarSize
    IL_0305:  ldarg.0
    IL_0306:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_030b:  ldc.i4.1
    IL_030c:  ldelem.ref
    IL_030d:  ldc.r4     14.
    IL_0312:  stfld      float32 Game.GlowPoint::FarDistance
    IL_0317:  ldarg.0
    IL_0318:  ldfld      class Game.GlowPoint[] Game.ComponentGlowingEyes::m_eyeGlowPoints
    IL_031d:  ldc.i4.1
    IL_031e:  ldelem.ref
    IL_031f:  ldloc.s    V_10
    IL_0321:  stfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
    IL_0326:  ret
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