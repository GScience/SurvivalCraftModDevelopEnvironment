.class public auto ansi beforefieldinit Game.FurnaceBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x00000040)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       258 (0x102)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             int32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_4)
    IL_0000:  ldstr      "Models/Furnace"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Furnace"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.2
    IL_0024:  br         IL_00ab

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.BlockMesh[] Game.FurnaceBlock::m_blockMeshesByData
    IL_002f:  ldloc.2
    IL_0030:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0035:  stelem.ref
    IL_0036:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_003b:  stloc.3
    IL_003c:  ldloc.3
    IL_003d:  ldloc.2
    IL_003e:  conv.r4
    IL_003f:  ldc.r4     3.1415927
    IL_0044:  mul
    IL_0045:  ldc.r4     2.
    IL_004a:  div
    IL_004b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0050:  ldc.r4     0.5
    IL_0055:  ldc.r4     0.0
    IL_005a:  ldc.r4     0.5
    IL_005f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0064:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0069:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_006e:  stloc.3
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.BlockMesh[] Game.FurnaceBlock::m_blockMeshesByData
    IL_0075:  ldloc.2
    IL_0076:  ldelem.ref
    IL_0077:  ldloc.0
    IL_0078:  ldstr      "Furnace"
    IL_007d:  ldc.i4.1
    IL_007e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0083:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0088:  stloc.s    V_4
    IL_008a:  ldloca.s   V_4
    IL_008c:  ldc.i4.0
    IL_008d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0092:  ldloc.1
    IL_0093:  ldloc.3
    IL_0094:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0099:  ldc.i4.0
    IL_009a:  ldc.i4.0
    IL_009b:  ldc.i4.0
    IL_009c:  ldc.i4.0
    IL_009d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00a2:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00a7:  ldloc.2
    IL_00a8:  ldc.i4.1
    IL_00a9:  add
    IL_00aa:  stloc.2
    IL_00ab:  ldloc.2
    IL_00ac:  ldc.i4.4
    IL_00ad:  blt        IL_0029

    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Game.BlockMesh Game.FurnaceBlock::m_standaloneBlockMesh
    IL_00b8:  ldloc.0
    IL_00b9:  ldstr      "Furnace"
    IL_00be:  ldc.i4.1
    IL_00bf:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00c4:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00c9:  stloc.s    V_4
    IL_00cb:  ldloca.s   V_4
    IL_00cd:  ldc.i4.0
    IL_00ce:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00d3:  ldloc.1
    IL_00d4:  ldc.r4     0.0
    IL_00d9:  ldc.r4     -0.5
    IL_00de:  ldc.r4     0.0
    IL_00e3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00e8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ed:  ldc.i4.0
    IL_00ee:  ldc.i4.0
    IL_00ef:  ldc.i4.0
    IL_00f0:  ldc.i4.0
    IL_00f1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00f6:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00fb:  ldarg.0
    IL_00fc:  call       instance void Game.Block::Initialize()
    IL_0101:  ret
  } // end of method FurnaceBlock::Initialize

  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method FurnaceBlock::IsFaceTransparent

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
    IL_0009:  ldfld      class Game.BlockMesh[] Game.FurnaceBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_003c

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.FurnaceBlock::m_blockMeshesByData
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
  } // end of method FurnaceBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.FurnaceBlock::m_standaloneBlockMesh
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
  } // end of method FurnaceBlock::DrawBlock

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       203 (0xcb)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Matrix V_5,
             valuetype Game.BlockPlacementData V_6)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0015:  stloc.s    V_5
    IL_0017:  ldloca.s   V_5
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
    IL_009c:  ldloca.s   V_6
    IL_009e:  initobj    Game.BlockPlacementData
    IL_00a4:  ldloca.s   V_6
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldc.i4.s   64
    IL_00a9:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_00ae:  ldloc.s    V_4
    IL_00b0:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_00b5:  stfld      int32 Game.BlockPlacementData::Value
    IL_00ba:  ldloca.s   V_6
    IL_00bc:  ldarg.s    raycastResult
    IL_00be:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00c3:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_00c8:  ldloc.s    V_6
    IL_00ca:  ret
  } // end of method FurnaceBlock::GetPlacementValue

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.FurnaceBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.4
    IL_000d:  newarr     Game.BlockMesh
    IL_0012:  stfld      class Game.BlockMesh[] Game.FurnaceBlock::m_blockMeshesByData
    IL_0017:  ldarg.0
    IL_0018:  call       instance void Game.Block::.ctor()
    IL_001d:  ret
  } // end of method FurnaceBlock::.ctor

} // end of class Game.FurnaceBlock