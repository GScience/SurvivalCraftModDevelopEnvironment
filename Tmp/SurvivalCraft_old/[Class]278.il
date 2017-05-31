.class public auto ansi beforefieldinit Game.GravestoneBlock
       extends Game.Block
{
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
      IL_0008:  stfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>l__initialThreadId'
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
      // 代码大小       106 (0x6a)
      .maxstack  4
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0010

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq.s      IL_0048

      IL_000e:  ldc.i4.0
      IL_000f:  ret

      IL_0010:  ldarg.0
      IL_0011:  ldc.i4.m1
      IL_0012:  stfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_001e:  br.s       IL_005f

      IL_0020:  ldc.i4.0
      IL_0021:  ldarg.0
      IL_0022:  ldfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_0027:  call       int32 Game.GravestoneBlock::SetVariant(int32,
                                                                  int32)
      IL_002c:  stloc.1
      IL_002d:  ldarg.0
      IL_002e:  ldc.i4     0xbd
      IL_0033:  ldc.i4.0
      IL_0034:  ldloc.1
      IL_0035:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_003a:  stfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>2__current'
      IL_003f:  ldarg.0
      IL_0040:  ldc.i4.1
      IL_0041:  stfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0046:  ldc.i4.1
      IL_0047:  ret

      IL_0048:  ldarg.0
      IL_0049:  ldc.i4.m1
      IL_004a:  stfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_004f:  ldarg.0
      IL_0050:  ldfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_0055:  ldc.i4.1
      IL_0056:  add
      IL_0057:  stloc.2
      IL_0058:  ldarg.0
      IL_0059:  ldloc.2
      IL_005a:  stfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_005f:  ldarg.0
      IL_0060:  ldfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_0065:  ldc.i4.8
      IL_0066:  blt.s      IL_0020

      IL_0068:  ldc.i4.0
      IL_0069:  ret
    } // end of method '<GetCreativeValues>d__9'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>2__current'
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
      IL_0001:  ldfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__9'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.GravestoneBlock/'<GetCreativeValues>d__9' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.GravestoneBlock/'<GetCreativeValues>d__9'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.GravestoneBlock/'<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__9'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.GravestoneBlock/'<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.GravestoneBlock/'<GetCreativeValues>d__9'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__9'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__9'

  .field public static literal int32 Index = int32(0x000000BD)
  .field private class Game.BlockMesh[] m_standaloneBlockMeshes
  .field private class Game.BlockMesh[] m_blockMeshes
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       528 (0x210)
    .maxstack  9
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
             string V_4,
             valuetype [Engine]Engine.Matrix V_5,
             int32 V_6,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_7,
             valuetype [Engine]Engine.Matrix V_8)
    IL_0000:  ldstr      "Models/Graves"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.1
    IL_000d:  br         IL_0201

    IL_0012:  ldloc.1
    IL_0013:  call       int32 Game.GravestoneBlock::GetVariant(int32)
    IL_0018:  stloc.2
    IL_0019:  ldloc.1
    IL_001a:  call       int32 Game.GravestoneBlock::GetRotation(int32)
    IL_001f:  brfalse.s  IL_0028

    IL_0021:  ldc.r4     1.5707964
    IL_0026:  br.s       IL_002d

    IL_0028:  ldc.r4     0.0
    IL_002d:  stloc.3
    IL_002e:  ldstr      "Grave"
    IL_0033:  ldloc.2
    IL_0034:  ldc.i4.4
    IL_0035:  rem
    IL_0036:  ldc.i4.1
    IL_0037:  add
    IL_0038:  stloc.s    V_6
    IL_003a:  ldloca.s   V_6
    IL_003c:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_0041:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0046:  stloc.s    V_4
    IL_0048:  ldloc.2
    IL_0049:  ldc.i4.4
    IL_004a:  clt
    IL_004c:  ldc.i4.0
    IL_004d:  ceq
    IL_004f:  ldloc.0
    IL_0050:  ldloc.s    V_4
    IL_0052:  ldc.i4.1
    IL_0053:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0058:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_005d:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0062:  stloc.s    V_5
    IL_0064:  ldarg.0
    IL_0065:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_blockMeshes
    IL_006a:  ldloc.1
    IL_006b:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0070:  stelem.ref
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_blockMeshes
    IL_0077:  ldloc.1
    IL_0078:  ldelem.ref
    IL_0079:  ldloc.0
    IL_007a:  ldloc.s    V_4
    IL_007c:  ldc.i4.1
    IL_007d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0082:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0087:  stloc.s    V_7
    IL_0089:  ldloca.s   V_7
    IL_008b:  ldc.i4.0
    IL_008c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0091:  ldloc.s    V_5
    IL_0093:  ldloc.3
    IL_0094:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0099:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_009e:  ldc.r4     0.5
    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ldc.r4     0.5
    IL_00ad:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00b2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b7:  ldc.i4.0
    IL_00b8:  ldc.i4.0
    IL_00b9:  ldc.i4.0
    IL_00ba:  ldc.i4.0
    IL_00bb:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00c0:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_standaloneBlockMeshes
    IL_00cb:  ldloc.1
    IL_00cc:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00d1:  stelem.ref
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_standaloneBlockMeshes
    IL_00d8:  ldloc.1
    IL_00d9:  ldelem.ref
    IL_00da:  ldloc.0
    IL_00db:  ldloc.s    V_4
    IL_00dd:  ldc.i4.1
    IL_00de:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00e3:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00e8:  stloc.s    V_7
    IL_00ea:  ldloca.s   V_7
    IL_00ec:  ldc.i4.0
    IL_00ed:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00f2:  ldloc.s    V_5
    IL_00f4:  ldc.r4     0.0
    IL_00f9:  ldc.r4     -0.5
    IL_00fe:  ldc.r4     0.0
    IL_0103:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0108:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_010d:  ldc.i4.0
    IL_010e:  ldc.i4.0
    IL_010f:  ldc.i4.0
    IL_0110:  ldc.i4.0
    IL_0111:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0116:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_011b:  brfalse    IL_01db

    IL_0120:  ldloc.0
    IL_0121:  ldstr      "Plinth"
    IL_0126:  ldc.i4.1
    IL_0127:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_012c:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0131:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0136:  stloc.s    V_8
    IL_0138:  ldarg.0
    IL_0139:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_blockMeshes
    IL_013e:  ldloc.1
    IL_013f:  ldelem.ref
    IL_0140:  ldloc.0
    IL_0141:  ldstr      "Plinth"
    IL_0146:  ldc.i4.1
    IL_0147:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_014c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0151:  stloc.s    V_7
    IL_0153:  ldloca.s   V_7
    IL_0155:  ldc.i4.0
    IL_0156:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_015b:  ldloc.s    V_8
    IL_015d:  ldloc.3
    IL_015e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0163:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0168:  ldc.r4     0.5
    IL_016d:  ldc.r4     0.0
    IL_0172:  ldc.r4     0.5
    IL_0177:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_017c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0181:  ldc.i4.0
    IL_0182:  ldc.i4.0
    IL_0183:  ldc.i4.0
    IL_0184:  ldc.i4.0
    IL_0185:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_018a:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_018f:  ldarg.0
    IL_0190:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_standaloneBlockMeshes
    IL_0195:  ldloc.1
    IL_0196:  ldelem.ref
    IL_0197:  ldloc.0
    IL_0198:  ldstr      "Plinth"
    IL_019d:  ldc.i4.1
    IL_019e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01a3:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01a8:  stloc.s    V_7
    IL_01aa:  ldloca.s   V_7
    IL_01ac:  ldc.i4.0
    IL_01ad:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01b2:  ldloc.s    V_8
    IL_01b4:  ldc.r4     0.0
    IL_01b9:  ldc.r4     -0.5
    IL_01be:  ldc.r4     0.0
    IL_01c3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01c8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01cd:  ldc.i4.0
    IL_01ce:  ldc.i4.0
    IL_01cf:  ldc.i4.0
    IL_01d0:  ldc.i4.0
    IL_01d1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01d6:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01db:  ldarg.0
    IL_01dc:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.GravestoneBlock::m_collisionBoxes
    IL_01e1:  ldloc.1
    IL_01e2:  ldc.i4.1
    IL_01e3:  newarr     [Engine]Engine.BoundingBox
    IL_01e8:  dup
    IL_01e9:  ldc.i4.0
    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_blockMeshes
    IL_01f0:  ldloc.1
    IL_01f1:  ldelem.ref
    IL_01f2:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_01f7:  stelem     [Engine]Engine.BoundingBox
    IL_01fc:  stelem.ref
    IL_01fd:  ldloc.1
    IL_01fe:  ldc.i4.1
    IL_01ff:  add
    IL_0200:  stloc.1
    IL_0201:  ldloc.1
    IL_0202:  ldc.i4.s   16
    IL_0204:  blt        IL_0012

    IL_0209:  ldarg.0
    IL_020a:  call       instance void Game.Block::Initialize()
    IL_020f:  ret
  } // end of method GravestoneBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       486 (0x1e6)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             bool V_2,
             int32 V_3,
             valuetype [Engine]Engine.Matrix V_4,
             float32 V_5,
             valuetype [Engine]Engine.Color V_6,
             float32 V_7,
             float32 V_8)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_blockMeshes
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge        IL_01e5

    IL_0015:  ldarg.s    y
    IL_0017:  ldc.i4.0
    IL_0018:  bgt.s      IL_001d

    IL_001a:  ldc.i4.0
    IL_001b:  br.s       IL_0030

    IL_001d:  ldarg.1
    IL_001e:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0023:  ldarg.s    x
    IL_0025:  ldarg.s    y
    IL_0027:  ldc.i4.1
    IL_0028:  sub
    IL_0029:  ldarg.s    z
    IL_002b:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0030:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0035:  stloc.1
    IL_0036:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_003b:  ldloc.1
    IL_003c:  ldelem.ref
    IL_003d:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_0042:  ldc.i4.1
    IL_0043:  ceq
    IL_0045:  ldc.i4.0
    IL_0046:  ceq
    IL_0048:  ldloc.1
    IL_0049:  ldc.i4.7
    IL_004a:  beq.s      IL_0057

    IL_004c:  ldloc.1
    IL_004d:  ldc.i4.4
    IL_004e:  beq.s      IL_0057

    IL_0050:  ldloc.1
    IL_0051:  ldc.i4.s   52
    IL_0053:  ceq
    IL_0055:  br.s       IL_0058

    IL_0057:  ldc.i4.1
    IL_0058:  stloc.2
    IL_0059:  ldarg.s    x
    IL_005b:  ldc.i4     0xac
    IL_0060:  ldarg.s    y
    IL_0062:  mul
    IL_0063:  add
    IL_0064:  ldc.i4     0x475f
    IL_0069:  ldarg.s    z
    IL_006b:  mul
    IL_006c:  add
    IL_006d:  call       uint32 [Engine]Engine.MathUtils::Hash(uint32)
    IL_0072:  ldc.i4     0xffff
    IL_0077:  and
    IL_0078:  stloc.3
    IL_0079:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_007e:  stloc.s    V_4
    IL_0080:  dup
    IL_0081:  brtrue     IL_0152

    IL_0086:  ldc.r4     0.2
    IL_008b:  ldloc.3
    IL_008c:  ldc.i4.s   16
    IL_008e:  rem
    IL_008f:  conv.r4
    IL_0090:  ldc.r4     7.5
    IL_0095:  div
    IL_0096:  ldc.r4     1.
    IL_009b:  sub
    IL_009c:  mul
    IL_009d:  stloc.s    V_7
    IL_009f:  ldc.r4     0.1
    IL_00a4:  ldloc.3
    IL_00a5:  ldc.i4.4
    IL_00a6:  shr
    IL_00a7:  ldc.i4.s   16
    IL_00a9:  rem
    IL_00aa:  conv.r4
    IL_00ab:  ldc.r4     7.5
    IL_00b0:  div
    IL_00b1:  ldc.r4     1.
    IL_00b6:  sub
    IL_00b7:  mul
    IL_00b8:  stloc.s    V_8
    IL_00ba:  ldloc.0
    IL_00bb:  call       int32 Game.GravestoneBlock::GetRotation(int32)
    IL_00c0:  brtrue.s   IL_010b

    IL_00c2:  ldc.r4     -0.5
    IL_00c7:  ldc.r4     0.0
    IL_00cc:  ldc.r4     -0.5
    IL_00d1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d6:  ldloc.s    V_7
    IL_00d8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00dd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e2:  ldloc.s    V_8
    IL_00e4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00e9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ee:  ldc.r4     0.5
    IL_00f3:  ldc.r4     0.0
    IL_00f8:  ldc.r4     0.5
    IL_00fd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0102:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0107:  stloc.s    V_4
    IL_0109:  br.s       IL_0152

    IL_010b:  ldc.r4     -0.5
    IL_0110:  ldc.r4     0.0
    IL_0115:  ldc.r4     -0.5
    IL_011a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_011f:  ldloc.s    V_7
    IL_0121:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0126:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_012b:  ldloc.s    V_8
    IL_012d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0132:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0137:  ldc.r4     0.5
    IL_013c:  ldc.r4     0.0
    IL_0141:  ldc.r4     0.5
    IL_0146:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_014b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0150:  stloc.s    V_4
    IL_0152:  brtrue.s   IL_0168

    IL_0154:  ldloc.3
    IL_0155:  ldc.i4.8
    IL_0156:  shr
    IL_0157:  ldc.i4.s   16
    IL_0159:  rem
    IL_015a:  conv.r4
    IL_015b:  ldc.r4     15.
    IL_0160:  div
    IL_0161:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0166:  br.s       IL_016d

    IL_0168:  ldc.r4     0.0
    IL_016d:  stloc.s    V_5
    IL_016f:  ldloc.2
    IL_0170:  brfalse.s  IL_019f

    IL_0172:  ldc.i4     0xd9
    IL_0177:  ldc.i4     0xce
    IL_017c:  ldc.i4.s   123
    IL_017e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0183:  ldc.i4     0xe5
    IL_0188:  ldc.i4     0xce
    IL_018d:  ldc.i4.s   123
    IL_018f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0194:  ldloc.s    V_5
    IL_0196:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_019b:  stloc.s    V_6
    IL_019d:  br.s       IL_01c1

    IL_019f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01a4:  ldc.i4     0xff
    IL_01a9:  ldc.i4     0xe9
    IL_01ae:  ldc.i4     0xc7
    IL_01b3:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01b8:  ldloc.s    V_5
    IL_01ba:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_01bf:  stloc.s    V_6
    IL_01c1:  ldarg.1
    IL_01c2:  ldarg.0
    IL_01c3:  ldarg.s    x
    IL_01c5:  ldarg.s    y
    IL_01c7:  ldarg.s    z
    IL_01c9:  ldarg.0
    IL_01ca:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_blockMeshes
    IL_01cf:  ldloc.0
    IL_01d0:  ldelem.ref
    IL_01d1:  ldloc.s    V_6
    IL_01d3:  ldloc.s    V_4
    IL_01d5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_01da:  ldarg.2
    IL_01db:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_01e0:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_01e5:  ret
  } // end of method GravestoneBlock::GenerateTerrainVertices

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
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_blockMeshes
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_0025

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.BlockMesh[] Game.GravestoneBlock::m_standaloneBlockMeshes
    IL_0019:  ldloc.0
    IL_001a:  ldelem.ref
    IL_001b:  ldarg.3
    IL_001c:  ldarg.s    matrix
    IL_001e:  ldarg.s    environmentData
    IL_0020:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0025:  ret
  } // end of method GravestoneBlock::DrawBlock

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.GravestoneBlock::m_collisionBoxes
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_001b

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.GravestoneBlock::m_collisionBoxes
    IL_0018:  ldloc.0
    IL_0019:  ldelem.ref
    IL_001a:  ret

    IL_001b:  ldarg.0
    IL_001c:  ldarg.1
    IL_001d:  ldarg.2
    IL_001e:  call       instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_0023:  ret
  } // end of method GravestoneBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       169 (0xa9)
    .maxstack  5
    .locals init (int32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype Game.BlockPlacementData V_3)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_000d:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0012:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0017:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_001c:  stloc.2
    IL_001d:  ldloca.s   V_2
    IL_001f:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0024:  dup
    IL_0025:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_002a:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_002f:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0034:  stloc.1
    IL_0035:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_003a:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_003f:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0044:  ldloc.1
    IL_0045:  ble.un.s   IL_0078

    IL_0047:  ldloca.s   V_3
    IL_0049:  initobj    Game.BlockPlacementData
    IL_004f:  ldloca.s   V_3
    IL_0051:  ldc.i4     0xbd
    IL_0056:  ldc.i4.0
    IL_0057:  ldloc.0
    IL_0058:  ldc.i4.0
    IL_0059:  call       int32 Game.GravestoneBlock::SetRotation(int32,
                                                                 int32)
    IL_005e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0063:  stfld      int32 Game.BlockPlacementData::Value
    IL_0068:  ldloca.s   V_3
    IL_006a:  ldarg.s    raycastResult
    IL_006c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0071:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0076:  ldloc.3
    IL_0077:  ret

    IL_0078:  ldloca.s   V_3
    IL_007a:  initobj    Game.BlockPlacementData
    IL_0080:  ldloca.s   V_3
    IL_0082:  ldc.i4     0xbd
    IL_0087:  ldc.i4.0
    IL_0088:  ldloc.0
    IL_0089:  ldc.i4.1
    IL_008a:  call       int32 Game.GravestoneBlock::SetRotation(int32,
                                                                 int32)
    IL_008f:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0094:  stfld      int32 Game.BlockPlacementData::Value
    IL_0099:  ldloca.s   V_3
    IL_009b:  ldarg.s    raycastResult
    IL_009d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00a2:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_00a7:  ldloc.3
    IL_00a8:  ret
  } // end of method GravestoneBlock::GetPlacementValue

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2C 47 61 6D 65 2E 47 72 61 76 65 73 74 6F   // ..,Game.Gravesto
                                                                                                                                                      6E 65 42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65 61   // neBlock+<GetCrea
                                                                                                                                                      74 69 76 65 56 61 6C 75 65 73 3E 64 5F 5F 39 00   // tiveValues>d__9.
                                                                                                                                                      00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.GravestoneBlock/'<GetCreativeValues>d__9'::.ctor(int32)
    IL_0007:  ret
  } // end of method GravestoneBlock::GetCreativeValues

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  5
    .locals init (valuetype Game.BlockDropValue V_0)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldc.i4.1
    IL_0003:  stind.i1
    IL_0004:  ldarg.s    dropValues
    IL_0006:  ldloca.s   V_0
    IL_0008:  initobj    Game.BlockDropValue
    IL_000e:  ldloca.s   V_0
    IL_0010:  ldc.i4     0xbd
    IL_0015:  ldc.i4.0
    IL_0016:  ldarg.2
    IL_0017:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_001c:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0021:  stfld      int32 Game.BlockDropValue::Value
    IL_0026:  ldloca.s   V_0
    IL_0028:  ldc.i4.1
    IL_0029:  stfld      int32 Game.BlockDropValue::Count
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0034:  ret
  } // end of method GravestoneBlock::GetDropValues

  .method public hidebysig static int32  GetRotation(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  and
    IL_0003:  ldc.i4.3
    IL_0004:  shr
    IL_0005:  ret
  } // end of method GravestoneBlock::GetRotation

  .method public hidebysig static int32  SetRotation(int32 data,
                                                     int32 rotation) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -9
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.3
    IL_0006:  shl
    IL_0007:  ldc.i4.8
    IL_0008:  and
    IL_0009:  or
    IL_000a:  ret
  } // end of method GravestoneBlock::SetRotation

  .method public hidebysig static int32  GetVariant(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  and
    IL_0003:  ret
  } // end of method GravestoneBlock::GetVariant

  .method public hidebysig static int32  SetVariant(int32 data,
                                                    int32 'variant') cil managed
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
  } // end of method GravestoneBlock::SetVariant

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  newarr     Game.BlockMesh
    IL_0008:  stfld      class Game.BlockMesh[] Game.GravestoneBlock::m_standaloneBlockMeshes
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.s   16
    IL_0010:  newarr     Game.BlockMesh
    IL_0015:  stfld      class Game.BlockMesh[] Game.GravestoneBlock::m_blockMeshes
    IL_001a:  ldarg.0
    IL_001b:  ldc.i4.s   16
    IL_001d:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0022:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.GravestoneBlock::m_collisionBoxes
    IL_0027:  ldarg.0
    IL_0028:  call       instance void Game.Block::.ctor()
    IL_002d:  ret
  } // end of method GravestoneBlock::.ctor

} // end of class Game.GravestoneBlock