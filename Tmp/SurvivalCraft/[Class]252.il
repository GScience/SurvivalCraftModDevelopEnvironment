.class public auto ansi beforefieldinit Game.ChristmasTreeBlock
       extends Game.Block
       implements Game.IElectricElementBlock
{
  .field public static literal int32 Index = int32(0x0000003F)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh m_leavesBlockMesh
  .field private class Game.BlockMesh m_standTrunkBlockMesh
  .field private class Game.BlockMesh m_decorationsBlockMesh
  .field private class Game.BlockMesh m_litDecorationsBlockMesh
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       610 (0x262)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Color V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_5)
    IL_0000:  ldstr      "Models/ChristmasTree"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "StandTrunk"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Leaves"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldloc.0
    IL_003a:  ldstr      "Decorations"
    IL_003f:  ldc.i4.1
    IL_0040:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0045:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_004a:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_004f:  stloc.3
    IL_0050:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::SpruceLeavesColorsMap
    IL_0055:  ldc.i4.4
    IL_0056:  ldc.i4.s   15
    IL_0058:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_005d:  stloc.s    V_4
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_leavesBlockMesh
    IL_0065:  ldloc.0
    IL_0066:  ldstr      "Leaves"
    IL_006b:  ldc.i4.1
    IL_006c:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0071:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0076:  stloc.s    V_5
    IL_0078:  ldloca.s   V_5
    IL_007a:  ldc.i4.0
    IL_007b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0080:  ldloc.2
    IL_0081:  ldc.r4     0.5
    IL_0086:  ldc.r4     0.0
    IL_008b:  ldc.r4     0.5
    IL_0090:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0095:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_009a:  ldc.i4.0
    IL_009b:  ldc.i4.0
    IL_009c:  ldc.i4.1
    IL_009d:  ldc.i4.0
    IL_009e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00a3:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_standTrunkBlockMesh
    IL_00ae:  ldloc.0
    IL_00af:  ldstr      "StandTrunk"
    IL_00b4:  ldc.i4.1
    IL_00b5:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00ba:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00bf:  stloc.s    V_5
    IL_00c1:  ldloca.s   V_5
    IL_00c3:  ldc.i4.0
    IL_00c4:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00c9:  ldloc.1
    IL_00ca:  ldc.r4     0.5
    IL_00cf:  ldc.r4     0.0
    IL_00d4:  ldc.r4     0.5
    IL_00d9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00de:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e3:  ldc.i4.0
    IL_00e4:  ldc.i4.0
    IL_00e5:  ldc.i4.0
    IL_00e6:  ldc.i4.0
    IL_00e7:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00ec:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_decorationsBlockMesh
    IL_00f7:  ldloc.0
    IL_00f8:  ldstr      "Decorations"
    IL_00fd:  ldc.i4.1
    IL_00fe:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0103:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0108:  stloc.s    V_5
    IL_010a:  ldloca.s   V_5
    IL_010c:  ldc.i4.0
    IL_010d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0112:  ldloc.3
    IL_0113:  ldc.r4     0.5
    IL_0118:  ldc.r4     0.0
    IL_011d:  ldc.r4     0.5
    IL_0122:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0127:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_012c:  ldc.i4.0
    IL_012d:  ldc.i4.0
    IL_012e:  ldc.i4.0
    IL_012f:  ldc.i4.0
    IL_0130:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0135:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_litDecorationsBlockMesh
    IL_0140:  ldloc.0
    IL_0141:  ldstr      "Decorations"
    IL_0146:  ldc.i4.1
    IL_0147:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_014c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0151:  stloc.s    V_5
    IL_0153:  ldloca.s   V_5
    IL_0155:  ldc.i4.0
    IL_0156:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_015b:  ldloc.3
    IL_015c:  ldc.r4     0.5
    IL_0161:  ldc.r4     0.0
    IL_0166:  ldc.r4     0.5
    IL_016b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0170:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0175:  ldc.i4.1
    IL_0176:  ldc.i4.0
    IL_0177:  ldc.i4.0
    IL_0178:  ldc.i4.0
    IL_0179:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_017e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0183:  ldarg.0
    IL_0184:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_standaloneBlockMesh
    IL_0189:  ldloc.0
    IL_018a:  ldstr      "StandTrunk"
    IL_018f:  ldc.i4.1
    IL_0190:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0195:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_019a:  stloc.s    V_5
    IL_019c:  ldloca.s   V_5
    IL_019e:  ldc.i4.0
    IL_019f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01a4:  ldloc.1
    IL_01a5:  ldc.r4     0.0
    IL_01aa:  ldc.r4     -1.
    IL_01af:  ldc.r4     0.0
    IL_01b4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01b9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01be:  ldc.i4.0
    IL_01bf:  ldc.i4.0
    IL_01c0:  ldc.i4.0
    IL_01c1:  ldc.i4.0
    IL_01c2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01c7:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01cc:  ldarg.0
    IL_01cd:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_standaloneBlockMesh
    IL_01d2:  ldloc.0
    IL_01d3:  ldstr      "Leaves"
    IL_01d8:  ldc.i4.1
    IL_01d9:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01de:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01e3:  stloc.s    V_5
    IL_01e5:  ldloca.s   V_5
    IL_01e7:  ldc.i4.0
    IL_01e8:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01ed:  ldloc.2
    IL_01ee:  ldc.r4     0.0
    IL_01f3:  ldc.r4     -1.
    IL_01f8:  ldc.r4     0.0
    IL_01fd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0202:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0207:  ldc.i4.0
    IL_0208:  ldc.i4.0
    IL_0209:  ldc.i4.1
    IL_020a:  ldc.i4.0
    IL_020b:  ldloc.s    V_4
    IL_020d:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0212:  ldarg.0
    IL_0213:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_standaloneBlockMesh
    IL_0218:  ldloc.0
    IL_0219:  ldstr      "Decorations"
    IL_021e:  ldc.i4.1
    IL_021f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0224:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0229:  stloc.s    V_5
    IL_022b:  ldloca.s   V_5
    IL_022d:  ldc.i4.0
    IL_022e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0233:  ldloc.3
    IL_0234:  ldc.r4     0.0
    IL_0239:  ldc.r4     -1.
    IL_023e:  ldc.r4     0.0
    IL_0243:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0248:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_024d:  ldc.i4.0
    IL_024e:  ldc.i4.0
    IL_024f:  ldc.i4.0
    IL_0250:  ldc.i4.0
    IL_0251:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0256:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_025b:  ldarg.0
    IL_025c:  call       instance void Game.Block::Initialize()
    IL_0261:  ret
  } // end of method ChristmasTreeBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       293 (0x125)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Color V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::SpruceLeavesColorsMap
    IL_0005:  ldarg.1
    IL_0006:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_000b:  ldarg.s    x
    IL_000d:  ldarg.s    z
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.TerrainData,
                                                                                             int32,
                                                                                             int32)
    IL_0014:  stloc.0
    IL_0015:  ldarg.3
    IL_0016:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_001b:  call       bool Game.ChristmasTreeBlock::GetLightState(int32)
    IL_0020:  brfalse.s  IL_0095

    IL_0022:  ldarg.1
    IL_0023:  ldarg.0
    IL_0024:  ldarg.s    x
    IL_0026:  ldarg.s    y
    IL_0028:  ldarg.s    z
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_standTrunkBlockMesh
    IL_0030:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0035:  ldloca.s   V_1
    IL_0037:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_003d:  ldloc.1
    IL_003e:  ldarg.2
    IL_003f:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0044:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0049:  ldarg.1
    IL_004a:  ldarg.0
    IL_004b:  ldarg.s    x
    IL_004d:  ldarg.s    y
    IL_004f:  ldarg.s    z
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_litDecorationsBlockMesh
    IL_0057:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_005c:  ldloca.s   V_1
    IL_005e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0064:  ldloc.1
    IL_0065:  ldarg.2
    IL_0066:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_006b:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0070:  ldarg.1
    IL_0071:  ldarg.0
    IL_0072:  ldarg.s    x
    IL_0074:  ldarg.s    y
    IL_0076:  ldarg.s    z
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_leavesBlockMesh
    IL_007e:  ldloc.0
    IL_007f:  ldloca.s   V_1
    IL_0081:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0087:  ldloc.1
    IL_0088:  ldarg.2
    IL_0089:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_008e:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0093:  br.s       IL_0106

    IL_0095:  ldarg.1
    IL_0096:  ldarg.0
    IL_0097:  ldarg.s    x
    IL_0099:  ldarg.s    y
    IL_009b:  ldarg.s    z
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_standTrunkBlockMesh
    IL_00a3:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00a8:  ldloca.s   V_1
    IL_00aa:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_00b0:  ldloc.1
    IL_00b1:  ldarg.2
    IL_00b2:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_00b7:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00bc:  ldarg.1
    IL_00bd:  ldarg.0
    IL_00be:  ldarg.s    x
    IL_00c0:  ldarg.s    y
    IL_00c2:  ldarg.s    z
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_decorationsBlockMesh
    IL_00ca:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00cf:  ldloca.s   V_1
    IL_00d1:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_00d7:  ldloc.1
    IL_00d8:  ldarg.2
    IL_00d9:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_00de:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00e3:  ldarg.1
    IL_00e4:  ldarg.0
    IL_00e5:  ldarg.s    x
    IL_00e7:  ldarg.s    y
    IL_00e9:  ldarg.s    z
    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_leavesBlockMesh
    IL_00f1:  ldloc.0
    IL_00f2:  ldloca.s   V_1
    IL_00f4:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_00fa:  ldloc.1
    IL_00fb:  ldarg.2
    IL_00fc:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0101:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0106:  ldarg.1
    IL_0107:  ldarg.3
    IL_0108:  ldarg.s    x
    IL_010a:  ldarg.s    y
    IL_010c:  ldarg.s    z
    IL_010e:  ldc.i4.4
    IL_010f:  ldc.r4     9.9999998e-003
    IL_0114:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0119:  ldarg.2
    IL_011a:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_011f:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0124:  ret
  } // end of method ChristmasTreeBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    matrix
    IL_000a:  ldarg.s    environmentData
    IL_000c:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0011:  ret
  } // end of method ChristmasTreeBlock::DrawBlock

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain terrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::SpruceLeavesColorsMap
    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  conv.i4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0018:  conv.i4
    IL_0019:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.TerrainData,
                                                                                             int32,
                                                                                             int32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldarg.2
    IL_0021:  ldarg.s    strength
    IL_0023:  ldarg.0
    IL_0024:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0029:  ldloc.0
    IL_002a:  ldarg.0
    IL_002b:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0030:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0035:  ret
  } // end of method ChristmasTreeBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance int32 
          GetEmittedLightAmount(int32 'value') cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       bool Game.ChristmasTreeBlock::GetLightState(int32)
    IL_000b:  brtrue.s   IL_000f

    IL_000d:  ldc.i4.0
    IL_000e:  ret

    IL_000f:  ldarg.0
    IL_0010:  ldfld      int32 Game.Block::EmittedLightAmount
    IL_0015:  ret
  } // end of method ChristmasTreeBlock::GetEmittedLightAmount

  .method public hidebysig static bool  GetLightState(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method ChristmasTreeBlock::GetLightState

  .method public hidebysig static int32  SetLightState(int32 data,
                                                       bool state) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -2
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  or
    IL_000b:  ret
  } // end of method ChristmasTreeBlock::SetLightState

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       19 (0x13)
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
    IL_000c:  ldarg.2
    IL_000d:  newobj     instance void Game.ChristmasTreeElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                                valuetype Game.CellFace,
                                                                                int32)
    IL_0012:  ret
  } // end of method ChristmasTreeBlock::CreateElectricElement

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
    // 代码大小       40 (0x28)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_1)
    IL_0000:  ldarg.3
    IL_0001:  ldc.i4.4
    IL_0002:  bne.un.s   IL_001e

    IL_0004:  ldc.i4.4
    IL_0005:  ldc.i4.0
    IL_0006:  ldarg.s    connectorFace
    IL_0008:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_000d:  stloc.0
    IL_000e:  ldloca.s   V_0
    IL_0010:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0015:  brfalse.s  IL_001e

    IL_0017:  ldc.i4.0
    IL_0018:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_001d:  ret

    IL_001e:  ldloca.s   V_1
    IL_0020:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_0026:  ldloc.1
    IL_0027:  ret
  } // end of method ChristmasTreeBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method ChristmasTreeBlock::GetConnectionMask

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_leavesBlockMesh
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.BlockMesh::.ctor()
    IL_001c:  stfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_standTrunkBlockMesh
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0027:  stfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_decorationsBlockMesh
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0032:  stfld      class Game.BlockMesh Game.ChristmasTreeBlock::m_litDecorationsBlockMesh
    IL_0037:  ldarg.0
    IL_0038:  call       instance void Game.Block::.ctor()
    IL_003d:  ret
  } // end of method ChristmasTreeBlock::.ctor

} // end of class Game.ChristmasTreeBlock