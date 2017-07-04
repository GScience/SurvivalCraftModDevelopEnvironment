.class public auto ansi beforefieldinit Game.CrossbowBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x000000C8)
  .field private class Game.BlockMesh[] m_standaloneBlockMeshes
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       641 (0x281)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [Engine]Engine.Matrix V_5,
             class Game.BlockMesh V_6,
             class Game.BlockMesh V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_8,
             int32 V_9,
             float32 V_10)
    IL_0000:  ldstr      "Models/Crossbows"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Body"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "BowRelaxed"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldloc.0
    IL_003a:  ldstr      "StringRelaxed"
    IL_003f:  ldc.i4.1
    IL_0040:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0045:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_004a:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_004f:  stloc.3
    IL_0050:  ldloc.0
    IL_0051:  ldstr      "BowTensed"
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_005c:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0061:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0066:  stloc.s    V_4
    IL_0068:  ldloc.0
    IL_0069:  ldstr      "StringTensed"
    IL_006e:  ldc.i4.1
    IL_006f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0074:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0079:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_007e:  stloc.s    V_5
    IL_0080:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0085:  stloc.s    V_6
    IL_0087:  ldloc.s    V_6
    IL_0089:  ldloc.0
    IL_008a:  ldstr      "Body"
    IL_008f:  ldc.i4.1
    IL_0090:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0095:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_009a:  stloc.s    V_8
    IL_009c:  ldloca.s   V_8
    IL_009e:  ldc.i4.0
    IL_009f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00a4:  ldloc.1
    IL_00a5:  ldc.r4     0.0
    IL_00aa:  ldc.r4     0.0
    IL_00af:  ldc.r4     0.0
    IL_00b4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00b9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00be:  ldc.i4.0
    IL_00bf:  ldc.i4.0
    IL_00c0:  ldc.i4.0
    IL_00c1:  ldc.i4.0
    IL_00c2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00c7:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00cc:  ldloc.s    V_6
    IL_00ce:  ldloc.0
    IL_00cf:  ldstr      "BowRelaxed"
    IL_00d4:  ldc.i4.1
    IL_00d5:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00da:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00df:  stloc.s    V_8
    IL_00e1:  ldloca.s   V_8
    IL_00e3:  ldc.i4.0
    IL_00e4:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00e9:  ldloc.2
    IL_00ea:  ldc.r4     0.0
    IL_00ef:  ldc.r4     0.0
    IL_00f4:  ldc.r4     0.0
    IL_00f9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00fe:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0103:  ldc.i4.0
    IL_0104:  ldc.i4.0
    IL_0105:  ldc.i4.0
    IL_0106:  ldc.i4.0
    IL_0107:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_010c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0111:  ldloc.s    V_6
    IL_0113:  ldloc.0
    IL_0114:  ldstr      "StringRelaxed"
    IL_0119:  ldc.i4.1
    IL_011a:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_011f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0124:  stloc.s    V_8
    IL_0126:  ldloca.s   V_8
    IL_0128:  ldc.i4.0
    IL_0129:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_012e:  ldloc.3
    IL_012f:  ldc.r4     0.0
    IL_0134:  ldc.r4     0.0
    IL_0139:  ldc.r4     0.0
    IL_013e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0143:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0148:  ldc.i4.0
    IL_0149:  ldc.i4.0
    IL_014a:  ldc.i4.0
    IL_014b:  ldc.i4.0
    IL_014c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0151:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0156:  newobj     instance void Game.BlockMesh::.ctor()
    IL_015b:  stloc.s    V_7
    IL_015d:  ldloc.s    V_7
    IL_015f:  ldloc.0
    IL_0160:  ldstr      "Body"
    IL_0165:  ldc.i4.1
    IL_0166:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_016b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0170:  stloc.s    V_8
    IL_0172:  ldloca.s   V_8
    IL_0174:  ldc.i4.0
    IL_0175:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_017a:  ldloc.1
    IL_017b:  ldc.r4     0.0
    IL_0180:  ldc.r4     0.0
    IL_0185:  ldc.r4     0.0
    IL_018a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_018f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0194:  ldc.i4.0
    IL_0195:  ldc.i4.0
    IL_0196:  ldc.i4.0
    IL_0197:  ldc.i4.0
    IL_0198:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_019d:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01a2:  ldloc.s    V_7
    IL_01a4:  ldloc.0
    IL_01a5:  ldstr      "BowTensed"
    IL_01aa:  ldc.i4.1
    IL_01ab:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01b0:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01b5:  stloc.s    V_8
    IL_01b7:  ldloca.s   V_8
    IL_01b9:  ldc.i4.0
    IL_01ba:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01bf:  ldloc.s    V_4
    IL_01c1:  ldc.r4     0.0
    IL_01c6:  ldc.r4     0.0
    IL_01cb:  ldc.r4     0.0
    IL_01d0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01d5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01da:  ldc.i4.0
    IL_01db:  ldc.i4.0
    IL_01dc:  ldc.i4.0
    IL_01dd:  ldc.i4.0
    IL_01de:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01e3:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01e8:  ldloc.s    V_7
    IL_01ea:  ldloc.0
    IL_01eb:  ldstr      "StringTensed"
    IL_01f0:  ldc.i4.1
    IL_01f1:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01f6:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01fb:  stloc.s    V_8
    IL_01fd:  ldloca.s   V_8
    IL_01ff:  ldc.i4.0
    IL_0200:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0205:  ldloc.s    V_5
    IL_0207:  ldc.r4     0.0
    IL_020c:  ldc.r4     0.0
    IL_0211:  ldc.r4     0.0
    IL_0216:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_021b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0220:  ldc.i4.0
    IL_0221:  ldc.i4.0
    IL_0222:  ldc.i4.0
    IL_0223:  ldc.i4.0
    IL_0224:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0229:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_022e:  ldc.i4.0
    IL_022f:  stloc.s    V_9
    IL_0231:  br.s       IL_0274

    IL_0233:  ldloc.s    V_9
    IL_0235:  conv.r4
    IL_0236:  ldc.r4     15.
    IL_023b:  div
    IL_023c:  stloc.s    V_10
    IL_023e:  ldarg.0
    IL_023f:  ldfld      class Game.BlockMesh[] Game.CrossbowBlock::m_standaloneBlockMeshes
    IL_0244:  ldloc.s    V_9
    IL_0246:  newobj     instance void Game.BlockMesh::.ctor()
    IL_024b:  stelem.ref
    IL_024c:  ldarg.0
    IL_024d:  ldfld      class Game.BlockMesh[] Game.CrossbowBlock::m_standaloneBlockMeshes
    IL_0252:  ldloc.s    V_9
    IL_0254:  ldelem.ref
    IL_0255:  ldloc.s    V_6
    IL_0257:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_025c:  ldarg.0
    IL_025d:  ldfld      class Game.BlockMesh[] Game.CrossbowBlock::m_standaloneBlockMeshes
    IL_0262:  ldloc.s    V_9
    IL_0264:  ldelem.ref
    IL_0265:  ldloc.s    V_7
    IL_0267:  ldloc.s    V_10
    IL_0269:  callvirt   instance void Game.BlockMesh::BlendBlockMesh(class Game.BlockMesh,
                                                                      float32)
    IL_026e:  ldloc.s    V_9
    IL_0270:  ldc.i4.1
    IL_0271:  add
    IL_0272:  stloc.s    V_9
    IL_0274:  ldloc.s    V_9
    IL_0276:  ldc.i4.s   16
    IL_0278:  blt.s      IL_0233

    IL_027a:  ldarg.0
    IL_027b:  call       instance void Game.Block::Initialize()
    IL_0280:  ret
  } // end of method CrossbowBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method CrossbowBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       160 (0xa0)
    .maxstack  7
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.CrossbowBlock::GetDraw(int32)
    IL_000c:  stloc.0
    IL_000d:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.CrossbowBlock::GetArrowType(int32)
    IL_0012:  stloc.1
    IL_0013:  ldarg.1
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.BlockMesh[] Game.CrossbowBlock::m_standaloneBlockMeshes
    IL_001a:  ldloc.0
    IL_001b:  ldelem.ref
    IL_001c:  ldarg.3
    IL_001d:  ldc.r4     2.
    IL_0022:  ldarg.s    size
    IL_0024:  mul
    IL_0025:  ldarg.s    matrix
    IL_0027:  ldarg.s    environmentData
    IL_0029:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_002e:  ldloca.s   V_1
    IL_0030:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_0035:  brfalse.s  IL_009f

    IL_0037:  ldc.r4     -1.5707964
    IL_003c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0041:  ldc.r4     0.0
    IL_0046:  ldc.r4     0.2
    IL_004b:  ldarg.s    size
    IL_004d:  mul
    IL_004e:  ldc.r4     -9.0000004e-002
    IL_0053:  ldarg.s    size
    IL_0055:  mul
    IL_0056:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_005b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0060:  ldarg.s    matrix
    IL_0062:  ldobj      [Engine]Engine.Matrix
    IL_0067:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_006c:  stloc.2
    IL_006d:  ldc.i4     0xc0
    IL_0072:  ldc.i4.0
    IL_0073:  ldc.i4.0
    IL_0074:  ldloca.s   V_1
    IL_0076:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_Value()
    IL_007b:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_0080:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0085:  stloc.3
    IL_0086:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_008b:  ldc.i4     0xc0
    IL_0090:  ldelem.ref
    IL_0091:  ldarg.1
    IL_0092:  ldloc.3
    IL_0093:  ldarg.3
    IL_0094:  ldarg.s    size
    IL_0096:  ldloca.s   V_2
    IL_0098:  ldarg.s    environmentData
    IL_009a:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                             int32,
                                                             valuetype [Engine]Engine.Color,
                                                             float32,
                                                             valuetype [Engine]Engine.Matrix&,
                                                             class Game.DrawBlockEnvironmentData)
    IL_009f:  ret
  } // end of method CrossbowBlock::DrawBlock

  .method public hidebysig virtual instance int32 
          GetDamage(int32 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldc.i4.8
    IL_0007:  shr
    IL_0008:  ldc.i4     0xff
    IL_000d:  and
    IL_000e:  ret
  } // end of method CrossbowBlock::GetDamage

  .method public hidebysig virtual instance int32 
          SetDamage(int32 'value',
                    int32 damage) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4     0xffff00ff
    IL_000d:  and
    IL_000e:  stloc.0
    IL_000f:  ldloc.0
    IL_0010:  ldarg.2
    IL_0011:  ldc.i4.0
    IL_0012:  ldc.i4     0xff
    IL_0017:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_001c:  ldc.i4.8
    IL_001d:  shl
    IL_001e:  or
    IL_001f:  stloc.0
    IL_0020:  ldarg.1
    IL_0021:  ldloc.0
    IL_0022:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0027:  ret
  } // end of method CrossbowBlock::SetDamage

  .method public hidebysig virtual instance bool 
          IsSwapAnimationNeeded(int32 oldValue,
                                int32 newValue) cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_3)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  ldarg.1
    IL_0007:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000c:  stloc.0
    IL_000d:  ldarg.2
    IL_000e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0013:  stloc.1
    IL_0014:  ldc.i4     0xc8
    IL_0019:  bne.un.s   IL_0050

    IL_001b:  ldloc.0
    IL_001c:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.CrossbowBlock::GetArrowType(int32)
    IL_0021:  stloc.2
    IL_0022:  ldloc.1
    IL_0023:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.CrossbowBlock::GetArrowType(int32)
    IL_0028:  stloc.3
    IL_0029:  ldloca.s   V_2
    IL_002b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::GetValueOrDefault()
    IL_0030:  ldloca.s   V_3
    IL_0032:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::GetValueOrDefault()
    IL_0037:  beq.s      IL_003c

    IL_0039:  ldc.i4.0
    IL_003a:  br.s       IL_004c

    IL_003c:  ldloca.s   V_2
    IL_003e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_0043:  ldloca.s   V_3
    IL_0045:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_004a:  ceq
    IL_004c:  brfalse.s  IL_0050

    IL_004e:  ldc.i4.0
    IL_004f:  ret

    IL_0050:  ldc.i4.1
    IL_0051:  ret
  } // end of method CrossbowBlock::IsSwapAnimationNeeded

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> 
          GetArrowType(int32 data) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  shr
    IL_0003:  ldc.i4.s   15
    IL_0005:  and
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0013

    IL_000a:  ldloc.0
    IL_000b:  ldc.i4.1
    IL_000c:  sub
    IL_000d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::.ctor(!0)
    IL_0012:  ret

    IL_0013:  ldloca.s   V_1
    IL_0015:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>
    IL_001b:  ldloc.1
    IL_001c:  ret
  } // end of method CrossbowBlock::GetArrowType

  .method public hidebysig static int32  SetArrowType(int32 data,
                                                      valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> arrowType) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarga.s   arrowType
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_0007:  brtrue.s   IL_000c

    IL_0009:  ldc.i4.0
    IL_000a:  br.s       IL_0015

    IL_000c:  ldarga.s   arrowType
    IL_000e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_Value()
    IL_0013:  ldc.i4.1
    IL_0014:  add
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4     0xffffff0f
    IL_001c:  and
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.s   15
    IL_0020:  and
    IL_0021:  ldc.i4.4
    IL_0022:  shl
    IL_0023:  or
    IL_0024:  ret
  } // end of method CrossbowBlock::SetArrowType

  .method public hidebysig static int32  GetDraw(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   15
    IL_0003:  and
    IL_0004:  ret
  } // end of method CrossbowBlock::GetDraw

  .method public hidebysig static int32  SetDraw(int32 data,
                                                 int32 draw) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -16
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.s   15
    IL_0007:  and
    IL_0008:  or
    IL_0009:  ret
  } // end of method CrossbowBlock::SetDraw

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  newarr     Game.BlockMesh
    IL_0008:  stfld      class Game.BlockMesh[] Game.CrossbowBlock::m_standaloneBlockMeshes
    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.Block::.ctor()
    IL_0013:  ret
  } // end of method CrossbowBlock::.ctor

} // end of class Game.CrossbowBlock