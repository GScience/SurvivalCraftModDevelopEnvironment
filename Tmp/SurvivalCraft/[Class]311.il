.class public abstract auto ansi beforefieldinit Game.FoodBlock
       extends Game.Block
{
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private string m_modelName
  .field private valuetype [Engine]Engine.Matrix m_tcTransform
  .field private valuetype [Engine]Engine.Color m_color
  .field private int32 m_rottenValue
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(string modelName,
                               valuetype [Engine]Engine.Matrix tcTransform,
                               valuetype [Engine]Engine.Color color,
                               int32 rottenValue) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.FoodBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Block::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      string Game.FoodBlock::m_modelName
    IL_0018:  ldarg.0
    IL_0019:  ldarg.2
    IL_001a:  stfld      valuetype [Engine]Engine.Matrix Game.FoodBlock::m_tcTransform
    IL_001f:  ldarg.0
    IL_0020:  ldarg.3
    IL_0021:  stfld      valuetype [Engine]Engine.Color Game.FoodBlock::m_color
    IL_0026:  ldarg.0
    IL_0027:  ldarg.s    rottenValue
    IL_0029:  stfld      int32 Game.FoodBlock::m_rottenValue
    IL_002e:  ret
  } // end of method FoodBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.FoodBlock::m_modelName
    IL_0006:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_0012:  stloc.2
    IL_0013:  ldloca.s   V_2
    IL_0015:  ldc.i4.0
    IL_0016:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::get_Item(int32)
    IL_001b:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0020:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0025:  stloc.1
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.BlockMesh Game.FoodBlock::m_standaloneBlockMesh
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_0032:  stloc.2
    IL_0033:  ldloca.s   V_2
    IL_0035:  ldc.i4.0
    IL_0036:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::get_Item(int32)
    IL_003b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0040:  stloc.3
    IL_0041:  ldloca.s   V_3
    IL_0043:  ldc.i4.0
    IL_0044:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0049:  ldloc.1
    IL_004a:  ldc.i4.0
    IL_004b:  ldc.i4.0
    IL_004c:  ldc.i4.0
    IL_004d:  ldc.i4.0
    IL_004e:  ldarg.0
    IL_004f:  ldfld      valuetype [Engine]Engine.Color Game.FoodBlock::m_color
    IL_0054:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.BlockMesh Game.FoodBlock::m_standaloneBlockMesh
    IL_005f:  ldarg.0
    IL_0060:  ldfld      valuetype [Engine]Engine.Matrix Game.FoodBlock::m_tcTransform
    IL_0065:  ldc.i4.m1
    IL_0066:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_006b:  ldarg.0
    IL_006c:  call       instance void Game.Block::Initialize()
    IL_0071:  ret
  } // end of method FoodBlock::Initialize

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
  } // end of method FoodBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.FoodBlock::m_standaloneBlockMesh
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
  } // end of method FoodBlock::DrawBlock

  .method public hidebysig virtual instance int32 
          GetDamageDestructionValue(int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.FoodBlock::m_rottenValue
    IL_0006:  ret
  } // end of method FoodBlock::GetDamageDestructionValue

} // end of class Game.FoodBlock