.class public auto ansi beforefieldinit Game.SeaUrchinBlock
       extends Game.BottomSuckerBlock
{
  .field public static literal int32 Index = int32(0x000000E2)
  .field private class Game.BlockMesh[] m_blockMeshes
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .field private static valuetype [Engine]Engine.Color[] m_colors
  .field private static valuetype [Engine]Engine.Vector2[] m_offsets
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       586 (0x24a)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Matrix V_6,
             int32 V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_8)
    IL_0000:  ldstr      "Models/SeaUrchin"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Urchin"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Bottom"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldc.i4.0
    IL_003a:  stloc.3
    IL_003b:  br         IL_019f

    IL_0040:  ldc.i4.0
    IL_0041:  stloc.s    V_4
    IL_0043:  br         IL_0193

    IL_0048:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_004d:  stloc.s    V_5
    IL_004f:  ldloc.3
    IL_0050:  ldc.i4.4
    IL_0051:  bge.s      IL_006a

    IL_0053:  ldloca.s   V_5
    IL_0055:  ldloc.3
    IL_0056:  conv.r4
    IL_0057:  ldc.r4     3.1415927
    IL_005c:  mul
    IL_005d:  ldc.r4     2.
    IL_0062:  div
    IL_0063:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0068:  br.s       IL_0088

    IL_006a:  ldloc.3
    IL_006b:  ldc.i4.4
    IL_006c:  bne.un.s   IL_007c

    IL_006e:  ldloca.s   V_5
    IL_0070:  ldc.r4     -1.5707964
    IL_0075:  stfld      float32 [Engine]Engine.Vector2::X
    IL_007a:  br.s       IL_0088

    IL_007c:  ldloca.s   V_5
    IL_007e:  ldc.r4     1.5707964
    IL_0083:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0088:  ldc.r4     1.5707964
    IL_008d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0092:  ldc.r4     0.30000001
    IL_0097:  ldc.r4     2.
    IL_009c:  ldloc.s    V_4
    IL_009e:  conv.r4
    IL_009f:  mul
    IL_00a0:  add
    IL_00a1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_00a6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ab:  ldsfld     valuetype [Engine]Engine.Vector2[] Game.SeaUrchinBlock::m_offsets
    IL_00b0:  ldloc.s    V_4
    IL_00b2:  ldelema    [Engine]Engine.Vector2
    IL_00b7:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00bc:  ldsfld     valuetype [Engine]Engine.Vector2[] Game.SeaUrchinBlock::m_offsets
    IL_00c1:  ldloc.s    V_4
    IL_00c3:  ldelema    [Engine]Engine.Vector2
    IL_00c8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00cd:  ldc.r4     -0.49000001
    IL_00d2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00dc:  ldloc.s    V_5
    IL_00de:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00e8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ed:  ldloc.s    V_5
    IL_00ef:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00f4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00f9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00fe:  ldc.r4     0.5
    IL_0103:  ldc.r4     0.5
    IL_0108:  ldc.r4     0.5
    IL_010d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0112:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0117:  stloc.s    V_6
    IL_0119:  ldc.i4.4
    IL_011a:  ldloc.3
    IL_011b:  mul
    IL_011c:  ldloc.s    V_4
    IL_011e:  add
    IL_011f:  stloc.s    V_7
    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.BlockMesh[] Game.SeaUrchinBlock::m_blockMeshes
    IL_0127:  ldloc.s    V_7
    IL_0129:  newobj     instance void Game.BlockMesh::.ctor()
    IL_012e:  stelem.ref
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.BlockMesh[] Game.SeaUrchinBlock::m_blockMeshes
    IL_0135:  ldloc.s    V_7
    IL_0137:  ldelem.ref
    IL_0138:  ldloc.0
    IL_0139:  ldstr      "Urchin"
    IL_013e:  ldc.i4.1
    IL_013f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0144:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0149:  stloc.s    V_8
    IL_014b:  ldloca.s   V_8
    IL_014d:  ldc.i4.0
    IL_014e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0153:  ldloc.1
    IL_0154:  ldloc.s    V_6
    IL_0156:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_015b:  ldc.i4.0
    IL_015c:  ldc.i4.0
    IL_015d:  ldc.i4.0
    IL_015e:  ldc.i4.0
    IL_015f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0164:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0169:  ldarg.0
    IL_016a:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SeaUrchinBlock::m_collisionBoxes
    IL_016f:  ldloc.s    V_7
    IL_0171:  ldc.i4.1
    IL_0172:  newarr     [Engine]Engine.BoundingBox
    IL_0177:  dup
    IL_0178:  ldc.i4.0
    IL_0179:  ldarg.0
    IL_017a:  ldfld      class Game.BlockMesh[] Game.SeaUrchinBlock::m_blockMeshes
    IL_017f:  ldloc.s    V_7
    IL_0181:  ldelem.ref
    IL_0182:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_0187:  stelem     [Engine]Engine.BoundingBox
    IL_018c:  stelem.ref
    IL_018d:  ldloc.s    V_4
    IL_018f:  ldc.i4.1
    IL_0190:  add
    IL_0191:  stloc.s    V_4
    IL_0193:  ldloc.s    V_4
    IL_0195:  ldc.i4.4
    IL_0196:  blt        IL_0048

    IL_019b:  ldloc.3
    IL_019c:  ldc.i4.1
    IL_019d:  add
    IL_019e:  stloc.3
    IL_019f:  ldloc.3
    IL_01a0:  ldc.i4.6
    IL_01a1:  blt        IL_0040

    IL_01a6:  ldarg.0
    IL_01a7:  newobj     instance void Game.BlockMesh::.ctor()
    IL_01ac:  stfld      class Game.BlockMesh Game.SeaUrchinBlock::m_standaloneBlockMesh
    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      class Game.BlockMesh Game.SeaUrchinBlock::m_standaloneBlockMesh
    IL_01b7:  ldloc.0
    IL_01b8:  ldstr      "Urchin"
    IL_01bd:  ldc.i4.1
    IL_01be:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01c3:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01c8:  stloc.s    V_8
    IL_01ca:  ldloca.s   V_8
    IL_01cc:  ldc.i4.0
    IL_01cd:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01d2:  ldloc.1
    IL_01d3:  ldc.r4     0.0
    IL_01d8:  ldc.r4     -0.1
    IL_01dd:  ldc.r4     0.0
    IL_01e2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01e7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01ec:  ldc.i4.0
    IL_01ed:  ldc.i4.0
    IL_01ee:  ldc.i4.0
    IL_01ef:  ldc.i4.0
    IL_01f0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01f5:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01fa:  ldarg.0
    IL_01fb:  ldfld      class Game.BlockMesh Game.SeaUrchinBlock::m_standaloneBlockMesh
    IL_0200:  ldloc.0
    IL_0201:  ldstr      "Bottom"
    IL_0206:  ldc.i4.1
    IL_0207:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_020c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0211:  stloc.s    V_8
    IL_0213:  ldloca.s   V_8
    IL_0215:  ldc.i4.0
    IL_0216:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_021b:  ldloc.2
    IL_021c:  ldc.r4     0.0
    IL_0221:  ldc.r4     -0.1
    IL_0226:  ldc.r4     0.0
    IL_022b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0230:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0235:  ldc.i4.0
    IL_0236:  ldc.i4.0
    IL_0237:  ldc.i4.0
    IL_0238:  ldc.i4.0
    IL_0239:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_023e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0243:  ldarg.0
    IL_0244:  call       instance void Game.FluidBlock::Initialize()
    IL_0249:  ret
  } // end of method SeaUrchinBlock::Initialize

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.BottomSuckerBlock::GetFace(int32)
    IL_000c:  stloc.0
    IL_000d:  call       int32 Game.BottomSuckerBlock::GetSubvariant(int32)
    IL_0012:  stloc.1
    IL_0013:  ldarg.0
    IL_0014:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SeaUrchinBlock::m_collisionBoxes
    IL_0019:  ldc.i4.4
    IL_001a:  ldloc.0
    IL_001b:  mul
    IL_001c:  ldloc.1
    IL_001d:  add
    IL_001e:  ldelem.ref
    IL_001f:  ret
  } // end of method SeaUrchinBlock::GetCustomCollisionBoxes

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
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.BottomSuckerBlock::GetFace(int32)
    IL_000c:  stloc.0
    IL_000d:  call       int32 Game.BottomSuckerBlock::GetSubvariant(int32)
    IL_0012:  stloc.1
    IL_0013:  ldsfld     valuetype [Engine]Engine.Color[] Game.SeaUrchinBlock::m_colors
    IL_0018:  ldloc.1
    IL_0019:  ldelem     [Engine]Engine.Color
    IL_001e:  stloc.2
    IL_001f:  ldarg.1
    IL_0020:  ldarg.0
    IL_0021:  ldarg.s    x
    IL_0023:  ldarg.s    y
    IL_0025:  ldarg.s    z
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.BlockMesh[] Game.SeaUrchinBlock::m_blockMeshes
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
  } // end of method SeaUrchinBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.BlockMesh Game.SeaUrchinBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldc.i4.s   40
    IL_000a:  ldc.i4.s   40
    IL_000c:  ldc.i4.s   40
    IL_000e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0013:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0018:  ldc.r4     3.
    IL_001d:  ldarg.s    size
    IL_001f:  mul
    IL_0020:  ldarg.s    matrix
    IL_0022:  ldarg.s    environmentData
    IL_0024:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0029:  ret
  } // end of method SeaUrchinBlock::DrawBlock

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
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
  } // end of method SeaUrchinBlock::CreateDebrisParticleSystem

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   24
    IL_0003:  newarr     Game.BlockMesh
    IL_0008:  stfld      class Game.BlockMesh[] Game.SeaUrchinBlock::m_blockMeshes
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.s   24
    IL_0010:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0015:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.SeaUrchinBlock::m_collisionBoxes
    IL_001a:  ldarg.0
    IL_001b:  call       instance void Game.BottomSuckerBlock::.ctor()
    IL_0020:  ret
  } // end of method SeaUrchinBlock::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       223 (0xdf)
    .maxstack  6
    IL_0000:  ldc.i4.4
    IL_0001:  newarr     [Engine]Engine.Color
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   20
    IL_000a:  ldc.i4.s   20
    IL_000c:  ldc.i4.s   20
    IL_000e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0013:  stelem     [Engine]Engine.Color
    IL_0018:  dup
    IL_0019:  ldc.i4.1
    IL_001a:  ldc.i4.s   50
    IL_001c:  ldc.i4.s   20
    IL_001e:  ldc.i4.s   20
    IL_0020:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0025:  stelem     [Engine]Engine.Color
    IL_002a:  dup
    IL_002b:  ldc.i4.2
    IL_002c:  ldc.i4.s   80
    IL_002e:  ldc.i4.s   30
    IL_0030:  ldc.i4.s   30
    IL_0032:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0037:  stelem     [Engine]Engine.Color
    IL_003c:  dup
    IL_003d:  ldc.i4.3
    IL_003e:  ldc.i4.s   20
    IL_0040:  ldc.i4.s   20
    IL_0042:  ldc.i4.s   40
    IL_0044:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0049:  stelem     [Engine]Engine.Color
    IL_004e:  stsfld     valuetype [Engine]Engine.Color[] Game.SeaUrchinBlock::m_colors
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
    IL_00d9:  stsfld     valuetype [Engine]Engine.Vector2[] Game.SeaUrchinBlock::m_offsets
    IL_00de:  ret
  } // end of method SeaUrchinBlock::.cctor

} // end of class Game.SeaUrchinBlock