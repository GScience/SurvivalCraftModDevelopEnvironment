.class public auto ansi beforefieldinit Game.PistonHeadBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x000000EE)
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       516 (0x204)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             int32 V_1,
             string V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype Game.PistonMode V_4,
             int32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Matrix V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_8)
    IL_0000:  ldstr      "Models/Pistons"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.1
    IL_000d:  br         IL_01fc

    IL_0012:  ldloc.1
    IL_0013:  brfalse.s  IL_001c

    IL_0015:  ldstr      "PistonShaft"
    IL_001a:  br.s       IL_0021

    IL_001c:  ldstr      "PistonHead"
    IL_0021:  stloc.2
    IL_0022:  ldloc.0
    IL_0023:  ldloc.2
    IL_0024:  ldc.i4.1
    IL_0025:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_002f:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0034:  stloc.3
    IL_0035:  ldc.i4.0
    IL_0036:  stloc.s    V_4
    IL_0038:  br         IL_01f0

    IL_003d:  ldc.i4.0
    IL_003e:  stloc.s    V_5
    IL_0040:  br         IL_01e2

    IL_0045:  ldc.i4.0
    IL_0046:  ldloc.1
    IL_0047:  ldc.i4.0
    IL_0048:  cgt.un
    IL_004a:  call       int32 Game.PistonHeadBlock::SetIsShaft(int32,
                                                                bool)
    IL_004f:  ldloc.s    V_4
    IL_0051:  call       int32 Game.PistonHeadBlock::SetMode(int32,
                                                             valuetype Game.PistonMode)
    IL_0056:  ldloc.s    V_5
    IL_0058:  call       int32 Game.PistonHeadBlock::SetFace(int32,
                                                             int32)
    IL_005d:  stloc.s    V_6
    IL_005f:  ldloc.s    V_5
    IL_0061:  ldc.i4.4
    IL_0062:  bge.s      IL_00b7

    IL_0064:  ldc.r4     0.0
    IL_0069:  ldc.r4     -0.5
    IL_006e:  ldc.r4     0.0
    IL_0073:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0078:  ldloc.s    V_5
    IL_007a:  conv.r4
    IL_007b:  ldc.r4     3.1415927
    IL_0080:  mul
    IL_0081:  ldc.r4     2.
    IL_0086:  div
    IL_0087:  ldc.r4     3.1415927
    IL_008c:  add
    IL_008d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0092:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0097:  ldc.r4     0.5
    IL_009c:  ldc.r4     0.5
    IL_00a1:  ldc.r4     0.5
    IL_00a6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00ab:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b0:  stloc.s    V_7
    IL_00b2:  br         IL_013a

    IL_00b7:  ldloc.s    V_5
    IL_00b9:  ldc.i4.4
    IL_00ba:  bne.un.s   IL_00fc

    IL_00bc:  ldc.r4     0.0
    IL_00c1:  ldc.r4     -0.5
    IL_00c6:  ldc.r4     0.0
    IL_00cb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d0:  ldc.r4     1.5707964
    IL_00d5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00da:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00df:  ldc.r4     0.5
    IL_00e4:  ldc.r4     0.5
    IL_00e9:  ldc.r4     0.5
    IL_00ee:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00f3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f8:  stloc.s    V_7
    IL_00fa:  br.s       IL_013a

    IL_00fc:  ldc.r4     0.0
    IL_0101:  ldc.r4     -0.5
    IL_0106:  ldc.r4     0.0
    IL_010b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0110:  ldc.r4     -1.5707964
    IL_0115:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_011a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_011f:  ldc.r4     0.5
    IL_0124:  ldc.r4     0.5
    IL_0129:  ldc.r4     0.5
    IL_012e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0133:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0138:  stloc.s    V_7
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.BlockMesh[] Game.PistonHeadBlock::m_blockMeshesByData
    IL_0140:  ldloc.s    V_6
    IL_0142:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0147:  stelem.ref
    IL_0148:  ldarg.0
    IL_0149:  ldfld      class Game.BlockMesh[] Game.PistonHeadBlock::m_blockMeshesByData
    IL_014e:  ldloc.s    V_6
    IL_0150:  ldelem.ref
    IL_0151:  ldloc.0
    IL_0152:  ldloc.2
    IL_0153:  ldc.i4.1
    IL_0154:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0159:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_015e:  stloc.s    V_8
    IL_0160:  ldloca.s   V_8
    IL_0162:  ldc.i4.0
    IL_0163:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0168:  ldloc.3
    IL_0169:  ldloc.s    V_7
    IL_016b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0170:  ldc.i4.0
    IL_0171:  ldc.i4.0
    IL_0172:  ldc.i4.0
    IL_0173:  ldc.i4.0
    IL_0174:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0179:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_017e:  ldloc.s    V_4
    IL_0180:  ldc.i4.1
    IL_0181:  bne.un.s   IL_01ae

    IL_0183:  ldarg.0
    IL_0184:  ldfld      class Game.BlockMesh[] Game.PistonHeadBlock::m_blockMeshesByData
    IL_0189:  ldloc.s    V_6
    IL_018b:  ldelem.ref
    IL_018c:  ldc.r4     0.0
    IL_0191:  ldc.r4     6.25e-002
    IL_0196:  ldc.r4     0.0
    IL_019b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01a0:  ldc.i4.1
    IL_01a1:  ldloc.s    V_5
    IL_01a3:  ldc.i4.s   31
    IL_01a5:  and
    IL_01a6:  shl
    IL_01a7:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_01ac:  br.s       IL_01dc

    IL_01ae:  ldloc.s    V_4
    IL_01b0:  ldc.i4.2
    IL_01b1:  bne.un.s   IL_01dc

    IL_01b3:  ldarg.0
    IL_01b4:  ldfld      class Game.BlockMesh[] Game.PistonHeadBlock::m_blockMeshesByData
    IL_01b9:  ldloc.s    V_6
    IL_01bb:  ldelem.ref
    IL_01bc:  ldc.r4     0.0
    IL_01c1:  ldc.r4     0.125
    IL_01c6:  ldc.r4     0.0
    IL_01cb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01d0:  ldc.i4.1
    IL_01d1:  ldloc.s    V_5
    IL_01d3:  ldc.i4.s   31
    IL_01d5:  and
    IL_01d6:  shl
    IL_01d7:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_01dc:  ldloc.s    V_5
    IL_01de:  ldc.i4.1
    IL_01df:  add
    IL_01e0:  stloc.s    V_5
    IL_01e2:  ldloc.s    V_5
    IL_01e4:  ldc.i4.6
    IL_01e5:  blt        IL_0045

    IL_01ea:  ldloc.s    V_4
    IL_01ec:  ldc.i4.1
    IL_01ed:  add
    IL_01ee:  stloc.s    V_4
    IL_01f0:  ldloc.s    V_4
    IL_01f2:  ldc.i4.2
    IL_01f3:  ble        IL_003d

    IL_01f8:  ldloc.1
    IL_01f9:  ldc.i4.1
    IL_01fa:  add
    IL_01fb:  stloc.1
    IL_01fc:  ldloc.1
    IL_01fd:  ldc.i4.2
    IL_01fe:  blt        IL_0012

    IL_0203:  ret
  } // end of method PistonHeadBlock::Initialize

  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  call       int32 Game.PistonHeadBlock::GetFace(int32)
    IL_000e:  ceq
    IL_0010:  ldc.i4.0
    IL_0011:  ceq
    IL_0013:  ret
  } // end of method PistonHeadBlock::IsFaceTransparent

  .method public hidebysig virtual instance int32 
          GetShadowStrength(int32 'value') cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.PistonHeadBlock::GetIsShaft(int32)
    IL_000b:  brtrue.s   IL_0015

    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  call       instance int32 Game.Block::GetShadowStrength(int32)
    IL_0014:  ret

    IL_0015:  ldc.i4.0
    IL_0016:  ret
  } // end of method PistonHeadBlock::GetShadowStrength

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  10
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.PistonHeadBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_0046

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.BlockMesh[] Game.PistonHeadBlock::m_blockMeshesByData
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  brfalse.s  IL_0046

    IL_001c:  ldarg.1
    IL_001d:  ldarg.0
    IL_001e:  ldarg.s    x
    IL_0020:  ldarg.s    y
    IL_0022:  ldarg.s    z
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.BlockMesh[] Game.PistonHeadBlock::m_blockMeshesByData
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
    IL_0046:  ret
  } // end of method PistonHeadBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method PistonHeadBlock::DrawBlock

  .method public hidebysig static valuetype Game.PistonMode 
          GetMode(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method PistonHeadBlock::GetMode

  .method public hidebysig static int32  SetMode(int32 data,
                                                 valuetype Game.PistonMode mode) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -4
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.3
    IL_0006:  and
    IL_0007:  or
    IL_0008:  ret
  } // end of method PistonHeadBlock::SetMode

  .method public hidebysig static bool  GetIsShaft(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method PistonHeadBlock::GetIsShaft

  .method public hidebysig static int32  SetIsShaft(int32 data,
                                                    bool isShaft) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -5
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  brtrue.s   IL_000a

    IL_0007:  ldc.i4.0
    IL_0008:  br.s       IL_000b

    IL_000a:  ldc.i4.4
    IL_000b:  or
    IL_000c:  ret
  } // end of method PistonHeadBlock::SetIsShaft

  .method public hidebysig static int32  GetFace(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  shr
    IL_0003:  ldc.i4.7
    IL_0004:  and
    IL_0005:  ret
  } // end of method PistonHeadBlock::GetFace

  .method public hidebysig static int32  SetFace(int32 data,
                                                 int32 face) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -57
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.7
    IL_0006:  and
    IL_0007:  ldc.i4.3
    IL_0008:  shl
    IL_0009:  or
    IL_000a:  ret
  } // end of method PistonHeadBlock::SetFace

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   48
    IL_0003:  newarr     Game.BlockMesh
    IL_0008:  stfld      class Game.BlockMesh[] Game.PistonHeadBlock::m_blockMeshesByData
    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.Block::.ctor()
    IL_0013:  ret
  } // end of method PistonHeadBlock::.ctor

} // end of class Game.PistonHeadBlock