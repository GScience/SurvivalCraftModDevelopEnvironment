.class public auto ansi beforefieldinit Game.PaintBucketBlock
       extends Game.BucketBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__5'
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
      IL_0008:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__5'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__5'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       105 (0x69)
      .maxstack  5
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0010

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq.s      IL_0046

      IL_000e:  ldc.i4.0
      IL_000f:  ret

      IL_0010:  ldarg.0
      IL_0011:  ldc.i4.m1
      IL_0012:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_001e:  br.s       IL_005d

      IL_0020:  ldarg.0
      IL_0021:  ldc.i4     0x81
      IL_0026:  ldc.i4.0
      IL_0027:  ldc.i4.0
      IL_0028:  ldarg.0
      IL_0029:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_002e:  call       int32 Game.PaintBucketBlock::SetColor(int32,
                                                                 int32)
      IL_0033:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0038:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>2__current'
      IL_003d:  ldarg.0
      IL_003e:  ldc.i4.1
      IL_003f:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0044:  ldc.i4.1
      IL_0045:  ret

      IL_0046:  ldarg.0
      IL_0047:  ldc.i4.m1
      IL_0048:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_004d:  ldarg.0
      IL_004e:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_0053:  ldc.i4.1
      IL_0054:  add
      IL_0055:  stloc.1
      IL_0056:  ldarg.0
      IL_0057:  ldloc.1
      IL_0058:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_005d:  ldarg.0
      IL_005e:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<i>5__1'
      IL_0063:  ldc.i4.s   16
      IL_0065:  blt.s      IL_0020

      IL_0067:  ldc.i4.0
      IL_0068:  ret
    } // end of method '<GetCreativeValues>d__5'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__5'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__5'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.PaintBucketBlock/'<GetCreativeValues>d__5' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PaintBucketBlock/'<GetCreativeValues>d__5'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__5'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.PaintBucketBlock/'<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__5'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PaintBucketBlock/'<GetCreativeValues>d__5'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__5'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__5'

  .class auto ansi sealed nested private beforefieldinit '<GetProceduralCraftingRecipes>d__6'
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
    .field private int32 '<color>5__1'
    .field private string[] '<additives>5__2'
    .field private int32 '<additive>5__3'
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
      IL_0008:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__6'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__6'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       400 (0x190)
      .maxstack  8
      .locals init (int32 V_0,
               int32 V_1,
               class Game.CraftingRecipe V_2,
               class Game.CraftingRecipe V_3,
               int32 V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0013

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq        IL_014a

      IL_0011:  ldc.i4.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.m1
      IL_0015:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>1__state'
      IL_001a:  ldarg.0
      IL_001b:  ldc.i4.4
      IL_001c:  newarr     [System.Runtime]System.String
      IL_0021:  dup
      IL_0022:  ldc.i4.0
      IL_0023:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0028:  ldc.i4.s   43
      IL_002a:  ldelem.ref
      IL_002b:  ldfld      string Game.Block::CraftingId
      IL_0030:  stelem.ref
      IL_0031:  dup
      IL_0032:  ldc.i4.1
      IL_0033:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0038:  ldc.i4.s   24
      IL_003a:  ldelem.ref
      IL_003b:  ldfld      string Game.Block::CraftingId
      IL_0040:  stelem.ref
      IL_0041:  dup
      IL_0042:  ldc.i4.2
      IL_0043:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0048:  ldc.i4.s   103
      IL_004a:  ldelem.ref
      IL_004b:  ldfld      string Game.Block::CraftingId
      IL_0050:  stelem.ref
      IL_0051:  dup
      IL_0052:  ldc.i4.3
      IL_0053:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0058:  ldc.i4.s   22
      IL_005a:  ldelem.ref
      IL_005b:  ldfld      string Game.Block::CraftingId
      IL_0060:  stelem.ref
      IL_0061:  stfld      string[] Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<additives>5__2'
      IL_0066:  ldarg.0
      IL_0067:  ldc.i4.0
      IL_0068:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<color>5__1'
      IL_006d:  br         IL_0181

      IL_0072:  ldarg.0
      IL_0073:  ldc.i4.0
      IL_0074:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<additive>5__3'
      IL_0079:  br         IL_0163

      IL_007e:  ldarg.0
      IL_007f:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<color>5__1'
      IL_0084:  ldc.i4.1
      IL_0085:  ldarg.0
      IL_0086:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<additive>5__3'
      IL_008b:  ldc.i4.s   31
      IL_008d:  and
      IL_008e:  shl
      IL_008f:  call       int32 Game.PaintBucketBlock::CombineColors(int32,
                                                                      int32)
      IL_0094:  stloc.1
      IL_0095:  ldloc.1
      IL_0096:  ldarg.0
      IL_0097:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<color>5__1'
      IL_009c:  beq        IL_0151

      IL_00a1:  newobj     instance void Game.CraftingRecipe::.ctor()
      IL_00a6:  stloc.3
      IL_00a7:  ldloc.3
      IL_00a8:  ldstr      "Make {0} Paint"
      IL_00ad:  ldc.i4.1
      IL_00ae:  newarr     [System.Runtime]System.Object
      IL_00b3:  dup
      IL_00b4:  ldc.i4.0
      IL_00b5:  ldnull
      IL_00b6:  ldloc.1
      IL_00b7:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_00bc:  ldnull
      IL_00bd:  call       string Game.SubsystemPalette::GetName(class Game.SubsystemTerrain,
                                                                 valuetype [System.Runtime]System.Nullable`1<int32>,
                                                                 string)
      IL_00c2:  stelem.ref
      IL_00c3:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00c8:  stfld      string Game.CraftingRecipe::Description
      IL_00cd:  ldloc.3
      IL_00ce:  ldc.i4     0x81
      IL_00d3:  ldc.i4.0
      IL_00d4:  ldloc.1
      IL_00d5:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_00da:  stfld      int32 Game.CraftingRecipe::ResultValue
      IL_00df:  ldloc.3
      IL_00e0:  ldc.i4.1
      IL_00e1:  stfld      int32 Game.CraftingRecipe::ResultCount
      IL_00e6:  ldloc.3
      IL_00e7:  ldc.r4     1.
      IL_00ec:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
      IL_00f1:  ldloc.3
      IL_00f2:  stloc.2
      IL_00f3:  ldloc.2
      IL_00f4:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00f9:  ldc.i4.0
      IL_00fa:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00ff:  ldc.i4     0x81
      IL_0104:  ldelem.ref
      IL_0105:  ldfld      string Game.Block::CraftingId
      IL_010a:  ldstr      ":"
      IL_010f:  ldarg.0
      IL_0110:  ldflda     int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<color>5__1'
      IL_0115:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_011a:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_011f:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_0124:  stelem.ref
      IL_0125:  ldloc.2
      IL_0126:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_012b:  ldc.i4.1
      IL_012c:  ldarg.0
      IL_012d:  ldfld      string[] Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<additives>5__2'
      IL_0132:  ldarg.0
      IL_0133:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<additive>5__3'
      IL_0138:  ldelem.ref
      IL_0139:  stelem.ref
      IL_013a:  ldarg.0
      IL_013b:  ldloc.2
      IL_013c:  stfld      class Game.CraftingRecipe Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>2__current'
      IL_0141:  ldarg.0
      IL_0142:  ldc.i4.1
      IL_0143:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>1__state'
      IL_0148:  ldc.i4.1
      IL_0149:  ret

      IL_014a:  ldarg.0
      IL_014b:  ldc.i4.m1
      IL_014c:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>1__state'
      IL_0151:  ldarg.0
      IL_0152:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<additive>5__3'
      IL_0157:  ldc.i4.1
      IL_0158:  add
      IL_0159:  stloc.s    V_4
      IL_015b:  ldarg.0
      IL_015c:  ldloc.s    V_4
      IL_015e:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<additive>5__3'
      IL_0163:  ldarg.0
      IL_0164:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<additive>5__3'
      IL_0169:  ldc.i4.4
      IL_016a:  blt        IL_007e

      IL_016f:  ldarg.0
      IL_0170:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<color>5__1'
      IL_0175:  ldc.i4.1
      IL_0176:  add
      IL_0177:  stloc.s    V_4
      IL_0179:  ldarg.0
      IL_017a:  ldloc.s    V_4
      IL_017c:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<color>5__1'
      IL_0181:  ldarg.0
      IL_0182:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<color>5__1'
      IL_0187:  ldc.i4.s   16
      IL_0189:  blt        IL_0072

      IL_018e:  ldc.i4.0
      IL_018f:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__6'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance class Game.CraftingRecipe 
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__6'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetProceduralCraftingRecipes>d__6'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__6'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> 
            'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__6'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__6'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__6'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__6'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__6'

  .field public static literal int32 Index = int32(0x00000081)
  .field private class Game.BlockMesh m_standaloneBucketBlockMesh
  .field private class Game.BlockMesh m_standalonePaintBlockMesh
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       280 (0x118)
    .maxstack  8
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
    IL_003a:  ldfld      class Game.BlockMesh Game.PaintBucketBlock::m_standaloneBucketBlockMesh
    IL_003f:  ldloc.0
    IL_0040:  ldstr      "Bucket"
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_004b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0050:  stloc.3
    IL_0051:  ldloca.s   V_3
    IL_0053:  ldc.i4.0
    IL_0054:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0059:  ldloc.1
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
    IL_008b:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0090:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0095:  ldarg.0
    IL_0096:  ldfld      class Game.BlockMesh Game.PaintBucketBlock::m_standalonePaintBlockMesh
    IL_009b:  ldloc.0
    IL_009c:  ldstr      "Contents"
    IL_00a1:  ldc.i4.1
    IL_00a2:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00a7:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00ac:  stloc.3
    IL_00ad:  ldloca.s   V_3
    IL_00af:  ldc.i4.0
    IL_00b0:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00b5:  ldloc.2
    IL_00b6:  ldc.r4     180.
    IL_00bb:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00c0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00c5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ca:  ldc.r4     0.0
    IL_00cf:  ldc.r4     -0.30000001
    IL_00d4:  ldc.r4     0.0
    IL_00d9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00de:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e3:  ldc.i4.0
    IL_00e4:  ldc.i4.0
    IL_00e5:  ldc.i4.0
    IL_00e6:  ldc.i4.0
    IL_00e7:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00ec:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.BlockMesh Game.PaintBucketBlock::m_standalonePaintBlockMesh
    IL_00f7:  ldc.r4     0.9375
    IL_00fc:  ldc.r4     0.0
    IL_0101:  ldc.r4     0.0
    IL_0106:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_010b:  ldc.i4.m1
    IL_010c:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                   int32)
    IL_0111:  ldarg.0
    IL_0112:  call       instance void Game.Block::Initialize()
    IL_0117:  ret
  } // end of method PaintBucketBlock::Initialize

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  6
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.PaintBucketBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.BlockMesh Game.PaintBucketBlock::m_standaloneBucketBlockMesh
    IL_0013:  ldarg.3
    IL_0014:  ldc.r4     2.
    IL_0019:  ldarg.s    size
    IL_001b:  mul
    IL_001c:  ldarg.s    matrix
    IL_001e:  ldarg.s    environmentData
    IL_0020:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0025:  ldarg.1
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.BlockMesh Game.PaintBucketBlock::m_standalonePaintBlockMesh
    IL_002c:  ldarg.3
    IL_002d:  ldarg.s    environmentData
    IL_002f:  ldloc.0
    IL_0030:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0035:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.DrawBlockEnvironmentData,
                                                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_003a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_003f:  ldc.r4     2.
    IL_0044:  ldarg.s    size
    IL_0046:  mul
    IL_0047:  ldarg.s    matrix
    IL_0049:  ldarg.s    environmentData
    IL_004b:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0050:  ret
  } // end of method PaintBucketBlock::DrawBlock

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2D 47 61 6D 65 2E 50 61 69 6E 74 42 75 63   // ..-Game.PaintBuc
                                                                                                                                                      6B 65 74 42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65   // ketBlock+<GetCre
                                                                                                                                                      61 74 69 76 65 56 61 6C 75 65 73 3E 64 5F 5F 35   // ativeValues>d__5
                                                                                                                                                      00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PaintBucketBlock/'<GetCreativeValues>d__5'::.ctor(int32)
    IL_0007:  ret
  } // end of method PaintBucketBlock::GetCreativeValues

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 38 47 61 6D 65 2E 50 61 69 6E 74 42 75 63   // ..8Game.PaintBuc
                                                                                                                                                      6B 65 74 42 6C 6F 63 6B 2B 3C 47 65 74 50 72 6F   // ketBlock+<GetPro
                                                                                                                                                      63 65 64 75 72 61 6C 43 72 61 66 74 69 6E 67 52   // ceduralCraftingR
                                                                                                                                                      65 63 69 70 65 73 3E 64 5F 5F 36 00 00 )          // ecipes>d__6..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__6'::.ctor(int32)
    IL_0007:  ret
  } // end of method PaintBucketBlock::GetProceduralCraftingRecipes

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.PaintBucketBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldloc.0
    IL_000e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0013:  ldstr      "Paint Bucket"
    IL_0018:  call       string Game.SubsystemPalette::GetName(class Game.SubsystemTerrain,
                                                               valuetype [System.Runtime]System.Nullable`1<int32>,
                                                               string)
    IL_001d:  ret
  } // end of method PaintBucketBlock::GetDisplayName

  .method public hidebysig virtual instance int32 
          GetDamageDestructionValue(int32 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   90
    IL_0002:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0007:  ret
  } // end of method PaintBucketBlock::GetDamageDestructionValue

  .method public hidebysig static int32  GetColor(int32 data) cil managed
  {
    // 代码大小       5 (0x5)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   15
    IL_0003:  and
    IL_0004:  ret
  } // end of method PaintBucketBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  int32 color) cil managed
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
  } // end of method PaintBucketBlock::SetColor

  .method public hidebysig static valuetype [Engine]Engine.Vector4 
          ColorToCmyk(int32 color) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.1
    IL_0005:  shr
    IL_0006:  ldc.i4.1
    IL_0007:  and
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.2
    IL_000b:  shr
    IL_000c:  ldc.i4.1
    IL_000d:  and
    IL_000e:  stloc.1
    IL_000f:  ldarg.0
    IL_0010:  ldc.i4.3
    IL_0011:  shr
    IL_0012:  ldc.i4.1
    IL_0013:  and
    IL_0014:  stloc.2
    IL_0015:  conv.r4
    IL_0016:  ldloc.0
    IL_0017:  conv.r4
    IL_0018:  ldloc.1
    IL_0019:  conv.r4
    IL_001a:  ldloc.2
    IL_001b:  conv.r4
    IL_001c:  newobj     instance void [Engine]Engine.Vector4::.ctor(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32)
    IL_0021:  ret
  } // end of method PaintBucketBlock::ColorToCmyk

  .method public hidebysig static int32  CmykToColor(valuetype [Engine]Engine.Vector4 cmyk) cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0006:  ldc.r4     1.
    IL_000b:  bgt.un.s   IL_0061

    IL_000d:  ldarg.0
    IL_000e:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0013:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0018:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_001d:  conv.i4
    IL_001e:  ldarg.0
    IL_001f:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0024:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0029:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_002e:  conv.i4
    IL_002f:  stloc.0
    IL_0030:  ldarg.0
    IL_0031:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0036:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_003b:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0040:  conv.i4
    IL_0041:  stloc.1
    IL_0042:  ldarg.0
    IL_0043:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0048:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_004d:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0052:  conv.i4
    IL_0053:  stloc.2
    IL_0054:  ldloc.0
    IL_0055:  ldc.i4.1
    IL_0056:  shl
    IL_0057:  or
    IL_0058:  ldloc.1
    IL_0059:  ldc.i4.2
    IL_005a:  shl
    IL_005b:  or
    IL_005c:  ldloc.2
    IL_005d:  ldc.i4.3
    IL_005e:  shl
    IL_005f:  or
    IL_0060:  ret

    IL_0061:  ldc.i4.s   15
    IL_0063:  ret
  } // end of method PaintBucketBlock::CmykToColor

  .method public hidebysig static int32  CombineColors(int32 color1,
                                                       int32 color2) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       valuetype [Engine]Engine.Vector4 Game.PaintBucketBlock::ColorToCmyk(int32)
    IL_0006:  ldarg.1
    IL_0007:  call       valuetype [Engine]Engine.Vector4 Game.PaintBucketBlock::ColorToCmyk(int32)
    IL_000c:  call       valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::op_Addition(valuetype [Engine]Engine.Vector4,
                                                                                              valuetype [Engine]Engine.Vector4)
    IL_0011:  call       int32 Game.PaintBucketBlock::CmykToColor(valuetype [Engine]Engine.Vector4)
    IL_0016:  ret
  } // end of method PaintBucketBlock::CombineColors

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0006:  stfld      class Game.BlockMesh Game.PaintBucketBlock::m_standaloneBucketBlockMesh
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0011:  stfld      class Game.BlockMesh Game.PaintBucketBlock::m_standalonePaintBlockMesh
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.BucketBlock::.ctor()
    IL_001c:  ret
  } // end of method PaintBucketBlock::.ctor

} // end of class Game.PaintBucketBlock