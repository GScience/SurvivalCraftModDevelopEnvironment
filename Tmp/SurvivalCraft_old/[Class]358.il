.class public auto ansi beforefieldinit Game.PumpkinSoupBucketBlock
       extends Game.BucketBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetProceduralCraftingRecipes>d__5'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private class Game.CraftingRecipe '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field private int32 '<isDead>5__1'
    .field public class Game.PumpkinSoupBucketBlock '<>4__this'
    .field private int32 '<rot>5__2'
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
      IL_0008:  stfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       284 (0x11c)
      .maxstack  5
      .locals init (int32 V_0,
               class Game.CraftingRecipe V_1,
               int32 V_2,
               int32 V_3,
               int32 V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0013

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq        IL_00d7

      IL_0011:  ldc.i4.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.m1
      IL_0015:  stfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_001a:  ldarg.0
      IL_001b:  ldc.i4.0
      IL_001c:  stfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<isDead>5__1'
      IL_0021:  br         IL_010e

      IL_0026:  ldarg.0
      IL_0027:  ldc.i4.0
      IL_0028:  stfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<rot>5__2'
      IL_002d:  br         IL_00f0

      IL_0032:  newobj     instance void Game.CraftingRecipe::.ctor()
      IL_0037:  dup
      IL_0038:  ldc.i4.1
      IL_0039:  stfld      int32 Game.CraftingRecipe::ResultCount
      IL_003e:  dup
      IL_003f:  ldc.i4     0xfb
      IL_0044:  stfld      int32 Game.CraftingRecipe::ResultValue
      IL_0049:  dup
      IL_004a:  ldc.r4     1.
      IL_004f:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
      IL_0054:  dup
      IL_0055:  ldstr      "Cook pumpkin soup"
      IL_005a:  stfld      string Game.CraftingRecipe::Description
      IL_005f:  stloc.1
      IL_0060:  ldc.i4.0
      IL_0061:  ldc.i4.7
      IL_0062:  call       int32 Game.BasePumpkinBlock::SetSize(int32,
                                                                int32)
      IL_0067:  ldarg.0
      IL_0068:  ldfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<isDead>5__1'
      IL_006d:  ldc.i4.0
      IL_006e:  cgt.un
      IL_0070:  call       int32 Game.BasePumpkinBlock::SetIsDead(int32,
                                                                  bool)
      IL_0075:  stloc.2
      IL_0076:  ldarg.0
      IL_0077:  ldfld      class Game.PumpkinSoupBucketBlock Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>4__this'
      IL_007c:  ldc.i4     0x83
      IL_0081:  ldc.i4.0
      IL_0082:  ldloc.2
      IL_0083:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0088:  ldarg.0
      IL_0089:  ldfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<rot>5__2'
      IL_008e:  callvirt   instance int32 Game.Block::SetDamage(int32,
                                                                int32)
      IL_0093:  stloc.3
      IL_0094:  ldloc.1
      IL_0095:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_009a:  ldc.i4.0
      IL_009b:  ldstr      "pumpkin:"
      IL_00a0:  ldloc.3
      IL_00a1:  call       int32 Game.Terrain::ExtractData(int32)
      IL_00a6:  stloc.s    V_4
      IL_00a8:  ldloca.s   V_4
      IL_00aa:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_00af:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_00b4:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_00b9:  stelem.ref
      IL_00ba:  ldloc.1
      IL_00bb:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00c0:  ldc.i4.1
      IL_00c1:  ldstr      "waterbucket"
      IL_00c6:  stelem.ref
      IL_00c7:  ldarg.0
      IL_00c8:  ldloc.1
      IL_00c9:  stfld      class Game.CraftingRecipe Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
      IL_00ce:  ldarg.0
      IL_00cf:  ldc.i4.1
      IL_00d0:  stfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_00d5:  ldc.i4.1
      IL_00d6:  ret

      IL_00d7:  ldarg.0
      IL_00d8:  ldc.i4.m1
      IL_00d9:  stfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_00de:  ldarg.0
      IL_00df:  ldfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<rot>5__2'
      IL_00e4:  ldc.i4.1
      IL_00e5:  add
      IL_00e6:  stloc.s    V_4
      IL_00e8:  ldarg.0
      IL_00e9:  ldloc.s    V_4
      IL_00eb:  stfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<rot>5__2'
      IL_00f0:  ldarg.0
      IL_00f1:  ldfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<rot>5__2'
      IL_00f6:  ldc.i4.1
      IL_00f7:  ble        IL_0032

      IL_00fc:  ldarg.0
      IL_00fd:  ldfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<isDead>5__1'
      IL_0102:  ldc.i4.1
      IL_0103:  add
      IL_0104:  stloc.s    V_4
      IL_0106:  ldarg.0
      IL_0107:  ldloc.s    V_4
      IL_0109:  stfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<isDead>5__1'
      IL_010e:  ldarg.0
      IL_010f:  ldfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<isDead>5__1'
      IL_0114:  ldc.i4.1
      IL_0115:  ble        IL_0026

      IL_011a:  ldc.i4.0
      IL_011b:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance class Game.CraftingRecipe 
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> 
            'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.PumpkinSoupBucketBlock Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>4__this'
      IL_0030:  stfld      class Game.PumpkinSoupBucketBlock Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__5'

  .field public static literal int32 Index = int32(0x000000FB)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       292 (0x124)
    .maxstack  10
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_3)
    IL_0000:  ldstr      "Models/FullBucket"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Bucket"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Contents"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.BlockMesh Game.PumpkinSoupBucketBlock::m_standaloneBlockMesh
    IL_003f:  ldloc.0
    IL_0040:  ldstr      "Contents"
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_004b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0050:  stloc.3
    IL_0051:  ldloca.s   V_3
    IL_0053:  ldc.i4.0
    IL_0054:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0059:  ldloc.2
    IL_005a:  ldc.r4     180.
    IL_005f:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0064:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0069:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_006e:  ldc.r4     0.0
    IL_0073:  ldc.r4     -0.30000001
    IL_0078:  ldc.r4     0.0
    IL_007d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0082:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0087:  ldc.i4.0
    IL_0088:  ldc.i4.0
    IL_0089:  ldc.i4.0
    IL_008a:  ldc.i4.0
    IL_008b:  ldc.i4     0xc8
    IL_0090:  ldc.i4     0x82
    IL_0095:  ldc.i4.s   35
    IL_0097:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_009c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.BlockMesh Game.PumpkinSoupBucketBlock::m_standaloneBlockMesh
    IL_00a7:  ldc.r4     6.25e-002
    IL_00ac:  ldc.r4     0.4375
    IL_00b1:  ldc.r4     0.0
    IL_00b6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00bb:  ldc.i4.m1
    IL_00bc:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class Game.BlockMesh Game.PumpkinSoupBucketBlock::m_standaloneBlockMesh
    IL_00c7:  ldloc.0
    IL_00c8:  ldstr      "Bucket"
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00d3:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00d8:  stloc.3
    IL_00d9:  ldloca.s   V_3
    IL_00db:  ldc.i4.0
    IL_00dc:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00e1:  ldloc.1
    IL_00e2:  ldc.r4     180.
    IL_00e7:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00ec:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00f1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f6:  ldc.r4     0.0
    IL_00fb:  ldc.r4     -0.30000001
    IL_0100:  ldc.r4     0.0
    IL_0105:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_010a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_010f:  ldc.i4.0
    IL_0110:  ldc.i4.0
    IL_0111:  ldc.i4.0
    IL_0112:  ldc.i4.0
    IL_0113:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0118:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_011d:  ldarg.0
    IL_011e:  call       instance void Game.Block::Initialize()
    IL_0123:  ret
  } // end of method PumpkinSoupBucketBlock::Initialize

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.BlockMesh Game.PumpkinSoupBucketBlock::m_standaloneBlockMesh
    IL_0007:  ldarg.3
    IL_0008:  ldc.r4     2.
    IL_000d:  ldarg.s    size
    IL_000f:  mul
    IL_0010:  ldarg.s    matrix
    IL_0012:  ldarg.s    environmentData
    IL_0014:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0019:  ret
  } // end of method PumpkinSoupBucketBlock::DrawBlock

  .method public hidebysig virtual instance int32 
          GetDamageDestructionValue(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0xfc
    IL_0005:  ret
  } // end of method PumpkinSoupBucketBlock::GetDamageDestructionValue

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 3E 47 61 6D 65 2E 50 75 6D 70 6B 69 6E 53   // ..>Game.PumpkinS
                                                                                                                                                      6F 75 70 42 75 63 6B 65 74 42 6C 6F 63 6B 2B 3C   // oupBucketBlock+<
                                                                                                                                                      47 65 74 50 72 6F 63 65 64 75 72 61 6C 43 72 61   // GetProceduralCra
                                                                                                                                                      66 74 69 6E 67 52 65 63 69 70 65 73 3E 64 5F 5F   // ftingRecipes>d__
                                                                                                                                                      35 00 00 )                                        // 5..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.PumpkinSoupBucketBlock Game.PumpkinSoupBucketBlock/'<GetProceduralCraftingRecipes>d__5'::'<>4__this'
    IL_000e:  ret
  } // end of method PumpkinSoupBucketBlock::GetProceduralCraftingRecipes

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.PumpkinSoupBucketBlock::m_standaloneBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.BucketBlock::.ctor()
    IL_0011:  ret
  } // end of method PumpkinSoupBucketBlock::.ctor

} // end of class Game.PumpkinSoupBucketBlock