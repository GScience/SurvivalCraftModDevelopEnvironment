.class public auto ansi beforefieldinit Game.MusketBlock
       extends Game.Block
{
  .class auto ansi sealed nested public LoadState
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.MusketBlock/LoadState Empty = int32(0x00000000)
    .field public static literal valuetype Game.MusketBlock/LoadState Gunpowder = int32(0x00000001)
    .field public static literal valuetype Game.MusketBlock/LoadState Wad = int32(0x00000002)
    .field public static literal valuetype Game.MusketBlock/LoadState Loaded = int32(0x00000003)
  } // end of class LoadState

  .field public static literal int32 Index = int32(0x000000D4)
  .field private class Game.BlockMesh m_standaloneBlockMeshUnloaded
  .field private class Game.BlockMesh m_standaloneBlockMeshLoaded
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       289 (0x121)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_3)
    IL_0000:  ldstr      "Models/Musket"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Musket"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Hammer"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldarg.0
    IL_003a:  newobj     instance void Game.BlockMesh::.ctor()
    IL_003f:  stfld      class Game.BlockMesh Game.MusketBlock::m_standaloneBlockMeshUnloaded
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.BlockMesh Game.MusketBlock::m_standaloneBlockMeshUnloaded
    IL_004a:  ldloc.0
    IL_004b:  ldstr      "Musket"
    IL_0050:  ldc.i4.1
    IL_0051:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0056:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_005b:  stloc.3
    IL_005c:  ldloca.s   V_3
    IL_005e:  ldc.i4.0
    IL_005f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0064:  ldloc.1
    IL_0065:  ldc.i4.0
    IL_0066:  ldc.i4.0
    IL_0067:  ldc.i4.0
    IL_0068:  ldc.i4.0
    IL_0069:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_006e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.BlockMesh Game.MusketBlock::m_standaloneBlockMeshUnloaded
    IL_0079:  ldloc.0
    IL_007a:  ldstr      "Hammer"
    IL_007f:  ldc.i4.1
    IL_0080:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0085:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_008a:  stloc.3
    IL_008b:  ldloca.s   V_3
    IL_008d:  ldc.i4.0
    IL_008e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0093:  ldloc.2
    IL_0094:  ldc.i4.0
    IL_0095:  ldc.i4.0
    IL_0096:  ldc.i4.0
    IL_0097:  ldc.i4.0
    IL_0098:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_009d:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00a2:  ldarg.0
    IL_00a3:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00a8:  stfld      class Game.BlockMesh Game.MusketBlock::m_standaloneBlockMeshLoaded
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.BlockMesh Game.MusketBlock::m_standaloneBlockMeshLoaded
    IL_00b3:  ldloc.0
    IL_00b4:  ldstr      "Musket"
    IL_00b9:  ldc.i4.1
    IL_00ba:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00bf:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00c4:  stloc.3
    IL_00c5:  ldloca.s   V_3
    IL_00c7:  ldc.i4.0
    IL_00c8:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00cd:  ldloc.1
    IL_00ce:  ldc.i4.0
    IL_00cf:  ldc.i4.0
    IL_00d0:  ldc.i4.0
    IL_00d1:  ldc.i4.0
    IL_00d2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00d7:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.BlockMesh Game.MusketBlock::m_standaloneBlockMeshLoaded
    IL_00e2:  ldloc.0
    IL_00e3:  ldstr      "Hammer"
    IL_00e8:  ldc.i4.1
    IL_00e9:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00ee:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00f3:  stloc.3
    IL_00f4:  ldloca.s   V_3
    IL_00f6:  ldc.i4.0
    IL_00f7:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00fc:  ldc.r4     0.69999999
    IL_0101:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0106:  ldloc.2
    IL_0107:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_010c:  ldc.i4.0
    IL_010d:  ldc.i4.0
    IL_010e:  ldc.i4.0
    IL_010f:  ldc.i4.0
    IL_0110:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0115:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_011a:  ldarg.0
    IL_011b:  call       instance void Game.Block::Initialize()
    IL_0120:  ret
  } // end of method MusketBlock::Initialize

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
  } // end of method MusketBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  6
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.MusketBlock::GetHammerState(int32)
    IL_000b:  brfalse.s  IL_0027

    IL_000d:  ldarg.1
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.BlockMesh Game.MusketBlock::m_standaloneBlockMeshLoaded
    IL_0014:  ldarg.3
    IL_0015:  ldc.r4     2.
    IL_001a:  ldarg.s    size
    IL_001c:  mul
    IL_001d:  ldarg.s    matrix
    IL_001f:  ldarg.s    environmentData
    IL_0021:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0026:  ret

    IL_0027:  ldarg.1
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.BlockMesh Game.MusketBlock::m_standaloneBlockMeshUnloaded
    IL_002e:  ldarg.3
    IL_002f:  ldc.r4     2.
    IL_0034:  ldarg.s    size
    IL_0036:  mul
    IL_0037:  ldarg.s    matrix
    IL_0039:  ldarg.s    environmentData
    IL_003b:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0040:  ret
  } // end of method MusketBlock::DrawBlock

  .method public hidebysig virtual instance bool 
          IsSwapAnimationNeeded(int32 oldValue,
                                int32 newValue) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  ldc.i4     0xd4
    IL_000b:  beq.s      IL_000f

    IL_000d:  ldc.i4.1
    IL_000e:  ret

    IL_000f:  ldarg.1
    IL_0010:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0015:  stloc.0
    IL_0016:  ldarg.2
    IL_0017:  call       int32 Game.Terrain::ExtractData(int32)
    IL_001c:  ldc.i4.1
    IL_001d:  call       int32 Game.MusketBlock::SetHammerState(int32,
                                                                bool)
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.1
    IL_0024:  call       int32 Game.MusketBlock::SetHammerState(int32,
                                                                bool)
    IL_0029:  ceq
    IL_002b:  ldc.i4.0
    IL_002c:  ceq
    IL_002e:  ret
  } // end of method MusketBlock::IsSwapAnimationNeeded

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
  } // end of method MusketBlock::GetDamage

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
  } // end of method MusketBlock::SetDamage

  .method public hidebysig static valuetype Game.MusketBlock/LoadState 
          GetLoadState(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method MusketBlock::GetLoadState

  .method public hidebysig static int32  SetLoadState(int32 data,
                                                      valuetype Game.MusketBlock/LoadState loadState) cil managed
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
  } // end of method MusketBlock::SetLoadState

  .method public hidebysig static bool  GetHammerState(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method MusketBlock::GetHammerState

  .method public hidebysig static int32  SetHammerState(int32 data,
                                                        bool state) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -5
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  brtrue.s   IL_000a

    IL_0007:  ldc.i4.0
    IL_0008:  br.s       IL_000b

    IL_000a:  ldc.i4.1
    IL_000b:  ldc.i4.2
    IL_000c:  shl
    IL_000d:  or
    IL_000e:  ret
  } // end of method MusketBlock::SetHammerState

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType> 
          GetBulletType(int32 data) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType> V_1)
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
    IL_000d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::.ctor(!0)
    IL_0012:  ret

    IL_0013:  ldloca.s   V_1
    IL_0015:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>
    IL_001b:  ldloc.1
    IL_001c:  ret
  } // end of method MusketBlock::GetBulletType

  .method public hidebysig static int32  SetBulletType(int32 data,
                                                       valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType> bulletType) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarga.s   bulletType
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::get_HasValue()
    IL_0007:  brtrue.s   IL_000c

    IL_0009:  ldc.i4.0
    IL_000a:  br.s       IL_0015

    IL_000c:  ldarga.s   bulletType
    IL_000e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::get_Value()
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
  } // end of method MusketBlock::SetBulletType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Block::.ctor()
    IL_0006:  ret
  } // end of method MusketBlock::.ctor

} // end of class Game.MusketBlock