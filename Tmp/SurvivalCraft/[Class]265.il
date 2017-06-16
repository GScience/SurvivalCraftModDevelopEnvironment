.class public abstract auto ansi beforefieldinit Game.PostedSignBlock
       extends Game.SignBlock
       implements Game.IElectricElementBlock,
                  Game.IPaintableBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__15'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private int32 '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field public class Game.PostedSignBlock '<>4__this'
    .field private int32 '<i>5__1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__15'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__15'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       181 (0xb5)
      .maxstack  5
      .locals init (int32 V_0,
               valuetype [System.Runtime]System.Nullable`1<int32> V_1,
               int32 V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  switch     ( 
                            IL_001b,
                            IL_0051,
                            IL_0092)
      IL_0019:  ldc.i4.0
      IL_001a:  ret

      IL_001b:  ldarg.0
      IL_001c:  ldc.i4.m1
      IL_001d:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0022:  ldarg.0
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.PostedSignBlock Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>4__this'
      IL_0029:  ldfld      int32 Game.Block::BlockIndex
      IL_002e:  ldc.i4.0
      IL_002f:  ldc.i4.0
      IL_0030:  ldloca.s   V_1
      IL_0032:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0038:  ldloc.1
      IL_0039:  call       int32 Game.PostedSignBlock::SetColor(int32,
                                                                valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_003e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0043:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_0048:  ldarg.0
      IL_0049:  ldc.i4.1
      IL_004a:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_004f:  ldc.i4.1
      IL_0050:  ret

      IL_0051:  ldarg.0
      IL_0052:  ldc.i4.m1
      IL_0053:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0058:  ldarg.0
      IL_0059:  ldc.i4.0
      IL_005a:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<i>5__1'
      IL_005f:  br.s       IL_00a9

      IL_0061:  ldarg.0
      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.PostedSignBlock Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>4__this'
      IL_0068:  ldfld      int32 Game.Block::BlockIndex
      IL_006d:  ldc.i4.0
      IL_006e:  ldc.i4.0
      IL_006f:  ldarg.0
      IL_0070:  ldfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<i>5__1'
      IL_0075:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_007a:  call       int32 Game.PostedSignBlock::SetColor(int32,
                                                                valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_007f:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0084:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_0089:  ldarg.0
      IL_008a:  ldc.i4.2
      IL_008b:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0090:  ldc.i4.1
      IL_0091:  ret

      IL_0092:  ldarg.0
      IL_0093:  ldc.i4.m1
      IL_0094:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0099:  ldarg.0
      IL_009a:  ldfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<i>5__1'
      IL_009f:  ldc.i4.1
      IL_00a0:  add
      IL_00a1:  stloc.2
      IL_00a2:  ldarg.0
      IL_00a3:  ldloc.2
      IL_00a4:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<i>5__1'
      IL_00a9:  ldarg.0
      IL_00aa:  ldfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<i>5__1'
      IL_00af:  ldc.i4.s   16
      IL_00b1:  blt.s      IL_0061

      IL_00b3:  ldc.i4.0
      IL_00b4:  ret
    } // end of method '<GetCreativeValues>d__15'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__15'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__15'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.PostedSignBlock/'<GetCreativeValues>d__15' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PostedSignBlock/'<GetCreativeValues>d__15'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.PostedSignBlock Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>4__this'
      IL_0030:  stfld      class Game.PostedSignBlock Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.PostedSignBlock/'<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__15'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.PostedSignBlock/'<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PostedSignBlock/'<GetCreativeValues>d__15'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__15'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__15'

  .field private string m_modelName
  .field private int32 m_coloredTextureSlot
  .field private int32 m_attachedSignBlockIndex
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh m_standaloneColoredBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshes
  .field private class Game.BlockMesh[] m_coloredBlockMeshes
  .field private class Game.BlockMesh[] m_surfaceMeshes
  .field private valuetype [Engine]Engine.Vector3[] m_surfaceNormals
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .field private valuetype [Engine]Engine.Vector3[] m_directions
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(string modelName,
                               int32 coloredTextureSlot,
                               int32 attachedSignBlockIndex) cil managed
  {
    // 代码大小       128 (0x80)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.PostedSignBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.PostedSignBlock::m_standaloneColoredBlockMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.s   16
    IL_0019:  newarr     Game.BlockMesh
    IL_001e:  stfld      class Game.BlockMesh[] Game.PostedSignBlock::m_blockMeshes
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.s   16
    IL_0026:  newarr     Game.BlockMesh
    IL_002b:  stfld      class Game.BlockMesh[] Game.PostedSignBlock::m_coloredBlockMeshes
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4.s   16
    IL_0033:  newarr     Game.BlockMesh
    IL_0038:  stfld      class Game.BlockMesh[] Game.PostedSignBlock::m_surfaceMeshes
    IL_003d:  ldarg.0
    IL_003e:  ldc.i4.s   16
    IL_0040:  newarr     [Engine]Engine.Vector3
    IL_0045:  stfld      valuetype [Engine]Engine.Vector3[] Game.PostedSignBlock::m_surfaceNormals
    IL_004a:  ldarg.0
    IL_004b:  ldc.i4.s   16
    IL_004d:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0052:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.PostedSignBlock::m_collisionBoxes
    IL_0057:  ldarg.0
    IL_0058:  ldc.i4.s   16
    IL_005a:  newarr     [Engine]Engine.Vector3
    IL_005f:  stfld      valuetype [Engine]Engine.Vector3[] Game.PostedSignBlock::m_directions
    IL_0064:  ldarg.0
    IL_0065:  call       instance void Game.SignBlock::.ctor()
    IL_006a:  ldarg.0
    IL_006b:  ldarg.1
    IL_006c:  stfld      string Game.PostedSignBlock::m_modelName
    IL_0071:  ldarg.0
    IL_0072:  ldarg.2
    IL_0073:  stfld      int32 Game.PostedSignBlock::m_coloredTextureSlot
    IL_0078:  ldarg.0
    IL_0079:  ldarg.3
    IL_007a:  stfld      int32 Game.PostedSignBlock::m_attachedSignBlockIndex
    IL_007f:  ret
  } // end of method PostedSignBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       1117 (0x45d)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             bool V_5,
             valuetype [Engine]Engine.Matrix V_6,
             class Game.BlockMesh V_7,
             class Game.BlockMesh V_8,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_9,
             int32 V_10,
             valuetype [Engine]Engine.Vector2 V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.PostedSignBlock::m_modelName
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
    IL_0024:  ldstr      "Post"
    IL_0029:  ldc.i4.1
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002f:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0034:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0039:  stloc.2
    IL_003a:  ldloc.0
    IL_003b:  ldstr      "Surface"
    IL_0040:  ldc.i4.1
    IL_0041:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_004b:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0050:  stloc.3
    IL_0051:  ldc.i4.0
    IL_0052:  stloc.s    V_4
    IL_0054:  br         IL_033e

    IL_0059:  ldloc.s    V_4
    IL_005b:  call       bool Game.PostedSignBlock::GetHanging(int32)
    IL_0060:  stloc.s    V_5
    IL_0062:  ldloc.s    V_4
    IL_0064:  call       int32 Game.PostedSignBlock::GetDirection(int32)
    IL_0069:  conv.r4
    IL_006a:  ldc.r4     3.1415927
    IL_006f:  mul
    IL_0070:  ldc.r4     4.
    IL_0075:  div
    IL_0076:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_007b:  ldc.r4     0.5
    IL_0080:  ldc.r4     0.0
    IL_0085:  ldc.r4     0.5
    IL_008a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_008f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0094:  stloc.s    V_6
    IL_0096:  ldloc.s    V_5
    IL_0098:  brfalse.s  IL_00d0

    IL_009a:  ldloc.s    V_6
    IL_009c:  ldc.r4     1.
    IL_00a1:  ldc.r4     -1.
    IL_00a6:  ldc.r4     1.
    IL_00ab:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_00b0:  ldc.r4     0.0
    IL_00b5:  ldc.r4     1.
    IL_00ba:  ldc.r4     0.0
    IL_00bf:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00c4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00c9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ce:  stloc.s    V_6
    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      valuetype [Engine]Engine.Vector3[] Game.PostedSignBlock::m_directions
    IL_00d6:  ldloc.s    V_4
    IL_00d8:  ldloca.s   V_6
    IL_00da:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00df:  stelem     [Engine]Engine.Vector3
    IL_00e4:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00e9:  stloc.s    V_7
    IL_00eb:  ldloc.s    V_7
    IL_00ed:  ldloc.0
    IL_00ee:  ldstr      "Sign"
    IL_00f3:  ldc.i4.1
    IL_00f4:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00f9:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00fe:  stloc.s    V_9
    IL_0100:  ldloca.s   V_9
    IL_0102:  ldc.i4.0
    IL_0103:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0108:  ldloc.1
    IL_0109:  ldloc.s    V_6
    IL_010b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0110:  ldc.i4.0
    IL_0111:  ldloc.s    V_5
    IL_0113:  ldc.i4.0
    IL_0114:  ldc.i4.0
    IL_0115:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_011a:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_011f:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0124:  stloc.s    V_8
    IL_0126:  ldloc.s    V_8
    IL_0128:  ldloc.0
    IL_0129:  ldstr      "Post"
    IL_012e:  ldc.i4.1
    IL_012f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0134:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0139:  stloc.s    V_9
    IL_013b:  ldloca.s   V_9
    IL_013d:  ldc.i4.0
    IL_013e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0143:  ldloc.2
    IL_0144:  ldloc.s    V_6
    IL_0146:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_014b:  ldc.i4.0
    IL_014c:  ldloc.s    V_5
    IL_014e:  ldc.i4.0
    IL_014f:  ldc.i4.0
    IL_0150:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0155:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_blockMeshes
    IL_0160:  ldloc.s    V_4
    IL_0162:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0167:  stelem.ref
    IL_0168:  ldarg.0
    IL_0169:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_blockMeshes
    IL_016e:  ldloc.s    V_4
    IL_0170:  ldelem.ref
    IL_0171:  ldloc.s    V_7
    IL_0173:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_0178:  ldarg.0
    IL_0179:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_blockMeshes
    IL_017e:  ldloc.s    V_4
    IL_0180:  ldelem.ref
    IL_0181:  ldloc.s    V_8
    IL_0183:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_0188:  ldarg.0
    IL_0189:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_coloredBlockMeshes
    IL_018e:  ldloc.s    V_4
    IL_0190:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0195:  stelem.ref
    IL_0196:  ldarg.0
    IL_0197:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_coloredBlockMeshes
    IL_019c:  ldloc.s    V_4
    IL_019e:  ldelem.ref
    IL_019f:  ldarg.0
    IL_01a0:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_blockMeshes
    IL_01a5:  ldloc.s    V_4
    IL_01a7:  ldelem.ref
    IL_01a8:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_blockMeshes
    IL_01b3:  ldloc.s    V_4
    IL_01b5:  ldelem.ref
    IL_01b6:  ldarg.0
    IL_01b7:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_01bc:  ldc.i4.s   16
    IL_01be:  rem
    IL_01bf:  conv.r4
    IL_01c0:  ldc.r4     16.
    IL_01c5:  div
    IL_01c6:  ldarg.0
    IL_01c7:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_01cc:  ldc.i4.s   16
    IL_01ce:  div
    IL_01cf:  conv.r4
    IL_01d0:  ldc.r4     16.
    IL_01d5:  div
    IL_01d6:  ldc.r4     0.0
    IL_01db:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01e0:  ldc.i4.m1
    IL_01e1:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_01e6:  ldarg.0
    IL_01e7:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_coloredBlockMeshes
    IL_01ec:  ldloc.s    V_4
    IL_01ee:  ldelem.ref
    IL_01ef:  ldarg.0
    IL_01f0:  ldfld      int32 Game.PostedSignBlock::m_coloredTextureSlot
    IL_01f5:  ldc.i4.s   16
    IL_01f7:  rem
    IL_01f8:  conv.r4
    IL_01f9:  ldc.r4     16.
    IL_01fe:  div
    IL_01ff:  ldarg.0
    IL_0200:  ldfld      int32 Game.PostedSignBlock::m_coloredTextureSlot
    IL_0205:  ldc.i4.s   16
    IL_0207:  div
    IL_0208:  conv.r4
    IL_0209:  ldc.r4     16.
    IL_020e:  div
    IL_020f:  ldc.r4     0.0
    IL_0214:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0219:  ldc.i4.m1
    IL_021a:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_021f:  ldarg.0
    IL_0220:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.PostedSignBlock::m_collisionBoxes
    IL_0225:  ldloc.s    V_4
    IL_0227:  ldc.i4.2
    IL_0228:  newarr     [Engine]Engine.BoundingBox
    IL_022d:  stelem.ref
    IL_022e:  ldarg.0
    IL_022f:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.PostedSignBlock::m_collisionBoxes
    IL_0234:  ldloc.s    V_4
    IL_0236:  ldelem.ref
    IL_0237:  ldc.i4.0
    IL_0238:  ldloc.s    V_7
    IL_023a:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_023f:  stelem     [Engine]Engine.BoundingBox
    IL_0244:  ldarg.0
    IL_0245:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.PostedSignBlock::m_collisionBoxes
    IL_024a:  ldloc.s    V_4
    IL_024c:  ldelem.ref
    IL_024d:  ldc.i4.1
    IL_024e:  ldloc.s    V_8
    IL_0250:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_0255:  stelem     [Engine]Engine.BoundingBox
    IL_025a:  ldarg.0
    IL_025b:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_surfaceMeshes
    IL_0260:  ldloc.s    V_4
    IL_0262:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0267:  stelem.ref
    IL_0268:  ldarg.0
    IL_0269:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_surfaceMeshes
    IL_026e:  ldloc.s    V_4
    IL_0270:  ldelem.ref
    IL_0271:  ldloc.0
    IL_0272:  ldstr      "Surface"
    IL_0277:  ldc.i4.1
    IL_0278:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_027d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0282:  stloc.s    V_9
    IL_0284:  ldloca.s   V_9
    IL_0286:  ldc.i4.0
    IL_0287:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_028c:  ldloc.3
    IL_028d:  ldloc.s    V_6
    IL_028f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0294:  ldc.i4.0
    IL_0295:  ldloc.s    V_5
    IL_0297:  ldc.i4.0
    IL_0298:  ldc.i4.0
    IL_0299:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_029e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_02a3:  ldarg.0
    IL_02a4:  ldfld      valuetype [Engine]Engine.Vector3[] Game.PostedSignBlock::m_surfaceNormals
    IL_02a9:  ldloc.s    V_4
    IL_02ab:  ldloca.s   V_6
    IL_02ad:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_02b2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_02b7:  stelem     [Engine]Engine.Vector3
    IL_02bc:  ldloc.s    V_5
    IL_02be:  brfalse.s  IL_0338

    IL_02c0:  ldc.i4.0
    IL_02c1:  stloc.s    V_10
    IL_02c3:  br.s       IL_0321

    IL_02c5:  ldarg.0
    IL_02c6:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_surfaceMeshes
    IL_02cb:  ldloc.s    V_4
    IL_02cd:  ldelem.ref
    IL_02ce:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_02d3:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_02d8:  ldloc.s    V_10
    IL_02da:  ldelema    Game.BlockMeshVertex
    IL_02df:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_02e4:  stloc.s    V_11
    IL_02e6:  ldloca.s   V_11
    IL_02e8:  ldc.r4     1.
    IL_02ed:  ldloc.s    V_11
    IL_02ef:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02f4:  sub
    IL_02f5:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_02fa:  ldarg.0
    IL_02fb:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_surfaceMeshes
    IL_0300:  ldloc.s    V_4
    IL_0302:  ldelem.ref
    IL_0303:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0308:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_030d:  ldloc.s    V_10
    IL_030f:  ldelema    Game.BlockMeshVertex
    IL_0314:  ldloc.s    V_11
    IL_0316:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_031b:  ldloc.s    V_10
    IL_031d:  ldc.i4.1
    IL_031e:  add
    IL_031f:  stloc.s    V_10
    IL_0321:  ldloc.s    V_10
    IL_0323:  ldarg.0
    IL_0324:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_surfaceMeshes
    IL_0329:  ldloc.s    V_4
    IL_032b:  ldelem.ref
    IL_032c:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0331:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0336:  blt.s      IL_02c5

    IL_0338:  ldloc.s    V_4
    IL_033a:  ldc.i4.1
    IL_033b:  add
    IL_033c:  stloc.s    V_4
    IL_033e:  ldloc.s    V_4
    IL_0340:  ldc.i4.s   16
    IL_0342:  blt        IL_0059

    IL_0347:  ldarg.0
    IL_0348:  ldfld      class Game.BlockMesh Game.PostedSignBlock::m_standaloneBlockMesh
    IL_034d:  ldloc.0
    IL_034e:  ldstr      "Sign"
    IL_0353:  ldc.i4.1
    IL_0354:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0359:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_035e:  stloc.s    V_9
    IL_0360:  ldloca.s   V_9
    IL_0362:  ldc.i4.0
    IL_0363:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0368:  ldloc.1
    IL_0369:  ldc.r4     0.0
    IL_036e:  ldc.r4     -0.60000002
    IL_0373:  ldc.r4     0.0
    IL_0378:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_037d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0382:  ldc.i4.0
    IL_0383:  ldc.i4.0
    IL_0384:  ldc.i4.0
    IL_0385:  ldc.i4.0
    IL_0386:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_038b:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0390:  ldarg.0
    IL_0391:  ldfld      class Game.BlockMesh Game.PostedSignBlock::m_standaloneBlockMesh
    IL_0396:  ldloc.0
    IL_0397:  ldstr      "Post"
    IL_039c:  ldc.i4.1
    IL_039d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_03a2:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_03a7:  stloc.s    V_9
    IL_03a9:  ldloca.s   V_9
    IL_03ab:  ldc.i4.0
    IL_03ac:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_03b1:  ldloc.2
    IL_03b2:  ldc.r4     0.0
    IL_03b7:  ldc.r4     -0.60000002
    IL_03bc:  ldc.r4     0.0
    IL_03c1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_03c6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03cb:  ldc.i4.0
    IL_03cc:  ldc.i4.0
    IL_03cd:  ldc.i4.0
    IL_03ce:  ldc.i4.0
    IL_03cf:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_03d4:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_03d9:  ldarg.0
    IL_03da:  ldfld      class Game.BlockMesh Game.PostedSignBlock::m_standaloneColoredBlockMesh
    IL_03df:  ldarg.0
    IL_03e0:  ldfld      class Game.BlockMesh Game.PostedSignBlock::m_standaloneBlockMesh
    IL_03e5:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_03ea:  ldarg.0
    IL_03eb:  ldfld      class Game.BlockMesh Game.PostedSignBlock::m_standaloneBlockMesh
    IL_03f0:  ldarg.0
    IL_03f1:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_03f6:  ldc.i4.s   16
    IL_03f8:  rem
    IL_03f9:  conv.r4
    IL_03fa:  ldc.r4     16.
    IL_03ff:  div
    IL_0400:  ldarg.0
    IL_0401:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0406:  ldc.i4.s   16
    IL_0408:  div
    IL_0409:  conv.r4
    IL_040a:  ldc.r4     16.
    IL_040f:  div
    IL_0410:  ldc.r4     0.0
    IL_0415:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_041a:  ldc.i4.m1
    IL_041b:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0420:  ldarg.0
    IL_0421:  ldfld      class Game.BlockMesh Game.PostedSignBlock::m_standaloneColoredBlockMesh
    IL_0426:  ldarg.0
    IL_0427:  ldfld      int32 Game.PostedSignBlock::m_coloredTextureSlot
    IL_042c:  ldc.i4.s   16
    IL_042e:  rem
    IL_042f:  conv.r4
    IL_0430:  ldc.r4     16.
    IL_0435:  div
    IL_0436:  ldarg.0
    IL_0437:  ldfld      int32 Game.PostedSignBlock::m_coloredTextureSlot
    IL_043c:  ldc.i4.s   16
    IL_043e:  div
    IL_043f:  conv.r4
    IL_0440:  ldc.r4     16.
    IL_0445:  div
    IL_0446:  ldc.r4     0.0
    IL_044b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0450:  ldc.i4.m1
    IL_0451:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0456:  ldarg.0
    IL_0457:  call       instance void Game.Block::Initialize()
    IL_045c:  ret
  } // end of method PostedSignBlock::Initialize

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PostedSignBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brfalse.s  IL_0035

    IL_0015:  ldsfld     string[] Game.PaintBucketBlock::ColorDisplayNames
    IL_001a:  ldloca.s   V_0
    IL_001c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0021:  ldelem.ref
    IL_0022:  ldstr      " "
    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  ldarg.2
    IL_002a:  call       instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_002f:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0034:  ret

    IL_0035:  ldarg.0
    IL_0036:  ldarg.1
    IL_0037:  ldarg.2
    IL_0038:  call       instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_003d:  ret
  } // end of method PostedSignBlock::GetDisplayName

  .method public hidebysig virtual instance string 
          GetCategory(int32 'value') cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PostedSignBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brtrue.s   IL_001d

    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  call       instance string Game.Block::GetCategory(int32)
    IL_001c:  ret

    IL_001d:  ldstr      "Painted"
    IL_0022:  ret
  } // end of method PostedSignBlock::GetCategory

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2D 47 61 6D 65 2E 50 6F 73 74 65 64 53 69   // ..-Game.PostedSi
                                                                                                                                                      67 6E 42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65 61   // gnBlock+<GetCrea
                                                                                                                                                      74 69 76 65 56 61 6C 75 65 73 3E 64 5F 5F 31 35   // tiveValues>d__15
                                                                                                                                                      00 00 ) 
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PostedSignBlock/'<GetCreativeValues>d__15'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.PostedSignBlock Game.PostedSignBlock/'<GetCreativeValues>d__15'::'<>4__this'
    IL_000e:  ret
  } // end of method PostedSignBlock::GetCreativeValues

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
    IL_000a:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PostedSignBlock::GetColor(int32)
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
    IL_0025:  ldfld      int32 Game.Block::BlockIndex
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
  } // end of method PostedSignBlock::GetDropValues

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
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PostedSignBlock::GetColor(int32)
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
    IL_0031:  ldfld      int32 Game.PostedSignBlock::m_coloredTextureSlot
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
  } // end of method PostedSignBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       168 (0xa8)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.Nullable`1<int32> V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_3)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       int32 Game.PostedSignBlock::GetVariant(int32)
    IL_000d:  stloc.1
    IL_000e:  ldloc.0
    IL_000f:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PostedSignBlock::GetColor(int32)
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
    IL_0027:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_coloredBlockMeshes
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
    IL_005e:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_blockMeshes
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
    IL_0087:  call       bool Game.PostedSignBlock::GetHanging(int32)
    IL_008c:  brtrue.s   IL_0091

    IL_008e:  ldc.i4.4
    IL_008f:  br.s       IL_0092

    IL_0091:  ldc.i4.5
    IL_0092:  ldc.r4     9.9999998e-003
    IL_0097:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_009c:  ldarg.2
    IL_009d:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_00a2:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00a7:  ret
  } // end of method PostedSignBlock::GenerateTerrainVertices

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
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PostedSignBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brfalse.s  IL_003e

    IL_0015:  ldarg.1
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.BlockMesh Game.PostedSignBlock::m_standaloneColoredBlockMesh
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
    IL_0040:  ldfld      class Game.BlockMesh Game.PostedSignBlock::m_standaloneBlockMesh
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
  } // end of method PostedSignBlock::DrawBlock

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PostedSignBlock::GetColor(int32)
    IL_000b:  ret
  } // end of method PostedSignBlock::GetPaintColor

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
    IL_000a:  call       int32 Game.PostedSignBlock::SetColor(int32,
                                                              valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_000f:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0014:  ret
  } // end of method PostedSignBlock::Paint

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PostedSignBlock::GetVariant(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.PostedSignBlock::m_collisionBoxes
    IL_0012:  ldloc.0
    IL_0013:  ldelem.ref
    IL_0014:  ret
  } // end of method PostedSignBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       269 (0x10d)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             int32 V_1,
             valuetype Game.BlockPlacementData V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             float32 V_4,
             int32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Matrix V_7,
             int32 V_8,
             float32 V_9)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.PostedSignBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.s    raycastResult
    IL_000e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0013:  ldfld      int32 Game.CellFace::Face
    IL_0018:  ldc.i4.4
    IL_0019:  bge.s      IL_0060

    IL_001b:  ldc.i4.0
    IL_001c:  ldloc.0
    IL_001d:  call       int32 Game.AttachedSignBlock::SetColor(int32,
                                                                valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0022:  ldarg.s    raycastResult
    IL_0024:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0029:  ldfld      int32 Game.CellFace::Face
    IL_002e:  call       int32 Game.AttachedSignBlock::SetFace(int32,
                                                               int32)
    IL_0033:  stloc.1
    IL_0034:  ldloca.s   V_2
    IL_0036:  initobj    Game.BlockPlacementData
    IL_003c:  ldloca.s   V_2
    IL_003e:  ldarg.0
    IL_003f:  ldfld      int32 Game.PostedSignBlock::m_attachedSignBlockIndex
    IL_0044:  ldc.i4.0
    IL_0045:  ldloc.1
    IL_0046:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_004b:  stfld      int32 Game.BlockPlacementData::Value
    IL_0050:  ldloca.s   V_2
    IL_0052:  ldarg.s    raycastResult
    IL_0054:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0059:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_005e:  ldloc.2
    IL_005f:  ret

    IL_0060:  ldarg.2
    IL_0061:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0066:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_006b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0070:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0075:  stloc.s    V_7
    IL_0077:  ldloca.s   V_7
    IL_0079:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_007e:  stloc.3
    IL_007f:  ldc.r4     -3.4028235e+038
    IL_0084:  stloc.s    V_4
    IL_0086:  ldc.i4.0
    IL_0087:  stloc.s    V_5
    IL_0089:  ldc.i4.0
    IL_008a:  stloc.s    V_8
    IL_008c:  br.s       IL_00b7

    IL_008e:  ldloc.3
    IL_008f:  ldarg.0
    IL_0090:  ldfld      valuetype [Engine]Engine.Vector3[] Game.PostedSignBlock::m_directions
    IL_0095:  ldloc.s    V_8
    IL_0097:  ldelem     [Engine]Engine.Vector3
    IL_009c:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_00a1:  stloc.s    V_9
    IL_00a3:  ldloc.s    V_9
    IL_00a5:  ldloc.s    V_4
    IL_00a7:  ble.un.s   IL_00b1

    IL_00a9:  ldloc.s    V_9
    IL_00ab:  stloc.s    V_4
    IL_00ad:  ldloc.s    V_8
    IL_00af:  stloc.s    V_5
    IL_00b1:  ldloc.s    V_8
    IL_00b3:  ldc.i4.1
    IL_00b4:  add
    IL_00b5:  stloc.s    V_8
    IL_00b7:  ldloc.s    V_8
    IL_00b9:  ldc.i4.8
    IL_00ba:  blt.s      IL_008e

    IL_00bc:  ldc.i4.0
    IL_00bd:  ldloc.0
    IL_00be:  call       int32 Game.PostedSignBlock::SetColor(int32,
                                                              valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_00c3:  ldloc.s    V_5
    IL_00c5:  call       int32 Game.PostedSignBlock::SetDirection(int32,
                                                                  int32)
    IL_00ca:  ldarg.s    raycastResult
    IL_00cc:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00d1:  ldfld      int32 Game.CellFace::Face
    IL_00d6:  ldc.i4.5
    IL_00d7:  ceq
    IL_00d9:  call       int32 Game.PostedSignBlock::SetHanging(int32,
                                                                bool)
    IL_00de:  stloc.s    V_6
    IL_00e0:  ldloca.s   V_2
    IL_00e2:  initobj    Game.BlockPlacementData
    IL_00e8:  ldloca.s   V_2
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      int32 Game.Block::BlockIndex
    IL_00f0:  ldc.i4.0
    IL_00f1:  ldloc.s    V_6
    IL_00f3:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_00f8:  stfld      int32 Game.BlockPlacementData::Value
    IL_00fd:  ldloca.s   V_2
    IL_00ff:  ldarg.s    raycastResult
    IL_0101:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0106:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_010b:  ldloc.2
    IL_010c:  ret
  } // end of method PostedSignBlock::GetPlacementValue

  .method public hidebysig virtual instance class Game.BlockMesh 
          GetSignSurfaceBlockMesh(int32 data) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BlockMesh[] Game.PostedSignBlock::m_surfaceMeshes
    IL_0006:  ldarg.1
    IL_0007:  call       int32 Game.PostedSignBlock::GetVariant(int32)
    IL_000c:  ldelem.ref
    IL_000d:  ret
  } // end of method PostedSignBlock::GetSignSurfaceBlockMesh

  .method public hidebysig virtual instance valuetype [Engine]Engine.Vector3 
          GetSignSurfaceNormal(int32 data) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3[] Game.PostedSignBlock::m_surfaceNormals
    IL_0006:  ldarg.1
    IL_0007:  call       int32 Game.PostedSignBlock::GetVariant(int32)
    IL_000c:  ldelem     [Engine]Engine.Vector3
    IL_0011:  ret
  } // end of method PostedSignBlock::GetSignSurfaceNormal

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       36 (0x24)
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
    IL_000e:  call       bool Game.PostedSignBlock::GetHanging(int32)
    IL_0013:  brtrue.s   IL_0018

    IL_0015:  ldc.i4.4
    IL_0016:  br.s       IL_0019

    IL_0018:  ldc.i4.5
    IL_0019:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_001e:  newobj     instance void Game.SignElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                       valuetype Game.CellFace)
    IL_0023:  ret
  } // end of method PostedSignBlock::CreateElectricElement

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
    // 代码大小       93 (0x5d)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       bool Game.PostedSignBlock::GetHanging(int32)
    IL_000b:  brfalse.s  IL_0035

    IL_000d:  ldarg.3
    IL_000e:  ldc.i4.5
    IL_000f:  bne.un.s   IL_0024

    IL_0011:  ldarg.3
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.s    connectorFace
    IL_0015:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_001a:  stloc.0
    IL_001b:  ldloca.s   V_0
    IL_001d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_0022:  brtrue.s   IL_002e

    IL_0024:  ldloca.s   V_1
    IL_0026:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_002c:  ldloc.1
    IL_002d:  ret

    IL_002e:  ldc.i4.0
    IL_002f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0034:  ret

    IL_0035:  ldarg.3
    IL_0036:  ldc.i4.4
    IL_0037:  bne.un.s   IL_004c

    IL_0039:  ldarg.3
    IL_003a:  ldc.i4.0
    IL_003b:  ldarg.s    connectorFace
    IL_003d:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0042:  stloc.0
    IL_0043:  ldloca.s   V_0
    IL_0045:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_004a:  brtrue.s   IL_0056

    IL_004c:  ldloca.s   V_1
    IL_004e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_0054:  ldloc.1
    IL_0055:  ret

    IL_0056:  ldc.i4.0
    IL_0057:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_005c:  ret
  } // end of method PostedSignBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method PostedSignBlock::GetConnectionMask

  .method public hidebysig static int32  GetDirection(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  and
    IL_0003:  ret
  } // end of method PostedSignBlock::GetDirection

  .method public hidebysig static int32  SetDirection(int32 data,
                                                      int32 direction) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -8
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.7
    IL_0006:  and
    IL_0007:  or
    IL_0008:  ret
  } // end of method PostedSignBlock::SetDirection

  .method public hidebysig static bool  GetHanging(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method PostedSignBlock::GetHanging

  .method public hidebysig static int32  SetHanging(int32 data,
                                                    bool hanging) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -9
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.8
    IL_000a:  or
    IL_000b:  ret
  } // end of method PostedSignBlock::SetHanging

  .method public hidebysig static int32  GetVariant(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   15
    IL_0003:  and
    IL_0004:  ret
  } // end of method PostedSignBlock::GetVariant

  .method public hidebysig static int32  SetVariant(int32 data,
                                                    int32 'variant') cil managed
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
  } // end of method PostedSignBlock::SetVariant

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<int32> 
          GetColor(int32 data) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  and
    IL_0004:  brfalse.s  IL_0012

    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.5
    IL_0008:  shr
    IL_0009:  ldc.i4.s   15
    IL_000b:  and
    IL_000c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0011:  ret

    IL_0012:  ldloca.s   V_0
    IL_0014:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_001a:  ldloc.0
    IL_001b:  ret
  } // end of method PostedSignBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarga.s   color
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_0021

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4     0xfffffe0f
    IL_000f:  and
    IL_0010:  ldc.i4.s   16
    IL_0012:  or
    IL_0013:  ldarga.s   color
    IL_0015:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_001a:  ldc.i4.s   15
    IL_001c:  and
    IL_001d:  ldc.i4.5
    IL_001e:  shl
    IL_001f:  or
    IL_0020:  ret

    IL_0021:  ldarg.0
    IL_0022:  ldc.i4     0xfffffe0f
    IL_0027:  and
    IL_0028:  ret
  } // end of method PostedSignBlock::SetColor

} // end of class Game.PostedSignBlock