.class public auto ansi beforefieldinit Game.PressurePlateBlock
       extends Game.MountedElectricElementBlock
{
  .field public static literal int32 Index = int32(0x00000090)
  .field private class Game.BlockMesh[] m_standaloneBlockMeshesByMaterial
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .field private string[] m_displayNamesByMaterial
  .field private int32[] m_creativeValuesByMaterial
  .field private int32[] m_debrisParticleSlotsByMaterial
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       813 (0x32d)
    .maxstack  10
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             string[] V_1,
             int32 V_2,
             string V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [Engine]Engine.Matrix V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Matrix V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_11)
    IL_0000:  ldstr      "Models/PressurePlates"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [System.Runtime]System.String
    IL_0011:  dup
    IL_0012:  ldc.i4.0
    IL_0013:  ldstr      "WoodenPressurePlate"
    IL_0018:  stelem.ref
    IL_0019:  dup
    IL_001a:  ldc.i4.1
    IL_001b:  ldstr      "StonePressurePlate"
    IL_0020:  stelem.ref
    IL_0021:  stloc.1
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.2
    IL_0024:  br         IL_0325

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
    IL_0044:  br         IL_02cf

    IL_0049:  ldc.i4.0
    IL_004a:  ldloc.2
    IL_004b:  call       int32 Game.PressurePlateBlock::SetMaterial(int32,
                                                                    int32)
    IL_0050:  ldloc.s    V_6
    IL_0052:  call       int32 Game.PressurePlateBlock::SetMountingFace(int32,
                                                                        int32)
    IL_0057:  stloc.s    V_7
    IL_0059:  ldloc.s    V_6
    IL_005b:  ldc.i4.4
    IL_005c:  bge.s      IL_00b7

    IL_005e:  ldc.r4     1.5707964
    IL_0063:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0068:  ldc.r4     0.0
    IL_006d:  ldc.r4     0.0
    IL_0072:  ldc.r4     -0.5
    IL_0077:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0081:  ldloc.s    V_6
    IL_0083:  conv.r4
    IL_0084:  ldc.r4     3.1415927
    IL_0089:  mul
    IL_008a:  ldc.r4     2.
    IL_008f:  div
    IL_0090:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0095:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_009a:  ldc.r4     0.5
    IL_009f:  ldc.r4     0.5
    IL_00a4:  ldc.r4     0.5
    IL_00a9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00ae:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b3:  stloc.s    V_8
    IL_00b5:  br.s       IL_00f9

    IL_00b7:  ldloc.s    V_6
    IL_00b9:  ldc.i4.4
    IL_00ba:  bne.un.s   IL_00d4

    IL_00bc:  ldc.r4     0.5
    IL_00c1:  ldc.r4     0.0
    IL_00c6:  ldc.r4     0.5
    IL_00cb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d0:  stloc.s    V_8
    IL_00d2:  br.s       IL_00f9

    IL_00d4:  ldc.r4     3.1415927
    IL_00d9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00de:  ldc.r4     0.5
    IL_00e3:  ldc.r4     1.
    IL_00e8:  ldc.r4     0.5
    IL_00ed:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00f2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f7:  stloc.s    V_8
    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      class Game.BlockMesh[] Game.PressurePlateBlock::m_blockMeshesByData
    IL_00ff:  ldloc.s    V_7
    IL_0101:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0106:  stelem.ref
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class Game.BlockMesh[] Game.PressurePlateBlock::m_blockMeshesByData
    IL_010d:  ldloc.s    V_7
    IL_010f:  ldelem.ref
    IL_0110:  ldloc.0
    IL_0111:  ldloc.3
    IL_0112:  ldc.i4.1
    IL_0113:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0118:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_011d:  stloc.s    V_11
    IL_011f:  ldloca.s   V_11
    IL_0121:  ldc.i4.0
    IL_0122:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0127:  ldloc.s    V_4
    IL_0129:  ldloc.s    V_8
    IL_012b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0130:  ldc.i4.0
    IL_0131:  ldc.i4.0
    IL_0132:  ldc.i4.0
    IL_0133:  ldc.i4.0
    IL_0134:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0139:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_013e:  ldc.r4     -0.5
    IL_0143:  ldc.r4     0.0
    IL_0148:  ldc.r4     -0.5
    IL_014d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0152:  ldloc.s    V_8
    IL_0154:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0159:  stloc.s    V_9
    IL_015b:  ldc.r4     0.5
    IL_0160:  ldc.r4     6.25e-002
    IL_0165:  ldc.r4     0.5
    IL_016a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_016f:  ldloc.s    V_8
    IL_0171:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0176:  stloc.s    V_10
    IL_0178:  ldloca.s   V_9
    IL_017a:  ldloc.s    V_9
    IL_017c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0181:  ldc.r4     100.
    IL_0186:  mul
    IL_0187:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_018c:  ldc.r4     100.
    IL_0191:  div
    IL_0192:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0197:  ldloca.s   V_9
    IL_0199:  ldloc.s    V_9
    IL_019b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01a0:  ldc.r4     100.
    IL_01a5:  mul
    IL_01a6:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_01ab:  ldc.r4     100.
    IL_01b0:  div
    IL_01b1:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_01b6:  ldloca.s   V_9
    IL_01b8:  ldloc.s    V_9
    IL_01ba:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01bf:  ldc.r4     100.
    IL_01c4:  mul
    IL_01c5:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_01ca:  ldc.r4     100.
    IL_01cf:  div
    IL_01d0:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_01d5:  ldloca.s   V_10
    IL_01d7:  ldloc.s    V_10
    IL_01d9:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01de:  ldc.r4     100.
    IL_01e3:  mul
    IL_01e4:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_01e9:  ldc.r4     100.
    IL_01ee:  div
    IL_01ef:  stfld      float32 [Engine]Engine.Vector3::X
    IL_01f4:  ldloca.s   V_10
    IL_01f6:  ldloc.s    V_10
    IL_01f8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01fd:  ldc.r4     100.
    IL_0202:  mul
    IL_0203:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0208:  ldc.r4     100.
    IL_020d:  div
    IL_020e:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0213:  ldloca.s   V_10
    IL_0215:  ldloc.s    V_10
    IL_0217:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_021c:  ldc.r4     100.
    IL_0221:  mul
    IL_0222:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0227:  ldc.r4     100.
    IL_022c:  div
    IL_022d:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0232:  ldarg.0
    IL_0233:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.PressurePlateBlock::m_collisionBoxesByData
    IL_0238:  ldloc.s    V_7
    IL_023a:  ldc.i4.1
    IL_023b:  newarr     [Engine]Engine.BoundingBox
    IL_0240:  dup
    IL_0241:  ldc.i4.0
    IL_0242:  ldloc.s    V_9
    IL_0244:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0249:  ldloc.s    V_10
    IL_024b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0250:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0255:  ldloc.s    V_9
    IL_0257:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_025c:  ldloc.s    V_10
    IL_025e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0263:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0268:  ldloc.s    V_9
    IL_026a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_026f:  ldloc.s    V_10
    IL_0271:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0276:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_027b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0280:  ldloc.s    V_9
    IL_0282:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0287:  ldloc.s    V_10
    IL_0289:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_028e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0293:  ldloc.s    V_9
    IL_0295:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_029a:  ldloc.s    V_10
    IL_029c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02a1:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02a6:  ldloc.s    V_9
    IL_02a8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02ad:  ldloc.s    V_10
    IL_02af:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02b4:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02b9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02be:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_02c3:  stelem     [Engine]Engine.BoundingBox
    IL_02c8:  stelem.ref
    IL_02c9:  ldloc.s    V_6
    IL_02cb:  ldc.i4.1
    IL_02cc:  add
    IL_02cd:  stloc.s    V_6
    IL_02cf:  ldloc.s    V_6
    IL_02d1:  ldc.i4.6
    IL_02d2:  blt        IL_0049

    IL_02d7:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_02dc:  stloc.s    V_5
    IL_02de:  ldarg.0
    IL_02df:  ldfld      class Game.BlockMesh[] Game.PressurePlateBlock::m_standaloneBlockMeshesByMaterial
    IL_02e4:  ldloc.2
    IL_02e5:  newobj     instance void Game.BlockMesh::.ctor()
    IL_02ea:  stelem.ref
    IL_02eb:  ldarg.0
    IL_02ec:  ldfld      class Game.BlockMesh[] Game.PressurePlateBlock::m_standaloneBlockMeshesByMaterial
    IL_02f1:  ldloc.2
    IL_02f2:  ldelem.ref
    IL_02f3:  ldloc.0
    IL_02f4:  ldloc.3
    IL_02f5:  ldc.i4.1
    IL_02f6:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_02fb:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0300:  stloc.s    V_11
    IL_0302:  ldloca.s   V_11
    IL_0304:  ldc.i4.0
    IL_0305:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_030a:  ldloc.s    V_4
    IL_030c:  ldloc.s    V_5
    IL_030e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0313:  ldc.i4.0
    IL_0314:  ldc.i4.0
    IL_0315:  ldc.i4.0
    IL_0316:  ldc.i4.0
    IL_0317:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_031c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0321:  ldloc.2
    IL_0322:  ldc.i4.1
    IL_0323:  add
    IL_0324:  stloc.2
    IL_0325:  ldloc.2
    IL_0326:  ldc.i4.2
    IL_0327:  blt        IL_0029

    IL_032c:  ret
  } // end of method PressurePlateBlock::Initialize

  .method public hidebysig static int32  GetMaterial(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  ret
  } // end of method PressurePlateBlock::GetMaterial

  .method public hidebysig static int32  SetMaterial(int32 data,
                                                     int32 material) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.1
    IL_0003:  and
    IL_0004:  or
    IL_0005:  ret
  } // end of method PressurePlateBlock::SetMaterial

  .method public hidebysig static int32  GetMountingFace(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  shr
    IL_0003:  ldc.i4.7
    IL_0004:  and
    IL_0005:  ret
  } // end of method PressurePlateBlock::GetMountingFace

  .method public hidebysig static int32  SetMountingFace(int32 data,
                                                         int32 face) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -15
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.7
    IL_0006:  and
    IL_0007:  ldc.i4.1
    IL_0008:  shl
    IL_0009:  or
    IL_000a:  ret
  } // end of method PressurePlateBlock::SetMountingFace

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PressurePlateBlock::GetMountingFace(int32)
    IL_000b:  ret
  } // end of method PressurePlateBlock::GetFace

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PressurePlateBlock::GetMaterial(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      string[] Game.PressurePlateBlock::m_displayNamesByMaterial
    IL_0012:  ldloc.0
    IL_0013:  ldelem.ref
    IL_0014:  ret
  } // end of method PressurePlateBlock::GetDisplayName

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.PressurePlateBlock::m_creativeValuesByMaterial
    IL_0006:  ret
  } // end of method PressurePlateBlock::GetCreativeValues

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain terrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  7
    .locals init (int32 V_0)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PressurePlateBlock::GetMaterial(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  ldarg.s    strength
    IL_0010:  ldarg.0
    IL_0011:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0016:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_001b:  ldarg.0
    IL_001c:  ldfld      int32[] Game.PressurePlateBlock::m_debrisParticleSlotsByMaterial
    IL_0021:  ldloc.0
    IL_0022:  ldelem.i4
    IL_0023:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0028:  ret
  } // end of method PressurePlateBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             valuetype Game.BlockPlacementData V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  ldarg.s    raycastResult
    IL_0008:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_000d:  ldfld      int32 Game.CellFace::Face
    IL_0012:  call       int32 Game.PressurePlateBlock::SetMountingFace(int32,
                                                                        int32)
    IL_0017:  stloc.0
    IL_0018:  ldarg.3
    IL_0019:  ldloc.0
    IL_001a:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_001f:  stloc.1
    IL_0020:  ldloca.s   V_2
    IL_0022:  initobj    Game.BlockPlacementData
    IL_0028:  ldloca.s   V_2
    IL_002a:  ldloc.1
    IL_002b:  stfld      int32 Game.BlockPlacementData::Value
    IL_0030:  ldloca.s   V_2
    IL_0032:  ldarg.s    raycastResult
    IL_0034:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0039:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_003e:  ldloc.2
    IL_003f:  ret
  } // end of method PressurePlateBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PressurePlateBlock::GetMaterial(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.s    dropValues
    IL_000e:  ldloca.s   V_1
    IL_0010:  initobj    Game.BlockDropValue
    IL_0016:  ldloca.s   V_1
    IL_0018:  ldc.i4     0x90
    IL_001d:  ldc.i4.0
    IL_001e:  ldc.i4.0
    IL_001f:  ldloc.0
    IL_0020:  call       int32 Game.PressurePlateBlock::SetMaterial(int32,
                                                                    int32)
    IL_0025:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_002a:  stfld      int32 Game.BlockDropValue::Value
    IL_002f:  ldloca.s   V_1
    IL_0031:  ldc.i4.1
    IL_0032:  stfld      int32 Game.BlockDropValue::Count
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_003d:  ldarg.s    showDebris
    IL_003f:  ldc.i4.1
    IL_0040:  stind.i1
    IL_0041:  ret
  } // end of method PressurePlateBlock::GetDropValues

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
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.PressurePlateBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  blt.s      IL_0014

    IL_0012:  ldnull
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.PressurePlateBlock::m_collisionBoxesByData
    IL_001a:  ldloc.0
    IL_001b:  ldelem.ref
    IL_001c:  ret
  } // end of method PressurePlateBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.PressurePlateBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_0069

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.BlockMesh[] Game.PressurePlateBlock::m_blockMeshesByData
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  brfalse.s  IL_0069

    IL_001c:  ldarg.1
    IL_001d:  ldarg.0
    IL_001e:  ldarg.s    x
    IL_0020:  ldarg.s    y
    IL_0022:  ldarg.s    z
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.BlockMesh[] Game.PressurePlateBlock::m_blockMeshesByData
    IL_002a:  ldloc.0
    IL_002b:  ldelem.ref
    IL_002c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0031:  ldloca.s   V_1
    IL_0033:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0039:  ldloc.1
    IL_003a:  ldarg.2
    IL_003b:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0040:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0045:  ldarg.1
    IL_0046:  ldarg.3
    IL_0047:  ldarg.s    x
    IL_0049:  ldarg.s    y
    IL_004b:  ldarg.s    z
    IL_004d:  ldarg.0
    IL_004e:  ldarg.3
    IL_004f:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_0054:  ldc.r4     0.8125
    IL_0059:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_005e:  ldarg.2
    IL_005f:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0064:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0069:  ret
  } // end of method PressurePlateBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PressurePlateBlock::GetMaterial(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.BlockMesh[] Game.PressurePlateBlock::m_standaloneBlockMeshesByMaterial
    IL_0013:  ldloc.0
    IL_0014:  ldelem.ref
    IL_0015:  ldc.r4     2.
    IL_001a:  ldarg.3
    IL_001b:  mul
    IL_001c:  ldarg.s    matrix
    IL_001e:  ldarg.s    environmentData
    IL_0020:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0025:  ret
  } // end of method PressurePlateBlock::DrawBlock

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
    IL_0012:  newobj     instance void Game.PressurePlateElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                                valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method PressurePlateBlock::CreateElectricElement

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
  } // end of method PressurePlateBlock::GetConnectorType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       135 (0x87)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.PressurePlateBlock::m_standaloneBlockMeshesByMaterial
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.s   16
    IL_000f:  newarr     Game.BlockMesh
    IL_0014:  stfld      class Game.BlockMesh[] Game.PressurePlateBlock::m_blockMeshesByData
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.s   16
    IL_001c:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0021:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.PressurePlateBlock::m_collisionBoxesByData
    IL_0026:  ldarg.0
    IL_0027:  ldc.i4.2
    IL_0028:  newarr     [System.Runtime]System.String
    IL_002d:  dup
    IL_002e:  ldc.i4.0
    IL_002f:  ldstr      "Wooden Pressure Plate"
    IL_0034:  stelem.ref
    IL_0035:  dup
    IL_0036:  ldc.i4.1
    IL_0037:  ldstr      "Stone Pressure Plate"
    IL_003c:  stelem.ref
    IL_003d:  stfld      string[] Game.PressurePlateBlock::m_displayNamesByMaterial
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4.2
    IL_0044:  newarr     [System.Runtime]System.Int32
    IL_0049:  dup
    IL_004a:  ldc.i4.0
    IL_004b:  ldc.i4     0x90
    IL_0050:  ldc.i4.0
    IL_0051:  ldc.i4.0
    IL_0052:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0057:  stelem.i4
    IL_0058:  dup
    IL_0059:  ldc.i4.1
    IL_005a:  ldc.i4     0x90
    IL_005f:  ldc.i4.0
    IL_0060:  ldc.i4.1
    IL_0061:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0066:  stelem.i4
    IL_0067:  stfld      int32[] Game.PressurePlateBlock::m_creativeValuesByMaterial
    IL_006c:  ldarg.0
    IL_006d:  ldc.i4.2
    IL_006e:  newarr     [System.Runtime]System.Int32
    IL_0073:  dup
    IL_0074:  ldc.i4.0
    IL_0075:  ldc.i4.4
    IL_0076:  stelem.i4
    IL_0077:  dup
    IL_0078:  ldc.i4.1
    IL_0079:  ldc.i4.1
    IL_007a:  stelem.i4
    IL_007b:  stfld      int32[] Game.PressurePlateBlock::m_debrisParticleSlotsByMaterial
    IL_0080:  ldarg.0
    IL_0081:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_0086:  ret
  } // end of method PressurePlateBlock::.ctor

} // end of class Game.PressurePlateBlock