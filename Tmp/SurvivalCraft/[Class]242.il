.class public abstract auto ansi beforefieldinit Game.LadderBlock
       extends Game.Block
{
  .field private string m_modelName
  .field private float32 m_offset
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(string modelName,
                               float32 offset) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.LadderBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.4
    IL_000d:  newarr     Game.BlockMesh
    IL_0012:  stfld      class Game.BlockMesh[] Game.LadderBlock::m_blockMeshesByData
    IL_0017:  ldarg.0
    IL_0018:  ldc.i4.4
    IL_0019:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_001e:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.LadderBlock::m_collisionBoxesByData
    IL_0023:  ldarg.0
    IL_0024:  call       instance void Game.Block::.ctor()
    IL_0029:  ldarg.0
    IL_002a:  ldarg.1
    IL_002b:  stfld      string Game.LadderBlock::m_modelName
    IL_0030:  ldarg.0
    IL_0031:  ldarg.2
    IL_0032:  stfld      float32 Game.LadderBlock::m_offset
    IL_0037:  ret
  } // end of method LadderBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       314 (0x13a)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             int32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.LadderBlock::m_modelName
    IL_0006:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldstr      "Ladder"
    IL_0012:  ldc.i4.1
    IL_0013:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0018:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001d:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0022:  stloc.1
    IL_0023:  ldc.i4.0
    IL_0024:  stloc.2
    IL_0025:  br         IL_00e3

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.BlockMesh[] Game.LadderBlock::m_blockMeshesByData
    IL_0030:  ldloc.2
    IL_0031:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0036:  stelem.ref
    IL_0037:  ldc.r4     0.0
    IL_003c:  ldc.r4     0.0
    IL_0041:  ldc.r4     0.5
    IL_0046:  ldarg.0
    IL_0047:  ldfld      float32 Game.LadderBlock::m_offset
    IL_004c:  sub
    IL_004d:  neg
    IL_004e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0053:  ldloc.2
    IL_0054:  conv.r4
    IL_0055:  ldc.r4     3.1415927
    IL_005a:  mul
    IL_005b:  ldc.r4     2.
    IL_0060:  div
    IL_0061:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0066:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_006b:  ldc.r4     0.5
    IL_0070:  ldc.r4     0.0
    IL_0075:  ldc.r4     0.5
    IL_007a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0084:  stloc.3
    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.BlockMesh[] Game.LadderBlock::m_blockMeshesByData
    IL_008b:  ldloc.2
    IL_008c:  ldelem.ref
    IL_008d:  ldloc.0
    IL_008e:  ldstr      "Ladder"
    IL_0093:  ldc.i4.1
    IL_0094:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0099:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_009e:  stloc.s    V_4
    IL_00a0:  ldloca.s   V_4
    IL_00a2:  ldc.i4.0
    IL_00a3:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00a8:  ldloc.1
    IL_00a9:  ldloc.3
    IL_00aa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00af:  ldc.i4.0
    IL_00b0:  ldc.i4.0
    IL_00b1:  ldc.i4.0
    IL_00b2:  ldc.i4.0
    IL_00b3:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00b8:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.LadderBlock::m_collisionBoxesByData
    IL_00c3:  ldloc.2
    IL_00c4:  ldc.i4.1
    IL_00c5:  newarr     [Engine]Engine.BoundingBox
    IL_00ca:  dup
    IL_00cb:  ldc.i4.0
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class Game.BlockMesh[] Game.LadderBlock::m_blockMeshesByData
    IL_00d2:  ldloc.2
    IL_00d3:  ldelem.ref
    IL_00d4:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_00d9:  stelem     [Engine]Engine.BoundingBox
    IL_00de:  stelem.ref
    IL_00df:  ldloc.2
    IL_00e0:  ldc.i4.1
    IL_00e1:  add
    IL_00e2:  stloc.2
    IL_00e3:  ldloc.2
    IL_00e4:  ldc.i4.4
    IL_00e5:  blt        IL_002a

    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class Game.BlockMesh Game.LadderBlock::m_standaloneBlockMesh
    IL_00f0:  ldloc.0
    IL_00f1:  ldstr      "Ladder"
    IL_00f6:  ldc.i4.1
    IL_00f7:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00fc:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0101:  stloc.s    V_4
    IL_0103:  ldloca.s   V_4
    IL_0105:  ldc.i4.0
    IL_0106:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_010b:  ldloc.1
    IL_010c:  ldc.r4     0.0
    IL_0111:  ldc.r4     -0.5
    IL_0116:  ldc.r4     0.0
    IL_011b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0120:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0125:  ldc.i4.0
    IL_0126:  ldc.i4.0
    IL_0127:  ldc.i4.0
    IL_0128:  ldc.i4.0
    IL_0129:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_012e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0133:  ldarg.0
    IL_0134:  call       instance void Game.Block::Initialize()
    IL_0139:  ret
  } // end of method LadderBlock::Initialize

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
    IL_0009:  ldfld      class Game.BlockMesh[] Game.LadderBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_003b

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.LadderBlock::m_blockMeshesByData
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
  } // end of method LadderBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.BlockMesh Game.LadderBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    matrix
    IL_000a:  ldarg.s    environmentData
    IL_000c:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0011:  ret
  } // end of method LadderBlock::DrawBlock

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  5
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldarg.s    raycastResult
    IL_000c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0011:  ldfld      int32 Game.CellFace::Face
    IL_0016:  ldc.i4.4
    IL_0017:  blt.s      IL_001c

    IL_0019:  ldc.i4.0
    IL_001a:  br.s       IL_003a

    IL_001c:  ldarg.0
    IL_001d:  ldfld      int32 Game.Block::BlockIndex
    IL_0022:  ldc.i4.0
    IL_0023:  ldc.i4.0
    IL_0024:  ldarg.s    raycastResult
    IL_0026:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_002b:  ldfld      int32 Game.CellFace::Face
    IL_0030:  call       int32 Game.LadderBlock::SetFace(int32,
                                                         int32)
    IL_0035:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_003a:  stfld      int32 Game.BlockPlacementData::Value
    IL_003f:  ldloca.s   V_0
    IL_0041:  ldarg.s    raycastResult
    IL_0043:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0048:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_004d:  ldloc.0
    IL_004e:  ret
  } // end of method LadderBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.LadderBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_001b

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.LadderBlock::m_collisionBoxesByData
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ret

    IL_001b:  ldarg.0
    IL_001c:  ldarg.1
    IL_001d:  ldarg.2
    IL_001e:  call       instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_0023:  ret
  } // end of method LadderBlock::GetCustomCollisionBoxes

  .method public hidebysig static int32  GetFace(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method LadderBlock::GetFace

  .method public hidebysig static int32  SetFace(int32 data,
                                                 int32 face) cil managed
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
  } // end of method LadderBlock::SetFace

} // end of class Game.LadderBlock