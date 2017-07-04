.class public auto ansi beforefieldinit Game.BowBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x000000BF)
  .field private class Game.BlockMesh[] m_standaloneBlockMeshes
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       478 (0x1de)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Matrix V_4,
             class Game.BlockMesh V_5,
             class Game.BlockMesh V_6,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_7,
             int32 V_8,
             float32 V_9)
    IL_0000:  ldstr      "Models/Bows"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "BowRelaxed"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "StringRelaxed"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldloc.0
    IL_003a:  ldstr      "BowTensed"
    IL_003f:  ldc.i4.1
    IL_0040:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0045:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_004a:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_004f:  stloc.3
    IL_0050:  ldloc.0
    IL_0051:  ldstr      "StringTensed"
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_005c:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0061:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0066:  stloc.s    V_4
    IL_0068:  newobj     instance void Game.BlockMesh::.ctor()
    IL_006d:  stloc.s    V_5
    IL_006f:  ldloc.s    V_5
    IL_0071:  ldloc.0
    IL_0072:  ldstr      "BowRelaxed"
    IL_0077:  ldc.i4.1
    IL_0078:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_007d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0082:  stloc.s    V_7
    IL_0084:  ldloca.s   V_7
    IL_0086:  ldc.i4.0
    IL_0087:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_008c:  ldloc.1
    IL_008d:  ldc.r4     0.0
    IL_0092:  ldc.r4     -0.5
    IL_0097:  ldc.r4     0.0
    IL_009c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00a1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldc.i4.0
    IL_00a8:  ldc.i4.0
    IL_00a9:  ldc.i4.0
    IL_00aa:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00af:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00b4:  ldloc.s    V_5
    IL_00b6:  ldloc.0
    IL_00b7:  ldstr      "StringRelaxed"
    IL_00bc:  ldc.i4.1
    IL_00bd:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00c2:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00c7:  stloc.s    V_7
    IL_00c9:  ldloca.s   V_7
    IL_00cb:  ldc.i4.0
    IL_00cc:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00d1:  ldloc.2
    IL_00d2:  ldc.r4     0.0
    IL_00d7:  ldc.r4     -0.5
    IL_00dc:  ldc.r4     0.0
    IL_00e1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00e6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00eb:  ldc.i4.0
    IL_00ec:  ldc.i4.0
    IL_00ed:  ldc.i4.0
    IL_00ee:  ldc.i4.0
    IL_00ef:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00f4:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00f9:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00fe:  stloc.s    V_6
    IL_0100:  ldloc.s    V_6
    IL_0102:  ldloc.0
    IL_0103:  ldstr      "BowTensed"
    IL_0108:  ldc.i4.1
    IL_0109:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_010e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0113:  stloc.s    V_7
    IL_0115:  ldloca.s   V_7
    IL_0117:  ldc.i4.0
    IL_0118:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_011d:  ldloc.3
    IL_011e:  ldc.r4     0.0
    IL_0123:  ldc.r4     -0.5
    IL_0128:  ldc.r4     0.0
    IL_012d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0132:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0137:  ldc.i4.0
    IL_0138:  ldc.i4.0
    IL_0139:  ldc.i4.0
    IL_013a:  ldc.i4.0
    IL_013b:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0140:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0145:  ldloc.s    V_6
    IL_0147:  ldloc.0
    IL_0148:  ldstr      "StringTensed"
    IL_014d:  ldc.i4.1
    IL_014e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0153:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0158:  stloc.s    V_7
    IL_015a:  ldloca.s   V_7
    IL_015c:  ldc.i4.0
    IL_015d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0162:  ldloc.s    V_4
    IL_0164:  ldc.r4     0.0
    IL_0169:  ldc.r4     -0.5
    IL_016e:  ldc.r4     0.0
    IL_0173:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0178:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_017d:  ldc.i4.0
    IL_017e:  ldc.i4.0
    IL_017f:  ldc.i4.0
    IL_0180:  ldc.i4.0
    IL_0181:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0186:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_018b:  ldc.i4.0
    IL_018c:  stloc.s    V_8
    IL_018e:  br.s       IL_01d1

    IL_0190:  ldloc.s    V_8
    IL_0192:  conv.r4
    IL_0193:  ldc.r4     15.
    IL_0198:  div
    IL_0199:  stloc.s    V_9
    IL_019b:  ldarg.0
    IL_019c:  ldfld      class Game.BlockMesh[] Game.BowBlock::m_standaloneBlockMeshes
    IL_01a1:  ldloc.s    V_8
    IL_01a3:  newobj     instance void Game.BlockMesh::.ctor()
    IL_01a8:  stelem.ref
    IL_01a9:  ldarg.0
    IL_01aa:  ldfld      class Game.BlockMesh[] Game.BowBlock::m_standaloneBlockMeshes
    IL_01af:  ldloc.s    V_8
    IL_01b1:  ldelem.ref
    IL_01b2:  ldloc.s    V_5
    IL_01b4:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_01b9:  ldarg.0
    IL_01ba:  ldfld      class Game.BlockMesh[] Game.BowBlock::m_standaloneBlockMeshes
    IL_01bf:  ldloc.s    V_8
    IL_01c1:  ldelem.ref
    IL_01c2:  ldloc.s    V_6
    IL_01c4:  ldloc.s    V_9
    IL_01c6:  callvirt   instance void Game.BlockMesh::BlendBlockMesh(class Game.BlockMesh,
                                                                      float32)
    IL_01cb:  ldloc.s    V_8
    IL_01cd:  ldc.i4.1
    IL_01ce:  add
    IL_01cf:  stloc.s    V_8
    IL_01d1:  ldloc.s    V_8
    IL_01d3:  ldc.i4.s   16
    IL_01d5:  blt.s      IL_0190

    IL_01d7:  ldarg.0
    IL_01d8:  call       instance void Game.Block::Initialize()
    IL_01dd:  ret
  } // end of method BowBlock::Initialize

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
  } // end of method BowBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       197 (0xc5)
    .maxstack  7
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_1,
             float32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.BowBlock::GetDraw(int32)
    IL_000c:  stloc.0
    IL_000d:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.BowBlock::GetArrowType(int32)
    IL_0012:  stloc.1
    IL_0013:  ldarg.1
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.BlockMesh[] Game.BowBlock::m_standaloneBlockMeshes
    IL_001a:  ldloc.0
    IL_001b:  ldelem.ref
    IL_001c:  ldarg.3
    IL_001d:  ldc.r4     2.
    IL_0022:  ldarg.s    size
    IL_0024:  mul
    IL_0025:  ldarg.s    matrix
    IL_0027:  ldarg.s    environmentData
    IL_0029:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_002e:  ldloca.s   V_1
    IL_0030:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_0035:  brfalse    IL_00c4

    IL_003a:  ldc.r4     0.14
    IL_003f:  ldc.r4     0.68000001
    IL_0044:  ldloc.0
    IL_0045:  conv.r4
    IL_0046:  ldc.r4     15.
    IL_004b:  div
    IL_004c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0051:  stloc.2
    IL_0052:  ldc.r4     -1.5707964
    IL_0057:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_005c:  ldc.r4     0.0
    IL_0061:  ldc.r4     0.40000001
    IL_0066:  ldarg.s    size
    IL_0068:  mul
    IL_0069:  ldc.r4     -1.
    IL_006e:  ldc.r4     2.
    IL_0073:  ldloc.2
    IL_0074:  mul
    IL_0075:  add
    IL_0076:  ldarg.s    size
    IL_0078:  mul
    IL_0079:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0083:  ldarg.s    matrix
    IL_0085:  ldobj      [Engine]Engine.Matrix
    IL_008a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_008f:  stloc.3
    IL_0090:  ldc.i4     0xc0
    IL_0095:  ldc.i4.0
    IL_0096:  ldc.i4.0
    IL_0097:  ldloca.s   V_1
    IL_0099:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_Value()
    IL_009e:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_00a3:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_00a8:  stloc.s    V_4
    IL_00aa:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00af:  ldc.i4     0xc0
    IL_00b4:  ldelem.ref
    IL_00b5:  ldarg.1
    IL_00b6:  ldloc.s    V_4
    IL_00b8:  ldarg.3
    IL_00b9:  ldarg.s    size
    IL_00bb:  ldloca.s   V_3
    IL_00bd:  ldarg.s    environmentData
    IL_00bf:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                             int32,
                                                             valuetype [Engine]Engine.Color,
                                                             float32,
                                                             valuetype [Engine]Engine.Matrix&,
                                                             class Game.DrawBlockEnvironmentData)
    IL_00c4:  ret
  } // end of method BowBlock::DrawBlock

  .method public hidebysig virtual instance int32 
          GetDamage(int32 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldc.i4.8
    IL_0007:  shr
    IL_0008:  ldc.i4     0xff
    IL_000d:  and
    IL_000e:  ret
  } // end of method BowBlock::GetDamage

  .method public hidebysig virtual instance int32 
          SetDamage(int32 'value',
                    int32 damage) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4     0xffff00ff
    IL_000d:  and
    IL_000e:  stloc.0
    IL_000f:  ldloc.0
    IL_0010:  ldarg.2
    IL_0011:  ldc.i4.0
    IL_0012:  ldc.i4     0xff
    IL_0017:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_001c:  ldc.i4.8
    IL_001d:  shl
    IL_001e:  or
    IL_001f:  stloc.0
    IL_0020:  ldarg.1
    IL_0021:  ldloc.0
    IL_0022:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0027:  ret
  } // end of method BowBlock::SetDamage

  .method public hidebysig virtual instance bool 
          IsSwapAnimationNeeded(int32 oldValue,
                                int32 newValue) cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_3)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  ldarg.1
    IL_0007:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000c:  stloc.0
    IL_000d:  ldarg.2
    IL_000e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0013:  stloc.1
    IL_0014:  ldc.i4     0xbf
    IL_0019:  bne.un.s   IL_0050

    IL_001b:  ldloc.0
    IL_001c:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.BowBlock::GetArrowType(int32)
    IL_0021:  stloc.2
    IL_0022:  ldloc.1
    IL_0023:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.BowBlock::GetArrowType(int32)
    IL_0028:  stloc.3
    IL_0029:  ldloca.s   V_2
    IL_002b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::GetValueOrDefault()
    IL_0030:  ldloca.s   V_3
    IL_0032:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::GetValueOrDefault()
    IL_0037:  beq.s      IL_003c

    IL_0039:  ldc.i4.0
    IL_003a:  br.s       IL_004c

    IL_003c:  ldloca.s   V_2
    IL_003e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_0043:  ldloca.s   V_3
    IL_0045:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_004a:  ceq
    IL_004c:  brfalse.s  IL_0050

    IL_004e:  ldc.i4.0
    IL_004f:  ret

    IL_0050:  ldc.i4.1
    IL_0051:  ret
  } // end of method BowBlock::IsSwapAnimationNeeded

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> 
          GetArrowType(int32 data) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  shr
    IL_0003:  ldc.i4.s   15
    IL_0005:  and
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0013

    IL_000a:  ldloc.0
    IL_000b:  ldc.i4.1
    IL_000c:  sub
    IL_000d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::.ctor(!0)
    IL_0012:  ret

    IL_0013:  ldloca.s   V_1
    IL_0015:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>
    IL_001b:  ldloc.1
    IL_001c:  ret
  } // end of method BowBlock::GetArrowType

  .method public hidebysig static int32  SetArrowType(int32 data,
                                                      valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> arrowType) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarga.s   arrowType
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_0007:  brtrue.s   IL_000c

    IL_0009:  ldc.i4.0
    IL_000a:  br.s       IL_0015

    IL_000c:  ldarga.s   arrowType
    IL_000e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_Value()
    IL_0013:  ldc.i4.1
    IL_0014:  add
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4     0xffffff0f
    IL_001c:  and
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.s   15
    IL_0020:  and
    IL_0021:  ldc.i4.4
    IL_0022:  shl
    IL_0023:  or
    IL_0024:  ret
  } // end of method BowBlock::SetArrowType

  .method public hidebysig static int32  GetDraw(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   15
    IL_0003:  and
    IL_0004:  ret
  } // end of method BowBlock::GetDraw

  .method public hidebysig static int32  SetDraw(int32 data,
                                                 int32 draw) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -16
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.s   15
    IL_0007:  and
    IL_0008:  or
    IL_0009:  ret
  } // end of method BowBlock::SetDraw

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  newarr     Game.BlockMesh
    IL_0008:  stfld      class Game.BlockMesh[] Game.BowBlock::m_standaloneBlockMeshes
    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.Block::.ctor()
    IL_0013:  ret
  } // end of method BowBlock::.ctor

} // end of class Game.BowBlock