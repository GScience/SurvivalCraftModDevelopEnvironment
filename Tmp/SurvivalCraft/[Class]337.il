.class public auto ansi beforefieldinit Game.HygrometerBlock
       extends Game.Block
       implements Game.IElectricElementBlock
{
  .field public static literal int32 Index = int32(0x00000079)
  .field private class Game.BlockMesh m_caseMesh
  .field private class Game.BlockMesh m_pointerMesh
  .field private valuetype [Engine]Engine.Matrix m_pointerMatrix
  .field private valuetype [Engine]Engine.Matrix m_invPointerMatrix
  .field private valuetype [Engine]Engine.Matrix[] m_matricesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       375 (0x177)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_3,
             int32 V_4)
    IL_0000:  ldstr      "Models/Hygrometer"
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
    IL_003a:  ldloc.2
    IL_003b:  stfld      valuetype [Engine]Engine.Matrix Game.HygrometerBlock::m_pointerMatrix
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  ldfld      valuetype [Engine]Engine.Matrix Game.HygrometerBlock::m_pointerMatrix
    IL_0047:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Invert(valuetype [Engine]Engine.Matrix)
    IL_004c:  stfld      valuetype [Engine]Engine.Matrix Game.HygrometerBlock::m_invPointerMatrix
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.BlockMesh Game.HygrometerBlock::m_caseMesh
    IL_0057:  ldloc.0
    IL_0058:  ldstr      "Case"
    IL_005d:  ldc.i4.1
    IL_005e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0063:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0068:  stloc.3
    IL_0069:  ldloca.s   V_3
    IL_006b:  ldc.i4.0
    IL_006c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0071:  ldloc.1
    IL_0072:  ldc.i4.0
    IL_0073:  ldc.i4.0
    IL_0074:  ldc.i4.1
    IL_0075:  ldc.i4.0
    IL_0076:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_007b:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.BlockMesh Game.HygrometerBlock::m_pointerMesh
    IL_0086:  ldloc.0
    IL_0087:  ldstr      "Pointer"
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0092:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0097:  stloc.3
    IL_0098:  ldloca.s   V_3
    IL_009a:  ldc.i4.0
    IL_009b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00a0:  ldloc.2
    IL_00a1:  ldc.i4.0
    IL_00a2:  ldc.i4.0
    IL_00a3:  ldc.i4.0
    IL_00a4:  ldc.i4.0
    IL_00a5:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00aa:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00af:  ldc.i4.0
    IL_00b0:  stloc.s    V_4
    IL_00b2:  br         IL_0168

    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      valuetype [Engine]Engine.Matrix[] Game.HygrometerBlock::m_matricesByData
    IL_00bd:  ldloc.s    V_4
    IL_00bf:  ldc.r4     5.
    IL_00c4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00c9:  ldc.r4     0.94999999
    IL_00ce:  ldc.r4     0.15000001
    IL_00d3:  ldc.r4     0.5
    IL_00d8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00dd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e2:  ldc.r4     -0.5
    IL_00e7:  ldc.r4     0.0
    IL_00ec:  ldc.r4     -0.5
    IL_00f1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00f6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00fb:  ldloc.s    V_4
    IL_00fd:  ldc.i4.1
    IL_00fe:  add
    IL_00ff:  conv.r4
    IL_0100:  ldc.r4     3.1415927
    IL_0105:  mul
    IL_0106:  ldc.r4     2.
    IL_010b:  div
    IL_010c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0111:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0116:  ldc.r4     0.5
    IL_011b:  ldc.r4     0.0
    IL_0120:  ldc.r4     0.5
    IL_0125:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_012a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_012f:  stelem     [Engine]Engine.Matrix
    IL_0134:  ldarg.0
    IL_0135:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.HygrometerBlock::m_collisionBoxesByData
    IL_013a:  ldloc.s    V_4
    IL_013c:  ldc.i4.1
    IL_013d:  newarr     [Engine]Engine.BoundingBox
    IL_0142:  dup
    IL_0143:  ldc.i4.0
    IL_0144:  ldarg.0
    IL_0145:  ldfld      class Game.BlockMesh Game.HygrometerBlock::m_caseMesh
    IL_014a:  ldarg.0
    IL_014b:  ldfld      valuetype [Engine]Engine.Matrix[] Game.HygrometerBlock::m_matricesByData
    IL_0150:  ldloc.s    V_4
    IL_0152:  ldelem     [Engine]Engine.Matrix
    IL_0157:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox(valuetype [Engine]Engine.Matrix)
    IL_015c:  stelem     [Engine]Engine.BoundingBox
    IL_0161:  stelem.ref
    IL_0162:  ldloc.s    V_4
    IL_0164:  ldc.i4.1
    IL_0165:  add
    IL_0166:  stloc.s    V_4
    IL_0168:  ldloc.s    V_4
    IL_016a:  ldc.i4.4
    IL_016b:  blt        IL_00b7

    IL_0170:  ldarg.0
    IL_0171:  call       instance void Game.Block::Initialize()
    IL_0176:  ret
  } // end of method HygrometerBlock::Initialize

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  6
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    y
    IL_000b:  ldarg.s    z
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.3
    IL_000f:  and
    IL_0010:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0015:  newobj     instance void Game.HygrometerElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                             valuetype Game.CellFace)
    IL_001a:  ret
  } // end of method HygrometerBlock::CreateElectricElement

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
    // 代码大小       28 (0x1c)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  ldc.i4.3
    IL_0007:  and
    IL_0008:  ldarg.3
    IL_0009:  bne.un.s   IL_0012

    IL_000b:  ldc.i4.1
    IL_000c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0011:  ret

    IL_0012:  ldloca.s   V_0
    IL_0014:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_001a:  ldloc.0
    IL_001b:  ret
  } // end of method HygrometerBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method HygrometerBlock::GetConnectionMask

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.HygrometerBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_001b

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.HygrometerBlock::m_collisionBoxesByData
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ret

    IL_001b:  ldnull
    IL_001c:  ret
  } // end of method HygrometerBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       153 (0x99)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype Game.BlockPlacementData V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.s    raycastResult
    IL_0004:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0009:  ldfld      int32 Game.CellFace::Face
    IL_000e:  brtrue.s   IL_001f

    IL_0010:  ldc.i4.0
    IL_0011:  ldc.i4.s   121
    IL_0013:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0018:  ldc.i4.0
    IL_0019:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.s    raycastResult
    IL_0021:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0026:  ldfld      int32 Game.CellFace::Face
    IL_002b:  ldc.i4.1
    IL_002c:  bne.un.s   IL_003d

    IL_002e:  ldc.i4.0
    IL_002f:  ldc.i4.s   121
    IL_0031:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0036:  ldc.i4.1
    IL_0037:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_003c:  stloc.0
    IL_003d:  ldarg.s    raycastResult
    IL_003f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0044:  ldfld      int32 Game.CellFace::Face
    IL_0049:  ldc.i4.2
    IL_004a:  bne.un.s   IL_005b

    IL_004c:  ldc.i4.0
    IL_004d:  ldc.i4.s   121
    IL_004f:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0054:  ldc.i4.2
    IL_0055:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_005a:  stloc.0
    IL_005b:  ldarg.s    raycastResult
    IL_005d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0062:  ldfld      int32 Game.CellFace::Face
    IL_0067:  ldc.i4.3
    IL_0068:  bne.un.s   IL_0079

    IL_006a:  ldc.i4.0
    IL_006b:  ldc.i4.s   121
    IL_006d:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0072:  ldc.i4.3
    IL_0073:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0078:  stloc.0
    IL_0079:  ldloca.s   V_1
    IL_007b:  initobj    Game.BlockPlacementData
    IL_0081:  ldloca.s   V_1
    IL_0083:  ldloc.0
    IL_0084:  stfld      int32 Game.BlockPlacementData::Value
    IL_0089:  ldloca.s   V_1
    IL_008b:  ldarg.s    raycastResult
    IL_008d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0092:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0097:  ldloc.1
    IL_0098:  ret
  } // end of method HygrometerBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       216 (0xd8)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Matrix V_4)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.Matrix[] Game.HygrometerBlock::m_matricesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge        IL_00d7

    IL_0015:  ldarg.1
    IL_0016:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_001b:  ldarg.s    x
    IL_001d:  ldarg.s    z
    IL_001f:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0024:  stloc.1
    IL_0025:  ldc.r4     1.5
    IL_002a:  ldc.r4     -1.5
    IL_002f:  ldloc.1
    IL_0030:  conv.r4
    IL_0031:  ldc.r4     15.
    IL_0036:  div
    IL_0037:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_003c:  stloc.2
    IL_003d:  ldarg.0
    IL_003e:  ldfld      valuetype [Engine]Engine.Matrix[] Game.HygrometerBlock::m_matricesByData
    IL_0043:  ldloc.0
    IL_0044:  ldelem     [Engine]Engine.Matrix
    IL_0049:  stloc.3
    IL_004a:  ldarg.0
    IL_004b:  ldfld      valuetype [Engine]Engine.Matrix Game.HygrometerBlock::m_invPointerMatrix
    IL_0050:  ldloc.2
    IL_0051:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0056:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_005b:  ldarg.0
    IL_005c:  ldfld      valuetype [Engine]Engine.Matrix Game.HygrometerBlock::m_pointerMatrix
    IL_0061:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0066:  ldloc.3
    IL_0067:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_006c:  stloc.s    V_4
    IL_006e:  ldarg.1
    IL_006f:  ldarg.0
    IL_0070:  ldarg.s    x
    IL_0072:  ldarg.s    y
    IL_0074:  ldarg.s    z
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.BlockMesh Game.HygrometerBlock::m_caseMesh
    IL_007c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0081:  ldloc.3
    IL_0082:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0087:  ldarg.2
    IL_0088:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_008d:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0092:  ldarg.1
    IL_0093:  ldarg.0
    IL_0094:  ldarg.s    x
    IL_0096:  ldarg.s    y
    IL_0098:  ldarg.s    z
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.BlockMesh Game.HygrometerBlock::m_pointerMesh
    IL_00a0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00a5:  ldloc.s    V_4
    IL_00a7:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_00ac:  ldarg.2
    IL_00ad:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_00b2:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00b7:  ldarg.1
    IL_00b8:  ldarg.3
    IL_00b9:  ldarg.s    x
    IL_00bb:  ldarg.s    y
    IL_00bd:  ldarg.s    z
    IL_00bf:  ldloc.0
    IL_00c0:  ldc.i4.3
    IL_00c1:  and
    IL_00c2:  ldc.r4     0.25
    IL_00c7:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00cc:  ldarg.2
    IL_00cd:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_00d2:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00d7:  ret
  } // end of method HygrometerBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       427 (0x1ab)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             int32 V_5,
             int32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12)
    IL_0000:  ldc.r4     8.
    IL_0005:  stloc.0
    IL_0006:  ldarg.s    environmentData
    IL_0008:  brfalse    IL_0113

    IL_000d:  ldarg.s    environmentData
    IL_000f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0014:  brfalse    IL_0113

    IL_0019:  ldarg.s    environmentData
    IL_001b:  ldflda     valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
    IL_0020:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0025:  stloc.s    V_4
    IL_0027:  ldloc.s    V_4
    IL_0029:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_002e:  conv.i4
    IL_002f:  stloc.s    V_5
    IL_0031:  ldloc.s    V_4
    IL_0033:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0038:  conv.i4
    IL_0039:  stloc.s    V_6
    IL_003b:  ldarg.s    environmentData
    IL_003d:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0042:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0047:  ldloc.s    V_5
    IL_0049:  ldloc.s    V_6
    IL_004b:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_0050:  brfalse    IL_0113

    IL_0055:  ldarg.s    environmentData
    IL_0057:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_005c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0061:  ldloc.s    V_5
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  ldloc.s    V_6
    IL_0067:  ldc.i4.1
    IL_0068:  add
    IL_0069:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_006e:  brfalse    IL_0113

    IL_0073:  ldloc.s    V_4
    IL_0075:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_007a:  ldloc.s    V_5
    IL_007c:  conv.r4
    IL_007d:  sub
    IL_007e:  stloc.s    V_7
    IL_0080:  ldloc.s    V_4
    IL_0082:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0087:  ldloc.s    V_6
    IL_0089:  conv.r4
    IL_008a:  sub
    IL_008b:  stloc.s    V_8
    IL_008d:  ldarg.s    environmentData
    IL_008f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0094:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0099:  ldloc.s    V_5
    IL_009b:  ldloc.s    V_6
    IL_009d:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_00a2:  conv.r4
    IL_00a3:  ldarg.s    environmentData
    IL_00a5:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_00aa:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00af:  ldloc.s    V_5
    IL_00b1:  ldloc.s    V_6
    IL_00b3:  ldc.i4.1
    IL_00b4:  add
    IL_00b5:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_00ba:  conv.r4
    IL_00bb:  stloc.s    V_9
    IL_00bd:  ldarg.s    environmentData
    IL_00bf:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_00c4:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00c9:  ldloc.s    V_5
    IL_00cb:  ldc.i4.1
    IL_00cc:  add
    IL_00cd:  ldloc.s    V_6
    IL_00cf:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_00d4:  conv.r4
    IL_00d5:  stloc.s    V_10
    IL_00d7:  ldarg.s    environmentData
    IL_00d9:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_00de:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00e3:  ldloc.s    V_5
    IL_00e5:  ldc.i4.1
    IL_00e6:  add
    IL_00e7:  ldloc.s    V_6
    IL_00e9:  ldc.i4.1
    IL_00ea:  add
    IL_00eb:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_00f0:  conv.r4
    IL_00f1:  stloc.s    V_11
    IL_00f3:  ldloc.s    V_9
    IL_00f5:  ldloc.s    V_8
    IL_00f7:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00fc:  ldloc.s    V_10
    IL_00fe:  ldloc.s    V_11
    IL_0100:  ldloc.s    V_8
    IL_0102:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0107:  stloc.s    V_12
    IL_0109:  ldloc.s    V_12
    IL_010b:  ldloc.s    V_7
    IL_010d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0112:  stloc.0
    IL_0113:  ldc.r4     1.5
    IL_0118:  ldc.r4     -1.5
    IL_011d:  ldloc.0
    IL_011e:  conv.r4
    IL_011f:  ldc.r4     15.
    IL_0124:  div
    IL_0125:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_012a:  stloc.1
    IL_012b:  ldc.r4     7.
    IL_0130:  ldarg.3
    IL_0131:  mul
    IL_0132:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0137:  ldc.r4     0.0
    IL_013c:  ldc.r4     -0.1
    IL_0141:  ldc.r4     0.0
    IL_0146:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_014b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0150:  ldarg.s    matrix
    IL_0152:  ldobj      [Engine]Engine.Matrix
    IL_0157:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_015c:  stloc.2
    IL_015d:  ldarg.0
    IL_015e:  ldfld      valuetype [Engine]Engine.Matrix Game.HygrometerBlock::m_invPointerMatrix
    IL_0163:  ldloc.1
    IL_0164:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0169:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_016e:  ldarg.0
    IL_016f:  ldfld      valuetype [Engine]Engine.Matrix Game.HygrometerBlock::m_pointerMatrix
    IL_0174:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0179:  ldloc.2
    IL_017a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_017f:  stloc.3
    IL_0180:  ldarg.1
    IL_0181:  ldarg.0
    IL_0182:  ldfld      class Game.BlockMesh Game.HygrometerBlock::m_caseMesh
    IL_0187:  ldc.r4     1.
    IL_018c:  ldloca.s   V_2
    IL_018e:  ldarg.s    environmentData
    IL_0190:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0195:  ldarg.1
    IL_0196:  ldarg.0
    IL_0197:  ldfld      class Game.BlockMesh Game.HygrometerBlock::m_pointerMesh
    IL_019c:  ldc.r4     1.
    IL_01a1:  ldloca.s   V_3
    IL_01a3:  ldarg.s    environmentData
    IL_01a5:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_01aa:  ret
  } // end of method HygrometerBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.HygrometerBlock::m_caseMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.HygrometerBlock::m_pointerMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.4
    IL_0018:  newarr     [Engine]Engine.Matrix
    IL_001d:  stfld      valuetype [Engine]Engine.Matrix[] Game.HygrometerBlock::m_matricesByData
    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.4
    IL_0024:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0029:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.HygrometerBlock::m_collisionBoxesByData
    IL_002e:  ldarg.0
    IL_002f:  call       instance void Game.Block::.ctor()
    IL_0034:  ret
  } // end of method HygrometerBlock::.ctor

} // end of class Game.HygrometerBlock