.class public auto ansi beforefieldinit Game.CompassBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x00000075)
  .field private class Game.BlockMesh m_caseMesh
  .field private class Game.BlockMesh m_pointerMesh
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       208 (0xd0)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_3)
    IL_0000:  ldstr      "Models/Compass"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Case"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Pointer"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.BlockMesh Game.CompassBlock::m_caseMesh
    IL_003f:  ldloc.0
    IL_0040:  ldstr      "Case"
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_004b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0050:  stloc.3
    IL_0051:  ldloca.s   V_3
    IL_0053:  ldc.i4.0
    IL_0054:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0059:  ldloc.1
    IL_005a:  ldc.r4     0.0
    IL_005f:  ldc.r4     -9.9999998e-003
    IL_0064:  ldc.r4     0.0
    IL_0069:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_006e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0073:  ldc.i4.0
    IL_0074:  ldc.i4.0
    IL_0075:  ldc.i4.1
    IL_0076:  ldc.i4.0
    IL_0077:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_007c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.BlockMesh Game.CompassBlock::m_pointerMesh
    IL_0087:  ldloc.0
    IL_0088:  ldstr      "Pointer"
    IL_008d:  ldc.i4.1
    IL_008e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0093:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0098:  stloc.3
    IL_0099:  ldloca.s   V_3
    IL_009b:  ldc.i4.0
    IL_009c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00a1:  ldloc.2
    IL_00a2:  ldc.r4     0.0
    IL_00a7:  ldc.r4     -9.9999998e-003
    IL_00ac:  ldc.r4     0.0
    IL_00b1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00b6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00bb:  ldc.i4.0
    IL_00bc:  ldc.i4.0
    IL_00bd:  ldc.i4.0
    IL_00be:  ldc.i4.0
    IL_00bf:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00c4:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00c9:  ldarg.0
    IL_00ca:  call       instance void Game.Block::Initialize()
    IL_00cf:  ret
  } // end of method CompassBlock::Initialize

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
  } // end of method CompassBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       208 (0xd0)
    .maxstack  6
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector2 V_7)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.s    environmentData
    IL_0008:  brfalse.s  IL_0082

    IL_000a:  ldarg.s    environmentData
    IL_000c:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0011:  brfalse.s  IL_0082

    IL_0013:  ldarg.s    environmentData
    IL_0015:  ldflda     valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
    IL_001a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_001f:  stloc.3
    IL_0020:  ldarg.s    environmentData
    IL_0022:  ldflda     valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
    IL_0027:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_002c:  stloc.s    V_4
    IL_002e:  ldarg.s    environmentData
    IL_0030:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0035:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003a:  ldc.i4.1
    IL_003b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMagnetBlockBehavior>(bool)
    IL_0040:  ldloc.s    V_4
    IL_0042:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemMagnetBlockBehavior::FindNearestCompassTarget(valuetype [Engine]Engine.Vector3)
    IL_0047:  stloc.s    V_5
    IL_0049:  ldloc.s    V_4
    IL_004b:  ldloc.s    V_5
    IL_004d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0052:  stloc.s    V_6
    IL_0054:  ldloca.s   V_7
    IL_0056:  ldloc.3
    IL_0057:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_005c:  ldloc.3
    IL_005d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0062:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0067:  ldloc.s    V_6
    IL_0069:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_006e:  ldloc.s    V_6
    IL_0070:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0075:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_007a:  ldloc.s    V_7
    IL_007c:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_0081:  stloc.0
    IL_0082:  ldarg.s    matrix
    IL_0084:  ldobj      [Engine]Engine.Matrix
    IL_0089:  stloc.1
    IL_008a:  ldloc.0
    IL_008b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0090:  ldarg.s    matrix
    IL_0092:  ldobj      [Engine]Engine.Matrix
    IL_0097:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_009c:  stloc.2
    IL_009d:  ldarg.1
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class Game.BlockMesh Game.CompassBlock::m_caseMesh
    IL_00a4:  ldarg.3
    IL_00a5:  ldarg.s    size
    IL_00a7:  ldc.r4     6.
    IL_00ac:  mul
    IL_00ad:  ldloca.s   V_1
    IL_00af:  ldarg.s    environmentData
    IL_00b1:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_00b6:  ldarg.1
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      class Game.BlockMesh Game.CompassBlock::m_pointerMesh
    IL_00bd:  ldarg.3
    IL_00be:  ldarg.s    size
    IL_00c0:  ldc.r4     6.
    IL_00c5:  mul
    IL_00c6:  ldloca.s   V_2
    IL_00c8:  ldarg.s    environmentData
    IL_00ca:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_00cf:  ret
  } // end of method CompassBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.CompassBlock::m_caseMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.CompassBlock::m_pointerMesh
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.Block::.ctor()
    IL_001c:  ret
  } // end of method CompassBlock::.ctor

} // end of class Game.CompassBlock