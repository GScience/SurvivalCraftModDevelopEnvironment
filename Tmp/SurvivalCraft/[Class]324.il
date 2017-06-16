.class public abstract auto ansi beforefieldinit Game.HammerBlock
       extends Game.Block
{
  .field private int32 m_handleTextureSlot
  .field private int32 m_headTextureSlot
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(int32 handleTextureSlot,
                               int32 headTextureSlot) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.HammerBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Block::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      int32 Game.HammerBlock::m_handleTextureSlot
    IL_0018:  ldarg.0
    IL_0019:  ldarg.2
    IL_001a:  stfld      int32 Game.HammerBlock::m_headTextureSlot
    IL_001f:  ret
  } // end of method HammerBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       338 (0x152)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             class Game.BlockMesh V_3,
             class Game.BlockMesh V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_5)
    IL_0000:  ldstr      "Models/Hammer"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Handle"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Head"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  newobj     instance void Game.BlockMesh::.ctor()
    IL_003e:  stloc.3
    IL_003f:  ldloc.3
    IL_0040:  ldloc.0
    IL_0041:  ldstr      "Handle"
    IL_0046:  ldc.i4.1
    IL_0047:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_004c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0051:  stloc.s    V_5
    IL_0053:  ldloca.s   V_5
    IL_0055:  ldc.i4.0
    IL_0056:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_005b:  ldloc.1
    IL_005c:  ldc.r4     0.0
    IL_0061:  ldc.r4     -0.5
    IL_0066:  ldc.r4     0.0
    IL_006b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0070:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0075:  ldc.i4.0
    IL_0076:  ldc.i4.0
    IL_0077:  ldc.i4.0
    IL_0078:  ldc.i4.0
    IL_0079:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_007e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0083:  ldloc.3
    IL_0084:  ldarg.0
    IL_0085:  ldfld      int32 Game.HammerBlock::m_handleTextureSlot
    IL_008a:  ldc.i4.s   16
    IL_008c:  rem
    IL_008d:  conv.r4
    IL_008e:  ldc.r4     16.
    IL_0093:  div
    IL_0094:  ldarg.0
    IL_0095:  ldfld      int32 Game.HammerBlock::m_handleTextureSlot
    IL_009a:  ldc.i4.s   16
    IL_009c:  div
    IL_009d:  conv.r4
    IL_009e:  ldc.r4     16.
    IL_00a3:  div
    IL_00a4:  ldc.r4     0.0
    IL_00a9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00ae:  ldc.i4.m1
    IL_00af:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_00b4:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00b9:  stloc.s    V_4
    IL_00bb:  ldloc.s    V_4
    IL_00bd:  ldloc.0
    IL_00be:  ldstr      "Head"
    IL_00c3:  ldc.i4.1
    IL_00c4:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00c9:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00ce:  stloc.s    V_5
    IL_00d0:  ldloca.s   V_5
    IL_00d2:  ldc.i4.0
    IL_00d3:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00d8:  ldloc.2
    IL_00d9:  ldc.r4     0.0
    IL_00de:  ldc.r4     -0.5
    IL_00e3:  ldc.r4     0.0
    IL_00e8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00ed:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f2:  ldc.i4.0
    IL_00f3:  ldc.i4.0
    IL_00f4:  ldc.i4.0
    IL_00f5:  ldc.i4.0
    IL_00f6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00fb:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0100:  ldloc.s    V_4
    IL_0102:  ldarg.0
    IL_0103:  ldfld      int32 Game.HammerBlock::m_headTextureSlot
    IL_0108:  ldc.i4.s   16
    IL_010a:  rem
    IL_010b:  conv.r4
    IL_010c:  ldc.r4     16.
    IL_0111:  div
    IL_0112:  ldarg.0
    IL_0113:  ldfld      int32 Game.HammerBlock::m_headTextureSlot
    IL_0118:  ldc.i4.s   16
    IL_011a:  div
    IL_011b:  conv.r4
    IL_011c:  ldc.r4     16.
    IL_0121:  div
    IL_0122:  ldc.r4     0.0
    IL_0127:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_012c:  ldc.i4.m1
    IL_012d:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.BlockMesh Game.HammerBlock::m_standaloneBlockMesh
    IL_0138:  ldloc.3
    IL_0139:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_013e:  ldarg.0
    IL_013f:  ldfld      class Game.BlockMesh Game.HammerBlock::m_standaloneBlockMesh
    IL_0144:  ldloc.s    V_4
    IL_0146:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_014b:  ldarg.0
    IL_014c:  call       instance void Game.Block::Initialize()
    IL_0151:  ret
  } // end of method HammerBlock::Initialize

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
  } // end of method HammerBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.HammerBlock::m_standaloneBlockMesh
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
  } // end of method HammerBlock::DrawBlock

} // end of class Game.HammerBlock