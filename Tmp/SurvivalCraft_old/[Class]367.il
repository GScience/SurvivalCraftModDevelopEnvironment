.class public auto ansi beforefieldinit Game.WhistleBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x000000A0)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       206 (0xce)
    .maxstack  10
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_2)
    IL_0000:  ldstr      "Models/Whistle"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Whistle"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.BlockMesh Game.WhistleBlock::m_standaloneBlockMesh
    IL_0028:  ldloc.0
    IL_0029:  ldstr      "Whistle"
    IL_002e:  ldc.i4.1
    IL_002f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0034:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0039:  stloc.2
    IL_003a:  ldloca.s   V_2
    IL_003c:  ldc.i4.0
    IL_003d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0042:  ldloc.1
    IL_0043:  ldc.r4     0.0
    IL_0048:  ldc.r4     -3.9999999e-002
    IL_004d:  ldc.r4     0.0
    IL_0052:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0057:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_005c:  ldc.i4.0
    IL_005d:  ldc.i4.0
    IL_005e:  ldc.i4.0
    IL_005f:  ldc.i4.0
    IL_0060:  ldc.i4     0xff
    IL_0065:  ldc.i4     0xff
    IL_006a:  ldc.i4     0xff
    IL_006f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0074:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.BlockMesh Game.WhistleBlock::m_standaloneBlockMesh
    IL_007f:  ldloc.0
    IL_0080:  ldstr      "Whistle"
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_008b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0090:  stloc.2
    IL_0091:  ldloca.s   V_2
    IL_0093:  ldc.i4.0
    IL_0094:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0099:  ldloc.1
    IL_009a:  ldc.r4     0.0
    IL_009f:  ldc.r4     -3.9999999e-002
    IL_00a4:  ldc.r4     0.0
    IL_00a9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00ae:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b3:  ldc.i4.0
    IL_00b4:  ldc.i4.1
    IL_00b5:  ldc.i4.0
    IL_00b6:  ldc.i4.0
    IL_00b7:  ldc.i4.s   64
    IL_00b9:  ldc.i4.s   64
    IL_00bb:  ldc.i4.s   64
    IL_00bd:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00c2:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance void Game.Block::Initialize()
    IL_00cd:  ret
  } // end of method WhistleBlock::Initialize

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
  } // end of method WhistleBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.WhistleBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldc.r4     9.
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
  } // end of method WhistleBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.WhistleBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Block::.ctor()
    IL_0011:  ret
  } // end of method WhistleBlock::.ctor

} // end of class Game.WhistleBlock