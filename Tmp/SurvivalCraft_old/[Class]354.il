.class public auto ansi beforefieldinit Game.ArrowBlock
       extends Game.Block
{
  .class auto ansi sealed nested public ArrowType
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.ArrowBlock/ArrowType WoodenArrow = int32(0x00000000)
    .field public static literal valuetype Game.ArrowBlock/ArrowType StoneArrow = int32(0x00000001)
    .field public static literal valuetype Game.ArrowBlock/ArrowType IronArrow = int32(0x00000002)
    .field public static literal valuetype Game.ArrowBlock/ArrowType DiamondArrow = int32(0x00000003)
    .field public static literal valuetype Game.ArrowBlock/ArrowType FireArrow = int32(0x00000004)
    .field public static literal valuetype Game.ArrowBlock/ArrowType IronBolt = int32(0x00000005)
    .field public static literal valuetype Game.ArrowBlock/ArrowType DiamondBolt = int32(0x00000006)
    .field public static literal valuetype Game.ArrowBlock/ArrowType ExplosiveBolt = int32(0x00000007)
    .field public static literal valuetype Game.ArrowBlock/ArrowType CopperArrow = int32(0x00000008)
  } // end of class ArrowType

  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__21'
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
      IL_0008:  stfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__21'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__21'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       116 (0x74)
      .maxstack  6
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0010

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq.s      IL_004c

      IL_000e:  ldc.i4.0
      IL_000f:  ret

      IL_0010:  ldarg.0
      IL_0011:  ldc.i4.m1
      IL_0012:  stfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>1__state'
      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<i>5__1'
      IL_001e:  br.s       IL_0063

      IL_0020:  ldarg.0
      IL_0021:  ldc.i4     0xc0
      IL_0026:  ldc.i4.0
      IL_0027:  ldc.i4.0
      IL_0028:  ldsfld     int32[] Game.ArrowBlock::m_order
      IL_002d:  ldarg.0
      IL_002e:  ldfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<i>5__1'
      IL_0033:  ldelem.i4
      IL_0034:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                               valuetype Game.ArrowBlock/ArrowType)
      IL_0039:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_003e:  stfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>2__current'
      IL_0043:  ldarg.0
      IL_0044:  ldc.i4.1
      IL_0045:  stfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>1__state'
      IL_004a:  ldc.i4.1
      IL_004b:  ret

      IL_004c:  ldarg.0
      IL_004d:  ldc.i4.m1
      IL_004e:  stfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>1__state'
      IL_0053:  ldarg.0
      IL_0054:  ldfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<i>5__1'
      IL_0059:  ldc.i4.1
      IL_005a:  add
      IL_005b:  stloc.1
      IL_005c:  ldarg.0
      IL_005d:  ldloc.1
      IL_005e:  stfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<i>5__1'
      IL_0063:  ldarg.0
      IL_0064:  ldfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<i>5__1'
      IL_0069:  ldsfld     int32[] Game.ArrowBlock::m_order
      IL_006e:  ldlen
      IL_006f:  conv.i4
      IL_0070:  blt.s      IL_0020

      IL_0072:  ldc.i4.0
      IL_0073:  ret
    } // end of method '<GetCreativeValues>d__21'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__21'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__21'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__21'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.ArrowBlock/'<GetCreativeValues>d__21' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.ArrowBlock/'<GetCreativeValues>d__21'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__21'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.ArrowBlock/'<GetCreativeValues>d__21'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__21'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.ArrowBlock/'<GetCreativeValues>d__21'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__21'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.ArrowBlock/'<GetCreativeValues>d__21'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__21'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__21'

  .field public static literal int32 Index = int32(0x000000C0)
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.BlockMesh> m_standaloneBlockMeshes
  .field public static int32[] m_order
  .field private static string[] m_tipNames
  .field private static int32[] m_tipTextureSlots
  .field private static string[] m_shaftNames
  .field private static int32[] m_shaftTextureSlots
  .field private static string[] m_stabilizerNames
  .field private static int32[] m_stabilizerTextureSlots
  .field private static string[] m_displayNames
  .field private static float32[] m_offsets
  .field private static float32[] m_weaponPowers
  .field private static float32[] m_iconViewScales
  .field private static float32[] m_explosionPressures
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       612 (0x264)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> V_1,
             int32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [Engine]Engine.Matrix V_5,
             class Game.BlockMesh V_6,
             class Game.BlockMesh V_7,
             class Game.BlockMesh V_8,
             class Game.BlockMesh V_9,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_10)
    IL_0000:  ldstr      "Models/Arrows"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldtoken    Game.ArrowBlock/ArrowType
    IL_0010:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0015:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_001a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
    IL_001f:  stloc.1
    .try
    {
      IL_0020:  br         IL_0246

      IL_0025:  ldloc.1
      IL_0026:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      IL_002b:  stloc.2
      IL_002c:  ldloc.2
      IL_002d:  ldc.i4.s   15
      IL_002f:  ble.s      IL_003c

      IL_0031:  ldstr      "Too many arrow types."
      IL_0036:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_003b:  throw

      IL_003c:  ldloc.0
      IL_003d:  ldsfld     string[] Game.ArrowBlock::m_shaftNames
      IL_0042:  ldloc.2
      IL_0043:  ldelem.ref
      IL_0044:  ldc.i4.1
      IL_0045:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                    bool)
      IL_004a:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_004f:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
      IL_0054:  stloc.3
      IL_0055:  ldloc.0
      IL_0056:  ldsfld     string[] Game.ArrowBlock::m_stabilizerNames
      IL_005b:  ldloc.2
      IL_005c:  ldelem.ref
      IL_005d:  ldc.i4.1
      IL_005e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                    bool)
      IL_0063:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_0068:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
      IL_006d:  stloc.s    V_4
      IL_006f:  ldloc.0
      IL_0070:  ldsfld     string[] Game.ArrowBlock::m_tipNames
      IL_0075:  ldloc.2
      IL_0076:  ldelem.ref
      IL_0077:  ldc.i4.1
      IL_0078:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                    bool)
      IL_007d:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_0082:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
      IL_0087:  stloc.s    V_5
      IL_0089:  newobj     instance void Game.BlockMesh::.ctor()
      IL_008e:  stloc.s    V_6
      IL_0090:  ldloc.s    V_6
      IL_0092:  ldloc.0
      IL_0093:  ldsfld     string[] Game.ArrowBlock::m_tipNames
      IL_0098:  ldloc.2
      IL_0099:  ldelem.ref
      IL_009a:  ldc.i4.1
      IL_009b:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                    bool)
      IL_00a0:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_00a5:  stloc.s    V_10
      IL_00a7:  ldloca.s   V_10
      IL_00a9:  ldc.i4.0
      IL_00aa:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
      IL_00af:  ldloc.s    V_5
      IL_00b1:  ldc.r4     0.0
      IL_00b6:  ldsfld     float32[] Game.ArrowBlock::m_offsets
      IL_00bb:  ldloc.2
      IL_00bc:  ldelem.r4
      IL_00bd:  ldc.r4     0.0
      IL_00c2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                    float32,
                                                                                                    float32)
      IL_00c7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_00cc:  ldc.i4.0
      IL_00cd:  ldc.i4.0
      IL_00ce:  ldc.i4.0
      IL_00cf:  ldc.i4.0
      IL_00d0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_00d5:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                             valuetype [Engine]Engine.Matrix,
                                                                             bool,
                                                                             bool,
                                                                             bool,
                                                                             bool,
                                                                             valuetype [Engine]Engine.Color)
      IL_00da:  ldloc.s    V_6
      IL_00dc:  ldsfld     int32[] Game.ArrowBlock::m_tipTextureSlots
      IL_00e1:  ldloc.2
      IL_00e2:  ldelem.i4
      IL_00e3:  ldc.i4.s   16
      IL_00e5:  rem
      IL_00e6:  conv.r4
      IL_00e7:  ldc.r4     16.
      IL_00ec:  div
      IL_00ed:  ldsfld     int32[] Game.ArrowBlock::m_tipTextureSlots
      IL_00f2:  ldloc.2
      IL_00f3:  ldelem.i4
      IL_00f4:  ldc.i4.s   16
      IL_00f6:  div
      IL_00f7:  conv.r4
      IL_00f8:  ldc.r4     16.
      IL_00fd:  div
      IL_00fe:  ldc.r4     0.0
      IL_0103:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                    float32,
                                                                                                    float32)
      IL_0108:  ldc.i4.m1
      IL_0109:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                     int32)
      IL_010e:  newobj     instance void Game.BlockMesh::.ctor()
      IL_0113:  stloc.s    V_7
      IL_0115:  ldloc.s    V_7
      IL_0117:  ldloc.0
      IL_0118:  ldsfld     string[] Game.ArrowBlock::m_shaftNames
      IL_011d:  ldloc.2
      IL_011e:  ldelem.ref
      IL_011f:  ldc.i4.1
      IL_0120:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                    bool)
      IL_0125:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_012a:  stloc.s    V_10
      IL_012c:  ldloca.s   V_10
      IL_012e:  ldc.i4.0
      IL_012f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
      IL_0134:  ldloc.3
      IL_0135:  ldc.r4     0.0
      IL_013a:  ldsfld     float32[] Game.ArrowBlock::m_offsets
      IL_013f:  ldloc.2
      IL_0140:  ldelem.r4
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
      IL_015e:  ldloc.s    V_7
      IL_0160:  ldsfld     int32[] Game.ArrowBlock::m_shaftTextureSlots
      IL_0165:  ldloc.2
      IL_0166:  ldelem.i4
      IL_0167:  ldc.i4.s   16
      IL_0169:  rem
      IL_016a:  conv.r4
      IL_016b:  ldc.r4     16.
      IL_0170:  div
      IL_0171:  ldsfld     int32[] Game.ArrowBlock::m_shaftTextureSlots
      IL_0176:  ldloc.2
      IL_0177:  ldelem.i4
      IL_0178:  ldc.i4.s   16
      IL_017a:  div
      IL_017b:  conv.r4
      IL_017c:  ldc.r4     16.
      IL_0181:  div
      IL_0182:  ldc.r4     0.0
      IL_0187:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                    float32,
                                                                                                    float32)
      IL_018c:  ldc.i4.m1
      IL_018d:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                     int32)
      IL_0192:  newobj     instance void Game.BlockMesh::.ctor()
      IL_0197:  stloc.s    V_8
      IL_0199:  ldloc.s    V_8
      IL_019b:  ldloc.0
      IL_019c:  ldsfld     string[] Game.ArrowBlock::m_stabilizerNames
      IL_01a1:  ldloc.2
      IL_01a2:  ldelem.ref
      IL_01a3:  ldc.i4.1
      IL_01a4:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                    bool)
      IL_01a9:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_01ae:  stloc.s    V_10
      IL_01b0:  ldloca.s   V_10
      IL_01b2:  ldc.i4.0
      IL_01b3:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
      IL_01b8:  ldloc.s    V_4
      IL_01ba:  ldc.r4     0.0
      IL_01bf:  ldsfld     float32[] Game.ArrowBlock::m_offsets
      IL_01c4:  ldloc.2
      IL_01c5:  ldelem.r4
      IL_01c6:  ldc.r4     0.0
      IL_01cb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                    float32,
                                                                                                    float32)
      IL_01d0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_01d5:  ldc.i4.0
      IL_01d6:  ldc.i4.0
      IL_01d7:  ldc.i4.1
      IL_01d8:  ldc.i4.0
      IL_01d9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_01de:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                             valuetype [Engine]Engine.Matrix,
                                                                             bool,
                                                                             bool,
                                                                             bool,
                                                                             bool,
                                                                             valuetype [Engine]Engine.Color)
      IL_01e3:  ldloc.s    V_8
      IL_01e5:  ldsfld     int32[] Game.ArrowBlock::m_stabilizerTextureSlots
      IL_01ea:  ldloc.2
      IL_01eb:  ldelem.i4
      IL_01ec:  ldc.i4.s   16
      IL_01ee:  rem
      IL_01ef:  conv.r4
      IL_01f0:  ldc.r4     16.
      IL_01f5:  div
      IL_01f6:  ldsfld     int32[] Game.ArrowBlock::m_stabilizerTextureSlots
      IL_01fb:  ldloc.2
      IL_01fc:  ldelem.i4
      IL_01fd:  ldc.i4.s   16
      IL_01ff:  div
      IL_0200:  conv.r4
      IL_0201:  ldc.r4     16.
      IL_0206:  div
      IL_0207:  ldc.r4     0.0
      IL_020c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                    float32,
                                                                                                    float32)
      IL_0211:  ldc.i4.m1
      IL_0212:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                     int32)
      IL_0217:  newobj     instance void Game.BlockMesh::.ctor()
      IL_021c:  stloc.s    V_9
      IL_021e:  ldloc.s    V_9
      IL_0220:  ldloc.s    V_6
      IL_0222:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
      IL_0227:  ldloc.s    V_9
      IL_0229:  ldloc.s    V_7
      IL_022b:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
      IL_0230:  ldloc.s    V_9
      IL_0232:  ldloc.s    V_8
      IL_0234:  callvirt   instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
      IL_0239:  ldarg.0
      IL_023a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.BlockMesh> Game.ArrowBlock::m_standaloneBlockMeshes
      IL_023f:  ldloc.s    V_9
      IL_0241:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.BlockMesh>::Add(!0)
      IL_0246:  ldloc.1
      IL_0247:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_024c:  brtrue     IL_0025

      IL_0251:  leave.s    IL_025d

    }  // end .try
    finally
    {
      IL_0253:  ldloc.1
      IL_0254:  brfalse.s  IL_025c

      IL_0256:  ldloc.1
      IL_0257:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_025c:  endfinally
    }  // end handler
    IL_025d:  ldarg.0
    IL_025e:  call       instance void Game.Block::Initialize()
    IL_0263:  ret
  } // end of method ArrowBlock::Initialize

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
  } // end of method ArrowBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_003b

    IL_0010:  ldloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.BlockMesh> Game.ArrowBlock::m_standaloneBlockMeshes
    IL_0017:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.BlockMesh>::get_Count()
    IL_001c:  bge.s      IL_003b

    IL_001e:  ldarg.1
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.BlockMesh> Game.ArrowBlock::m_standaloneBlockMeshes
    IL_0025:  ldloc.0
    IL_0026:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.BlockMesh>::get_Item(int32)
    IL_002b:  ldc.r4     2.
    IL_0030:  ldarg.3
    IL_0031:  mul
    IL_0032:  ldarg.s    matrix
    IL_0034:  ldarg.s    environmentData
    IL_0036:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_003b:  ret
  } // end of method ArrowBlock::DrawBlock

  .method public hidebysig virtual instance float32 
          GetProjectilePower(int32 'value') cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001a

    IL_0010:  ldloc.0
    IL_0011:  ldsfld     float32[] Game.ArrowBlock::m_weaponPowers
    IL_0016:  ldlen
    IL_0017:  conv.i4
    IL_0018:  blt.s      IL_0020

    IL_001a:  ldc.r4     0.0
    IL_001f:  ret

    IL_0020:  ldsfld     float32[] Game.ArrowBlock::m_weaponPowers
    IL_0025:  ldloc.0
    IL_0026:  ldelem.r4
    IL_0027:  ret
  } // end of method ArrowBlock::GetProjectilePower

  .method public hidebysig virtual instance float32 
          GetExplosionPressure(int32 'value') cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001a

    IL_0010:  ldloc.0
    IL_0011:  ldsfld     float32[] Game.ArrowBlock::m_explosionPressures
    IL_0016:  ldlen
    IL_0017:  conv.i4
    IL_0018:  blt.s      IL_0020

    IL_001a:  ldc.r4     0.0
    IL_001f:  ret

    IL_0020:  ldsfld     float32[] Game.ArrowBlock::m_explosionPressures
    IL_0025:  ldloc.0
    IL_0026:  ldelem.r4
    IL_0027:  ret
  } // end of method ArrowBlock::GetExplosionPressure

  .method public hidebysig virtual instance float32 
          GetIconViewScale(int32 'value',
                           class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001a

    IL_0010:  ldloc.0
    IL_0011:  ldsfld     float32[] Game.ArrowBlock::m_iconViewScales
    IL_0016:  ldlen
    IL_0017:  conv.i4
    IL_0018:  blt.s      IL_0020

    IL_001a:  ldc.r4     1.
    IL_001f:  ret

    IL_0020:  ldsfld     float32[] Game.ArrowBlock::m_iconViewScales
    IL_0025:  ldloc.0
    IL_0026:  ldelem.r4
    IL_0027:  ret
  } // end of method ArrowBlock::GetIconViewScale

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 28 47 61 6D 65 2E 41 72 72 6F 77 42 6C 6F   // ..(Game.ArrowBlo
                                                                                                                                                      63 6B 2B 3C 47 65 74 43 72 65 61 74 69 76 65 56   // ck+<GetCreativeV
                                                                                                                                                      61 6C 75 65 73 3E 64 5F 5F 32 31 00 00 )          // alues>d__21..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.ArrowBlock/'<GetCreativeValues>d__21'::.ctor(int32)
    IL_0007:  ret
  } // end of method ArrowBlock::GetCreativeValues

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001a

    IL_0010:  ldloc.0
    IL_0011:  ldsfld     string[] Game.ArrowBlock::m_displayNames
    IL_0016:  ldlen
    IL_0017:  conv.i4
    IL_0018:  blt.s      IL_0020

    IL_001a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001f:  ret

    IL_0020:  ldsfld     string[] Game.ArrowBlock::m_displayNames
    IL_0025:  ldloc.0
    IL_0026:  ldelem.ref
    IL_0027:  ret
  } // end of method ArrowBlock::GetDisplayName

  .method public hidebysig static valuetype Game.ArrowBlock/ArrowType 
          GetArrowType(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   15
    IL_0003:  and
    IL_0004:  ret
  } // end of method ArrowBlock::GetArrowType

  .method public hidebysig static int32  SetArrowType(int32 data,
                                                      valuetype Game.ArrowBlock/ArrowType arrowType) cil managed
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
  } // end of method ArrowBlock::SetArrowType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.BlockMesh>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.BlockMesh> Game.ArrowBlock::m_standaloneBlockMeshes
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Block::.ctor()
    IL_0011:  ret
  } // end of method ArrowBlock::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       518 (0x206)
    .maxstack  4
    IL_0000:  ldc.i4.s   9
    IL_0002:  newarr     [System.Runtime]System.Int32
    IL_0007:  dup
    IL_0008:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=36' '<PrivateImplementationDetails>'::FCDE77B83A7C8E501771BF5D41968E70A3FDB2A1
    IL_000d:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0012:  stsfld     int32[] Game.ArrowBlock::m_order
    IL_0017:  ldc.i4.s   9
    IL_0019:  newarr     [System.Runtime]System.String
    IL_001e:  dup
    IL_001f:  ldc.i4.0
    IL_0020:  ldstr      "ArrowTip"
    IL_0025:  stelem.ref
    IL_0026:  dup
    IL_0027:  ldc.i4.1
    IL_0028:  ldstr      "ArrowTip"
    IL_002d:  stelem.ref
    IL_002e:  dup
    IL_002f:  ldc.i4.2
    IL_0030:  ldstr      "ArrowTip"
    IL_0035:  stelem.ref
    IL_0036:  dup
    IL_0037:  ldc.i4.3
    IL_0038:  ldstr      "ArrowTip"
    IL_003d:  stelem.ref
    IL_003e:  dup
    IL_003f:  ldc.i4.4
    IL_0040:  ldstr      "ArrowFireTip"
    IL_0045:  stelem.ref
    IL_0046:  dup
    IL_0047:  ldc.i4.5
    IL_0048:  ldstr      "BoltTip"
    IL_004d:  stelem.ref
    IL_004e:  dup
    IL_004f:  ldc.i4.6
    IL_0050:  ldstr      "BoltTip"
    IL_0055:  stelem.ref
    IL_0056:  dup
    IL_0057:  ldc.i4.7
    IL_0058:  ldstr      "BoltExplosiveTip"
    IL_005d:  stelem.ref
    IL_005e:  dup
    IL_005f:  ldc.i4.8
    IL_0060:  ldstr      "ArrowTip"
    IL_0065:  stelem.ref
    IL_0066:  stsfld     string[] Game.ArrowBlock::m_tipNames
    IL_006b:  ldc.i4.s   9
    IL_006d:  newarr     [System.Runtime]System.Int32
    IL_0072:  dup
    IL_0073:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=36' '<PrivateImplementationDetails>'::BDA039AE3DFF39F43A5688397E1E07FFBD2D797F
    IL_0078:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_007d:  stsfld     int32[] Game.ArrowBlock::m_tipTextureSlots
    IL_0082:  ldc.i4.s   9
    IL_0084:  newarr     [System.Runtime]System.String
    IL_0089:  dup
    IL_008a:  ldc.i4.0
    IL_008b:  ldstr      "ArrowShaft"
    IL_0090:  stelem.ref
    IL_0091:  dup
    IL_0092:  ldc.i4.1
    IL_0093:  ldstr      "ArrowShaft"
    IL_0098:  stelem.ref
    IL_0099:  dup
    IL_009a:  ldc.i4.2
    IL_009b:  ldstr      "ArrowShaft"
    IL_00a0:  stelem.ref
    IL_00a1:  dup
    IL_00a2:  ldc.i4.3
    IL_00a3:  ldstr      "ArrowShaft"
    IL_00a8:  stelem.ref
    IL_00a9:  dup
    IL_00aa:  ldc.i4.4
    IL_00ab:  ldstr      "ArrowShaft"
    IL_00b0:  stelem.ref
    IL_00b1:  dup
    IL_00b2:  ldc.i4.5
    IL_00b3:  ldstr      "BoltShaft"
    IL_00b8:  stelem.ref
    IL_00b9:  dup
    IL_00ba:  ldc.i4.6
    IL_00bb:  ldstr      "BoltShaft"
    IL_00c0:  stelem.ref
    IL_00c1:  dup
    IL_00c2:  ldc.i4.7
    IL_00c3:  ldstr      "BoltShaft"
    IL_00c8:  stelem.ref
    IL_00c9:  dup
    IL_00ca:  ldc.i4.8
    IL_00cb:  ldstr      "ArrowShaft"
    IL_00d0:  stelem.ref
    IL_00d1:  stsfld     string[] Game.ArrowBlock::m_shaftNames
    IL_00d6:  ldc.i4.s   9
    IL_00d8:  newarr     [System.Runtime]System.Int32
    IL_00dd:  dup
    IL_00de:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=36' '<PrivateImplementationDetails>'::C76B25AD88B7742D4423205061D53A2786CB1545
    IL_00e3:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_00e8:  stsfld     int32[] Game.ArrowBlock::m_shaftTextureSlots
    IL_00ed:  ldc.i4.s   9
    IL_00ef:  newarr     [System.Runtime]System.String
    IL_00f4:  dup
    IL_00f5:  ldc.i4.0
    IL_00f6:  ldstr      "ArrowStabilizer"
    IL_00fb:  stelem.ref
    IL_00fc:  dup
    IL_00fd:  ldc.i4.1
    IL_00fe:  ldstr      "ArrowStabilizer"
    IL_0103:  stelem.ref
    IL_0104:  dup
    IL_0105:  ldc.i4.2
    IL_0106:  ldstr      "ArrowStabilizer"
    IL_010b:  stelem.ref
    IL_010c:  dup
    IL_010d:  ldc.i4.3
    IL_010e:  ldstr      "ArrowStabilizer"
    IL_0113:  stelem.ref
    IL_0114:  dup
    IL_0115:  ldc.i4.4
    IL_0116:  ldstr      "ArrowStabilizer"
    IL_011b:  stelem.ref
    IL_011c:  dup
    IL_011d:  ldc.i4.5
    IL_011e:  ldstr      "BoltStabilizer"
    IL_0123:  stelem.ref
    IL_0124:  dup
    IL_0125:  ldc.i4.6
    IL_0126:  ldstr      "BoltStabilizer"
    IL_012b:  stelem.ref
    IL_012c:  dup
    IL_012d:  ldc.i4.7
    IL_012e:  ldstr      "BoltStabilizer"
    IL_0133:  stelem.ref
    IL_0134:  dup
    IL_0135:  ldc.i4.8
    IL_0136:  ldstr      "ArrowStabilizer"
    IL_013b:  stelem.ref
    IL_013c:  stsfld     string[] Game.ArrowBlock::m_stabilizerNames
    IL_0141:  ldc.i4.s   9
    IL_0143:  newarr     [System.Runtime]System.Int32
    IL_0148:  dup
    IL_0149:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=36' '<PrivateImplementationDetails>'::A4A0089DC15ECF5E5A949335D4CD74FEBD5CE6D6
    IL_014e:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0153:  stsfld     int32[] Game.ArrowBlock::m_stabilizerTextureSlots
    IL_0158:  ldc.i4.s   9
    IL_015a:  newarr     [System.Runtime]System.String
    IL_015f:  dup
    IL_0160:  ldc.i4.0
    IL_0161:  ldstr      "Wooden Tip Arrow"
    IL_0166:  stelem.ref
    IL_0167:  dup
    IL_0168:  ldc.i4.1
    IL_0169:  ldstr      "Stone Tip Arrow"
    IL_016e:  stelem.ref
    IL_016f:  dup
    IL_0170:  ldc.i4.2
    IL_0171:  ldstr      "Iron Tip Arrow"
    IL_0176:  stelem.ref
    IL_0177:  dup
    IL_0178:  ldc.i4.3
    IL_0179:  ldstr      "Diamond Tip Arrow"
    IL_017e:  stelem.ref
    IL_017f:  dup
    IL_0180:  ldc.i4.4
    IL_0181:  ldstr      "Fire Arrow"
    IL_0186:  stelem.ref
    IL_0187:  dup
    IL_0188:  ldc.i4.5
    IL_0189:  ldstr      "Iron Bolt"
    IL_018e:  stelem.ref
    IL_018f:  dup
    IL_0190:  ldc.i4.6
    IL_0191:  ldstr      "Diamond Tip Iron Bolt"
    IL_0196:  stelem.ref
    IL_0197:  dup
    IL_0198:  ldc.i4.7
    IL_0199:  ldstr      "Explosive Bolt"
    IL_019e:  stelem.ref
    IL_019f:  dup
    IL_01a0:  ldc.i4.8
    IL_01a1:  ldstr      "Copper Tip Arrow"
    IL_01a6:  stelem.ref
    IL_01a7:  stsfld     string[] Game.ArrowBlock::m_displayNames
    IL_01ac:  ldc.i4.s   9
    IL_01ae:  newarr     [System.Runtime]System.Single
    IL_01b3:  dup
    IL_01b4:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=36' '<PrivateImplementationDetails>'::'5D73CD847A4ED6FF7EBEB2942700FA313384BB07'
    IL_01b9:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_01be:  stsfld     float32[] Game.ArrowBlock::m_offsets
    IL_01c3:  ldc.i4.s   9
    IL_01c5:  newarr     [System.Runtime]System.Single
    IL_01ca:  dup
    IL_01cb:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=36' '<PrivateImplementationDetails>'::'0E2792038EA2D4856D9B8F3A02459D8E8627DE75'
    IL_01d0:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_01d5:  stsfld     float32[] Game.ArrowBlock::m_weaponPowers
    IL_01da:  ldc.i4.s   9
    IL_01dc:  newarr     [System.Runtime]System.Single
    IL_01e1:  dup
    IL_01e2:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=36' '<PrivateImplementationDetails>'::'9F699B45E1D11BB74BDC4E998D6AC9D3CC5D0884'
    IL_01e7:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_01ec:  stsfld     float32[] Game.ArrowBlock::m_iconViewScales
    IL_01f1:  ldc.i4.s   9
    IL_01f3:  newarr     [System.Runtime]System.Single
    IL_01f8:  dup
    IL_01f9:  ldc.i4.7
    IL_01fa:  ldc.r4     40.
    IL_01ff:  stelem.r4
    IL_0200:  stsfld     float32[] Game.ArrowBlock::m_explosionPressures
    IL_0205:  ret
  } // end of method ArrowBlock::.cctor

} // end of class Game.ArrowBlock