.class public auto ansi beforefieldinit Game.StarfishBlock
       extends Game.BottomSuckerBlock
{
  .field public static literal int32 Index = int32(0x000000E5)
  .field private class Game.BlockMesh[] m_blockMeshes
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .field private static valuetype [Engine]Engine.Color[] m_colors
  .field private static valuetype [Engine]Engine.Vector2[] m_offsets
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       688 (0x2b0)
    .maxstack  8
    .locals init (int32 V_0,
             class [Engine]Engine.Graphics.Model V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             int32 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Matrix V_7,
             int32 V_8,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_9)
    IL_0000:  ldc.i4.s   63
    IL_0002:  stloc.0
    IL_0003:  ldstr      "Models/Starfish"
    IL_0008:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  ldstr      "Starfish"
    IL_0014:  ldc.i4.1
    IL_0015:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_001a:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001f:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0024:  stloc.2
    IL_0025:  ldloc.1
    IL_0026:  ldstr      "Bottom"
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0031:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0036:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_003b:  stloc.3
    IL_003c:  ldc.i4.0
    IL_003d:  stloc.s    V_4
    IL_003f:  br         IL_01d8

    IL_0044:  ldc.i4.0
    IL_0045:  stloc.s    V_5
    IL_0047:  br         IL_01ca

    IL_004c:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0051:  stloc.s    V_6
    IL_0053:  ldloc.s    V_4
    IL_0055:  ldc.i4.4
    IL_0056:  bge.s      IL_0070

    IL_0058:  ldloca.s   V_6
    IL_005a:  ldloc.s    V_4
    IL_005c:  conv.r4
    IL_005d:  ldc.r4     3.1415927
    IL_0062:  mul
    IL_0063:  ldc.r4     2.
    IL_0068:  div
    IL_0069:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_006e:  br.s       IL_008f

    IL_0070:  ldloc.s    V_4
    IL_0072:  ldc.i4.4
    IL_0073:  bne.un.s   IL_0083

    IL_0075:  ldloca.s   V_6
    IL_0077:  ldc.r4     -1.5707964
    IL_007c:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0081:  br.s       IL_008f

    IL_0083:  ldloca.s   V_6
    IL_0085:  ldc.r4     1.5707964
    IL_008a:  stfld      float32 [Engine]Engine.Vector2::X
    IL_008f:  ldc.r4     1.5707964
    IL_0094:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0099:  ldc.r4     0.30000001
    IL_009e:  ldc.r4     2.
    IL_00a3:  ldloc.s    V_5
    IL_00a5:  conv.r4
    IL_00a6:  mul
    IL_00a7:  add
    IL_00a8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_00ad:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b2:  ldsfld     valuetype [Engine]Engine.Vector2[] Game.StarfishBlock::m_offsets
    IL_00b7:  ldloc.s    V_5
    IL_00b9:  ldelema    [Engine]Engine.Vector2
    IL_00be:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00c3:  ldsfld     valuetype [Engine]Engine.Vector2[] Game.StarfishBlock::m_offsets
    IL_00c8:  ldloc.s    V_5
    IL_00ca:  ldelema    [Engine]Engine.Vector2
    IL_00cf:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00d4:  ldc.r4     -0.49000001
    IL_00d9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00de:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e3:  ldloc.s    V_6
    IL_00e5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00ea:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00ef:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f4:  ldloc.s    V_6
    IL_00f6:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00fb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0100:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0105:  ldc.r4     0.5
    IL_010a:  ldc.r4     0.5
    IL_010f:  ldc.r4     0.5
    IL_0114:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0119:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_011e:  stloc.s    V_7
    IL_0120:  ldc.i4.4
    IL_0121:  ldloc.s    V_4
    IL_0123:  mul
    IL_0124:  ldloc.s    V_5
    IL_0126:  add
    IL_0127:  stloc.s    V_8
    IL_0129:  ldarg.0
    IL_012a:  ldfld      class Game.BlockMesh[] Game.StarfishBlock::m_blockMeshes
    IL_012f:  ldloc.s    V_8
    IL_0131:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0136:  stelem.ref
    IL_0137:  ldarg.0
    IL_0138:  ldfld      class Game.BlockMesh[] Game.StarfishBlock::m_blockMeshes
    IL_013d:  ldloc.s    V_8
    IL_013f:  ldelem.ref
    IL_0140:  ldloc.1
    IL_0141:  ldstr      "Starfish"
    IL_0146:  ldc.i4.1
    IL_0147:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_014c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0151:  stloc.s    V_9
    IL_0153:  ldloca.s   V_9
    IL_0155:  ldc.i4.0
    IL_0156:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_015b:  ldloc.2
    IL_015c:  ldloc.s    V_7
    IL_015e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0163:  ldc.i4.0
    IL_0164:  ldc.i4.0
    IL_0165:  ldc.i4.0
    IL_0166:  ldc.i4.0
    IL_0167:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_016c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0171:  ldarg.0
    IL_0172:  ldfld      class Game.BlockMesh[] Game.StarfishBlock::m_blockMeshes
    IL_0177:  ldloc.s    V_8
    IL_0179:  ldelem.ref
    IL_017a:  ldloc.0
    IL_017b:  ldc.i4.s   16
    IL_017d:  rem
    IL_017e:  conv.r4
    IL_017f:  ldc.r4     16.
    IL_0184:  div
    IL_0185:  ldloc.0
    IL_0186:  ldc.i4.s   16
    IL_0188:  div
    IL_0189:  conv.r4
    IL_018a:  ldc.r4     16.
    IL_018f:  div
    IL_0190:  ldc.r4     0.0
    IL_0195:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_019a:  ldc.i4.m1
    IL_019b:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_01a0:  ldarg.0
    IL_01a1:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StarfishBlock::m_collisionBoxes
    IL_01a6:  ldloc.s    V_8
    IL_01a8:  ldc.i4.1
    IL_01a9:  newarr     [Engine]Engine.BoundingBox
    IL_01ae:  dup
    IL_01af:  ldc.i4.0
    IL_01b0:  ldarg.0
    IL_01b1:  ldfld      class Game.BlockMesh[] Game.StarfishBlock::m_blockMeshes
    IL_01b6:  ldloc.s    V_8
    IL_01b8:  ldelem.ref
    IL_01b9:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_01be:  stelem     [Engine]Engine.BoundingBox
    IL_01c3:  stelem.ref
    IL_01c4:  ldloc.s    V_5
    IL_01c6:  ldc.i4.1
    IL_01c7:  add
    IL_01c8:  stloc.s    V_5
    IL_01ca:  ldloc.s    V_5
    IL_01cc:  ldc.i4.4
    IL_01cd:  blt        IL_004c

    IL_01d2:  ldloc.s    V_4
    IL_01d4:  ldc.i4.1
    IL_01d5:  add
    IL_01d6:  stloc.s    V_4
    IL_01d8:  ldloc.s    V_4
    IL_01da:  ldc.i4.6
    IL_01db:  blt        IL_0044

    IL_01e0:  ldarg.0
    IL_01e1:  newobj     instance void Game.BlockMesh::.ctor()
    IL_01e6:  stfld      class Game.BlockMesh Game.StarfishBlock::m_standaloneBlockMesh
    IL_01eb:  ldarg.0
    IL_01ec:  ldfld      class Game.BlockMesh Game.StarfishBlock::m_standaloneBlockMesh
    IL_01f1:  ldloc.1
    IL_01f2:  ldstr      "Starfish"
    IL_01f7:  ldc.i4.1
    IL_01f8:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01fd:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0202:  stloc.s    V_9
    IL_0204:  ldloca.s   V_9
    IL_0206:  ldc.i4.0
    IL_0207:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_020c:  ldloc.2
    IL_020d:  ldc.r4     0.0
    IL_0212:  ldc.r4     -0.1
    IL_0217:  ldc.r4     0.0
    IL_021c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0221:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0226:  ldc.i4.0
    IL_0227:  ldc.i4.0
    IL_0228:  ldc.i4.0
    IL_0229:  ldc.i4.0
    IL_022a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_022f:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0234:  ldarg.0
    IL_0235:  ldfld      class Game.BlockMesh Game.StarfishBlock::m_standaloneBlockMesh
    IL_023a:  ldloc.1
    IL_023b:  ldstr      "Bottom"
    IL_0240:  ldc.i4.1
    IL_0241:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0246:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_024b:  stloc.s    V_9
    IL_024d:  ldloca.s   V_9
    IL_024f:  ldc.i4.0
    IL_0250:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0255:  ldloc.3
    IL_0256:  ldc.r4     0.0
    IL_025b:  ldc.r4     -0.1
    IL_0260:  ldc.r4     0.0
    IL_0265:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_026a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_026f:  ldc.i4.0
    IL_0270:  ldc.i4.0
    IL_0271:  ldc.i4.0
    IL_0272:  ldc.i4.0
    IL_0273:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0278:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_027d:  ldarg.0
    IL_027e:  ldfld      class Game.BlockMesh Game.StarfishBlock::m_standaloneBlockMesh
    IL_0283:  ldloc.0
    IL_0284:  ldc.i4.s   16
    IL_0286:  rem
    IL_0287:  conv.r4
    IL_0288:  ldc.r4     16.
    IL_028d:  div
    IL_028e:  ldloc.0
    IL_028f:  ldc.i4.s   16
    IL_0291:  div
    IL_0292:  conv.r4
    IL_0293:  ldc.r4     16.
    IL_0298:  div
    IL_0299:  ldc.r4     0.0
    IL_029e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_02a3:  ldc.i4.m1
    IL_02a4:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_02a9:  ldarg.0
    IL_02aa:  call       instance void Game.FluidBlock::Initialize()
    IL_02af:  ret
  } // end of method StarfishBlock::Initialize

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.BottomSuckerBlock::GetFace(int32)
    IL_000c:  stloc.0
    IL_000d:  call       int32 Game.BottomSuckerBlock::GetSubvariant(int32)
    IL_0012:  stloc.1
    IL_0013:  ldarg.0
    IL_0014:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StarfishBlock::m_collisionBoxes
    IL_0019:  ldc.i4.4
    IL_001a:  ldloc.0
    IL_001b:  mul
    IL_001c:  ldloc.1
    IL_001d:  add
    IL_001e:  ldelem.ref
    IL_001f:  ret
  } // end of method StarfishBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Color V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_3)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.BottomSuckerBlock::GetFace(int32)
    IL_000c:  stloc.0
    IL_000d:  call       int32 Game.BottomSuckerBlock::GetSubvariant(int32)
    IL_0012:  stloc.1
    IL_0013:  ldsfld     valuetype [Engine]Engine.Color[] Game.StarfishBlock::m_colors
    IL_0018:  ldloc.1
    IL_0019:  ldelem     [Engine]Engine.Color
    IL_001e:  stloc.2
    IL_001f:  ldarg.1
    IL_0020:  ldarg.0
    IL_0021:  ldarg.s    x
    IL_0023:  ldarg.s    y
    IL_0025:  ldarg.s    z
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.BlockMesh[] Game.StarfishBlock::m_blockMeshes
    IL_002d:  ldc.i4.4
    IL_002e:  ldloc.0
    IL_002f:  mul
    IL_0030:  ldloc.1
    IL_0031:  add
    IL_0032:  ldelem.ref
    IL_0033:  ldloc.2
    IL_0034:  ldloca.s   V_3
    IL_0036:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_003c:  ldloc.3
    IL_003d:  ldarg.2
    IL_003e:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0043:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  ldarg.2
    IL_004b:  ldarg.3
    IL_004c:  ldarg.s    x
    IL_004e:  ldarg.s    y
    IL_0050:  ldarg.s    z
    IL_0052:  call       instance void Game.WaterBlock::GenerateTerrainVertices(class Game.BlockGeometryGenerator,
                                                                                class Game.TerrainGeometrySubsets,
                                                                                int32,
                                                                                int32,
                                                                                int32,
                                                                                int32)
    IL_0057:  ret
  } // end of method StarfishBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.BlockMesh Game.StarfishBlock::m_standaloneBlockMesh
    IL_0007:  ldsfld     valuetype [Engine]Engine.Color[] Game.StarfishBlock::m_colors
    IL_000c:  ldc.i4.0
    IL_000d:  ldelem     [Engine]Engine.Color
    IL_0012:  ldc.r4     3.
    IL_0017:  ldarg.3
    IL_0018:  mul
    IL_0019:  ldarg.s    matrix
    IL_001b:  ldarg.s    environmentData
    IL_001d:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0022:  ret
  } // end of method StarfishBlock::DrawBlock

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain terrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldc.r4     0.75
    IL_0007:  ldarg.s    strength
    IL_0009:  mul
    IL_000a:  ldarg.0
    IL_000b:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0010:  ldc.i4.s   64
    IL_0012:  ldc.i4.s   64
    IL_0014:  ldc.i4.s   64
    IL_0016:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_001b:  ldarg.0
    IL_001c:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0021:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0026:  ret
  } // end of method StarfishBlock::CreateDebrisParticleSystem

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   24
    IL_0003:  newarr     Game.BlockMesh
    IL_0008:  stfld      class Game.BlockMesh[] Game.StarfishBlock::m_blockMeshes
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.s   24
    IL_0010:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0015:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.StarfishBlock::m_collisionBoxes
    IL_001a:  ldarg.0
    IL_001b:  call       instance void Game.BottomSuckerBlock::.ctor()
    IL_0020:  ret
  } // end of method StarfishBlock::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       223 (0xdf)
    .maxstack  6
    IL_0000:  ldc.i4.4
    IL_0001:  newarr     [Engine]Engine.Color
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   100
    IL_000a:  ldc.i4.s   40
    IL_000c:  ldc.i4.s   20
    IL_000e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0013:  stelem     [Engine]Engine.Color
    IL_0018:  dup
    IL_0019:  ldc.i4.1
    IL_001a:  ldc.i4.s   90
    IL_001c:  ldc.i4.s   30
    IL_001e:  ldc.i4.s   20
    IL_0020:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0025:  stelem     [Engine]Engine.Color
    IL_002a:  dup
    IL_002b:  ldc.i4.2
    IL_002c:  ldc.i4.s   100
    IL_002e:  ldc.i4.s   30
    IL_0030:  ldc.i4.s   30
    IL_0032:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0037:  stelem     [Engine]Engine.Color
    IL_003c:  dup
    IL_003d:  ldc.i4.3
    IL_003e:  ldc.i4.s   80
    IL_0040:  ldc.i4.s   20
    IL_0042:  ldc.i4.s   10
    IL_0044:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0049:  stelem     [Engine]Engine.Color
    IL_004e:  stsfld     valuetype [Engine]Engine.Color[] Game.StarfishBlock::m_colors
    IL_0053:  ldc.i4.4
    IL_0054:  newarr     [Engine]Engine.Vector2
    IL_0059:  dup
    IL_005a:  ldc.i4.0
    IL_005b:  ldc.r4     0.15000001
    IL_0060:  ldc.r4     -0.80000001
    IL_0065:  ldc.r4     -1.
    IL_006a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_006f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0074:  stelem     [Engine]Engine.Vector2
    IL_0079:  dup
    IL_007a:  ldc.i4.1
    IL_007b:  ldc.r4     0.15000001
    IL_0080:  ldc.r4     1.
    IL_0085:  ldc.r4     -0.75
    IL_008a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_008f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0094:  stelem     [Engine]Engine.Vector2
    IL_0099:  dup
    IL_009a:  ldc.i4.2
    IL_009b:  ldc.r4     0.15000001
    IL_00a0:  ldc.r4     -0.64999998
    IL_00a5:  ldc.r4     1.
    IL_00aa:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00af:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00b4:  stelem     [Engine]Engine.Vector2
    IL_00b9:  dup
    IL_00ba:  ldc.i4.3
    IL_00bb:  ldc.r4     0.15000001
    IL_00c0:  ldc.r4     0.89999998
    IL_00c5:  ldc.r4     0.69999999
    IL_00ca:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00cf:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00d4:  stelem     [Engine]Engine.Vector2
    IL_00d9:  stsfld     valuetype [Engine]Engine.Vector2[] Game.StarfishBlock::m_offsets
    IL_00de:  ret
  } // end of method StarfishBlock::.cctor

} // end of class Game.StarfishBlock