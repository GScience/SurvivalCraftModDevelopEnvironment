.class public auto ansi beforefieldinit Game.PistonBlock
       extends Game.Block
       implements Game.IElectricElementBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__10'
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
      IL_0008:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__10'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__10'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       178 (0xb2)
      .maxstack  5
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  switch     ( 
                            IL_001f,
                            IL_004d,
                            IL_007b,
                            IL_00a9)
      IL_001d:  ldc.i4.0
      IL_001e:  ret

      IL_001f:  ldarg.0
      IL_0020:  ldc.i4.m1
      IL_0021:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0026:  ldarg.0
      IL_0027:  ldc.i4     0xed
      IL_002c:  ldc.i4.0
      IL_002d:  ldc.i4.0
      IL_002e:  ldc.i4.7
      IL_002f:  call       int32 Game.PistonBlock::SetMaxExtension(int32,
                                                                   int32)
      IL_0034:  ldc.i4.0
      IL_0035:  call       int32 Game.PistonBlock::SetMode(int32,
                                                           valuetype Game.PistonMode)
      IL_003a:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_003f:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>2__current'
      IL_0044:  ldarg.0
      IL_0045:  ldc.i4.1
      IL_0046:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_004b:  ldc.i4.1
      IL_004c:  ret

      IL_004d:  ldarg.0
      IL_004e:  ldc.i4.m1
      IL_004f:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0054:  ldarg.0
      IL_0055:  ldc.i4     0xed
      IL_005a:  ldc.i4.0
      IL_005b:  ldc.i4.0
      IL_005c:  ldc.i4.7
      IL_005d:  call       int32 Game.PistonBlock::SetMaxExtension(int32,
                                                                   int32)
      IL_0062:  ldc.i4.1
      IL_0063:  call       int32 Game.PistonBlock::SetMode(int32,
                                                           valuetype Game.PistonMode)
      IL_0068:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_006d:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>2__current'
      IL_0072:  ldarg.0
      IL_0073:  ldc.i4.2
      IL_0074:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0079:  ldc.i4.1
      IL_007a:  ret

      IL_007b:  ldarg.0
      IL_007c:  ldc.i4.m1
      IL_007d:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0082:  ldarg.0
      IL_0083:  ldc.i4     0xed
      IL_0088:  ldc.i4.0
      IL_0089:  ldc.i4.0
      IL_008a:  ldc.i4.7
      IL_008b:  call       int32 Game.PistonBlock::SetMaxExtension(int32,
                                                                   int32)
      IL_0090:  ldc.i4.2
      IL_0091:  call       int32 Game.PistonBlock::SetMode(int32,
                                                           valuetype Game.PistonMode)
      IL_0096:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_009b:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>2__current'
      IL_00a0:  ldarg.0
      IL_00a1:  ldc.i4.3
      IL_00a2:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_00a7:  ldc.i4.1
      IL_00a8:  ret

      IL_00a9:  ldarg.0
      IL_00aa:  ldc.i4.m1
      IL_00ab:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_00b0:  ldc.i4.0
      IL_00b1:  ret
    } // end of method '<GetCreativeValues>d__10'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__10'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__10'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.PistonBlock/'<GetCreativeValues>d__10' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PistonBlock/'<GetCreativeValues>d__10'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.PistonBlock/'<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__10'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.PistonBlock/'<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PistonBlock/'<GetCreativeValues>d__10'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__10'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__10'

  .field public static literal int32 Index = int32(0x000000ED)
  .field private class Game.BlockMesh[] m_standaloneBlockMeshes
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       706 (0x2c2)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype Game.PistonMode V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             string V_4,
             valuetype [Engine]Engine.Matrix V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Matrix V_8,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_9)
    IL_0000:  ldstr      "Models/Pistons"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.1
    IL_000d:  br         IL_02ba

    IL_0012:  ldc.i4.0
    IL_0013:  stloc.3
    IL_0014:  br         IL_01f2

    IL_0019:  ldloc.3
    IL_001a:  brfalse.s  IL_0023

    IL_001c:  ldstr      "PistonExtended"
    IL_0021:  br.s       IL_0028

    IL_0023:  ldstr      "PistonRetracted"
    IL_0028:  stloc.s    V_4
    IL_002a:  ldloc.0
    IL_002b:  ldloc.s    V_4
    IL_002d:  ldc.i4.1
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0033:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0038:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_003d:  stloc.s    V_5
    IL_003f:  ldc.i4.0
    IL_0040:  stloc.s    V_6
    IL_0042:  br         IL_01e6

    IL_0047:  ldc.i4.0
    IL_0048:  ldloc.1
    IL_0049:  call       int32 Game.PistonBlock::SetMode(int32,
                                                         valuetype Game.PistonMode)
    IL_004e:  ldloc.3
    IL_004f:  ldc.i4.0
    IL_0050:  cgt.un
    IL_0052:  call       int32 Game.PistonBlock::SetIsExtended(int32,
                                                               bool)
    IL_0057:  ldloc.s    V_6
    IL_0059:  call       int32 Game.PistonBlock::SetFace(int32,
                                                         int32)
    IL_005e:  stloc.s    V_7
    IL_0060:  ldloc.s    V_6
    IL_0062:  ldc.i4.4
    IL_0063:  bge.s      IL_00b8

    IL_0065:  ldc.r4     0.0
    IL_006a:  ldc.r4     -0.5
    IL_006f:  ldc.r4     0.0
    IL_0074:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0079:  ldloc.s    V_6
    IL_007b:  conv.r4
    IL_007c:  ldc.r4     3.1415927
    IL_0081:  mul
    IL_0082:  ldc.r4     2.
    IL_0087:  div
    IL_0088:  ldc.r4     3.1415927
    IL_008d:  add
    IL_008e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0093:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0098:  ldc.r4     0.5
    IL_009d:  ldc.r4     0.5
    IL_00a2:  ldc.r4     0.5
    IL_00a7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00ac:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b1:  stloc.s    V_8
    IL_00b3:  br         IL_013b

    IL_00b8:  ldloc.s    V_6
    IL_00ba:  ldc.i4.4
    IL_00bb:  bne.un.s   IL_00fd

    IL_00bd:  ldc.r4     0.0
    IL_00c2:  ldc.r4     -0.5
    IL_00c7:  ldc.r4     0.0
    IL_00cc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d1:  ldc.r4     1.5707964
    IL_00d6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00db:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e0:  ldc.r4     0.5
    IL_00e5:  ldc.r4     0.5
    IL_00ea:  ldc.r4     0.5
    IL_00ef:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00f4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f9:  stloc.s    V_8
    IL_00fb:  br.s       IL_013b

    IL_00fd:  ldc.r4     0.0
    IL_0102:  ldc.r4     -0.5
    IL_0107:  ldc.r4     0.0
    IL_010c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0111:  ldc.r4     -1.5707964
    IL_0116:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_011b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0120:  ldc.r4     0.5
    IL_0125:  ldc.r4     0.5
    IL_012a:  ldc.r4     0.5
    IL_012f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0134:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0139:  stloc.s    V_8
    IL_013b:  ldarg.0
    IL_013c:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_blockMeshesByData
    IL_0141:  ldloc.s    V_7
    IL_0143:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0148:  stelem.ref
    IL_0149:  ldarg.0
    IL_014a:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_blockMeshesByData
    IL_014f:  ldloc.s    V_7
    IL_0151:  ldelem.ref
    IL_0152:  ldloc.0
    IL_0153:  ldloc.s    V_4
    IL_0155:  ldc.i4.1
    IL_0156:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_015b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0160:  stloc.s    V_9
    IL_0162:  ldloca.s   V_9
    IL_0164:  ldc.i4.0
    IL_0165:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_016a:  ldloc.s    V_5
    IL_016c:  ldloc.s    V_8
    IL_016e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0173:  ldc.i4.0
    IL_0174:  ldc.i4.0
    IL_0175:  ldc.i4.0
    IL_0176:  ldc.i4.0
    IL_0177:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_017c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0181:  ldloc.3
    IL_0182:  brtrue.s   IL_01e0

    IL_0184:  ldloc.1
    IL_0185:  ldc.i4.1
    IL_0186:  bne.un.s   IL_01b3

    IL_0188:  ldarg.0
    IL_0189:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_blockMeshesByData
    IL_018e:  ldloc.s    V_7
    IL_0190:  ldelem.ref
    IL_0191:  ldc.r4     0.0
    IL_0196:  ldc.r4     6.25e-002
    IL_019b:  ldc.r4     0.0
    IL_01a0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01a5:  ldc.i4.1
    IL_01a6:  ldloc.s    V_6
    IL_01a8:  ldc.i4.s   31
    IL_01aa:  and
    IL_01ab:  shl
    IL_01ac:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_01b1:  br.s       IL_01e0

    IL_01b3:  ldloc.1
    IL_01b4:  ldc.i4.2
    IL_01b5:  bne.un.s   IL_01e0

    IL_01b7:  ldarg.0
    IL_01b8:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_blockMeshesByData
    IL_01bd:  ldloc.s    V_7
    IL_01bf:  ldelem.ref
    IL_01c0:  ldc.r4     0.0
    IL_01c5:  ldc.r4     0.125
    IL_01ca:  ldc.r4     0.0
    IL_01cf:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01d4:  ldc.i4.1
    IL_01d5:  ldloc.s    V_6
    IL_01d7:  ldc.i4.s   31
    IL_01d9:  and
    IL_01da:  shl
    IL_01db:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_01e0:  ldloc.s    V_6
    IL_01e2:  ldc.i4.1
    IL_01e3:  add
    IL_01e4:  stloc.s    V_6
    IL_01e6:  ldloc.s    V_6
    IL_01e8:  ldc.i4.6
    IL_01e9:  blt        IL_0047

    IL_01ee:  ldloc.3
    IL_01ef:  ldc.i4.1
    IL_01f0:  add
    IL_01f1:  stloc.3
    IL_01f2:  ldloc.3
    IL_01f3:  ldc.i4.2
    IL_01f4:  blt        IL_0019

    IL_01f9:  ldloc.0
    IL_01fa:  ldstr      "PistonRetracted"
    IL_01ff:  ldc.i4.1
    IL_0200:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0205:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_020a:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_020f:  stloc.2
    IL_0210:  ldarg.0
    IL_0211:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_standaloneBlockMeshes
    IL_0216:  ldloc.1
    IL_0217:  newobj     instance void Game.BlockMesh::.ctor()
    IL_021c:  stelem.ref
    IL_021d:  ldarg.0
    IL_021e:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_standaloneBlockMeshes
    IL_0223:  ldloc.1
    IL_0224:  ldelem.ref
    IL_0225:  ldloc.0
    IL_0226:  ldstr      "PistonRetracted"
    IL_022b:  ldc.i4.1
    IL_022c:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0231:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0236:  stloc.s    V_9
    IL_0238:  ldloca.s   V_9
    IL_023a:  ldc.i4.0
    IL_023b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0240:  ldloc.2
    IL_0241:  ldc.r4     0.0
    IL_0246:  ldc.r4     -0.5
    IL_024b:  ldc.r4     0.0
    IL_0250:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0255:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_025a:  ldc.i4.0
    IL_025b:  ldc.i4.0
    IL_025c:  ldc.i4.0
    IL_025d:  ldc.i4.0
    IL_025e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0263:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0268:  ldloc.1
    IL_0269:  ldc.i4.1
    IL_026a:  bne.un.s   IL_0290

    IL_026c:  ldarg.0
    IL_026d:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_standaloneBlockMeshes
    IL_0272:  ldloc.1
    IL_0273:  ldelem.ref
    IL_0274:  ldc.r4     0.0
    IL_0279:  ldc.r4     6.25e-002
    IL_027e:  ldc.r4     0.0
    IL_0283:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0288:  ldc.i4.4
    IL_0289:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_028e:  br.s       IL_02b6

    IL_0290:  ldloc.1
    IL_0291:  ldc.i4.2
    IL_0292:  bne.un.s   IL_02b6

    IL_0294:  ldarg.0
    IL_0295:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_standaloneBlockMeshes
    IL_029a:  ldloc.1
    IL_029b:  ldelem.ref
    IL_029c:  ldc.r4     0.0
    IL_02a1:  ldc.r4     0.125
    IL_02a6:  ldc.r4     0.0
    IL_02ab:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_02b0:  ldc.i4.4
    IL_02b1:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_02b6:  ldloc.1
    IL_02b7:  ldc.i4.1
    IL_02b8:  add
    IL_02b9:  stloc.1
    IL_02ba:  ldloc.1
    IL_02bb:  ldc.i4.2
    IL_02bc:  ble        IL_0012

    IL_02c1:  ret
  } // end of method PistonBlock::Initialize

  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.PistonBlock::GetFace(int32)
    IL_000c:  stloc.0
    IL_000d:  call       bool Game.PistonBlock::GetIsExtended(int32)
    IL_0012:  brfalse.s  IL_0027

    IL_0014:  ldarg.1
    IL_0015:  ldloc.0
    IL_0016:  beq.s      IL_0025

    IL_0018:  ldarg.1
    IL_0019:  ldloc.0
    IL_001a:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_001f:  ceq
    IL_0021:  ldc.i4.0
    IL_0022:  ceq
    IL_0024:  ret

    IL_0025:  ldc.i4.0
    IL_0026:  ret

    IL_0027:  ldc.i4.0
    IL_0028:  ret
  } // end of method PistonBlock::IsFaceTransparent

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  10
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  ldc.i4.s   63
    IL_0008:  and
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_blockMeshesByData
    IL_0011:  ldlen
    IL_0012:  conv.i4
    IL_0013:  bge.s      IL_0049

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_blockMeshesByData
    IL_001b:  ldloc.0
    IL_001c:  ldelem.ref
    IL_001d:  brfalse.s  IL_0049

    IL_001f:  ldarg.1
    IL_0020:  ldarg.0
    IL_0021:  ldarg.s    x
    IL_0023:  ldarg.s    y
    IL_0025:  ldarg.s    z
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_blockMeshesByData
    IL_002d:  ldloc.0
    IL_002e:  ldelem.ref
    IL_002f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0034:  ldloca.s   V_1
    IL_0036:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_003c:  ldloc.1
    IL_003d:  ldnull
    IL_003e:  ldarg.2
    IL_003f:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0044:  callvirt   instance void Game.BlockGeometryGenerator::GenerateShadedMeshVertices(class Game.Block,
                                                                                               int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               class Game.BlockMesh,
                                                                                               valuetype [Engine]Engine.Color,
                                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                               int32[],
                                                                                               class Game.TerrainGeometrySubset)
    IL_0049:  ret
  } // end of method PistonBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype Game.PistonMode Game.PistonBlock::GetMode(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_standaloneBlockMeshes
    IL_0013:  ldlen
    IL_0014:  conv.i4
    IL_0015:  bge.s      IL_003a

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_standaloneBlockMeshes
    IL_001d:  ldloc.0
    IL_001e:  ldelem.ref
    IL_001f:  brfalse.s  IL_003a

    IL_0021:  ldarg.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.BlockMesh[] Game.PistonBlock::m_standaloneBlockMeshes
    IL_0028:  ldloc.0
    IL_0029:  ldelem.ref
    IL_002a:  ldc.r4     1.
    IL_002f:  ldarg.3
    IL_0030:  mul
    IL_0031:  ldarg.s    matrix
    IL_0033:  ldarg.s    environmentData
    IL_0035:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_003a:  ret
  } // end of method PistonBlock::DrawBlock

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000b:  newobj     instance void Game.PistonElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                         valuetype [Engine]Engine.Point3)
    IL_0010:  ret
  } // end of method PistonBlock::CreateElectricElement

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
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0006:  ret
  } // end of method PistonBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method PistonBlock::GetConnectionMask

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 29 47 61 6D 65 2E 50 69 73 74 6F 6E 42 6C   // ..)Game.PistonBl
                                                                                                                                                      6F 63 6B 2B 3C 47 65 74 43 72 65 61 74 69 76 65   // ock+<GetCreative
                                                                                                                                                      56 61 6C 75 65 73 3E 64 5F 5F 31 30 00 00 )       // Values>d__10..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PistonBlock/'<GetCreativeValues>d__10'::.ctor(int32)
    IL_0007:  ret
  } // end of method PistonBlock::GetCreativeValues

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain terrain,
                         int32 'value') cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  2
    .locals init (valuetype Game.PistonMode V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype Game.PistonMode Game.PistonBlock::GetMode(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.1
    IL_000e:  beq.s      IL_0016

    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.2
    IL_0012:  beq.s      IL_001c

    IL_0014:  br.s       IL_0022

    IL_0016:  ldstr      "Pulling Piston"
    IL_001b:  ret

    IL_001c:  ldstr      "Strict Pulling Piston"
    IL_0021:  ret

    IL_0022:  ldstr      "Piston"
    IL_0027:  ret
  } // end of method PistonBlock::GetDisplayName

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       139 (0x8b)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Matrix V_4,
             int32 V_5,
             float32 V_6,
             valuetype Game.BlockPlacementData V_7)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0015:  stloc.s    V_4
    IL_0017:  ldloca.s   V_4
    IL_0019:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_001e:  stloc.0
    IL_001f:  ldc.r4     (00 00 80 7F)
    IL_0024:  stloc.1
    IL_0025:  ldc.i4.0
    IL_0026:  stloc.2
    IL_0027:  ldc.i4.0
    IL_0028:  stloc.s    V_5
    IL_002a:  br.s       IL_004c

    IL_002c:  ldloc.s    V_5
    IL_002e:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0033:  ldloc.0
    IL_0034:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0039:  stloc.s    V_6
    IL_003b:  ldloc.s    V_6
    IL_003d:  ldloc.1
    IL_003e:  bge.un.s   IL_0046

    IL_0040:  ldloc.s    V_6
    IL_0042:  stloc.1
    IL_0043:  ldloc.s    V_5
    IL_0045:  stloc.2
    IL_0046:  ldloc.s    V_5
    IL_0048:  ldc.i4.1
    IL_0049:  add
    IL_004a:  stloc.s    V_5
    IL_004c:  ldloc.s    V_5
    IL_004e:  ldc.i4.6
    IL_004f:  blt.s      IL_002c

    IL_0051:  ldarg.3
    IL_0052:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0057:  stloc.3
    IL_0058:  ldloca.s   V_7
    IL_005a:  initobj    Game.BlockPlacementData
    IL_0060:  ldloca.s   V_7
    IL_0062:  ldarg.0
    IL_0063:  ldfld      int32 Game.Block::BlockIndex
    IL_0068:  ldc.i4.0
    IL_0069:  ldloc.3
    IL_006a:  ldloc.2
    IL_006b:  call       int32 Game.PistonBlock::SetFace(int32,
                                                         int32)
    IL_0070:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0075:  stfld      int32 Game.BlockPlacementData::Value
    IL_007a:  ldloca.s   V_7
    IL_007c:  ldarg.s    raycastResult
    IL_007e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0083:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0088:  ldloc.s    V_7
    IL_008a:  ret
  } // end of method PistonBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.s    dropValues
    IL_0009:  ldloca.s   V_1
    IL_000b:  initobj    Game.BlockDropValue
    IL_0011:  ldloca.s   V_1
    IL_0013:  ldc.i4     0xed
    IL_0018:  ldc.i4.0
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.0
    IL_001b:  call       int32 Game.PistonBlock::SetIsExtended(int32,
                                                               bool)
    IL_0020:  ldc.i4.0
    IL_0021:  call       int32 Game.PistonBlock::SetFace(int32,
                                                         int32)
    IL_0026:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_002b:  stfld      int32 Game.BlockDropValue::Value
    IL_0030:  ldloca.s   V_1
    IL_0032:  ldc.i4.1
    IL_0033:  stfld      int32 Game.BlockDropValue::Count
    IL_0038:  ldloc.1
    IL_0039:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_003e:  ldarg.s    showDebris
    IL_0040:  ldc.i4.1
    IL_0041:  stind.i1
    IL_0042:  ret
  } // end of method PistonBlock::GetDropValues

  .method public hidebysig static bool  GetIsExtended(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method PistonBlock::GetIsExtended

  .method public hidebysig static int32  SetIsExtended(int32 data,
                                                       bool isExtended) cil managed
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
  } // end of method PistonBlock::SetIsExtended

  .method public hidebysig static valuetype Game.PistonMode 
          GetMode(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  shr
    IL_0003:  ldc.i4.3
    IL_0004:  and
    IL_0005:  ret
  } // end of method PistonBlock::GetMode

  .method public hidebysig static int32  SetMode(int32 data,
                                                 valuetype Game.PistonMode mode) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -7
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.3
    IL_0006:  and
    IL_0007:  ldc.i4.1
    IL_0008:  shl
    IL_0009:  or
    IL_000a:  ret
  } // end of method PistonBlock::SetMode

  .method public hidebysig static int32  GetFace(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  shr
    IL_0003:  ldc.i4.7
    IL_0004:  and
    IL_0005:  ret
  } // end of method PistonBlock::GetFace

  .method public hidebysig static int32  SetFace(int32 data,
                                                 int32 face) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -57
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.7
    IL_0006:  and
    IL_0007:  ldc.i4.3
    IL_0008:  shl
    IL_0009:  or
    IL_000a:  ret
  } // end of method PistonBlock::SetFace

  .method public hidebysig static int32  GetMaxExtension(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.6
    IL_0002:  shr
    IL_0003:  ldc.i4.7
    IL_0004:  and
    IL_0005:  ret
  } // end of method PistonBlock::GetMaxExtension

  .method public hidebysig static int32  SetMaxExtension(int32 data,
                                                         int32 maxExtension) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xfffffe3f
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.7
    IL_0009:  and
    IL_000a:  ldc.i4.6
    IL_000b:  shl
    IL_000c:  or
    IL_000d:  ret
  } // end of method PistonBlock::SetMaxExtension

  .method public hidebysig static int32  GetPullCount(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   9
    IL_0003:  shr
    IL_0004:  ldc.i4.7
    IL_0005:  and
    IL_0006:  ret
  } // end of method PistonBlock::GetPullCount

  .method public hidebysig static int32  SetPullCount(int32 data,
                                                      int32 pullCount) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xfffff1ff
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.7
    IL_0009:  and
    IL_000a:  ldc.i4.s   9
    IL_000c:  shl
    IL_000d:  or
    IL_000e:  ret
  } // end of method PistonBlock::SetPullCount

  .method public hidebysig static int32  GetSpeed(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   12
    IL_0003:  shr
    IL_0004:  ldc.i4.7
    IL_0005:  and
    IL_0006:  ret
  } // end of method PistonBlock::GetSpeed

  .method public hidebysig static int32  SetSpeed(int32 data,
                                                  int32 speed) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xffffcfff
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.3
    IL_0009:  and
    IL_000a:  ldc.i4.s   12
    IL_000c:  shl
    IL_000d:  or
    IL_000e:  ret
  } // end of method PistonBlock::SetSpeed

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.PistonBlock::m_standaloneBlockMeshes
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.s   48
    IL_000f:  newarr     Game.BlockMesh
    IL_0014:  stfld      class Game.BlockMesh[] Game.PistonBlock::m_blockMeshesByData
    IL_0019:  ldarg.0
    IL_001a:  call       instance void Game.Block::.ctor()
    IL_001f:  ret
  } // end of method PistonBlock::.ctor

} // end of class Game.PistonBlock