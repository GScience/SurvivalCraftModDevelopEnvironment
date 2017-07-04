.class public abstract auto ansi beforefieldinit Game.ChunkBlock
       extends Game.Block
{
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private valuetype [Engine]Engine.Matrix m_transform
  .field private valuetype [Engine]Engine.Matrix m_tcTransform
  .field private valuetype [Engine]Engine.Color m_color
  .field private bool m_smooth
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [Engine]Engine.Matrix transform,
                               valuetype [Engine]Engine.Matrix tcTransform,
                               valuetype [Engine]Engine.Color color,
                               bool smooth) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.ChunkBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Block::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      valuetype [Engine]Engine.Matrix Game.ChunkBlock::m_transform
    IL_0018:  ldarg.0
    IL_0019:  ldarg.2
    IL_001a:  stfld      valuetype [Engine]Engine.Matrix Game.ChunkBlock::m_tcTransform
    IL_001f:  ldarg.0
    IL_0020:  ldarg.3
    IL_0021:  stfld      valuetype [Engine]Engine.Color Game.ChunkBlock::m_color
    IL_0026:  ldarg.0
    IL_0027:  ldarg.s    smooth
    IL_0029:  stfld      bool Game.ChunkBlock::m_smooth
    IL_002e:  ret
  } // end of method ChunkBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       144 (0x90)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ChunkBlock::m_smooth
    IL_0006:  brtrue.s   IL_0014

    IL_0008:  ldstr      "Models/Chunk"
    IL_000d:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_0012:  br.s       IL_001e

    IL_0014:  ldstr      "Models/ChunkSmooth"
    IL_0019:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_001e:  stloc.0
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_0025:  stloc.2
    IL_0026:  ldloca.s   V_2
    IL_0028:  ldc.i4.0
    IL_0029:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::get_Item(int32)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  ldarg.0
    IL_0039:  ldfld      valuetype [Engine]Engine.Matrix Game.ChunkBlock::m_transform
    IL_003e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0043:  stloc.1
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.BlockMesh Game.ChunkBlock::m_standaloneBlockMesh
    IL_004a:  ldloc.0
    IL_004b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_0050:  stloc.2
    IL_0051:  ldloca.s   V_2
    IL_0053:  ldc.i4.0
    IL_0054:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::get_Item(int32)
    IL_0059:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_005e:  stloc.3
    IL_005f:  ldloca.s   V_3
    IL_0061:  ldc.i4.0
    IL_0062:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0067:  ldloc.1
    IL_0068:  ldc.i4.0
    IL_0069:  ldc.i4.0
    IL_006a:  ldc.i4.0
    IL_006b:  ldc.i4.0
    IL_006c:  ldarg.0
    IL_006d:  ldfld      valuetype [Engine]Engine.Color Game.ChunkBlock::m_color
    IL_0072:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.BlockMesh Game.ChunkBlock::m_standaloneBlockMesh
    IL_007d:  ldarg.0
    IL_007e:  ldfld      valuetype [Engine]Engine.Matrix Game.ChunkBlock::m_tcTransform
    IL_0083:  ldc.i4.m1
    IL_0084:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0089:  ldarg.0
    IL_008a:  call       instance void Game.Block::Initialize()
    IL_008f:  ret
  } // end of method ChunkBlock::Initialize

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
  } // end of method ChunkBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.ChunkBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldc.r4     2.
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
  } // end of method ChunkBlock::DrawBlock

} // end of class Game.ChunkBlock