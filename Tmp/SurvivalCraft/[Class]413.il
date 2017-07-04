.class public auto ansi beforefieldinit Game.ButtonBlock
       extends Game.MountedElectricElementBlock
{
  .field public static literal int32 Index = int32(0x0000008E)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       401 (0x191)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Matrix V_5,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_6)
    IL_0000:  ldstr      "Models/Button"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Button"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.3
    IL_0024:  br         IL_0139

    IL_0029:  ldloc.3
    IL_002a:  stloc.s    V_4
    IL_002c:  ldloc.3
    IL_002d:  ldc.i4.4
    IL_002e:  bge.s      IL_0088

    IL_0030:  ldc.r4     1.5707964
    IL_0035:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_003a:  ldc.r4     0.0
    IL_003f:  ldc.r4     0.0
    IL_0044:  ldc.r4     -0.5
    IL_0049:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_004e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0053:  ldloc.3
    IL_0054:  conv.r4
    IL_0055:  ldc.r4     3.1415927
    IL_005a:  mul
    IL_005b:  ldc.r4     2.
    IL_0060:  div
    IL_0061:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0066:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_006b:  ldc.r4     0.5
    IL_0070:  ldc.r4     0.5
    IL_0075:  ldc.r4     0.5
    IL_007a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0084:  stloc.s    V_5
    IL_0086:  br.s       IL_00c9

    IL_0088:  ldloc.3
    IL_0089:  ldc.i4.4
    IL_008a:  bne.un.s   IL_00a4

    IL_008c:  ldc.r4     0.5
    IL_0091:  ldc.r4     0.0
    IL_0096:  ldc.r4     0.5
    IL_009b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00a0:  stloc.s    V_5
    IL_00a2:  br.s       IL_00c9

    IL_00a4:  ldc.r4     3.1415927
    IL_00a9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00ae:  ldc.r4     0.5
    IL_00b3:  ldc.r4     1.
    IL_00b8:  ldc.r4     0.5
    IL_00bd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00c2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00c7:  stloc.s    V_5
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.BlockMesh[] Game.ButtonBlock::m_blockMeshesByData
    IL_00cf:  ldloc.s    V_4
    IL_00d1:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00d6:  stelem.ref
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.BlockMesh[] Game.ButtonBlock::m_blockMeshesByData
    IL_00dd:  ldloc.s    V_4
    IL_00df:  ldelem.ref
    IL_00e0:  ldloc.0
    IL_00e1:  ldstr      "Button"
    IL_00e6:  ldc.i4.1
    IL_00e7:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00ec:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00f1:  stloc.s    V_6
    IL_00f3:  ldloca.s   V_6
    IL_00f5:  ldc.i4.0
    IL_00f6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00fb:  ldloc.1
    IL_00fc:  ldloc.s    V_5
    IL_00fe:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0103:  ldc.i4.0
    IL_0104:  ldc.i4.0
    IL_0105:  ldc.i4.0
    IL_0106:  ldc.i4.0
    IL_0107:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_010c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0111:  ldarg.0
    IL_0112:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.ButtonBlock::m_collisionBoxesByData
    IL_0117:  ldloc.s    V_4
    IL_0119:  ldc.i4.1
    IL_011a:  newarr     [Engine]Engine.BoundingBox
    IL_011f:  dup
    IL_0120:  ldc.i4.0
    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.BlockMesh[] Game.ButtonBlock::m_blockMeshesByData
    IL_0127:  ldloc.s    V_4
    IL_0129:  ldelem.ref
    IL_012a:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_012f:  stelem     [Engine]Engine.BoundingBox
    IL_0134:  stelem.ref
    IL_0135:  ldloc.3
    IL_0136:  ldc.i4.1
    IL_0137:  add
    IL_0138:  stloc.3
    IL_0139:  ldloc.3
    IL_013a:  ldc.i4.6
    IL_013b:  blt        IL_0029

    IL_0140:  ldc.r4     -1.5707964
    IL_0145:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_014a:  ldc.r4     1.5707964
    IL_014f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0154:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0159:  stloc.2
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class Game.BlockMesh Game.ButtonBlock::m_standaloneBlockMesh
    IL_0160:  ldloc.0
    IL_0161:  ldstr      "Button"
    IL_0166:  ldc.i4.1
    IL_0167:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_016c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0171:  stloc.s    V_6
    IL_0173:  ldloca.s   V_6
    IL_0175:  ldc.i4.0
    IL_0176:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_017b:  ldloc.1
    IL_017c:  ldloc.2
    IL_017d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0182:  ldc.i4.0
    IL_0183:  ldc.i4.0
    IL_0184:  ldc.i4.0
    IL_0185:  ldc.i4.0
    IL_0186:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_018b:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0190:  ret
  } // end of method ButtonBlock::Initialize

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldc.i4.7
    IL_0007:  and
    IL_0008:  ret
  } // end of method ButtonBlock::GetFace

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  3
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldarg.3
    IL_000b:  ldarg.s    raycastResult
    IL_000d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0012:  ldfld      int32 Game.CellFace::Face
    IL_0017:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_001c:  stfld      int32 Game.BlockPlacementData::Value
    IL_0021:  ldloca.s   V_0
    IL_0023:  ldarg.s    raycastResult
    IL_0025:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_002a:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_002f:  ldloc.0
    IL_0030:  ret
  } // end of method ButtonBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.ButtonBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  blt.s      IL_0014

    IL_0012:  ldnull
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.ButtonBlock::m_collisionBoxesByData
    IL_001a:  ldloc.0
    IL_001b:  ldelem.ref
    IL_001c:  ret
  } // end of method ButtonBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.ButtonBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_005f

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.ButtonBlock::m_blockMeshesByData
    IL_0020:  ldloc.0
    IL_0021:  ldelem.ref
    IL_0022:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0027:  ldloca.s   V_1
    IL_0029:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_002f:  ldloc.1
    IL_0030:  ldarg.2
    IL_0031:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0036:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_003b:  ldarg.1
    IL_003c:  ldarg.3
    IL_003d:  ldarg.s    x
    IL_003f:  ldarg.s    y
    IL_0041:  ldarg.s    z
    IL_0043:  ldarg.0
    IL_0044:  ldarg.3
    IL_0045:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_004a:  ldc.r4     0.25
    IL_004f:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0054:  ldarg.2
    IL_0055:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_005a:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_005f:  ret
  } // end of method ButtonBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.ButtonBlock::m_standaloneBlockMesh
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
  } // end of method ButtonBlock::DrawBlock

  .method public hidebysig virtual instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  ldarg.0
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_000d:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0012:  newobj     instance void Game.ButtonElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                         valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method ButtonBlock::CreateElectricElement

  .method public hidebysig virtual instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.3
    IL_0009:  ldloc.0
    IL_000a:  bne.un.s   IL_0026

    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  ldarg.s    connectorFace
    IL_0010:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0015:  stloc.1
    IL_0016:  ldloca.s   V_1
    IL_0018:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_001d:  brfalse.s  IL_0026

    IL_001f:  ldc.i4.1
    IL_0020:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0025:  ret

    IL_0026:  ldloca.s   V_2
    IL_0028:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_002e:  ldloc.2
    IL_002f:  ret
  } // end of method ButtonBlock::GetConnectorType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.ButtonBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.6
    IL_000d:  newarr     Game.BlockMesh
    IL_0012:  stfld      class Game.BlockMesh[] Game.ButtonBlock::m_blockMeshesByData
    IL_0017:  ldarg.0
    IL_0018:  ldc.i4.6
    IL_0019:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_001e:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.ButtonBlock::m_collisionBoxesByData
    IL_0023:  ldarg.0
    IL_0024:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_0029:  ret
  } // end of method ButtonBlock::.ctor

} // end of class Game.ButtonBlock