.class public abstract auto ansi beforefieldinit Game.BasePumpkinBlock
       extends Game.Block
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__14'
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
    .field public class Game.BasePumpkinBlock '<>4__this'
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
      IL_0008:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__14'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__14'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       252 (0xfc)
      .maxstack  5
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  switch     ( 
                            IL_0023,
                            IL_0057,
                            IL_008b,
                            IL_00bf,
                            IL_00f3)
      IL_0021:  ldc.i4.0
      IL_0022:  ret

      IL_0023:  ldarg.0
      IL_0024:  ldc.i4.m1
      IL_0025:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_002a:  ldarg.0
      IL_002b:  ldarg.0
      IL_002c:  ldfld      class Game.BasePumpkinBlock Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>4__this'
      IL_0031:  ldfld      int32 Game.Block::BlockIndex
      IL_0036:  ldc.i4.0
      IL_0037:  ldc.i4.0
      IL_0038:  ldc.i4.1
      IL_0039:  call       int32 Game.BasePumpkinBlock::SetIsDead(int32,
                                                                  bool)
      IL_003e:  ldc.i4.1
      IL_003f:  call       int32 Game.BasePumpkinBlock::SetSize(int32,
                                                                int32)
      IL_0044:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0049:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>2__current'
      IL_004e:  ldarg.0
      IL_004f:  ldc.i4.1
      IL_0050:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_0055:  ldc.i4.1
      IL_0056:  ret

      IL_0057:  ldarg.0
      IL_0058:  ldc.i4.m1
      IL_0059:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_005e:  ldarg.0
      IL_005f:  ldarg.0
      IL_0060:  ldfld      class Game.BasePumpkinBlock Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>4__this'
      IL_0065:  ldfld      int32 Game.Block::BlockIndex
      IL_006a:  ldc.i4.0
      IL_006b:  ldc.i4.0
      IL_006c:  ldc.i4.1
      IL_006d:  call       int32 Game.BasePumpkinBlock::SetIsDead(int32,
                                                                  bool)
      IL_0072:  ldc.i4.3
      IL_0073:  call       int32 Game.BasePumpkinBlock::SetSize(int32,
                                                                int32)
      IL_0078:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_007d:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>2__current'
      IL_0082:  ldarg.0
      IL_0083:  ldc.i4.2
      IL_0084:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_0089:  ldc.i4.1
      IL_008a:  ret

      IL_008b:  ldarg.0
      IL_008c:  ldc.i4.m1
      IL_008d:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_0092:  ldarg.0
      IL_0093:  ldarg.0
      IL_0094:  ldfld      class Game.BasePumpkinBlock Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>4__this'
      IL_0099:  ldfld      int32 Game.Block::BlockIndex
      IL_009e:  ldc.i4.0
      IL_009f:  ldc.i4.0
      IL_00a0:  ldc.i4.1
      IL_00a1:  call       int32 Game.BasePumpkinBlock::SetIsDead(int32,
                                                                  bool)
      IL_00a6:  ldc.i4.5
      IL_00a7:  call       int32 Game.BasePumpkinBlock::SetSize(int32,
                                                                int32)
      IL_00ac:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_00b1:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>2__current'
      IL_00b6:  ldarg.0
      IL_00b7:  ldc.i4.3
      IL_00b8:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_00bd:  ldc.i4.1
      IL_00be:  ret

      IL_00bf:  ldarg.0
      IL_00c0:  ldc.i4.m1
      IL_00c1:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_00c6:  ldarg.0
      IL_00c7:  ldarg.0
      IL_00c8:  ldfld      class Game.BasePumpkinBlock Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>4__this'
      IL_00cd:  ldfld      int32 Game.Block::BlockIndex
      IL_00d2:  ldc.i4.0
      IL_00d3:  ldc.i4.0
      IL_00d4:  ldc.i4.1
      IL_00d5:  call       int32 Game.BasePumpkinBlock::SetIsDead(int32,
                                                                  bool)
      IL_00da:  ldc.i4.7
      IL_00db:  call       int32 Game.BasePumpkinBlock::SetSize(int32,
                                                                int32)
      IL_00e0:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_00e5:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>2__current'
      IL_00ea:  ldarg.0
      IL_00eb:  ldc.i4.4
      IL_00ec:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_00f1:  ldc.i4.1
      IL_00f2:  ret

      IL_00f3:  ldarg.0
      IL_00f4:  ldc.i4.m1
      IL_00f5:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_00fa:  ldc.i4.0
      IL_00fb:  ret
    } // end of method '<GetCreativeValues>d__14'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__14'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__14'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__14'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.BasePumpkinBlock/'<GetCreativeValues>d__14' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.BasePumpkinBlock Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>4__this'
      IL_0030:  stfld      class Game.BasePumpkinBlock Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetCreativeValues>d__14'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__14'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__14'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__14'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__14'

  .field family class Game.BlockMesh[] m_blockMeshesBySize
  .field family class Game.BlockMesh[] m_standaloneBlockMeshesBySize
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesBySize
  .field private bool m_isRotten
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(bool isRotten) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_blockMeshesBySize
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.8
    IL_000e:  newarr     Game.BlockMesh
    IL_0013:  stfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_standaloneBlockMeshesBySize
    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.8
    IL_001a:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_001f:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.BasePumpkinBlock::m_collisionBoxesBySize
    IL_0024:  ldarg.0
    IL_0025:  call       instance void Game.Block::.ctor()
    IL_002a:  ldarg.0
    IL_002b:  ldarg.1
    IL_002c:  stfld      bool Game.BasePumpkinBlock::m_isRotten
    IL_0031:  ret
  } // end of method BasePumpkinBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       749 (0x2ed)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Color V_5,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_6,
             int32 V_7,
             valuetype [Engine]Engine.BoundingBox V_8,
             float32 V_9,
             float32 V_10)
    IL_0000:  ldstr      "Models/Pumpkins"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Pumpkin"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.2
    IL_0024:  br         IL_01cf

    IL_0029:  ldc.r4     0.2
    IL_002e:  ldc.r4     1.
    IL_0033:  ldloc.2
    IL_0034:  conv.r4
    IL_0035:  ldc.r4     7.
    IL_003a:  div
    IL_003b:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0040:  stloc.3
    IL_0041:  ldc.r4     0.30000001
    IL_0046:  ldloc.3
    IL_0047:  mul
    IL_0048:  ldc.r4     0.69999999
    IL_004d:  ldc.r4     1.
    IL_0052:  ldloc.3
    IL_0053:  sub
    IL_0054:  mul
    IL_0055:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_005a:  stloc.s    V_4
    IL_005c:  ldarg.0
    IL_005d:  ldfld      bool Game.BasePumpkinBlock::m_isRotten
    IL_0062:  brfalse.s  IL_006d

    IL_0064:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0069:  stloc.s    V_5
    IL_006b:  br.s       IL_00ad

    IL_006d:  ldc.i4.0
    IL_006e:  ldc.i4     0x80
    IL_0073:  ldc.i4     0x80
    IL_0078:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_007d:  ldc.i4.s   80
    IL_007f:  ldc.i4     0xff
    IL_0084:  ldc.i4     0xff
    IL_0089:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_008e:  ldloc.2
    IL_008f:  conv.r4
    IL_0090:  ldc.r4     7.
    IL_0095:  div
    IL_0096:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_009b:  stloc.s    V_5
    IL_009d:  ldloc.2
    IL_009e:  ldc.i4.7
    IL_009f:  bne.un.s   IL_00ad

    IL_00a1:  ldloca.s   V_5
    IL_00a3:  ldc.i4     0xff
    IL_00a8:  call       instance void [Engine]Engine.Color::set_R(uint8)
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_blockMeshesBySize
    IL_00b3:  ldloc.2
    IL_00b4:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00b9:  stelem.ref
    IL_00ba:  ldloc.2
    IL_00bb:  ldc.i4.1
    IL_00bc:  blt.s      IL_0117

    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_blockMeshesBySize
    IL_00c4:  ldloc.2
    IL_00c5:  ldelem.ref
    IL_00c6:  ldloc.0
    IL_00c7:  ldstr      "Pumpkin"
    IL_00cc:  ldc.i4.1
    IL_00cd:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00d2:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00d7:  stloc.s    V_6
    IL_00d9:  ldloca.s   V_6
    IL_00db:  ldc.i4.0
    IL_00dc:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00e1:  ldloc.1
    IL_00e2:  ldloc.3
    IL_00e3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00e8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ed:  ldc.r4     0.5
    IL_00f2:  ldloc.s    V_4
    IL_00f4:  add
    IL_00f5:  ldc.r4     0.0
    IL_00fa:  ldc.r4     0.5
    IL_00ff:  ldloc.s    V_4
    IL_0101:  add
    IL_0102:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0107:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_010c:  ldc.i4.0
    IL_010d:  ldc.i4.0
    IL_010e:  ldc.i4.0
    IL_010f:  ldc.i4.0
    IL_0110:  ldloc.s    V_5
    IL_0112:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0117:  ldarg.0
    IL_0118:  ldfld      bool Game.BasePumpkinBlock::m_isRotten
    IL_011d:  brfalse.s  IL_0141

    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_blockMeshesBySize
    IL_0125:  ldloc.2
    IL_0126:  ldelem.ref
    IL_0127:  ldc.r4     -0.375
    IL_012c:  ldc.r4     0.25
    IL_0131:  ldc.r4     0.0
    IL_0136:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_013b:  ldc.i4.m1
    IL_013c:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0141:  ldarg.0
    IL_0142:  ldfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_standaloneBlockMeshesBySize
    IL_0147:  ldloc.2
    IL_0148:  newobj     instance void Game.BlockMesh::.ctor()
    IL_014d:  stelem.ref
    IL_014e:  ldarg.0
    IL_014f:  ldfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_standaloneBlockMeshesBySize
    IL_0154:  ldloc.2
    IL_0155:  ldelem.ref
    IL_0156:  ldloc.0
    IL_0157:  ldstr      "Pumpkin"
    IL_015c:  ldc.i4.1
    IL_015d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0162:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0167:  stloc.s    V_6
    IL_0169:  ldloca.s   V_6
    IL_016b:  ldc.i4.0
    IL_016c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0171:  ldloc.1
    IL_0172:  ldloc.3
    IL_0173:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0178:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_017d:  ldc.r4     0.0
    IL_0182:  ldc.r4     -0.23
    IL_0187:  ldc.r4     0.0
    IL_018c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0191:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0196:  ldc.i4.0
    IL_0197:  ldc.i4.0
    IL_0198:  ldc.i4.0
    IL_0199:  ldc.i4.0
    IL_019a:  ldloc.s    V_5
    IL_019c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      bool Game.BasePumpkinBlock::m_isRotten
    IL_01a7:  brfalse.s  IL_01cb

    IL_01a9:  ldarg.0
    IL_01aa:  ldfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_standaloneBlockMeshesBySize
    IL_01af:  ldloc.2
    IL_01b0:  ldelem.ref
    IL_01b1:  ldc.r4     -0.375
    IL_01b6:  ldc.r4     0.25
    IL_01bb:  ldc.r4     0.0
    IL_01c0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01c5:  ldc.i4.m1
    IL_01c6:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_01cb:  ldloc.2
    IL_01cc:  ldc.i4.1
    IL_01cd:  add
    IL_01ce:  stloc.2
    IL_01cf:  ldloc.2
    IL_01d0:  ldc.i4.8
    IL_01d1:  blt        IL_0029

    IL_01d6:  ldc.i4.0
    IL_01d7:  stloc.s    V_7
    IL_01d9:  br         IL_02de

    IL_01de:  ldarg.0
    IL_01df:  ldfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_blockMeshesBySize
    IL_01e4:  ldloc.s    V_7
    IL_01e6:  ldelem.ref
    IL_01e7:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_01ec:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_01f1:  ldc.i4.0
    IL_01f2:  bgt.s      IL_0223

    IL_01f4:  ldc.r4     0.5
    IL_01f9:  ldc.r4     0.0
    IL_01fe:  ldc.r4     0.5
    IL_0203:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0208:  ldc.r4     0.5
    IL_020d:  ldc.r4     0.0
    IL_0212:  ldc.r4     0.5
    IL_0217:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_021c:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0221:  br.s       IL_0231

    IL_0223:  ldarg.0
    IL_0224:  ldfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_blockMeshesBySize
    IL_0229:  ldloc.s    V_7
    IL_022b:  ldelem.ref
    IL_022c:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_0231:  stloc.s    V_8
    IL_0233:  ldloc.s    V_8
    IL_0235:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_023a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_023f:  ldloc.s    V_8
    IL_0241:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0246:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_024b:  sub
    IL_024c:  stloc.s    V_9
    IL_024e:  ldloc.s    V_9
    IL_0250:  ldc.r4     0.80000001
    IL_0255:  bge.un.s   IL_02c0

    IL_0257:  ldc.r4     0.80000001
    IL_025c:  ldloc.s    V_9
    IL_025e:  sub
    IL_025f:  ldc.r4     2.
    IL_0264:  div
    IL_0265:  stloc.s    V_10
    IL_0267:  ldloca.s   V_8
    IL_0269:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_026e:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0273:  dup
    IL_0274:  ldind.r4
    IL_0275:  ldloc.s    V_10
    IL_0277:  sub
    IL_0278:  stind.r4
    IL_0279:  ldloca.s   V_8
    IL_027b:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0280:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_0285:  dup
    IL_0286:  ldind.r4
    IL_0287:  ldloc.s    V_10
    IL_0289:  sub
    IL_028a:  stind.r4
    IL_028b:  ldloca.s   V_8
    IL_028d:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0292:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0297:  dup
    IL_0298:  ldind.r4
    IL_0299:  ldloc.s    V_10
    IL_029b:  add
    IL_029c:  stind.r4
    IL_029d:  ldloca.s   V_8
    IL_029f:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_02a4:  ldc.r4     0.40000001
    IL_02a9:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_02ae:  ldloca.s   V_8
    IL_02b0:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_02b5:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_02ba:  dup
    IL_02bb:  ldind.r4
    IL_02bc:  ldloc.s    V_10
    IL_02be:  add
    IL_02bf:  stind.r4
    IL_02c0:  ldarg.0
    IL_02c1:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.BasePumpkinBlock::m_collisionBoxesBySize
    IL_02c6:  ldloc.s    V_7
    IL_02c8:  ldc.i4.1
    IL_02c9:  newarr     [Engine]Engine.BoundingBox
    IL_02ce:  dup
    IL_02cf:  ldc.i4.0
    IL_02d0:  ldloc.s    V_8
    IL_02d2:  stelem     [Engine]Engine.BoundingBox
    IL_02d7:  stelem.ref
    IL_02d8:  ldloc.s    V_7
    IL_02da:  ldc.i4.1
    IL_02db:  add
    IL_02dc:  stloc.s    V_7
    IL_02de:  ldloc.s    V_7
    IL_02e0:  ldc.i4.8
    IL_02e1:  blt        IL_01de

    IL_02e6:  ldarg.0
    IL_02e7:  call       instance void Game.Block::Initialize()
    IL_02ec:  ret
  } // end of method BasePumpkinBlock::Initialize

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.BasePumpkinBlock::GetSize(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.BasePumpkinBlock::m_collisionBoxesBySize
    IL_0012:  ldloc.0
    IL_0013:  ldelem.ref
    IL_0014:  ret
  } // end of method BasePumpkinBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  9
    .locals init (int32 V_0,
             bool V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.BasePumpkinBlock::GetSize(int32)
    IL_000c:  stloc.0
    IL_000d:  call       bool Game.BasePumpkinBlock::GetIsDead(int32)
    IL_0012:  stloc.1
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.1
    IL_0015:  blt.s      IL_0040

    IL_0017:  ldarg.1
    IL_0018:  ldarg.0
    IL_0019:  ldarg.s    x
    IL_001b:  ldarg.s    y
    IL_001d:  ldarg.s    z
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_blockMeshesBySize
    IL_0025:  ldloc.0
    IL_0026:  ldelem.ref
    IL_0027:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_002c:  ldloca.s   V_2
    IL_002e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0034:  ldloc.2
    IL_0035:  ldarg.2
    IL_0036:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_003b:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0040:  ldloc.0
    IL_0041:  brtrue.s   IL_006e

    IL_0043:  ldarg.1
    IL_0044:  ldarg.0
    IL_0045:  ldarg.3
    IL_0046:  ldarg.s    x
    IL_0048:  ldarg.s    y
    IL_004a:  ldarg.s    z
    IL_004c:  ldc.i4     0xa0
    IL_0051:  ldc.i4     0xa0
    IL_0056:  ldc.i4     0xa0
    IL_005b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0060:  ldc.i4.s   11
    IL_0062:  ldarg.2
    IL_0063:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0068:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCrossfaceVertices(class Game.Block,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              int32,
                                                                                              class Game.TerrainGeometrySubset)
    IL_006d:  ret

    IL_006e:  ldloc.0
    IL_006f:  ldc.i4.7
    IL_0070:  bge.s      IL_0090

    IL_0072:  ldloc.1
    IL_0073:  brtrue.s   IL_0090

    IL_0075:  ldarg.1
    IL_0076:  ldarg.0
    IL_0077:  ldarg.3
    IL_0078:  ldarg.s    x
    IL_007a:  ldarg.s    y
    IL_007c:  ldarg.s    z
    IL_007e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0083:  ldc.i4.s   28
    IL_0085:  ldarg.2
    IL_0086:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_008b:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCrossfaceVertices(class Game.Block,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              int32,
                                                                                              class Game.TerrainGeometrySubset)
    IL_0090:  ret
  } // end of method BasePumpkinBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  6
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.BasePumpkinBlock::GetSize(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.BlockMesh[] Game.BasePumpkinBlock::m_standaloneBlockMeshesBySize
    IL_0013:  ldloc.0
    IL_0014:  ldelem.ref
    IL_0015:  ldarg.3
    IL_0016:  ldc.r4     2.
    IL_001b:  ldarg.s    size
    IL_001d:  mul
    IL_001e:  ldarg.s    matrix
    IL_0020:  ldarg.s    environmentData
    IL_0022:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0027:  ret
  } // end of method BasePumpkinBlock::DrawBlock

  .method public hidebysig virtual instance int32 
          GetShadowStrength(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.BasePumpkinBlock::GetSize(int32)
    IL_000b:  ret
  } // end of method BasePumpkinBlock::GetShadowStrength

  .method public hidebysig virtual instance float32 
          GetNutritionalValue(int32 'value') cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.BasePumpkinBlock::GetSize(int32)
    IL_000b:  ldc.i4.7
    IL_000c:  beq.s      IL_0014

    IL_000e:  ldc.r4     0.0
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  call       instance float32 Game.Block::GetNutritionalValue(int32)
    IL_001b:  ret
  } // end of method BasePumpkinBlock::GetNutritionalValue

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.BasePumpkinBlock::GetSize(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.1
    IL_000e:  blt.s      IL_0048

    IL_0010:  ldarg.s    dropValues
    IL_0012:  ldloca.s   V_1
    IL_0014:  initobj    Game.BlockDropValue
    IL_001a:  ldloca.s   V_1
    IL_001c:  ldarg.0
    IL_001d:  ldfld      int32 Game.Block::BlockIndex
    IL_0022:  ldc.i4.0
    IL_0023:  ldc.i4.0
    IL_0024:  ldc.i4.1
    IL_0025:  call       int32 Game.BasePumpkinBlock::SetIsDead(int32,
                                                                bool)
    IL_002a:  ldloc.0
    IL_002b:  call       int32 Game.BasePumpkinBlock::SetSize(int32,
                                                              int32)
    IL_0030:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0035:  stfld      int32 Game.BlockDropValue::Value
    IL_003a:  ldloca.s   V_1
    IL_003c:  ldc.i4.1
    IL_003d:  stfld      int32 Game.BlockDropValue::Count
    IL_0042:  ldloc.1
    IL_0043:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0048:  ldarg.s    showDebris
    IL_004a:  ldc.i4.1
    IL_004b:  stind.i1
    IL_004c:  ret
  } // end of method BasePumpkinBlock::GetDropValues

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  6
    .locals init (int32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Color V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.BasePumpkinBlock::GetSize(int32)
    IL_000b:  stloc.0
    IL_000c:  ldc.r4     0.2
    IL_0011:  ldc.r4     1.
    IL_0016:  ldloc.0
    IL_0017:  conv.r4
    IL_0018:  ldc.r4     7.
    IL_001d:  div
    IL_001e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0023:  stloc.1
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.7
    IL_0026:  beq.s      IL_003a

    IL_0028:  ldc.i4.0
    IL_0029:  ldc.i4     0x80
    IL_002e:  ldc.i4     0x80
    IL_0033:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0038:  br.s       IL_003f

    IL_003a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_003f:  stloc.2
    IL_0040:  ldarg.1
    IL_0041:  ldarg.2
    IL_0042:  ldc.r4     1.5
    IL_0047:  ldarg.s    strength
    IL_0049:  mul
    IL_004a:  ldarg.0
    IL_004b:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0050:  ldloc.1
    IL_0051:  mul
    IL_0052:  ldloc.2
    IL_0053:  ldarg.0
    IL_0054:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0059:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_005e:  ret
  } // end of method BasePumpkinBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.BasePumpkinBlock::GetSize(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      bool Game.BasePumpkinBlock::m_isRotten
    IL_0012:  brfalse.s  IL_0024

    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.7
    IL_0016:  blt.s      IL_001e

    IL_0018:  ldstr      "Rotten Pumpkin"
    IL_001d:  ret

    IL_001e:  ldstr      "Rotten Unripe Pumpkin"
    IL_0023:  ret

    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.7
    IL_0026:  blt.s      IL_002e

    IL_0028:  ldstr      "Pumpkin"
    IL_002d:  ret

    IL_002e:  ldstr      "Unripe Pumpkin"
    IL_0033:  ret
  } // end of method BasePumpkinBlock::GetDisplayName

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2E 47 61 6D 65 2E 42 61 73 65 50 75 6D 70   // ...Game.BasePump
                                                                                                                                                      6B 69 6E 42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65   // kinBlock+<GetCre
                                                                                                                                                      61 74 69 76 65 56 61 6C 75 65 73 3E 64 5F 5F 31   // ativeValues>d__1
                                                                                                                                                      34 00 00 )                                        // 4..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.BasePumpkinBlock Game.BasePumpkinBlock/'<GetCreativeValues>d__14'::'<>4__this'
    IL_000e:  ret
  } // end of method BasePumpkinBlock::GetCreativeValues

  .method public hidebysig static int32  GetSize(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4.7
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.7
    IL_0003:  and
    IL_0004:  sub
    IL_0005:  ret
  } // end of method BasePumpkinBlock::GetSize

  .method public hidebysig static int32  SetSize(int32 data,
                                                 int32 size) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -8
    IL_0003:  and
    IL_0004:  ldc.i4.7
    IL_0005:  ldarg.1
    IL_0006:  ldc.i4.7
    IL_0007:  and
    IL_0008:  sub
    IL_0009:  or
    IL_000a:  ret
  } // end of method BasePumpkinBlock::SetSize

  .method public hidebysig static bool  GetIsDead(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method BasePumpkinBlock::GetIsDead

  .method public hidebysig static int32  SetIsDead(int32 data,
                                                   bool isDead) cil managed
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
  } // end of method BasePumpkinBlock::SetIsDead

  .method public hidebysig virtual instance int32 
          GetDamage(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldc.i4.s   16
    IL_0008:  and
    IL_0009:  ldc.i4.4
    IL_000a:  shr
    IL_000b:  ret
  } // end of method BasePumpkinBlock::GetDamage

  .method public hidebysig virtual instance int32 
          SetDamage(int32 'value',
                    int32 damage) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.s   -17
    IL_000b:  and
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  and
    IL_000f:  ldc.i4.4
    IL_0010:  shl
    IL_0011:  or
    IL_0012:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0017:  ret
  } // end of method BasePumpkinBlock::SetDamage

  .method public hidebysig virtual instance int32 
          GetDamageDestructionValue(int32 'value') cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.BasePumpkinBlock::m_isRotten
    IL_0006:  brfalse.s  IL_000a

    IL_0008:  ldc.i4.0
    IL_0009:  ret

    IL_000a:  ldarg.1
    IL_000b:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldc.i4     0xf4
    IL_0017:  ldc.i4.0
    IL_0018:  ldloc.0
    IL_0019:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_001e:  ldc.i4.0
    IL_001f:  callvirt   instance int32 Game.Block::SetDamage(int32,
                                                              int32)
    IL_0024:  ret
  } // end of method BasePumpkinBlock::GetDamageDestructionValue

  .method public hidebysig virtual instance int32 
          GetRotPeriod(int32 'value') cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.BasePumpkinBlock::GetIsDead(int32)
    IL_000b:  brtrue.s   IL_000f

    IL_000d:  ldc.i4.0
    IL_000e:  ret

    IL_000f:  ldarg.0
    IL_0010:  ldfld      int32 Game.Block::DefaultRotPeriod
    IL_0015:  ret
  } // end of method BasePumpkinBlock::GetRotPeriod

} // end of class Game.BasePumpkinBlock