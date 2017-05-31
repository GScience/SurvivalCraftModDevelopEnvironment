.class public auto ansi beforefieldinit Game.LightbulbBlock
       extends Game.MountedElectricElementBlock
       implements Game.IPaintableBlock
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
      IL_0008:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>l__initialThreadId'
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
      // 代码大小       153 (0x99)
      .maxstack  5
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  switch     ( 
                            IL_001b,
                            IL_003b,
                            IL_0076)
      IL_0019:  ldc.i4.0
      IL_001a:  ret

      IL_001b:  ldarg.0
      IL_001c:  ldc.i4.m1
      IL_001d:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0022:  ldarg.0
      IL_0023:  ldc.i4     0x8b
      IL_0028:  call       int32 Game.TerrainData::MakeBlockValue(int32)
      IL_002d:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>2__current'
      IL_0032:  ldarg.0
      IL_0033:  ldc.i4.1
      IL_0034:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0039:  ldc.i4.1
      IL_003a:  ret

      IL_003b:  ldarg.0
      IL_003c:  ldc.i4.m1
      IL_003d:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0042:  ldarg.0
      IL_0043:  ldc.i4.0
      IL_0044:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_0049:  br.s       IL_008d

      IL_004b:  ldarg.0
      IL_004c:  ldc.i4     0x8b
      IL_0051:  ldc.i4.0
      IL_0052:  ldc.i4.0
      IL_0053:  ldarg.0
      IL_0054:  ldfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_0059:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_005e:  call       int32 Game.LightbulbBlock::SetColor(int32,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_0063:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0068:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>2__current'
      IL_006d:  ldarg.0
      IL_006e:  ldc.i4.2
      IL_006f:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0074:  ldc.i4.1
      IL_0075:  ret

      IL_0076:  ldarg.0
      IL_0077:  ldc.i4.m1
      IL_0078:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_007d:  ldarg.0
      IL_007e:  ldfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_0083:  ldc.i4.1
      IL_0084:  add
      IL_0085:  stloc.1
      IL_0086:  ldarg.0
      IL_0087:  ldloc.1
      IL_0088:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_008d:  ldarg.0
      IL_008e:  ldfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_0093:  ldc.i4.s   16
      IL_0095:  blt.s      IL_004b

      IL_0097:  ldc.i4.0
      IL_0098:  ret
    } // end of method '<GetCreativeValues>d__9'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>2__current'
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
      IL_0001:  ldfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>2__current'
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
      .locals init (class Game.LightbulbBlock/'<GetCreativeValues>d__9' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.LightbulbBlock/'<GetCreativeValues>d__9'::.ctor(int32)
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.LightbulbBlock/'<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__9'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.LightbulbBlock/'<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.LightbulbBlock/'<GetCreativeValues>d__9'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__9'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__9'

  .field public static literal int32 Index = int32(0x0000008B)
  .field private class Game.BlockMesh m_standaloneBulbBlockMesh
  .field private class Game.BlockMesh m_standaloneSidesBlockMesh
  .field private class Game.BlockMesh[] m_bulbBlockMeshes
  .field private class Game.BlockMesh[] m_bulbBlockMeshesLit
  .field private class Game.BlockMesh[] m_sidesBlockMeshes
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxes
  .field private valuetype [Engine]Engine.Color m_copperColor
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       810 (0x32a)
    .maxstack  10
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             valuetype [Engine]Engine.Matrix V_5,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_6)
    IL_0000:  ldstr      "Models/Lightbulbs"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Top"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Sides"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldc.i4.0
    IL_003a:  stloc.s    V_4
    IL_003c:  br         IL_025b

    IL_0041:  ldloc.s    V_4
    IL_0043:  ldc.i4.4
    IL_0044:  bge.s      IL_009f

    IL_0046:  ldc.r4     1.5707964
    IL_004b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0050:  ldc.r4     0.0
    IL_0055:  ldc.r4     0.0
    IL_005a:  ldc.r4     -0.5
    IL_005f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0064:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0069:  ldloc.s    V_4
    IL_006b:  conv.r4
    IL_006c:  ldc.r4     3.1415927
    IL_0071:  mul
    IL_0072:  ldc.r4     2.
    IL_0077:  div
    IL_0078:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_007d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0082:  ldc.r4     0.5
    IL_0087:  ldc.r4     0.5
    IL_008c:  ldc.r4     0.5
    IL_0091:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0096:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_009b:  stloc.s    V_5
    IL_009d:  br.s       IL_00e1

    IL_009f:  ldloc.s    V_4
    IL_00a1:  ldc.i4.4
    IL_00a2:  bne.un.s   IL_00bc

    IL_00a4:  ldc.r4     0.5
    IL_00a9:  ldc.r4     0.0
    IL_00ae:  ldc.r4     0.5
    IL_00b3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00b8:  stloc.s    V_5
    IL_00ba:  br.s       IL_00e1

    IL_00bc:  ldc.r4     3.1415927
    IL_00c1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00c6:  ldc.r4     0.5
    IL_00cb:  ldc.r4     1.
    IL_00d0:  ldc.r4     0.5
    IL_00d5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00da:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00df:  stloc.s    V_5
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshes
    IL_00e7:  ldloc.s    V_4
    IL_00e9:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00ee:  stelem.ref
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshes
    IL_00f5:  ldloc.s    V_4
    IL_00f7:  ldelem.ref
    IL_00f8:  ldloc.0
    IL_00f9:  ldstr      "Top"
    IL_00fe:  ldc.i4.1
    IL_00ff:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0104:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0109:  stloc.s    V_6
    IL_010b:  ldloca.s   V_6
    IL_010d:  ldc.i4.0
    IL_010e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0113:  ldloc.1
    IL_0114:  ldloc.s    V_5
    IL_0116:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_011b:  ldc.i4.0
    IL_011c:  ldc.i4.0
    IL_011d:  ldc.i4.0
    IL_011e:  ldc.i4.0
    IL_011f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0124:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0129:  ldarg.0
    IL_012a:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshes
    IL_012f:  ldloc.s    V_4
    IL_0131:  ldelem.ref
    IL_0132:  ldc.r4     0.1875
    IL_0137:  ldc.r4     0.25
    IL_013c:  ldc.r4     0.0
    IL_0141:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0146:  ldc.i4.m1
    IL_0147:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_014c:  ldarg.0
    IL_014d:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshesLit
    IL_0152:  ldloc.s    V_4
    IL_0154:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0159:  stelem.ref
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshesLit
    IL_0160:  ldloc.s    V_4
    IL_0162:  ldelem.ref
    IL_0163:  ldloc.0
    IL_0164:  ldstr      "Top"
    IL_0169:  ldc.i4.1
    IL_016a:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_016f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0174:  stloc.s    V_6
    IL_0176:  ldloca.s   V_6
    IL_0178:  ldc.i4.0
    IL_0179:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_017e:  ldloc.1
    IL_017f:  ldloc.s    V_5
    IL_0181:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0186:  ldc.i4.1
    IL_0187:  ldc.i4.0
    IL_0188:  ldc.i4.0
    IL_0189:  ldc.i4.0
    IL_018a:  ldc.i4     0xff
    IL_018f:  ldc.i4     0xff
    IL_0194:  ldc.i4     0xe6
    IL_0199:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_019e:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01a3:  ldarg.0
    IL_01a4:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshesLit
    IL_01a9:  ldloc.s    V_4
    IL_01ab:  ldelem.ref
    IL_01ac:  ldc.r4     0.9375
    IL_01b1:  ldc.r4     0.0
    IL_01b6:  ldc.r4     0.0
    IL_01bb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01c0:  ldc.i4.m1
    IL_01c1:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_01c6:  ldarg.0
    IL_01c7:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_sidesBlockMeshes
    IL_01cc:  ldloc.s    V_4
    IL_01ce:  newobj     instance void Game.BlockMesh::.ctor()
    IL_01d3:  stelem.ref
    IL_01d4:  ldarg.0
    IL_01d5:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_sidesBlockMeshes
    IL_01da:  ldloc.s    V_4
    IL_01dc:  ldelem.ref
    IL_01dd:  ldloc.0
    IL_01de:  ldstr      "Sides"
    IL_01e3:  ldc.i4.1
    IL_01e4:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01e9:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01ee:  stloc.s    V_6
    IL_01f0:  ldloca.s   V_6
    IL_01f2:  ldc.i4.0
    IL_01f3:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01f8:  ldloc.2
    IL_01f9:  ldloc.s    V_5
    IL_01fb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0200:  ldc.i4.0
    IL_0201:  ldc.i4.0
    IL_0202:  ldc.i4.1
    IL_0203:  ldc.i4.0
    IL_0204:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0209:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_020e:  ldarg.0
    IL_020f:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_sidesBlockMeshes
    IL_0214:  ldloc.s    V_4
    IL_0216:  ldelem.ref
    IL_0217:  ldc.r4     0.9375
    IL_021c:  ldc.r4     0.1875
    IL_0221:  ldc.r4     0.0
    IL_0226:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_022b:  ldc.i4.m1
    IL_022c:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0231:  ldarg.0
    IL_0232:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.LightbulbBlock::m_collisionBoxes
    IL_0237:  ldloc.s    V_4
    IL_0239:  ldc.i4.1
    IL_023a:  newarr     [Engine]Engine.BoundingBox
    IL_023f:  dup
    IL_0240:  ldc.i4.0
    IL_0241:  ldarg.0
    IL_0242:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_sidesBlockMeshes
    IL_0247:  ldloc.s    V_4
    IL_0249:  ldelem.ref
    IL_024a:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_024f:  stelem     [Engine]Engine.BoundingBox
    IL_0254:  stelem.ref
    IL_0255:  ldloc.s    V_4
    IL_0257:  ldc.i4.1
    IL_0258:  add
    IL_0259:  stloc.s    V_4
    IL_025b:  ldloc.s    V_4
    IL_025d:  ldc.i4.6
    IL_025e:  blt        IL_0041

    IL_0263:  ldc.r4     -1.5707964
    IL_0268:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_026d:  ldc.r4     1.5707964
    IL_0272:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0277:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_027c:  stloc.3
    IL_027d:  ldarg.0
    IL_027e:  ldfld      class Game.BlockMesh Game.LightbulbBlock::m_standaloneBulbBlockMesh
    IL_0283:  ldloc.0
    IL_0284:  ldstr      "Top"
    IL_0289:  ldc.i4.1
    IL_028a:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_028f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0294:  stloc.s    V_6
    IL_0296:  ldloca.s   V_6
    IL_0298:  ldc.i4.0
    IL_0299:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_029e:  ldloc.1
    IL_029f:  ldloc.3
    IL_02a0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02a5:  ldc.i4.0
    IL_02a6:  ldc.i4.0
    IL_02a7:  ldc.i4.1
    IL_02a8:  ldc.i4.0
    IL_02a9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_02ae:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_02b3:  ldarg.0
    IL_02b4:  ldfld      class Game.BlockMesh Game.LightbulbBlock::m_standaloneBulbBlockMesh
    IL_02b9:  ldc.r4     0.1875
    IL_02be:  ldc.r4     0.25
    IL_02c3:  ldc.r4     0.0
    IL_02c8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_02cd:  ldc.i4.m1
    IL_02ce:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_02d3:  ldarg.0
    IL_02d4:  ldfld      class Game.BlockMesh Game.LightbulbBlock::m_standaloneSidesBlockMesh
    IL_02d9:  ldloc.0
    IL_02da:  ldstr      "Sides"
    IL_02df:  ldc.i4.1
    IL_02e0:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_02e5:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_02ea:  stloc.s    V_6
    IL_02ec:  ldloca.s   V_6
    IL_02ee:  ldc.i4.0
    IL_02ef:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_02f4:  ldloc.2
    IL_02f5:  ldloc.3
    IL_02f6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02fb:  ldc.i4.0
    IL_02fc:  ldc.i4.0
    IL_02fd:  ldc.i4.1
    IL_02fe:  ldc.i4.0
    IL_02ff:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0304:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0309:  ldarg.0
    IL_030a:  ldfld      class Game.BlockMesh Game.LightbulbBlock::m_standaloneSidesBlockMesh
    IL_030f:  ldc.r4     0.9375
    IL_0314:  ldc.r4     0.1875
    IL_0319:  ldc.r4     0.0
    IL_031e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0323:  ldc.i4.m1
    IL_0324:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0329:  ret
  } // end of method LightbulbBlock::Initialize

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2B 47 61 6D 65 2E 4C 69 67 68 74 62 75 6C   // ..+Game.Lightbul
                                                                                                                                                      62 42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65 61 74   // bBlock+<GetCreat
                                                                                                                                                      69 76 65 56 61 6C 75 65 73 3E 64 5F 5F 39 00 00 ) // iveValues>d__9..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.LightbulbBlock/'<GetCreativeValues>d__9'::.ctor(int32)
    IL_0007:  ret
  } // end of method LightbulbBlock::GetCreativeValues

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain terrain,
                         int32 'value') cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.LightbulbBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brtrue.s   IL_001b

    IL_0015:  ldstr      "Lightbulb"
    IL_001a:  ret

    IL_001b:  ldsfld     string[] Game.PaintBucketBlock::ColorDisplayNames
    IL_0020:  ldloca.s   V_0
    IL_0022:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0027:  ldelem.ref
    IL_0028:  ldstr      " Lightbulb"
    IL_002d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0032:  ret
  } // end of method LightbulbBlock::GetDisplayName

  .method public hidebysig virtual instance string 
          GetCategory(int32 'value') cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.LightbulbBlock::GetColor(int32)
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
  } // end of method LightbulbBlock::GetCategory

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.LightbulbBlock::GetMountingFace(int32)
    IL_000b:  ret
  } // end of method LightbulbBlock::GetFace

  .method public hidebysig virtual instance int32 
          GetEmittedLightAmount(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.LightbulbBlock::GetLightIntensity(int32)
    IL_000b:  ret
  } // end of method LightbulbBlock::GetEmittedLightAmount

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  5
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldc.i4     0x8b
    IL_000f:  ldc.i4.0
    IL_0010:  ldarg.3
    IL_0011:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0016:  ldarg.s    raycastResult
    IL_0018:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_001d:  ldfld      int32 Game.CellFace::Face
    IL_0022:  call       int32 Game.LightbulbBlock::SetMountingFace(int32,
                                                                    int32)
    IL_0027:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_002c:  stfld      int32 Game.BlockPlacementData::Value
    IL_0031:  ldloca.s   V_0
    IL_0033:  ldarg.s    raycastResult
    IL_0035:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_003a:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_003f:  ldloc.0
    IL_0040:  ret
  } // end of method LightbulbBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.LightbulbBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.s    dropValues
    IL_000e:  ldloca.s   V_1
    IL_0010:  initobj    Game.BlockDropValue
    IL_0016:  ldloca.s   V_1
    IL_0018:  ldc.i4     0x8b
    IL_001d:  ldc.i4.0
    IL_001e:  ldc.i4.0
    IL_001f:  ldloc.0
    IL_0020:  call       int32 Game.LightbulbBlock::SetColor(int32,
                                                             valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0025:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_002a:  stfld      int32 Game.BlockDropValue::Value
    IL_002f:  ldloca.s   V_1
    IL_0031:  ldc.i4.1
    IL_0032:  stfld      int32 Game.BlockDropValue::Count
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_003d:  ldarg.s    showDebris
    IL_003f:  ldc.i4.1
    IL_0040:  stind.i1
    IL_0041:  ret
  } // end of method LightbulbBlock::GetDropValues

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.LightbulbBlock::GetMountingFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.LightbulbBlock::m_collisionBoxes
    IL_0013:  ldlen
    IL_0014:  conv.i4
    IL_0015:  blt.s      IL_0019

    IL_0017:  ldnull
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.LightbulbBlock::m_collisionBoxes
    IL_001f:  ldloc.0
    IL_0020:  ldelem.ref
    IL_0021:  ret
  } // end of method LightbulbBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       276 (0x114)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.Nullable`1<int32> V_2,
             valuetype [Engine]Engine.Color V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_4,
             uint8 V_5,
             uint8 V_6,
             uint8 V_7)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.LightbulbBlock::GetMountingFace(int32)
    IL_000c:  stloc.0
    IL_000d:  dup
    IL_000e:  call       int32 Game.LightbulbBlock::GetLightIntensity(int32)
    IL_0013:  stloc.1
    IL_0014:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.LightbulbBlock::GetColor(int32)
    IL_0019:  stloc.2
    IL_001a:  ldloca.s   V_2
    IL_001c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0021:  brtrue.s   IL_002b

    IL_0023:  ldarg.0
    IL_0024:  ldfld      valuetype [Engine]Engine.Color Game.LightbulbBlock::m_copperColor
    IL_0029:  br.s       IL_003c

    IL_002b:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0030:  ldloca.s   V_2
    IL_0032:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0037:  ldelem     [Engine]Engine.Color
    IL_003c:  stloc.3
    IL_003d:  ldloc.0
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshes
    IL_0044:  ldlen
    IL_0045:  conv.i4
    IL_0046:  bge        IL_0113

    IL_004b:  ldloc.1
    IL_004c:  ldc.i4.0
    IL_004d:  bgt.s      IL_007b

    IL_004f:  ldarg.1
    IL_0050:  ldarg.0
    IL_0051:  ldarg.s    x
    IL_0053:  ldarg.s    y
    IL_0055:  ldarg.s    z
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshes
    IL_005d:  ldloc.0
    IL_005e:  ldelem.ref
    IL_005f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0064:  ldloca.s   V_4
    IL_0066:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_006c:  ldloc.s    V_4
    IL_006e:  ldarg.2
    IL_006f:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0074:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0079:  br.s       IL_00cf

    IL_007b:  ldc.i4     0xc3
    IL_0080:  ldloc.1
    IL_0081:  ldc.i4.4
    IL_0082:  mul
    IL_0083:  add
    IL_0084:  conv.u1
    IL_0085:  stloc.s    V_5
    IL_0087:  ldc.i4     0xb4
    IL_008c:  ldloc.1
    IL_008d:  ldc.i4.5
    IL_008e:  mul
    IL_008f:  add
    IL_0090:  conv.u1
    IL_0091:  stloc.s    V_6
    IL_0093:  ldc.i4     0xa5
    IL_0098:  ldloc.1
    IL_0099:  ldc.i4.6
    IL_009a:  mul
    IL_009b:  add
    IL_009c:  conv.u1
    IL_009d:  stloc.s    V_7
    IL_009f:  ldarg.1
    IL_00a0:  ldarg.0
    IL_00a1:  ldarg.s    x
    IL_00a3:  ldarg.s    y
    IL_00a5:  ldarg.s    z
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshesLit
    IL_00ad:  ldloc.0
    IL_00ae:  ldelem.ref
    IL_00af:  ldloc.s    V_5
    IL_00b1:  ldloc.s    V_6
    IL_00b3:  ldloc.s    V_7
    IL_00b5:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_00ba:  ldloca.s   V_4
    IL_00bc:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_00c2:  ldloc.s    V_4
    IL_00c4:  ldarg.2
    IL_00c5:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_00ca:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00cf:  ldarg.1
    IL_00d0:  ldarg.0
    IL_00d1:  ldarg.s    x
    IL_00d3:  ldarg.s    y
    IL_00d5:  ldarg.s    z
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.BlockMesh[] Game.LightbulbBlock::m_sidesBlockMeshes
    IL_00dd:  ldloc.0
    IL_00de:  ldelem.ref
    IL_00df:  ldloc.3
    IL_00e0:  ldloca.s   V_4
    IL_00e2:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_00e8:  ldloc.s    V_4
    IL_00ea:  ldarg.2
    IL_00eb:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_00f0:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_00f5:  ldarg.1
    IL_00f6:  ldarg.3
    IL_00f7:  ldarg.s    x
    IL_00f9:  ldarg.s    y
    IL_00fb:  ldarg.s    z
    IL_00fd:  ldloc.0
    IL_00fe:  ldc.r4     0.875
    IL_0103:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0108:  ldarg.2
    IL_0109:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_010e:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_0113:  ret
  } // end of method LightbulbBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             valuetype [Engine]Engine.Color V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.LightbulbBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0013:  brtrue.s   IL_001d

    IL_0015:  ldarg.0
    IL_0016:  ldfld      valuetype [Engine]Engine.Color Game.LightbulbBlock::m_copperColor
    IL_001b:  br.s       IL_002e

    IL_001d:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0022:  ldloca.s   V_0
    IL_0024:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0029:  ldelem     [Engine]Engine.Color
    IL_002e:  stloc.1
    IL_002f:  ldarg.1
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.BlockMesh Game.LightbulbBlock::m_standaloneSidesBlockMesh
    IL_0036:  ldloc.1
    IL_0037:  ldc.r4     2.
    IL_003c:  ldarg.3
    IL_003d:  mul
    IL_003e:  ldarg.s    matrix
    IL_0040:  ldarg.s    environmentData
    IL_0042:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0047:  ldarg.1
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.BlockMesh Game.LightbulbBlock::m_standaloneBulbBlockMesh
    IL_004e:  ldc.r4     2.
    IL_0053:  ldarg.3
    IL_0054:  mul
    IL_0055:  ldarg.s    matrix
    IL_0057:  ldarg.s    environmentData
    IL_0059:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_005e:  ret
  } // end of method LightbulbBlock::DrawBlock

  .method public hidebysig newslot virtual final 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.LightbulbBlock::GetColor(int32)
    IL_000b:  ret
  } // end of method LightbulbBlock::GetPaintColor

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
    IL_000a:  call       int32 Game.LightbulbBlock::SetColor(int32,
                                                             valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_000f:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0014:  ret
  } // end of method LightbulbBlock::Paint

  .method public hidebysig virtual instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  ldarg.0
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_000d:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0012:  ldarg.2
    IL_0013:  newobj     instance void Game.LightBulbElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                            valuetype Game.CellFace,
                                                                            int32)
    IL_0018:  ret
  } // end of method LightbulbBlock::CreateElectricElement

  .method public hidebysig virtual instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.3
    IL_0009:  ldloc.0
    IL_000a:  bne.un.s   IL_0026

    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  ldarg.s    connectorFace
    IL_0010:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0015:  stloc.1
    IL_0016:  ldloca.s   V_1
    IL_0018:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_001d:  brfalse.s  IL_0026

    IL_001f:  ldc.i4.0
    IL_0020:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0025:  ret

    IL_0026:  ldloca.s   V_2
    IL_0028:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_002e:  ldloc.2
    IL_002f:  ret
  } // end of method LightbulbBlock::GetConnectorType

  .method public hidebysig static int32  GetMountingFace(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  and
    IL_0003:  ret
  } // end of method LightbulbBlock::GetMountingFace

  .method public hidebysig static int32  SetMountingFace(int32 data,
                                                         int32 face) cil managed
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
  } // end of method LightbulbBlock::SetMountingFace

  .method public hidebysig static int32  GetLightIntensity(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  shr
    IL_0003:  ldc.i4.s   15
    IL_0005:  and
    IL_0006:  ret
  } // end of method LightbulbBlock::GetLightIntensity

  .method public hidebysig static int32  SetLightIntensity(int32 data,
                                                           int32 intensity) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -121
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.s   15
    IL_0007:  and
    IL_0008:  ldc.i4.3
    IL_0009:  shl
    IL_000a:  or
    IL_000b:  ret
  } // end of method LightbulbBlock::SetLightIntensity

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<int32> 
          GetColor(int32 data) cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x80
    IL_0006:  and
    IL_0007:  brfalse.s  IL_0015

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.8
    IL_000b:  shr
    IL_000c:  ldc.i4.s   15
    IL_000e:  and
    IL_000f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0014:  ret

    IL_0015:  ldloca.s   V_0
    IL_0017:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_001d:  ldloc.0
    IL_001e:  ret
  } // end of method LightbulbBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarga.s   color
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_0024

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4     0xfffff07f
    IL_000f:  and
    IL_0010:  ldc.i4     0x80
    IL_0015:  or
    IL_0016:  ldarga.s   color
    IL_0018:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_001d:  ldc.i4.s   15
    IL_001f:  and
    IL_0020:  ldc.i4.8
    IL_0021:  shl
    IL_0022:  or
    IL_0023:  ret

    IL_0024:  ldarg.0
    IL_0025:  ldc.i4     0xfffff07f
    IL_002a:  and
    IL_002b:  ret
  } // end of method LightbulbBlock::SetColor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.LightbulbBlock::m_standaloneBulbBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.LightbulbBlock::m_standaloneSidesBlockMesh
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.6
    IL_0018:  newarr     Game.BlockMesh
    IL_001d:  stfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshes
    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.6
    IL_0024:  newarr     Game.BlockMesh
    IL_0029:  stfld      class Game.BlockMesh[] Game.LightbulbBlock::m_bulbBlockMeshesLit
    IL_002e:  ldarg.0
    IL_002f:  ldc.i4.6
    IL_0030:  newarr     Game.BlockMesh
    IL_0035:  stfld      class Game.BlockMesh[] Game.LightbulbBlock::m_sidesBlockMeshes
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4.6
    IL_003c:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0041:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.LightbulbBlock::m_collisionBoxes
    IL_0046:  ldarg.0
    IL_0047:  ldc.i4.s   118
    IL_0049:  ldc.i4.s   56
    IL_004b:  ldc.i4.s   32
    IL_004d:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0052:  stfld      valuetype [Engine]Engine.Color Game.LightbulbBlock::m_copperColor
    IL_0057:  ldarg.0
    IL_0058:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_005d:  ret
  } // end of method LightbulbBlock::.ctor

} // end of class Game.LightbulbBlock