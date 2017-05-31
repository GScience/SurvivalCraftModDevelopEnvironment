.class public abstract auto ansi beforefieldinit Game.StairsBlock
       extends Game.Block
       implements Game.IPaintableBlock
{
  .class auto ansi sealed nested public CornerType
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.StairsBlock/CornerType None = int32(0x00000000)
    .field public static literal valuetype Game.StairsBlock/CornerType OneQuarter = int32(0x00000001)
    .field public static literal valuetype Game.StairsBlock/CornerType ThreeQuarters = int32(0x00000002)
  } // end of class CornerType

  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__9'
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
    .field public class Game.StairsBlock '<>4__this'
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
      IL_0008:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__9'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__9'::System.IDisposable.Dispose

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
      IL_0001:  ldfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>1__state'
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
      IL_001d:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0022:  ldarg.0
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.StairsBlock Game.StairsBlock/'<GetCreativeValues>d__9'::'<>4__this'
      IL_0029:  ldfld      int32 Game.Block::BlockIndex
      IL_002e:  ldc.i4.0
      IL_002f:  ldc.i4.0
      IL_0030:  ldloca.s   V_1
      IL_0032:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0038:  ldloc.1
      IL_0039:  call       int32 Game.StairsBlock::SetColor(int32,
                                                            valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_003e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0043:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>2__current'
      IL_0048:  ldarg.0
      IL_0049:  ldc.i4.1
      IL_004a:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_004f:  ldc.i4.1
      IL_0050:  ret

      IL_0051:  ldarg.0
      IL_0052:  ldc.i4.m1
      IL_0053:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0058:  ldarg.0
      IL_0059:  ldc.i4.0
      IL_005a:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_005f:  br.s       IL_00a9

      IL_0061:  ldarg.0
      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.StairsBlock Game.StairsBlock/'<GetCreativeValues>d__9'::'<>4__this'
      IL_0068:  ldfld      int32 Game.Block::BlockIndex
      IL_006d:  ldc.i4.0
      IL_006e:  ldc.i4.0
      IL_006f:  ldarg.0
      IL_0070:  ldfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_0075:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_007a:  call       int32 Game.StairsBlock::SetColor(int32,
                                                            valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_007f:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0084:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>2__current'
      IL_0089:  ldarg.0
      IL_008a:  ldc.i4.2
      IL_008b:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0090:  ldc.i4.1
      IL_0091:  ret

      IL_0092:  ldarg.0
      IL_0093:  ldc.i4.m1
      IL_0094:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0099:  ldarg.0
      IL_009a:  ldfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_009f:  ldc.i4.1
      IL_00a0:  add
      IL_00a1:  stloc.2
      IL_00a2:  ldarg.0
      IL_00a3:  ldloc.2
      IL_00a4:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_00a9:  ldarg.0
      IL_00aa:  ldfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_00af:  ldc.i4.s   16
      IL_00b1:  blt.s      IL_0061

      IL_00b3:  ldc.i4.0
      IL_00b4:  ret
    } // end of method '<GetCreativeValues>d__9'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__9'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__9'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.StairsBlock/'<GetCreativeValues>d__9' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.StairsBlock/'<GetCreativeValues>d__9'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.StairsBlock Game.StairsBlock/'<GetCreativeValues>d__9'::'<>4__this'
      IL_0030:  stfld      class Game.StairsBlock Game.StairsBlock/'<GetCreativeValues>d__9'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.StairsBlock/'<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__9'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.StairsBlock/'<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.StairsBlock/'<GetCreativeValues>d__9'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__9'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__9'

  .field private class Game.BlockMesh m_standaloneUncoloredBlockMesh
  .field private class Game.BlockMesh m_standaloneColoredBlockMesh
  .field private class Game.BlockMesh[] m_uncoloredBlockMeshes
  .field private class Game.BlockMesh[] m_coloredBlockMeshes
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .field private int32 m_coloredTextureSlot
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(int32 coloredTextureSlot) cil managed
  {
    // 代码大小       75 (0x4b)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.StairsBlock::m_standaloneUncoloredBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.StairsBlock::m_standaloneColoredBlockMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.s   24
    IL_0019:  newarr     Game.BlockMesh
    IL_001e:  stfld      class Game.BlockMesh[] Game.StairsBlock::m_uncoloredBlockMeshes
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.s   24
    IL_0026:  newarr     Game.BlockMesh
    IL_002b:  stfld      class Game.BlockMesh[] Game.StairsBlock::m_coloredBlockMeshes
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4.s   24
    IL_0033:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0038:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_003d:  ldarg.0
    IL_003e:  call       instance void Game.Block::.ctor()
    IL_0043:  ldarg.0
    IL_0044:  ldarg.1
    IL_0045:  stfld      int32 Game.StairsBlock::m_coloredTextureSlot
    IL_004a:  ret
  } // end of method StairsBlock::.ctor

  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       4316 (0x10dc)
    .maxstack  9
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             int32 V_5,
             bool V_6,
             valuetype Game.StairsBlock/CornerType V_7,
             valuetype [Engine]Engine.Matrix V_8,
             class Game.BlockMesh V_9,
             valuetype [Engine]Engine.Matrix V_10,
             valuetype Game.BlockMeshVertex[] V_11,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_12,
             int32 V_13)
    IL_0000:  ldstr      "Models/Stairs"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Stairs"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "StairsOuterCorner"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldloc.0
    IL_003a:  ldstr      "StairsInnerCorner"
    IL_003f:  ldc.i4.1
    IL_0040:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0045:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_004a:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_004f:  stloc.3
    IL_0050:  ldc.i4.0
    IL_0051:  stloc.s    V_4
    IL_0053:  br         IL_030f

    IL_0058:  ldloc.s    V_4
    IL_005a:  call       int32 Game.StairsBlock::GetRotation(int32)
    IL_005f:  stloc.s    V_5
    IL_0061:  ldloc.s    V_4
    IL_0063:  call       bool Game.StairsBlock::GetIsUpsideDown(int32)
    IL_0068:  stloc.s    V_6
    IL_006a:  ldloc.s    V_4
    IL_006c:  call       valuetype Game.StairsBlock/CornerType Game.StairsBlock::GetCornerType(int32)
    IL_0071:  stloc.s    V_7
    IL_0073:  ldloc.s    V_6
    IL_0075:  brfalse.s  IL_00da

    IL_0077:  ldloc.s    V_5
    IL_0079:  conv.r4
    IL_007a:  ldc.r4     3.1415927
    IL_007f:  mul
    IL_0080:  ldc.r4     2.
    IL_0085:  div
    IL_0086:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_008b:  ldc.r4     0.5
    IL_0090:  ldc.r4     -0.5
    IL_0095:  ldc.r4     0.5
    IL_009a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_009f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00a4:  ldc.r4     1.
    IL_00a9:  ldc.r4     -1.
    IL_00ae:  ldc.r4     1.
    IL_00b3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_00b8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00bd:  ldc.r4     0.0
    IL_00c2:  ldc.r4     0.5
    IL_00c7:  ldc.r4     0.0
    IL_00cc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00d6:  stloc.s    V_8
    IL_00d8:  br.s       IL_0109

    IL_00da:  ldloc.s    V_5
    IL_00dc:  conv.r4
    IL_00dd:  ldc.r4     3.1415927
    IL_00e2:  mul
    IL_00e3:  ldc.r4     2.
    IL_00e8:  div
    IL_00e9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00ee:  ldc.r4     0.5
    IL_00f3:  ldc.r4     0.0
    IL_00f8:  ldc.r4     0.5
    IL_00fd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0102:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0107:  stloc.s    V_8
    IL_0109:  newobj     instance void Game.BlockMesh::.ctor()
    IL_010e:  stloc.s    V_9
    IL_0110:  ldloc.s    V_7
    IL_0112:  brtrue.s   IL_014a

    IL_0114:  ldloc.s    V_9
    IL_0116:  ldloc.0
    IL_0117:  ldstr      "Stairs"
    IL_011c:  ldc.i4.1
    IL_011d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0122:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0127:  stloc.s    V_12
    IL_0129:  ldloca.s   V_12
    IL_012b:  ldc.i4.0
    IL_012c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0131:  ldloc.1
    IL_0132:  ldloc.s    V_8
    IL_0134:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0139:  ldc.i4.0
    IL_013a:  ldloc.s    V_6
    IL_013c:  ldc.i4.0
    IL_013d:  ldc.i4.0
    IL_013e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0143:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0148:  br.s       IL_01be

    IL_014a:  ldloc.s    V_7
    IL_014c:  ldc.i4.1
    IL_014d:  bne.un.s   IL_0185

    IL_014f:  ldloc.s    V_9
    IL_0151:  ldloc.0
    IL_0152:  ldstr      "StairsOuterCorner"
    IL_0157:  ldc.i4.1
    IL_0158:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_015d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0162:  stloc.s    V_12
    IL_0164:  ldloca.s   V_12
    IL_0166:  ldc.i4.0
    IL_0167:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_016c:  ldloc.2
    IL_016d:  ldloc.s    V_8
    IL_016f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0174:  ldc.i4.0
    IL_0175:  ldloc.s    V_6
    IL_0177:  ldc.i4.0
    IL_0178:  ldc.i4.0
    IL_0179:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_017e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0183:  br.s       IL_01be

    IL_0185:  ldloc.s    V_7
    IL_0187:  ldc.i4.2
    IL_0188:  bne.un.s   IL_01be

    IL_018a:  ldloc.s    V_9
    IL_018c:  ldloc.0
    IL_018d:  ldstr      "StairsInnerCorner"
    IL_0192:  ldc.i4.1
    IL_0193:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0198:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_019d:  stloc.s    V_12
    IL_019f:  ldloca.s   V_12
    IL_01a1:  ldc.i4.0
    IL_01a2:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01a7:  ldloc.3
    IL_01a8:  ldloc.s    V_8
    IL_01aa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01af:  ldc.i4.0
    IL_01b0:  ldloc.s    V_6
    IL_01b2:  ldc.i4.0
    IL_01b3:  ldc.i4.0
    IL_01b4:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01b9:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01be:  ldc.r4     -3.125e-002
    IL_01c3:  ldc.r4     -3.125e-002
    IL_01c8:  ldc.r4     0.0
    IL_01cd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01d2:  ldloc.s    V_5
    IL_01d4:  conv.r4
    IL_01d5:  ldc.r4     3.1415927
    IL_01da:  mul
    IL_01db:  ldc.r4     2.
    IL_01e0:  div
    IL_01e1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_01e6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01eb:  ldc.r4     3.125e-002
    IL_01f0:  ldc.r4     3.125e-002
    IL_01f5:  ldc.r4     0.0
    IL_01fa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01ff:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0204:  stloc.s    V_10
    IL_0206:  ldloc.s    V_9
    IL_0208:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_020d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0212:  stloc.s    V_11
    IL_0214:  ldc.i4.0
    IL_0215:  stloc.s    V_13
    IL_0217:  br.s       IL_0253

    IL_0219:  ldloc.s    V_11
    IL_021b:  ldloc.s    V_13
    IL_021d:  ldelema    Game.BlockMeshVertex
    IL_0222:  ldfld      uint8 Game.BlockMeshVertex::Face
    IL_0227:  ldc.i4.4
    IL_0228:  blt.s      IL_024d

    IL_022a:  ldloc.s    V_11
    IL_022c:  ldloc.s    V_13
    IL_022e:  ldelema    Game.BlockMeshVertex
    IL_0233:  ldloc.s    V_11
    IL_0235:  ldloc.s    V_13
    IL_0237:  ldelema    Game.BlockMeshVertex
    IL_023c:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0241:  ldloc.s    V_10
    IL_0243:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0248:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_024d:  ldloc.s    V_13
    IL_024f:  ldc.i4.1
    IL_0250:  add
    IL_0251:  stloc.s    V_13
    IL_0253:  ldloc.s    V_13
    IL_0255:  ldloc.s    V_11
    IL_0257:  ldlen
    IL_0258:  conv.i4
    IL_0259:  blt.s      IL_0219

    IL_025b:  ldarg.0
    IL_025c:  ldfld      class Game.BlockMesh[] Game.StairsBlock::m_coloredBlockMeshes
    IL_0261:  ldloc.s    V_4
    IL_0263:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0268:  stelem.ref
    IL_0269:  ldarg.0
    IL_026a:  ldfld      class Game.BlockMesh[] Game.StairsBlock::m_coloredBlockMeshes
    IL_026f:  ldloc.s    V_4
    IL_0271:  ldelem.ref
    IL_0272:  ldloc.s    V_9
    IL_0274:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_0279:  ldarg.0
    IL_027a:  ldfld      class Game.BlockMesh[] Game.StairsBlock::m_coloredBlockMeshes
    IL_027f:  ldloc.s    V_4
    IL_0281:  ldelem.ref
    IL_0282:  ldarg.0
    IL_0283:  ldfld      int32 Game.StairsBlock::m_coloredTextureSlot
    IL_0288:  ldc.i4.s   16
    IL_028a:  rem
    IL_028b:  conv.r4
    IL_028c:  ldc.r4     16.
    IL_0291:  div
    IL_0292:  ldarg.0
    IL_0293:  ldfld      int32 Game.StairsBlock::m_coloredTextureSlot
    IL_0298:  ldc.i4.s   16
    IL_029a:  div
    IL_029b:  conv.r4
    IL_029c:  ldc.r4     16.
    IL_02a1:  div
    IL_02a2:  ldc.r4     0.0
    IL_02a7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_02ac:  ldc.i4.m1
    IL_02ad:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_02b2:  ldarg.0
    IL_02b3:  ldfld      class Game.BlockMesh[] Game.StairsBlock::m_uncoloredBlockMeshes
    IL_02b8:  ldloc.s    V_4
    IL_02ba:  newobj     instance void Game.BlockMesh::.ctor()
    IL_02bf:  stelem.ref
    IL_02c0:  ldarg.0
    IL_02c1:  ldfld      class Game.BlockMesh[] Game.StairsBlock::m_uncoloredBlockMeshes
    IL_02c6:  ldloc.s    V_4
    IL_02c8:  ldelem.ref
    IL_02c9:  ldloc.s    V_9
    IL_02cb:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_02d0:  ldarg.0
    IL_02d1:  ldfld      class Game.BlockMesh[] Game.StairsBlock::m_uncoloredBlockMeshes
    IL_02d6:  ldloc.s    V_4
    IL_02d8:  ldelem.ref
    IL_02d9:  ldarg.0
    IL_02da:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_02df:  ldc.i4.s   16
    IL_02e1:  rem
    IL_02e2:  conv.r4
    IL_02e3:  ldc.r4     16.
    IL_02e8:  div
    IL_02e9:  ldarg.0
    IL_02ea:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_02ef:  ldc.i4.s   16
    IL_02f1:  div
    IL_02f2:  conv.r4
    IL_02f3:  ldc.r4     16.
    IL_02f8:  div
    IL_02f9:  ldc.r4     0.0
    IL_02fe:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0303:  ldc.i4.m1
    IL_0304:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0309:  ldloc.s    V_4
    IL_030b:  ldc.i4.1
    IL_030c:  add
    IL_030d:  stloc.s    V_4
    IL_030f:  ldloc.s    V_4
    IL_0311:  ldc.i4.s   24
    IL_0313:  blt        IL_0058

    IL_0318:  ldarg.0
    IL_0319:  ldfld      class Game.BlockMesh Game.StairsBlock::m_standaloneUncoloredBlockMesh
    IL_031e:  ldloc.0
    IL_031f:  ldstr      "Stairs"
    IL_0324:  ldc.i4.1
    IL_0325:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_032a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_032f:  stloc.s    V_12
    IL_0331:  ldloca.s   V_12
    IL_0333:  ldc.i4.0
    IL_0334:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0339:  ldloc.1
    IL_033a:  ldc.r4     0.0
    IL_033f:  ldc.r4     -0.5
    IL_0344:  ldc.r4     0.0
    IL_0349:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_034e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0353:  ldc.i4.0
    IL_0354:  ldc.i4.0
    IL_0355:  ldc.i4.0
    IL_0356:  ldc.i4.0
    IL_0357:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_035c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0361:  ldarg.0
    IL_0362:  ldfld      class Game.BlockMesh Game.StairsBlock::m_standaloneUncoloredBlockMesh
    IL_0367:  ldarg.0
    IL_0368:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_036d:  ldc.i4.s   16
    IL_036f:  rem
    IL_0370:  conv.r4
    IL_0371:  ldc.r4     16.
    IL_0376:  div
    IL_0377:  ldarg.0
    IL_0378:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_037d:  ldc.i4.s   16
    IL_037f:  div
    IL_0380:  conv.r4
    IL_0381:  ldc.r4     16.
    IL_0386:  div
    IL_0387:  ldc.r4     0.0
    IL_038c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0391:  ldc.i4.m1
    IL_0392:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0397:  ldarg.0
    IL_0398:  ldfld      class Game.BlockMesh Game.StairsBlock::m_standaloneColoredBlockMesh
    IL_039d:  ldloc.0
    IL_039e:  ldstr      "Stairs"
    IL_03a3:  ldc.i4.1
    IL_03a4:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_03a9:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_03ae:  stloc.s    V_12
    IL_03b0:  ldloca.s   V_12
    IL_03b2:  ldc.i4.0
    IL_03b3:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_03b8:  ldloc.1
    IL_03b9:  ldc.r4     0.0
    IL_03be:  ldc.r4     -0.5
    IL_03c3:  ldc.r4     0.0
    IL_03c8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_03cd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03d2:  ldc.i4.0
    IL_03d3:  ldc.i4.0
    IL_03d4:  ldc.i4.0
    IL_03d5:  ldc.i4.0
    IL_03d6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_03db:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_03e0:  ldarg.0
    IL_03e1:  ldfld      class Game.BlockMesh Game.StairsBlock::m_standaloneColoredBlockMesh
    IL_03e6:  ldarg.0
    IL_03e7:  ldfld      int32 Game.StairsBlock::m_coloredTextureSlot
    IL_03ec:  ldc.i4.s   16
    IL_03ee:  rem
    IL_03ef:  conv.r4
    IL_03f0:  ldc.r4     16.
    IL_03f5:  div
    IL_03f6:  ldarg.0
    IL_03f7:  ldfld      int32 Game.StairsBlock::m_coloredTextureSlot
    IL_03fc:  ldc.i4.s   16
    IL_03fe:  div
    IL_03ff:  conv.r4
    IL_0400:  ldc.r4     16.
    IL_0405:  div
    IL_0406:  ldc.r4     0.0
    IL_040b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0410:  ldc.i4.m1
    IL_0411:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0416:  ldarg.0
    IL_0417:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_041c:  ldc.i4.0
    IL_041d:  ldc.i4.2
    IL_041e:  newarr     [Engine]Engine.BoundingBox
    IL_0423:  dup
    IL_0424:  ldc.i4.0
    IL_0425:  ldc.r4     0.0
    IL_042a:  ldc.r4     0.0
    IL_042f:  ldc.r4     0.0
    IL_0434:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0439:  ldc.r4     1.
    IL_043e:  ldc.r4     1.
    IL_0443:  ldc.r4     0.5
    IL_0448:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_044d:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0452:  stelem     [Engine]Engine.BoundingBox
    IL_0457:  dup
    IL_0458:  ldc.i4.1
    IL_0459:  ldc.r4     0.0
    IL_045e:  ldc.r4     0.0
    IL_0463:  ldc.r4     0.5
    IL_0468:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_046d:  ldc.r4     1.
    IL_0472:  ldc.r4     0.5
    IL_0477:  ldc.r4     1.
    IL_047c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0481:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0486:  stelem     [Engine]Engine.BoundingBox
    IL_048b:  stelem.ref
    IL_048c:  ldarg.0
    IL_048d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0492:  ldc.i4.1
    IL_0493:  ldc.i4.2
    IL_0494:  newarr     [Engine]Engine.BoundingBox
    IL_0499:  dup
    IL_049a:  ldc.i4.0
    IL_049b:  ldc.r4     0.0
    IL_04a0:  ldc.r4     0.0
    IL_04a5:  ldc.r4     0.0
    IL_04aa:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04af:  ldc.r4     0.5
    IL_04b4:  ldc.r4     1.
    IL_04b9:  ldc.r4     1.
    IL_04be:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04c3:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_04c8:  stelem     [Engine]Engine.BoundingBox
    IL_04cd:  dup
    IL_04ce:  ldc.i4.1
    IL_04cf:  ldc.r4     0.5
    IL_04d4:  ldc.r4     0.0
    IL_04d9:  ldc.r4     0.0
    IL_04de:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04e3:  ldc.r4     1.
    IL_04e8:  ldc.r4     0.5
    IL_04ed:  ldc.r4     1.
    IL_04f2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04f7:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_04fc:  stelem     [Engine]Engine.BoundingBox
    IL_0501:  stelem.ref
    IL_0502:  ldarg.0
    IL_0503:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0508:  ldc.i4.2
    IL_0509:  ldc.i4.2
    IL_050a:  newarr     [Engine]Engine.BoundingBox
    IL_050f:  dup
    IL_0510:  ldc.i4.0
    IL_0511:  ldc.r4     0.0
    IL_0516:  ldc.r4     0.0
    IL_051b:  ldc.r4     0.0
    IL_0520:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0525:  ldc.r4     1.
    IL_052a:  ldc.r4     0.5
    IL_052f:  ldc.r4     0.5
    IL_0534:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0539:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_053e:  stelem     [Engine]Engine.BoundingBox
    IL_0543:  dup
    IL_0544:  ldc.i4.1
    IL_0545:  ldc.r4     0.0
    IL_054a:  ldc.r4     0.0
    IL_054f:  ldc.r4     0.5
    IL_0554:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0559:  ldc.r4     1.
    IL_055e:  ldc.r4     1.
    IL_0563:  ldc.r4     1.
    IL_0568:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_056d:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0572:  stelem     [Engine]Engine.BoundingBox
    IL_0577:  stelem.ref
    IL_0578:  ldarg.0
    IL_0579:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_057e:  ldc.i4.3
    IL_057f:  ldc.i4.2
    IL_0580:  newarr     [Engine]Engine.BoundingBox
    IL_0585:  dup
    IL_0586:  ldc.i4.0
    IL_0587:  ldc.r4     0.0
    IL_058c:  ldc.r4     0.0
    IL_0591:  ldc.r4     0.0
    IL_0596:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_059b:  ldc.r4     0.5
    IL_05a0:  ldc.r4     0.5
    IL_05a5:  ldc.r4     1.
    IL_05aa:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_05af:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_05b4:  stelem     [Engine]Engine.BoundingBox
    IL_05b9:  dup
    IL_05ba:  ldc.i4.1
    IL_05bb:  ldc.r4     0.5
    IL_05c0:  ldc.r4     0.0
    IL_05c5:  ldc.r4     0.0
    IL_05ca:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_05cf:  ldc.r4     1.
    IL_05d4:  ldc.r4     1.
    IL_05d9:  ldc.r4     1.
    IL_05de:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_05e3:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_05e8:  stelem     [Engine]Engine.BoundingBox
    IL_05ed:  stelem.ref
    IL_05ee:  ldarg.0
    IL_05ef:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_05f4:  ldc.i4.4
    IL_05f5:  ldc.i4.2
    IL_05f6:  newarr     [Engine]Engine.BoundingBox
    IL_05fb:  dup
    IL_05fc:  ldc.i4.0
    IL_05fd:  ldc.r4     0.0
    IL_0602:  ldc.r4     0.0
    IL_0607:  ldc.r4     0.0
    IL_060c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0611:  ldc.r4     1.
    IL_0616:  ldc.r4     1.
    IL_061b:  ldc.r4     0.5
    IL_0620:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0625:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_062a:  stelem     [Engine]Engine.BoundingBox
    IL_062f:  dup
    IL_0630:  ldc.i4.1
    IL_0631:  ldc.r4     0.0
    IL_0636:  ldc.r4     0.5
    IL_063b:  ldc.r4     0.5
    IL_0640:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0645:  ldc.r4     1.
    IL_064a:  ldc.r4     1.
    IL_064f:  ldc.r4     1.
    IL_0654:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0659:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_065e:  stelem     [Engine]Engine.BoundingBox
    IL_0663:  stelem.ref
    IL_0664:  ldarg.0
    IL_0665:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_066a:  ldc.i4.5
    IL_066b:  ldc.i4.2
    IL_066c:  newarr     [Engine]Engine.BoundingBox
    IL_0671:  dup
    IL_0672:  ldc.i4.0
    IL_0673:  ldc.r4     0.0
    IL_0678:  ldc.r4     0.0
    IL_067d:  ldc.r4     0.0
    IL_0682:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0687:  ldc.r4     0.5
    IL_068c:  ldc.r4     1.
    IL_0691:  ldc.r4     1.
    IL_0696:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_069b:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_06a0:  stelem     [Engine]Engine.BoundingBox
    IL_06a5:  dup
    IL_06a6:  ldc.i4.1
    IL_06a7:  ldc.r4     0.5
    IL_06ac:  ldc.r4     0.5
    IL_06b1:  ldc.r4     0.0
    IL_06b6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_06bb:  ldc.r4     1.
    IL_06c0:  ldc.r4     1.
    IL_06c5:  ldc.r4     1.
    IL_06ca:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_06cf:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_06d4:  stelem     [Engine]Engine.BoundingBox
    IL_06d9:  stelem.ref
    IL_06da:  ldarg.0
    IL_06db:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_06e0:  ldc.i4.6
    IL_06e1:  ldc.i4.2
    IL_06e2:  newarr     [Engine]Engine.BoundingBox
    IL_06e7:  dup
    IL_06e8:  ldc.i4.0
    IL_06e9:  ldc.r4     0.0
    IL_06ee:  ldc.r4     0.5
    IL_06f3:  ldc.r4     0.0
    IL_06f8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_06fd:  ldc.r4     1.
    IL_0702:  ldc.r4     1.
    IL_0707:  ldc.r4     0.5
    IL_070c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0711:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0716:  stelem     [Engine]Engine.BoundingBox
    IL_071b:  dup
    IL_071c:  ldc.i4.1
    IL_071d:  ldc.r4     0.0
    IL_0722:  ldc.r4     0.0
    IL_0727:  ldc.r4     0.5
    IL_072c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0731:  ldc.r4     1.
    IL_0736:  ldc.r4     1.
    IL_073b:  ldc.r4     1.
    IL_0740:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0745:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_074a:  stelem     [Engine]Engine.BoundingBox
    IL_074f:  stelem.ref
    IL_0750:  ldarg.0
    IL_0751:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0756:  ldc.i4.7
    IL_0757:  ldc.i4.2
    IL_0758:  newarr     [Engine]Engine.BoundingBox
    IL_075d:  dup
    IL_075e:  ldc.i4.0
    IL_075f:  ldc.r4     0.0
    IL_0764:  ldc.r4     0.5
    IL_0769:  ldc.r4     0.0
    IL_076e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0773:  ldc.r4     0.5
    IL_0778:  ldc.r4     1.
    IL_077d:  ldc.r4     1.
    IL_0782:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0787:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_078c:  stelem     [Engine]Engine.BoundingBox
    IL_0791:  dup
    IL_0792:  ldc.i4.1
    IL_0793:  ldc.r4     0.5
    IL_0798:  ldc.r4     0.0
    IL_079d:  ldc.r4     0.0
    IL_07a2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_07a7:  ldc.r4     1.
    IL_07ac:  ldc.r4     1.
    IL_07b1:  ldc.r4     1.
    IL_07b6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_07bb:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_07c0:  stelem     [Engine]Engine.BoundingBox
    IL_07c5:  stelem.ref
    IL_07c6:  ldarg.0
    IL_07c7:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_07cc:  ldc.i4.8
    IL_07cd:  ldc.i4.2
    IL_07ce:  newarr     [Engine]Engine.BoundingBox
    IL_07d3:  dup
    IL_07d4:  ldc.i4.0
    IL_07d5:  ldc.r4     0.0
    IL_07da:  ldc.r4     0.0
    IL_07df:  ldc.r4     0.0
    IL_07e4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_07e9:  ldc.r4     1.
    IL_07ee:  ldc.r4     0.5
    IL_07f3:  ldc.r4     1.
    IL_07f8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_07fd:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0802:  stelem     [Engine]Engine.BoundingBox
    IL_0807:  dup
    IL_0808:  ldc.i4.1
    IL_0809:  ldc.r4     0.5
    IL_080e:  ldc.r4     0.5
    IL_0813:  ldc.r4     0.0
    IL_0818:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_081d:  ldc.r4     1.
    IL_0822:  ldc.r4     1.
    IL_0827:  ldc.r4     0.5
    IL_082c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0831:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0836:  stelem     [Engine]Engine.BoundingBox
    IL_083b:  stelem.ref
    IL_083c:  ldarg.0
    IL_083d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0842:  ldc.i4.s   9
    IL_0844:  ldc.i4.2
    IL_0845:  newarr     [Engine]Engine.BoundingBox
    IL_084a:  dup
    IL_084b:  ldc.i4.0
    IL_084c:  ldc.r4     0.0
    IL_0851:  ldc.r4     0.0
    IL_0856:  ldc.r4     0.0
    IL_085b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0860:  ldc.r4     1.
    IL_0865:  ldc.r4     0.5
    IL_086a:  ldc.r4     1.
    IL_086f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0874:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0879:  stelem     [Engine]Engine.BoundingBox
    IL_087e:  dup
    IL_087f:  ldc.i4.1
    IL_0880:  ldc.r4     0.0
    IL_0885:  ldc.r4     0.5
    IL_088a:  ldc.r4     0.0
    IL_088f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0894:  ldc.r4     0.5
    IL_0899:  ldc.r4     1.
    IL_089e:  ldc.r4     0.5
    IL_08a3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_08a8:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_08ad:  stelem     [Engine]Engine.BoundingBox
    IL_08b2:  stelem.ref
    IL_08b3:  ldarg.0
    IL_08b4:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_08b9:  ldc.i4.s   10
    IL_08bb:  ldc.i4.2
    IL_08bc:  newarr     [Engine]Engine.BoundingBox
    IL_08c1:  dup
    IL_08c2:  ldc.i4.0
    IL_08c3:  ldc.r4     0.0
    IL_08c8:  ldc.r4     0.0
    IL_08cd:  ldc.r4     0.0
    IL_08d2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_08d7:  ldc.r4     1.
    IL_08dc:  ldc.r4     0.5
    IL_08e1:  ldc.r4     1.
    IL_08e6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_08eb:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_08f0:  stelem     [Engine]Engine.BoundingBox
    IL_08f5:  dup
    IL_08f6:  ldc.i4.1
    IL_08f7:  ldc.r4     0.0
    IL_08fc:  ldc.r4     0.5
    IL_0901:  ldc.r4     0.5
    IL_0906:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_090b:  ldc.r4     0.5
    IL_0910:  ldc.r4     1.
    IL_0915:  ldc.r4     1.
    IL_091a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_091f:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0924:  stelem     [Engine]Engine.BoundingBox
    IL_0929:  stelem.ref
    IL_092a:  ldarg.0
    IL_092b:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0930:  ldc.i4.s   11
    IL_0932:  ldc.i4.2
    IL_0933:  newarr     [Engine]Engine.BoundingBox
    IL_0938:  dup
    IL_0939:  ldc.i4.0
    IL_093a:  ldc.r4     0.0
    IL_093f:  ldc.r4     0.0
    IL_0944:  ldc.r4     0.0
    IL_0949:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_094e:  ldc.r4     1.
    IL_0953:  ldc.r4     0.5
    IL_0958:  ldc.r4     1.
    IL_095d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0962:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0967:  stelem     [Engine]Engine.BoundingBox
    IL_096c:  dup
    IL_096d:  ldc.i4.1
    IL_096e:  ldc.r4     0.5
    IL_0973:  ldc.r4     0.5
    IL_0978:  ldc.r4     0.5
    IL_097d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0982:  ldc.r4     1.
    IL_0987:  ldc.r4     1.
    IL_098c:  ldc.r4     1.
    IL_0991:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0996:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_099b:  stelem     [Engine]Engine.BoundingBox
    IL_09a0:  stelem.ref
    IL_09a1:  ldarg.0
    IL_09a2:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_09a7:  ldc.i4.s   12
    IL_09a9:  ldc.i4.2
    IL_09aa:  newarr     [Engine]Engine.BoundingBox
    IL_09af:  dup
    IL_09b0:  ldc.i4.0
    IL_09b1:  ldc.r4     0.0
    IL_09b6:  ldc.r4     0.5
    IL_09bb:  ldc.r4     0.0
    IL_09c0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_09c5:  ldc.r4     1.
    IL_09ca:  ldc.r4     1.
    IL_09cf:  ldc.r4     1.
    IL_09d4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_09d9:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_09de:  stelem     [Engine]Engine.BoundingBox
    IL_09e3:  dup
    IL_09e4:  ldc.i4.1
    IL_09e5:  ldc.r4     0.5
    IL_09ea:  ldc.r4     0.0
    IL_09ef:  ldc.r4     0.0
    IL_09f4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_09f9:  ldc.r4     1.
    IL_09fe:  ldc.r4     0.5
    IL_0a03:  ldc.r4     0.5
    IL_0a08:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0a0d:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0a12:  stelem     [Engine]Engine.BoundingBox
    IL_0a17:  stelem.ref
    IL_0a18:  ldarg.0
    IL_0a19:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0a1e:  ldc.i4.s   13
    IL_0a20:  ldc.i4.2
    IL_0a21:  newarr     [Engine]Engine.BoundingBox
    IL_0a26:  dup
    IL_0a27:  ldc.i4.0
    IL_0a28:  ldc.r4     0.0
    IL_0a2d:  ldc.r4     0.5
    IL_0a32:  ldc.r4     0.0
    IL_0a37:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0a3c:  ldc.r4     1.
    IL_0a41:  ldc.r4     1.
    IL_0a46:  ldc.r4     1.
    IL_0a4b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0a50:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0a55:  stelem     [Engine]Engine.BoundingBox
    IL_0a5a:  dup
    IL_0a5b:  ldc.i4.1
    IL_0a5c:  ldc.r4     0.0
    IL_0a61:  ldc.r4     0.0
    IL_0a66:  ldc.r4     0.0
    IL_0a6b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0a70:  ldc.r4     0.5
    IL_0a75:  ldc.r4     0.5
    IL_0a7a:  ldc.r4     0.5
    IL_0a7f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0a84:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0a89:  stelem     [Engine]Engine.BoundingBox
    IL_0a8e:  stelem.ref
    IL_0a8f:  ldarg.0
    IL_0a90:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0a95:  ldc.i4.s   14
    IL_0a97:  ldc.i4.2
    IL_0a98:  newarr     [Engine]Engine.BoundingBox
    IL_0a9d:  dup
    IL_0a9e:  ldc.i4.0
    IL_0a9f:  ldc.r4     0.0
    IL_0aa4:  ldc.r4     0.5
    IL_0aa9:  ldc.r4     0.0
    IL_0aae:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0ab3:  ldc.r4     1.
    IL_0ab8:  ldc.r4     1.
    IL_0abd:  ldc.r4     1.
    IL_0ac2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0ac7:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0acc:  stelem     [Engine]Engine.BoundingBox
    IL_0ad1:  dup
    IL_0ad2:  ldc.i4.1
    IL_0ad3:  ldc.r4     0.0
    IL_0ad8:  ldc.r4     0.0
    IL_0add:  ldc.r4     0.5
    IL_0ae2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0ae7:  ldc.r4     0.5
    IL_0aec:  ldc.r4     0.5
    IL_0af1:  ldc.r4     1.
    IL_0af6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0afb:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0b00:  stelem     [Engine]Engine.BoundingBox
    IL_0b05:  stelem.ref
    IL_0b06:  ldarg.0
    IL_0b07:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0b0c:  ldc.i4.s   15
    IL_0b0e:  ldc.i4.2
    IL_0b0f:  newarr     [Engine]Engine.BoundingBox
    IL_0b14:  dup
    IL_0b15:  ldc.i4.0
    IL_0b16:  ldc.r4     0.0
    IL_0b1b:  ldc.r4     0.5
    IL_0b20:  ldc.r4     0.0
    IL_0b25:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0b2a:  ldc.r4     1.
    IL_0b2f:  ldc.r4     1.
    IL_0b34:  ldc.r4     1.
    IL_0b39:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0b3e:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0b43:  stelem     [Engine]Engine.BoundingBox
    IL_0b48:  dup
    IL_0b49:  ldc.i4.1
    IL_0b4a:  ldc.r4     0.5
    IL_0b4f:  ldc.r4     0.0
    IL_0b54:  ldc.r4     0.5
    IL_0b59:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0b5e:  ldc.r4     1.
    IL_0b63:  ldc.r4     0.5
    IL_0b68:  ldc.r4     1.
    IL_0b6d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0b72:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0b77:  stelem     [Engine]Engine.BoundingBox
    IL_0b7c:  stelem.ref
    IL_0b7d:  ldarg.0
    IL_0b7e:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0b83:  ldc.i4.s   16
    IL_0b85:  ldc.i4.3
    IL_0b86:  newarr     [Engine]Engine.BoundingBox
    IL_0b8b:  dup
    IL_0b8c:  ldc.i4.0
    IL_0b8d:  ldc.r4     0.0
    IL_0b92:  ldc.r4     0.0
    IL_0b97:  ldc.r4     0.0
    IL_0b9c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0ba1:  ldc.r4     1.
    IL_0ba6:  ldc.r4     0.5
    IL_0bab:  ldc.r4     1.
    IL_0bb0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0bb5:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0bba:  stelem     [Engine]Engine.BoundingBox
    IL_0bbf:  dup
    IL_0bc0:  ldc.i4.1
    IL_0bc1:  ldc.r4     0.0
    IL_0bc6:  ldc.r4     0.5
    IL_0bcb:  ldc.r4     0.0
    IL_0bd0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0bd5:  ldc.r4     1.
    IL_0bda:  ldc.r4     1.
    IL_0bdf:  ldc.r4     0.5
    IL_0be4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0be9:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0bee:  stelem     [Engine]Engine.BoundingBox
    IL_0bf3:  dup
    IL_0bf4:  ldc.i4.2
    IL_0bf5:  ldc.r4     0.5
    IL_0bfa:  ldc.r4     0.5
    IL_0bff:  ldc.r4     0.5
    IL_0c04:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0c09:  ldc.r4     1.
    IL_0c0e:  ldc.r4     1.
    IL_0c13:  ldc.r4     1.
    IL_0c18:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0c1d:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0c22:  stelem     [Engine]Engine.BoundingBox
    IL_0c27:  stelem.ref
    IL_0c28:  ldarg.0
    IL_0c29:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0c2e:  ldc.i4.s   17
    IL_0c30:  ldc.i4.3
    IL_0c31:  newarr     [Engine]Engine.BoundingBox
    IL_0c36:  dup
    IL_0c37:  ldc.i4.0
    IL_0c38:  ldc.r4     0.0
    IL_0c3d:  ldc.r4     0.0
    IL_0c42:  ldc.r4     0.0
    IL_0c47:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0c4c:  ldc.r4     1.
    IL_0c51:  ldc.r4     0.5
    IL_0c56:  ldc.r4     1.
    IL_0c5b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0c60:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0c65:  stelem     [Engine]Engine.BoundingBox
    IL_0c6a:  dup
    IL_0c6b:  ldc.i4.1
    IL_0c6c:  ldc.r4     0.0
    IL_0c71:  ldc.r4     0.5
    IL_0c76:  ldc.r4     0.0
    IL_0c7b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0c80:  ldc.r4     1.
    IL_0c85:  ldc.r4     1.
    IL_0c8a:  ldc.r4     0.5
    IL_0c8f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0c94:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0c99:  stelem     [Engine]Engine.BoundingBox
    IL_0c9e:  dup
    IL_0c9f:  ldc.i4.2
    IL_0ca0:  ldc.r4     0.0
    IL_0ca5:  ldc.r4     0.5
    IL_0caa:  ldc.r4     0.5
    IL_0caf:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0cb4:  ldc.r4     0.5
    IL_0cb9:  ldc.r4     1.
    IL_0cbe:  ldc.r4     1.
    IL_0cc3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0cc8:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0ccd:  stelem     [Engine]Engine.BoundingBox
    IL_0cd2:  stelem.ref
    IL_0cd3:  ldarg.0
    IL_0cd4:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0cd9:  ldc.i4.s   18
    IL_0cdb:  ldc.i4.3
    IL_0cdc:  newarr     [Engine]Engine.BoundingBox
    IL_0ce1:  dup
    IL_0ce2:  ldc.i4.0
    IL_0ce3:  ldc.r4     0.0
    IL_0ce8:  ldc.r4     0.0
    IL_0ced:  ldc.r4     0.0
    IL_0cf2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0cf7:  ldc.r4     1.
    IL_0cfc:  ldc.r4     0.5
    IL_0d01:  ldc.r4     1.
    IL_0d06:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0d0b:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0d10:  stelem     [Engine]Engine.BoundingBox
    IL_0d15:  dup
    IL_0d16:  ldc.i4.1
    IL_0d17:  ldc.r4     0.0
    IL_0d1c:  ldc.r4     0.5
    IL_0d21:  ldc.r4     0.5
    IL_0d26:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0d2b:  ldc.r4     1.
    IL_0d30:  ldc.r4     1.
    IL_0d35:  ldc.r4     1.
    IL_0d3a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0d3f:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0d44:  stelem     [Engine]Engine.BoundingBox
    IL_0d49:  dup
    IL_0d4a:  ldc.i4.2
    IL_0d4b:  ldc.r4     0.0
    IL_0d50:  ldc.r4     0.5
    IL_0d55:  ldc.r4     0.0
    IL_0d5a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0d5f:  ldc.r4     0.5
    IL_0d64:  ldc.r4     1.
    IL_0d69:  ldc.r4     0.5
    IL_0d6e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0d73:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0d78:  stelem     [Engine]Engine.BoundingBox
    IL_0d7d:  stelem.ref
    IL_0d7e:  ldarg.0
    IL_0d7f:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0d84:  ldc.i4.s   19
    IL_0d86:  ldc.i4.3
    IL_0d87:  newarr     [Engine]Engine.BoundingBox
    IL_0d8c:  dup
    IL_0d8d:  ldc.i4.0
    IL_0d8e:  ldc.r4     0.0
    IL_0d93:  ldc.r4     0.0
    IL_0d98:  ldc.r4     0.0
    IL_0d9d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0da2:  ldc.r4     1.
    IL_0da7:  ldc.r4     0.5
    IL_0dac:  ldc.r4     1.
    IL_0db1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0db6:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0dbb:  stelem     [Engine]Engine.BoundingBox
    IL_0dc0:  dup
    IL_0dc1:  ldc.i4.1
    IL_0dc2:  ldc.r4     0.0
    IL_0dc7:  ldc.r4     0.5
    IL_0dcc:  ldc.r4     0.5
    IL_0dd1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0dd6:  ldc.r4     1.
    IL_0ddb:  ldc.r4     1.
    IL_0de0:  ldc.r4     1.
    IL_0de5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0dea:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0def:  stelem     [Engine]Engine.BoundingBox
    IL_0df4:  dup
    IL_0df5:  ldc.i4.2
    IL_0df6:  ldc.r4     0.5
    IL_0dfb:  ldc.r4     0.5
    IL_0e00:  ldc.r4     0.0
    IL_0e05:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0e0a:  ldc.r4     1.
    IL_0e0f:  ldc.r4     1.
    IL_0e14:  ldc.r4     0.5
    IL_0e19:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0e1e:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0e23:  stelem     [Engine]Engine.BoundingBox
    IL_0e28:  stelem.ref
    IL_0e29:  ldarg.0
    IL_0e2a:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0e2f:  ldc.i4.s   20
    IL_0e31:  ldc.i4.3
    IL_0e32:  newarr     [Engine]Engine.BoundingBox
    IL_0e37:  dup
    IL_0e38:  ldc.i4.0
    IL_0e39:  ldc.r4     0.0
    IL_0e3e:  ldc.r4     0.5
    IL_0e43:  ldc.r4     0.0
    IL_0e48:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0e4d:  ldc.r4     1.
    IL_0e52:  ldc.r4     1.
    IL_0e57:  ldc.r4     1.
    IL_0e5c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0e61:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0e66:  stelem     [Engine]Engine.BoundingBox
    IL_0e6b:  dup
    IL_0e6c:  ldc.i4.1
    IL_0e6d:  ldc.r4     0.0
    IL_0e72:  ldc.r4     0.0
    IL_0e77:  ldc.r4     0.0
    IL_0e7c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0e81:  ldc.r4     1.
    IL_0e86:  ldc.r4     0.5
    IL_0e8b:  ldc.r4     0.5
    IL_0e90:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0e95:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0e9a:  stelem     [Engine]Engine.BoundingBox
    IL_0e9f:  dup
    IL_0ea0:  ldc.i4.2
    IL_0ea1:  ldc.r4     0.5
    IL_0ea6:  ldc.r4     0.0
    IL_0eab:  ldc.r4     0.5
    IL_0eb0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0eb5:  ldc.r4     1.
    IL_0eba:  ldc.r4     0.5
    IL_0ebf:  ldc.r4     1.
    IL_0ec4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0ec9:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0ece:  stelem     [Engine]Engine.BoundingBox
    IL_0ed3:  stelem.ref
    IL_0ed4:  ldarg.0
    IL_0ed5:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0eda:  ldc.i4.s   21
    IL_0edc:  ldc.i4.3
    IL_0edd:  newarr     [Engine]Engine.BoundingBox
    IL_0ee2:  dup
    IL_0ee3:  ldc.i4.0
    IL_0ee4:  ldc.r4     0.0
    IL_0ee9:  ldc.r4     0.5
    IL_0eee:  ldc.r4     0.0
    IL_0ef3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0ef8:  ldc.r4     1.
    IL_0efd:  ldc.r4     1.
    IL_0f02:  ldc.r4     1.
    IL_0f07:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0f0c:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0f11:  stelem     [Engine]Engine.BoundingBox
    IL_0f16:  dup
    IL_0f17:  ldc.i4.1
    IL_0f18:  ldc.r4     0.0
    IL_0f1d:  ldc.r4     0.0
    IL_0f22:  ldc.r4     0.0
    IL_0f27:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0f2c:  ldc.r4     1.
    IL_0f31:  ldc.r4     0.5
    IL_0f36:  ldc.r4     0.5
    IL_0f3b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0f40:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0f45:  stelem     [Engine]Engine.BoundingBox
    IL_0f4a:  dup
    IL_0f4b:  ldc.i4.2
    IL_0f4c:  ldc.r4     0.0
    IL_0f51:  ldc.r4     0.0
    IL_0f56:  ldc.r4     0.5
    IL_0f5b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0f60:  ldc.r4     0.5
    IL_0f65:  ldc.r4     0.5
    IL_0f6a:  ldc.r4     1.
    IL_0f6f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0f74:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0f79:  stelem     [Engine]Engine.BoundingBox
    IL_0f7e:  stelem.ref
    IL_0f7f:  ldarg.0
    IL_0f80:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_0f85:  ldc.i4.s   22
    IL_0f87:  ldc.i4.3
    IL_0f88:  newarr     [Engine]Engine.BoundingBox
    IL_0f8d:  dup
    IL_0f8e:  ldc.i4.0
    IL_0f8f:  ldc.r4     0.0
    IL_0f94:  ldc.r4     0.5
    IL_0f99:  ldc.r4     0.0
    IL_0f9e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0fa3:  ldc.r4     1.
    IL_0fa8:  ldc.r4     1.
    IL_0fad:  ldc.r4     1.
    IL_0fb2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0fb7:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0fbc:  stelem     [Engine]Engine.BoundingBox
    IL_0fc1:  dup
    IL_0fc2:  ldc.i4.1
    IL_0fc3:  ldc.r4     0.0
    IL_0fc8:  ldc.r4     0.0
    IL_0fcd:  ldc.r4     0.5
    IL_0fd2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0fd7:  ldc.r4     1.
    IL_0fdc:  ldc.r4     0.5
    IL_0fe1:  ldc.r4     1.
    IL_0fe6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0feb:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0ff0:  stelem     [Engine]Engine.BoundingBox
    IL_0ff5:  dup
    IL_0ff6:  ldc.i4.2
    IL_0ff7:  ldc.r4     0.0
    IL_0ffc:  ldc.r4     0.0
    IL_1001:  ldc.r4     0.0
    IL_1006:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_100b:  ldc.r4     0.5
    IL_1010:  ldc.r4     0.5
    IL_1015:  ldc.r4     0.5
    IL_101a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_101f:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_1024:  stelem     [Engine]Engine.BoundingBox
    IL_1029:  stelem.ref
    IL_102a:  ldarg.0
    IL_102b:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_1030:  ldc.i4.s   23
    IL_1032:  ldc.i4.3
    IL_1033:  newarr     [Engine]Engine.BoundingBox
    IL_1038:  dup
    IL_1039:  ldc.i4.0
    IL_103a:  ldc.r4     0.0
    IL_103f:  ldc.r4     0.5
    IL_1044:  ldc.r4     0.0
    IL_1049:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_104e:  ldc.r4     1.
    IL_1053:  ldc.r4     1.
    IL_1058:  ldc.r4     1.
    IL_105d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_1062:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_1067:  stelem     [Engine]Engine.BoundingBox
    IL_106c:  dup
    IL_106d:  ldc.i4.1
    IL_106e:  ldc.r4     0.0
    IL_1073:  ldc.r4     0.0
    IL_1078:  ldc.r4     0.5
    IL_107d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_1082:  ldc.r4     1.
    IL_1087:  ldc.r4     0.5
    IL_108c:  ldc.r4     1.
    IL_1091:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_1096:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_109b:  stelem     [Engine]Engine.BoundingBox
    IL_10a0:  dup
    IL_10a1:  ldc.i4.2
    IL_10a2:  ldc.r4     0.5
    IL_10a7:  ldc.r4     0.0
    IL_10ac:  ldc.r4     0.0
    IL_10b1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_10b6:  ldc.r4     1.
    IL_10bb:  ldc.r4     0.5
    IL_10c0:  ldc.r4     0.5
    IL_10c5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_10ca:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_10cf:  stelem     [Engine]Engine.BoundingBox
    IL_10d4:  stelem.ref
    IL_10d5:  ldarg.0
    IL_10d6:  call       instance void Game.Block::Initialize()
    IL_10db:  ret
  } // end of method StairsBlock::Initialize

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 28 47 61 6D 65 2E 53 74 61 69 72 73 42 6C   // ..(Game.StairsBl
                                                                                                                                                      6F 63 6B 2B 3C 47 65 74 43 72 65 61 74 69 76 65   // ock+<GetCreative
                                                                                                                                                      56 61 6C 75 65 73 3E 64 5F 5F 39 00 00 )          // Values>d__9..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.StairsBlock/'<GetCreativeValues>d__9'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.StairsBlock Game.StairsBlock/'<GetCreativeValues>d__9'::'<>4__this'
    IL_000e:  ret
  } // end of method StairsBlock::GetCreativeValues

  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  3
    .locals init (int32 V_0,
             bool V_1,
             valuetype Game.StairsBlock/CornerType V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       bool Game.StairsBlock::GetIsUpsideDown(int32)
    IL_000d:  stloc.1
    IL_000e:  ldarg.1
    IL_000f:  ldc.i4.4
    IL_0010:  bne.un.s   IL_0017

    IL_0012:  ldloc.1
    IL_0013:  ldc.i4.0
    IL_0014:  ceq
    IL_0016:  ret

    IL_0017:  ldarg.1
    IL_0018:  ldc.i4.5
    IL_0019:  bne.un.s   IL_001d

    IL_001b:  ldloc.1
    IL_001c:  ret

    IL_001d:  ldloc.0
    IL_001e:  call       valuetype Game.StairsBlock/CornerType Game.StairsBlock::GetCornerType(int32)
    IL_0023:  stloc.2
    IL_0024:  ldloc.2
    IL_0025:  brtrue.s   IL_003a

    IL_0027:  ldloc.0
    IL_0028:  call       int32 Game.StairsBlock::GetRotation(int32)
    IL_002d:  stloc.3
    IL_002e:  ldarg.1
    IL_002f:  ldloc.3
    IL_0030:  ldc.i4.2
    IL_0031:  add
    IL_0032:  ldc.i4.3
    IL_0033:  and
    IL_0034:  ceq
    IL_0036:  ldc.i4.0
    IL_0037:  ceq
    IL_0039:  ret

    IL_003a:  ldloc.2
    IL_003b:  ldc.i4.1
    IL_003c:  bne.un.s   IL_0040

    IL_003e:  ldc.i4.1
    IL_003f:  ret

    IL_0040:  ldloc.0
    IL_0041:  call       int32 Game.StairsBlock::GetRotation(int32)
    IL_0046:  stloc.s    V_4
    IL_0048:  ldarg.1
    IL_0049:  ldloc.s    V_4
    IL_004b:  ldc.i4.1
    IL_004c:  add
    IL_004d:  ldc.i4.3
    IL_004e:  and
    IL_004f:  beq.s      IL_005e

    IL_0051:  ldarg.1
    IL_0052:  ldloc.s    V_4
    IL_0054:  ldc.i4.2
    IL_0055:  add
    IL_0056:  ldc.i4.3
    IL_0057:  and
    IL_0058:  ceq
    IL_005a:  ldc.i4.0
    IL_005b:  ceq
    IL_005d:  ret

    IL_005e:  ldc.i4.0
    IL_005f:  ret
  } // end of method StairsBlock::IsFaceTransparent

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       131 (0x83)
    .maxstack  10
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.StairsBlock::GetColor(int32)
    IL_000d:  stloc.1
    IL_000e:  ldloca.s   V_1
    IL_0010:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0015:  brfalse.s  IL_0053

    IL_0017:  ldarg.1
    IL_0018:  ldarg.0
    IL_0019:  ldarg.s    x
    IL_001b:  ldarg.s    y
    IL_001d:  ldarg.s    z
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.BlockMesh[] Game.StairsBlock::m_coloredBlockMeshes
    IL_0025:  ldloc.0
    IL_0026:  call       int32 Game.StairsBlock::GetVariant(int32)
    IL_002b:  ldelem.ref
    IL_002c:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0031:  ldloca.s   V_1
    IL_0033:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0038:  ldelem     [Engine]Engine.Color
    IL_003d:  ldloca.s   V_2
    IL_003f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0045:  ldloc.2
    IL_0046:  ldnull
    IL_0047:  ldarg.2
    IL_0048:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_004d:  callvirt   instance void Game.BlockGeometryGenerator::GenerateShadedMeshVertices(class Game.Block,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class Game.BlockMesh,
                                                                                               valuetype [Engine]Engine.Color,
                                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                               int32[],
                                                                                               class Game.TerrainGeometrySubset)
    IL_0052:  ret

    IL_0053:  ldarg.1
    IL_0054:  ldarg.0
    IL_0055:  ldarg.s    x
    IL_0057:  ldarg.s    y
    IL_0059:  ldarg.s    z
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class Game.BlockMesh[] Game.StairsBlock::m_uncoloredBlockMeshes
    IL_0061:  ldloc.0
    IL_0062:  call       int32 Game.StairsBlock::GetVariant(int32)
    IL_0067:  ldelem.ref
    IL_0068:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_006d:  ldloca.s   V_2
    IL_006f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0075:  ldloc.2
    IL_0076:  ldnull
    IL_0077:  ldarg.2
    IL_0078:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_007d:  callvirt   instance void Game.BlockGeometryGenerator::GenerateShadedMeshVertices(class Game.Block,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class Game.BlockMesh,
                                                                                               valuetype [Engine]Engine.Color,
                                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                               int32[],
                                                                                               class Game.TerrainGeometrySubset)
    IL_0082:  ret
  } // end of method StairsBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       241 (0xf1)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             bool V_5,
             int32 V_6,
             valuetype [Engine]Engine.Matrix V_7,
             valuetype Game.BlockPlacementData V_8)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0015:  stloc.s    V_7
    IL_0017:  ldloca.s   V_7
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
    IL_00a8:  ldc.i4.5
    IL_00a9:  ceq
    IL_00ab:  stloc.s    V_5
    IL_00ad:  ldarg.3
    IL_00ae:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_00b3:  stloc.s    V_6
    IL_00b5:  ldloca.s   V_8
    IL_00b7:  initobj    Game.BlockPlacementData
    IL_00bd:  ldloca.s   V_8
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      int32 Game.Block::BlockIndex
    IL_00c5:  ldc.i4.0
    IL_00c6:  ldloc.s    V_6
    IL_00c8:  ldloc.s    V_4
    IL_00ca:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_00cf:  ldloc.s    V_5
    IL_00d1:  call       int32 Game.StairsBlock::SetIsUpsideDown(int32,
                                                                 bool)
    IL_00d6:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_00db:  stfld      int32 Game.BlockPlacementData::Value
    IL_00e0:  ldloca.s   V_8
    IL_00e2:  ldarg.s    raycastResult
    IL_00e4:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00e9:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_00ee:  ldloc.s    V_8
    IL_00f0:  ret
  } // end of method StairsBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.StairsBlock::m_collisionBoxes
    IL_000d:  ldloc.0
    IL_000e:  call       int32 Game.StairsBlock::GetVariant(int32)
    IL_0013:  ldelem.ref
    IL_0014:  ret
  } // end of method StairsBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.StairsBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brfalse.s  IL_0038

    IL_0015:  ldarg.1
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.BlockMesh Game.StairsBlock::m_standaloneColoredBlockMesh
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
    IL_003a:  ldfld      class Game.BlockMesh Game.StairsBlock::m_standaloneUncoloredBlockMesh
    IL_003f:  ldarg.3
    IL_0040:  ldarg.s    matrix
    IL_0042:  ldarg.s    environmentData
    IL_0044:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0049:  ret
  } // end of method StairsBlock::DrawBlock

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.StairsBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brtrue.s   IL_001e

    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  call       instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_001d:  ret

    IL_001e:  ldsfld     string[] Game.PaintBucketBlock::ColorDisplayNames
    IL_0023:  ldloca.s   V_0
    IL_0025:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_002a:  ldelem.ref
    IL_002b:  ldstr      " "
    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  ldarg.2
    IL_0033:  call       instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0038:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_003d:  ret
  } // end of method StairsBlock::GetDisplayName

  .method public hidebysig virtual instance string 
          GetCategory(int32 'value') cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.StairsBlock::GetColor(int32)
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
  } // end of method StairsBlock::GetCategory

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.BlockDropValue V_3)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldc.i4.1
    IL_0003:  stind.i1
    IL_0004:  ldarg.2
    IL_0005:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_000a:  stloc.0
    IL_000b:  ldc.i4.0
    IL_000c:  ldloc.0
    IL_000d:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.StairsBlock::GetColor(int32)
    IL_0012:  call       int32 Game.StairsBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0017:  stloc.1
    IL_0018:  ldarg.0
    IL_0019:  ldfld      int32 Game.Block::BlockIndex
    IL_001e:  ldc.i4.0
    IL_001f:  ldloc.1
    IL_0020:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0025:  stloc.2
    IL_0026:  ldarg.s    dropValues
    IL_0028:  ldloca.s   V_3
    IL_002a:  initobj    Game.BlockDropValue
    IL_0030:  ldloca.s   V_3
    IL_0032:  ldloc.2
    IL_0033:  stfld      int32 Game.BlockDropValue::Value
    IL_0038:  ldloca.s   V_3
    IL_003a:  ldc.i4.1
    IL_003b:  stfld      int32 Game.BlockDropValue::Count
    IL_0040:  ldloc.3
    IL_0041:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0046:  ret
  } // end of method StairsBlock::GetDropValues

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain terrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  8
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.StairsBlock::GetColor(int32)
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
    IL_0031:  ldfld      int32 Game.StairsBlock::m_coloredTextureSlot
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
    IL_004c:  ldc.i4.0
    IL_004d:  ldarg.3
    IL_004e:  call       instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0053:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0058:  ret
  } // end of method StairsBlock::CreateDebrisParticleSystem

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.StairsBlock::GetColor(int32)
    IL_000b:  ret
  } // end of method StairsBlock::GetPaintColor

  .method public hidebysig newslot virtual final 
          instance int32  Paint(class Game.SubsystemTerrain terrain,
                                int32 'value',
                                valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.Block::BlockIndex
    IL_0006:  ldc.i4.0
    IL_0007:  ldarg.2
    IL_0008:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_000d:  ldarg.3
    IL_000e:  call       int32 Game.StairsBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0013:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0018:  ret
  } // end of method StairsBlock::Paint

  .method public hidebysig static valuetype [Engine]Engine.Point3 
          RotationToDirection(int32 rotation) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  add
    IL_0003:  ldc.i4.4
    IL_0004:  rem
    IL_0005:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_000a:  ret
  } // end of method StairsBlock::RotationToDirection

  .method public hidebysig static int32  GetRotation(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method StairsBlock::GetRotation

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
  } // end of method StairsBlock::SetRotation

  .method public hidebysig static bool  GetIsUpsideDown(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method StairsBlock::GetIsUpsideDown

  .method public hidebysig static int32  SetIsUpsideDown(int32 data,
                                                         bool isUpsideDown) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_0007

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.4
    IL_0005:  or
    IL_0006:  ret

    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.s   -5
    IL_000a:  and
    IL_000b:  ret
  } // end of method StairsBlock::SetIsUpsideDown

  .method public hidebysig static valuetype Game.StairsBlock/CornerType 
          GetCornerType(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  shr
    IL_0003:  ldc.i4.3
    IL_0004:  and
    IL_0005:  ret
  } // end of method StairsBlock::GetCornerType

  .method public hidebysig static int32  SetCornerType(int32 data,
                                                       valuetype Game.StairsBlock/CornerType cornerType) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -25
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.3
    IL_0006:  and
    IL_0007:  ldc.i4.3
    IL_0008:  shl
    IL_0009:  or
    IL_000a:  ret
  } // end of method StairsBlock::SetCornerType

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<int32> 
          GetColor(int32 data) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   32
    IL_0003:  and
    IL_0004:  brfalse.s  IL_0012

    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.6
    IL_0008:  shr
    IL_0009:  ldc.i4.s   15
    IL_000b:  and
    IL_000c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0011:  ret

    IL_0012:  ldloca.s   V_0
    IL_0014:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_001a:  ldloc.0
    IL_001b:  ret
  } // end of method StairsBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarga.s   color
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_0021

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4     0xfffffc1f
    IL_000f:  and
    IL_0010:  ldc.i4.s   32
    IL_0012:  or
    IL_0013:  ldarga.s   color
    IL_0015:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_001a:  ldc.i4.s   15
    IL_001c:  and
    IL_001d:  ldc.i4.6
    IL_001e:  shl
    IL_001f:  or
    IL_0020:  ret

    IL_0021:  ldarg.0
    IL_0022:  ldc.i4     0xfffffc1f
    IL_0027:  and
    IL_0028:  ret
  } // end of method StairsBlock::SetColor

  .method public hidebysig static int32  GetVariant(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   31
    IL_0003:  and
    IL_0004:  ret
  } // end of method StairsBlock::GetVariant

} // end of class Game.StairsBlock