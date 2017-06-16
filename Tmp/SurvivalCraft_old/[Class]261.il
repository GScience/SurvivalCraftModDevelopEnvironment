.class public abstract auto ansi beforefieldinit Game.FenceGateBlock
       extends Game.Block
       implements Game.IElectricElementBlock,
                  Game.IPaintableBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__16'
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
    .field public class Game.FenceGateBlock '<>4__this'
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
      IL_0008:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__16'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__16'::System.IDisposable.Dispose

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
      IL_0001:  ldfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>1__state'
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
      IL_001d:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>1__state'
      IL_0022:  ldarg.0
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.FenceGateBlock Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>4__this'
      IL_0029:  ldfld      int32 Game.Block::BlockIndex
      IL_002e:  ldc.i4.0
      IL_002f:  ldc.i4.0
      IL_0030:  ldloca.s   V_1
      IL_0032:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0038:  ldloc.1
      IL_0039:  call       int32 Game.FenceGateBlock::SetColor(int32,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_003e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0043:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>2__current'
      IL_0048:  ldarg.0
      IL_0049:  ldc.i4.1
      IL_004a:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>1__state'
      IL_004f:  ldc.i4.1
      IL_0050:  ret

      IL_0051:  ldarg.0
      IL_0052:  ldc.i4.m1
      IL_0053:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>1__state'
      IL_0058:  ldarg.0
      IL_0059:  ldc.i4.0
      IL_005a:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<i>5__1'
      IL_005f:  br.s       IL_00a9

      IL_0061:  ldarg.0
      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.FenceGateBlock Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>4__this'
      IL_0068:  ldfld      int32 Game.Block::BlockIndex
      IL_006d:  ldc.i4.0
      IL_006e:  ldc.i4.0
      IL_006f:  ldarg.0
      IL_0070:  ldfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<i>5__1'
      IL_0075:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_007a:  call       int32 Game.FenceGateBlock::SetColor(int32,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_007f:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0084:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>2__current'
      IL_0089:  ldarg.0
      IL_008a:  ldc.i4.2
      IL_008b:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>1__state'
      IL_0090:  ldc.i4.1
      IL_0091:  ret

      IL_0092:  ldarg.0
      IL_0093:  ldc.i4.m1
      IL_0094:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>1__state'
      IL_0099:  ldarg.0
      IL_009a:  ldfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<i>5__1'
      IL_009f:  ldc.i4.1
      IL_00a0:  add
      IL_00a1:  stloc.2
      IL_00a2:  ldarg.0
      IL_00a3:  ldloc.2
      IL_00a4:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<i>5__1'
      IL_00a9:  ldarg.0
      IL_00aa:  ldfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<i>5__1'
      IL_00af:  ldc.i4.s   16
      IL_00b1:  blt.s      IL_0061

      IL_00b3:  ldc.i4.0
      IL_00b4:  ret
    } // end of method '<GetCreativeValues>d__16'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__16'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__16'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__16'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.FenceGateBlock/'<GetCreativeValues>d__16' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.FenceGateBlock/'<GetCreativeValues>d__16'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.FenceGateBlock Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>4__this'
      IL_0030:  stfld      class Game.FenceGateBlock Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetCreativeValues>d__16'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.FenceGateBlock/'<GetCreativeValues>d__16'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__16'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.FenceGateBlock/'<GetCreativeValues>d__16'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__16'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.FenceGateBlock/'<GetCreativeValues>d__16'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__16'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__16'

  .field private float32 m_pivotDistance
  .field private string m_modelName
  .field private bool m_doubleSided
  .field private bool m_useAlphaTest
  .field private int32 m_coloredTextureSlot
  .field private valuetype [Engine]Engine.Color m_postColor
  .field private valuetype [Engine]Engine.Color m_unpaintedColor
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh m_standaloneColoredBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshes
  .field private class Game.BlockMesh[] m_coloredBlockMeshes
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(string modelName,
                               float32 pivotDistance,
                               bool doubleSided,
                               bool useAlphaTest,
                               int32 coloredTextureSlot,
                               valuetype [Engine]Engine.Color postColor,
                               valuetype [Engine]Engine.Color unpaintedColor) cil managed
  {
    // 代码大小       121 (0x79)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneColoredBlockMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.s   16
    IL_0019:  newarr     Game.BlockMesh
    IL_001e:  stfld      class Game.BlockMesh[] Game.FenceGateBlock::m_blockMeshes
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.s   16
    IL_0026:  newarr     Game.BlockMesh
    IL_002b:  stfld      class Game.BlockMesh[] Game.FenceGateBlock::m_coloredBlockMeshes
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4.s   16
    IL_0033:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0038:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.FenceGateBlock::m_collisionBoxes
    IL_003d:  ldarg.0
    IL_003e:  call       instance void Game.Block::.ctor()
    IL_0043:  ldarg.0
    IL_0044:  ldarg.1
    IL_0045:  stfld      string Game.FenceGateBlock::m_modelName
    IL_004a:  ldarg.0
    IL_004b:  ldarg.2
    IL_004c:  stfld      float32 Game.FenceGateBlock::m_pivotDistance
    IL_0051:  ldarg.0
    IL_0052:  ldarg.3
    IL_0053:  stfld      bool Game.FenceGateBlock::m_doubleSided
    IL_0058:  ldarg.0
    IL_0059:  ldarg.s    useAlphaTest
    IL_005b:  stfld      bool Game.FenceGateBlock::m_useAlphaTest
    IL_0060:  ldarg.0
    IL_0061:  ldarg.s    coloredTextureSlot
    IL_0063:  stfld      int32 Game.FenceGateBlock::m_coloredTextureSlot
    IL_0068:  ldarg.0
    IL_0069:  ldarg.s    postColor
    IL_006b:  stfld      valuetype [Engine]Engine.Color Game.FenceGateBlock::m_postColor
    IL_0070:  ldarg.0
    IL_0071:  ldarg.s    unpaintedColor
    IL_0073:  stfld      valuetype [Engine]Engine.Color Game.FenceGateBlock::m_unpaintedColor
    IL_0078:  ret
  } // end of method FenceGateBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       1255 (0x4e7)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             int32 V_4,
             bool V_5,
             bool V_6,
             float32 V_7,
             valuetype [Engine]Engine.Matrix V_8,
             valuetype [Engine]Engine.BoundingBox V_9,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.FenceGateBlock::m_modelName
    IL_0006:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldstr      "Post"
    IL_0012:  ldc.i4.1
    IL_0013:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0018:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001d:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0022:  stloc.1
    IL_0023:  ldloc.0
    IL_0024:  ldstr      "Planks"
    IL_0029:  ldc.i4.1
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002f:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0034:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0039:  stloc.2
    IL_003a:  ldc.i4.0
    IL_003b:  stloc.3
    IL_003c:  br         IL_0377

    IL_0041:  ldloc.3
    IL_0042:  call       int32 Game.FenceGateBlock::GetRotation(int32)
    IL_0047:  stloc.s    V_4
    IL_0049:  ldloc.3
    IL_004a:  call       bool Game.FenceGateBlock::GetOpen(int32)
    IL_004f:  stloc.s    V_5
    IL_0051:  ldloc.3
    IL_0052:  call       bool Game.FenceGateBlock::GetRightHanded(int32)
    IL_0057:  stloc.s    V_6
    IL_0059:  ldloc.s    V_6
    IL_005b:  brtrue.s   IL_0060

    IL_005d:  ldc.i4.1
    IL_005e:  br.s       IL_0061

    IL_0060:  ldc.i4.m1
    IL_0061:  conv.r4
    IL_0062:  stloc.s    V_7
    IL_0064:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0069:  stloc.s    V_8
    IL_006b:  ldloc.s    V_8
    IL_006d:  ldloc.s    V_7
    IL_006f:  neg
    IL_0070:  ldc.r4     1.
    IL_0075:  ldc.r4     1.
    IL_007a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_007f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0084:  stloc.s    V_8
    IL_0086:  ldloc.s    V_8
    IL_0088:  ldc.r4     0.5
    IL_008d:  ldarg.0
    IL_008e:  ldfld      float32 Game.FenceGateBlock::m_pivotDistance
    IL_0093:  sub
    IL_0094:  ldloc.s    V_7
    IL_0096:  mul
    IL_0097:  ldc.r4     0.0
    IL_009c:  ldc.r4     0.0
    IL_00a1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00a6:  ldloc.s    V_5
    IL_00a8:  brtrue.s   IL_00b1

    IL_00aa:  ldc.r4     0.0
    IL_00af:  br.s       IL_00bf

    IL_00b1:  ldloc.s    V_7
    IL_00b3:  ldc.r4     3.1415927
    IL_00b8:  mul
    IL_00b9:  ldc.r4     2.
    IL_00be:  div
    IL_00bf:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00c4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00c9:  ldc.r4     0.5
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      float32 Game.FenceGateBlock::m_pivotDistance
    IL_00d4:  sub
    IL_00d5:  neg
    IL_00d6:  ldloc.s    V_7
    IL_00d8:  mul
    IL_00d9:  ldc.r4     0.0
    IL_00de:  ldc.r4     0.0
    IL_00e3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00e8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ed:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f2:  stloc.s    V_8
    IL_00f4:  ldloc.s    V_8
    IL_00f6:  ldc.r4     0.0
    IL_00fb:  ldc.r4     0.0
    IL_0100:  ldc.r4     0.0
    IL_0105:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_010a:  ldloc.s    V_4
    IL_010c:  conv.r4
    IL_010d:  ldc.r4     3.1415927
    IL_0112:  mul
    IL_0113:  ldc.r4     2.
    IL_0118:  div
    IL_0119:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_011e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0123:  ldc.r4     0.5
    IL_0128:  ldc.r4     0.0
    IL_012d:  ldc.r4     0.5
    IL_0132:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0137:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_013c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0141:  stloc.s    V_8
    IL_0143:  ldarg.0
    IL_0144:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_blockMeshes
    IL_0149:  ldloc.3
    IL_014a:  newobj     instance void Game.BlockMesh::.ctor()
    IL_014f:  stelem.ref
    IL_0150:  ldarg.0
    IL_0151:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_blockMeshes
    IL_0156:  ldloc.3
    IL_0157:  ldelem.ref
    IL_0158:  ldloc.0
    IL_0159:  ldstr      "Post"
    IL_015e:  ldc.i4.1
    IL_015f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0164:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0169:  stloc.s    V_10
    IL_016b:  ldloca.s   V_10
    IL_016d:  ldc.i4.0
    IL_016e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0173:  ldloc.1
    IL_0174:  ldloc.s    V_8
    IL_0176:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_017b:  ldc.i4.0
    IL_017c:  ldloc.s    V_6
    IL_017e:  ldc.i4.0
    IL_017f:  ceq
    IL_0181:  ldc.i4.0
    IL_0182:  ldc.i4.0
    IL_0183:  ldarg.0
    IL_0184:  ldfld      valuetype [Engine]Engine.Color Game.FenceGateBlock::m_postColor
    IL_0189:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_018e:  ldarg.0
    IL_018f:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_blockMeshes
    IL_0194:  ldloc.3
    IL_0195:  ldelem.ref
    IL_0196:  ldloc.0
    IL_0197:  ldstr      "Planks"
    IL_019c:  ldc.i4.1
    IL_019d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01a2:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01a7:  stloc.s    V_10
    IL_01a9:  ldloca.s   V_10
    IL_01ab:  ldc.i4.0
    IL_01ac:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01b1:  ldloc.2
    IL_01b2:  ldloc.s    V_8
    IL_01b4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01b9:  ldc.i4.0
    IL_01ba:  ldloc.s    V_6
    IL_01bc:  ldc.i4.0
    IL_01bd:  ceq
    IL_01bf:  ldc.i4.0
    IL_01c0:  ldc.i4.0
    IL_01c1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01c6:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01cb:  ldarg.0
    IL_01cc:  ldfld      bool Game.FenceGateBlock::m_doubleSided
    IL_01d1:  brfalse.s  IL_020d

    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_blockMeshes
    IL_01d9:  ldloc.3
    IL_01da:  ldelem.ref
    IL_01db:  ldloc.0
    IL_01dc:  ldstr      "Planks"
    IL_01e1:  ldc.i4.1
    IL_01e2:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01e7:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01ec:  stloc.s    V_10
    IL_01ee:  ldloca.s   V_10
    IL_01f0:  ldc.i4.0
    IL_01f1:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01f6:  ldloc.2
    IL_01f7:  ldloc.s    V_8
    IL_01f9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01fe:  ldc.i4.0
    IL_01ff:  ldloc.s    V_6
    IL_0201:  ldc.i4.0
    IL_0202:  ldc.i4.1
    IL_0203:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0208:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_020d:  ldarg.0
    IL_020e:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_coloredBlockMeshes
    IL_0213:  ldloc.3
    IL_0214:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0219:  stelem.ref
    IL_021a:  ldarg.0
    IL_021b:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_coloredBlockMeshes
    IL_0220:  ldloc.3
    IL_0221:  ldelem.ref
    IL_0222:  ldarg.0
    IL_0223:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_blockMeshes
    IL_0228:  ldloc.3
    IL_0229:  ldelem.ref
    IL_022a:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_022f:  ldarg.0
    IL_0230:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_blockMeshes
    IL_0235:  ldloc.3
    IL_0236:  ldelem.ref
    IL_0237:  ldarg.0
    IL_0238:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_023d:  ldc.i4.s   16
    IL_023f:  rem
    IL_0240:  conv.r4
    IL_0241:  ldc.r4     16.
    IL_0246:  div
    IL_0247:  ldarg.0
    IL_0248:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_024d:  ldc.i4.s   16
    IL_024f:  div
    IL_0250:  conv.r4
    IL_0251:  ldc.r4     16.
    IL_0256:  div
    IL_0257:  ldc.r4     0.0
    IL_025c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0261:  ldc.i4.m1
    IL_0262:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0267:  ldarg.0
    IL_0268:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_coloredBlockMeshes
    IL_026d:  ldloc.3
    IL_026e:  ldelem.ref
    IL_026f:  ldarg.0
    IL_0270:  ldfld      int32 Game.FenceGateBlock::m_coloredTextureSlot
    IL_0275:  ldc.i4.s   16
    IL_0277:  rem
    IL_0278:  conv.r4
    IL_0279:  ldc.r4     16.
    IL_027e:  div
    IL_027f:  ldarg.0
    IL_0280:  ldfld      int32 Game.FenceGateBlock::m_coloredTextureSlot
    IL_0285:  ldc.i4.s   16
    IL_0287:  div
    IL_0288:  conv.r4
    IL_0289:  ldc.r4     16.
    IL_028e:  div
    IL_028f:  ldc.r4     0.0
    IL_0294:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0299:  ldc.i4.m1
    IL_029a:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_029f:  ldarg.0
    IL_02a0:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_blockMeshes
    IL_02a5:  ldloc.3
    IL_02a6:  ldelem.ref
    IL_02a7:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_02ac:  stloc.s    V_9
    IL_02ae:  ldloca.s   V_9
    IL_02b0:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_02b5:  ldloc.s    V_9
    IL_02b7:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_02bc:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02c1:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_02c6:  stfld      float32 [Engine]Engine.Vector3::X
    IL_02cb:  ldloca.s   V_9
    IL_02cd:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_02d2:  ldloc.s    V_9
    IL_02d4:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_02d9:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02de:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_02e3:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_02e8:  ldloca.s   V_9
    IL_02ea:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_02ef:  ldloc.s    V_9
    IL_02f1:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_02f6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02fb:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0300:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0305:  ldloca.s   V_9
    IL_0307:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_030c:  ldloc.s    V_9
    IL_030e:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0313:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0318:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_031d:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0322:  ldloca.s   V_9
    IL_0324:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0329:  ldloc.s    V_9
    IL_032b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0330:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0335:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_033a:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_033f:  ldloca.s   V_9
    IL_0341:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0346:  ldloc.s    V_9
    IL_0348:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_034d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0352:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0357:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_035c:  ldarg.0
    IL_035d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FenceGateBlock::m_collisionBoxes
    IL_0362:  ldloc.3
    IL_0363:  ldc.i4.1
    IL_0364:  newarr     [Engine]Engine.BoundingBox
    IL_0369:  dup
    IL_036a:  ldc.i4.0
    IL_036b:  ldloc.s    V_9
    IL_036d:  stelem     [Engine]Engine.BoundingBox
    IL_0372:  stelem.ref
    IL_0373:  ldloc.3
    IL_0374:  ldc.i4.1
    IL_0375:  add
    IL_0376:  stloc.3
    IL_0377:  ldloc.3
    IL_0378:  ldc.i4.s   16
    IL_037a:  blt        IL_0041

    IL_037f:  ldarg.0
    IL_0380:  ldfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneBlockMesh
    IL_0385:  ldloc.0
    IL_0386:  ldstr      "Post"
    IL_038b:  ldc.i4.1
    IL_038c:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0391:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0396:  stloc.s    V_10
    IL_0398:  ldloca.s   V_10
    IL_039a:  ldc.i4.0
    IL_039b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_03a0:  ldloc.1
    IL_03a1:  ldc.r4     0.0
    IL_03a6:  ldc.r4     -0.5
    IL_03ab:  ldc.r4     0.0
    IL_03b0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_03b5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03ba:  ldc.i4.0
    IL_03bb:  ldc.i4.0
    IL_03bc:  ldc.i4.0
    IL_03bd:  ldc.i4.0
    IL_03be:  ldarg.0
    IL_03bf:  ldfld      valuetype [Engine]Engine.Color Game.FenceGateBlock::m_postColor
    IL_03c4:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_03c9:  ldarg.0
    IL_03ca:  ldfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneBlockMesh
    IL_03cf:  ldloc.0
    IL_03d0:  ldstr      "Planks"
    IL_03d5:  ldc.i4.1
    IL_03d6:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_03db:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_03e0:  stloc.s    V_10
    IL_03e2:  ldloca.s   V_10
    IL_03e4:  ldc.i4.0
    IL_03e5:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_03ea:  ldloc.2
    IL_03eb:  ldc.r4     0.0
    IL_03f0:  ldc.r4     -0.5
    IL_03f5:  ldc.r4     0.0
    IL_03fa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_03ff:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0404:  ldc.i4.0
    IL_0405:  ldc.i4.0
    IL_0406:  ldc.i4.0
    IL_0407:  ldc.i4.0
    IL_0408:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_040d:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0412:  ldarg.0
    IL_0413:  ldfld      bool Game.FenceGateBlock::m_doubleSided
    IL_0418:  brfalse.s  IL_0463

    IL_041a:  ldarg.0
    IL_041b:  ldfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneBlockMesh
    IL_0420:  ldloc.0
    IL_0421:  ldstr      "Planks"
    IL_0426:  ldc.i4.1
    IL_0427:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_042c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0431:  stloc.s    V_10
    IL_0433:  ldloca.s   V_10
    IL_0435:  ldc.i4.0
    IL_0436:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_043b:  ldloc.2
    IL_043c:  ldc.r4     0.0
    IL_0441:  ldc.r4     -0.5
    IL_0446:  ldc.r4     0.0
    IL_044b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0450:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0455:  ldc.i4.0
    IL_0456:  ldc.i4.1
    IL_0457:  ldc.i4.0
    IL_0458:  ldc.i4.1
    IL_0459:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_045e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0463:  ldarg.0
    IL_0464:  ldfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneColoredBlockMesh
    IL_0469:  ldarg.0
    IL_046a:  ldfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneBlockMesh
    IL_046f:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_0474:  ldarg.0
    IL_0475:  ldfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneBlockMesh
    IL_047a:  ldarg.0
    IL_047b:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0480:  ldc.i4.s   16
    IL_0482:  rem
    IL_0483:  conv.r4
    IL_0484:  ldc.r4     16.
    IL_0489:  div
    IL_048a:  ldarg.0
    IL_048b:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0490:  ldc.i4.s   16
    IL_0492:  div
    IL_0493:  conv.r4
    IL_0494:  ldc.r4     16.
    IL_0499:  div
    IL_049a:  ldc.r4     0.0
    IL_049f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_04a4:  ldc.i4.m1
    IL_04a5:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_04aa:  ldarg.0
    IL_04ab:  ldfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneColoredBlockMesh
    IL_04b0:  ldarg.0
    IL_04b1:  ldfld      int32 Game.FenceGateBlock::m_coloredTextureSlot
    IL_04b6:  ldc.i4.s   16
    IL_04b8:  rem
    IL_04b9:  conv.r4
    IL_04ba:  ldc.r4     16.
    IL_04bf:  div
    IL_04c0:  ldarg.0
    IL_04c1:  ldfld      int32 Game.FenceGateBlock::m_coloredTextureSlot
    IL_04c6:  ldc.i4.s   16
    IL_04c8:  div
    IL_04c9:  conv.r4
    IL_04ca:  ldc.r4     16.
    IL_04cf:  div
    IL_04d0:  ldc.r4     0.0
    IL_04d5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_04da:  ldc.i4.m1
    IL_04db:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_04e0:  ldarg.0
    IL_04e1:  call       instance void Game.Block::Initialize()
    IL_04e6:  ret
  } // end of method FenceGateBlock::Initialize

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceGateBlock::GetColor(int32)
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
  } // end of method FenceGateBlock::GetDisplayName

  .method public hidebysig virtual instance string 
          GetCategory(int32 'value') cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceGateBlock::GetColor(int32)
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
  } // end of method FenceGateBlock::GetCategory

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2C 47 61 6D 65 2E 46 65 6E 63 65 47 61 74   // ..,Game.FenceGat
                                                                                                                                                      65 42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65 61 74   // eBlock+<GetCreat
                                                                                                                                                      69 76 65 56 61 6C 75 65 73 3E 64 5F 5F 31 36 00   // iveValues>d__16.
                                                                                                                                                      00 ) 
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.FenceGateBlock/'<GetCreativeValues>d__16'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.FenceGateBlock Game.FenceGateBlock/'<GetCreativeValues>d__16'::'<>4__this'
    IL_000e:  ret
  } // end of method FenceGateBlock::GetCreativeValues

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldc.i4.1
    IL_0003:  stind.i1
    IL_0004:  ldarg.2
    IL_0005:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_000a:  ldc.i4.0
    IL_000b:  call       int32 Game.FenceGateBlock::SetVariant(int32,
                                                               int32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.s    dropValues
    IL_0013:  ldloca.s   V_1
    IL_0015:  initobj    Game.BlockDropValue
    IL_001b:  ldloca.s   V_1
    IL_001d:  ldarg.0
    IL_001e:  ldfld      int32 Game.Block::BlockIndex
    IL_0023:  ldc.i4.0
    IL_0024:  ldloc.0
    IL_0025:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_002a:  stfld      int32 Game.BlockDropValue::Value
    IL_002f:  ldloca.s   V_1
    IL_0031:  ldc.i4.1
    IL_0032:  stfld      int32 Game.BlockDropValue::Count
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_003d:  ret
  } // end of method FenceGateBlock::GetDropValues

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       524 (0x20c)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             class Game.Block V_13,
             class Game.Block V_14,
             int32 V_15,
             int32 V_16,
             bool V_17,
             int32 V_18,
             valuetype [Engine]Engine.Matrix V_19,
             valuetype Game.BlockPlacementData V_20)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0015:  stloc.s    V_19
    IL_0017:  ldloca.s   V_19
    IL_0019:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_001e:  dup
    IL_001f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0024:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0029:  stloc.0
    IL_002a:  dup
    IL_002b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0030:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0035:  stloc.1
    IL_0036:  dup
    IL_0037:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_003c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0041:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0046:  stloc.2
    IL_0047:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_004c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0051:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0056:  stloc.3
    IL_0057:  ldc.i4.0
    IL_0058:  stloc.s    V_4
    IL_005a:  ldloc.0
    IL_005b:  ldloc.0
    IL_005c:  ldloc.1
    IL_005d:  ldloc.2
    IL_005e:  ldloc.3
    IL_005f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0064:  bne.un.s   IL_006b

    IL_0066:  ldc.i4.2
    IL_0067:  stloc.s    V_4
    IL_0069:  br.s       IL_009c

    IL_006b:  ldloc.1
    IL_006c:  ldloc.0
    IL_006d:  ldloc.1
    IL_006e:  ldloc.2
    IL_006f:  ldloc.3
    IL_0070:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0075:  bne.un.s   IL_007c

    IL_0077:  ldc.i4.3
    IL_0078:  stloc.s    V_4
    IL_007a:  br.s       IL_009c

    IL_007c:  ldloc.2
    IL_007d:  ldloc.0
    IL_007e:  ldloc.1
    IL_007f:  ldloc.2
    IL_0080:  ldloc.3
    IL_0081:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0086:  bne.un.s   IL_008d

    IL_0088:  ldc.i4.0
    IL_0089:  stloc.s    V_4
    IL_008b:  br.s       IL_009c

    IL_008d:  ldloc.3
    IL_008e:  ldloc.0
    IL_008f:  ldloc.1
    IL_0090:  ldloc.2
    IL_0091:  ldloc.3
    IL_0092:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0097:  bne.un.s   IL_009c

    IL_0099:  ldc.i4.1
    IL_009a:  stloc.s    V_4
    IL_009c:  ldarg.s    raycastResult
    IL_009e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00a3:  ldfld      int32 Game.CellFace::Face
    IL_00a8:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_00ad:  stloc.s    V_5
    IL_00af:  ldarg.s    raycastResult
    IL_00b1:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00b6:  ldfld      int32 Game.CellFace::X
    IL_00bb:  ldloc.s    V_5
    IL_00bd:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c2:  conv.i4
    IL_00c3:  add
    IL_00c4:  stloc.s    V_6
    IL_00c6:  ldarg.s    raycastResult
    IL_00c8:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00cd:  ldfld      int32 Game.CellFace::Y
    IL_00d2:  ldloc.s    V_5
    IL_00d4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00d9:  conv.i4
    IL_00da:  add
    IL_00db:  stloc.s    V_7
    IL_00dd:  ldarg.s    raycastResult
    IL_00df:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00e4:  ldfld      int32 Game.CellFace::Z
    IL_00e9:  ldloc.s    V_5
    IL_00eb:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00f0:  conv.i4
    IL_00f1:  add
    IL_00f2:  stloc.s    V_8
    IL_00f4:  ldc.i4.0
    IL_00f5:  stloc.s    V_9
    IL_00f7:  ldc.i4.0
    IL_00f8:  stloc.s    V_10
    IL_00fa:  ldloc.s    V_4
    IL_00fc:  brtrue.s   IL_0103

    IL_00fe:  ldc.i4.m1
    IL_00ff:  stloc.s    V_9
    IL_0101:  br.s       IL_011a

    IL_0103:  ldloc.s    V_4
    IL_0105:  ldc.i4.1
    IL_0106:  bne.un.s   IL_010d

    IL_0108:  ldc.i4.1
    IL_0109:  stloc.s    V_10
    IL_010b:  br.s       IL_011a

    IL_010d:  ldloc.s    V_4
    IL_010f:  ldc.i4.2
    IL_0110:  bne.un.s   IL_0117

    IL_0112:  ldc.i4.1
    IL_0113:  stloc.s    V_9
    IL_0115:  br.s       IL_011a

    IL_0117:  ldc.i4.m1
    IL_0118:  stloc.s    V_10
    IL_011a:  ldarg.1
    IL_011b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0120:  ldloc.s    V_6
    IL_0122:  ldloc.s    V_9
    IL_0124:  add
    IL_0125:  ldloc.s    V_7
    IL_0127:  ldloc.s    V_8
    IL_0129:  ldloc.s    V_10
    IL_012b:  add
    IL_012c:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0131:  stloc.s    V_11
    IL_0133:  ldarg.1
    IL_0134:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0139:  ldloc.s    V_6
    IL_013b:  ldloc.s    V_9
    IL_013d:  sub
    IL_013e:  ldloc.s    V_7
    IL_0140:  ldloc.s    V_8
    IL_0142:  ldloc.s    V_10
    IL_0144:  sub
    IL_0145:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_014a:  stloc.s    V_12
    IL_014c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0151:  ldloc.s    V_11
    IL_0153:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0158:  ldelem.ref
    IL_0159:  stloc.s    V_13
    IL_015b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0160:  ldloc.s    V_12
    IL_0162:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0167:  ldelem.ref
    IL_0168:  stloc.s    V_14
    IL_016a:  ldloc.s    V_11
    IL_016c:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0171:  stloc.s    V_15
    IL_0173:  ldloc.s    V_12
    IL_0175:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_017a:  stloc.s    V_16
    IL_017c:  ldc.i4.0
    IL_017d:  stloc.s    V_17
    IL_017f:  ldloc.s    V_13
    IL_0181:  isinst     Game.FenceGateBlock
    IL_0186:  brfalse.s  IL_0198

    IL_0188:  ldloc.s    V_15
    IL_018a:  call       int32 Game.FenceGateBlock::GetRotation(int32)
    IL_018f:  ldloc.s    V_4
    IL_0191:  bne.un.s   IL_0198

    IL_0193:  ldc.i4.1
    IL_0194:  stloc.s    V_17
    IL_0196:  br.s       IL_01bd

    IL_0198:  ldloc.s    V_14
    IL_019a:  isinst     Game.FenceGateBlock
    IL_019f:  brfalse.s  IL_01b1

    IL_01a1:  ldloc.s    V_16
    IL_01a3:  call       int32 Game.FenceGateBlock::GetRotation(int32)
    IL_01a8:  ldloc.s    V_4
    IL_01aa:  bne.un.s   IL_01b1

    IL_01ac:  ldc.i4.0
    IL_01ad:  stloc.s    V_17
    IL_01af:  br.s       IL_01bd

    IL_01b1:  ldloc.s    V_13
    IL_01b3:  ldfld      bool Game.Block::IsCollidable
    IL_01b8:  ldc.i4.0
    IL_01b9:  ceq
    IL_01bb:  stloc.s    V_17
    IL_01bd:  ldarg.3
    IL_01be:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_01c3:  ldloc.s    V_4
    IL_01c5:  call       int32 Game.FenceGateBlock::SetRotation(int32,
                                                                int32)
    IL_01ca:  ldc.i4.0
    IL_01cb:  call       int32 Game.FenceGateBlock::SetOpen(int32,
                                                            bool)
    IL_01d0:  ldloc.s    V_17
    IL_01d2:  call       int32 Game.FenceGateBlock::SetRightHanded(int32,
                                                                   bool)
    IL_01d7:  stloc.s    V_18
    IL_01d9:  ldloca.s   V_20
    IL_01db:  initobj    Game.BlockPlacementData
    IL_01e1:  ldloca.s   V_20
    IL_01e3:  ldc.i4.0
    IL_01e4:  ldarg.0
    IL_01e5:  ldfld      int32 Game.Block::BlockIndex
    IL_01ea:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_01ef:  ldloc.s    V_18
    IL_01f1:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_01f6:  stfld      int32 Game.BlockPlacementData::Value
    IL_01fb:  ldloca.s   V_20
    IL_01fd:  ldarg.s    raycastResult
    IL_01ff:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0204:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0209:  ldloc.s    V_20
    IL_020b:  ret
  } // end of method FenceGateBlock::GetPlacementValue

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
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceGateBlock::GetColor(int32)
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
    IL_0031:  ldfld      int32 Game.FenceGateBlock::m_coloredTextureSlot
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
  } // end of method FenceGateBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       202 (0xca)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.Nullable`1<int32> V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_3)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       int32 Game.FenceGateBlock::GetVariant(int32)
    IL_000d:  stloc.1
    IL_000e:  ldloc.0
    IL_000f:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceGateBlock::GetColor(int32)
    IL_0014:  stloc.2
    IL_0015:  ldloca.s   V_2
    IL_0017:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_001c:  brfalse.s  IL_0065

    IL_001e:  ldarg.1
    IL_001f:  ldarg.0
    IL_0020:  ldarg.s    x
    IL_0022:  ldarg.s    y
    IL_0024:  ldarg.s    z
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_coloredBlockMeshes
    IL_002c:  ldloc.1
    IL_002d:  ldelem.ref
    IL_002e:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0033:  ldloca.s   V_2
    IL_0035:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_003a:  ldelem     [Engine]Engine.Color
    IL_003f:  ldloca.s   V_3
    IL_0041:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0047:  ldloc.3
    IL_0048:  ldarg.0
    IL_0049:  ldfld      bool Game.FenceGateBlock::m_useAlphaTest
    IL_004e:  brtrue.s   IL_0058

    IL_0050:  ldarg.2
    IL_0051:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0056:  br.s       IL_005e

    IL_0058:  ldarg.2
    IL_0059:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_005e:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0063:  br.s       IL_009f

    IL_0065:  ldarg.1
    IL_0066:  ldarg.0
    IL_0067:  ldarg.s    x
    IL_0069:  ldarg.s    y
    IL_006b:  ldarg.s    z
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.BlockMesh[] Game.FenceGateBlock::m_blockMeshes
    IL_0073:  ldloc.1
    IL_0074:  ldelem.ref
    IL_0075:  ldarg.0
    IL_0076:  ldfld      valuetype [Engine]Engine.Color Game.FenceGateBlock::m_unpaintedColor
    IL_007b:  ldloca.s   V_3
    IL_007d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0083:  ldloc.3
    IL_0084:  ldarg.0
    IL_0085:  ldfld      bool Game.FenceGateBlock::m_useAlphaTest
    IL_008a:  brtrue.s   IL_0094

    IL_008c:  ldarg.2
    IL_008d:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0092:  br.s       IL_009a

    IL_0094:  ldarg.2
    IL_0095:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_009a:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_009f:  ldarg.1
    IL_00a0:  ldarg.3
    IL_00a1:  ldarg.s    x
    IL_00a3:  ldarg.s    y
    IL_00a5:  ldarg.s    z
    IL_00a7:  ldloc.0
    IL_00a8:  call       int32 Game.FenceGateBlock::GetHingeFace(int32)
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      float32 Game.FenceGateBlock::m_pivotDistance
    IL_00b3:  ldc.r4     2.
    IL_00b8:  mul
    IL_00b9:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00be:  ldarg.2
    IL_00bf:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_00c4:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00c9:  ret
  } // end of method FenceGateBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceGateBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brfalse.s  IL_0038

    IL_0015:  ldarg.1
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneColoredBlockMesh
    IL_001c:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0021:  ldloca.s   V_0
    IL_0023:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0028:  ldelem     [Engine]Engine.Color
    IL_002d:  ldarg.3
    IL_002e:  ldarg.s    matrix
    IL_0030:  ldarg.s    environmentData
    IL_0032:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0037:  ret

    IL_0038:  ldarg.1
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.BlockMesh Game.FenceGateBlock::m_standaloneBlockMesh
    IL_003f:  ldarg.0
    IL_0040:  ldfld      valuetype [Engine]Engine.Color Game.FenceGateBlock::m_unpaintedColor
    IL_0045:  ldarg.3
    IL_0046:  ldarg.s    matrix
    IL_0048:  ldarg.s    environmentData
    IL_004a:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_004f:  ret
  } // end of method FenceGateBlock::DrawBlock

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceGateBlock::GetColor(int32)
    IL_000b:  ret
  } // end of method FenceGateBlock::GetPaintColor

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
    IL_000a:  call       int32 Game.FenceGateBlock::SetColor(int32,
                                                             valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_000f:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0014:  ret
  } // end of method FenceGateBlock::Paint

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.FenceGateBlock::GetVariant(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FenceGateBlock::m_collisionBoxes
    IL_0012:  ldloc.0
    IL_0013:  ldelem.ref
    IL_0014:  ret
  } // end of method FenceGateBlock::GetCustomCollisionBoxes

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
    IL_000e:  call       int32 Game.FenceGateBlock::GetHingeFace(int32)
    IL_0013:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0018:  newobj     instance void Game.FenceGateElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                            valuetype Game.CellFace)
    IL_001d:  ret
  } // end of method FenceGateBlock::CreateElectricElement

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
    // 代码大小       33 (0x21)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.FenceGateBlock::GetHingeFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.3
    IL_000d:  ldloc.0
    IL_000e:  bne.un.s   IL_0017

    IL_0010:  ldc.i4.0
    IL_0011:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0016:  ret

    IL_0017:  ldloca.s   V_1
    IL_0019:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_001f:  ldloc.1
    IL_0020:  ret
  } // end of method FenceGateBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method FenceGateBlock::GetConnectionMask

  .method public hidebysig static int32  GetRotation(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method FenceGateBlock::GetRotation

  .method public hidebysig static bool  GetOpen(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method FenceGateBlock::GetOpen

  .method public hidebysig static bool  GetRightHanded(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  ceq
    IL_0006:  ret
  } // end of method FenceGateBlock::GetRightHanded

  .method public hidebysig static int32  SetRotation(int32 data,
                                                     int32 rotation) cil managed
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
  } // end of method FenceGateBlock::SetRotation

  .method public hidebysig static int32  SetOpen(int32 data,
                                                 bool open) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -5
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.4
    IL_000a:  or
    IL_000b:  ret
  } // end of method FenceGateBlock::SetOpen

  .method public hidebysig static int32  SetRightHanded(int32 data,
                                                        bool rightHanded) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -9
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.8
    IL_000a:  or
    IL_000b:  ret
  } // end of method FenceGateBlock::SetRightHanded

  .method public hidebysig static int32  GetHingeFace(int32 data) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.FenceGateBlock::GetRotation(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.1
    IL_0009:  sub
    IL_000a:  ldc.i4.0
    IL_000b:  blt.s      IL_0012

    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.1
    IL_000f:  sub
    IL_0010:  br.s       IL_0013

    IL_0012:  ldc.i4.3
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  call       bool Game.FenceGateBlock::GetRightHanded(int32)
    IL_001a:  brtrue.s   IL_0023

    IL_001c:  ldloc.1
    IL_001d:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0022:  stloc.1
    IL_0023:  ldloc.1
    IL_0024:  ret
  } // end of method FenceGateBlock::GetHingeFace

  .method public hidebysig static int32  GetVariant(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   15
    IL_0003:  and
    IL_0004:  ret
  } // end of method FenceGateBlock::GetVariant

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
  } // end of method FenceGateBlock::SetVariant

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
  } // end of method FenceGateBlock::GetColor

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
  } // end of method FenceGateBlock::SetColor

} // end of class Game.FenceGateBlock