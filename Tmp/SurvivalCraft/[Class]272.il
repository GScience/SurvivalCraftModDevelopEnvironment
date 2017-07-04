.class public auto ansi beforefieldinit Game.SpikedPlankBlock
       extends Game.MountedElectricElementBlock
{
  .field public static literal int32 Index = int32(0x00000056)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       442 (0x1ba)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             string[] V_1,
             int32 V_2,
             string V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [Engine]Engine.Matrix V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Matrix V_8,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_9)
    IL_0000:  ldstr      "Models/SpikedPlanks"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [System.Runtime]System.String
    IL_0011:  dup
    IL_0012:  ldc.i4.0
    IL_0013:  ldstr      "SpikedPlankRetracted"
    IL_0018:  stelem.ref
    IL_0019:  dup
    IL_001a:  ldc.i4.1
    IL_001b:  ldstr      "SpikedPlank"
    IL_0020:  stelem.ref
    IL_0021:  stloc.1
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.2
    IL_0024:  br         IL_01b2

    IL_0029:  ldloc.1
    IL_002a:  ldloc.2
    IL_002b:  ldelem.ref
    IL_002c:  stloc.3
    IL_002d:  ldloc.0
    IL_002e:  ldloc.3
    IL_002f:  ldc.i4.1
    IL_0030:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0035:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_003a:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_003f:  stloc.s    V_4
    IL_0041:  ldc.i4.0
    IL_0042:  stloc.s    V_6
    IL_0044:  br         IL_016b

    IL_0049:  ldc.i4.0
    IL_004a:  ldloc.2
    IL_004b:  ldc.i4.0
    IL_004c:  cgt.un
    IL_004e:  call       int32 Game.SpikedPlankBlock::SetSpikesState(int32,
                                                                     bool)
    IL_0053:  ldloc.s    V_6
    IL_0055:  call       int32 Game.SpikedPlankBlock::SetMountingFace(int32,
                                                                      int32)
    IL_005a:  stloc.s    V_7
    IL_005c:  ldloc.s    V_6
    IL_005e:  ldc.i4.4
    IL_005f:  bge.s      IL_00ba

    IL_0061:  ldc.r4     1.5707964
    IL_0066:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_006b:  ldc.r4     0.0
    IL_0070:  ldc.r4     0.0
    IL_0075:  ldc.r4     -0.5
    IL_007a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0084:  ldloc.s    V_6
    IL_0086:  conv.r4
    IL_0087:  ldc.r4     3.1415927
    IL_008c:  mul
    IL_008d:  ldc.r4     2.
    IL_0092:  div
    IL_0093:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0098:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_009d:  ldc.r4     0.5
    IL_00a2:  ldc.r4     0.5
    IL_00a7:  ldc.r4     0.5
    IL_00ac:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00b1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b6:  stloc.s    V_8
    IL_00b8:  br.s       IL_00fc

    IL_00ba:  ldloc.s    V_6
    IL_00bc:  ldc.i4.4
    IL_00bd:  bne.un.s   IL_00d7

    IL_00bf:  ldc.r4     0.5
    IL_00c4:  ldc.r4     0.0
    IL_00c9:  ldc.r4     0.5
    IL_00ce:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d3:  stloc.s    V_8
    IL_00d5:  br.s       IL_00fc

    IL_00d7:  ldc.r4     3.1415927
    IL_00dc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00e1:  ldc.r4     0.5
    IL_00e6:  ldc.r4     1.
    IL_00eb:  ldc.r4     0.5
    IL_00f0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00f5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00fa:  stloc.s    V_8
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class Game.BlockMesh[] Game.SpikedPlankBlock::m_blockMeshesByData
    IL_0102:  ldloc.s    V_7
    IL_0104:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0109:  stelem.ref
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class Game.BlockMesh[] Game.SpikedPlankBlock::m_blockMeshesByData
    IL_0110:  ldloc.s    V_7
    IL_0112:  ldelem.ref
    IL_0113:  ldloc.0
    IL_0114:  ldloc.3
    IL_0115:  ldc.i4.1
    IL_0116:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_011b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0120:  stloc.s    V_9
    IL_0122:  ldloca.s   V_9
    IL_0124:  ldc.i4.0
    IL_0125:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_012a:  ldloc.s    V_4
    IL_012c:  ldloc.s    V_8
    IL_012e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0133:  ldc.i4.0
    IL_0134:  ldc.i4.0
    IL_0135:  ldc.i4.0
    IL_0136:  ldc.i4.0
    IL_0137:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_013c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0141:  ldarg.0
    IL_0142:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SpikedPlankBlock::m_collisionBoxesByData
    IL_0147:  ldloc.s    V_7
    IL_0149:  ldc.i4.1
    IL_014a:  newarr     [Engine]Engine.BoundingBox
    IL_014f:  dup
    IL_0150:  ldc.i4.0
    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.BlockMesh[] Game.SpikedPlankBlock::m_blockMeshesByData
    IL_0157:  ldloc.s    V_7
    IL_0159:  ldelem.ref
    IL_015a:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_015f:  stelem     [Engine]Engine.BoundingBox
    IL_0164:  stelem.ref
    IL_0165:  ldloc.s    V_6
    IL_0167:  ldc.i4.1
    IL_0168:  add
    IL_0169:  stloc.s    V_6
    IL_016b:  ldloc.s    V_6
    IL_016d:  ldc.i4.6
    IL_016e:  blt        IL_0049

    IL_0173:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0178:  stloc.s    V_5
    IL_017a:  ldarg.0
    IL_017b:  ldfld      class Game.BlockMesh Game.SpikedPlankBlock::m_standaloneBlockMesh
    IL_0180:  ldloc.0
    IL_0181:  ldloc.3
    IL_0182:  ldc.i4.1
    IL_0183:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0188:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_018d:  stloc.s    V_9
    IL_018f:  ldloca.s   V_9
    IL_0191:  ldc.i4.0
    IL_0192:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0197:  ldloc.s    V_4
    IL_0199:  ldloc.s    V_5
    IL_019b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01a0:  ldc.i4.0
    IL_01a1:  ldc.i4.0
    IL_01a2:  ldc.i4.0
    IL_01a3:  ldc.i4.0
    IL_01a4:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01a9:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01ae:  ldloc.2
    IL_01af:  ldc.i4.1
    IL_01b0:  add
    IL_01b1:  stloc.2
    IL_01b2:  ldloc.2
    IL_01b3:  ldc.i4.2
    IL_01b4:  blt        IL_0029

    IL_01b9:  ret
  } // end of method SpikedPlankBlock::Initialize

  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.SpikedPlankBlock::GetMountingFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldloc.0
    IL_000e:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0013:  ceq
    IL_0015:  ldc.i4.0
    IL_0016:  ceq
    IL_0018:  ret
  } // end of method SpikedPlankBlock::IsFaceTransparent

  .method public hidebysig virtual instance bool 
          ShouldAvoid(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.SpikedPlankBlock::GetSpikesState(int32)
    IL_000b:  ret
  } // end of method SpikedPlankBlock::ShouldAvoid

  .method public hidebysig static bool  GetSpikesState(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  ceq
    IL_0006:  ret
  } // end of method SpikedPlankBlock::GetSpikesState

  .method public hidebysig static int32  SetSpikesState(int32 data,
                                                        bool spikesState) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -2
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  or
    IL_000b:  ret
  } // end of method SpikedPlankBlock::SetSpikesState

  .method public hidebysig static int32  GetMountingFace(int32 data) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  shr
    IL_0003:  ldc.i4.4
    IL_0004:  add
    IL_0005:  ldc.i4.6
    IL_0006:  rem
    IL_0007:  ret
  } // end of method SpikedPlankBlock::GetMountingFace

  .method public hidebysig static int32  SetMountingFace(int32 data,
                                                         int32 face) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -15
    IL_0003:  and
    IL_0004:  starg.s    data
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.2
    IL_0009:  add
    IL_000a:  ldc.i4.6
    IL_000b:  rem
    IL_000c:  ldc.i4.7
    IL_000d:  and
    IL_000e:  ldc.i4.1
    IL_000f:  shl
    IL_0010:  or
    IL_0011:  starg.s    data
    IL_0013:  ldarg.0
    IL_0014:  ret
  } // end of method SpikedPlankBlock::SetMountingFace

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.SpikedPlankBlock::GetMountingFace(int32)
    IL_000b:  ret
  } // end of method SpikedPlankBlock::GetFace

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype Game.BlockPlacementData V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldc.i4.1
    IL_0007:  call       int32 Game.SpikedPlankBlock::SetSpikesState(int32,
                                                                     bool)
    IL_000c:  ldarg.s    raycastResult
    IL_000e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0013:  ldfld      int32 Game.CellFace::Face
    IL_0018:  call       int32 Game.SpikedPlankBlock::SetMountingFace(int32,
                                                                      int32)
    IL_001d:  stloc.0
    IL_001e:  ldloca.s   V_1
    IL_0020:  initobj    Game.BlockPlacementData
    IL_0026:  ldloca.s   V_1
    IL_0028:  ldarg.3
    IL_0029:  ldloc.0
    IL_002a:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_002f:  stfld      int32 Game.BlockPlacementData::Value
    IL_0034:  ldloca.s   V_1
    IL_0036:  ldarg.s    raycastResult
    IL_0038:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_003d:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0042:  ldloc.1
    IL_0043:  ret
  } // end of method SpikedPlankBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SpikedPlankBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  blt.s      IL_001b

    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldarg.2
    IL_0015:  call       instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_001a:  ret

    IL_001b:  ldarg.0
    IL_001c:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SpikedPlankBlock::m_collisionBoxesByData
    IL_0021:  ldloc.0
    IL_0022:  ldelem.ref
    IL_0023:  ret
  } // end of method SpikedPlankBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  10
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.SpikedPlankBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_006a

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.BlockMesh[] Game.SpikedPlankBlock::m_blockMeshesByData
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  brfalse.s  IL_006a

    IL_001c:  ldarg.1
    IL_001d:  ldarg.0
    IL_001e:  ldarg.s    x
    IL_0020:  ldarg.s    y
    IL_0022:  ldarg.s    z
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.BlockMesh[] Game.SpikedPlankBlock::m_blockMeshesByData
    IL_002a:  ldloc.0
    IL_002b:  ldelem.ref
    IL_002c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0031:  ldloca.s   V_1
    IL_0033:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0039:  ldloc.1
    IL_003a:  ldnull
    IL_003b:  ldarg.2
    IL_003c:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0041:  callvirt   instance void Game.BlockGeometryGenerator::GenerateShadedMeshVertices(class Game.Block,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class Game.BlockMesh,
                                                                                               valuetype [Engine]Engine.Color,
                                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                               int32[],
                                                                                               class Game.TerrainGeometrySubset)
    IL_0046:  ldarg.1
    IL_0047:  ldarg.3
    IL_0048:  ldarg.s    x
    IL_004a:  ldarg.s    y
    IL_004c:  ldarg.s    z
    IL_004e:  ldarg.0
    IL_004f:  ldarg.3
    IL_0050:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_0055:  ldc.r4     1.
    IL_005a:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_005f:  ldarg.2
    IL_0060:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0065:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_006a:  ret
  } // end of method SpikedPlankBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.SpikedPlankBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldc.r4     1.
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
  } // end of method SpikedPlankBlock::DrawBlock

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
    IL_0012:  newobj     instance void Game.SpikedPlankElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                              valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method SpikedPlankBlock::CreateElectricElement

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

    IL_001f:  ldc.i4.0
    IL_0020:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0025:  ret

    IL_0026:  ldloca.s   V_2
    IL_0028:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_002e:  ldloc.2
    IL_002f:  ret
  } // end of method SpikedPlankBlock::GetConnectorType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.SpikedPlankBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   12
    IL_000e:  newarr     Game.BlockMesh
    IL_0013:  stfld      class Game.BlockMesh[] Game.SpikedPlankBlock::m_blockMeshesByData
    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.s   12
    IL_001b:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0020:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.SpikedPlankBlock::m_collisionBoxesByData
    IL_0025:  ldarg.0
    IL_0026:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_002b:  ret
  } // end of method SpikedPlankBlock::.ctor

} // end of class Game.SpikedPlankBlock