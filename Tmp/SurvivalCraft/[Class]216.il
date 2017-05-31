.class public auto ansi beforefieldinit Game.TorchBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x0000001F)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByVariant
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       1011 (0x3f3)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_5,
             int32 V_6)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.s    V_4
    IL_0003:  br.s       IL_0019

    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_000b:  ldloc.s    V_4
    IL_000d:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0012:  stelem.ref
    IL_0013:  ldloc.s    V_4
    IL_0015:  ldc.i4.1
    IL_0016:  add
    IL_0017:  stloc.s    V_4
    IL_0019:  ldloc.s    V_4
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_0021:  ldlen
    IL_0022:  conv.i4
    IL_0023:  blt.s      IL_0005

    IL_0025:  ldstr      "Models/Torch"
    IL_002a:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_002f:  stloc.0
    IL_0030:  ldloc.0
    IL_0031:  ldstr      "Torch"
    IL_0036:  ldc.i4.1
    IL_0037:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_003c:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0041:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0046:  stloc.1
    IL_0047:  ldloc.0
    IL_0048:  ldstr      "Flame"
    IL_004d:  ldc.i4.1
    IL_004e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0053:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0058:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_005d:  stloc.2
    IL_005e:  ldc.r4     0.60000002
    IL_0063:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0068:  ldc.r4     0.0
    IL_006d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0072:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0077:  ldc.r4     0.5
    IL_007c:  ldc.r4     0.15000001
    IL_0081:  ldc.r4     -5.0000001e-002
    IL_0086:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_008b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0090:  stloc.3
    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_0097:  ldc.i4.0
    IL_0098:  ldelem.ref
    IL_0099:  ldloc.0
    IL_009a:  ldstr      "Torch"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00a5:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00aa:  stloc.s    V_5
    IL_00ac:  ldloca.s   V_5
    IL_00ae:  ldc.i4.0
    IL_00af:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00b4:  ldloc.1
    IL_00b5:  ldloc.3
    IL_00b6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00bb:  ldc.i4.0
    IL_00bc:  ldc.i4.0
    IL_00bd:  ldc.i4.0
    IL_00be:  ldc.i4.0
    IL_00bf:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00c4:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_00cf:  ldc.i4.0
    IL_00d0:  ldelem.ref
    IL_00d1:  ldloc.0
    IL_00d2:  ldstr      "Flame"
    IL_00d7:  ldc.i4.1
    IL_00d8:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00dd:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00e2:  stloc.s    V_5
    IL_00e4:  ldloca.s   V_5
    IL_00e6:  ldc.i4.0
    IL_00e7:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00ec:  ldloc.2
    IL_00ed:  ldloc.3
    IL_00ee:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f3:  ldc.i4.1
    IL_00f4:  ldc.i4.0
    IL_00f5:  ldc.i4.0
    IL_00f6:  ldc.i4.0
    IL_00f7:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00fc:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0101:  ldc.r4     0.60000002
    IL_0106:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_010b:  ldc.r4     1.5707964
    IL_0110:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0115:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_011a:  ldc.r4     -5.0000001e-002
    IL_011f:  ldc.r4     0.15000001
    IL_0124:  ldc.r4     0.5
    IL_0129:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_012e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0133:  stloc.3
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_013a:  ldc.i4.1
    IL_013b:  ldelem.ref
    IL_013c:  ldloc.0
    IL_013d:  ldstr      "Torch"
    IL_0142:  ldc.i4.1
    IL_0143:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0148:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_014d:  stloc.s    V_5
    IL_014f:  ldloca.s   V_5
    IL_0151:  ldc.i4.0
    IL_0152:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0157:  ldloc.1
    IL_0158:  ldloc.3
    IL_0159:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_015e:  ldc.i4.0
    IL_015f:  ldc.i4.0
    IL_0160:  ldc.i4.0
    IL_0161:  ldc.i4.0
    IL_0162:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0167:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_016c:  ldarg.0
    IL_016d:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_0172:  ldc.i4.1
    IL_0173:  ldelem.ref
    IL_0174:  ldloc.0
    IL_0175:  ldstr      "Flame"
    IL_017a:  ldc.i4.1
    IL_017b:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0180:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0185:  stloc.s    V_5
    IL_0187:  ldloca.s   V_5
    IL_0189:  ldc.i4.0
    IL_018a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_018f:  ldloc.2
    IL_0190:  ldloc.3
    IL_0191:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0196:  ldc.i4.1
    IL_0197:  ldc.i4.0
    IL_0198:  ldc.i4.0
    IL_0199:  ldc.i4.0
    IL_019a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_019f:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01a4:  ldc.r4     0.60000002
    IL_01a9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_01ae:  ldc.r4     3.1415927
    IL_01b3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_01b8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01bd:  ldc.r4     0.5
    IL_01c2:  ldc.r4     0.15000001
    IL_01c7:  ldc.r4     1.05
    IL_01cc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01d1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01d6:  stloc.3
    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_01dd:  ldc.i4.2
    IL_01de:  ldelem.ref
    IL_01df:  ldloc.0
    IL_01e0:  ldstr      "Torch"
    IL_01e5:  ldc.i4.1
    IL_01e6:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01eb:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01f0:  stloc.s    V_5
    IL_01f2:  ldloca.s   V_5
    IL_01f4:  ldc.i4.0
    IL_01f5:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01fa:  ldloc.1
    IL_01fb:  ldloc.3
    IL_01fc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0201:  ldc.i4.0
    IL_0202:  ldc.i4.0
    IL_0203:  ldc.i4.0
    IL_0204:  ldc.i4.0
    IL_0205:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_020a:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_020f:  ldarg.0
    IL_0210:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_0215:  ldc.i4.2
    IL_0216:  ldelem.ref
    IL_0217:  ldloc.0
    IL_0218:  ldstr      "Flame"
    IL_021d:  ldc.i4.1
    IL_021e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0223:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0228:  stloc.s    V_5
    IL_022a:  ldloca.s   V_5
    IL_022c:  ldc.i4.0
    IL_022d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0232:  ldloc.2
    IL_0233:  ldloc.3
    IL_0234:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0239:  ldc.i4.1
    IL_023a:  ldc.i4.0
    IL_023b:  ldc.i4.0
    IL_023c:  ldc.i4.0
    IL_023d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0242:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0247:  ldc.r4     0.60000002
    IL_024c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0251:  ldc.r4     4.712389
    IL_0256:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_025b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0260:  ldc.r4     1.05
    IL_0265:  ldc.r4     0.15000001
    IL_026a:  ldc.r4     0.5
    IL_026f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0274:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0279:  stloc.3
    IL_027a:  ldarg.0
    IL_027b:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_0280:  ldc.i4.3
    IL_0281:  ldelem.ref
    IL_0282:  ldloc.0
    IL_0283:  ldstr      "Torch"
    IL_0288:  ldc.i4.1
    IL_0289:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_028e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0293:  stloc.s    V_5
    IL_0295:  ldloca.s   V_5
    IL_0297:  ldc.i4.0
    IL_0298:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_029d:  ldloc.1
    IL_029e:  ldloc.3
    IL_029f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02a4:  ldc.i4.0
    IL_02a5:  ldc.i4.0
    IL_02a6:  ldc.i4.0
    IL_02a7:  ldc.i4.0
    IL_02a8:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_02ad:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_02b2:  ldarg.0
    IL_02b3:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_02b8:  ldc.i4.3
    IL_02b9:  ldelem.ref
    IL_02ba:  ldloc.0
    IL_02bb:  ldstr      "Flame"
    IL_02c0:  ldc.i4.1
    IL_02c1:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_02c6:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_02cb:  stloc.s    V_5
    IL_02cd:  ldloca.s   V_5
    IL_02cf:  ldc.i4.0
    IL_02d0:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_02d5:  ldloc.2
    IL_02d6:  ldloc.3
    IL_02d7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02dc:  ldc.i4.1
    IL_02dd:  ldc.i4.0
    IL_02de:  ldc.i4.0
    IL_02df:  ldc.i4.0
    IL_02e0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_02e5:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_02ea:  ldc.r4     0.5
    IL_02ef:  ldc.r4     0.0
    IL_02f4:  ldc.r4     0.5
    IL_02f9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_02fe:  stloc.3
    IL_02ff:  ldarg.0
    IL_0300:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_0305:  ldc.i4.4
    IL_0306:  ldelem.ref
    IL_0307:  ldloc.0
    IL_0308:  ldstr      "Torch"
    IL_030d:  ldc.i4.1
    IL_030e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0313:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0318:  stloc.s    V_5
    IL_031a:  ldloca.s   V_5
    IL_031c:  ldc.i4.0
    IL_031d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0322:  ldloc.1
    IL_0323:  ldloc.3
    IL_0324:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0329:  ldc.i4.0
    IL_032a:  ldc.i4.0
    IL_032b:  ldc.i4.0
    IL_032c:  ldc.i4.0
    IL_032d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0332:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0337:  ldarg.0
    IL_0338:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_033d:  ldc.i4.4
    IL_033e:  ldelem.ref
    IL_033f:  ldloc.0
    IL_0340:  ldstr      "Flame"
    IL_0345:  ldc.i4.1
    IL_0346:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_034b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0350:  stloc.s    V_5
    IL_0352:  ldloca.s   V_5
    IL_0354:  ldc.i4.0
    IL_0355:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_035a:  ldloc.2
    IL_035b:  ldloc.3
    IL_035c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0361:  ldc.i4.1
    IL_0362:  ldc.i4.0
    IL_0363:  ldc.i4.0
    IL_0364:  ldc.i4.0
    IL_0365:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_036a:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_036f:  ldarg.0
    IL_0370:  ldfld      class Game.BlockMesh Game.TorchBlock::m_standaloneBlockMesh
    IL_0375:  ldloc.0
    IL_0376:  ldstr      "Torch"
    IL_037b:  ldc.i4.1
    IL_037c:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0381:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0386:  stloc.s    V_5
    IL_0388:  ldloca.s   V_5
    IL_038a:  ldc.i4.0
    IL_038b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0390:  ldloc.1
    IL_0391:  ldc.r4     0.0
    IL_0396:  ldc.r4     -0.25
    IL_039b:  ldc.r4     0.0
    IL_03a0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_03a5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03aa:  ldc.i4.0
    IL_03ab:  ldc.i4.0
    IL_03ac:  ldc.i4.0
    IL_03ad:  ldc.i4.0
    IL_03ae:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_03b3:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_03b8:  ldc.i4.0
    IL_03b9:  stloc.s    V_6
    IL_03bb:  br.s       IL_03e7

    IL_03bd:  ldarg.0
    IL_03be:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.TorchBlock::m_collisionBoxes
    IL_03c3:  ldloc.s    V_6
    IL_03c5:  ldc.i4.1
    IL_03c6:  newarr     [Engine]Engine.BoundingBox
    IL_03cb:  dup
    IL_03cc:  ldc.i4.0
    IL_03cd:  ldarg.0
    IL_03ce:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_03d3:  ldloc.s    V_6
    IL_03d5:  ldelem.ref
    IL_03d6:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_03db:  stelem     [Engine]Engine.BoundingBox
    IL_03e0:  stelem.ref
    IL_03e1:  ldloc.s    V_6
    IL_03e3:  ldc.i4.1
    IL_03e4:  add
    IL_03e5:  stloc.s    V_6
    IL_03e7:  ldloc.s    V_6
    IL_03e9:  ldc.i4.5
    IL_03ea:  blt.s      IL_03bd

    IL_03ec:  ldarg.0
    IL_03ed:  call       instance void Game.Block::Initialize()
    IL_03f2:  ret
  } // end of method TorchBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_003b

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_0020:  ldloc.0
    IL_0021:  ldelem.ref
    IL_0022:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0027:  ldloca.s   V_1
    IL_0029:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_002f:  ldloc.1
    IL_0030:  ldarg.2
    IL_0031:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0036:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_003b:  ret
  } // end of method TorchBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       183 (0xb7)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype Game.BlockPlacementData V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.s    raycastResult
    IL_0004:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0009:  ldfld      int32 Game.CellFace::Face
    IL_000e:  brtrue.s   IL_001f

    IL_0010:  ldc.i4.0
    IL_0011:  ldc.i4.s   31
    IL_0013:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0018:  ldc.i4.0
    IL_0019:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.s    raycastResult
    IL_0021:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0026:  ldfld      int32 Game.CellFace::Face
    IL_002b:  ldc.i4.1
    IL_002c:  bne.un.s   IL_003d

    IL_002e:  ldc.i4.0
    IL_002f:  ldc.i4.s   31
    IL_0031:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0036:  ldc.i4.1
    IL_0037:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_003c:  stloc.0
    IL_003d:  ldarg.s    raycastResult
    IL_003f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0044:  ldfld      int32 Game.CellFace::Face
    IL_0049:  ldc.i4.2
    IL_004a:  bne.un.s   IL_005b

    IL_004c:  ldc.i4.0
    IL_004d:  ldc.i4.s   31
    IL_004f:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0054:  ldc.i4.2
    IL_0055:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_005a:  stloc.0
    IL_005b:  ldarg.s    raycastResult
    IL_005d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0062:  ldfld      int32 Game.CellFace::Face
    IL_0067:  ldc.i4.3
    IL_0068:  bne.un.s   IL_0079

    IL_006a:  ldc.i4.0
    IL_006b:  ldc.i4.s   31
    IL_006d:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0072:  ldc.i4.3
    IL_0073:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0078:  stloc.0
    IL_0079:  ldarg.s    raycastResult
    IL_007b:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0080:  ldfld      int32 Game.CellFace::Face
    IL_0085:  ldc.i4.4
    IL_0086:  bne.un.s   IL_0097

    IL_0088:  ldc.i4.0
    IL_0089:  ldc.i4.s   31
    IL_008b:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0090:  ldc.i4.4
    IL_0091:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0096:  stloc.0
    IL_0097:  ldloca.s   V_1
    IL_0099:  initobj    Game.BlockPlacementData
    IL_009f:  ldloca.s   V_1
    IL_00a1:  ldloc.0
    IL_00a2:  stfld      int32 Game.BlockPlacementData::Value
    IL_00a7:  ldloca.s   V_1
    IL_00a9:  ldarg.s    raycastResult
    IL_00ab:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00b0:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_00b5:  ldloc.1
    IL_00b6:  ret
  } // end of method TorchBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.TorchBlock::m_collisionBoxes
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_001b

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.TorchBlock::m_collisionBoxes
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ret

    IL_001b:  ldnull
    IL_001c:  ret
  } // end of method TorchBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.BlockMesh Game.TorchBlock::m_standaloneBlockMesh
    IL_0007:  ldc.r4     2.
    IL_000c:  ldarg.3
    IL_000d:  mul
    IL_000e:  ldarg.s    matrix
    IL_0010:  ldarg.s    environmentData
    IL_0012:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0017:  ret
  } // end of method TorchBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.TorchBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.5
    IL_000d:  newarr     Game.BlockMesh
    IL_0012:  stfld      class Game.BlockMesh[] Game.TorchBlock::m_blockMeshesByVariant
    IL_0017:  ldarg.0
    IL_0018:  ldc.i4.5
    IL_0019:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_001e:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.TorchBlock::m_collisionBoxes
    IL_0023:  ldarg.0
    IL_0024:  call       instance void Game.Block::.ctor()
    IL_0029:  ret
  } // end of method TorchBlock::.ctor

} // end of class Game.TorchBlock