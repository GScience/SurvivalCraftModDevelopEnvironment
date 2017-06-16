.class public abstract auto ansi beforefieldinit Game.RotateableMountedElectricElementBlock
       extends Game.MountedElectricElementBlock
{
  .field private string m_modelName
  .field private string m_meshName
  .field private float32 m_centerBoxSize
  .field private class Game.BlockMesh[] m_blockMeshes
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(string modelName,
                               string meshName,
                               float32 centerBoxSize) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   24
    IL_0003:  newarr     Game.BlockMesh
    IL_0008:  stfld      class Game.BlockMesh[] Game.RotateableMountedElectricElementBlock::m_blockMeshes
    IL_000d:  ldarg.0
    IL_000e:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0013:  stfld      class Game.BlockMesh Game.RotateableMountedElectricElementBlock::m_standaloneBlockMesh
    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.s   24
    IL_001b:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0020:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.RotateableMountedElectricElementBlock::m_collisionBoxes
    IL_0025:  ldarg.0
    IL_0026:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  stfld      string Game.RotateableMountedElectricElementBlock::m_modelName
    IL_0032:  ldarg.0
    IL_0033:  ldarg.2
    IL_0034:  stfld      string Game.RotateableMountedElectricElementBlock::m_meshName
    IL_0039:  ldarg.0
    IL_003a:  ldarg.3
    IL_003b:  stfld      float32 Game.RotateableMountedElectricElementBlock::m_centerBoxSize
    IL_0040:  ret
  } // end of method RotateableMountedElectricElementBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       443 (0x1bb)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             float32 V_4,
             bool V_5,
             int32 V_6,
             float32 V_7,
             int32 V_8,
             valuetype [Engine]Engine.Matrix V_9,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.RotateableMountedElectricElementBlock::m_modelName
    IL_0006:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      string Game.RotateableMountedElectricElementBlock::m_meshName
    IL_0013:  ldc.i4.1
    IL_0014:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0019:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001e:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0023:  stloc.1
    IL_0024:  ldc.i4.0
    IL_0025:  stloc.3
    IL_0026:  br         IL_0162

    IL_002b:  ldloc.3
    IL_002c:  ldc.i4.4
    IL_002d:  bge.s      IL_0044

    IL_002f:  ldloc.3
    IL_0030:  conv.r4
    IL_0031:  ldc.r4     3.1415927
    IL_0036:  mul
    IL_0037:  ldc.r4     2.
    IL_003c:  div
    IL_003d:  stloc.s    V_4
    IL_003f:  ldc.i4.0
    IL_0040:  stloc.s    V_5
    IL_0042:  br.s       IL_005e

    IL_0044:  ldloc.3
    IL_0045:  ldc.i4.4
    IL_0046:  bne.un.s   IL_0054

    IL_0048:  ldc.r4     -1.5707964
    IL_004d:  stloc.s    V_4
    IL_004f:  ldc.i4.1
    IL_0050:  stloc.s    V_5
    IL_0052:  br.s       IL_005e

    IL_0054:  ldc.r4     1.5707964
    IL_0059:  stloc.s    V_4
    IL_005b:  ldc.i4.1
    IL_005c:  stloc.s    V_5
    IL_005e:  ldc.i4.0
    IL_005f:  stloc.s    V_6
    IL_0061:  br         IL_0156

    IL_0066:  ldloc.s    V_6
    IL_0068:  neg
    IL_0069:  conv.r4
    IL_006a:  ldc.r4     3.1415927
    IL_006f:  mul
    IL_0070:  ldc.r4     2.
    IL_0075:  div
    IL_0076:  stloc.s    V_7
    IL_0078:  ldloc.3
    IL_0079:  ldc.i4.2
    IL_007a:  shl
    IL_007b:  ldloc.s    V_6
    IL_007d:  add
    IL_007e:  stloc.s    V_8
    IL_0080:  ldc.r4     1.5707964
    IL_0085:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_008a:  ldloc.s    V_7
    IL_008c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0091:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0096:  ldc.r4     0.0
    IL_009b:  ldc.r4     0.0
    IL_00a0:  ldc.r4     -0.5
    IL_00a5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00aa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00af:  ldloc.s    V_5
    IL_00b1:  brtrue.s   IL_00bc

    IL_00b3:  ldloc.s    V_4
    IL_00b5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00ba:  br.s       IL_00c3

    IL_00bc:  ldloc.s    V_4
    IL_00be:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00c3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00c8:  ldc.r4     0.5
    IL_00cd:  ldc.r4     0.5
    IL_00d2:  ldc.r4     0.5
    IL_00d7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00dc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e1:  stloc.s    V_9
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.BlockMesh[] Game.RotateableMountedElectricElementBlock::m_blockMeshes
    IL_00e9:  ldloc.s    V_8
    IL_00eb:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00f0:  stelem.ref
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.BlockMesh[] Game.RotateableMountedElectricElementBlock::m_blockMeshes
    IL_00f7:  ldloc.s    V_8
    IL_00f9:  ldelem.ref
    IL_00fa:  ldloc.0
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      string Game.RotateableMountedElectricElementBlock::m_meshName
    IL_0101:  ldc.i4.1
    IL_0102:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0107:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_010c:  stloc.s    V_10
    IL_010e:  ldloca.s   V_10
    IL_0110:  ldc.i4.0
    IL_0111:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0116:  ldloc.1
    IL_0117:  ldloc.s    V_9
    IL_0119:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_011e:  ldc.i4.0
    IL_011f:  ldc.i4.0
    IL_0120:  ldc.i4.0
    IL_0121:  ldc.i4.0
    IL_0122:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0127:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_012c:  ldarg.0
    IL_012d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.RotateableMountedElectricElementBlock::m_collisionBoxes
    IL_0132:  ldloc.s    V_8
    IL_0134:  ldc.i4.1
    IL_0135:  newarr     [Engine]Engine.BoundingBox
    IL_013a:  dup
    IL_013b:  ldc.i4.0
    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.BlockMesh[] Game.RotateableMountedElectricElementBlock::m_blockMeshes
    IL_0142:  ldloc.s    V_8
    IL_0144:  ldelem.ref
    IL_0145:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_014a:  stelem     [Engine]Engine.BoundingBox
    IL_014f:  stelem.ref
    IL_0150:  ldloc.s    V_6
    IL_0152:  ldc.i4.1
    IL_0153:  add
    IL_0154:  stloc.s    V_6
    IL_0156:  ldloc.s    V_6
    IL_0158:  ldc.i4.4
    IL_0159:  blt        IL_0066

    IL_015e:  ldloc.3
    IL_015f:  ldc.i4.1
    IL_0160:  add
    IL_0161:  stloc.3
    IL_0162:  ldloc.3
    IL_0163:  ldc.i4.6
    IL_0164:  blt        IL_002b

    IL_0169:  ldc.r4     -1.5707964
    IL_016e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0173:  ldc.r4     1.5707964
    IL_0178:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_017d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0182:  stloc.2
    IL_0183:  ldarg.0
    IL_0184:  ldfld      class Game.BlockMesh Game.RotateableMountedElectricElementBlock::m_standaloneBlockMesh
    IL_0189:  ldloc.0
    IL_018a:  ldarg.0
    IL_018b:  ldfld      string Game.RotateableMountedElectricElementBlock::m_meshName
    IL_0190:  ldc.i4.1
    IL_0191:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0196:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_019b:  stloc.s    V_10
    IL_019d:  ldloca.s   V_10
    IL_019f:  ldc.i4.0
    IL_01a0:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01a5:  ldloc.1
    IL_01a6:  ldloc.2
    IL_01a7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01ac:  ldc.i4.0
    IL_01ad:  ldc.i4.0
    IL_01ae:  ldc.i4.0
    IL_01af:  ldc.i4.0
    IL_01b0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01b5:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01ba:  ret
  } // end of method RotateableMountedElectricElementBlock::Initialize

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  ldc.i4.2
    IL_0007:  shr
    IL_0008:  ldc.i4.7
    IL_0009:  and
    IL_000a:  ret
  } // end of method RotateableMountedElectricElementBlock::GetFace

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
    IL_0002:  ldfld      class Game.BlockMesh Game.RotateableMountedElectricElementBlock::m_standaloneBlockMesh
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
  } // end of method RotateableMountedElectricElementBlock::DrawBlock

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  ldc.i4.s   31
    IL_0008:  and
    IL_0009:  stloc.0
    IL_000a:  ldarg.1
    IL_000b:  ldarg.0
    IL_000c:  ldarg.s    x
    IL_000e:  ldarg.s    y
    IL_0010:  ldarg.s    z
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.BlockMesh[] Game.RotateableMountedElectricElementBlock::m_blockMeshes
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_001f:  ldloca.s   V_1
    IL_0021:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0027:  ldloc.1
    IL_0028:  ldarg.2
    IL_0029:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_002e:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0033:  ldarg.1
    IL_0034:  ldarg.3
    IL_0035:  ldarg.s    x
    IL_0037:  ldarg.s    y
    IL_0039:  ldarg.s    z
    IL_003b:  ldarg.0
    IL_003c:  ldarg.3
    IL_003d:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_0042:  ldarg.0
    IL_0043:  ldfld      float32 Game.RotateableMountedElectricElementBlock::m_centerBoxSize
    IL_0048:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_004d:  ldarg.2
    IL_004e:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0053:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0058:  ret
  } // end of method RotateableMountedElectricElementBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       261 (0x105)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Matrix V_6,
             valuetype Game.BlockPlacementData V_7)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.s    raycastResult
    IL_0004:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0009:  ldfld      int32 Game.CellFace::Face
    IL_000e:  ldc.i4.4
    IL_000f:  blt        IL_00b5

    IL_0014:  ldarg.2
    IL_0015:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_001a:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_001f:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0024:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0029:  stloc.s    V_6
    IL_002b:  ldloca.s   V_6
    IL_002d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0032:  dup
    IL_0033:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0038:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_003d:  stloc.2
    IL_003e:  dup
    IL_003f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0044:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0049:  stloc.3
    IL_004a:  dup
    IL_004b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0050:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0055:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_005a:  stloc.s    V_4
    IL_005c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0061:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0066:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_006b:  stloc.s    V_5
    IL_006d:  ldloc.2
    IL_006e:  ldloc.2
    IL_006f:  ldloc.3
    IL_0070:  ldloc.s    V_4
    IL_0072:  ldloc.s    V_5
    IL_0074:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0079:  bne.un.s   IL_007f

    IL_007b:  ldc.i4.2
    IL_007c:  stloc.0
    IL_007d:  br.s       IL_00b5

    IL_007f:  ldloc.3
    IL_0080:  ldloc.2
    IL_0081:  ldloc.3
    IL_0082:  ldloc.s    V_4
    IL_0084:  ldloc.s    V_5
    IL_0086:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_008b:  bne.un.s   IL_0091

    IL_008d:  ldc.i4.1
    IL_008e:  stloc.0
    IL_008f:  br.s       IL_00b5

    IL_0091:  ldloc.s    V_4
    IL_0093:  ldloc.2
    IL_0094:  ldloc.3
    IL_0095:  ldloc.s    V_4
    IL_0097:  ldloc.s    V_5
    IL_0099:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_009e:  bne.un.s   IL_00a4

    IL_00a0:  ldc.i4.0
    IL_00a1:  stloc.0
    IL_00a2:  br.s       IL_00b5

    IL_00a4:  ldloc.s    V_5
    IL_00a6:  ldloc.2
    IL_00a7:  ldloc.3
    IL_00a8:  ldloc.s    V_4
    IL_00aa:  ldloc.s    V_5
    IL_00ac:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00b1:  bne.un.s   IL_00b5

    IL_00b3:  ldc.i4.3
    IL_00b4:  stloc.0
    IL_00b5:  ldarg.3
    IL_00b6:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_00bb:  stloc.1
    IL_00bc:  ldloc.1
    IL_00bd:  ldc.i4.s   -29
    IL_00bf:  and
    IL_00c0:  stloc.1
    IL_00c1:  ldloc.1
    IL_00c2:  ldarg.s    raycastResult
    IL_00c4:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00c9:  ldfld      int32 Game.CellFace::Face
    IL_00ce:  ldc.i4.2
    IL_00cf:  shl
    IL_00d0:  or
    IL_00d1:  stloc.1
    IL_00d2:  ldloca.s   V_7
    IL_00d4:  initobj    Game.BlockPlacementData
    IL_00da:  ldloca.s   V_7
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      int32 Game.Block::BlockIndex
    IL_00e2:  ldc.i4.0
    IL_00e3:  ldloc.1
    IL_00e4:  ldloc.0
    IL_00e5:  call       int32 Game.RotateableMountedElectricElementBlock::SetRotation(int32,
                                                                                       int32)
    IL_00ea:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_00ef:  stfld      int32 Game.BlockPlacementData::Value
    IL_00f4:  ldloca.s   V_7
    IL_00f6:  ldarg.s    raycastResult
    IL_00f8:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00fd:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0102:  ldloc.s    V_7
    IL_0104:  ret
  } // end of method RotateableMountedElectricElementBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  ldc.i4.s   31
    IL_0008:  and
    IL_0009:  stloc.0
    IL_000a:  ldarg.0
    IL_000b:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.RotateableMountedElectricElementBlock::m_collisionBoxes
    IL_0010:  ldloc.0
    IL_0011:  ldelem.ref
    IL_0012:  ret
  } // end of method RotateableMountedElectricElementBlock::GetCustomCollisionBoxes

  .method public hidebysig static int32  GetRotation(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method RotateableMountedElectricElementBlock::GetRotation

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
  } // end of method RotateableMountedElectricElementBlock::SetRotation

} // end of class Game.RotateableMountedElectricElementBlock