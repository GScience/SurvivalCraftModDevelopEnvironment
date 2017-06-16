.class public auto ansi beforefieldinit Game.GrassTrapBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x00000057)
  .field private class Game.BlockMesh m_blockMesh
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private valuetype [Engine]Engine.BoundingBox[] m_collisionBoxes
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       227 (0xe3)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Color V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_3)
    IL_0000:  ldstr      "Models/GrassTrap"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "GrassTrap"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0027:  ldc.i4.8
    IL_0028:  ldc.i4.s   15
    IL_002a:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_002f:  stloc.2
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.BlockMesh Game.GrassTrapBlock::m_blockMesh
    IL_0036:  ldloc.0
    IL_0037:  ldstr      "GrassTrap"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0042:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0047:  stloc.3
    IL_0048:  ldloca.s   V_3
    IL_004a:  ldc.i4.0
    IL_004b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0050:  ldloc.1
    IL_0051:  ldc.r4     0.5
    IL_0056:  ldc.r4     0.75
    IL_005b:  ldc.r4     0.5
    IL_0060:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0065:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_006a:  ldc.i4.0
    IL_006b:  ldc.i4.0
    IL_006c:  ldc.i4.0
    IL_006d:  ldc.i4.0
    IL_006e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0073:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.BlockMesh Game.GrassTrapBlock::m_standaloneBlockMesh
    IL_007e:  ldloc.0
    IL_007f:  ldstr      "GrassTrap"
    IL_0084:  ldc.i4.1
    IL_0085:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_008a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_008f:  stloc.3
    IL_0090:  ldloca.s   V_3
    IL_0092:  ldc.i4.0
    IL_0093:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0098:  ldloc.1
    IL_0099:  ldc.i4.0
    IL_009a:  ldc.i4.0
    IL_009b:  ldc.i4.0
    IL_009c:  ldc.i4.0
    IL_009d:  ldloc.2
    IL_009e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.GrassTrapBlock::m_collisionBoxes
    IL_00a9:  ldc.i4.0
    IL_00aa:  ldc.r4     0.0
    IL_00af:  ldc.r4     0.75
    IL_00b4:  ldc.r4     0.0
    IL_00b9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00be:  ldc.r4     1.
    IL_00c3:  ldc.r4     0.94999999
    IL_00c8:  ldc.r4     1.
    IL_00cd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d2:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_00d7:  stelem     [Engine]Engine.BoundingBox
    IL_00dc:  ldarg.0
    IL_00dd:  call       instance void Game.Block::Initialize()
    IL_00e2:  ret
  } // end of method GrassTrapBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  10
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldarg.s    x
    IL_0004:  ldarg.s    y
    IL_0006:  ldarg.s    z
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh Game.GrassTrapBlock::m_blockMesh
    IL_000e:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0013:  ldarg.1
    IL_0014:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0019:  ldarg.s    x
    IL_001b:  ldarg.s    z
    IL_001d:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.TerrainData,
                                                                                             int32,
                                                                                             int32)
    IL_0022:  ldloca.s   V_0
    IL_0024:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_002a:  ldloc.0
    IL_002b:  ldnull
    IL_002c:  ldarg.2
    IL_002d:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0032:  callvirt   instance void Game.BlockGeometryGenerator::GenerateShadedMeshVertices(class Game.Block,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class Game.BlockMesh,
                                                                                               valuetype [Engine]Engine.Color,
                                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                               int32[],
                                                                                               class Game.TerrainGeometrySubset)
    IL_0037:  ret
  } // end of method GrassTrapBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.GrassTrapBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    matrix
    IL_000a:  ldarg.s    environmentData
    IL_000c:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0011:  ret
  } // end of method GrassTrapBlock::DrawBlock

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain terrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  conv.i4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0018:  conv.i4
    IL_0019:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.TerrainData,
                                                                                             int32,
                                                                                             int32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldarg.2
    IL_0021:  ldarg.s    strength
    IL_0023:  ldarg.0
    IL_0024:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0029:  ldloc.0
    IL_002a:  ldarg.0
    IL_002b:  ldc.i4.4
    IL_002c:  ldarg.3
    IL_002d:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0032:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0037:  ret
  } // end of method GrassTrapBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.GrassTrapBlock::m_collisionBoxes
    IL_0006:  ret
  } // end of method GrassTrapBlock::GetCustomCollisionBoxes

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.GrassTrapBlock::m_blockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.GrassTrapBlock::m_standaloneBlockMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  newarr     [Engine]Engine.BoundingBox
    IL_001d:  stfld      valuetype [Engine]Engine.BoundingBox[] Game.GrassTrapBlock::m_collisionBoxes
    IL_0022:  ldarg.0
    IL_0023:  call       instance void Game.Block::.ctor()
    IL_0028:  ret
  } // end of method GrassTrapBlock::.ctor

} // end of class Game.GrassTrapBlock