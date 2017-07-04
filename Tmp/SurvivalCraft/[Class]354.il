.class public auto ansi beforefieldinit Game.WaterBucketBlock
       extends Game.BucketBlock
{
  .field public static literal int32 Index = int32(0x0000005B)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       294 (0x126)
    .maxstack  11
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_3)
    IL_0000:  ldstr      "Models/FullBucket"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Bucket"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Contents"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.BlockMesh Game.WaterBucketBlock::m_standaloneBlockMesh
    IL_003f:  ldloc.0
    IL_0040:  ldstr      "Contents"
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_004b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0050:  stloc.3
    IL_0051:  ldloca.s   V_3
    IL_0053:  ldc.i4.0
    IL_0054:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0059:  ldloc.2
    IL_005a:  ldc.r4     180.
    IL_005f:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0064:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0069:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_006e:  ldc.r4     0.0
    IL_0073:  ldc.r4     -0.30000001
    IL_0078:  ldc.r4     0.0
    IL_007d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0082:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0087:  ldc.i4.0
    IL_0088:  ldc.i4.0
    IL_0089:  ldc.i4.0
    IL_008a:  ldc.i4.0
    IL_008b:  ldc.i4.s   32
    IL_008d:  ldc.i4.s   80
    IL_008f:  ldc.i4     0xe0
    IL_0094:  ldc.i4     0xff
    IL_0099:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_009e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.BlockMesh Game.WaterBucketBlock::m_standaloneBlockMesh
    IL_00a9:  ldc.r4     0.8125
    IL_00ae:  ldc.r4     0.6875
    IL_00b3:  ldc.r4     0.0
    IL_00b8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00bd:  ldc.i4.m1
    IL_00be:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.BlockMesh Game.WaterBucketBlock::m_standaloneBlockMesh
    IL_00c9:  ldloc.0
    IL_00ca:  ldstr      "Bucket"
    IL_00cf:  ldc.i4.1
    IL_00d0:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00d5:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00da:  stloc.3
    IL_00db:  ldloca.s   V_3
    IL_00dd:  ldc.i4.0
    IL_00de:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00e3:  ldloc.1
    IL_00e4:  ldc.r4     180.
    IL_00e9:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00ee:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00f3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f8:  ldc.r4     0.0
    IL_00fd:  ldc.r4     -0.30000001
    IL_0102:  ldc.r4     0.0
    IL_0107:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_010c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0111:  ldc.i4.0
    IL_0112:  ldc.i4.0
    IL_0113:  ldc.i4.0
    IL_0114:  ldc.i4.0
    IL_0115:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_011a:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_011f:  ldarg.0
    IL_0120:  call       instance void Game.Block::Initialize()
    IL_0125:  ret
  } // end of method WaterBucketBlock::Initialize

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
    IL_0002:  ldfld      class Game.BlockMesh Game.WaterBucketBlock::m_standaloneBlockMesh
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
  } // end of method WaterBucketBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.WaterBucketBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.BucketBlock::.ctor()
    IL_0011:  ret
  } // end of method WaterBucketBlock::.ctor

} // end of class Game.WaterBucketBlock