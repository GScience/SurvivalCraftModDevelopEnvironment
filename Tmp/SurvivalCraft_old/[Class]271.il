.class public abstract auto ansi beforefieldinit Game.GunpowderKegBlock
       extends Game.Block
       implements Game.IElectricElementBlock
{
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh m_blockMesh
  .field private valuetype [Engine]Engine.BoundingBox[] m_collisionBoxes
  .field private string m_modelName
  .field private bool m_isIncendiary
  .field private valuetype [Engine]Engine.Vector3 '<FuseOffset>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string modelName,
                               bool isIncendiary) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.GunpowderKegBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.GunpowderKegBlock::m_blockMesh
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.Block::.ctor()
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  stfld      string Game.GunpowderKegBlock::m_modelName
    IL_0023:  ldarg.0
    IL_0024:  ldarg.2
    IL_0025:  stfld      bool Game.GunpowderKegBlock::m_isIncendiary
    IL_002a:  ret
  } // end of method GunpowderKegBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       367 (0x16f)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             class Game.BlockMesh V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.GunpowderKegBlock::m_modelName
    IL_0006:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldstr      "Keg"
    IL_0012:  ldc.i4.1
    IL_0013:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0018:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001d:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0022:  stloc.1
    IL_0023:  ldloc.0
    IL_0024:  ldstr      "Fuse"
    IL_0029:  ldc.i4.1
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002f:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0034:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0039:  stloc.2
    IL_003a:  ldarg.0
    IL_003b:  ldloca.s   V_2
    IL_003d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0042:  ldc.r4     0.5
    IL_0047:  ldc.r4     0.0
    IL_004c:  ldc.r4     0.5
    IL_0051:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0056:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005b:  call       instance void Game.GunpowderKegBlock::set_FuseOffset(valuetype [Engine]Engine.Vector3)
    IL_0060:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0065:  stloc.3
    IL_0066:  ldloc.3
    IL_0067:  ldloc.0
    IL_0068:  ldstr      "Keg"
    IL_006d:  ldc.i4.1
    IL_006e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0073:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0078:  stloc.s    V_4
    IL_007a:  ldloca.s   V_4
    IL_007c:  ldc.i4.0
    IL_007d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0082:  ldloc.1
    IL_0083:  ldc.r4     0.5
    IL_0088:  ldc.r4     0.0
    IL_008d:  ldc.r4     0.5
    IL_0092:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0097:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_009c:  ldc.i4.0
    IL_009d:  ldc.i4.0
    IL_009e:  ldc.i4.0
    IL_009f:  ldc.i4.0
    IL_00a0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00a5:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.BlockMesh Game.GunpowderKegBlock::m_blockMesh
    IL_00b0:  ldloc.3
    IL_00b1:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      bool Game.GunpowderKegBlock::m_isIncendiary
    IL_00bc:  brfalse.s  IL_00de

    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class Game.BlockMesh Game.GunpowderKegBlock::m_blockMesh
    IL_00c4:  ldc.r4     -0.25
    IL_00c9:  ldc.r4     0.0
    IL_00ce:  ldc.r4     0.0
    IL_00d3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d8:  ldc.i4.m1
    IL_00d9:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_00de:  ldarg.0
    IL_00df:  ldc.i4.1
    IL_00e0:  newarr     [Engine]Engine.BoundingBox
    IL_00e5:  dup
    IL_00e6:  ldc.i4.0
    IL_00e7:  ldloc.3
    IL_00e8:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_00ed:  stelem     [Engine]Engine.BoundingBox
    IL_00f2:  stfld      valuetype [Engine]Engine.BoundingBox[] Game.GunpowderKegBlock::m_collisionBoxes
    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class Game.BlockMesh Game.GunpowderKegBlock::m_standaloneBlockMesh
    IL_00fd:  ldloc.0
    IL_00fe:  ldstr      "Keg"
    IL_0103:  ldc.i4.1
    IL_0104:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0109:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_010e:  stloc.s    V_4
    IL_0110:  ldloca.s   V_4
    IL_0112:  ldc.i4.0
    IL_0113:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0118:  ldloc.1
    IL_0119:  ldc.r4     0.0
    IL_011e:  ldc.r4     -0.5
    IL_0123:  ldc.r4     0.0
    IL_0128:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_012d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0132:  ldc.i4.0
    IL_0133:  ldc.i4.0
    IL_0134:  ldc.i4.0
    IL_0135:  ldc.i4.0
    IL_0136:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_013b:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0140:  ldarg.0
    IL_0141:  ldfld      bool Game.GunpowderKegBlock::m_isIncendiary
    IL_0146:  brfalse.s  IL_0168

    IL_0148:  ldarg.0
    IL_0149:  ldfld      class Game.BlockMesh Game.GunpowderKegBlock::m_standaloneBlockMesh
    IL_014e:  ldc.r4     -0.25
    IL_0153:  ldc.r4     0.0
    IL_0158:  ldc.r4     0.0
    IL_015d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0162:  ldc.i4.m1
    IL_0163:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0168:  ldarg.0
    IL_0169:  call       instance void Game.Block::Initialize()
    IL_016e:  ret
  } // end of method GunpowderKegBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  9
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldarg.s    x
    IL_0004:  ldarg.s    y
    IL_0006:  ldarg.s    z
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh Game.GunpowderKegBlock::m_blockMesh
    IL_000e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0013:  ldloca.s   V_0
    IL_0015:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_001b:  ldloc.0
    IL_001c:  ldarg.2
    IL_001d:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0022:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0027:  ldarg.1
    IL_0028:  ldarg.3
    IL_0029:  ldarg.s    x
    IL_002b:  ldarg.s    y
    IL_002d:  ldarg.s    z
    IL_002f:  ldc.i4.4
    IL_0030:  ldc.r4     0.25
    IL_0035:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_003a:  ldarg.2
    IL_003b:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0040:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0045:  ret
  } // end of method GunpowderKegBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.GunpowderKegBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    matrix
    IL_000a:  ldarg.s    environmentData
    IL_000c:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0011:  ret
  } // end of method GunpowderKegBlock::DrawBlock

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.GunpowderKegBlock::m_collisionBoxes
    IL_0006:  ret
  } // end of method GunpowderKegBlock::GetCustomCollisionBoxes

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_FuseOffset() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.GunpowderKegBlock::'<FuseOffset>k__BackingField'
    IL_0006:  ret
  } // end of method GunpowderKegBlock::get_FuseOffset

  .method private hidebysig specialname instance void 
          set_FuseOffset(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.GunpowderKegBlock::'<FuseOffset>k__BackingField'
    IL_0007:  ret
  } // end of method GunpowderKegBlock::set_FuseOffset

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  ldc.i4.4
    IL_0007:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_000c:  newobj     instance void Game.GunpowderKegElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                               valuetype Game.CellFace)
    IL_0011:  ret
  } // end of method GunpowderKegBlock::CreateElectricElement

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_0)
    IL_0000:  ldarg.3
    IL_0001:  ldc.i4.4
    IL_0002:  bne.un.s   IL_000b

    IL_0004:  ldc.i4.0
    IL_0005:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_000a:  ret

    IL_000b:  ldloca.s   V_0
    IL_000d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_0013:  ldloc.0
    IL_0014:  ret
  } // end of method GunpowderKegBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method GunpowderKegBlock::GetConnectionMask

  .property instance valuetype [Engine]Engine.Vector3
          FuseOffset()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.GunpowderKegBlock::get_FuseOffset()
    .set instance void Game.GunpowderKegBlock::set_FuseOffset(valuetype [Engine]Engine.Vector3)
  } // end of property GunpowderKegBlock::FuseOffset
} // end of class Game.GunpowderKegBlock