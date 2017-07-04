.class public auto ansi beforefieldinit Game.SubsystemShadows
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer
  .field private class [Engine]Engine.Graphics.TexturedBatch3D m_batch
  .field private static int32[] m_drawOrders
  .method public hidebysig instance void 
          QueueShadow(class Game.Camera camera,
                      valuetype [Engine]Engine.Vector3 shadowPosition,
                      float32 shadowDiameter,
                      float32 alpha) cil managed
  {
    // 代码大小       677 (0x2a5)
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
    IL_0005:  brfalse    IL_02a4

    IL_000a:  ldarg.1
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0010:  ldarg.2
    IL_0011:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0016:  stloc.0
    IL_0017:  ldloc.0
    IL_0018:  ldc.r4     1024.
    IL_001d:  bgt.un     IL_02a4

    IL_0022:  ldloc.0
    IL_0023:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0028:  stloc.1
    IL_0029:  ldc.r4     4.
    IL_002e:  ldc.r4     1.
    IL_0033:  ldloc.1
    IL_0034:  ldc.r4     32.
    IL_0039:  div
    IL_003a:  sub
    IL_003b:  mul
    IL_003c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0041:  stloc.2
    IL_0042:  ldarg.3
    IL_0043:  ldc.r4     2.
    IL_0048:  div
    IL_0049:  stloc.3
    IL_004a:  ldarg.2
    IL_004b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0050:  ldloc.3
    IL_0051:  sub
    IL_0052:  call       int32 Game.Terrain::ToCell(float32)
    IL_0057:  ldarg.2
    IL_0058:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005d:  ldloc.3
    IL_005e:  sub
    IL_005f:  call       int32 Game.Terrain::ToCell(float32)
    IL_0064:  stloc.s    V_4
    IL_0066:  ldarg.2
    IL_0067:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_006c:  ldloc.3
    IL_006d:  add
    IL_006e:  call       int32 Game.Terrain::ToCell(float32)
    IL_0073:  stloc.s    V_5
    IL_0075:  ldarg.2
    IL_0076:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_007b:  ldloc.3
    IL_007c:  add
    IL_007d:  call       int32 Game.Terrain::ToCell(float32)
    IL_0082:  stloc.s    V_6
    IL_0084:  stloc.s    V_7
    IL_0086:  br         IL_029b

    IL_008b:  ldloc.s    V_4
    IL_008d:  stloc.s    V_8
    IL_008f:  br         IL_028c

    IL_0094:  ldarg.2
    IL_0095:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_009a:  call       int32 Game.Terrain::ToCell(float32)
    IL_009f:  ldc.i4.s   127
    IL_00a1:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00a6:  dup
    IL_00a7:  ldc.i4.2
    IL_00a8:  sub
    IL_00a9:  ldc.i4.0
    IL_00aa:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00af:  stloc.s    V_9
    IL_00b1:  stloc.s    V_10
    IL_00b3:  br         IL_027d

    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class Game.SubsystemTerrain Game.SubsystemShadows::m_subsystemTerrain
    IL_00be:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00c3:  ldloc.s    V_7
    IL_00c5:  ldloc.s    V_10
    IL_00c7:  ldloc.s    V_8
    IL_00c9:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_00ce:  stloc.s    V_11
    IL_00d0:  ldloc.s    V_11
    IL_00d2:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00d7:  stloc.s    V_12
    IL_00d9:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00de:  ldloc.s    V_12
    IL_00e0:  ldelem.ref
    IL_00e1:  stloc.s    V_13
    IL_00e3:  ldloc.s    V_13
    IL_00e5:  ldfld      float32 Game.Block::ObjectShadowStrength
    IL_00ea:  ldc.r4     0.0
    IL_00ef:  ble.un     IL_0271

    IL_00f4:  ldloc.s    V_13
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class Game.SubsystemTerrain Game.SubsystemShadows::m_subsystemTerrain
    IL_00fc:  ldloc.s    V_11
    IL_00fe:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_0103:  stloc.s    V_14
    IL_0105:  ldc.i4.0
    IL_0106:  stloc.s    V_15
    IL_0108:  br         IL_0264

    IL_010d:  ldloc.s    V_14
    IL_010f:  ldloc.s    V_15
    IL_0111:  ldelem     [Engine]Engine.BoundingBox
    IL_0116:  stloc.s    V_16
    IL_0118:  ldloc.s    V_16
    IL_011a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_011f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0124:  ldloc.s    V_10
    IL_0126:  conv.r4
    IL_0127:  add
    IL_0128:  stloc.s    V_17
    IL_012a:  ldarg.2
    IL_012b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0130:  ldloc.s    V_17
    IL_0132:  sub
    IL_0133:  ldc.r4     -0.5
    IL_0138:  ble.un     IL_025e

    IL_013d:  ldarg.1
    IL_013e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0143:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0148:  ldloc.s    V_17
    IL_014a:  sub
    IL_014b:  stloc.s    V_18
    IL_014d:  ldloc.s    V_18
    IL_014f:  ldc.r4     0.0
    IL_0154:  ble.un     IL_025e

    IL_0159:  ldloc.s    V_18
    IL_015b:  ldc.r4     9.9999998e-003
    IL_0160:  mul
    IL_0161:  ldc.r4     4.9999999e-003
    IL_0166:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_016b:  stloc.s    V_19
    IL_016d:  ldc.r4     1.
    IL_0172:  ldarg.2
    IL_0173:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0178:  ldloc.s    V_17
    IL_017a:  sub
    IL_017b:  ldc.r4     2.
    IL_0180:  div
    IL_0181:  sub
    IL_0182:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0187:  stloc.s    V_20
    IL_0189:  ldloca.s   V_21
    IL_018b:  ldloc.s    V_16
    IL_018d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0192:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0197:  ldloc.s    V_7
    IL_0199:  conv.r4
    IL_019a:  add
    IL_019b:  ldloc.s    V_17
    IL_019d:  ldloc.s    V_19
    IL_019f:  add
    IL_01a0:  ldloc.s    V_16
    IL_01a2:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01a7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01ac:  ldloc.s    V_8
    IL_01ae:  conv.r4
    IL_01af:  add
    IL_01b0:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01b5:  ldloca.s   V_22
    IL_01b7:  ldloc.s    V_16
    IL_01b9:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01be:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01c3:  ldloc.s    V_7
    IL_01c5:  conv.r4
    IL_01c6:  add
    IL_01c7:  ldloc.s    V_17
    IL_01c9:  ldloc.s    V_19
    IL_01cb:  add
    IL_01cc:  ldloc.s    V_16
    IL_01ce:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01d3:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01d8:  ldloc.s    V_8
    IL_01da:  conv.r4
    IL_01db:  add
    IL_01dc:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01e1:  ldloca.s   V_23
    IL_01e3:  ldloc.s    V_16
    IL_01e5:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01ea:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01ef:  ldloc.s    V_7
    IL_01f1:  conv.r4
    IL_01f2:  add
    IL_01f3:  ldloc.s    V_17
    IL_01f5:  ldloc.s    V_19
    IL_01f7:  add
    IL_01f8:  ldloc.s    V_16
    IL_01fa:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01ff:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0204:  ldloc.s    V_8
    IL_0206:  conv.r4
    IL_0207:  add
    IL_0208:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_020d:  ldloca.s   V_24
    IL_020f:  ldloc.s    V_16
    IL_0211:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0216:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_021b:  ldloc.s    V_7
    IL_021d:  conv.r4
    IL_021e:  add
    IL_021f:  ldloc.s    V_17
    IL_0221:  ldloc.s    V_19
    IL_0223:  add
    IL_0224:  ldloc.s    V_16
    IL_0226:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_022b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0230:  ldloc.s    V_8
    IL_0232:  conv.r4
    IL_0233:  add
    IL_0234:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0239:  ldarg.0
    IL_023a:  ldloc.s    V_21
    IL_023c:  ldloc.s    V_22
    IL_023e:  ldloc.s    V_23
    IL_0240:  ldloc.s    V_24
    IL_0242:  ldarg.2
    IL_0243:  ldarg.3
    IL_0244:  ldc.r4     0.44999999
    IL_0249:  ldloc.s    V_13
    IL_024b:  ldfld      float32 Game.Block::ObjectShadowStrength
    IL_0250:  mul
    IL_0251:  ldarg.s    alpha
    IL_0253:  mul
    IL_0254:  ldloc.2
    IL_0255:  mul
    IL_0256:  ldloc.s    V_20
    IL_0258:  mul
    IL_0259:  call       instance void Game.SubsystemShadows::DrawShadowOverQuad(valuetype [Engine]Engine.Vector3,
                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                 valuetype [Engine]Engine.Vector3,
                                                                                 float32,
                                                                                 float32)
    IL_025e:  ldloc.s    V_15
    IL_0260:  ldc.i4.1
    IL_0261:  add
    IL_0262:  stloc.s    V_15
    IL_0264:  ldloc.s    V_15
    IL_0266:  ldloc.s    V_14
    IL_0268:  ldlen
    IL_0269:  conv.i4
    IL_026a:  blt        IL_010d

    IL_026f:  br.s       IL_0286

    IL_0271:  ldloc.s    V_12
    IL_0273:  ldc.i4.s   18
    IL_0275:  beq.s      IL_0286

    IL_0277:  ldloc.s    V_10
    IL_0279:  ldc.i4.1
    IL_027a:  sub
    IL_027b:  stloc.s    V_10
    IL_027d:  ldloc.s    V_10
    IL_027f:  ldloc.s    V_9
    IL_0281:  bge        IL_00b8

    IL_0286:  ldloc.s    V_8
    IL_0288:  ldc.i4.1
    IL_0289:  add
    IL_028a:  stloc.s    V_8
    IL_028c:  ldloc.s    V_8
    IL_028e:  ldloc.s    V_6
    IL_0290:  ble        IL_0094

    IL_0295:  ldloc.s    V_7
    IL_0297:  ldc.i4.1
    IL_0298:  add
    IL_0299:  stloc.s    V_7
    IL_029b:  ldloc.s    V_7
    IL_029d:  ldloc.s    V_5
    IL_029f:  ble        IL_008b

    IL_02a4:  ret
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
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemShadows::m_primitivesRenderer
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_000c:  ldc.i4.1
    IL_000d:  ldc.i4     0x7fffffff
    IL_0012:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_0017:  ret
  } // end of method SubsystemShadows::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  9
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.SubsystemShadows::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemShadows::m_primitivesRenderer
    IL_0019:  ldstr      "Textures/Shadow"
    IL_001e:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0023:  ldc.i4.0
    IL_0024:  ldc.i4.0
    IL_0025:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_002a:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_002f:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0034:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_0039:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_003e:  stfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.SubsystemShadows::m_batch
    IL_0043:  ret
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