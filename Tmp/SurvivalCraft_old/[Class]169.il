.class public auto ansi beforefieldinit Game.PumpkinBlock
       extends Game.Block
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__13'
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
      IL_0008:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__13'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__13'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       228 (0xe4)
      .maxstack  5
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  switch     ( 
                            IL_0023,
                            IL_0051,
                            IL_007f,
                            IL_00ad,
                            IL_00db)
      IL_0021:  ldc.i4.0
      IL_0022:  ret

      IL_0023:  ldarg.0
      IL_0024:  ldc.i4.m1
      IL_0025:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_002a:  ldarg.0
      IL_002b:  ldc.i4     0x83
      IL_0030:  ldc.i4.0
      IL_0031:  ldc.i4.0
      IL_0032:  ldc.i4.0
      IL_0033:  call       int32 Game.PumpkinBlock::SetIsLive(int32,
                                                              bool)
      IL_0038:  ldc.i4.1
      IL_0039:  call       int32 Game.PumpkinBlock::SetSize(int32,
                                                            int32)
      IL_003e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0043:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>2__current'
      IL_0048:  ldarg.0
      IL_0049:  ldc.i4.1
      IL_004a:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_004f:  ldc.i4.1
      IL_0050:  ret

      IL_0051:  ldarg.0
      IL_0052:  ldc.i4.m1
      IL_0053:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_0058:  ldarg.0
      IL_0059:  ldc.i4     0x83
      IL_005e:  ldc.i4.0
      IL_005f:  ldc.i4.0
      IL_0060:  ldc.i4.0
      IL_0061:  call       int32 Game.PumpkinBlock::SetIsLive(int32,
                                                              bool)
      IL_0066:  ldc.i4.3
      IL_0067:  call       int32 Game.PumpkinBlock::SetSize(int32,
                                                            int32)
      IL_006c:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0071:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>2__current'
      IL_0076:  ldarg.0
      IL_0077:  ldc.i4.2
      IL_0078:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_007d:  ldc.i4.1
      IL_007e:  ret

      IL_007f:  ldarg.0
      IL_0080:  ldc.i4.m1
      IL_0081:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_0086:  ldarg.0
      IL_0087:  ldc.i4     0x83
      IL_008c:  ldc.i4.0
      IL_008d:  ldc.i4.0
      IL_008e:  ldc.i4.0
      IL_008f:  call       int32 Game.PumpkinBlock::SetIsLive(int32,
                                                              bool)
      IL_0094:  ldc.i4.5
      IL_0095:  call       int32 Game.PumpkinBlock::SetSize(int32,
                                                            int32)
      IL_009a:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_009f:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>2__current'
      IL_00a4:  ldarg.0
      IL_00a5:  ldc.i4.3
      IL_00a6:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_00ab:  ldc.i4.1
      IL_00ac:  ret

      IL_00ad:  ldarg.0
      IL_00ae:  ldc.i4.m1
      IL_00af:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_00b4:  ldarg.0
      IL_00b5:  ldc.i4     0x83
      IL_00ba:  ldc.i4.0
      IL_00bb:  ldc.i4.0
      IL_00bc:  ldc.i4.0
      IL_00bd:  call       int32 Game.PumpkinBlock::SetIsLive(int32,
                                                              bool)
      IL_00c2:  ldc.i4.7
      IL_00c3:  call       int32 Game.PumpkinBlock::SetSize(int32,
                                                            int32)
      IL_00c8:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_00cd:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>2__current'
      IL_00d2:  ldarg.0
      IL_00d3:  ldc.i4.4
      IL_00d4:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_00d9:  ldc.i4.1
      IL_00da:  ret

      IL_00db:  ldarg.0
      IL_00dc:  ldc.i4.m1
      IL_00dd:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_00e2:  ldc.i4.0
      IL_00e3:  ret
    } // end of method '<GetCreativeValues>d__13'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__13'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__13'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__13'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.PumpkinBlock/'<GetCreativeValues>d__13' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PumpkinBlock/'<GetCreativeValues>d__13'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__13'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.PumpkinBlock/'<GetCreativeValues>d__13'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__13'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.PumpkinBlock/'<GetCreativeValues>d__13'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__13'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PumpkinBlock/'<GetCreativeValues>d__13'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__13'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__13'

  .field public static literal int32 Index = int32(0x00000083)
  .field private class Game.BlockMesh[] m_blockMeshesBySize
  .field private class Game.BlockMesh[] m_standaloneBlockMeshesBySize
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesBySize
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       648 (0x288)
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
    IL_0024:  br         IL_016a

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
    IL_005c:  ldc.i4.0
    IL_005d:  ldc.i4     0x80
    IL_0062:  ldc.i4     0x80
    IL_0067:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_006c:  ldc.i4.s   80
    IL_006e:  ldc.i4     0xff
    IL_0073:  ldc.i4     0xff
    IL_0078:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_007d:  ldloc.2
    IL_007e:  conv.r4
    IL_007f:  ldc.r4     7.
    IL_0084:  div
    IL_0085:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_008a:  stloc.s    V_5
    IL_008c:  ldloc.2
    IL_008d:  ldc.i4.7
    IL_008e:  bne.un.s   IL_009c

    IL_0090:  ldloca.s   V_5
    IL_0092:  ldc.i4     0xff
    IL_0097:  call       instance void [Engine]Engine.Color::set_R(uint8)
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.BlockMesh[] Game.PumpkinBlock::m_blockMeshesBySize
    IL_00a2:  ldloc.2
    IL_00a3:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00a8:  stelem.ref
    IL_00a9:  ldloc.2
    IL_00aa:  ldc.i4.1
    IL_00ab:  blt.s      IL_0106

    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.BlockMesh[] Game.PumpkinBlock::m_blockMeshesBySize
    IL_00b3:  ldloc.2
    IL_00b4:  ldelem.ref
    IL_00b5:  ldloc.0
    IL_00b6:  ldstr      "Pumpkin"
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00c1:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00c6:  stloc.s    V_6
    IL_00c8:  ldloca.s   V_6
    IL_00ca:  ldc.i4.0
    IL_00cb:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00d0:  ldloc.1
    IL_00d1:  ldloc.3
    IL_00d2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00d7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00dc:  ldc.r4     0.5
    IL_00e1:  ldloc.s    V_4
    IL_00e3:  add
    IL_00e4:  ldc.r4     0.0
    IL_00e9:  ldc.r4     0.5
    IL_00ee:  ldloc.s    V_4
    IL_00f0:  add
    IL_00f1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00f6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00fb:  ldc.i4.0
    IL_00fc:  ldc.i4.0
    IL_00fd:  ldc.i4.0
    IL_00fe:  ldc.i4.0
    IL_00ff:  ldloc.s    V_5
    IL_0101:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.BlockMesh[] Game.PumpkinBlock::m_standaloneBlockMeshesBySize
    IL_010c:  ldloc.2
    IL_010d:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0112:  stelem.ref
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class Game.BlockMesh[] Game.PumpkinBlock::m_standaloneBlockMeshesBySize
    IL_0119:  ldloc.2
    IL_011a:  ldelem.ref
    IL_011b:  ldloc.0
    IL_011c:  ldstr      "Pumpkin"
    IL_0121:  ldc.i4.1
    IL_0122:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0127:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_012c:  stloc.s    V_6
    IL_012e:  ldloca.s   V_6
    IL_0130:  ldc.i4.0
    IL_0131:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0136:  ldloc.1
    IL_0137:  ldloc.3
    IL_0138:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_013d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0142:  ldc.r4     0.0
    IL_0147:  ldc.r4     -0.23
    IL_014c:  ldc.r4     0.0
    IL_0151:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0156:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_015b:  ldc.i4.0
    IL_015c:  ldc.i4.0
    IL_015d:  ldc.i4.0
    IL_015e:  ldc.i4.0
    IL_015f:  ldloc.s    V_5
    IL_0161:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0166:  ldloc.2
    IL_0167:  ldc.i4.1
    IL_0168:  add
    IL_0169:  stloc.2
    IL_016a:  ldloc.2
    IL_016b:  ldc.i4.8
    IL_016c:  blt        IL_0029

    IL_0171:  ldc.i4.0
    IL_0172:  stloc.s    V_7
    IL_0174:  br         IL_0279

    IL_0179:  ldarg.0
    IL_017a:  ldfld      class Game.BlockMesh[] Game.PumpkinBlock::m_blockMeshesBySize
    IL_017f:  ldloc.s    V_7
    IL_0181:  ldelem.ref
    IL_0182:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0187:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_018c:  ldc.i4.0
    IL_018d:  bgt.s      IL_01be

    IL_018f:  ldc.r4     0.5
    IL_0194:  ldc.r4     0.0
    IL_0199:  ldc.r4     0.5
    IL_019e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01a3:  ldc.r4     0.5
    IL_01a8:  ldc.r4     0.0
    IL_01ad:  ldc.r4     0.5
    IL_01b2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01b7:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_01bc:  br.s       IL_01cc

    IL_01be:  ldarg.0
    IL_01bf:  ldfld      class Game.BlockMesh[] Game.PumpkinBlock::m_blockMeshesBySize
    IL_01c4:  ldloc.s    V_7
    IL_01c6:  ldelem.ref
    IL_01c7:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_01cc:  stloc.s    V_8
    IL_01ce:  ldloc.s    V_8
    IL_01d0:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01d5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01da:  ldloc.s    V_8
    IL_01dc:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_01e1:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01e6:  sub
    IL_01e7:  stloc.s    V_9
    IL_01e9:  ldloc.s    V_9
    IL_01eb:  ldc.r4     0.80000001
    IL_01f0:  bge.un.s   IL_025b

    IL_01f2:  ldc.r4     0.80000001
    IL_01f7:  ldloc.s    V_9
    IL_01f9:  sub
    IL_01fa:  ldc.r4     2.
    IL_01ff:  div
    IL_0200:  stloc.s    V_10
    IL_0202:  ldloca.s   V_8
    IL_0204:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0209:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_020e:  dup
    IL_020f:  ldind.r4
    IL_0210:  ldloc.s    V_10
    IL_0212:  sub
    IL_0213:  stind.r4
    IL_0214:  ldloca.s   V_8
    IL_0216:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_021b:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_0220:  dup
    IL_0221:  ldind.r4
    IL_0222:  ldloc.s    V_10
    IL_0224:  sub
    IL_0225:  stind.r4
    IL_0226:  ldloca.s   V_8
    IL_0228:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_022d:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0232:  dup
    IL_0233:  ldind.r4
    IL_0234:  ldloc.s    V_10
    IL_0236:  add
    IL_0237:  stind.r4
    IL_0238:  ldloca.s   V_8
    IL_023a:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_023f:  ldc.r4     0.40000001
    IL_0244:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0249:  ldloca.s   V_8
    IL_024b:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0250:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_0255:  dup
    IL_0256:  ldind.r4
    IL_0257:  ldloc.s    V_10
    IL_0259:  add
    IL_025a:  stind.r4
    IL_025b:  ldarg.0
    IL_025c:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.PumpkinBlock::m_collisionBoxesBySize
    IL_0261:  ldloc.s    V_7
    IL_0263:  ldc.i4.1
    IL_0264:  newarr     [Engine]Engine.BoundingBox
    IL_0269:  dup
    IL_026a:  ldc.i4.0
    IL_026b:  ldloc.s    V_8
    IL_026d:  stelem     [Engine]Engine.BoundingBox
    IL_0272:  stelem.ref
    IL_0273:  ldloc.s    V_7
    IL_0275:  ldc.i4.1
    IL_0276:  add
    IL_0277:  stloc.s    V_7
    IL_0279:  ldloc.s    V_7
    IL_027b:  ldc.i4.8
    IL_027c:  blt        IL_0179

    IL_0281:  ldarg.0
    IL_0282:  call       instance void Game.Block::Initialize()
    IL_0287:  ret
  } // end of method PumpkinBlock::Initialize

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PumpkinBlock::GetSize(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.PumpkinBlock::m_collisionBoxesBySize
    IL_0012:  ldloc.0
    IL_0013:  ldelem.ref
    IL_0014:  ret
  } // end of method PumpkinBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       146 (0x92)
    .maxstack  9
    .locals init (int32 V_0,
             bool V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.PumpkinBlock::GetSize(int32)
    IL_000c:  stloc.0
    IL_000d:  call       bool Game.PumpkinBlock::GetIsLive(int32)
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
    IL_0020:  ldfld      class Game.BlockMesh[] Game.PumpkinBlock::m_blockMeshesBySize
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
    IL_0070:  clt
    IL_0072:  ldloc.1
    IL_0073:  and
    IL_0074:  brfalse.s  IL_0091

    IL_0076:  ldarg.1
    IL_0077:  ldarg.0
    IL_0078:  ldarg.3
    IL_0079:  ldarg.s    x
    IL_007b:  ldarg.s    y
    IL_007d:  ldarg.s    z
    IL_007f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0084:  ldc.i4.s   28
    IL_0086:  ldarg.2
    IL_0087:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_008c:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCrossfaceVertices(class Game.Block,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              int32,
                                                                                              class Game.TerrainGeometrySubset)
    IL_0091:  ret
  } // end of method PumpkinBlock::GenerateTerrainVertices

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
    IL_0006:  call       int32 Game.PumpkinBlock::GetSize(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.BlockMesh[] Game.PumpkinBlock::m_standaloneBlockMeshesBySize
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
  } // end of method PumpkinBlock::DrawBlock

  .method public hidebysig virtual instance int32 
          GetShadowStrength(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PumpkinBlock::GetSize(int32)
    IL_000b:  ret
  } // end of method PumpkinBlock::GetShadowStrength

  .method public hidebysig virtual instance float32 
          GetNutritionalValue(int32 'value') cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PumpkinBlock::GetSize(int32)
    IL_000b:  ldc.i4.7
    IL_000c:  beq.s      IL_0014

    IL_000e:  ldc.r4     0.0
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  call       instance float32 Game.Block::GetNutritionalValue(int32)
    IL_001b:  ret
  } // end of method PumpkinBlock::GetNutritionalValue

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PumpkinBlock::GetSize(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.1
    IL_000e:  blt.s      IL_0047

    IL_0010:  ldarg.s    dropValues
    IL_0012:  ldloca.s   V_1
    IL_0014:  initobj    Game.BlockDropValue
    IL_001a:  ldloca.s   V_1
    IL_001c:  ldc.i4     0x83
    IL_0021:  ldc.i4.0
    IL_0022:  ldc.i4.0
    IL_0023:  ldc.i4.0
    IL_0024:  call       int32 Game.PumpkinBlock::SetIsLive(int32,
                                                            bool)
    IL_0029:  ldloc.0
    IL_002a:  call       int32 Game.PumpkinBlock::SetSize(int32,
                                                          int32)
    IL_002f:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0034:  stfld      int32 Game.BlockDropValue::Value
    IL_0039:  ldloca.s   V_1
    IL_003b:  ldc.i4.1
    IL_003c:  stfld      int32 Game.BlockDropValue::Count
    IL_0041:  ldloc.1
    IL_0042:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0047:  ldarg.s    showDebris
    IL_0049:  ldc.i4.1
    IL_004a:  stind.i1
    IL_004b:  ret
  } // end of method PumpkinBlock::GetDropValues

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain terrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  6
    .locals init (int32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Color V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PumpkinBlock::GetSize(int32)
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
    IL_0053:  ldc.i4.s   102
    IL_0055:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_005a:  ret
  } // end of method PumpkinBlock::CreateDebrisParticleSystem

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PumpkinBlock::GetSize(int32)
    IL_000b:  ldc.i4.7
    IL_000c:  blt.s      IL_0014

    IL_000e:  ldstr      "Pumpkin"
    IL_0013:  ret

    IL_0014:  ldstr      "Unripe pumpkin"
    IL_0019:  ret
  } // end of method PumpkinBlock::GetDisplayName

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2A 47 61 6D 65 2E 50 75 6D 70 6B 69 6E 42   // ..*Game.PumpkinB
                                                                                                                                                      6C 6F 63 6B 2B 3C 47 65 74 43 72 65 61 74 69 76   // lock+<GetCreativ
                                                                                                                                                      65 56 61 6C 75 65 73 3E 64 5F 5F 31 33 00 00 )    // eValues>d__13..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PumpkinBlock/'<GetCreativeValues>d__13'::.ctor(int32)
    IL_0007:  ret
  } // end of method PumpkinBlock::GetCreativeValues

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
  } // end of method PumpkinBlock::GetSize

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
  } // end of method PumpkinBlock::SetSize

  .method public hidebysig static bool  GetIsLive(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method PumpkinBlock::GetIsLive

  .method public hidebysig static int32  SetIsLive(int32 data,
                                                   bool isLive) cil managed
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
  } // end of method PumpkinBlock::SetIsLive

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.PumpkinBlock::m_blockMeshesBySize
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.8
    IL_000e:  newarr     Game.BlockMesh
    IL_0013:  stfld      class Game.BlockMesh[] Game.PumpkinBlock::m_standaloneBlockMeshesBySize
    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.8
    IL_001a:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_001f:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.PumpkinBlock::m_collisionBoxesBySize
    IL_0024:  ldarg.0
    IL_0025:  call       instance void Game.Block::.ctor()
    IL_002a:  ret
  } // end of method PumpkinBlock::.ctor

} // end of class Game.PumpkinBlock