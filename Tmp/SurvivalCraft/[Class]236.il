.class public abstract auto ansi beforefieldinit Game.SlabBlock
       extends Game.Block
       implements Game.IPaintableBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__18'
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
    .field public class Game.SlabBlock '<>4__this'
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
      IL_0008:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__18'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__18'::System.IDisposable.Dispose

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
      IL_0001:  ldfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>1__state'
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
      IL_001d:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>1__state'
      IL_0022:  ldarg.0
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.SlabBlock Game.SlabBlock/'<GetCreativeValues>d__18'::'<>4__this'
      IL_0029:  ldfld      int32 Game.Block::BlockIndex
      IL_002e:  ldc.i4.0
      IL_002f:  ldc.i4.0
      IL_0030:  ldloca.s   V_1
      IL_0032:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0038:  ldloc.1
      IL_0039:  call       int32 Game.SlabBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_003e:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0043:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>2__current'
      IL_0048:  ldarg.0
      IL_0049:  ldc.i4.1
      IL_004a:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>1__state'
      IL_004f:  ldc.i4.1
      IL_0050:  ret

      IL_0051:  ldarg.0
      IL_0052:  ldc.i4.m1
      IL_0053:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>1__state'
      IL_0058:  ldarg.0
      IL_0059:  ldc.i4.0
      IL_005a:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<i>5__1'
      IL_005f:  br.s       IL_00a9

      IL_0061:  ldarg.0
      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.SlabBlock Game.SlabBlock/'<GetCreativeValues>d__18'::'<>4__this'
      IL_0068:  ldfld      int32 Game.Block::BlockIndex
      IL_006d:  ldc.i4.0
      IL_006e:  ldc.i4.0
      IL_006f:  ldarg.0
      IL_0070:  ldfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<i>5__1'
      IL_0075:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_007a:  call       int32 Game.SlabBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_007f:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0084:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>2__current'
      IL_0089:  ldarg.0
      IL_008a:  ldc.i4.2
      IL_008b:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>1__state'
      IL_0090:  ldc.i4.1
      IL_0091:  ret

      IL_0092:  ldarg.0
      IL_0093:  ldc.i4.m1
      IL_0094:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>1__state'
      IL_0099:  ldarg.0
      IL_009a:  ldfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<i>5__1'
      IL_009f:  ldc.i4.1
      IL_00a0:  add
      IL_00a1:  stloc.2
      IL_00a2:  ldarg.0
      IL_00a3:  ldloc.2
      IL_00a4:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<i>5__1'
      IL_00a9:  ldarg.0
      IL_00aa:  ldfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<i>5__1'
      IL_00af:  ldc.i4.s   16
      IL_00b1:  blt.s      IL_0061

      IL_00b3:  ldc.i4.0
      IL_00b4:  ret
    } // end of method '<GetCreativeValues>d__18'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__18'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__18'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__18'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.SlabBlock/'<GetCreativeValues>d__18' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.SlabBlock/'<GetCreativeValues>d__18'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.SlabBlock Game.SlabBlock/'<GetCreativeValues>d__18'::'<>4__this'
      IL_0030:  stfld      class Game.SlabBlock Game.SlabBlock/'<GetCreativeValues>d__18'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetCreativeValues>d__18'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.SlabBlock/'<GetCreativeValues>d__18'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__18'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.SlabBlock/'<GetCreativeValues>d__18'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__18'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.SlabBlock/'<GetCreativeValues>d__18'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__18'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__18'

  .field private int32 m_coloredTextureSlot
  .field private int32 m_fullBlockIndex
  .field private class Game.BlockMesh m_standaloneColoredBlockMesh
  .field private class Game.BlockMesh m_standaloneUncoloredBlockMesh
  .field private class Game.BlockMesh[] m_coloredBlockMeshes
  .field private class Game.BlockMesh[] m_uncoloredBlockMeshes
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(int32 coloredTextureSlot,
                               int32 fullBlockIndex) cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.SlabBlock::m_standaloneColoredBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.SlabBlock::m_standaloneUncoloredBlockMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.2
    IL_0018:  newarr     Game.BlockMesh
    IL_001d:  stfld      class Game.BlockMesh[] Game.SlabBlock::m_coloredBlockMeshes
    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.2
    IL_0024:  newarr     Game.BlockMesh
    IL_0029:  stfld      class Game.BlockMesh[] Game.SlabBlock::m_uncoloredBlockMeshes
    IL_002e:  ldarg.0
    IL_002f:  ldc.i4.2
    IL_0030:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0035:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.SlabBlock::m_collisionBoxes
    IL_003a:  ldarg.0
    IL_003b:  call       instance void Game.Block::.ctor()
    IL_0040:  ldarg.0
    IL_0041:  ldarg.1
    IL_0042:  stfld      int32 Game.SlabBlock::m_coloredTextureSlot
    IL_0047:  ldarg.0
    IL_0048:  ldarg.2
    IL_0049:  stfld      int32 Game.SlabBlock::m_fullBlockIndex
    IL_004e:  ret
  } // end of method SlabBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       644 (0x284)
    .maxstack  9
    .locals init (class [Engine]Engine.Graphics.ModelMeshPart V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_2,
             int32 V_3,
             valuetype [Engine]Engine.Matrix V_4)
    IL_0000:  ldstr      "Models/Slab"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  dup
    IL_000b:  ldstr      "Slab"
    IL_0010:  ldc.i4.1
    IL_0011:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0016:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_001b:  stloc.2
    IL_001c:  ldloca.s   V_2
    IL_001e:  ldc.i4.0
    IL_001f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0024:  stloc.0
    IL_0025:  ldstr      "Slab"
    IL_002a:  ldc.i4.1
    IL_002b:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0030:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0035:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_003a:  stloc.1
    IL_003b:  ldc.i4.0
    IL_003c:  stloc.3
    IL_003d:  br         IL_0128

    IL_0042:  ldloc.1
    IL_0043:  ldc.r4     0.5
    IL_0048:  ldloc.3
    IL_0049:  brfalse.s  IL_0052

    IL_004b:  ldc.r4     0.5
    IL_0050:  br.s       IL_0057

    IL_0052:  ldc.r4     0.0
    IL_0057:  ldc.r4     0.5
    IL_005c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0061:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0066:  stloc.s    V_4
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.BlockMesh[] Game.SlabBlock::m_uncoloredBlockMeshes
    IL_006e:  ldloc.3
    IL_006f:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0074:  stelem.ref
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.BlockMesh[] Game.SlabBlock::m_uncoloredBlockMeshes
    IL_007b:  ldloc.3
    IL_007c:  ldelem.ref
    IL_007d:  ldloc.0
    IL_007e:  ldloc.s    V_4
    IL_0080:  ldc.i4.0
    IL_0081:  ldc.i4.0
    IL_0082:  ldc.i4.0
    IL_0083:  ldc.i4.0
    IL_0084:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0089:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.BlockMesh[] Game.SlabBlock::m_uncoloredBlockMeshes
    IL_0094:  ldloc.3
    IL_0095:  ldelem.ref
    IL_0096:  ldarg.0
    IL_0097:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_009c:  ldc.i4.s   16
    IL_009e:  rem
    IL_009f:  conv.r4
    IL_00a0:  ldc.r4     16.
    IL_00a5:  div
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_00ac:  ldc.i4.s   16
    IL_00ae:  div
    IL_00af:  conv.r4
    IL_00b0:  ldc.r4     16.
    IL_00b5:  div
    IL_00b6:  ldc.r4     0.0
    IL_00bb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00c0:  ldc.i4.m1
    IL_00c1:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.BlockMesh[] Game.SlabBlock::m_coloredBlockMeshes
    IL_00cc:  ldloc.3
    IL_00cd:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00d2:  stelem.ref
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.BlockMesh[] Game.SlabBlock::m_coloredBlockMeshes
    IL_00d9:  ldloc.3
    IL_00da:  ldelem.ref
    IL_00db:  ldloc.0
    IL_00dc:  ldloc.s    V_4
    IL_00de:  ldc.i4.0
    IL_00df:  ldc.i4.0
    IL_00e0:  ldc.i4.0
    IL_00e1:  ldc.i4.0
    IL_00e2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00e7:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      class Game.BlockMesh[] Game.SlabBlock::m_coloredBlockMeshes
    IL_00f2:  ldloc.3
    IL_00f3:  ldelem.ref
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      int32 Game.SlabBlock::m_coloredTextureSlot
    IL_00fa:  ldc.i4.s   16
    IL_00fc:  rem
    IL_00fd:  conv.r4
    IL_00fe:  ldc.r4     16.
    IL_0103:  div
    IL_0104:  ldarg.0
    IL_0105:  ldfld      int32 Game.SlabBlock::m_coloredTextureSlot
    IL_010a:  ldc.i4.s   16
    IL_010c:  div
    IL_010d:  conv.r4
    IL_010e:  ldc.r4     16.
    IL_0113:  div
    IL_0114:  ldc.r4     0.0
    IL_0119:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_011e:  ldc.i4.m1
    IL_011f:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0124:  ldloc.3
    IL_0125:  ldc.i4.1
    IL_0126:  add
    IL_0127:  stloc.3
    IL_0128:  ldloc.3
    IL_0129:  ldc.i4.2
    IL_012a:  blt        IL_0042

    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.BlockMesh Game.SlabBlock::m_standaloneUncoloredBlockMesh
    IL_0135:  ldloc.0
    IL_0136:  ldloc.1
    IL_0137:  ldc.r4     0.0
    IL_013c:  ldc.r4     -0.5
    IL_0141:  ldc.r4     0.0
    IL_0146:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_014b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0150:  ldc.i4.0
    IL_0151:  ldc.i4.0
    IL_0152:  ldc.i4.0
    IL_0153:  ldc.i4.0
    IL_0154:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0159:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_015e:  ldarg.0
    IL_015f:  ldfld      class Game.BlockMesh Game.SlabBlock::m_standaloneUncoloredBlockMesh
    IL_0164:  ldarg.0
    IL_0165:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_016a:  ldc.i4.s   16
    IL_016c:  rem
    IL_016d:  conv.r4
    IL_016e:  ldc.r4     16.
    IL_0173:  div
    IL_0174:  ldarg.0
    IL_0175:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_017a:  ldc.i4.s   16
    IL_017c:  div
    IL_017d:  conv.r4
    IL_017e:  ldc.r4     16.
    IL_0183:  div
    IL_0184:  ldc.r4     0.0
    IL_0189:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_018e:  ldc.i4.m1
    IL_018f:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0194:  ldarg.0
    IL_0195:  ldfld      class Game.BlockMesh Game.SlabBlock::m_standaloneColoredBlockMesh
    IL_019a:  ldloc.0
    IL_019b:  ldloc.1
    IL_019c:  ldc.r4     0.0
    IL_01a1:  ldc.r4     -0.5
    IL_01a6:  ldc.r4     0.0
    IL_01ab:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01b0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01b5:  ldc.i4.0
    IL_01b6:  ldc.i4.0
    IL_01b7:  ldc.i4.0
    IL_01b8:  ldc.i4.0
    IL_01b9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01be:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01c3:  ldarg.0
    IL_01c4:  ldfld      class Game.BlockMesh Game.SlabBlock::m_standaloneColoredBlockMesh
    IL_01c9:  ldarg.0
    IL_01ca:  ldfld      int32 Game.SlabBlock::m_coloredTextureSlot
    IL_01cf:  ldc.i4.s   16
    IL_01d1:  rem
    IL_01d2:  conv.r4
    IL_01d3:  ldc.r4     16.
    IL_01d8:  div
    IL_01d9:  ldarg.0
    IL_01da:  ldfld      int32 Game.SlabBlock::m_coloredTextureSlot
    IL_01df:  ldc.i4.s   16
    IL_01e1:  div
    IL_01e2:  conv.r4
    IL_01e3:  ldc.r4     16.
    IL_01e8:  div
    IL_01e9:  ldc.r4     0.0
    IL_01ee:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01f3:  ldc.i4.m1
    IL_01f4:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_01f9:  ldarg.0
    IL_01fa:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SlabBlock::m_collisionBoxes
    IL_01ff:  ldc.i4.0
    IL_0200:  ldc.i4.1
    IL_0201:  newarr     [Engine]Engine.BoundingBox
    IL_0206:  dup
    IL_0207:  ldc.i4.0
    IL_0208:  ldc.r4     0.0
    IL_020d:  ldc.r4     0.0
    IL_0212:  ldc.r4     0.0
    IL_0217:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_021c:  ldc.r4     1.
    IL_0221:  ldc.r4     0.5
    IL_0226:  ldc.r4     1.
    IL_022b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0230:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0235:  stelem     [Engine]Engine.BoundingBox
    IL_023a:  stelem.ref
    IL_023b:  ldarg.0
    IL_023c:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SlabBlock::m_collisionBoxes
    IL_0241:  ldc.i4.1
    IL_0242:  ldc.i4.1
    IL_0243:  newarr     [Engine]Engine.BoundingBox
    IL_0248:  dup
    IL_0249:  ldc.i4.0
    IL_024a:  ldc.r4     0.0
    IL_024f:  ldc.r4     0.5
    IL_0254:  ldc.r4     0.0
    IL_0259:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_025e:  ldc.r4     1.
    IL_0263:  ldc.r4     1.
    IL_0268:  ldc.r4     1.
    IL_026d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0272:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0277:  stelem     [Engine]Engine.BoundingBox
    IL_027c:  stelem.ref
    IL_027d:  ldarg.0
    IL_027e:  call       instance void Game.Block::Initialize()
    IL_0283:  ret
  } // end of method SlabBlock::Initialize

  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.SlabBlock::GetIsTop(int32)
    IL_000b:  brfalse.s  IL_0015

    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.4
    IL_000f:  ceq
    IL_0011:  ldc.i4.0
    IL_0012:  ceq
    IL_0014:  ret

    IL_0015:  ldarg.1
    IL_0016:  ldc.i4.5
    IL_0017:  ceq
    IL_0019:  ldc.i4.0
    IL_001a:  ceq
    IL_001c:  ret
  } // end of method SlabBlock::IsFaceTransparent

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       122 (0x7a)
    .maxstack  10
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       bool Game.SlabBlock::GetIsTop(int32)
    IL_000c:  brtrue.s   IL_0011

    IL_000e:  ldc.i4.0
    IL_000f:  br.s       IL_0012

    IL_0011:  ldc.i4.1
    IL_0012:  stloc.0
    IL_0013:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.SlabBlock::GetColor(int32)
    IL_0018:  stloc.1
    IL_0019:  ldloca.s   V_1
    IL_001b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0020:  brfalse.s  IL_004f

    IL_0022:  ldarg.1
    IL_0023:  ldarg.0
    IL_0024:  ldarg.s    x
    IL_0026:  ldarg.s    y
    IL_0028:  ldarg.s    z
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.BlockMesh[] Game.SlabBlock::m_coloredBlockMeshes
    IL_0030:  ldloc.0
    IL_0031:  ldelem.ref
    IL_0032:  ldarg.1
    IL_0033:  ldloc.1
    IL_0034:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.BlockGeometryGenerator,
                                                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0039:  ldloca.s   V_2
    IL_003b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0041:  ldloc.2
    IL_0042:  ldnull
    IL_0043:  ldarg.2
    IL_0044:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0049:  callvirt   instance void Game.BlockGeometryGenerator::GenerateShadedMeshVertices(class Game.Block,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class Game.BlockMesh,
                                                                                               valuetype [Engine]Engine.Color,
                                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                               int32[],
                                                                                               class Game.TerrainGeometrySubset)
    IL_004e:  ret

    IL_004f:  ldarg.1
    IL_0050:  ldarg.0
    IL_0051:  ldarg.s    x
    IL_0053:  ldarg.s    y
    IL_0055:  ldarg.s    z
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.BlockMesh[] Game.SlabBlock::m_uncoloredBlockMeshes
    IL_005d:  ldloc.0
    IL_005e:  ldelem.ref
    IL_005f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0064:  ldloca.s   V_2
    IL_0066:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_006c:  ldloc.2
    IL_006d:  ldnull
    IL_006e:  ldarg.2
    IL_006f:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0074:  callvirt   instance void Game.BlockGeometryGenerator::GenerateShadedMeshVertices(class Game.Block,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class Game.BlockMesh,
                                                                                               valuetype [Engine]Engine.Color,
                                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                               int32[],
                                                                                               class Game.TerrainGeometrySubset)
    IL_0079:  ret
  } // end of method SlabBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       384 (0x180)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             bool V_3,
             int32 V_4,
             class Game.IPaintableBlock V_5,
             valuetype Game.CellFace V_6,
             valuetype [System.Runtime]System.Nullable`1<int32> V_7,
             valuetype Game.BlockPlacementData V_8)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.3
    IL_0008:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000d:  stloc.1
    IL_000e:  ldarg.s    raycastResult
    IL_0010:  ldfld      int32 Game.TerrainRaycastResult::Value
    IL_0015:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_001a:  ldarg.s    raycastResult
    IL_001c:  ldfld      int32 Game.TerrainRaycastResult::Value
    IL_0021:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0026:  stloc.2
    IL_0027:  ldloc.0
    IL_0028:  bne.un     IL_00e1

    IL_002d:  ldloc.2
    IL_002e:  call       bool Game.SlabBlock::GetIsTop(int32)
    IL_0033:  brfalse.s  IL_0044

    IL_0035:  ldarg.s    raycastResult
    IL_0037:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_003c:  ldfld      int32 Game.CellFace::Face
    IL_0041:  ldc.i4.5
    IL_0042:  beq.s      IL_0061

    IL_0044:  ldloc.2
    IL_0045:  call       bool Game.SlabBlock::GetIsTop(int32)
    IL_004a:  brtrue     IL_00e1

    IL_004f:  ldarg.s    raycastResult
    IL_0051:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0056:  ldfld      int32 Game.CellFace::Face
    IL_005b:  ldc.i4.4
    IL_005c:  bne.un     IL_00e1

    IL_0061:  ldarg.0
    IL_0062:  ldfld      int32 Game.SlabBlock::m_fullBlockIndex
    IL_0067:  ldc.i4.0
    IL_0068:  ldc.i4.0
    IL_0069:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_006e:  stloc.s    V_4
    IL_0070:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0075:  ldarg.0
    IL_0076:  ldfld      int32 Game.SlabBlock::m_fullBlockIndex
    IL_007b:  ldelem.ref
    IL_007c:  isinst     Game.IPaintableBlock
    IL_0081:  stloc.s    V_5
    IL_0083:  ldloc.s    V_5
    IL_0085:  brfalse.s  IL_009d

    IL_0087:  ldloc.1
    IL_0088:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.SlabBlock::GetColor(int32)
    IL_008d:  stloc.s    V_7
    IL_008f:  ldloc.s    V_5
    IL_0091:  ldarg.1
    IL_0092:  ldloc.s    V_4
    IL_0094:  ldloc.s    V_7
    IL_0096:  callvirt   instance int32 Game.IPaintableBlock::Paint(class Game.SubsystemTerrain,
                                                                    int32,
                                                                    valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_009b:  stloc.s    V_4
    IL_009d:  ldarg.s    raycastResult
    IL_009f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00a4:  stloc.s    V_6
    IL_00a6:  ldloca.s   V_6
    IL_00a8:  dup
    IL_00a9:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  ldfld      int32 Game.CellFace::Face
    IL_00b5:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_00ba:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Subtraction(valuetype [Engine]Engine.Point3,
                                                                                               valuetype [Engine]Engine.Point3)
    IL_00bf:  call       instance void Game.CellFace::set_Point(valuetype [Engine]Engine.Point3)
    IL_00c4:  ldloca.s   V_8
    IL_00c6:  initobj    Game.BlockPlacementData
    IL_00cc:  ldloca.s   V_8
    IL_00ce:  ldloc.s    V_4
    IL_00d0:  stfld      int32 Game.BlockPlacementData::Value
    IL_00d5:  ldloca.s   V_8
    IL_00d7:  ldloc.s    V_6
    IL_00d9:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_00de:  ldloc.s    V_8
    IL_00e0:  ret

    IL_00e1:  ldarg.s    raycastResult
    IL_00e3:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00e8:  ldfld      int32 Game.CellFace::Face
    IL_00ed:  ldc.i4.4
    IL_00ee:  bge.s      IL_013d

    IL_00f0:  ldarg.s    raycastResult
    IL_00f2:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_00f7:  ldarg.s    raycastResult
    IL_00f9:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_00fe:  ldarg.s    raycastResult
    IL_0100:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastEnd
    IL_0105:  ldarg.s    raycastResult
    IL_0107:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_010c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0111:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0116:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0120:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0125:  ldarg.s    raycastResult
    IL_0127:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_012c:  ldfld      int32 Game.CellFace::Y
    IL_0131:  conv.r4
    IL_0132:  sub
    IL_0133:  ldc.r4     0.5
    IL_0138:  cgt
    IL_013a:  stloc.3
    IL_013b:  br.s       IL_014d

    IL_013d:  ldarg.s    raycastResult
    IL_013f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0144:  ldfld      int32 Game.CellFace::Face
    IL_0149:  ldc.i4.5
    IL_014a:  ceq
    IL_014c:  stloc.3
    IL_014d:  ldloca.s   V_8
    IL_014f:  initobj    Game.BlockPlacementData
    IL_0155:  ldloca.s   V_8
    IL_0157:  ldarg.0
    IL_0158:  ldfld      int32 Game.Block::BlockIndex
    IL_015d:  ldc.i4.0
    IL_015e:  ldloc.1
    IL_015f:  ldloc.3
    IL_0160:  call       int32 Game.SlabBlock::SetIsTop(int32,
                                                        bool)
    IL_0165:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_016a:  stfld      int32 Game.BlockPlacementData::Value
    IL_016f:  ldloca.s   V_8
    IL_0171:  ldarg.s    raycastResult
    IL_0173:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0178:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_017d:  ldloc.s    V_8
    IL_017f:  ret
  } // end of method SlabBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.SlabBlock::GetIsTop(int32)
    IL_000b:  brtrue.s   IL_0010

    IL_000d:  ldc.i4.0
    IL_000e:  br.s       IL_0011

    IL_0010:  ldc.i4.1
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.SlabBlock::m_collisionBoxes
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ret
  } // end of method SlabBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       90 (0x5a)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.BlockDropValue V_3)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.SlabBlock::m_fullBlockIndex
    IL_000c:  beq.s      IL_0055

    IL_000e:  ldarg.2
    IL_000f:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0014:  stloc.0
    IL_0015:  ldc.i4.0
    IL_0016:  ldloc.0
    IL_0017:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.SlabBlock::GetColor(int32)
    IL_001c:  call       int32 Game.SlabBlock::SetColor(int32,
                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0021:  stloc.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      int32 Game.Block::BlockIndex
    IL_0028:  ldc.i4.0
    IL_0029:  ldloc.1
    IL_002a:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_002f:  stloc.2
    IL_0030:  ldarg.s    dropValues
    IL_0032:  ldloca.s   V_3
    IL_0034:  initobj    Game.BlockDropValue
    IL_003a:  ldloca.s   V_3
    IL_003c:  ldloc.2
    IL_003d:  stfld      int32 Game.BlockDropValue::Value
    IL_0042:  ldloca.s   V_3
    IL_0044:  ldc.i4.1
    IL_0045:  stfld      int32 Game.BlockDropValue::Count
    IL_004a:  ldloc.3
    IL_004b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0050:  ldarg.s    showDebris
    IL_0052:  ldc.i4.1
    IL_0053:  stind.i1
    IL_0054:  ret

    IL_0055:  ldarg.s    showDebris
    IL_0057:  ldc.i4.0
    IL_0058:  stind.i1
    IL_0059:  ret
  } // end of method SlabBlock::GetDropValues

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  8
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.SlabBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brfalse.s  IL_0032

    IL_0015:  ldarg.1
    IL_0016:  ldarg.2
    IL_0017:  ldarg.s    strength
    IL_0019:  ldarg.0
    IL_001a:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_001f:  ldarg.1
    IL_0020:  ldloc.0
    IL_0021:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.SubsystemTerrain,
                                                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0026:  ldarg.0
    IL_0027:  ldfld      int32 Game.SlabBlock::m_coloredTextureSlot
    IL_002c:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0031:  ret

    IL_0032:  ldarg.1
    IL_0033:  ldarg.2
    IL_0034:  ldarg.s    strength
    IL_0036:  ldarg.0
    IL_0037:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_003c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0041:  ldarg.0
    IL_0042:  ldc.i4.0
    IL_0043:  ldarg.3
    IL_0044:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0049:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_004e:  ret
  } // end of method SlabBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.SlabBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brfalse.s  IL_0036

    IL_0015:  ldarg.1
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.BlockMesh Game.SlabBlock::m_standaloneColoredBlockMesh
    IL_001c:  ldarg.3
    IL_001d:  ldarg.s    environmentData
    IL_001f:  ldloc.0
    IL_0020:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.DrawBlockEnvironmentData,
                                                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0025:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_002a:  ldarg.s    size
    IL_002c:  ldarg.s    matrix
    IL_002e:  ldarg.s    environmentData
    IL_0030:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0035:  ret

    IL_0036:  ldarg.1
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.BlockMesh Game.SlabBlock::m_standaloneUncoloredBlockMesh
    IL_003d:  ldarg.3
    IL_003e:  ldarg.s    size
    IL_0040:  ldarg.s    matrix
    IL_0042:  ldarg.s    environmentData
    IL_0044:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0049:  ret
  } // end of method SlabBlock::DrawBlock

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.SlabBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  ldarg.2
    IL_0011:  call       instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0016:  call       string Game.SubsystemPalette::GetName(class Game.SubsystemTerrain,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>,
                                                               string)
    IL_001b:  ret
  } // end of method SlabBlock::GetDisplayName

  .method public hidebysig virtual instance string 
          GetCategory(int32 'value') cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.SlabBlock::GetColor(int32)
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
  } // end of method SlabBlock::GetCategory

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 27 47 61 6D 65 2E 53 6C 61 62 42 6C 6F 63   // ..'Game.SlabBloc
                                                                                                                                                      6B 2B 3C 47 65 74 43 72 65 61 74 69 76 65 56 61   // k+<GetCreativeVa
                                                                                                                                                      6C 75 65 73 3E 64 5F 5F 31 38 00 00 )             // lues>d__18..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.SlabBlock/'<GetCreativeValues>d__18'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.SlabBlock Game.SlabBlock/'<GetCreativeValues>d__18'::'<>4__this'
    IL_000e:  ret
  } // end of method SlabBlock::GetCreativeValues

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.SlabBlock::GetColor(int32)
    IL_000b:  ret
  } // end of method SlabBlock::GetPaintColor

  .method public hidebysig newslot virtual final 
          instance int32  Paint(class Game.SubsystemTerrain terrain,
                                int32 'value',
                                valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int32 Game.Block::BlockIndex
    IL_000d:  ldc.i4.0
    IL_000e:  ldloc.0
    IL_000f:  ldarg.3
    IL_0010:  call       int32 Game.SlabBlock::SetColor(int32,
                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0015:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_001a:  ret
  } // end of method SlabBlock::Paint

  .method public hidebysig static bool  GetIsTop(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method SlabBlock::GetIsTop

  .method public hidebysig static int32  SetIsTop(int32 data,
                                                  bool isTop) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -2
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  brtrue.s   IL_000a

    IL_0007:  ldc.i4.0
    IL_0008:  br.s       IL_000b

    IL_000a:  ldc.i4.1
    IL_000b:  or
    IL_000c:  ret
  } // end of method SlabBlock::SetIsTop

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<int32> 
          GetColor(int32 data) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  and
    IL_0003:  brfalse.s  IL_0011

    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.2
    IL_0007:  shr
    IL_0008:  ldc.i4.s   15
    IL_000a:  and
    IL_000b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0010:  ret

    IL_0011:  ldloca.s   V_0
    IL_0013:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method SlabBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarga.s   color
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_001d

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.s   -63
    IL_000c:  and
    IL_000d:  ldc.i4.2
    IL_000e:  or
    IL_000f:  ldarga.s   color
    IL_0011:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0016:  ldc.i4.s   15
    IL_0018:  and
    IL_0019:  ldc.i4.2
    IL_001a:  shl
    IL_001b:  or
    IL_001c:  ret

    IL_001d:  ldarg.0
    IL_001e:  ldc.i4.s   -63
    IL_0020:  and
    IL_0021:  ret
  } // end of method SlabBlock::SetColor

} // end of class Game.SlabBlock