.class public auto ansi beforefieldinit Game.CampfireBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x000000D1)
  .field private class Game.BlockMesh[] m_meshesByData
  .field private class Game.BlockMesh m_standaloneMesh
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       715 (0x2cb)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             valuetype [Engine]Engine.BoundingBox V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_5,
             float32 V_6,
             float32 V_7)
    IL_0000:  ldstr      "Models/Campfire"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Wood"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Ashes"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldc.i4.0
    IL_003a:  stloc.3
    IL_003b:  br         IL_020c

    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.BlockMesh[] Game.CampfireBlock::m_meshesByData
    IL_0046:  ldloc.3
    IL_0047:  newobj     instance void Game.BlockMesh::.ctor()
    IL_004c:  stelem.ref
    IL_004d:  ldloc.3
    IL_004e:  brtrue.s   IL_00af

    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.BlockMesh[] Game.CampfireBlock::m_meshesByData
    IL_0056:  ldloc.3
    IL_0057:  ldelem.ref
    IL_0058:  ldloc.0
    IL_0059:  ldstr      "Ashes"
    IL_005e:  ldc.i4.1
    IL_005f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0064:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0069:  stloc.s    V_5
    IL_006b:  ldloca.s   V_5
    IL_006d:  ldc.i4.0
    IL_006e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0073:  ldloc.2
    IL_0074:  ldc.r4     3.
    IL_0079:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_007e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0083:  ldc.r4     0.5
    IL_0088:  ldc.r4     0.0
    IL_008d:  ldc.r4     0.5
    IL_0092:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0097:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_009c:  ldc.i4.0
    IL_009d:  ldc.i4.0
    IL_009e:  ldc.i4.0
    IL_009f:  ldc.i4.0
    IL_00a0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00a5:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00aa:  br         IL_019e

    IL_00af:  ldc.r4     1.5
    IL_00b4:  ldc.r4     4.
    IL_00b9:  ldloc.3
    IL_00ba:  conv.r4
    IL_00bb:  ldc.r4     15.
    IL_00c0:  div
    IL_00c1:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00c6:  stloc.s    V_6
    IL_00c8:  ldloc.3
    IL_00c9:  conv.r4
    IL_00ca:  ldc.r4     3.1415927
    IL_00cf:  mul
    IL_00d0:  ldc.r4     2.
    IL_00d5:  div
    IL_00d6:  stloc.s    V_7
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      class Game.BlockMesh[] Game.CampfireBlock::m_meshesByData
    IL_00de:  ldloc.3
    IL_00df:  ldelem.ref
    IL_00e0:  ldloc.0
    IL_00e1:  ldstr      "Wood"
    IL_00e6:  ldc.i4.1
    IL_00e7:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00ec:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00f1:  stloc.s    V_5
    IL_00f3:  ldloca.s   V_5
    IL_00f5:  ldc.i4.0
    IL_00f6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00fb:  ldloc.1
    IL_00fc:  ldloc.s    V_6
    IL_00fe:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0103:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0108:  ldloc.s    V_7
    IL_010a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_010f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0114:  ldc.r4     0.5
    IL_0119:  ldc.r4     0.0
    IL_011e:  ldc.r4     0.5
    IL_0123:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0128:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_012d:  ldc.i4.0
    IL_012e:  ldc.i4.0
    IL_012f:  ldc.i4.0
    IL_0130:  ldc.i4.0
    IL_0131:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0136:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_013b:  ldarg.0
    IL_013c:  ldfld      class Game.BlockMesh[] Game.CampfireBlock::m_meshesByData
    IL_0141:  ldloc.3
    IL_0142:  ldelem.ref
    IL_0143:  ldloc.0
    IL_0144:  ldstr      "Ashes"
    IL_0149:  ldc.i4.1
    IL_014a:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_014f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0154:  stloc.s    V_5
    IL_0156:  ldloca.s   V_5
    IL_0158:  ldc.i4.0
    IL_0159:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_015e:  ldloc.2
    IL_015f:  ldloc.s    V_6
    IL_0161:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0166:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_016b:  ldloc.s    V_7
    IL_016d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0172:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0177:  ldc.r4     0.5
    IL_017c:  ldc.r4     0.0
    IL_0181:  ldc.r4     0.5
    IL_0186:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_018b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0190:  ldc.i4.0
    IL_0191:  ldc.i4.0
    IL_0192:  ldc.i4.0
    IL_0193:  ldc.i4.0
    IL_0194:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0199:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_019e:  ldarg.0
    IL_019f:  ldfld      class Game.BlockMesh[] Game.CampfireBlock::m_meshesByData
    IL_01a4:  ldloc.3
    IL_01a5:  ldelem.ref
    IL_01a6:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_01ab:  stloc.s    V_4
    IL_01ad:  ldloca.s   V_4
    IL_01af:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01b4:  ldc.r4     0.0
    IL_01b9:  stfld      float32 [Engine]Engine.Vector3::X
    IL_01be:  ldloca.s   V_4
    IL_01c0:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01c5:  ldc.r4     0.0
    IL_01ca:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_01cf:  ldloca.s   V_4
    IL_01d1:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01d6:  ldc.r4     1.
    IL_01db:  stfld      float32 [Engine]Engine.Vector3::X
    IL_01e0:  ldloca.s   V_4
    IL_01e2:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01e7:  ldc.r4     1.
    IL_01ec:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.CampfireBlock::m_collisionBoxesByData
    IL_01f7:  ldloc.3
    IL_01f8:  ldc.i4.1
    IL_01f9:  newarr     [Engine]Engine.BoundingBox
    IL_01fe:  dup
    IL_01ff:  ldc.i4.0
    IL_0200:  ldloc.s    V_4
    IL_0202:  stelem     [Engine]Engine.BoundingBox
    IL_0207:  stelem.ref
    IL_0208:  ldloc.3
    IL_0209:  ldc.i4.1
    IL_020a:  add
    IL_020b:  stloc.3
    IL_020c:  ldloc.3
    IL_020d:  ldc.i4.s   16
    IL_020f:  blt        IL_0040

    IL_0214:  ldarg.0
    IL_0215:  ldfld      class Game.BlockMesh Game.CampfireBlock::m_standaloneMesh
    IL_021a:  ldloc.0
    IL_021b:  ldstr      "Wood"
    IL_0220:  ldc.i4.1
    IL_0221:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0226:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_022b:  stloc.s    V_5
    IL_022d:  ldloca.s   V_5
    IL_022f:  ldc.i4.0
    IL_0230:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0235:  ldloc.1
    IL_0236:  ldc.r4     3.
    IL_023b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0240:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0245:  ldc.r4     0.0
    IL_024a:  ldc.r4     0.0
    IL_024f:  ldc.r4     0.0
    IL_0254:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0259:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_025e:  ldc.i4.0
    IL_025f:  ldc.i4.0
    IL_0260:  ldc.i4.1
    IL_0261:  ldc.i4.0
    IL_0262:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0267:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_026c:  ldarg.0
    IL_026d:  ldfld      class Game.BlockMesh Game.CampfireBlock::m_standaloneMesh
    IL_0272:  ldloc.0
    IL_0273:  ldstr      "Ashes"
    IL_0278:  ldc.i4.1
    IL_0279:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_027e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0283:  stloc.s    V_5
    IL_0285:  ldloca.s   V_5
    IL_0287:  ldc.i4.0
    IL_0288:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_028d:  ldloc.2
    IL_028e:  ldc.r4     3.
    IL_0293:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0298:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_029d:  ldc.r4     0.0
    IL_02a2:  ldc.r4     0.0
    IL_02a7:  ldc.r4     0.0
    IL_02ac:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_02b1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02b6:  ldc.i4.0
    IL_02b7:  ldc.i4.0
    IL_02b8:  ldc.i4.1
    IL_02b9:  ldc.i4.0
    IL_02ba:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_02bf:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_02c4:  ldarg.0
    IL_02c5:  call       instance void Game.Block::Initialize()
    IL_02ca:  ret
  } // end of method CampfireBlock::Initialize

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.CampfireBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_001b

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.CampfireBlock::m_collisionBoxesByData
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ret

    IL_001b:  ldnull
    IL_001c:  ret
  } // end of method CampfireBlock::GetCustomCollisionBoxes

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
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.CampfireBlock::m_meshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_003b

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.CampfireBlock::m_meshesByData
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
  } // end of method CampfireBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.BlockMesh Game.CampfireBlock::m_standaloneMesh
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    size
    IL_000a:  ldarg.s    matrix
    IL_000c:  ldarg.s    environmentData
    IL_000e:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0013:  ret
  } // end of method CampfireBlock::DrawBlock

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  4
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.s    raycastResult
    IL_0004:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0009:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_000e:  ldloca.s   V_0
    IL_0010:  ldc.i4     0xd1
    IL_0015:  ldc.i4.0
    IL_0016:  ldc.i4.3
    IL_0017:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_001c:  stfld      int32 Game.BlockPlacementData::Value
    IL_0021:  ldloc.0
    IL_0022:  ret
  } // end of method CampfireBlock::GetPlacementValue

  .method public hidebysig virtual instance bool 
          ShouldAvoid(int32 'value') cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldc.i4.0
    IL_0007:  cgt
    IL_0009:  ret
  } // end of method CampfireBlock::ShouldAvoid

  .method public hidebysig virtual instance int32 
          GetEmittedLightAmount(int32 'value') cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  ble.s      IL_0018

    IL_000b:  ldc.i4.8
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.2
    IL_000e:  div
    IL_000f:  add
    IL_0010:  ldc.i4.s   15
    IL_0012:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0017:  ret

    IL_0018:  ldc.i4.0
    IL_0019:  ret
  } // end of method CampfireBlock::GetEmittedLightAmount

  .method public hidebysig virtual instance float32 
          GetHeat(int32 'value') cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldc.i4.0
    IL_0007:  bgt.s      IL_000f

    IL_0009:  ldc.r4     0.0
    IL_000e:  ret

    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  call       instance float32 Game.Block::GetHeat(int32)
    IL_0016:  ret
  } // end of method CampfireBlock::GetHeat

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  newarr     Game.BlockMesh
    IL_0008:  stfld      class Game.BlockMesh[] Game.CampfireBlock::m_meshesByData
    IL_000d:  ldarg.0
    IL_000e:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0013:  stfld      class Game.BlockMesh Game.CampfireBlock::m_standaloneMesh
    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.s   16
    IL_001b:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0020:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.CampfireBlock::m_collisionBoxesByData
    IL_0025:  ldarg.0
    IL_0026:  call       instance void Game.Block::.ctor()
    IL_002b:  ret
  } // end of method CampfireBlock::.ctor

} // end of class Game.CampfireBlock