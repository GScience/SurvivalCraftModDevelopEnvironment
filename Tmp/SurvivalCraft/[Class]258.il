.class public abstract auto ansi beforefieldinit Game.TrapdoorBlock
       extends Game.Block
       implements Game.IElectricElementBlock
{
  .field private string m_modelName
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(string modelName) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.TrapdoorBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   16
    IL_000e:  newarr     Game.BlockMesh
    IL_0013:  stfld      class Game.BlockMesh[] Game.TrapdoorBlock::m_blockMeshesByData
    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.s   16
    IL_001b:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0020:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.TrapdoorBlock::m_collisionBoxesByData
    IL_0025:  ldarg.0
    IL_0026:  call       instance void Game.Block::.ctor()
    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  stfld      string Game.TrapdoorBlock::m_modelName
    IL_0032:  ret
  } // end of method TrapdoorBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       444 (0x1bc)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             int32 V_2,
             int32 V_3,
             bool V_4,
             bool V_5,
             valuetype [Engine]Engine.Matrix V_6,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.TrapdoorBlock::m_modelName
    IL_0006:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldstr      "Trapdoor"
    IL_0012:  ldc.i4.1
    IL_0013:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0018:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001d:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0022:  stloc.1
    IL_0023:  ldc.i4.0
    IL_0024:  stloc.2
    IL_0025:  br         IL_0164

    IL_002a:  ldloc.2
    IL_002b:  call       int32 Game.TrapdoorBlock::GetRotation(int32)
    IL_0030:  stloc.3
    IL_0031:  ldloc.2
    IL_0032:  call       bool Game.TrapdoorBlock::GetOpen(int32)
    IL_0037:  stloc.s    V_4
    IL_0039:  ldloc.2
    IL_003a:  call       bool Game.TrapdoorBlock::GetUpsideDown(int32)
    IL_003f:  stloc.s    V_5
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.BlockMesh[] Game.TrapdoorBlock::m_blockMeshesByData
    IL_0047:  ldloc.2
    IL_0048:  newobj     instance void Game.BlockMesh::.ctor()
    IL_004d:  stelem.ref
    IL_004e:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0053:  stloc.s    V_6
    IL_0055:  ldloc.s    V_6
    IL_0057:  ldc.r4     0.0
    IL_005c:  ldc.r4     -6.25e-002
    IL_0061:  ldc.r4     0.4375
    IL_0066:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_006b:  ldloc.s    V_4
    IL_006d:  brtrue.s   IL_0076

    IL_006f:  ldc.r4     0.0
    IL_0074:  br.s       IL_007b

    IL_0076:  ldc.r4     -1.5707964
    IL_007b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0080:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0085:  ldc.r4     0.0
    IL_008a:  ldc.r4     6.25e-002
    IL_008f:  ldc.r4     -0.4375
    IL_0094:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0099:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_009e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00a3:  stloc.s    V_6
    IL_00a5:  ldloc.s    V_6
    IL_00a7:  ldloc.s    V_5
    IL_00a9:  brtrue.s   IL_00b2

    IL_00ab:  ldc.r4     0.0
    IL_00b0:  br.s       IL_00b7

    IL_00b2:  ldc.r4     3.1415927
    IL_00b7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_00bc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00c1:  stloc.s    V_6
    IL_00c3:  ldloc.s    V_6
    IL_00c5:  ldloc.3
    IL_00c6:  conv.r4
    IL_00c7:  ldc.r4     3.1415927
    IL_00cc:  mul
    IL_00cd:  ldc.r4     2.
    IL_00d2:  div
    IL_00d3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00d8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00dd:  stloc.s    V_6
    IL_00df:  ldloc.s    V_6
    IL_00e1:  ldc.r4     0.5
    IL_00e6:  ldloc.s    V_5
    IL_00e8:  brtrue.s   IL_00ed

    IL_00ea:  ldc.i4.0
    IL_00eb:  br.s       IL_00ee

    IL_00ed:  ldc.i4.1
    IL_00ee:  conv.r4
    IL_00ef:  ldc.r4     0.5
    IL_00f4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_00fe:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0103:  stloc.s    V_6
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.BlockMesh[] Game.TrapdoorBlock::m_blockMeshesByData
    IL_010b:  ldloc.2
    IL_010c:  ldelem.ref
    IL_010d:  ldloc.0
    IL_010e:  ldstr      "Trapdoor"
    IL_0113:  ldc.i4.1
    IL_0114:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0119:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_011e:  stloc.s    V_7
    IL_0120:  ldloca.s   V_7
    IL_0122:  ldc.i4.0
    IL_0123:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0128:  ldloc.1
    IL_0129:  ldloc.s    V_6
    IL_012b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0130:  ldc.i4.0
    IL_0131:  ldc.i4.0
    IL_0132:  ldc.i4.0
    IL_0133:  ldc.i4.0
    IL_0134:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0139:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_013e:  ldarg.0
    IL_013f:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.TrapdoorBlock::m_collisionBoxesByData
    IL_0144:  ldloc.2
    IL_0145:  ldc.i4.1
    IL_0146:  newarr     [Engine]Engine.BoundingBox
    IL_014b:  dup
    IL_014c:  ldc.i4.0
    IL_014d:  ldarg.0
    IL_014e:  ldfld      class Game.BlockMesh[] Game.TrapdoorBlock::m_blockMeshesByData
    IL_0153:  ldloc.2
    IL_0154:  ldelem.ref
    IL_0155:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_015a:  stelem     [Engine]Engine.BoundingBox
    IL_015f:  stelem.ref
    IL_0160:  ldloc.2
    IL_0161:  ldc.i4.1
    IL_0162:  add
    IL_0163:  stloc.2
    IL_0164:  ldloc.2
    IL_0165:  ldc.i4.s   16
    IL_0167:  blt        IL_002a

    IL_016c:  ldarg.0
    IL_016d:  ldfld      class Game.BlockMesh Game.TrapdoorBlock::m_standaloneBlockMesh
    IL_0172:  ldloc.0
    IL_0173:  ldstr      "Trapdoor"
    IL_0178:  ldc.i4.1
    IL_0179:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_017e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0183:  stloc.s    V_7
    IL_0185:  ldloca.s   V_7
    IL_0187:  ldc.i4.0
    IL_0188:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_018d:  ldloc.1
    IL_018e:  ldc.r4     0.0
    IL_0193:  ldc.r4     0.0
    IL_0198:  ldc.r4     0.0
    IL_019d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01a2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01a7:  ldc.i4.0
    IL_01a8:  ldc.i4.0
    IL_01a9:  ldc.i4.0
    IL_01aa:  ldc.i4.0
    IL_01ab:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01b0:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01b5:  ldarg.0
    IL_01b6:  call       instance void Game.Block::Initialize()
    IL_01bb:  ret
  } // end of method TrapdoorBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  10
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.TrapdoorBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_003c

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.TrapdoorBlock::m_blockMeshesByData
    IL_0020:  ldloc.0
    IL_0021:  ldelem.ref
    IL_0022:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0027:  ldloca.s   V_1
    IL_0029:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_002f:  ldloc.1
    IL_0030:  ldnull
    IL_0031:  ldarg.2
    IL_0032:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0037:  callvirt   instance void Game.BlockGeometryGenerator::GenerateShadedMeshVertices(class Game.Block,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class Game.BlockMesh,
                                                                                               valuetype [Engine]Engine.Color,
                                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                               int32[],
                                                                                               class Game.TerrainGeometrySubset)
    IL_003c:  ret
  } // end of method TrapdoorBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.TrapdoorBlock::m_standaloneBlockMesh
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
  } // end of method TrapdoorBlock::DrawBlock

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       365 (0x16d)
    .maxstack  5
    .locals init (int32 V_0,
             bool V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Matrix V_7,
             valuetype Game.BlockPlacementData V_8)
    IL_0000:  ldarg.s    raycastResult
    IL_0002:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0007:  ldfld      int32 Game.CellFace::Face
    IL_000c:  ldc.i4.4
    IL_000d:  bge.s      IL_006c

    IL_000f:  ldarg.s    raycastResult
    IL_0011:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0016:  ldfld      int32 Game.CellFace::Face
    IL_001b:  stloc.0
    IL_001c:  ldarg.s    raycastResult
    IL_001e:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_0023:  ldarg.s    raycastResult
    IL_0025:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_002a:  ldarg.s    raycastResult
    IL_002c:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastEnd
    IL_0031:  ldarg.s    raycastResult
    IL_0033:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_0038:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_003d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0042:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0047:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0051:  ldarg.s    raycastResult
    IL_0053:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0058:  ldfld      int32 Game.CellFace::Y
    IL_005d:  conv.r4
    IL_005e:  sub
    IL_005f:  ldc.r4     0.5
    IL_0064:  cgt
    IL_0066:  stloc.1
    IL_0067:  br         IL_0127

    IL_006c:  ldarg.2
    IL_006d:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0072:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0077:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_007c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0081:  stloc.s    V_7
    IL_0083:  ldloca.s   V_7
    IL_0085:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_008a:  dup
    IL_008b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0090:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0095:  stloc.3
    IL_0096:  dup
    IL_0097:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_009c:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_00a1:  stloc.s    V_4
    IL_00a3:  dup
    IL_00a4:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_00a9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00ae:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_00b3:  stloc.s    V_5
    IL_00b5:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_00ba:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00bf:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_00c4:  stloc.s    V_6
    IL_00c6:  ldloc.3
    IL_00c7:  ldloc.3
    IL_00c8:  ldloc.s    V_4
    IL_00ca:  ldloc.s    V_5
    IL_00cc:  ldloc.s    V_6
    IL_00ce:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00d3:  bne.un.s   IL_00d9

    IL_00d5:  ldc.i4.2
    IL_00d6:  stloc.0
    IL_00d7:  br.s       IL_0117

    IL_00d9:  ldloc.s    V_4
    IL_00db:  ldloc.3
    IL_00dc:  ldloc.s    V_4
    IL_00de:  ldloc.s    V_5
    IL_00e0:  ldloc.s    V_6
    IL_00e2:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00e7:  bne.un.s   IL_00ed

    IL_00e9:  ldc.i4.3
    IL_00ea:  stloc.0
    IL_00eb:  br.s       IL_0117

    IL_00ed:  ldloc.s    V_5
    IL_00ef:  ldloc.3
    IL_00f0:  ldloc.s    V_4
    IL_00f2:  ldloc.s    V_5
    IL_00f4:  ldloc.s    V_6
    IL_00f6:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00fb:  bne.un.s   IL_0101

    IL_00fd:  ldc.i4.0
    IL_00fe:  stloc.0
    IL_00ff:  br.s       IL_0117

    IL_0101:  ldloc.s    V_6
    IL_0103:  ldloc.3
    IL_0104:  ldloc.s    V_4
    IL_0106:  ldloc.s    V_5
    IL_0108:  ldloc.s    V_6
    IL_010a:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_010f:  bne.un.s   IL_0115

    IL_0111:  ldc.i4.1
    IL_0112:  stloc.0
    IL_0113:  br.s       IL_0117

    IL_0115:  ldc.i4.0
    IL_0116:  stloc.0
    IL_0117:  ldarg.s    raycastResult
    IL_0119:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_011e:  ldfld      int32 Game.CellFace::Face
    IL_0123:  ldc.i4.5
    IL_0124:  ceq
    IL_0126:  stloc.1
    IL_0127:  ldc.i4.0
    IL_0128:  ldloc.1
    IL_0129:  call       int32 Game.TrapdoorBlock::SetUpsideDown(int32,
                                                                 bool)
    IL_012e:  ldloc.0
    IL_012f:  call       int32 Game.TrapdoorBlock::SetRotation(int32,
                                                               int32)
    IL_0134:  ldc.i4.0
    IL_0135:  call       int32 Game.TrapdoorBlock::SetOpen(int32,
                                                           bool)
    IL_013a:  stloc.2
    IL_013b:  ldloca.s   V_8
    IL_013d:  initobj    Game.BlockPlacementData
    IL_0143:  ldloca.s   V_8
    IL_0145:  ldc.i4.0
    IL_0146:  ldarg.0
    IL_0147:  ldfld      int32 Game.Block::BlockIndex
    IL_014c:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_0151:  ldloc.2
    IL_0152:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0157:  stfld      int32 Game.BlockPlacementData::Value
    IL_015c:  ldloca.s   V_8
    IL_015e:  ldarg.s    raycastResult
    IL_0160:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0165:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_016a:  ldloc.s    V_8
    IL_016c:  ret
  } // end of method TrapdoorBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.TrapdoorBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_001b

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.TrapdoorBlock::m_collisionBoxesByData
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ret

    IL_001b:  ldarg.0
    IL_001c:  ldarg.1
    IL_001d:  ldarg.2
    IL_001e:  call       instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_0023:  ret
  } // end of method TrapdoorBlock::GetCustomCollisionBoxes

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    y
    IL_000b:  ldarg.s    z
    IL_000d:  ldloc.0
    IL_000e:  call       int32 Game.TrapdoorBlock::GetMountingFace(int32)
    IL_0013:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0018:  newobj     instance void Game.TrapDoorElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                           valuetype Game.CellFace)
    IL_001d:  ret
  } // end of method TrapdoorBlock::CreateElectricElement

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_2,
             valuetype Game.ElectricConnectorDirection V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_4)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.3
    IL_0008:  ldloc.0
    IL_0009:  call       int32 Game.TrapdoorBlock::GetMountingFace(int32)
    IL_000e:  bne.un.s   IL_0044

    IL_0010:  ldloc.0
    IL_0011:  call       int32 Game.TrapdoorBlock::GetRotation(int32)
    IL_0016:  stloc.1
    IL_0017:  ldc.i4.4
    IL_0018:  ldc.i4.4
    IL_0019:  ldloc.1
    IL_001a:  sub
    IL_001b:  ldc.i4.4
    IL_001c:  rem
    IL_001d:  ldarg.s    connectorFace
    IL_001f:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0024:  stloc.2
    IL_0025:  ldc.i4.0
    IL_0026:  stloc.3
    IL_0027:  ldloca.s   V_2
    IL_0029:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_002e:  ldloc.3
    IL_002f:  beq.s      IL_0034

    IL_0031:  ldc.i4.0
    IL_0032:  br.s       IL_003b

    IL_0034:  ldloca.s   V_2
    IL_0036:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_003b:  brfalse.s  IL_0044

    IL_003d:  ldc.i4.0
    IL_003e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0043:  ret

    IL_0044:  ldloca.s   V_4
    IL_0046:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_004c:  ldloc.s    V_4
    IL_004e:  ret
  } // end of method TrapdoorBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method TrapdoorBlock::GetConnectionMask

  .method public hidebysig static int32  GetRotation(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method TrapdoorBlock::GetRotation

  .method public hidebysig static bool  GetOpen(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method TrapdoorBlock::GetOpen

  .method public hidebysig static bool  GetUpsideDown(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method TrapdoorBlock::GetUpsideDown

  .method public hidebysig static int32  SetRotation(int32 data,
                                                     int32 rotation) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -4
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.3
    IL_0006:  and
    IL_0007:  or
    IL_0008:  ret
  } // end of method TrapdoorBlock::SetRotation

  .method public hidebysig static int32  SetOpen(int32 data,
                                                 bool open) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -5
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.4
    IL_000a:  or
    IL_000b:  ret
  } // end of method TrapdoorBlock::SetOpen

  .method public hidebysig static int32  SetUpsideDown(int32 data,
                                                       bool upsideDown) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -9
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.8
    IL_000a:  or
    IL_000b:  ret
  } // end of method TrapdoorBlock::SetUpsideDown

  .method public hidebysig static int32  GetMountingFace(int32 data) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool Game.TrapdoorBlock::GetUpsideDown(int32)
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldc.i4.4
    IL_0009:  ret

    IL_000a:  ldc.i4.5
    IL_000b:  ret
  } // end of method TrapdoorBlock::GetMountingFace

} // end of class Game.TrapdoorBlock