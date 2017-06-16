.class public abstract auto ansi beforefieldinit Game.AttachedSignBlock
       extends Game.SignBlock
       implements Game.IElectricElementBlock,
                  Game.IPaintableBlock
{
  .field private string m_modelName
  .field private int32 m_coloredTextureSlot
  .field private int32 m_postedSignBlockIndex
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh m_standaloneColoredBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshes
  .field private class Game.BlockMesh[] m_coloredBlockMeshes
  .field private class Game.BlockMesh[] m_surfaceMeshes
  .field private valuetype [Engine]Engine.Vector3[] m_surfaceNormals
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(string modelName,
                               int32 coloredTextureSlot,
                               int32 postedSignBlockIndex) cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.AttachedSignBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.AttachedSignBlock::m_standaloneColoredBlockMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.4
    IL_0018:  newarr     Game.BlockMesh
    IL_001d:  stfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_blockMeshes
    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.4
    IL_0024:  newarr     Game.BlockMesh
    IL_0029:  stfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_coloredBlockMeshes
    IL_002e:  ldarg.0
    IL_002f:  ldc.i4.4
    IL_0030:  newarr     Game.BlockMesh
    IL_0035:  stfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_surfaceMeshes
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4.4
    IL_003c:  newarr     [Engine]Engine.Vector3
    IL_0041:  stfld      valuetype [Engine]Engine.Vector3[] Game.AttachedSignBlock::m_surfaceNormals
    IL_0046:  ldarg.0
    IL_0047:  ldc.i4.4
    IL_0048:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_004d:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.AttachedSignBlock::m_collisionBoxes
    IL_0052:  ldarg.0
    IL_0053:  call       instance void Game.SignBlock::.ctor()
    IL_0058:  ldarg.0
    IL_0059:  ldarg.1
    IL_005a:  stfld      string Game.AttachedSignBlock::m_modelName
    IL_005f:  ldarg.0
    IL_0060:  ldarg.2
    IL_0061:  stfld      int32 Game.AttachedSignBlock::m_coloredTextureSlot
    IL_0066:  ldarg.0
    IL_0067:  ldarg.3
    IL_0068:  stfld      int32 Game.AttachedSignBlock::m_postedSignBlockIndex
    IL_006d:  ret
  } // end of method AttachedSignBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       711 (0x2c7)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Matrix V_5,
             class Game.BlockMesh V_6,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.AttachedSignBlock::m_modelName
    IL_0006:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldstr      "Sign"
    IL_0012:  ldc.i4.1
    IL_0013:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0018:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001d:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0022:  stloc.1
    IL_0023:  ldloc.0
    IL_0024:  ldstr      "Surface"
    IL_0029:  ldc.i4.1
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002f:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0034:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0039:  stloc.2
    IL_003a:  ldc.i4.0
    IL_003b:  stloc.3
    IL_003c:  br         IL_01f3

    IL_0041:  ldc.r4     1.5707964
    IL_0046:  ldloc.3
    IL_0047:  conv.r4
    IL_0048:  mul
    IL_0049:  stloc.s    V_4
    IL_004b:  ldc.r4     0.0
    IL_0050:  ldc.r4     0.0
    IL_0055:  ldc.r4     -0.46875
    IL_005a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_005f:  ldloc.s    V_4
    IL_0061:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0066:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_006b:  ldc.r4     0.5
    IL_0070:  ldc.r4     -0.3125
    IL_0075:  ldc.r4     0.5
    IL_007a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0084:  stloc.s    V_5
    IL_0086:  newobj     instance void Game.BlockMesh::.ctor()
    IL_008b:  stloc.s    V_6
    IL_008d:  ldloc.s    V_6
    IL_008f:  ldloc.0
    IL_0090:  ldstr      "Sign"
    IL_0095:  ldc.i4.1
    IL_0096:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_009b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00a0:  stloc.s    V_7
    IL_00a2:  ldloca.s   V_7
    IL_00a4:  ldc.i4.0
    IL_00a5:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00aa:  ldloc.1
    IL_00ab:  ldloc.s    V_5
    IL_00ad:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b2:  ldc.i4.0
    IL_00b3:  ldc.i4.0
    IL_00b4:  ldc.i4.0
    IL_00b5:  ldc.i4.0
    IL_00b6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00bb:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_blockMeshes
    IL_00c6:  ldloc.3
    IL_00c7:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00cc:  stelem.ref
    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_blockMeshes
    IL_00d3:  ldloc.3
    IL_00d4:  ldelem.ref
    IL_00d5:  ldloc.s    V_6
    IL_00d7:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_coloredBlockMeshes
    IL_00e2:  ldloc.3
    IL_00e3:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00e8:  stelem.ref
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_coloredBlockMeshes
    IL_00ef:  ldloc.3
    IL_00f0:  ldelem.ref
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_blockMeshes
    IL_00f7:  ldloc.3
    IL_00f8:  ldelem.ref
    IL_00f9:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_blockMeshes
    IL_0104:  ldloc.3
    IL_0105:  ldelem.ref
    IL_0106:  ldarg.0
    IL_0107:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_010c:  ldc.i4.s   16
    IL_010e:  rem
    IL_010f:  conv.r4
    IL_0110:  ldc.r4     16.
    IL_0115:  div
    IL_0116:  ldarg.0
    IL_0117:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_011c:  ldc.i4.s   16
    IL_011e:  div
    IL_011f:  conv.r4
    IL_0120:  ldc.r4     16.
    IL_0125:  div
    IL_0126:  ldc.r4     0.0
    IL_012b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0130:  ldc.i4.m1
    IL_0131:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0136:  ldarg.0
    IL_0137:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_coloredBlockMeshes
    IL_013c:  ldloc.3
    IL_013d:  ldelem.ref
    IL_013e:  ldarg.0
    IL_013f:  ldfld      int32 Game.AttachedSignBlock::m_coloredTextureSlot
    IL_0144:  ldc.i4.s   16
    IL_0146:  rem
    IL_0147:  conv.r4
    IL_0148:  ldc.r4     16.
    IL_014d:  div
    IL_014e:  ldarg.0
    IL_014f:  ldfld      int32 Game.AttachedSignBlock::m_coloredTextureSlot
    IL_0154:  ldc.i4.s   16
    IL_0156:  div
    IL_0157:  conv.r4
    IL_0158:  ldc.r4     16.
    IL_015d:  div
    IL_015e:  ldc.r4     0.0
    IL_0163:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0168:  ldc.i4.m1
    IL_0169:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_016e:  ldarg.0
    IL_016f:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.AttachedSignBlock::m_collisionBoxes
    IL_0174:  ldloc.3
    IL_0175:  ldc.i4.1
    IL_0176:  newarr     [Engine]Engine.BoundingBox
    IL_017b:  stelem.ref
    IL_017c:  ldarg.0
    IL_017d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.AttachedSignBlock::m_collisionBoxes
    IL_0182:  ldloc.3
    IL_0183:  ldelem.ref
    IL_0184:  ldc.i4.0
    IL_0185:  ldloc.s    V_6
    IL_0187:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_018c:  stelem     [Engine]Engine.BoundingBox
    IL_0191:  ldarg.0
    IL_0192:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_surfaceMeshes
    IL_0197:  ldloc.3
    IL_0198:  newobj     instance void Game.BlockMesh::.ctor()
    IL_019d:  stelem.ref
    IL_019e:  ldarg.0
    IL_019f:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_surfaceMeshes
    IL_01a4:  ldloc.3
    IL_01a5:  ldelem.ref
    IL_01a6:  ldloc.0
    IL_01a7:  ldstr      "Surface"
    IL_01ac:  ldc.i4.1
    IL_01ad:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01b2:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01b7:  stloc.s    V_7
    IL_01b9:  ldloca.s   V_7
    IL_01bb:  ldc.i4.0
    IL_01bc:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01c1:  ldloc.2
    IL_01c2:  ldloc.s    V_5
    IL_01c4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01c9:  ldc.i4.0
    IL_01ca:  ldc.i4.0
    IL_01cb:  ldc.i4.0
    IL_01cc:  ldc.i4.0
    IL_01cd:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01d2:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      valuetype [Engine]Engine.Vector3[] Game.AttachedSignBlock::m_surfaceNormals
    IL_01dd:  ldloc.3
    IL_01de:  ldloca.s   V_5
    IL_01e0:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_01e5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_01ea:  stelem     [Engine]Engine.Vector3
    IL_01ef:  ldloc.3
    IL_01f0:  ldc.i4.1
    IL_01f1:  add
    IL_01f2:  stloc.3
    IL_01f3:  ldloc.3
    IL_01f4:  ldc.i4.4
    IL_01f5:  blt        IL_0041

    IL_01fa:  ldarg.0
    IL_01fb:  ldfld      class Game.BlockMesh Game.AttachedSignBlock::m_standaloneBlockMesh
    IL_0200:  ldloc.0
    IL_0201:  ldstr      "Sign"
    IL_0206:  ldc.i4.1
    IL_0207:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_020c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0211:  stloc.s    V_7
    IL_0213:  ldloca.s   V_7
    IL_0215:  ldc.i4.0
    IL_0216:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_021b:  ldloc.1
    IL_021c:  ldc.r4     0.0
    IL_0221:  ldc.r4     -0.60000002
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
    IL_0244:  ldfld      class Game.BlockMesh Game.AttachedSignBlock::m_standaloneColoredBlockMesh
    IL_0249:  ldarg.0
    IL_024a:  ldfld      class Game.BlockMesh Game.AttachedSignBlock::m_standaloneBlockMesh
    IL_024f:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_0254:  ldarg.0
    IL_0255:  ldfld      class Game.BlockMesh Game.AttachedSignBlock::m_standaloneBlockMesh
    IL_025a:  ldarg.0
    IL_025b:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0260:  ldc.i4.s   16
    IL_0262:  rem
    IL_0263:  conv.r4
    IL_0264:  ldc.r4     16.
    IL_0269:  div
    IL_026a:  ldarg.0
    IL_026b:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0270:  ldc.i4.s   16
    IL_0272:  div
    IL_0273:  conv.r4
    IL_0274:  ldc.r4     16.
    IL_0279:  div
    IL_027a:  ldc.r4     0.0
    IL_027f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0284:  ldc.i4.m1
    IL_0285:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_028a:  ldarg.0
    IL_028b:  ldfld      class Game.BlockMesh Game.AttachedSignBlock::m_standaloneColoredBlockMesh
    IL_0290:  ldarg.0
    IL_0291:  ldfld      int32 Game.AttachedSignBlock::m_coloredTextureSlot
    IL_0296:  ldc.i4.s   16
    IL_0298:  rem
    IL_0299:  conv.r4
    IL_029a:  ldc.r4     16.
    IL_029f:  div
    IL_02a0:  ldarg.0
    IL_02a1:  ldfld      int32 Game.AttachedSignBlock::m_coloredTextureSlot
    IL_02a6:  ldc.i4.s   16
    IL_02a8:  div
    IL_02a9:  conv.r4
    IL_02aa:  ldc.r4     16.
    IL_02af:  div
    IL_02b0:  ldc.r4     0.0
    IL_02b5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_02ba:  ldc.i4.m1
    IL_02bb:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_02c0:  ldarg.0
    IL_02c1:  call       instance void Game.Block::Initialize()
    IL_02c6:  ret
  } // end of method AttachedSignBlock::Initialize

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             int32 V_1,
             valuetype Game.BlockDropValue V_2)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldc.i4.1
    IL_0003:  stind.i1
    IL_0004:  ldarg.2
    IL_0005:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_000a:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.AttachedSignBlock::GetColor(int32)
    IL_000f:  stloc.0
    IL_0010:  ldc.i4.0
    IL_0011:  ldloc.0
    IL_0012:  call       int32 Game.PostedSignBlock::SetColor(int32,
                                                              valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0017:  stloc.1
    IL_0018:  ldarg.s    dropValues
    IL_001a:  ldloca.s   V_2
    IL_001c:  initobj    Game.BlockDropValue
    IL_0022:  ldloca.s   V_2
    IL_0024:  ldarg.0
    IL_0025:  ldfld      int32 Game.AttachedSignBlock::m_postedSignBlockIndex
    IL_002a:  ldc.i4.0
    IL_002b:  ldloc.1
    IL_002c:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0031:  stfld      int32 Game.BlockDropValue::Value
    IL_0036:  ldloca.s   V_2
    IL_0038:  ldc.i4.1
    IL_0039:  stfld      int32 Game.BlockDropValue::Count
    IL_003e:  ldloc.2
    IL_003f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0044:  ret
  } // end of method AttachedSignBlock::GetDropValues

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain terrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       87 (0x57)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.AttachedSignBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brfalse.s  IL_003c

    IL_0015:  ldarg.1
    IL_0016:  ldarg.2
    IL_0017:  ldarg.s    strength
    IL_0019:  ldarg.0
    IL_001a:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_001f:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0024:  ldloca.s   V_0
    IL_0026:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_002b:  ldelem     [Engine]Engine.Color
    IL_0030:  ldarg.0
    IL_0031:  ldfld      int32 Game.AttachedSignBlock::m_coloredTextureSlot
    IL_0036:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_003b:  ret

    IL_003c:  ldarg.1
    IL_003d:  ldarg.2
    IL_003e:  ldarg.s    strength
    IL_0040:  ldarg.0
    IL_0041:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0046:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_004b:  ldarg.0
    IL_004c:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0051:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0056:  ret
  } // end of method AttachedSignBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       162 (0xa2)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.Nullable`1<int32> V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_3)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       int32 Game.AttachedSignBlock::GetFace(int32)
    IL_000d:  stloc.1
    IL_000e:  ldloc.0
    IL_000f:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.AttachedSignBlock::GetColor(int32)
    IL_0014:  stloc.2
    IL_0015:  ldloca.s   V_2
    IL_0017:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_001c:  brfalse.s  IL_0055

    IL_001e:  ldarg.1
    IL_001f:  ldarg.0
    IL_0020:  ldarg.s    x
    IL_0022:  ldarg.s    y
    IL_0024:  ldarg.s    z
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_coloredBlockMeshes
    IL_002c:  ldloc.1
    IL_002d:  ldelem.ref
    IL_002e:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0033:  ldloca.s   V_2
    IL_0035:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_003a:  ldelem     [Engine]Engine.Color
    IL_003f:  ldloca.s   V_3
    IL_0041:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0047:  ldloc.3
    IL_0048:  ldarg.2
    IL_0049:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_004e:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0053:  br.s       IL_007e

    IL_0055:  ldarg.1
    IL_0056:  ldarg.0
    IL_0057:  ldarg.s    x
    IL_0059:  ldarg.s    y
    IL_005b:  ldarg.s    z
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_blockMeshes
    IL_0063:  ldloc.1
    IL_0064:  ldelem.ref
    IL_0065:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_006a:  ldloca.s   V_3
    IL_006c:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0072:  ldloc.3
    IL_0073:  ldarg.2
    IL_0074:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0079:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_007e:  ldarg.1
    IL_007f:  ldarg.3
    IL_0080:  ldarg.s    x
    IL_0082:  ldarg.s    y
    IL_0084:  ldarg.s    z
    IL_0086:  ldloc.0
    IL_0087:  call       int32 Game.AttachedSignBlock::GetFace(int32)
    IL_008c:  ldc.r4     0.375
    IL_0091:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0096:  ldarg.2
    IL_0097:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_009c:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00a1:  ret
  } // end of method AttachedSignBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.AttachedSignBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brfalse.s  IL_003e

    IL_0015:  ldarg.1
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.BlockMesh Game.AttachedSignBlock::m_standaloneColoredBlockMesh
    IL_001c:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0021:  ldloca.s   V_0
    IL_0023:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0028:  ldelem     [Engine]Engine.Color
    IL_002d:  ldc.r4     1.25
    IL_0032:  ldarg.3
    IL_0033:  mul
    IL_0034:  ldarg.s    matrix
    IL_0036:  ldarg.s    environmentData
    IL_0038:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_003d:  ret

    IL_003e:  ldarg.1
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.BlockMesh Game.AttachedSignBlock::m_standaloneBlockMesh
    IL_0045:  ldc.r4     1.25
    IL_004a:  ldarg.3
    IL_004b:  mul
    IL_004c:  ldarg.s    matrix
    IL_004e:  ldarg.s    environmentData
    IL_0050:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0055:  ret
  } // end of method AttachedSignBlock::DrawBlock

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.AttachedSignBlock::GetColor(int32)
    IL_000b:  ret
  } // end of method AttachedSignBlock::GetPaintColor

  .method public hidebysig newslot virtual final 
          instance int32  Paint(class Game.SubsystemTerrain terrain,
                                int32 'value',
                                valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.2
    IL_0008:  ldloc.0
    IL_0009:  ldarg.3
    IL_000a:  call       int32 Game.AttachedSignBlock::SetColor(int32,
                                                                valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_000f:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0014:  ret
  } // end of method AttachedSignBlock::Paint

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.AttachedSignBlock::GetFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.AttachedSignBlock::m_collisionBoxes
    IL_0012:  ldloc.0
    IL_0013:  ldelem.ref
    IL_0014:  ret
  } // end of method AttachedSignBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  1
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldloc.0
    IL_0009:  ret
  } // end of method AttachedSignBlock::GetPlacementValue

  .method public hidebysig virtual instance class Game.BlockMesh 
          GetSignSurfaceBlockMesh(int32 data) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BlockMesh[] Game.AttachedSignBlock::m_surfaceMeshes
    IL_0006:  ldarg.1
    IL_0007:  call       int32 Game.AttachedSignBlock::GetFace(int32)
    IL_000c:  ldelem.ref
    IL_000d:  ret
  } // end of method AttachedSignBlock::GetSignSurfaceBlockMesh

  .method public hidebysig virtual instance valuetype [Engine]Engine.Vector3 
          GetSignSurfaceNormal(int32 data) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3[] Game.AttachedSignBlock::m_surfaceNormals
    IL_0006:  ldarg.1
    IL_0007:  call       int32 Game.AttachedSignBlock::GetFace(int32)
    IL_000c:  ldelem     [Engine]Engine.Vector3
    IL_0011:  ret
  } // end of method AttachedSignBlock::GetSignSurfaceNormal

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    y
    IL_000b:  ldarg.s    z
    IL_000d:  ldloc.0
    IL_000e:  call       int32 Game.AttachedSignBlock::GetFace(int32)
    IL_0013:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0018:  newobj     instance void Game.SignElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                       valuetype Game.CellFace)
    IL_001d:  ret
  } // end of method AttachedSignBlock::CreateElectricElement

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
    // 代码大小       52 (0x34)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_2)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.3
    IL_0008:  ldloc.0
    IL_0009:  call       int32 Game.AttachedSignBlock::GetFace(int32)
    IL_000e:  bne.un.s   IL_0023

    IL_0010:  ldarg.3
    IL_0011:  ldc.i4.0
    IL_0012:  ldarg.s    connectorFace
    IL_0014:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0019:  stloc.1
    IL_001a:  ldloca.s   V_1
    IL_001c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0021:  brtrue.s   IL_002d

    IL_0023:  ldloca.s   V_2
    IL_0025:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_002b:  ldloc.2
    IL_002c:  ret

    IL_002d:  ldc.i4.0
    IL_002e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0033:  ret
  } // end of method AttachedSignBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method AttachedSignBlock::GetConnectionMask

  .method public hidebysig static int32  GetFace(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method AttachedSignBlock::GetFace

  .method public hidebysig static int32  SetFace(int32 data,
                                                 int32 face) cil managed
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
  } // end of method AttachedSignBlock::SetFace

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<int32> 
          GetColor(int32 data) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  and
    IL_0003:  brfalse.s  IL_0011

    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.3
    IL_0007:  shr
    IL_0008:  ldc.i4.s   15
    IL_000a:  and
    IL_000b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0010:  ret

    IL_0011:  ldloca.s   V_0
    IL_0013:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method AttachedSignBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarga.s   color
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_001d

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.s   -125
    IL_000c:  and
    IL_000d:  ldc.i4.4
    IL_000e:  or
    IL_000f:  ldarga.s   color
    IL_0011:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0016:  ldc.i4.s   15
    IL_0018:  and
    IL_0019:  ldc.i4.3
    IL_001a:  shl
    IL_001b:  or
    IL_001c:  ret

    IL_001d:  ldarg.0
    IL_001e:  ldc.i4.s   -125
    IL_0020:  and
    IL_0021:  ret
  } // end of method AttachedSignBlock::SetColor

} // end of class Game.AttachedSignBlock