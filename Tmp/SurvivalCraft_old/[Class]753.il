.class public auto ansi beforefieldinit Game.SubsystemShadows
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemDrawing m_subsystemDrawing
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer
  .field private class [Engine]Engine.Graphics.TexturedBatch3D m_batch
  .field private static int32[] m_drawOrders
  .method public hidebysig instance void 
          QueueShadow(valuetype [Engine]Engine.Vector3 shadowPosition,
                      float32 shadowDiameter,
                      float32 alpha) cil managed
  {
    // 代码大小       691 (0x2b3)
    .maxstack  9
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             class Game.Block V_13,
             valuetype [Engine]Engine.BoundingBox[] V_14,
             int32 V_15,
             valuetype [Engine]Engine.BoundingBox V_16,
             float32 V_17,
             float32 V_18,
             float32 V_19,
             float32 V_20,
             valuetype [Engine]Engine.Vector3 V_21,
             valuetype [Engine]Engine.Vector3 V_22,
             valuetype [Engine]Engine.Vector3 V_23,
             valuetype [Engine]Engine.Vector3 V_24)
    IL_0000:  call       bool Game.SettingsManager::get_ObjectsShadowsEnabled()
    IL_0005:  brfalse    IL_02b2

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.SubsystemDrawing Game.SubsystemShadows::m_subsystemDrawing
    IL_0010:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0015:  ldarg.1
    IL_0016:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  ldc.r4     1024.
    IL_0022:  bgt.un     IL_02b2

    IL_0027:  ldloc.0
    IL_0028:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_002d:  stloc.1
    IL_002e:  ldc.r4     4.
    IL_0033:  ldc.r4     1.
    IL_0038:  ldloc.1
    IL_0039:  ldc.r4     32.
    IL_003e:  div
    IL_003f:  sub
    IL_0040:  mul
    IL_0041:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0046:  stloc.2
    IL_0047:  ldarg.2
    IL_0048:  ldc.r4     2.
    IL_004d:  div
    IL_004e:  stloc.3
    IL_004f:  ldarg.1
    IL_0050:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0055:  ldloc.3
    IL_0056:  sub
    IL_0057:  conv.i4
    IL_0058:  ldarg.1
    IL_0059:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005e:  ldloc.3
    IL_005f:  sub
    IL_0060:  conv.i4
    IL_0061:  stloc.s    V_4
    IL_0063:  ldarg.1
    IL_0064:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0069:  ldloc.3
    IL_006a:  add
    IL_006b:  conv.i4
    IL_006c:  stloc.s    V_5
    IL_006e:  ldarg.1
    IL_006f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0074:  ldloc.3
    IL_0075:  add
    IL_0076:  conv.i4
    IL_0077:  stloc.s    V_6
    IL_0079:  stloc.s    V_7
    IL_007b:  br         IL_02a9

    IL_0080:  ldloc.s    V_4
    IL_0082:  stloc.s    V_8
    IL_0084:  br         IL_029a

    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Game.SubsystemTerrain Game.SubsystemShadows::m_subsystemTerrain
    IL_008f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0094:  ldloc.s    V_7
    IL_0096:  ldloc.s    V_8
    IL_0098:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_009d:  brfalse    IL_0294

    IL_00a2:  ldarg.1
    IL_00a3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00a8:  conv.i4
    IL_00a9:  ldc.i4.s   127
    IL_00ab:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00b0:  dup
    IL_00b1:  ldc.i4.2
    IL_00b2:  sub
    IL_00b3:  ldc.i4.0
    IL_00b4:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00b9:  stloc.s    V_9
    IL_00bb:  stloc.s    V_10
    IL_00bd:  br         IL_028b

    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.SubsystemTerrain Game.SubsystemShadows::m_subsystemTerrain
    IL_00c8:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00cd:  ldloc.s    V_7
    IL_00cf:  ldloc.s    V_10
    IL_00d1:  ldloc.s    V_8
    IL_00d3:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_00d8:  stloc.s    V_11
    IL_00da:  ldloc.s    V_11
    IL_00dc:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00e1:  stloc.s    V_12
    IL_00e3:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00e8:  ldloc.s    V_12
    IL_00ea:  ldelem.ref
    IL_00eb:  stloc.s    V_13
    IL_00ed:  ldloc.s    V_13
    IL_00ef:  ldfld      float32 Game.Block::ObjectShadowStrength
    IL_00f4:  ldc.r4     0.0
    IL_00f9:  ble.un     IL_027f

    IL_00fe:  ldloc.s    V_13
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.SubsystemTerrain Game.SubsystemShadows::m_subsystemTerrain
    IL_0106:  ldloc.s    V_11
    IL_0108:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_010d:  stloc.s    V_14
    IL_010f:  ldc.i4.0
    IL_0110:  stloc.s    V_15
    IL_0112:  br         IL_0272

    IL_0117:  ldloc.s    V_14
    IL_0119:  ldloc.s    V_15
    IL_011b:  ldelem     [Engine]Engine.BoundingBox
    IL_0120:  stloc.s    V_16
    IL_0122:  ldloc.s    V_16
    IL_0124:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0129:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_012e:  ldloc.s    V_10
    IL_0130:  conv.r4
    IL_0131:  add
    IL_0132:  stloc.s    V_17
    IL_0134:  ldarg.1
    IL_0135:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_013a:  ldloc.s    V_17
    IL_013c:  sub
    IL_013d:  ldc.r4     -0.5
    IL_0142:  ble.un     IL_026c

    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.SubsystemDrawing Game.SubsystemShadows::m_subsystemDrawing
    IL_014d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0152:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0157:  ldloc.s    V_17
    IL_0159:  sub
    IL_015a:  stloc.s    V_18
    IL_015c:  ldloc.s    V_18
    IL_015e:  ldc.r4     0.0
    IL_0163:  ble.un     IL_026c

    IL_0168:  ldloc.s    V_18
    IL_016a:  ldc.r4     9.9999998e-003
    IL_016f:  mul
    IL_0170:  ldc.r4     4.9999999e-003
    IL_0175:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_017a:  stloc.s    V_19
    IL_017c:  ldc.r4     1.
    IL_0181:  ldarg.1
    IL_0182:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0187:  ldloc.s    V_17
    IL_0189:  sub
    IL_018a:  ldc.r4     2.
    IL_018f:  div
    IL_0190:  sub
    IL_0191:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0196:  stloc.s    V_20
    IL_0198:  ldloca.s   V_21
    IL_019a:  ldloc.s    V_16
    IL_019c:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01a1:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01a6:  ldloc.s    V_7
    IL_01a8:  conv.r4
    IL_01a9:  add
    IL_01aa:  ldloc.s    V_17
    IL_01ac:  ldloc.s    V_19
    IL_01ae:  add
    IL_01af:  ldloc.s    V_16
    IL_01b1:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01b6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01bb:  ldloc.s    V_8
    IL_01bd:  conv.r4
    IL_01be:  add
    IL_01bf:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01c4:  ldloca.s   V_22
    IL_01c6:  ldloc.s    V_16
    IL_01c8:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01cd:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01d2:  ldloc.s    V_7
    IL_01d4:  conv.r4
    IL_01d5:  add
    IL_01d6:  ldloc.s    V_17
    IL_01d8:  ldloc.s    V_19
    IL_01da:  add
    IL_01db:  ldloc.s    V_16
    IL_01dd:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01e2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01e7:  ldloc.s    V_8
    IL_01e9:  conv.r4
    IL_01ea:  add
    IL_01eb:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01f0:  ldloca.s   V_23
    IL_01f2:  ldloc.s    V_16
    IL_01f4:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01f9:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01fe:  ldloc.s    V_7
    IL_0200:  conv.r4
    IL_0201:  add
    IL_0202:  ldloc.s    V_17
    IL_0204:  ldloc.s    V_19
    IL_0206:  add
    IL_0207:  ldloc.s    V_16
    IL_0209:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_020e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0213:  ldloc.s    V_8
    IL_0215:  conv.r4
    IL_0216:  add
    IL_0217:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_021c:  ldloca.s   V_24
    IL_021e:  ldloc.s    V_16
    IL_0220:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0225:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_022a:  ldloc.s    V_7
    IL_022c:  conv.r4
    IL_022d:  add
    IL_022e:  ldloc.s    V_17
    IL_0230:  ldloc.s    V_19
    IL_0232:  add
    IL_0233:  ldloc.s    V_16
    IL_0235:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_023a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_023f:  ldloc.s    V_8
    IL_0241:  conv.r4
    IL_0242:  add
    IL_0243:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0248:  ldarg.0
    IL_0249:  ldloc.s    V_21
    IL_024b:  ldloc.s    V_22
    IL_024d:  ldloc.s    V_23
    IL_024f:  ldloc.s    V_24
    IL_0251:  ldarg.1
    IL_0252:  ldarg.2
    IL_0253:  ldc.r4     0.44999999
    IL_0258:  ldloc.s    V_13
    IL_025a:  ldfld      float32 Game.Block::ObjectShadowStrength
    IL_025f:  mul
    IL_0260:  ldarg.3
    IL_0261:  mul
    IL_0262:  ldloc.2
    IL_0263:  mul
    IL_0264:  ldloc.s    V_20
    IL_0266:  mul
    IL_0267:  call       instance void Game.SubsystemShadows::DrawShadowOverQuad(valuetype [Engine]Engine.Vector3,
                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                 float32,
                                                                                 float32)
    IL_026c:  ldloc.s    V_15
    IL_026e:  ldc.i4.1
    IL_026f:  add
    IL_0270:  stloc.s    V_15
    IL_0272:  ldloc.s    V_15
    IL_0274:  ldloc.s    V_14
    IL_0276:  ldlen
    IL_0277:  conv.i4
    IL_0278:  blt        IL_0117

    IL_027d:  br.s       IL_0294

    IL_027f:  ldloc.s    V_12
    IL_0281:  ldc.i4.s   18
    IL_0283:  beq.s      IL_0294

    IL_0285:  ldloc.s    V_10
    IL_0287:  ldc.i4.1
    IL_0288:  sub
    IL_0289:  stloc.s    V_10
    IL_028b:  ldloc.s    V_10
    IL_028d:  ldloc.s    V_9
    IL_028f:  bge        IL_00c2

    IL_0294:  ldloc.s    V_8
    IL_0296:  ldc.i4.1
    IL_0297:  add
    IL_0298:  stloc.s    V_8
    IL_029a:  ldloc.s    V_8
    IL_029c:  ldloc.s    V_6
    IL_029e:  ble        IL_0089

    IL_02a3:  ldloc.s    V_7
    IL_02a5:  ldc.i4.1
    IL_02a6:  add
    IL_02a7:  stloc.s    V_7
    IL_02a9:  ldloc.s    V_7
    IL_02ab:  ldloc.s    V_5
    IL_02ad:  ble        IL_0080

    IL_02b2:  ret
  } // end of method SubsystemShadows::QueueShadow

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemShadows::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemShadows::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemShadows::m_primitivesRenderer
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_0012:  ret
  } // end of method SubsystemShadows::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  9
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.SubsystemShadows::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_001f:  stfld      class Game.SubsystemDrawing Game.SubsystemShadows::m_subsystemDrawing
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemShadows::m_primitivesRenderer
    IL_002b:  ldstr      "Textures/Shadow"
    IL_0030:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0035:  ldc.i4.0
    IL_0036:  ldc.i4.0
    IL_0037:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_003c:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_0041:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0046:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_004b:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0050:  stfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.SubsystemShadows::m_batch
    IL_0055:  ret
  } // end of method SubsystemShadows::Load

  .method private hidebysig instance void 
          DrawShadowOverQuad(valuetype [Engine]Engine.Vector3 p1,
                             valuetype [Engine]Engine.Vector3 p2,
                             valuetype [Engine]Engine.Vector3 p3,
                             valuetype [Engine]Engine.Vector3 p4,
                             valuetype [Engine]Engine.Vector3 shadowPosition,
                             float32 shadowDiameter,
                             float32 alpha) cil managed
  {
    // 代码大小       97 (0x61)
    .maxstack  13
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3)
    IL_0000:  ldarg.s    alpha
    IL_0002:  ldc.r4     2.e-002
    IL_0007:  ble.un.s   IL_0060

    IL_0009:  ldarg.1
    IL_000a:  ldarg.s    shadowPosition
    IL_000c:  ldarg.s    shadowDiameter
    IL_000e:  call       valuetype [Engine]Engine.Vector2 Game.SubsystemShadows::CalculateShadowTextureCoordinate(valuetype [Engine]Engine.Vector3,
                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                  float32)
    IL_0013:  stloc.0
    IL_0014:  ldarg.2
    IL_0015:  ldarg.s    shadowPosition
    IL_0017:  ldarg.s    shadowDiameter
    IL_0019:  call       valuetype [Engine]Engine.Vector2 Game.SubsystemShadows::CalculateShadowTextureCoordinate(valuetype [Engine]Engine.Vector3,
                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                  float32)
    IL_001e:  stloc.1
    IL_001f:  ldarg.3
    IL_0020:  ldarg.s    shadowPosition
    IL_0022:  ldarg.s    shadowDiameter
    IL_0024:  call       valuetype [Engine]Engine.Vector2 Game.SubsystemShadows::CalculateShadowTextureCoordinate(valuetype [Engine]Engine.Vector3,
                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                  float32)
    IL_0029:  stloc.2
    IL_002a:  ldarg.s    p4
    IL_002c:  ldarg.s    shadowPosition
    IL_002e:  ldarg.s    shadowDiameter
    IL_0030:  call       valuetype [Engine]Engine.Vector2 Game.SubsystemShadows::CalculateShadowTextureCoordinate(valuetype [Engine]Engine.Vector3,
                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                  float32)
    IL_0035:  stloc.3
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.SubsystemShadows::m_batch
    IL_003c:  ldarg.1
    IL_003d:  ldarg.2
    IL_003e:  ldarg.3
    IL_003f:  ldarg.s    p4
    IL_0041:  ldloc.0
    IL_0042:  ldloc.1
    IL_0043:  ldloc.2
    IL_0044:  ldloc.3
    IL_0045:  ldc.r4     0.0
    IL_004a:  ldc.r4     0.0
    IL_004f:  ldc.r4     0.0
    IL_0054:  ldarg.s    alpha
    IL_0056:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_005b:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0060:  ret
  } // end of method SubsystemShadows::DrawShadowOverQuad

  .method private hidebysig static valuetype [Engine]Engine.Vector2 
          CalculateShadowTextureCoordinate(valuetype [Engine]Engine.Vector3 p,
                                           valuetype [Engine]Engine.Vector3 shadowPosition,
                                           float32 shadowDiameter) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  8
    IL_0000:  ldc.r4     0.5
    IL_0005:  ldarg.0
    IL_0006:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000b:  ldarg.1
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  sub
    IL_0012:  ldarg.2
    IL_0013:  div
    IL_0014:  add
    IL_0015:  ldc.r4     0.5
    IL_001a:  ldarg.0
    IL_001b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0020:  ldarg.1
    IL_0021:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0026:  sub
    IL_0027:  ldarg.2
    IL_0028:  div
    IL_0029:  add
    IL_002a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_002f:  ret
  } // end of method SubsystemShadows::CalculateShadowTextureCoordinate

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemShadows::m_primitivesRenderer
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemShadows::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xc8
    IL_000d:  stelem.i4
    IL_000e:  stsfld     int32[] Game.SubsystemShadows::m_drawOrders
    IL_0013:  ret
  } // end of method SubsystemShadows::.cctor

  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemShadows::get_DrawOrders()
  } // end of property SubsystemShadows::DrawOrders
} // end of class Game.SubsystemShadows