.class public auto ansi beforefieldinit Game.JackOLanternBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x00000084)
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private valuetype [Engine]Engine.BoundingBox[] m_collisionBoxes
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       452 (0x1c4)
    .maxstack  10
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             int32 V_2,
             float32 V_3,
             class Game.BlockMesh V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_5)
    IL_0000:  ldstr      "Models/Pumpkins"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "JackOLantern"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.2
    IL_0024:  br         IL_00fc

    IL_0029:  ldloc.2
    IL_002a:  conv.r4
    IL_002b:  ldc.r4     3.1415927
    IL_0030:  mul
    IL_0031:  ldc.r4     2.
    IL_0036:  div
    IL_0037:  stloc.3
    IL_0038:  newobj     instance void Game.BlockMesh::.ctor()
    IL_003d:  stloc.s    V_4
    IL_003f:  ldloc.s    V_4
    IL_0041:  ldloc.0
    IL_0042:  ldstr      "JackOLantern"
    IL_0047:  ldc.i4.1
    IL_0048:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_004d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0052:  stloc.s    V_5
    IL_0054:  ldloca.s   V_5
    IL_0056:  ldc.i4.0
    IL_0057:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_005c:  ldloc.1
    IL_005d:  ldloc.3
    IL_005e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0063:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0068:  ldc.r4     0.5
    IL_006d:  ldc.r4     0.0
    IL_0072:  ldc.r4     0.5
    IL_0077:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0081:  ldc.i4.0
    IL_0082:  ldc.i4.0
    IL_0083:  ldc.i4.0
    IL_0084:  ldc.i4.0
    IL_0085:  ldc.i4     0xe8
    IL_008a:  ldc.i4     0xe8
    IL_008f:  ldc.i4     0xe8
    IL_0094:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0099:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_009e:  ldloc.s    V_4
    IL_00a0:  ldloc.0
    IL_00a1:  ldstr      "JackOLantern"
    IL_00a6:  ldc.i4.1
    IL_00a7:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00ac:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00b1:  stloc.s    V_5
    IL_00b3:  ldloca.s   V_5
    IL_00b5:  ldc.i4.0
    IL_00b6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00bb:  ldloc.1
    IL_00bc:  ldloc.3
    IL_00bd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00c2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00c7:  ldc.r4     0.5
    IL_00cc:  ldc.r4     0.0
    IL_00d1:  ldc.r4     0.5
    IL_00d6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00db:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e0:  ldc.i4.1
    IL_00e1:  ldc.i4.1
    IL_00e2:  ldc.i4.0
    IL_00e3:  ldc.i4.0
    IL_00e4:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00e9:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class Game.BlockMesh[] Game.JackOLanternBlock::m_blockMeshesByData
    IL_00f4:  ldloc.2
    IL_00f5:  ldloc.s    V_4
    IL_00f7:  stelem.ref
    IL_00f8:  ldloc.2
    IL_00f9:  ldc.i4.1
    IL_00fa:  add
    IL_00fb:  stloc.2
    IL_00fc:  ldloc.2
    IL_00fd:  ldc.i4.4
    IL_00fe:  blt        IL_0029

    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.BlockMesh Game.JackOLanternBlock::m_standaloneBlockMesh
    IL_0109:  ldloc.0
    IL_010a:  ldstr      "JackOLantern"
    IL_010f:  ldc.i4.1
    IL_0110:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0115:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_011a:  stloc.s    V_5
    IL_011c:  ldloca.s   V_5
    IL_011e:  ldc.i4.0
    IL_011f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0124:  ldloc.1
    IL_0125:  ldc.r4     0.0
    IL_012a:  ldc.r4     -0.23
    IL_012f:  ldc.r4     0.0
    IL_0134:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0139:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_013e:  ldc.i4.0
    IL_013f:  ldc.i4.0
    IL_0140:  ldc.i4.0
    IL_0141:  ldc.i4.0
    IL_0142:  ldc.i4     0xe8
    IL_0147:  ldc.i4     0xe8
    IL_014c:  ldc.i4     0xe8
    IL_0151:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0156:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_015b:  ldarg.0
    IL_015c:  ldfld      class Game.BlockMesh Game.JackOLanternBlock::m_standaloneBlockMesh
    IL_0161:  ldloc.0
    IL_0162:  ldstr      "JackOLantern"
    IL_0167:  ldc.i4.1
    IL_0168:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_016d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0172:  stloc.s    V_5
    IL_0174:  ldloca.s   V_5
    IL_0176:  ldc.i4.0
    IL_0177:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_017c:  ldloc.1
    IL_017d:  ldc.r4     0.0
    IL_0182:  ldc.r4     -0.23
    IL_0187:  ldc.r4     0.0
    IL_018c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0191:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0196:  ldc.i4.1
    IL_0197:  ldc.i4.1
    IL_0198:  ldc.i4.0
    IL_0199:  ldc.i4.0
    IL_019a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_019f:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01a4:  ldarg.0
    IL_01a5:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.JackOLanternBlock::m_collisionBoxes
    IL_01aa:  ldc.i4.0
    IL_01ab:  ldarg.0
    IL_01ac:  ldfld      class Game.BlockMesh[] Game.JackOLanternBlock::m_blockMeshesByData
    IL_01b1:  ldc.i4.0
    IL_01b2:  ldelem.ref
    IL_01b3:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_01b8:  stelem     [Engine]Engine.BoundingBox
    IL_01bd:  ldarg.0
    IL_01be:  call       instance void Game.Block::Initialize()
    IL_01c3:  ret
  } // end of method JackOLanternBlock::Initialize

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       206 (0xce)
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

    IL_0066:  ldc.i4.0
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

    IL_0077:  ldc.i4.1
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

    IL_0088:  ldc.i4.2
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

    IL_0099:  ldc.i4.3
    IL_009a:  stloc.s    V_4
    IL_009c:  ldloca.s   V_6
    IL_009e:  initobj    Game.BlockPlacementData
    IL_00a4:  ldloca.s   V_6
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldc.i4     0x84
    IL_00ac:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_00b1:  ldloc.s    V_4
    IL_00b3:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_00b8:  stfld      int32 Game.BlockPlacementData::Value
    IL_00bd:  ldloca.s   V_6
    IL_00bf:  ldarg.s    raycastResult
    IL_00c1:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00c6:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_00cb:  ldloc.s    V_6
    IL_00cd:  ret
  } // end of method JackOLanternBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.JackOLanternBlock::m_collisionBoxes
    IL_0006:  ret
  } // end of method JackOLanternBlock::GetCustomCollisionBoxes

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
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.JackOLanternBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_003b

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.JackOLanternBlock::m_blockMeshesByData
    IL_0020:  ldloc.0
    IL_0021:  ldelem.ref
    IL_0022:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0027:  ldloca.s   V_1
    IL_0029:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_002f:  ldloc.1
    IL_0030:  ldarg.2
    IL_0031:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0036:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_003b:  ret
  } // end of method JackOLanternBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.JackOLanternBlock::m_standaloneBlockMesh
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
  } // end of method JackOLanternBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.JackOLanternBlock::m_blockMeshesByData
    IL_000c:  ldarg.0
    IL_000d:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0012:  stfld      class Game.BlockMesh Game.JackOLanternBlock::m_standaloneBlockMesh
    IL_0017:  ldarg.0
    IL_0018:  ldc.i4.1
    IL_0019:  newarr     [Engine]Engine.BoundingBox
    IL_001e:  stfld      valuetype [Engine]Engine.BoundingBox[] Game.JackOLanternBlock::m_collisionBoxes
    IL_0023:  ldarg.0
    IL_0024:  call       instance void Game.Block::.ctor()
    IL_0029:  ret
  } // end of method JackOLanternBlock::.ctor

} // end of class Game.JackOLanternBlock