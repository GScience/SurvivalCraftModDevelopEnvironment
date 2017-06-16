.class public abstract auto ansi beforefieldinit Game.FenceBlock
       extends Game.Block
       implements Game.IPaintableBlock
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
    .field public class Game.FenceBlock '<>4__this'
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
      IL_0008:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>l__initialThreadId'
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
      IL_0001:  ldfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>1__state'
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
      IL_001d:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0022:  ldarg.0
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.FenceBlock Game.FenceBlock/'<GetCreativeValues>d__15'::'<>4__this'
      IL_0029:  ldfld      int32 Game.Block::BlockIndex
      IL_002e:  ldc.i4.0
      IL_002f:  ldc.i4.0
      IL_0030:  ldloca.s   V_1
      IL_0032:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0038:  ldloc.1
      IL_0039:  call       int32 Game.FenceBlock::SetColor(int32,
                                                           valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_003e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0043:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_0048:  ldarg.0
      IL_0049:  ldc.i4.1
      IL_004a:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_004f:  ldc.i4.1
      IL_0050:  ret

      IL_0051:  ldarg.0
      IL_0052:  ldc.i4.m1
      IL_0053:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0058:  ldarg.0
      IL_0059:  ldc.i4.0
      IL_005a:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<i>5__1'
      IL_005f:  br.s       IL_00a9

      IL_0061:  ldarg.0
      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.FenceBlock Game.FenceBlock/'<GetCreativeValues>d__15'::'<>4__this'
      IL_0068:  ldfld      int32 Game.Block::BlockIndex
      IL_006d:  ldc.i4.0
      IL_006e:  ldc.i4.0
      IL_006f:  ldarg.0
      IL_0070:  ldfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<i>5__1'
      IL_0075:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_007a:  call       int32 Game.FenceBlock::SetColor(int32,
                                                           valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_007f:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0084:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_0089:  ldarg.0
      IL_008a:  ldc.i4.2
      IL_008b:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0090:  ldc.i4.1
      IL_0091:  ret

      IL_0092:  ldarg.0
      IL_0093:  ldc.i4.m1
      IL_0094:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0099:  ldarg.0
      IL_009a:  ldfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<i>5__1'
      IL_009f:  ldc.i4.1
      IL_00a0:  add
      IL_00a1:  stloc.2
      IL_00a2:  ldarg.0
      IL_00a3:  ldloc.2
      IL_00a4:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<i>5__1'
      IL_00a9:  ldarg.0
      IL_00aa:  ldfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<i>5__1'
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
      IL_0001:  ldfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>2__current'
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
      IL_0001:  ldfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>2__current'
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
      .locals init (class Game.FenceBlock/'<GetCreativeValues>d__15' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.FenceBlock/'<GetCreativeValues>d__15'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.FenceBlock Game.FenceBlock/'<GetCreativeValues>d__15'::'<>4__this'
      IL_0030:  stfld      class Game.FenceBlock Game.FenceBlock/'<GetCreativeValues>d__15'::'<>4__this'
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.FenceBlock/'<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__15'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.FenceBlock/'<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.FenceBlock/'<GetCreativeValues>d__15'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__15'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__15'

  .field private string m_modelName
  .field private bool m_doubleSidedPlanks
  .field private bool m_useAlphaTest
  .field private int32 m_coloredTextureSlot
  .field private valuetype [Engine]Engine.Color m_postColor
  .field private valuetype [Engine]Engine.Color m_unpaintedColor
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh m_standaloneColoredBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshes
  .field private class Game.BlockMesh[] m_coloredBlockMeshes
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string modelName,
                               bool doubleSidedPlanks,
                               bool useAlphaTest,
                               int32 coloredTextureSlot,
                               valuetype [Engine]Engine.Color postColor,
                               valuetype [Engine]Engine.Color unpaintedColor) cil managed
  {
    // 代码大小       113 (0x71)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.FenceBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.FenceBlock::m_standaloneColoredBlockMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.s   16
    IL_0019:  newarr     Game.BlockMesh
    IL_001e:  stfld      class Game.BlockMesh[] Game.FenceBlock::m_blockMeshes
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.s   16
    IL_0026:  newarr     Game.BlockMesh
    IL_002b:  stfld      class Game.BlockMesh[] Game.FenceBlock::m_coloredBlockMeshes
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4.s   16
    IL_0033:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0038:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.FenceBlock::m_collisionBoxes
    IL_003d:  ldarg.0
    IL_003e:  call       instance void Game.Block::.ctor()
    IL_0043:  ldarg.0
    IL_0044:  ldarg.1
    IL_0045:  stfld      string Game.FenceBlock::m_modelName
    IL_004a:  ldarg.0
    IL_004b:  ldarg.2
    IL_004c:  stfld      bool Game.FenceBlock::m_doubleSidedPlanks
    IL_0051:  ldarg.0
    IL_0052:  ldarg.3
    IL_0053:  stfld      bool Game.FenceBlock::m_useAlphaTest
    IL_0058:  ldarg.0
    IL_0059:  ldarg.s    coloredTextureSlot
    IL_005b:  stfld      int32 Game.FenceBlock::m_coloredTextureSlot
    IL_0060:  ldarg.0
    IL_0061:  ldarg.s    postColor
    IL_0063:  stfld      valuetype [Engine]Engine.Color Game.FenceBlock::m_postColor
    IL_0068:  ldarg.0
    IL_0069:  ldarg.s    unpaintedColor
    IL_006b:  stfld      valuetype [Engine]Engine.Color Game.FenceBlock::m_unpaintedColor
    IL_0070:  ret
  } // end of method FenceBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       1926 (0x786)
    .maxstack  9
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             bool V_4,
             bool V_5,
             bool V_6,
             class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox> V_7,
             valuetype [Engine]Engine.Matrix V_8,
             class Game.BlockMesh V_9,
             valuetype [Engine]Engine.BoundingBox V_10,
             class Game.BlockMesh V_11,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_12,
             class Game.BlockMesh V_13,
             valuetype [Engine]Engine.Matrix V_14,
             valuetype [Engine]Engine.BoundingBox V_15,
             class Game.BlockMesh V_16,
             valuetype [Engine]Engine.Matrix V_17,
             valuetype [Engine]Engine.BoundingBox V_18,
             class Game.BlockMesh V_19,
             valuetype [Engine]Engine.Matrix V_20,
             valuetype [Engine]Engine.BoundingBox V_21,
             class Game.BlockMesh V_22,
             valuetype [Engine]Engine.Matrix V_23,
             valuetype [Engine]Engine.BoundingBox V_24)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.FenceBlock::m_modelName
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
    IL_003c:  br         IL_04f8

    IL_0041:  ldloc.3
    IL_0042:  ldc.i4.1
    IL_0043:  and
    IL_0044:  ldc.i4.0
    IL_0045:  cgt.un
    IL_0047:  ldloc.3
    IL_0048:  ldc.i4.2
    IL_0049:  and
    IL_004a:  ldc.i4.0
    IL_004b:  cgt.un
    IL_004d:  stloc.s    V_4
    IL_004f:  ldloc.3
    IL_0050:  ldc.i4.4
    IL_0051:  and
    IL_0052:  ldc.i4.0
    IL_0053:  cgt.un
    IL_0055:  stloc.s    V_5
    IL_0057:  ldloc.3
    IL_0058:  ldc.i4.8
    IL_0059:  and
    IL_005a:  ldc.i4.0
    IL_005b:  cgt.un
    IL_005d:  stloc.s    V_6
    IL_005f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::.ctor()
    IL_0064:  stloc.s    V_7
    IL_0066:  ldc.r4     0.5
    IL_006b:  ldc.r4     0.0
    IL_0070:  ldc.r4     0.5
    IL_0075:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007a:  stloc.s    V_8
    IL_007c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0081:  stloc.s    V_9
    IL_0083:  ldloc.s    V_9
    IL_0085:  ldloc.0
    IL_0086:  ldstr      "Post"
    IL_008b:  ldc.i4.1
    IL_008c:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0091:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0096:  stloc.s    V_12
    IL_0098:  ldloca.s   V_12
    IL_009a:  ldc.i4.0
    IL_009b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00a0:  ldloc.1
    IL_00a1:  ldloc.s    V_8
    IL_00a3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00a8:  ldc.i4.0
    IL_00a9:  ldc.i4.0
    IL_00aa:  ldc.i4.0
    IL_00ab:  ldc.i4.0
    IL_00ac:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00b1:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00b6:  ldloc.s    V_9
    IL_00b8:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_00bd:  stloc.s    V_10
    IL_00bf:  ldloca.s   V_10
    IL_00c1:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00c6:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_00cb:  dup
    IL_00cc:  ldind.r4
    IL_00cd:  ldc.r4     0.1
    IL_00d2:  sub
    IL_00d3:  stind.r4
    IL_00d4:  ldloca.s   V_10
    IL_00d6:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00db:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_00e0:  dup
    IL_00e1:  ldind.r4
    IL_00e2:  ldc.r4     0.1
    IL_00e7:  sub
    IL_00e8:  stind.r4
    IL_00e9:  ldloca.s   V_10
    IL_00eb:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00f0:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_00f5:  dup
    IL_00f6:  ldind.r4
    IL_00f7:  ldc.r4     0.1
    IL_00fc:  add
    IL_00fd:  stind.r4
    IL_00fe:  ldloca.s   V_10
    IL_0100:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0105:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_010a:  dup
    IL_010b:  ldind.r4
    IL_010c:  ldc.r4     0.1
    IL_0111:  add
    IL_0112:  stind.r4
    IL_0113:  ldloc.s    V_7
    IL_0115:  ldloc.s    V_10
    IL_0117:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::Add(!0)
    IL_011c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0121:  stloc.s    V_11
    IL_0123:  brfalse    IL_01dd

    IL_0128:  newobj     instance void Game.BlockMesh::.ctor()
    IL_012d:  stloc.s    V_13
    IL_012f:  ldc.r4     0.0
    IL_0134:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0139:  ldc.r4     0.5
    IL_013e:  ldc.r4     0.0
    IL_0143:  ldc.r4     0.5
    IL_0148:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_014d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0152:  stloc.s    V_14
    IL_0154:  ldloc.s    V_13
    IL_0156:  ldloc.0
    IL_0157:  ldstr      "Planks"
    IL_015c:  ldc.i4.1
    IL_015d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0162:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0167:  stloc.s    V_12
    IL_0169:  ldloca.s   V_12
    IL_016b:  ldc.i4.0
    IL_016c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0171:  ldloc.2
    IL_0172:  ldloc.s    V_14
    IL_0174:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0179:  ldc.i4.0
    IL_017a:  ldc.i4.0
    IL_017b:  ldc.i4.0
    IL_017c:  ldc.i4.0
    IL_017d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0182:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0187:  ldarg.0
    IL_0188:  ldfld      bool Game.FenceBlock::m_doubleSidedPlanks
    IL_018d:  brfalse.s  IL_01c2

    IL_018f:  ldloc.s    V_13
    IL_0191:  ldloc.0
    IL_0192:  ldstr      "Planks"
    IL_0197:  ldc.i4.1
    IL_0198:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_019d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01a2:  stloc.s    V_12
    IL_01a4:  ldloca.s   V_12
    IL_01a6:  ldc.i4.0
    IL_01a7:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01ac:  ldloc.2
    IL_01ad:  ldloc.s    V_14
    IL_01af:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01b4:  ldc.i4.0
    IL_01b5:  ldc.i4.1
    IL_01b6:  ldc.i4.0
    IL_01b7:  ldc.i4.1
    IL_01b8:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01bd:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01c2:  ldloc.s    V_11
    IL_01c4:  ldloc.s    V_13
    IL_01c6:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_01cb:  ldloc.s    V_13
    IL_01cd:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_01d2:  stloc.s    V_15
    IL_01d4:  ldloc.s    V_7
    IL_01d6:  ldloc.s    V_15
    IL_01d8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::Add(!0)
    IL_01dd:  ldloc.s    V_4
    IL_01df:  brfalse    IL_0299

    IL_01e4:  newobj     instance void Game.BlockMesh::.ctor()
    IL_01e9:  stloc.s    V_16
    IL_01eb:  ldc.r4     3.1415927
    IL_01f0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_01f5:  ldc.r4     0.5
    IL_01fa:  ldc.r4     0.0
    IL_01ff:  ldc.r4     0.5
    IL_0204:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0209:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_020e:  stloc.s    V_17
    IL_0210:  ldloc.s    V_16
    IL_0212:  ldloc.0
    IL_0213:  ldstr      "Planks"
    IL_0218:  ldc.i4.1
    IL_0219:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_021e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0223:  stloc.s    V_12
    IL_0225:  ldloca.s   V_12
    IL_0227:  ldc.i4.0
    IL_0228:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_022d:  ldloc.2
    IL_022e:  ldloc.s    V_17
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
    IL_0244:  ldfld      bool Game.FenceBlock::m_doubleSidedPlanks
    IL_0249:  brfalse.s  IL_027e

    IL_024b:  ldloc.s    V_16
    IL_024d:  ldloc.0
    IL_024e:  ldstr      "Planks"
    IL_0253:  ldc.i4.1
    IL_0254:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0259:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_025e:  stloc.s    V_12
    IL_0260:  ldloca.s   V_12
    IL_0262:  ldc.i4.0
    IL_0263:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0268:  ldloc.2
    IL_0269:  ldloc.s    V_17
    IL_026b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0270:  ldc.i4.0
    IL_0271:  ldc.i4.1
    IL_0272:  ldc.i4.0
    IL_0273:  ldc.i4.1
    IL_0274:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0279:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_027e:  ldloc.s    V_11
    IL_0280:  ldloc.s    V_16
    IL_0282:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_0287:  ldloc.s    V_16
    IL_0289:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_028e:  stloc.s    V_18
    IL_0290:  ldloc.s    V_7
    IL_0292:  ldloc.s    V_18
    IL_0294:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::Add(!0)
    IL_0299:  ldloc.s    V_5
    IL_029b:  brfalse    IL_0355

    IL_02a0:  newobj     instance void Game.BlockMesh::.ctor()
    IL_02a5:  stloc.s    V_19
    IL_02a7:  ldc.r4     4.712389
    IL_02ac:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_02b1:  ldc.r4     0.5
    IL_02b6:  ldc.r4     0.0
    IL_02bb:  ldc.r4     0.5
    IL_02c0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_02c5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02ca:  stloc.s    V_20
    IL_02cc:  ldloc.s    V_19
    IL_02ce:  ldloc.0
    IL_02cf:  ldstr      "Planks"
    IL_02d4:  ldc.i4.1
    IL_02d5:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_02da:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_02df:  stloc.s    V_12
    IL_02e1:  ldloca.s   V_12
    IL_02e3:  ldc.i4.0
    IL_02e4:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_02e9:  ldloc.2
    IL_02ea:  ldloc.s    V_20
    IL_02ec:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02f1:  ldc.i4.0
    IL_02f2:  ldc.i4.0
    IL_02f3:  ldc.i4.0
    IL_02f4:  ldc.i4.0
    IL_02f5:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_02fa:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_02ff:  ldarg.0
    IL_0300:  ldfld      bool Game.FenceBlock::m_doubleSidedPlanks
    IL_0305:  brfalse.s  IL_033a

    IL_0307:  ldloc.s    V_19
    IL_0309:  ldloc.0
    IL_030a:  ldstr      "Planks"
    IL_030f:  ldc.i4.1
    IL_0310:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0315:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_031a:  stloc.s    V_12
    IL_031c:  ldloca.s   V_12
    IL_031e:  ldc.i4.0
    IL_031f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0324:  ldloc.2
    IL_0325:  ldloc.s    V_20
    IL_0327:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_032c:  ldc.i4.0
    IL_032d:  ldc.i4.1
    IL_032e:  ldc.i4.0
    IL_032f:  ldc.i4.1
    IL_0330:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0335:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_033a:  ldloc.s    V_11
    IL_033c:  ldloc.s    V_19
    IL_033e:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_0343:  ldloc.s    V_19
    IL_0345:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_034a:  stloc.s    V_21
    IL_034c:  ldloc.s    V_7
    IL_034e:  ldloc.s    V_21
    IL_0350:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::Add(!0)
    IL_0355:  ldloc.s    V_6
    IL_0357:  brfalse    IL_0411

    IL_035c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0361:  stloc.s    V_22
    IL_0363:  ldc.r4     1.5707964
    IL_0368:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_036d:  ldc.r4     0.5
    IL_0372:  ldc.r4     0.0
    IL_0377:  ldc.r4     0.5
    IL_037c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0381:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0386:  stloc.s    V_23
    IL_0388:  ldloc.s    V_22
    IL_038a:  ldloc.0
    IL_038b:  ldstr      "Planks"
    IL_0390:  ldc.i4.1
    IL_0391:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0396:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_039b:  stloc.s    V_12
    IL_039d:  ldloca.s   V_12
    IL_039f:  ldc.i4.0
    IL_03a0:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_03a5:  ldloc.2
    IL_03a6:  ldloc.s    V_23
    IL_03a8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03ad:  ldc.i4.0
    IL_03ae:  ldc.i4.0
    IL_03af:  ldc.i4.0
    IL_03b0:  ldc.i4.0
    IL_03b1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_03b6:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_03bb:  ldarg.0
    IL_03bc:  ldfld      bool Game.FenceBlock::m_doubleSidedPlanks
    IL_03c1:  brfalse.s  IL_03f6

    IL_03c3:  ldloc.s    V_22
    IL_03c5:  ldloc.0
    IL_03c6:  ldstr      "Planks"
    IL_03cb:  ldc.i4.1
    IL_03cc:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_03d1:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_03d6:  stloc.s    V_12
    IL_03d8:  ldloca.s   V_12
    IL_03da:  ldc.i4.0
    IL_03db:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_03e0:  ldloc.2
    IL_03e1:  ldloc.s    V_23
    IL_03e3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03e8:  ldc.i4.0
    IL_03e9:  ldc.i4.1
    IL_03ea:  ldc.i4.0
    IL_03eb:  ldc.i4.1
    IL_03ec:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_03f1:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_03f6:  ldloc.s    V_11
    IL_03f8:  ldloc.s    V_22
    IL_03fa:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_03ff:  ldloc.s    V_22
    IL_0401:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_0406:  stloc.s    V_24
    IL_0408:  ldloc.s    V_7
    IL_040a:  ldloc.s    V_24
    IL_040c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::Add(!0)
    IL_0411:  ldloc.s    V_9
    IL_0413:  ldarg.0
    IL_0414:  ldfld      valuetype [Engine]Engine.Color Game.FenceBlock::m_postColor
    IL_0419:  ldc.i4.m1
    IL_041a:  callvirt   instance void Game.BlockMesh::ModulateColor(valuetype [Engine]Engine.Color,
                                                                     int32)
    IL_041f:  ldarg.0
    IL_0420:  ldfld      class Game.BlockMesh[] Game.FenceBlock::m_blockMeshes
    IL_0425:  ldloc.3
    IL_0426:  newobj     instance void Game.BlockMesh::.ctor()
    IL_042b:  stelem.ref
    IL_042c:  ldarg.0
    IL_042d:  ldfld      class Game.BlockMesh[] Game.FenceBlock::m_blockMeshes
    IL_0432:  ldloc.3
    IL_0433:  ldelem.ref
    IL_0434:  ldloc.s    V_9
    IL_0436:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_043b:  ldarg.0
    IL_043c:  ldfld      class Game.BlockMesh[] Game.FenceBlock::m_blockMeshes
    IL_0441:  ldloc.3
    IL_0442:  ldelem.ref
    IL_0443:  ldloc.s    V_11
    IL_0445:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_044a:  ldarg.0
    IL_044b:  ldfld      class Game.BlockMesh[] Game.FenceBlock::m_blockMeshes
    IL_0450:  ldloc.3
    IL_0451:  ldelem.ref
    IL_0452:  ldarg.0
    IL_0453:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0458:  ldc.i4.s   16
    IL_045a:  rem
    IL_045b:  conv.r4
    IL_045c:  ldc.r4     16.
    IL_0461:  div
    IL_0462:  ldarg.0
    IL_0463:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0468:  ldc.i4.s   16
    IL_046a:  div
    IL_046b:  conv.r4
    IL_046c:  ldc.r4     16.
    IL_0471:  div
    IL_0472:  ldc.r4     0.0
    IL_0477:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_047c:  ldc.i4.m1
    IL_047d:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0482:  ldarg.0
    IL_0483:  ldfld      class Game.BlockMesh[] Game.FenceBlock::m_coloredBlockMeshes
    IL_0488:  ldloc.3
    IL_0489:  newobj     instance void Game.BlockMesh::.ctor()
    IL_048e:  stelem.ref
    IL_048f:  ldarg.0
    IL_0490:  ldfld      class Game.BlockMesh[] Game.FenceBlock::m_coloredBlockMeshes
    IL_0495:  ldloc.3
    IL_0496:  ldelem.ref
    IL_0497:  ldloc.s    V_9
    IL_0499:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_049e:  ldarg.0
    IL_049f:  ldfld      class Game.BlockMesh[] Game.FenceBlock::m_coloredBlockMeshes
    IL_04a4:  ldloc.3
    IL_04a5:  ldelem.ref
    IL_04a6:  ldloc.s    V_11
    IL_04a8:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_04ad:  ldarg.0
    IL_04ae:  ldfld      class Game.BlockMesh[] Game.FenceBlock::m_coloredBlockMeshes
    IL_04b3:  ldloc.3
    IL_04b4:  ldelem.ref
    IL_04b5:  ldarg.0
    IL_04b6:  ldfld      int32 Game.FenceBlock::m_coloredTextureSlot
    IL_04bb:  ldc.i4.s   16
    IL_04bd:  rem
    IL_04be:  conv.r4
    IL_04bf:  ldc.r4     16.
    IL_04c4:  div
    IL_04c5:  ldarg.0
    IL_04c6:  ldfld      int32 Game.FenceBlock::m_coloredTextureSlot
    IL_04cb:  ldc.i4.s   16
    IL_04cd:  div
    IL_04ce:  conv.r4
    IL_04cf:  ldc.r4     16.
    IL_04d4:  div
    IL_04d5:  ldc.r4     0.0
    IL_04da:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_04df:  ldc.i4.m1
    IL_04e0:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_04e5:  ldarg.0
    IL_04e6:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FenceBlock::m_collisionBoxes
    IL_04eb:  ldloc.3
    IL_04ec:  ldloc.s    V_7
    IL_04ee:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::ToArray()
    IL_04f3:  stelem.ref
    IL_04f4:  ldloc.3
    IL_04f5:  ldc.i4.1
    IL_04f6:  add
    IL_04f7:  stloc.3
    IL_04f8:  ldloc.3
    IL_04f9:  ldc.i4.s   16
    IL_04fb:  blt        IL_0041

    IL_0500:  ldarg.0
    IL_0501:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneBlockMesh
    IL_0506:  ldloc.0
    IL_0507:  ldstr      "Post"
    IL_050c:  ldc.i4.1
    IL_050d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0512:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0517:  stloc.s    V_12
    IL_0519:  ldloca.s   V_12
    IL_051b:  ldc.i4.0
    IL_051c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0521:  ldloc.1
    IL_0522:  ldc.r4     -0.5
    IL_0527:  ldc.r4     -0.5
    IL_052c:  ldc.r4     0.0
    IL_0531:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0536:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_053b:  ldc.i4.0
    IL_053c:  ldc.i4.0
    IL_053d:  ldc.i4.0
    IL_053e:  ldc.i4.0
    IL_053f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0544:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0549:  ldarg.0
    IL_054a:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneBlockMesh
    IL_054f:  ldloc.0
    IL_0550:  ldstr      "Post"
    IL_0555:  ldc.i4.1
    IL_0556:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_055b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0560:  stloc.s    V_12
    IL_0562:  ldloca.s   V_12
    IL_0564:  ldc.i4.0
    IL_0565:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_056a:  ldloc.1
    IL_056b:  ldc.r4     0.5
    IL_0570:  ldc.r4     -0.5
    IL_0575:  ldc.r4     0.0
    IL_057a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_057f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0584:  ldc.i4.0
    IL_0585:  ldc.i4.0
    IL_0586:  ldc.i4.0
    IL_0587:  ldc.i4.0
    IL_0588:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_058d:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0592:  ldarg.0
    IL_0593:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneBlockMesh
    IL_0598:  ldloc.0
    IL_0599:  ldstr      "Planks"
    IL_059e:  ldc.i4.1
    IL_059f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_05a4:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_05a9:  stloc.s    V_12
    IL_05ab:  ldloca.s   V_12
    IL_05ad:  ldc.i4.0
    IL_05ae:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_05b3:  ldloc.2
    IL_05b4:  ldc.r4     0.0
    IL_05b9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_05be:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_05c3:  ldc.r4     -0.5
    IL_05c8:  ldc.r4     -0.5
    IL_05cd:  ldc.r4     0.0
    IL_05d2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_05d7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_05dc:  ldc.i4.0
    IL_05dd:  ldc.i4.0
    IL_05de:  ldc.i4.0
    IL_05df:  ldc.i4.0
    IL_05e0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_05e5:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_05ea:  ldarg.0
    IL_05eb:  ldfld      bool Game.FenceBlock::m_doubleSidedPlanks
    IL_05f0:  brfalse.s  IL_064a

    IL_05f2:  ldarg.0
    IL_05f3:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneBlockMesh
    IL_05f8:  ldloc.0
    IL_05f9:  ldstr      "Planks"
    IL_05fe:  ldc.i4.1
    IL_05ff:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0604:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0609:  stloc.s    V_12
    IL_060b:  ldloca.s   V_12
    IL_060d:  ldc.i4.0
    IL_060e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0613:  ldloc.2
    IL_0614:  ldc.r4     0.0
    IL_0619:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_061e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0623:  ldc.r4     -0.5
    IL_0628:  ldc.r4     -0.5
    IL_062d:  ldc.r4     0.0
    IL_0632:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0637:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_063c:  ldc.i4.0
    IL_063d:  ldc.i4.1
    IL_063e:  ldc.i4.0
    IL_063f:  ldc.i4.1
    IL_0640:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0645:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_064a:  ldarg.0
    IL_064b:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneBlockMesh
    IL_0650:  ldloc.0
    IL_0651:  ldstr      "Planks"
    IL_0656:  ldc.i4.1
    IL_0657:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_065c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0661:  stloc.s    V_12
    IL_0663:  ldloca.s   V_12
    IL_0665:  ldc.i4.0
    IL_0666:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_066b:  ldloc.2
    IL_066c:  ldc.r4     3.1415927
    IL_0671:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0676:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_067b:  ldc.r4     0.5
    IL_0680:  ldc.r4     -0.5
    IL_0685:  ldc.r4     0.0
    IL_068a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_068f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0694:  ldc.i4.0
    IL_0695:  ldc.i4.0
    IL_0696:  ldc.i4.0
    IL_0697:  ldc.i4.0
    IL_0698:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_069d:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_06a2:  ldarg.0
    IL_06a3:  ldfld      bool Game.FenceBlock::m_doubleSidedPlanks
    IL_06a8:  brfalse.s  IL_0702

    IL_06aa:  ldarg.0
    IL_06ab:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneBlockMesh
    IL_06b0:  ldloc.0
    IL_06b1:  ldstr      "Planks"
    IL_06b6:  ldc.i4.1
    IL_06b7:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_06bc:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_06c1:  stloc.s    V_12
    IL_06c3:  ldloca.s   V_12
    IL_06c5:  ldc.i4.0
    IL_06c6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_06cb:  ldloc.2
    IL_06cc:  ldc.r4     3.1415927
    IL_06d1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_06d6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_06db:  ldc.r4     0.5
    IL_06e0:  ldc.r4     -0.5
    IL_06e5:  ldc.r4     0.0
    IL_06ea:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_06ef:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_06f4:  ldc.i4.0
    IL_06f5:  ldc.i4.1
    IL_06f6:  ldc.i4.0
    IL_06f7:  ldc.i4.1
    IL_06f8:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_06fd:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0702:  ldarg.0
    IL_0703:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneColoredBlockMesh
    IL_0708:  ldarg.0
    IL_0709:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneBlockMesh
    IL_070e:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_0713:  ldarg.0
    IL_0714:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneBlockMesh
    IL_0719:  ldarg.0
    IL_071a:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_071f:  ldc.i4.s   16
    IL_0721:  rem
    IL_0722:  conv.r4
    IL_0723:  ldc.r4     16.
    IL_0728:  div
    IL_0729:  ldarg.0
    IL_072a:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_072f:  ldc.i4.s   16
    IL_0731:  div
    IL_0732:  conv.r4
    IL_0733:  ldc.r4     16.
    IL_0738:  div
    IL_0739:  ldc.r4     0.0
    IL_073e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0743:  ldc.i4.m1
    IL_0744:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0749:  ldarg.0
    IL_074a:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneColoredBlockMesh
    IL_074f:  ldarg.0
    IL_0750:  ldfld      int32 Game.FenceBlock::m_coloredTextureSlot
    IL_0755:  ldc.i4.s   16
    IL_0757:  rem
    IL_0758:  conv.r4
    IL_0759:  ldc.r4     16.
    IL_075e:  div
    IL_075f:  ldarg.0
    IL_0760:  ldfld      int32 Game.FenceBlock::m_coloredTextureSlot
    IL_0765:  ldc.i4.s   16
    IL_0767:  div
    IL_0768:  conv.r4
    IL_0769:  ldc.r4     16.
    IL_076e:  div
    IL_076f:  ldc.r4     0.0
    IL_0774:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0779:  ldc.i4.m1
    IL_077a:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_077f:  ldarg.0
    IL_0780:  call       instance void Game.Block::Initialize()
    IL_0785:  ret
  } // end of method FenceBlock::Initialize

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceBlock::GetColor(int32)
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
  } // end of method FenceBlock::GetDisplayName

  .method public hidebysig virtual instance string 
          GetCategory(int32 'value') cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceBlock::GetColor(int32)
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
  } // end of method FenceBlock::GetCategory

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 28 47 61 6D 65 2E 46 65 6E 63 65 42 6C 6F   // ..(Game.FenceBlo
                                                                                                                                                      63 6B 2B 3C 47 65 74 43 72 65 61 74 69 76 65 56   // ck+<GetCreativeV
                                                                                                                                                      61 6C 75 65 73 3E 64 5F 5F 31 35 00 00 )          // alues>d__15..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.FenceBlock/'<GetCreativeValues>d__15'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.FenceBlock Game.FenceBlock/'<GetCreativeValues>d__15'::'<>4__this'
    IL_000e:  ret
  } // end of method FenceBlock::GetCreativeValues

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
    IL_000b:  call       int32 Game.FenceBlock::SetVariant(int32,
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
  } // end of method FenceBlock::GetDropValues

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
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceBlock::GetColor(int32)
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
    IL_0031:  ldfld      int32 Game.FenceBlock::m_coloredTextureSlot
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
  } // end of method FenceBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       157 (0x9d)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.FenceBlock::GetVariant(int32)
    IL_000c:  stloc.0
    IL_000d:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceBlock::GetColor(int32)
    IL_0012:  stloc.1
    IL_0013:  ldloca.s   V_1
    IL_0015:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_001a:  brfalse.s  IL_0062

    IL_001c:  ldarg.1
    IL_001d:  ldarg.0
    IL_001e:  ldarg.s    x
    IL_0020:  ldarg.s    y
    IL_0022:  ldarg.s    z
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.BlockMesh[] Game.FenceBlock::m_coloredBlockMeshes
    IL_002a:  ldloc.0
    IL_002b:  ldelem.ref
    IL_002c:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0031:  ldloca.s   V_1
    IL_0033:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0038:  ldelem     [Engine]Engine.Color
    IL_003d:  ldloca.s   V_2
    IL_003f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0045:  ldloc.2
    IL_0046:  ldarg.0
    IL_0047:  ldfld      bool Game.FenceBlock::m_useAlphaTest
    IL_004c:  brtrue.s   IL_0056

    IL_004e:  ldarg.2
    IL_004f:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0054:  br.s       IL_005c

    IL_0056:  ldarg.2
    IL_0057:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_005c:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0061:  ret

    IL_0062:  ldarg.1
    IL_0063:  ldarg.0
    IL_0064:  ldarg.s    x
    IL_0066:  ldarg.s    y
    IL_0068:  ldarg.s    z
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.BlockMesh[] Game.FenceBlock::m_blockMeshes
    IL_0070:  ldloc.0
    IL_0071:  ldelem.ref
    IL_0072:  ldarg.0
    IL_0073:  ldfld      valuetype [Engine]Engine.Color Game.FenceBlock::m_unpaintedColor
    IL_0078:  ldloca.s   V_2
    IL_007a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0080:  ldloc.2
    IL_0081:  ldarg.0
    IL_0082:  ldfld      bool Game.FenceBlock::m_useAlphaTest
    IL_0087:  brtrue.s   IL_0091

    IL_0089:  ldarg.2
    IL_008a:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_008f:  br.s       IL_0097

    IL_0091:  ldarg.2
    IL_0092:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0097:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_009c:  ret
  } // end of method FenceBlock::GenerateTerrainVertices

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
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brfalse.s  IL_0038

    IL_0015:  ldarg.1
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneColoredBlockMesh
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
    IL_003a:  ldfld      class Game.BlockMesh Game.FenceBlock::m_standaloneBlockMesh
    IL_003f:  ldarg.0
    IL_0040:  ldfld      valuetype [Engine]Engine.Color Game.FenceBlock::m_unpaintedColor
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
  } // end of method FenceBlock::DrawBlock

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.FenceBlock::GetColor(int32)
    IL_000b:  ret
  } // end of method FenceBlock::GetPaintColor

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
    IL_000a:  call       int32 Game.FenceBlock::SetColor(int32,
                                                         valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_000f:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0014:  ret
  } // end of method FenceBlock::Paint

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.FenceBlock::GetVariant(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FenceBlock::m_collisionBoxes
    IL_0012:  ldloc.0
    IL_0013:  ldelem.ref
    IL_0014:  ret
  } // end of method FenceBlock::GetCustomCollisionBoxes

  .method public hidebysig newslot virtual 
          instance bool  ShouldConnectTo(int32 'value') cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  2
    .locals init (int32 V_0,
             class Game.Block V_1)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  isinst     Game.FenceBlock
    IL_0015:  brtrue.s   IL_0021

    IL_0017:  ldloc.1
    IL_0018:  isinst     Game.FenceGateBlock
    IL_001d:  ldnull
    IL_001e:  cgt.un
    IL_0020:  ret

    IL_0021:  ldc.i4.1
    IL_0022:  ret
  } // end of method FenceBlock::ShouldConnectTo

  .method public hidebysig static int32  GetVariant(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   15
    IL_0003:  and
    IL_0004:  ret
  } // end of method FenceBlock::GetVariant

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
  } // end of method FenceBlock::SetVariant

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
  } // end of method FenceBlock::GetColor

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
  } // end of method FenceBlock::SetColor

} // end of class Game.FenceBlock