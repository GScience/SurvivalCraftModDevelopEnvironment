.class public abstract auto ansi beforefieldinit Game.DoorBlock
       extends Game.Block
       implements Game.IElectricElementBlock
{
  .field private float32 m_pivotDistance
  .field private string m_modelName
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(string modelName,
                               float32 pivotDistance) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.DoorBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   16
    IL_000e:  newarr     Game.BlockMesh
    IL_0013:  stfld      class Game.BlockMesh[] Game.DoorBlock::m_blockMeshesByData
    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.s   16
    IL_001b:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0020:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.DoorBlock::m_collisionBoxesByData
    IL_0025:  ldarg.0
    IL_0026:  call       instance void Game.Block::.ctor()
    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  stfld      string Game.DoorBlock::m_modelName
    IL_0032:  ldarg.0
    IL_0033:  ldarg.2
    IL_0034:  stfld      float32 Game.DoorBlock::m_pivotDistance
    IL_0039:  ret
  } // end of method DoorBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       526 (0x20e)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             int32 V_2,
             int32 V_3,
             bool V_4,
             bool V_5,
             float32 V_6,
             valuetype [Engine]Engine.Matrix V_7,
             valuetype [Engine]Engine.BoundingBox V_8,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.DoorBlock::m_modelName
    IL_0006:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldstr      "Door"
    IL_0012:  ldc.i4.1
    IL_0013:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0018:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001d:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0022:  stloc.1
    IL_0023:  ldc.i4.0
    IL_0024:  stloc.2
    IL_0025:  br         IL_01b6

    IL_002a:  ldloc.2
    IL_002b:  call       int32 Game.DoorBlock::GetRotation(int32)
    IL_0030:  stloc.3
    IL_0031:  ldloc.2
    IL_0032:  call       bool Game.DoorBlock::GetOpen(int32)
    IL_0037:  stloc.s    V_4
    IL_0039:  ldloc.2
    IL_003a:  call       bool Game.DoorBlock::GetRightHanded(int32)
    IL_003f:  stloc.s    V_5
    IL_0041:  ldloc.s    V_5
    IL_0043:  brtrue.s   IL_0048

    IL_0045:  ldc.i4.1
    IL_0046:  br.s       IL_0049

    IL_0048:  ldc.i4.m1
    IL_0049:  conv.r4
    IL_004a:  stloc.s    V_6
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.BlockMesh[] Game.DoorBlock::m_blockMeshesByData
    IL_0052:  ldloc.2
    IL_0053:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0058:  stelem.ref
    IL_0059:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_005e:  stloc.s    V_7
    IL_0060:  ldloc.s    V_7
    IL_0062:  ldloc.s    V_6
    IL_0064:  neg
    IL_0065:  ldc.r4     1.
    IL_006a:  ldc.r4     1.
    IL_006f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0074:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0079:  stloc.s    V_7
    IL_007b:  ldloc.s    V_7
    IL_007d:  ldc.r4     0.5
    IL_0082:  ldarg.0
    IL_0083:  ldfld      float32 Game.DoorBlock::m_pivotDistance
    IL_0088:  sub
    IL_0089:  ldloc.s    V_6
    IL_008b:  mul
    IL_008c:  ldc.r4     0.0
    IL_0091:  ldc.r4     0.0
    IL_0096:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_009b:  ldloc.s    V_4
    IL_009d:  brtrue.s   IL_00a6

    IL_009f:  ldc.r4     0.0
    IL_00a4:  br.s       IL_00b4

    IL_00a6:  ldloc.s    V_6
    IL_00a8:  ldc.r4     3.1415927
    IL_00ad:  mul
    IL_00ae:  ldc.r4     2.
    IL_00b3:  div
    IL_00b4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00b9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00be:  ldc.r4     0.5
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      float32 Game.DoorBlock::m_pivotDistance
    IL_00c9:  sub
    IL_00ca:  neg
    IL_00cb:  ldloc.s    V_6
    IL_00cd:  mul
    IL_00ce:  ldc.r4     0.0
    IL_00d3:  ldc.r4     0.0
    IL_00d8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00dd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e7:  stloc.s    V_7
    IL_00e9:  ldloc.s    V_7
    IL_00eb:  ldc.r4     0.0
    IL_00f0:  ldc.r4     0.0
    IL_00f5:  ldc.r4     0.5
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      float32 Game.DoorBlock::m_pivotDistance
    IL_0100:  sub
    IL_0101:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0106:  ldloc.3
    IL_0107:  conv.r4
    IL_0108:  ldc.r4     3.1415927
    IL_010d:  mul
    IL_010e:  ldc.r4     2.
    IL_0113:  div
    IL_0114:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0119:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_011e:  ldc.r4     0.5
    IL_0123:  ldc.r4     0.0
    IL_0128:  ldc.r4     0.5
    IL_012d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0132:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0137:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_013c:  stloc.s    V_7
    IL_013e:  ldarg.0
    IL_013f:  ldfld      class Game.BlockMesh[] Game.DoorBlock::m_blockMeshesByData
    IL_0144:  ldloc.2
    IL_0145:  ldelem.ref
    IL_0146:  ldloc.0
    IL_0147:  ldstr      "Door"
    IL_014c:  ldc.i4.1
    IL_014d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0152:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0157:  stloc.s    V_9
    IL_0159:  ldloca.s   V_9
    IL_015b:  ldc.i4.0
    IL_015c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0161:  ldloc.1
    IL_0162:  ldloc.s    V_7
    IL_0164:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0169:  ldc.i4.0
    IL_016a:  ldloc.s    V_5
    IL_016c:  ldc.i4.0
    IL_016d:  ceq
    IL_016f:  ldc.i4.0
    IL_0170:  ldc.i4.0
    IL_0171:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0176:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_017b:  ldarg.0
    IL_017c:  ldfld      class Game.BlockMesh[] Game.DoorBlock::m_blockMeshesByData
    IL_0181:  ldloc.2
    IL_0182:  ldelem.ref
    IL_0183:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_0188:  stloc.s    V_8
    IL_018a:  ldloca.s   V_8
    IL_018c:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0191:  ldc.r4     1.
    IL_0196:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_019b:  ldarg.0
    IL_019c:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.DoorBlock::m_collisionBoxesByData
    IL_01a1:  ldloc.2
    IL_01a2:  ldc.i4.1
    IL_01a3:  newarr     [Engine]Engine.BoundingBox
    IL_01a8:  dup
    IL_01a9:  ldc.i4.0
    IL_01aa:  ldloc.s    V_8
    IL_01ac:  stelem     [Engine]Engine.BoundingBox
    IL_01b1:  stelem.ref
    IL_01b2:  ldloc.2
    IL_01b3:  ldc.i4.1
    IL_01b4:  add
    IL_01b5:  stloc.2
    IL_01b6:  ldloc.2
    IL_01b7:  ldc.i4.s   16
    IL_01b9:  blt        IL_002a

    IL_01be:  ldarg.0
    IL_01bf:  ldfld      class Game.BlockMesh Game.DoorBlock::m_standaloneBlockMesh
    IL_01c4:  ldloc.0
    IL_01c5:  ldstr      "Door"
    IL_01ca:  ldc.i4.1
    IL_01cb:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01d0:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01d5:  stloc.s    V_9
    IL_01d7:  ldloca.s   V_9
    IL_01d9:  ldc.i4.0
    IL_01da:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01df:  ldloc.1
    IL_01e0:  ldc.r4     0.0
    IL_01e5:  ldc.r4     -1.
    IL_01ea:  ldc.r4     0.0
    IL_01ef:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01f4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01f9:  ldc.i4.0
    IL_01fa:  ldc.i4.0
    IL_01fb:  ldc.i4.0
    IL_01fc:  ldc.i4.0
    IL_01fd:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0202:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0207:  ldarg.0
    IL_0208:  call       instance void Game.Block::Initialize()
    IL_020d:  ret
  } // end of method DoorBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       151 (0x97)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_000d:  ldarg.s    x
    IL_000f:  ldarg.s    y
    IL_0011:  ldarg.s    z
    IL_0013:  call       bool Game.DoorBlock::IsBottomPart(class Game.Terrain,
                                                           int32,
                                                           int32,
                                                           int32)
    IL_0018:  brfalse.s  IL_004e

    IL_001a:  ldloc.0
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.BlockMesh[] Game.DoorBlock::m_blockMeshesByData
    IL_0021:  ldlen
    IL_0022:  conv.i4
    IL_0023:  bge.s      IL_004e

    IL_0025:  ldarg.1
    IL_0026:  ldarg.0
    IL_0027:  ldarg.s    x
    IL_0029:  ldarg.s    y
    IL_002b:  ldarg.s    z
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.BlockMesh[] Game.DoorBlock::m_blockMeshesByData
    IL_0033:  ldloc.0
    IL_0034:  ldelem.ref
    IL_0035:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_003a:  ldloca.s   V_2
    IL_003c:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0042:  ldloc.2
    IL_0043:  ldarg.2
    IL_0044:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0049:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_004e:  ldloc.0
    IL_004f:  call       bool Game.DoorBlock::GetRightHanded(int32)
    IL_0054:  brtrue.s   IL_0067

    IL_0056:  ldc.r4     0.44999999
    IL_005b:  ldc.r4     0.0
    IL_0060:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0065:  br.s       IL_0076

    IL_0067:  ldc.r4     -0.44999999
    IL_006c:  ldc.r4     0.0
    IL_0071:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0076:  stloc.1
    IL_0077:  ldarg.1
    IL_0078:  ldarg.3
    IL_0079:  ldarg.s    x
    IL_007b:  ldarg.s    y
    IL_007d:  ldarg.s    z
    IL_007f:  ldloc.0
    IL_0080:  call       int32 Game.DoorBlock::GetHingeFace(int32)
    IL_0085:  ldc.r4     9.9999998e-003
    IL_008a:  ldloc.1
    IL_008b:  ldarg.2
    IL_008c:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0091:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0096:  ret
  } // end of method DoorBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.BlockMesh Game.DoorBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldc.r4     0.75
    IL_000d:  ldarg.s    size
    IL_000f:  mul
    IL_0010:  ldarg.s    matrix
    IL_0012:  ldarg.s    environmentData
    IL_0014:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0019:  ret
  } // end of method DoorBlock::DrawBlock

  .method public hidebysig virtual instance int32 
          GetShadowStrength(int32 'value') cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.DoorBlock::GetOpen(int32)
    IL_000b:  brtrue.s   IL_0014

    IL_000d:  ldarg.0
    IL_000e:  ldfld      int32 Game.Block::DefaultShadowStrength
    IL_0013:  ret

    IL_0014:  ldc.i4.4
    IL_0015:  ret
  } // end of method DoorBlock::GetShadowStrength

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       471 (0x1d7)
    .maxstack  6
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Point3 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             bool V_9,
             int32 V_10,
             valuetype [Engine]Engine.Matrix V_11,
             valuetype Game.BlockPlacementData V_12)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0015:  stloc.s    V_11
    IL_0017:  ldloca.s   V_11
    IL_0019:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_001e:  dup
    IL_001f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0024:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0029:  stloc.0
    IL_002a:  dup
    IL_002b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0030:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0035:  stloc.1
    IL_0036:  dup
    IL_0037:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_003c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0041:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0046:  stloc.2
    IL_0047:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_004c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0051:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0056:  stloc.3
    IL_0057:  ldc.i4.0
    IL_0058:  stloc.s    V_4
    IL_005a:  ldloc.0
    IL_005b:  ldloc.0
    IL_005c:  ldloc.1
    IL_005d:  ldloc.2
    IL_005e:  ldloc.3
    IL_005f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0064:  bne.un.s   IL_006b

    IL_0066:  ldc.i4.2
    IL_0067:  stloc.s    V_4
    IL_0069:  br.s       IL_009c

    IL_006b:  ldloc.1
    IL_006c:  ldloc.0
    IL_006d:  ldloc.1
    IL_006e:  ldloc.2
    IL_006f:  ldloc.3
    IL_0070:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0075:  bne.un.s   IL_007c

    IL_0077:  ldc.i4.3
    IL_0078:  stloc.s    V_4
    IL_007a:  br.s       IL_009c

    IL_007c:  ldloc.2
    IL_007d:  ldloc.0
    IL_007e:  ldloc.1
    IL_007f:  ldloc.2
    IL_0080:  ldloc.3
    IL_0081:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0086:  bne.un.s   IL_008d

    IL_0088:  ldc.i4.0
    IL_0089:  stloc.s    V_4
    IL_008b:  br.s       IL_009c

    IL_008d:  ldloc.3
    IL_008e:  ldloc.0
    IL_008f:  ldloc.1
    IL_0090:  ldloc.2
    IL_0091:  ldloc.3
    IL_0092:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0097:  bne.un.s   IL_009c

    IL_0099:  ldc.i4.1
    IL_009a:  stloc.s    V_4
    IL_009c:  ldarg.s    raycastResult
    IL_009e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00a3:  ldfld      int32 Game.CellFace::Face
    IL_00a8:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_00ad:  stloc.s    V_5
    IL_00af:  ldarg.s    raycastResult
    IL_00b1:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00b6:  ldfld      int32 Game.CellFace::X
    IL_00bb:  ldloc.s    V_5
    IL_00bd:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00c2:  add
    IL_00c3:  stloc.s    V_6
    IL_00c5:  ldarg.s    raycastResult
    IL_00c7:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00cc:  ldfld      int32 Game.CellFace::Y
    IL_00d1:  ldloc.s    V_5
    IL_00d3:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00d8:  add
    IL_00d9:  stloc.s    V_7
    IL_00db:  ldarg.s    raycastResult
    IL_00dd:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00e2:  ldfld      int32 Game.CellFace::Z
    IL_00e7:  ldloc.s    V_5
    IL_00e9:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00ee:  add
    IL_00ef:  stloc.s    V_8
    IL_00f1:  ldc.i4.1
    IL_00f2:  stloc.s    V_9
    IL_00f4:  ldloc.s    V_4
    IL_00f6:  brtrue.s   IL_011a

    IL_00f8:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00fd:  ldarg.1
    IL_00fe:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0103:  ldloc.s    V_6
    IL_0105:  ldc.i4.1
    IL_0106:  sub
    IL_0107:  ldloc.s    V_7
    IL_0109:  ldloc.s    V_8
    IL_010b:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0110:  ldelem.ref
    IL_0111:  ldfld      bool Game.Block::IsTransparent
    IL_0116:  stloc.s    V_9
    IL_0118:  br.s       IL_018d

    IL_011a:  ldloc.s    V_4
    IL_011c:  ldc.i4.1
    IL_011d:  bne.un.s   IL_0141

    IL_011f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0124:  ldarg.1
    IL_0125:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_012a:  ldloc.s    V_6
    IL_012c:  ldloc.s    V_7
    IL_012e:  ldloc.s    V_8
    IL_0130:  ldc.i4.1
    IL_0131:  add
    IL_0132:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0137:  ldelem.ref
    IL_0138:  ldfld      bool Game.Block::IsTransparent
    IL_013d:  stloc.s    V_9
    IL_013f:  br.s       IL_018d

    IL_0141:  ldloc.s    V_4
    IL_0143:  ldc.i4.2
    IL_0144:  bne.un.s   IL_0168

    IL_0146:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_014b:  ldarg.1
    IL_014c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0151:  ldloc.s    V_6
    IL_0153:  ldc.i4.1
    IL_0154:  add
    IL_0155:  ldloc.s    V_7
    IL_0157:  ldloc.s    V_8
    IL_0159:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_015e:  ldelem.ref
    IL_015f:  ldfld      bool Game.Block::IsTransparent
    IL_0164:  stloc.s    V_9
    IL_0166:  br.s       IL_018d

    IL_0168:  ldloc.s    V_4
    IL_016a:  ldc.i4.3
    IL_016b:  bne.un.s   IL_018d

    IL_016d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0172:  ldarg.1
    IL_0173:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0178:  ldloc.s    V_6
    IL_017a:  ldloc.s    V_7
    IL_017c:  ldloc.s    V_8
    IL_017e:  ldc.i4.1
    IL_017f:  sub
    IL_0180:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0185:  ldelem.ref
    IL_0186:  ldfld      bool Game.Block::IsTransparent
    IL_018b:  stloc.s    V_9
    IL_018d:  ldc.i4.0
    IL_018e:  ldloc.s    V_4
    IL_0190:  call       int32 Game.DoorBlock::SetRotation(int32,
                                                           int32)
    IL_0195:  ldc.i4.0
    IL_0196:  call       int32 Game.DoorBlock::SetOpen(int32,
                                                       bool)
    IL_019b:  ldloc.s    V_9
    IL_019d:  call       int32 Game.DoorBlock::SetRightHanded(int32,
                                                              bool)
    IL_01a2:  stloc.s    V_10
    IL_01a4:  ldloca.s   V_12
    IL_01a6:  initobj    Game.BlockPlacementData
    IL_01ac:  ldloca.s   V_12
    IL_01ae:  ldc.i4.0
    IL_01af:  ldarg.0
    IL_01b0:  ldfld      int32 Game.Block::BlockIndex
    IL_01b5:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_01ba:  ldloc.s    V_10
    IL_01bc:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_01c1:  stfld      int32 Game.BlockPlacementData::Value
    IL_01c6:  ldloca.s   V_12
    IL_01c8:  ldarg.s    raycastResult
    IL_01ca:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_01cf:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_01d4:  ldloc.s    V_12
    IL_01d6:  ret
  } // end of method DoorBlock::GetPlacementValue

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
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.DoorBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_001b

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.DoorBlock::m_collisionBoxesByData
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ret

    IL_001b:  ldnull
    IL_001c:  ret
  } // end of method DoorBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance bool 
          ShouldAvoid(int32 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.DoorBlock::GetOpen(int32)
    IL_000b:  ldc.i4.0
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method DoorBlock::ShouldAvoid

  .method public hidebysig virtual instance bool 
          IsHeatBlocker(int32 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.DoorBlock::GetOpen(int32)
    IL_000b:  ldc.i4.0
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method DoorBlock::IsHeatBlocker

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
    IL_000e:  call       int32 Game.DoorBlock::GetHingeFace(int32)
    IL_0013:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0018:  newobj     instance void Game.DoorElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                       valuetype Game.CellFace)
    IL_001d:  ret
  } // end of method DoorBlock::CreateElectricElement

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
    // 代码大小       122 (0x7a)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_2,
             valuetype Game.ElectricConnectorDirection V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_4)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.DoorBlock::GetHingeFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.3
    IL_000d:  ldloc.0
    IL_000e:  bne.un.s   IL_006f

    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.0
    IL_0012:  ldarg.s    connectorFace
    IL_0014:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0019:  stloc.1
    IL_001a:  ldloc.1
    IL_001b:  stloc.2
    IL_001c:  ldc.i4.3
    IL_001d:  stloc.3
    IL_001e:  ldloca.s   V_2
    IL_0020:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_0025:  ldloc.3
    IL_0026:  beq.s      IL_002b

    IL_0028:  ldc.i4.0
    IL_0029:  br.s       IL_0032

    IL_002b:  ldloca.s   V_2
    IL_002d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0032:  brtrue.s   IL_0068

    IL_0034:  ldloc.1
    IL_0035:  stloc.2
    IL_0036:  ldc.i4.1
    IL_0037:  stloc.3
    IL_0038:  ldloca.s   V_2
    IL_003a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_003f:  ldloc.3
    IL_0040:  beq.s      IL_0045

    IL_0042:  ldc.i4.0
    IL_0043:  br.s       IL_004c

    IL_0045:  ldloca.s   V_2
    IL_0047:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_004c:  brtrue.s   IL_0068

    IL_004e:  ldloc.1
    IL_004f:  stloc.2
    IL_0050:  ldc.i4.4
    IL_0051:  stloc.3
    IL_0052:  ldloca.s   V_2
    IL_0054:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
    IL_0059:  ldloc.3
    IL_005a:  beq.s      IL_005f

    IL_005c:  ldc.i4.0
    IL_005d:  br.s       IL_0066

    IL_005f:  ldloca.s   V_2
    IL_0061:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0066:  brfalse.s  IL_006f

    IL_0068:  ldc.i4.0
    IL_0069:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_006e:  ret

    IL_006f:  ldloca.s   V_4
    IL_0071:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_0077:  ldloc.s    V_4
    IL_0079:  ret
  } // end of method DoorBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method DoorBlock::GetConnectionMask

  .method public hidebysig static int32  GetRotation(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method DoorBlock::GetRotation

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
  } // end of method DoorBlock::GetOpen

  .method public hidebysig static bool  GetRightHanded(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  ceq
    IL_0006:  ret
  } // end of method DoorBlock::GetRightHanded

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
  } // end of method DoorBlock::SetRotation

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
  } // end of method DoorBlock::SetOpen

  .method public hidebysig static int32  SetRightHanded(int32 data,
                                                        bool rightHanded) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -9
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.8
    IL_000a:  or
    IL_000b:  ret
  } // end of method DoorBlock::SetRightHanded

  .method public hidebysig static bool  IsTopPart(class Game.Terrain terrain,
                                                  int32 x,
                                                  int32 y,
                                                  int32 z) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  sub
    IL_000a:  ldarg.3
    IL_000b:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0010:  ldelem.ref
    IL_0011:  isinst     Game.DoorBlock
    IL_0016:  ldnull
    IL_0017:  cgt.un
    IL_0019:  ret
  } // end of method DoorBlock::IsTopPart

  .method public hidebysig static bool  IsBottomPart(class Game.Terrain terrain,
                                                     int32 x,
                                                     int32 y,
                                                     int32 z) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  add
    IL_000a:  ldarg.3
    IL_000b:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0010:  ldelem.ref
    IL_0011:  isinst     Game.DoorBlock
    IL_0016:  ldnull
    IL_0017:  cgt.un
    IL_0019:  ret
  } // end of method DoorBlock::IsBottomPart

  .method public hidebysig static int32  GetHingeFace(int32 data) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.DoorBlock::GetRotation(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.1
    IL_0009:  sub
    IL_000a:  ldc.i4.0
    IL_000b:  blt.s      IL_0012

    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.1
    IL_000f:  sub
    IL_0010:  br.s       IL_0013

    IL_0012:  ldc.i4.3
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  call       bool Game.DoorBlock::GetRightHanded(int32)
    IL_001a:  brtrue.s   IL_0023

    IL_001c:  ldloc.1
    IL_001d:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0022:  stloc.1
    IL_0023:  ldloc.1
    IL_0024:  ret
  } // end of method DoorBlock::GetHingeFace

} // end of class Game.DoorBlock