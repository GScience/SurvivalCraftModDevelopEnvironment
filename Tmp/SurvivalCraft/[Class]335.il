.class public auto ansi beforefieldinit Game.MagnetBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x000000A7)
  .field private class Game.BlockMesh[] m_meshesByData
  .field private class Game.BlockMesh m_standaloneMesh
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       285 (0x11d)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             int32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_3)
    IL_0000:  ldstr      "Models/Magnet"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Magnet"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.2
    IL_0024:  br         IL_00b8

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.BlockMesh[] Game.MagnetBlock::m_meshesByData
    IL_002f:  ldloc.2
    IL_0030:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0035:  stelem.ref
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.BlockMesh[] Game.MagnetBlock::m_meshesByData
    IL_003c:  ldloc.2
    IL_003d:  ldelem.ref
    IL_003e:  ldloc.0
    IL_003f:  ldstr      "Magnet"
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_004a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_004f:  stloc.3
    IL_0050:  ldloca.s   V_3
    IL_0052:  ldc.i4.0
    IL_0053:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0058:  ldloc.1
    IL_0059:  ldc.r4     1.5707964
    IL_005e:  ldloc.2
    IL_005f:  conv.r4
    IL_0060:  mul
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
    IL_0084:  ldc.i4.0
    IL_0085:  ldc.i4.0
    IL_0086:  ldc.i4.1
    IL_0087:  ldc.i4.0
    IL_0088:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_008d:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.MagnetBlock::m_collisionBoxesByData
    IL_0098:  ldloc.2
    IL_0099:  ldc.i4.1
    IL_009a:  newarr     [Engine]Engine.BoundingBox
    IL_009f:  dup
    IL_00a0:  ldc.i4.0
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.BlockMesh[] Game.MagnetBlock::m_meshesByData
    IL_00a7:  ldloc.2
    IL_00a8:  ldelem.ref
    IL_00a9:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_00ae:  stelem     [Engine]Engine.BoundingBox
    IL_00b3:  stelem.ref
    IL_00b4:  ldloc.2
    IL_00b5:  ldc.i4.1
    IL_00b6:  add
    IL_00b7:  stloc.2
    IL_00b8:  ldloc.2
    IL_00b9:  ldc.i4.2
    IL_00ba:  blt        IL_0029

    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.BlockMesh Game.MagnetBlock::m_standaloneMesh
    IL_00c5:  ldloc.0
    IL_00c6:  ldstr      "Magnet"
    IL_00cb:  ldc.i4.1
    IL_00cc:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00d1:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00d6:  stloc.3
    IL_00d7:  ldloca.s   V_3
    IL_00d9:  ldc.i4.0
    IL_00da:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00df:  ldloc.1
    IL_00e0:  ldc.r4     1.5
    IL_00e5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00ea:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ef:  ldc.r4     0.0
    IL_00f4:  ldc.r4     -0.25
    IL_00f9:  ldc.r4     0.0
    IL_00fe:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0103:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0108:  ldc.i4.0
    IL_0109:  ldc.i4.0
    IL_010a:  ldc.i4.1
    IL_010b:  ldc.i4.0
    IL_010c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0111:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0116:  ldarg.0
    IL_0117:  call       instance void Game.Block::Initialize()
    IL_011c:  ret
  } // end of method MagnetBlock::Initialize

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
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.MagnetBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_001b

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.MagnetBlock::m_collisionBoxesByData
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ret

    IL_001b:  ldnull
    IL_001c:  ret
  } // end of method MagnetBlock::GetCustomCollisionBoxes

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
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.MagnetBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_003b

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.MagnetBlock::m_meshesByData
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
  } // end of method MagnetBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.MagnetBlock::m_standaloneMesh
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    matrix
    IL_000a:  ldarg.s    environmentData
    IL_000c:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0011:  ret
  } // end of method MagnetBlock::DrawBlock

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       97 (0x61)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype Game.BlockPlacementData V_3)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0015:  stloc.2
    IL_0016:  ldloca.s   V_2
    IL_0018:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_001d:  stloc.0
    IL_001e:  ldloc.0
    IL_001f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0024:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0029:  ldloc.0
    IL_002a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_002f:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0034:  bgt.s      IL_0039

    IL_0036:  ldc.i4.1
    IL_0037:  br.s       IL_003a

    IL_0039:  ldc.i4.0
    IL_003a:  stloc.1
    IL_003b:  ldloca.s   V_3
    IL_003d:  initobj    Game.BlockPlacementData
    IL_0043:  ldloca.s   V_3
    IL_0045:  ldarg.s    raycastResult
    IL_0047:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_004c:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0051:  ldloca.s   V_3
    IL_0053:  ldarg.3
    IL_0054:  ldloc.1
    IL_0055:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_005a:  stfld      int32 Game.BlockPlacementData::Value
    IL_005f:  ldloc.3
    IL_0060:  ret
  } // end of method MagnetBlock::GetPlacementValue

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.MagnetBlock::m_meshesByData
    IL_000c:  ldarg.0
    IL_000d:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0012:  stfld      class Game.BlockMesh Game.MagnetBlock::m_standaloneMesh
    IL_0017:  ldarg.0
    IL_0018:  ldc.i4.2
    IL_0019:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_001e:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.MagnetBlock::m_collisionBoxesByData
    IL_0023:  ldarg.0
    IL_0024:  call       instance void Game.Block::.ctor()
    IL_0029:  ret
  } // end of method MagnetBlock::.ctor

} // end of class Game.MagnetBlock