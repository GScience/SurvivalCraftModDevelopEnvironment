.class public auto ansi beforefieldinit Game.WireBlock
       extends Game.Block
       implements Game.IElectricWireElementBlock,
                  Game.IElectricElementBlock,
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
      IL_0008:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>l__initialThreadId'
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
      // 代码大小       412 (0x19c)
      .maxstack  5
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  switch     ( 
                            IL_0033,
                            IL_0053,
                            IL_0080,
                            IL_00ad,
                            IL_00db,
                            IL_0109,
                            IL_0137,
                            IL_0165,
                            IL_0193)
      IL_0031:  ldc.i4.0
      IL_0032:  ret

      IL_0033:  ldarg.0
      IL_0034:  ldc.i4.m1
      IL_0035:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_003a:  ldarg.0
      IL_003b:  ldc.i4     0x85
      IL_0040:  call       int32 Game.TerrainData::MakeBlockValue(int32)
      IL_0045:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_004a:  ldarg.0
      IL_004b:  ldc.i4.1
      IL_004c:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0051:  ldc.i4.1
      IL_0052:  ret

      IL_0053:  ldarg.0
      IL_0054:  ldc.i4.m1
      IL_0055:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_005a:  ldarg.0
      IL_005b:  ldc.i4     0x85
      IL_0060:  ldc.i4.0
      IL_0061:  ldc.i4.0
      IL_0062:  ldc.i4.0
      IL_0063:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_0068:  call       int32 Game.WireBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_006d:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0072:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_0077:  ldarg.0
      IL_0078:  ldc.i4.2
      IL_0079:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_007e:  ldc.i4.1
      IL_007f:  ret

      IL_0080:  ldarg.0
      IL_0081:  ldc.i4.m1
      IL_0082:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0087:  ldarg.0
      IL_0088:  ldc.i4     0x85
      IL_008d:  ldc.i4.0
      IL_008e:  ldc.i4.0
      IL_008f:  ldc.i4.8
      IL_0090:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_0095:  call       int32 Game.WireBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_009a:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_009f:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_00a4:  ldarg.0
      IL_00a5:  ldc.i4.3
      IL_00a6:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_00ab:  ldc.i4.1
      IL_00ac:  ret

      IL_00ad:  ldarg.0
      IL_00ae:  ldc.i4.m1
      IL_00af:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_00b4:  ldarg.0
      IL_00b5:  ldc.i4     0x85
      IL_00ba:  ldc.i4.0
      IL_00bb:  ldc.i4.0
      IL_00bc:  ldc.i4.s   15
      IL_00be:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_00c3:  call       int32 Game.WireBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_00c8:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_00cd:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_00d2:  ldarg.0
      IL_00d3:  ldc.i4.4
      IL_00d4:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_00d9:  ldc.i4.1
      IL_00da:  ret

      IL_00db:  ldarg.0
      IL_00dc:  ldc.i4.m1
      IL_00dd:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_00e2:  ldarg.0
      IL_00e3:  ldc.i4     0x85
      IL_00e8:  ldc.i4.0
      IL_00e9:  ldc.i4.0
      IL_00ea:  ldc.i4.s   11
      IL_00ec:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_00f1:  call       int32 Game.WireBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_00f6:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_00fb:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_0100:  ldarg.0
      IL_0101:  ldc.i4.5
      IL_0102:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0107:  ldc.i4.1
      IL_0108:  ret

      IL_0109:  ldarg.0
      IL_010a:  ldc.i4.m1
      IL_010b:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0110:  ldarg.0
      IL_0111:  ldc.i4     0x85
      IL_0116:  ldc.i4.0
      IL_0117:  ldc.i4.0
      IL_0118:  ldc.i4.s   12
      IL_011a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_011f:  call       int32 Game.WireBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_0124:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0129:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_012e:  ldarg.0
      IL_012f:  ldc.i4.6
      IL_0130:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0135:  ldc.i4.1
      IL_0136:  ret

      IL_0137:  ldarg.0
      IL_0138:  ldc.i4.m1
      IL_0139:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_013e:  ldarg.0
      IL_013f:  ldc.i4     0x85
      IL_0144:  ldc.i4.0
      IL_0145:  ldc.i4.0
      IL_0146:  ldc.i4.s   13
      IL_0148:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_014d:  call       int32 Game.WireBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_0152:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0157:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_015c:  ldarg.0
      IL_015d:  ldc.i4.7
      IL_015e:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0163:  ldc.i4.1
      IL_0164:  ret

      IL_0165:  ldarg.0
      IL_0166:  ldc.i4.m1
      IL_0167:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_016c:  ldarg.0
      IL_016d:  ldc.i4     0x85
      IL_0172:  ldc.i4.0
      IL_0173:  ldc.i4.0
      IL_0174:  ldc.i4.s   14
      IL_0176:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_017b:  call       int32 Game.WireBlock::SetColor(int32,
                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_0180:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0185:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_018a:  ldarg.0
      IL_018b:  ldc.i4.8
      IL_018c:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0191:  ldc.i4.1
      IL_0192:  ret

      IL_0193:  ldarg.0
      IL_0194:  ldc.i4.m1
      IL_0195:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_019a:  ldc.i4.0
      IL_019b:  ret
    } // end of method '<GetCreativeValues>d__15'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>2__current'
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
      IL_0001:  ldfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__15'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.WireBlock/'<GetCreativeValues>d__15' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.WireBlock/'<GetCreativeValues>d__15'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.WireBlock/'<GetCreativeValues>d__15'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.WireBlock/'<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__15'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.WireBlock/'<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__15'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.WireBlock/'<GetCreativeValues>d__15'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__15'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__15'

  .field public static literal int32 Index = int32(0x00000085)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private valuetype [Engine]Engine.BoundingBox[] m_collisionBoxesByFace
  .field public static initonly valuetype [Engine]Engine.Color WireColor
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       491 (0x1eb)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8)
    IL_0000:  ldstr      "Models/Wire"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Wire"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.BlockMesh Game.WireBlock::m_standaloneBlockMesh
    IL_0028:  ldloc.0
    IL_0029:  ldstr      "Wire"
    IL_002e:  ldc.i4.1
    IL_002f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0034:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0039:  stloc.2
    IL_003a:  ldloca.s   V_2
    IL_003c:  ldc.i4.0
    IL_003d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0042:  ldloc.1
    IL_0043:  ldc.r4     0.0
    IL_0048:  ldc.r4     -0.5
    IL_004d:  ldc.r4     0.0
    IL_0052:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0057:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_005c:  ldc.i4.0
    IL_005d:  ldc.i4.0
    IL_005e:  ldc.i4.0
    IL_005f:  ldc.i4.0
    IL_0060:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0065:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.BlockMesh Game.WireBlock::m_standaloneBlockMesh
    IL_0070:  ldc.r4     0.9375
    IL_0075:  ldc.r4     0.0
    IL_007a:  ldc.r4     0.0
    IL_007f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0084:  ldc.i4.m1
    IL_0085:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_008a:  ldc.i4.0
    IL_008b:  stloc.3
    IL_008c:  br         IL_01e3

    IL_0091:  ldloc.3
    IL_0092:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0097:  stloc.s    V_4
    IL_0099:  ldc.r4     0.5
    IL_009e:  ldc.r4     0.5
    IL_00a3:  ldc.r4     0.5
    IL_00a8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00ad:  ldc.r4     0.5
    IL_00b2:  ldloc.s    V_4
    IL_00b4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00be:  ldloc.s    V_4
    IL_00c0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c5:  ldc.r4     0.0
    IL_00ca:  beq.s      IL_00fa

    IL_00cc:  ldloca.s   V_5
    IL_00ce:  ldc.r4     0.0
    IL_00d3:  ldc.r4     1.
    IL_00d8:  ldc.r4     0.0
    IL_00dd:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00e2:  ldloca.s   V_6
    IL_00e4:  ldc.r4     0.0
    IL_00e9:  ldc.r4     0.0
    IL_00ee:  ldc.r4     1.
    IL_00f3:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f8:  br.s       IL_0162

    IL_00fa:  ldloc.s    V_4
    IL_00fc:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0101:  ldc.r4     0.0
    IL_0106:  beq.s      IL_0136

    IL_0108:  ldloca.s   V_5
    IL_010a:  ldc.r4     1.
    IL_010f:  ldc.r4     0.0
    IL_0114:  ldc.r4     0.0
    IL_0119:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_011e:  ldloca.s   V_6
    IL_0120:  ldc.r4     0.0
    IL_0125:  ldc.r4     0.0
    IL_012a:  ldc.r4     1.
    IL_012f:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0134:  br.s       IL_0162

    IL_0136:  ldloca.s   V_5
    IL_0138:  ldc.r4     1.
    IL_013d:  ldc.r4     0.0
    IL_0142:  ldc.r4     0.0
    IL_0147:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014c:  ldloca.s   V_6
    IL_014e:  ldc.r4     0.0
    IL_0153:  ldc.r4     1.
    IL_0158:  ldc.r4     0.0
    IL_015d:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0162:  dup
    IL_0163:  ldc.r4     0.5
    IL_0168:  ldloc.s    V_5
    IL_016a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_016f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0174:  ldc.r4     0.5
    IL_0179:  ldloc.s    V_6
    IL_017b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0180:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0185:  stloc.s    V_7
    IL_0187:  ldc.r4     0.5
    IL_018c:  ldloc.s    V_5
    IL_018e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0193:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0198:  ldc.r4     0.5
    IL_019d:  ldloc.s    V_6
    IL_019f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a9:  ldc.r4     5.0000001e-002
    IL_01ae:  ldloc.s    V_4
    IL_01b0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ba:  stloc.s    V_8
    IL_01bc:  ldarg.0
    IL_01bd:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.WireBlock::m_collisionBoxesByFace
    IL_01c2:  ldloc.3
    IL_01c3:  ldloc.s    V_7
    IL_01c5:  ldloc.s    V_8
    IL_01c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Min(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_01cc:  ldloc.s    V_7
    IL_01ce:  ldloc.s    V_8
    IL_01d0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Max(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_01d5:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_01da:  stelem     [Engine]Engine.BoundingBox
    IL_01df:  ldloc.3
    IL_01e0:  ldc.i4.1
    IL_01e1:  add
    IL_01e2:  stloc.3
    IL_01e3:  ldloc.3
    IL_01e4:  ldc.i4.6
    IL_01e5:  blt        IL_0091

    IL_01ea:  ret
  } // end of method WireBlock::Initialize

  .method public hidebysig newslot virtual final 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldnull
    IL_0001:  ret
  } // end of method WireBlock::CreateElectricElement

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
    // 代码大小       26 (0x1a)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_0)
    IL_0000:  ldarg.2
    IL_0001:  ldarg.3
    IL_0002:  call       bool Game.WireBlock::WireExistsOnFace(int32,
                                                               int32)
    IL_0007:  brtrue.s   IL_0013

    IL_0009:  ldloca.s   V_0
    IL_000b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_0011:  ldloc.0
    IL_0012:  ret

    IL_0013:  ldc.i4.2
    IL_0014:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0019:  ret
  } // end of method WireBlock::GetConnectorType

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.WireBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brtrue.s   IL_001b

    IL_0015:  ldc.i4     0x7fffffff
    IL_001a:  ret

    IL_001b:  ldc.i4.1
    IL_001c:  ldloca.s   V_0
    IL_001e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0023:  ldc.i4.s   31
    IL_0025:  and
    IL_0026:  shl
    IL_0027:  ret
  } // end of method WireBlock::GetConnectionMask

  .method public hidebysig newslot virtual final 
          instance int32  GetConnectedWireFacesMask(int32 'value',
                                                    int32 face) cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             bool V_2,
             int32 V_3)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  call       bool Game.WireBlock::WireExistsOnFace(int32,
                                                               int32)
    IL_0009:  brfalse.s  IL_005c

    IL_000b:  ldarg.2
    IL_000c:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0011:  stloc.1
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.2
    IL_0014:  ldc.i4.0
    IL_0015:  stloc.3
    IL_0016:  br.s       IL_0043

    IL_0018:  ldloc.3
    IL_0019:  ldarg.2
    IL_001a:  bne.un.s   IL_0027

    IL_001c:  ldloc.0
    IL_001d:  ldc.i4.1
    IL_001e:  ldloc.3
    IL_001f:  ldc.i4.s   31
    IL_0021:  and
    IL_0022:  shl
    IL_0023:  or
    IL_0024:  stloc.0
    IL_0025:  br.s       IL_003f

    IL_0027:  ldloc.3
    IL_0028:  ldloc.1
    IL_0029:  beq.s      IL_003f

    IL_002b:  ldarg.1
    IL_002c:  ldloc.3
    IL_002d:  call       bool Game.WireBlock::WireExistsOnFace(int32,
                                                               int32)
    IL_0032:  brfalse.s  IL_003f

    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.1
    IL_0036:  ldloc.3
    IL_0037:  ldc.i4.s   31
    IL_0039:  and
    IL_003a:  shl
    IL_003b:  or
    IL_003c:  stloc.0
    IL_003d:  ldc.i4.1
    IL_003e:  stloc.2
    IL_003f:  ldloc.3
    IL_0040:  ldc.i4.1
    IL_0041:  add
    IL_0042:  stloc.3
    IL_0043:  ldloc.3
    IL_0044:  ldc.i4.6
    IL_0045:  blt.s      IL_0018

    IL_0047:  ldloc.2
    IL_0048:  brfalse.s  IL_005c

    IL_004a:  ldarg.1
    IL_004b:  ldloc.1
    IL_004c:  call       bool Game.WireBlock::WireExistsOnFace(int32,
                                                               int32)
    IL_0051:  brfalse.s  IL_005c

    IL_0053:  ldloc.0
    IL_0054:  ldc.i4.1
    IL_0055:  ldloc.1
    IL_0056:  ldc.i4.s   31
    IL_0058:  and
    IL_0059:  shl
    IL_005a:  or
    IL_005b:  stloc.0
    IL_005c:  ldloc.0
    IL_005d:  ret
  } // end of method WireBlock::GetConnectedWireFacesMask

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.BoundingBox[] V_0,
             int32 V_1)
    IL_0000:  ldc.i4.6
    IL_0001:  newarr     [Engine]Engine.BoundingBox
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br.s       IL_003a

    IL_000b:  ldarg.2
    IL_000c:  ldloc.1
    IL_000d:  call       bool Game.WireBlock::WireExistsOnFace(int32,
                                                               int32)
    IL_0012:  brfalse.s  IL_0029

    IL_0014:  ldloc.0
    IL_0015:  ldloc.1
    IL_0016:  ldarg.0
    IL_0017:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.WireBlock::m_collisionBoxesByFace
    IL_001c:  ldloc.1
    IL_001d:  ldelem     [Engine]Engine.BoundingBox
    IL_0022:  stelem     [Engine]Engine.BoundingBox
    IL_0027:  br.s       IL_0036

    IL_0029:  ldloc.0
    IL_002a:  ldloc.1
    IL_002b:  ldelema    [Engine]Engine.BoundingBox
    IL_0030:  initobj    [Engine]Engine.BoundingBox
    IL_0036:  ldloc.1
    IL_0037:  ldc.i4.1
    IL_0038:  add
    IL_0039:  stloc.1
    IL_003a:  ldloc.1
    IL_003b:  ldc.i4.6
    IL_003c:  blt.s      IL_000b

    IL_003e:  ldloc.0
    IL_003f:  ret
  } // end of method WireBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  9
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_002f

    IL_0004:  ldarg.3
    IL_0005:  ldloc.0
    IL_0006:  call       bool Game.WireBlock::WireExistsOnFace(int32,
                                                               int32)
    IL_000b:  brfalse.s  IL_002b

    IL_000d:  ldarg.1
    IL_000e:  ldarg.3
    IL_000f:  ldarg.s    x
    IL_0011:  ldarg.s    y
    IL_0013:  ldarg.s    z
    IL_0015:  ldloc.0
    IL_0016:  ldc.r4     0.0
    IL_001b:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0020:  ldarg.2
    IL_0021:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0026:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_002b:  ldloc.0
    IL_002c:  ldc.i4.1
    IL_002d:  add
    IL_002e:  stloc.0
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.6
    IL_0031:  blt.s      IL_0004

    IL_0033:  ret
  } // end of method WireBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             valuetype [Engine]Engine.Color V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.WireBlock::GetPaintColor(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloca.s   V_0
    IL_000a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_000f:  brtrue.s   IL_0022

    IL_0011:  ldc.r4     1.25
    IL_0016:  ldsfld     valuetype [Engine]Engine.Color Game.WireBlock::WireColor
    IL_001b:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(float32,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0020:  br.s       IL_0033

    IL_0022:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0027:  ldloca.s   V_0
    IL_0029:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_002e:  ldelem     [Engine]Engine.Color
    IL_0033:  stloc.1
    IL_0034:  ldarg.1
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.BlockMesh Game.WireBlock::m_standaloneBlockMesh
    IL_003b:  ldloc.1
    IL_003c:  ldc.r4     2.
    IL_0041:  ldarg.3
    IL_0042:  mul
    IL_0043:  ldarg.s    matrix
    IL_0045:  ldarg.s    environmentData
    IL_0047:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_004c:  ret
  } // end of method WireBlock::DrawBlock

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       192 (0xc0)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             int32 V_1,
             class Game.Block V_2,
             int32 V_3,
             int32 V_4,
             valuetype Game.BlockPlacementData V_5)
    IL_0000:  ldarg.s    raycastResult
    IL_0002:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0007:  ldfld      int32 Game.CellFace::Face
    IL_000c:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0011:  stloc.0
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0018:  ldarg.s    raycastResult
    IL_001a:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_001f:  ldfld      int32 Game.CellFace::X
    IL_0024:  ldloc.0
    IL_0025:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002a:  add
    IL_002b:  ldarg.s    raycastResult
    IL_002d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0032:  ldfld      int32 Game.CellFace::Y
    IL_0037:  ldloc.0
    IL_0038:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_003d:  add
    IL_003e:  ldarg.s    raycastResult
    IL_0040:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0045:  ldfld      int32 Game.CellFace::Z
    IL_004a:  ldloc.0
    IL_004b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0050:  add
    IL_0051:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0056:  dup
    IL_0057:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_005c:  stloc.1
    IL_005d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0062:  ldloc.1
    IL_0063:  ldelem.ref
    IL_0064:  stloc.2
    IL_0065:  call       int32 Game.WireBlock::GetWireFacesBitmask(int32)
    IL_006a:  stloc.3
    IL_006b:  ldloc.3
    IL_006c:  ldc.i4.1
    IL_006d:  ldarg.s    raycastResult
    IL_006f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0074:  ldfld      int32 Game.CellFace::Face
    IL_0079:  ldc.i4.s   31
    IL_007b:  and
    IL_007c:  shl
    IL_007d:  or
    IL_007e:  stloc.s    V_4
    IL_0080:  ldloc.s    V_4
    IL_0082:  ldloc.3
    IL_0083:  bne.un.s   IL_008d

    IL_0085:  ldloc.2
    IL_0086:  isinst     Game.WireBlock
    IL_008b:  brtrue.s   IL_00b5

    IL_008d:  ldloca.s   V_5
    IL_008f:  initobj    Game.BlockPlacementData
    IL_0095:  ldloca.s   V_5
    IL_0097:  ldarg.3
    IL_0098:  ldloc.s    V_4
    IL_009a:  call       int32 Game.WireBlock::SetWireFacesBitmask(int32,
                                                                   int32)
    IL_009f:  stfld      int32 Game.BlockPlacementData::Value
    IL_00a4:  ldloca.s   V_5
    IL_00a6:  ldarg.s    raycastResult
    IL_00a8:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00ad:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_00b2:  ldloc.s    V_5
    IL_00b4:  ret

    IL_00b5:  ldloca.s   V_5
    IL_00b7:  initobj    Game.BlockPlacementData
    IL_00bd:  ldloc.s    V_5
    IL_00bf:  ret
  } // end of method WireBlock::GetPlacementValue

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetDigValue(class Game.SubsystemTerrain terrain,
                      class Game.ComponentMiner componentMiner,
                      int32 'value',
                      int32 toolValue,
                      valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  4
    .locals init (int32 V_0,
             valuetype Game.BlockPlacementData V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.WireBlock::GetWireFacesBitmask(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.1
    IL_0009:  ldarg.s    raycastResult
    IL_000b:  ldfld      int32 Game.TerrainRaycastResult::CollisionBoxIndex
    IL_0010:  ldc.i4.s   31
    IL_0012:  and
    IL_0013:  shl
    IL_0014:  not
    IL_0015:  and
    IL_0016:  stloc.0
    IL_0017:  ldloca.s   V_1
    IL_0019:  initobj    Game.BlockPlacementData
    IL_001f:  ldloca.s   V_1
    IL_0021:  ldarg.3
    IL_0022:  ldloc.0
    IL_0023:  call       int32 Game.WireBlock::SetWireFacesBitmask(int32,
                                                                   int32)
    IL_0028:  stfld      int32 Game.BlockPlacementData::Value
    IL_002d:  ldloca.s   V_1
    IL_002f:  ldarg.s    raycastResult
    IL_0031:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0036:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_003b:  ldloc.1
    IL_003c:  ret
  } // end of method WireBlock::GetDigValue

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       101 (0x65)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             int32 V_1,
             valuetype Game.BlockDropValue V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.WireBlock::GetPaintColor(int32)
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  stloc.1
    IL_000a:  br.s       IL_0053

    IL_000c:  ldarg.2
    IL_000d:  ldloc.1
    IL_000e:  call       bool Game.WireBlock::WireExistsOnFace(int32,
                                                               int32)
    IL_0013:  brfalse.s  IL_004f

    IL_0015:  ldarg.3
    IL_0016:  ldloc.1
    IL_0017:  call       bool Game.WireBlock::WireExistsOnFace(int32,
                                                               int32)
    IL_001c:  brtrue.s   IL_004f

    IL_001e:  ldarg.s    dropValues
    IL_0020:  ldloca.s   V_2
    IL_0022:  initobj    Game.BlockDropValue
    IL_0028:  ldloca.s   V_2
    IL_002a:  ldc.i4     0x85
    IL_002f:  ldc.i4.0
    IL_0030:  ldc.i4.0
    IL_0031:  ldloc.0
    IL_0032:  call       int32 Game.WireBlock::SetColor(int32,
                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0037:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_003c:  stfld      int32 Game.BlockDropValue::Value
    IL_0041:  ldloca.s   V_2
    IL_0043:  ldc.i4.1
    IL_0044:  stfld      int32 Game.BlockDropValue::Count
    IL_0049:  ldloc.2
    IL_004a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_004f:  ldloc.1
    IL_0050:  ldc.i4.1
    IL_0051:  add
    IL_0052:  stloc.1
    IL_0053:  ldloc.1
    IL_0054:  ldc.i4.6
    IL_0055:  blt.s      IL_000c

    IL_0057:  ldarg.s    showDebris
    IL_0059:  ldarg.s    dropValues
    IL_005b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::get_Count()
    IL_0060:  ldc.i4.0
    IL_0061:  cgt
    IL_0063:  stind.i1
    IL_0064:  ret
  } // end of method WireBlock::GetDropValues

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 27 47 61 6D 65 2E 57 69 72 65 42 6C 6F 63   // ..'Game.WireBloc
                                                                                                                                                      6B 2B 3C 47 65 74 43 72 65 61 74 69 76 65 56 61   // k+<GetCreativeVa
                                                                                                                                                      6C 75 65 73 3E 64 5F 5F 31 35 00 00 )             // lues>d__15..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.WireBlock/'<GetCreativeValues>d__15'::.ctor(int32)
    IL_0007:  ret
  } // end of method WireBlock::GetCreativeValues

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain terrain,
                         int32 'value') cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.WireBlock::GetPaintColor(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloca.s   V_0
    IL_000a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_000f:  brtrue.s   IL_001a

    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  ldarg.2
    IL_0014:  call       instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0019:  ret

    IL_001a:  ldsfld     string[] Game.PaintBucketBlock::ColorDisplayNames
    IL_001f:  ldloca.s   V_0
    IL_0021:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0026:  ldelem.ref
    IL_0027:  ldstr      " "
    IL_002c:  ldarg.0
    IL_002d:  ldarg.1
    IL_002e:  ldarg.2
    IL_002f:  call       instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0034:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0039:  ret
  } // end of method WireBlock::GetDisplayName

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.WireBlock::GetColor(int32)
    IL_000b:  ret
  } // end of method WireBlock::GetPaintColor

  .method public hidebysig newslot virtual final 
          instance int32  Paint(class Game.SubsystemTerrain subsystemTerrain,
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
    IL_000a:  call       int32 Game.WireBlock::SetColor(int32,
                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_000f:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0014:  ret
  } // end of method WireBlock::Paint

  .method public hidebysig static bool  WireExistsOnFace(int32 'value',
                                                         int32 face) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.WireBlock::GetWireFacesBitmask(int32)
    IL_0006:  ldc.i4.1
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.s   31
    IL_000a:  and
    IL_000b:  shl
    IL_000c:  and
    IL_000d:  ldc.i4.0
    IL_000e:  cgt.un
    IL_0010:  ret
  } // end of method WireBlock::WireExistsOnFace

  .method public hidebysig static int32  GetWireFacesBitmask(int32 'value') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  ldc.i4     0x85
    IL_000b:  bne.un.s   IL_0017

    IL_000d:  ldarg.0
    IL_000e:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0013:  ldc.i4.s   63
    IL_0015:  and
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method WireBlock::GetWireFacesBitmask

  .method public hidebysig static int32  SetWireFacesBitmask(int32 'value',
                                                             int32 bitmask) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.s   -64
    IL_000a:  and
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.s   63
    IL_0010:  and
    IL_0011:  or
    IL_0012:  stloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldc.i4     0x85
    IL_0019:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_001e:  ldloc.0
    IL_001f:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0024:  ret
  } // end of method WireBlock::SetWireFacesBitmask

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<int32> 
          GetColor(int32 data) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   64
    IL_0003:  and
    IL_0004:  brfalse.s  IL_0012

    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.7
    IL_0008:  shr
    IL_0009:  ldc.i4.s   15
    IL_000b:  and
    IL_000c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0011:  ret

    IL_0012:  ldloca.s   V_0
    IL_0014:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_001a:  ldloc.0
    IL_001b:  ret
  } // end of method WireBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarga.s   color
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_0021

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4     0xfffff83f
    IL_000f:  and
    IL_0010:  ldc.i4.s   64
    IL_0012:  or
    IL_0013:  ldarga.s   color
    IL_0015:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_001a:  ldc.i4.s   15
    IL_001c:  and
    IL_001d:  ldc.i4.7
    IL_001e:  shl
    IL_001f:  or
    IL_0020:  ret

    IL_0021:  ldarg.0
    IL_0022:  ldc.i4     0xfffff83f
    IL_0027:  and
    IL_0028:  ret
  } // end of method WireBlock::SetColor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.WireBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.6
    IL_000d:  newarr     [Engine]Engine.BoundingBox
    IL_0012:  stfld      valuetype [Engine]Engine.BoundingBox[] Game.WireBlock::m_collisionBoxesByFace
    IL_0017:  ldarg.0
    IL_0018:  call       instance void Game.Block::.ctor()
    IL_001d:  ret
  } // end of method WireBlock::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.s   79
    IL_0002:  ldc.i4.s   36
    IL_0004:  ldc.i4.s   21
    IL_0006:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_000b:  stsfld     valuetype [Engine]Engine.Color Game.WireBlock::WireColor
    IL_0010:  ret
  } // end of method WireBlock::.cctor

} // end of class Game.WireBlock