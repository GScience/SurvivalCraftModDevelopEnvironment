.class public auto ansi beforefieldinit Game.SwitchBlock
       extends Game.MountedElectricElementBlock
{
  .field public static literal int32 Index = int32(0x0000008D)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       611 (0x263)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Matrix V_7,
             valuetype [Engine]Engine.Matrix V_8,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_9)
    IL_0000:  ldstr      "Models/Switch"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Body"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Lever"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldc.i4.0
    IL_003a:  stloc.s    V_4
    IL_003c:  br         IL_01d4

    IL_0041:  ldc.i4.0
    IL_0042:  stloc.s    V_5
    IL_0044:  br         IL_01c6

    IL_0049:  ldloc.s    V_4
    IL_004b:  ldc.i4.1
    IL_004c:  shl
    IL_004d:  ldloc.s    V_5
    IL_004f:  or
    IL_0050:  stloc.s    V_6
    IL_0052:  ldloc.s    V_4
    IL_0054:  ldc.i4.4
    IL_0055:  bge.s      IL_00b0

    IL_0057:  ldc.r4     1.5707964
    IL_005c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0061:  ldc.r4     0.0
    IL_0066:  ldc.r4     0.0
    IL_006b:  ldc.r4     -0.5
    IL_0070:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0075:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_007a:  ldloc.s    V_4
    IL_007c:  conv.r4
    IL_007d:  ldc.r4     3.1415927
    IL_0082:  mul
    IL_0083:  ldc.r4     2.
    IL_0088:  div
    IL_0089:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_008e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0093:  ldc.r4     0.5
    IL_0098:  ldc.r4     0.5
    IL_009d:  ldc.r4     0.5
    IL_00a2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00a7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ac:  stloc.s    V_7
    IL_00ae:  br.s       IL_00f2

    IL_00b0:  ldloc.s    V_4
    IL_00b2:  ldc.i4.4
    IL_00b3:  bne.un.s   IL_00cd

    IL_00b5:  ldc.r4     0.5
    IL_00ba:  ldc.r4     0.0
    IL_00bf:  ldc.r4     0.5
    IL_00c4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00c9:  stloc.s    V_7
    IL_00cb:  br.s       IL_00f2

    IL_00cd:  ldc.r4     3.1415927
    IL_00d2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00d7:  ldc.r4     0.5
    IL_00dc:  ldc.r4     1.
    IL_00e1:  ldc.r4     0.5
    IL_00e6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00eb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f0:  stloc.s    V_7
    IL_00f2:  ldloc.s    V_5
    IL_00f4:  brfalse.s  IL_0102

    IL_00f6:  ldc.r4     -30.
    IL_00fb:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0100:  br.s       IL_010c

    IL_0102:  ldc.r4     30.
    IL_0107:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_010c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0111:  stloc.s    V_8
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class Game.BlockMesh[] Game.SwitchBlock::m_blockMeshesByData
    IL_0119:  ldloc.s    V_6
    IL_011b:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0120:  stelem.ref
    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.BlockMesh[] Game.SwitchBlock::m_blockMeshesByData
    IL_0127:  ldloc.s    V_6
    IL_0129:  ldelem.ref
    IL_012a:  ldloc.0
    IL_012b:  ldstr      "Body"
    IL_0130:  ldc.i4.1
    IL_0131:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0136:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_013b:  stloc.s    V_9
    IL_013d:  ldloca.s   V_9
    IL_013f:  ldc.i4.0
    IL_0140:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0145:  ldloc.1
    IL_0146:  ldloc.s    V_7
    IL_0148:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_014d:  ldc.i4.0
    IL_014e:  ldc.i4.0
    IL_014f:  ldc.i4.0
    IL_0150:  ldc.i4.0
    IL_0151:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0156:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_015b:  ldarg.0
    IL_015c:  ldfld      class Game.BlockMesh[] Game.SwitchBlock::m_blockMeshesByData
    IL_0161:  ldloc.s    V_6
    IL_0163:  ldelem.ref
    IL_0164:  ldloc.0
    IL_0165:  ldstr      "Lever"
    IL_016a:  ldc.i4.1
    IL_016b:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0170:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0175:  stloc.s    V_9
    IL_0177:  ldloca.s   V_9
    IL_0179:  ldc.i4.0
    IL_017a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_017f:  ldloc.2
    IL_0180:  ldloc.s    V_8
    IL_0182:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0187:  ldloc.s    V_7
    IL_0189:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_018e:  ldc.i4.0
    IL_018f:  ldc.i4.0
    IL_0190:  ldc.i4.0
    IL_0191:  ldc.i4.0
    IL_0192:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0197:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_019c:  ldarg.0
    IL_019d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SwitchBlock::m_collisionBoxesByData
    IL_01a2:  ldloc.s    V_6
    IL_01a4:  ldc.i4.1
    IL_01a5:  newarr     [Engine]Engine.BoundingBox
    IL_01aa:  dup
    IL_01ab:  ldc.i4.0
    IL_01ac:  ldarg.0
    IL_01ad:  ldfld      class Game.BlockMesh[] Game.SwitchBlock::m_blockMeshesByData
    IL_01b2:  ldloc.s    V_6
    IL_01b4:  ldelem.ref
    IL_01b5:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_01ba:  stelem     [Engine]Engine.BoundingBox
    IL_01bf:  stelem.ref
    IL_01c0:  ldloc.s    V_5
    IL_01c2:  ldc.i4.1
    IL_01c3:  add
    IL_01c4:  stloc.s    V_5
    IL_01c6:  ldloc.s    V_5
    IL_01c8:  ldc.i4.2
    IL_01c9:  blt        IL_0049

    IL_01ce:  ldloc.s    V_4
    IL_01d0:  ldc.i4.1
    IL_01d1:  add
    IL_01d2:  stloc.s    V_4
    IL_01d4:  ldloc.s    V_4
    IL_01d6:  ldc.i4.6
    IL_01d7:  blt        IL_0041

    IL_01dc:  ldc.r4     -1.5707964
    IL_01e1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_01e6:  ldc.r4     1.5707964
    IL_01eb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_01f0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01f5:  stloc.3
    IL_01f6:  ldarg.0
    IL_01f7:  ldfld      class Game.BlockMesh Game.SwitchBlock::m_standaloneBlockMesh
    IL_01fc:  ldloc.0
    IL_01fd:  ldstr      "Body"
    IL_0202:  ldc.i4.1
    IL_0203:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0208:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_020d:  stloc.s    V_9
    IL_020f:  ldloca.s   V_9
    IL_0211:  ldc.i4.0
    IL_0212:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0217:  ldloc.1
    IL_0218:  ldloc.3
    IL_0219:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_021e:  ldc.i4.0
    IL_021f:  ldc.i4.0
    IL_0220:  ldc.i4.0
    IL_0221:  ldc.i4.0
    IL_0222:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0227:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_022c:  ldarg.0
    IL_022d:  ldfld      class Game.BlockMesh Game.SwitchBlock::m_standaloneBlockMesh
    IL_0232:  ldloc.0
    IL_0233:  ldstr      "Lever"
    IL_0238:  ldc.i4.1
    IL_0239:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_023e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0243:  stloc.s    V_9
    IL_0245:  ldloca.s   V_9
    IL_0247:  ldc.i4.0
    IL_0248:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_024d:  ldloc.2
    IL_024e:  ldloc.3
    IL_024f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0254:  ldc.i4.0
    IL_0255:  ldc.i4.0
    IL_0256:  ldc.i4.0
    IL_0257:  ldc.i4.0
    IL_0258:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_025d:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0262:  ret
  } // end of method SwitchBlock::Initialize

  .method public hidebysig static bool  GetLeverState(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  ldc.i4.1
    IL_0007:  and
    IL_0008:  ldc.i4.0
    IL_0009:  cgt.un
    IL_000b:  ret
  } // end of method SwitchBlock::GetLeverState

  .method public hidebysig static int32  SetLeverState(int32 'value',
                                                       bool state) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  brtrue.s   IL_000f

    IL_0004:  ldarg.0
    IL_0005:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_000a:  ldc.i4.s   -2
    IL_000c:  and
    IL_000d:  br.s       IL_0017

    IL_000f:  ldarg.0
    IL_0010:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0015:  ldc.i4.1
    IL_0016:  or
    IL_0017:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_001c:  ret
  } // end of method SwitchBlock::SetLeverState

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  ldc.i4.1
    IL_0007:  shr
    IL_0008:  ldc.i4.7
    IL_0009:  and
    IL_000a:  ret
  } // end of method SwitchBlock::GetFace

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  4
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldarg.3
    IL_000b:  ldarg.s    raycastResult
    IL_000d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0012:  ldfld      int32 Game.CellFace::Face
    IL_0017:  ldc.i4.1
    IL_0018:  shl
    IL_0019:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_001e:  stfld      int32 Game.BlockPlacementData::Value
    IL_0023:  ldloca.s   V_0
    IL_0025:  ldarg.s    raycastResult
    IL_0027:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_002c:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0031:  ldloc.0
    IL_0032:  ret
  } // end of method SwitchBlock::GetPlacementValue

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
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SwitchBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  blt.s      IL_0014

    IL_0012:  ldnull
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SwitchBlock::m_collisionBoxesByData
    IL_001a:  ldloc.0
    IL_001b:  ldelem.ref
    IL_001c:  ret
  } // end of method SwitchBlock::GetCustomCollisionBoxes

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
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.SwitchBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_005f

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.SwitchBlock::m_blockMeshesByData
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
  } // end of method SwitchBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.SwitchBlock::m_standaloneBlockMesh
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
  } // end of method SwitchBlock::DrawBlock

  .method public hidebysig virtual instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       25 (0x19)
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
    IL_0012:  ldarg.2
    IL_0013:  newobj     instance void Game.SwitchElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                         valuetype Game.CellFace,
                                                                         int32)
    IL_0018:  ret
  } // end of method SwitchBlock::CreateElectricElement

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
  } // end of method SwitchBlock::GetConnectorType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.SwitchBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   12
    IL_000e:  newarr     Game.BlockMesh
    IL_0013:  stfld      class Game.BlockMesh[] Game.SwitchBlock::m_blockMeshesByData
    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.s   12
    IL_001b:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0020:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.SwitchBlock::m_collisionBoxesByData
    IL_0025:  ldarg.0
    IL_0026:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_002b:  ret
  } // end of method SwitchBlock::.ctor

} // end of class Game.SwitchBlock