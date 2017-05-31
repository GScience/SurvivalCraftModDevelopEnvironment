.class public auto ansi beforefieldinit Game.PaintBucketBlock
       extends Game.BucketBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__7'
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
      IL_0008:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__7'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetCreativeValues>d__7'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       105 (0x69)
      .maxstack  5
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>1__state'
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
      IL_0012:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<i>5__1'
      IL_001e:  br.s       IL_005d

      IL_0020:  ldarg.0
      IL_0021:  ldc.i4     0x81
      IL_0026:  ldc.i4.0
      IL_0027:  ldc.i4.0
      IL_0028:  ldarg.0
      IL_0029:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<i>5__1'
      IL_002e:  call       int32 Game.PaintBucketBlock::SetColor(int32,
                                                                 int32)
      IL_0033:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0038:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>2__current'
      IL_003d:  ldarg.0
      IL_003e:  ldc.i4.1
      IL_003f:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_0044:  ldc.i4.1
      IL_0045:  ret

      IL_0046:  ldarg.0
      IL_0047:  ldc.i4.m1
      IL_0048:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_004d:  ldarg.0
      IL_004e:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<i>5__1'
      IL_0053:  ldc.i4.1
      IL_0054:  add
      IL_0055:  stloc.1
      IL_0056:  ldarg.0
      IL_0057:  ldloc.1
      IL_0058:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<i>5__1'
      IL_005d:  ldarg.0
      IL_005e:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<i>5__1'
      IL_0063:  ldc.i4.s   16
      IL_0065:  blt.s      IL_0020

      IL_0067:  ldc.i4.0
      IL_0068:  ret
    } // end of method '<GetCreativeValues>d__7'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__7'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__7'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__7'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.PaintBucketBlock/'<GetCreativeValues>d__7' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PaintBucketBlock/'<GetCreativeValues>d__7'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetCreativeValues>d__7'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__7'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.PaintBucketBlock/'<GetCreativeValues>d__7'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__7'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PaintBucketBlock/'<GetCreativeValues>d__7'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__7'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__7'

  .class auto ansi sealed nested private beforefieldinit '<GetProceduralCraftingRecipes>d__8'
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
      IL_0008:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__8'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__8'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       389 (0x185)
      .maxstack  7
      .locals init (int32 V_0,
               int32 V_1,
               class Game.CraftingRecipe V_2,
               class Game.CraftingRecipe V_3,
               int32 V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0013

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq        IL_013f

      IL_0011:  ldc.i4.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.m1
      IL_0015:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>1__state'
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
      IL_0061:  stfld      string[] Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<additives>5__2'
      IL_0066:  ldarg.0
      IL_0067:  ldc.i4.0
      IL_0068:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<color>5__1'
      IL_006d:  br         IL_0176

      IL_0072:  ldarg.0
      IL_0073:  ldc.i4.0
      IL_0074:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<additive>5__3'
      IL_0079:  br         IL_0158

      IL_007e:  ldarg.0
      IL_007f:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<color>5__1'
      IL_0084:  ldc.i4.1
      IL_0085:  ldarg.0
      IL_0086:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<additive>5__3'
      IL_008b:  ldc.i4.s   31
      IL_008d:  and
      IL_008e:  shl
      IL_008f:  call       int32 Game.PaintBucketBlock::CombineColors(int32,
                                                                      int32)
      IL_0094:  stloc.1
      IL_0095:  ldloc.1
      IL_0096:  ldarg.0
      IL_0097:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<color>5__1'
      IL_009c:  beq        IL_0146

      IL_00a1:  newobj     instance void Game.CraftingRecipe::.ctor()
      IL_00a6:  stloc.3
      IL_00a7:  ldloc.3
      IL_00a8:  ldstr      "Make {0} paint"
      IL_00ad:  ldc.i4.1
      IL_00ae:  newarr     [System.Runtime]System.Object
      IL_00b3:  dup
      IL_00b4:  ldc.i4.0
      IL_00b5:  ldsfld     string[] Game.PaintBucketBlock::ColorDisplayNames
      IL_00ba:  ldloc.1
      IL_00bb:  ldelem.ref
      IL_00bc:  stelem.ref
      IL_00bd:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00c2:  stfld      string Game.CraftingRecipe::Description
      IL_00c7:  ldloc.3
      IL_00c8:  ldc.i4     0x81
      IL_00cd:  ldc.i4.0
      IL_00ce:  ldloc.1
      IL_00cf:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_00d4:  stfld      int32 Game.CraftingRecipe::ResultValue
      IL_00d9:  ldloc.3
      IL_00da:  ldc.i4.1
      IL_00db:  stfld      int32 Game.CraftingRecipe::ResultCount
      IL_00e0:  ldloc.3
      IL_00e1:  ldc.r4     1.
      IL_00e6:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
      IL_00eb:  ldloc.3
      IL_00ec:  stloc.2
      IL_00ed:  ldloc.2
      IL_00ee:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00f3:  ldc.i4.0
      IL_00f4:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00f9:  ldc.i4     0x81
      IL_00fe:  ldelem.ref
      IL_00ff:  ldfld      string Game.Block::CraftingId
      IL_0104:  ldstr      ":"
      IL_0109:  ldarg.0
      IL_010a:  ldflda     int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<color>5__1'
      IL_010f:  call       instance string [System.Runtime]System.Int32::ToString()
      IL_0114:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_0119:  stelem.ref
      IL_011a:  ldloc.2
      IL_011b:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0120:  ldc.i4.1
      IL_0121:  ldarg.0
      IL_0122:  ldfld      string[] Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<additives>5__2'
      IL_0127:  ldarg.0
      IL_0128:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<additive>5__3'
      IL_012d:  ldelem.ref
      IL_012e:  stelem.ref
      IL_012f:  ldarg.0
      IL_0130:  ldloc.2
      IL_0131:  stfld      class Game.CraftingRecipe Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>2__current'
      IL_0136:  ldarg.0
      IL_0137:  ldc.i4.1
      IL_0138:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>1__state'
      IL_013d:  ldc.i4.1
      IL_013e:  ret

      IL_013f:  ldarg.0
      IL_0140:  ldc.i4.m1
      IL_0141:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>1__state'
      IL_0146:  ldarg.0
      IL_0147:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<additive>5__3'
      IL_014c:  ldc.i4.1
      IL_014d:  add
      IL_014e:  stloc.s    V_4
      IL_0150:  ldarg.0
      IL_0151:  ldloc.s    V_4
      IL_0153:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<additive>5__3'
      IL_0158:  ldarg.0
      IL_0159:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<additive>5__3'
      IL_015e:  ldc.i4.4
      IL_015f:  blt        IL_007e

      IL_0164:  ldarg.0
      IL_0165:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<color>5__1'
      IL_016a:  ldc.i4.1
      IL_016b:  add
      IL_016c:  stloc.s    V_4
      IL_016e:  ldarg.0
      IL_016f:  ldloc.s    V_4
      IL_0171:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<color>5__1'
      IL_0176:  ldarg.0
      IL_0177:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<color>5__1'
      IL_017c:  ldc.i4.s   16
      IL_017e:  blt        IL_0072

      IL_0183:  ldc.i4.0
      IL_0184:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__8'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance class Game.CraftingRecipe 
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__8'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetProceduralCraftingRecipes>d__8'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__8'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> 
            'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__8'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__8'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__8'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__8'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__8'

  .field public static literal int32 Index = int32(0x00000081)
  .field public static initonly valuetype [Engine]Engine.Color[] PaintColors
  .field public static initonly string[] ColorDisplayNames
  .field private static initonly string[] m_displayNames
  .field private class Game.BlockMesh[] m_standaloneBlockMeshesByColor
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       337 (0x151)
    .maxstack  9
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_5)
    IL_0000:  ldstr      "Models/PaintBucket"
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
    IL_0023:  ldstr      "Paint"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldc.i4.0
    IL_003a:  stloc.3
    IL_003b:  br.s       IL_0059

    IL_003d:  ldsfld     string[] Game.PaintBucketBlock::m_displayNames
    IL_0042:  ldloc.3
    IL_0043:  ldsfld     string[] Game.PaintBucketBlock::ColorDisplayNames
    IL_0048:  ldloc.3
    IL_0049:  ldelem.ref
    IL_004a:  ldstr      " Paint Bucket"
    IL_004f:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0054:  stelem.ref
    IL_0055:  ldloc.3
    IL_0056:  ldc.i4.1
    IL_0057:  add
    IL_0058:  stloc.3
    IL_0059:  ldloc.3
    IL_005a:  ldc.i4.s   16
    IL_005c:  blt.s      IL_003d

    IL_005e:  ldc.i4.0
    IL_005f:  stloc.s    V_4
    IL_0061:  br         IL_0141

    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.BlockMesh[] Game.PaintBucketBlock::m_standaloneBlockMeshesByColor
    IL_006c:  ldloc.s    V_4
    IL_006e:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0073:  stelem.ref
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.BlockMesh[] Game.PaintBucketBlock::m_standaloneBlockMeshesByColor
    IL_007a:  ldloc.s    V_4
    IL_007c:  ldelem.ref
    IL_007d:  ldloc.0
    IL_007e:  ldstr      "Bucket"
    IL_0083:  ldc.i4.1
    IL_0084:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0089:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_008e:  stloc.s    V_5
    IL_0090:  ldloca.s   V_5
    IL_0092:  ldc.i4.0
    IL_0093:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0098:  ldloc.1
    IL_0099:  ldc.r4     180.
    IL_009e:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00a3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00a8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ad:  ldc.r4     0.0
    IL_00b2:  ldc.r4     -0.30000001
    IL_00b7:  ldc.r4     0.0
    IL_00bc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00c1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00c6:  ldc.i4.0
    IL_00c7:  ldc.i4.0
    IL_00c8:  ldc.i4.0
    IL_00c9:  ldc.i4.0
    IL_00ca:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00cf:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      class Game.BlockMesh[] Game.PaintBucketBlock::m_standaloneBlockMeshesByColor
    IL_00da:  ldloc.s    V_4
    IL_00dc:  ldelem.ref
    IL_00dd:  ldloc.0
    IL_00de:  ldstr      "Paint"
    IL_00e3:  ldc.i4.1
    IL_00e4:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00e9:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00ee:  stloc.s    V_5
    IL_00f0:  ldloca.s   V_5
    IL_00f2:  ldc.i4.0
    IL_00f3:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00f8:  ldloc.2
    IL_00f9:  ldc.r4     180.
    IL_00fe:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0103:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0108:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_010d:  ldc.r4     0.0
    IL_0112:  ldc.r4     -0.30000001
    IL_0117:  ldc.r4     0.0
    IL_011c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0121:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0126:  ldc.i4.0
    IL_0127:  ldc.i4.0
    IL_0128:  ldc.i4.0
    IL_0129:  ldc.i4.0
    IL_012a:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_012f:  ldloc.s    V_4
    IL_0131:  ldelem     [Engine]Engine.Color
    IL_0136:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_013b:  ldloc.s    V_4
    IL_013d:  ldc.i4.1
    IL_013e:  add
    IL_013f:  stloc.s    V_4
    IL_0141:  ldloc.s    V_4
    IL_0143:  ldc.i4.s   16
    IL_0145:  blt        IL_0066

    IL_014a:  ldarg.0
    IL_014b:  call       instance void Game.Block::Initialize()
    IL_0150:  ret
  } // end of method PaintBucketBlock::Initialize

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
    IL_0006:  call       int32 Game.PaintBucketBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.BlockMesh[] Game.PaintBucketBlock::m_standaloneBlockMeshesByColor
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
  } // end of method PaintBucketBlock::DrawBlock

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2D 47 61 6D 65 2E 50 61 69 6E 74 42 75 63   // ..-Game.PaintBuc
                                                                                                                                                      6B 65 74 42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65   // ketBlock+<GetCre
                                                                                                                                                      61 74 69 76 65 56 61 6C 75 65 73 3E 64 5F 5F 37   // ativeValues>d__7
                                                                                                                                                      00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PaintBucketBlock/'<GetCreativeValues>d__7'::.ctor(int32)
    IL_0007:  ret
  } // end of method PaintBucketBlock::GetCreativeValues

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 38 47 61 6D 65 2E 50 61 69 6E 74 42 75 63   // ..8Game.PaintBuc
                                                                                                                                                      6B 65 74 42 6C 6F 63 6B 2B 3C 47 65 74 50 72 6F   // ketBlock+<GetPro
                                                                                                                                                      63 65 64 75 72 61 6C 43 72 61 66 74 69 6E 67 52   // ceduralCraftingR
                                                                                                                                                      65 63 69 70 65 73 3E 64 5F 5F 38 00 00 )          // ecipes>d__8..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PaintBucketBlock/'<GetProceduralCraftingRecipes>d__8'::.ctor(int32)
    IL_0007:  ret
  } // end of method PaintBucketBlock::GetProceduralCraftingRecipes

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.PaintBucketBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldsfld     string[] Game.PaintBucketBlock::m_displayNames
    IL_0011:  ldloc.0
    IL_0012:  ldelem.ref
    IL_0013:  ret
  } // end of method PaintBucketBlock::GetDisplayName

  .method public hidebysig virtual instance int32 
          GetDamageDestructionValue(int32 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   90
    IL_0002:  call       int32 Game.TerrainData::MakeBlockValue(int32)
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
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  newarr     Game.BlockMesh
    IL_0008:  stfld      class Game.BlockMesh[] Game.PaintBucketBlock::m_standaloneBlockMeshesByColor
    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.BucketBlock::.ctor()
    IL_0013:  ret
  } // end of method PaintBucketBlock::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       548 (0x224)
    .maxstack  6
    IL_0000:  ldc.i4.s   16
    IL_0002:  newarr     [Engine]Engine.Color
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4     0xff
    IL_000e:  ldc.i4     0xff
    IL_0013:  ldc.i4     0xff
    IL_0018:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_001d:  stelem     [Engine]Engine.Color
    IL_0022:  dup
    IL_0023:  ldc.i4.1
    IL_0024:  ldc.i4     0xb5
    IL_0029:  ldc.i4     0xff
    IL_002e:  ldc.i4     0xff
    IL_0033:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0038:  stelem     [Engine]Engine.Color
    IL_003d:  dup
    IL_003e:  ldc.i4.2
    IL_003f:  ldc.i4     0xff
    IL_0044:  ldc.i4     0xb5
    IL_0049:  ldc.i4     0xff
    IL_004e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0053:  stelem     [Engine]Engine.Color
    IL_0058:  dup
    IL_0059:  ldc.i4.3
    IL_005a:  ldc.i4     0xaa
    IL_005f:  ldc.i4     0xb5
    IL_0064:  ldc.i4     0xff
    IL_0069:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_006e:  stelem     [Engine]Engine.Color
    IL_0073:  dup
    IL_0074:  ldc.i4.4
    IL_0075:  ldc.i4     0xff
    IL_007a:  ldc.i4     0xf0
    IL_007f:  ldc.i4     0xa0
    IL_0084:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0089:  stelem     [Engine]Engine.Color
    IL_008e:  dup
    IL_008f:  ldc.i4.5
    IL_0090:  ldc.i4     0xb5
    IL_0095:  ldc.i4     0xff
    IL_009a:  ldc.i4     0xb5
    IL_009f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00a4:  stelem     [Engine]Engine.Color
    IL_00a9:  dup
    IL_00aa:  ldc.i4.6
    IL_00ab:  ldc.i4     0xff
    IL_00b0:  ldc.i4     0xb5
    IL_00b5:  ldc.i4     0xa0
    IL_00ba:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00bf:  stelem     [Engine]Engine.Color
    IL_00c4:  dup
    IL_00c5:  ldc.i4.7
    IL_00c6:  ldc.i4     0xb5
    IL_00cb:  ldc.i4     0xb5
    IL_00d0:  ldc.i4     0xb5
    IL_00d5:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00da:  stelem     [Engine]Engine.Color
    IL_00df:  dup
    IL_00e0:  ldc.i4.8
    IL_00e1:  ldc.i4.s   112
    IL_00e3:  ldc.i4.s   112
    IL_00e5:  ldc.i4.s   112
    IL_00e7:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00ec:  stelem     [Engine]Engine.Color
    IL_00f1:  dup
    IL_00f2:  ldc.i4.s   9
    IL_00f4:  ldc.i4.s   32
    IL_00f6:  ldc.i4.s   112
    IL_00f8:  ldc.i4.s   112
    IL_00fa:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00ff:  stelem     [Engine]Engine.Color
    IL_0104:  dup
    IL_0105:  ldc.i4.s   10
    IL_0107:  ldc.i4.s   112
    IL_0109:  ldc.i4.s   32
    IL_010b:  ldc.i4.s   112
    IL_010d:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0112:  stelem     [Engine]Engine.Color
    IL_0117:  dup
    IL_0118:  ldc.i4.s   11
    IL_011a:  ldc.i4.s   26
    IL_011c:  ldc.i4.s   52
    IL_011e:  ldc.i4     0x80
    IL_0123:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0128:  stelem     [Engine]Engine.Color
    IL_012d:  dup
    IL_012e:  ldc.i4.s   12
    IL_0130:  ldc.i4     0x91
    IL_0135:  ldc.i4.s   110
    IL_0137:  ldc.i4.s   32
    IL_0139:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_013e:  stelem     [Engine]Engine.Color
    IL_0143:  dup
    IL_0144:  ldc.i4.s   13
    IL_0146:  ldc.i4.s   24
    IL_0148:  ldc.i4.s   116
    IL_014a:  ldc.i4.s   24
    IL_014c:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0151:  stelem     [Engine]Engine.Color
    IL_0156:  dup
    IL_0157:  ldc.i4.s   14
    IL_0159:  ldc.i4     0x88
    IL_015e:  ldc.i4.s   32
    IL_0160:  ldc.i4.s   32
    IL_0162:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0167:  stelem     [Engine]Engine.Color
    IL_016c:  dup
    IL_016d:  ldc.i4.s   15
    IL_016f:  ldc.i4.s   24
    IL_0171:  ldc.i4.s   24
    IL_0173:  ldc.i4.s   24
    IL_0175:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_017a:  stelem     [Engine]Engine.Color
    IL_017f:  stsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0184:  ldc.i4.s   16
    IL_0186:  newarr     [System.Runtime]System.String
    IL_018b:  dup
    IL_018c:  ldc.i4.0
    IL_018d:  ldstr      "White"
    IL_0192:  stelem.ref
    IL_0193:  dup
    IL_0194:  ldc.i4.1
    IL_0195:  ldstr      "Pale Cyan"
    IL_019a:  stelem.ref
    IL_019b:  dup
    IL_019c:  ldc.i4.2
    IL_019d:  ldstr      "Pink"
    IL_01a2:  stelem.ref
    IL_01a3:  dup
    IL_01a4:  ldc.i4.3
    IL_01a5:  ldstr      "Pale Blue"
    IL_01aa:  stelem.ref
    IL_01ab:  dup
    IL_01ac:  ldc.i4.4
    IL_01ad:  ldstr      "Pale Yellow"
    IL_01b2:  stelem.ref
    IL_01b3:  dup
    IL_01b4:  ldc.i4.5
    IL_01b5:  ldstr      "Pale Green"
    IL_01ba:  stelem.ref
    IL_01bb:  dup
    IL_01bc:  ldc.i4.6
    IL_01bd:  ldstr      "Salmon"
    IL_01c2:  stelem.ref
    IL_01c3:  dup
    IL_01c4:  ldc.i4.7
    IL_01c5:  ldstr      "Light Gray"
    IL_01ca:  stelem.ref
    IL_01cb:  dup
    IL_01cc:  ldc.i4.8
    IL_01cd:  ldstr      "Gray"
    IL_01d2:  stelem.ref
    IL_01d3:  dup
    IL_01d4:  ldc.i4.s   9
    IL_01d6:  ldstr      "Cyan"
    IL_01db:  stelem.ref
    IL_01dc:  dup
    IL_01dd:  ldc.i4.s   10
    IL_01df:  ldstr      "Purple"
    IL_01e4:  stelem.ref
    IL_01e5:  dup
    IL_01e6:  ldc.i4.s   11
    IL_01e8:  ldstr      "Blue"
    IL_01ed:  stelem.ref
    IL_01ee:  dup
    IL_01ef:  ldc.i4.s   12
    IL_01f1:  ldstr      "Yellow"
    IL_01f6:  stelem.ref
    IL_01f7:  dup
    IL_01f8:  ldc.i4.s   13
    IL_01fa:  ldstr      "Green"
    IL_01ff:  stelem.ref
    IL_0200:  dup
    IL_0201:  ldc.i4.s   14
    IL_0203:  ldstr      "Red"
    IL_0208:  stelem.ref
    IL_0209:  dup
    IL_020a:  ldc.i4.s   15
    IL_020c:  ldstr      "Black"
    IL_0211:  stelem.ref
    IL_0212:  stsfld     string[] Game.PaintBucketBlock::ColorDisplayNames
    IL_0217:  ldc.i4.s   16
    IL_0219:  newarr     [System.Runtime]System.String
    IL_021e:  stsfld     string[] Game.PaintBucketBlock::m_displayNames
    IL_0223:  ret
  } // end of method PaintBucketBlock::.cctor

} // end of class Game.PaintBucketBlock