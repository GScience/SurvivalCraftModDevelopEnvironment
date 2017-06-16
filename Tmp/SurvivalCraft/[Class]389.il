.class public auto ansi beforefieldinit Game.LedBlock
       extends Game.MountedElectricElementBlock
{
  .class auto ansi sealed nested private beforefieldinit '<GetProceduralCraftingRecipes>d__7'
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
      IL_0008:  stfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       256 (0x100)
      .maxstack  6
      .locals init (int32 V_0,
               class Game.CraftingRecipe V_1,
               int32 V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0013

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq        IL_00db

      IL_0011:  ldc.i4.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.m1
      IL_0015:  stfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_001a:  ldarg.0
      IL_001b:  ldc.i4.0
      IL_001c:  stfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<color>5__1'
      IL_0021:  br         IL_00f2

      IL_0026:  newobj     instance void Game.CraftingRecipe::.ctor()
      IL_002b:  dup
      IL_002c:  ldc.i4.4
      IL_002d:  stfld      int32 Game.CraftingRecipe::ResultCount
      IL_0032:  dup
      IL_0033:  ldc.i4     0x98
      IL_0038:  ldc.i4.0
      IL_0039:  ldc.i4.0
      IL_003a:  ldarg.0
      IL_003b:  ldfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<color>5__1'
      IL_0040:  call       int32 Game.LedBlock::SetColor(int32,
                                                         int32)
      IL_0045:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_004a:  stfld      int32 Game.CraftingRecipe::ResultValue
      IL_004f:  dup
      IL_0050:  ldc.i4.1
      IL_0051:  stfld      int32 Game.CraftingRecipe::RemainsCount
      IL_0056:  dup
      IL_0057:  ldc.i4.s   90
      IL_0059:  call       int32 Game.TerrainData::MakeBlockValue(int32)
      IL_005e:  stfld      int32 Game.CraftingRecipe::RemainsValue
      IL_0063:  dup
      IL_0064:  ldc.r4     0.0
      IL_0069:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
      IL_006e:  dup
      IL_006f:  ldstr      "Make colored LEDs from copper, glass and paint"
      IL_0074:  stfld      string Game.CraftingRecipe::Description
      IL_0079:  stloc.1
      IL_007a:  ldloc.1
      IL_007b:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0080:  ldc.i4.1
      IL_0081:  ldstr      "glass"
      IL_0086:  stelem.ref
      IL_0087:  ldloc.1
      IL_0088:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_008d:  ldc.i4.4
      IL_008e:  ldstr      "paintbucket:"
      IL_0093:  ldarg.0
      IL_0094:  ldflda     int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<color>5__1'
      IL_0099:  call       instance string [System.Runtime]System.Int32::ToString()
      IL_009e:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_00a3:  stelem.ref
      IL_00a4:  ldloc.1
      IL_00a5:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00aa:  ldc.i4.6
      IL_00ab:  ldstr      "copperingot"
      IL_00b0:  stelem.ref
      IL_00b1:  ldloc.1
      IL_00b2:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00b7:  ldc.i4.7
      IL_00b8:  ldstr      "copperingot"
      IL_00bd:  stelem.ref
      IL_00be:  ldloc.1
      IL_00bf:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00c4:  ldc.i4.8
      IL_00c5:  ldstr      "copperingot"
      IL_00ca:  stelem.ref
      IL_00cb:  ldarg.0
      IL_00cc:  ldloc.1
      IL_00cd:  stfld      class Game.CraftingRecipe Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>2__current'
      IL_00d2:  ldarg.0
      IL_00d3:  ldc.i4.1
      IL_00d4:  stfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_00d9:  ldc.i4.1
      IL_00da:  ret

      IL_00db:  ldarg.0
      IL_00dc:  ldc.i4.m1
      IL_00dd:  stfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_00e2:  ldarg.0
      IL_00e3:  ldfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<color>5__1'
      IL_00e8:  ldc.i4.1
      IL_00e9:  add
      IL_00ea:  stloc.2
      IL_00eb:  ldarg.0
      IL_00ec:  ldloc.2
      IL_00ed:  stfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<color>5__1'
      IL_00f2:  ldarg.0
      IL_00f3:  ldfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<color>5__1'
      IL_00f8:  ldc.i4.8
      IL_00f9:  blt        IL_0026

      IL_00fe:  ldc.i4.0
      IL_00ff:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance class Game.CraftingRecipe 
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetProceduralCraftingRecipes>d__7'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> 
            'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.LedBlock/'<GetProceduralCraftingRecipes>d__7' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__7'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__7'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__7'

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
      IL_0008:  stfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>l__initialThreadId'
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
      // 代码大小       104 (0x68)
      .maxstack  5
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>1__state'
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
      IL_0012:  stfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<i>5__1'
      IL_001e:  br.s       IL_005d

      IL_0020:  ldarg.0
      IL_0021:  ldc.i4     0x98
      IL_0026:  ldc.i4.0
      IL_0027:  ldc.i4.0
      IL_0028:  ldarg.0
      IL_0029:  ldfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<i>5__1'
      IL_002e:  call       int32 Game.LedBlock::SetColor(int32,
                                                         int32)
      IL_0033:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0038:  stfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>2__current'
      IL_003d:  ldarg.0
      IL_003e:  ldc.i4.1
      IL_003f:  stfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0044:  ldc.i4.1
      IL_0045:  ret

      IL_0046:  ldarg.0
      IL_0047:  ldc.i4.m1
      IL_0048:  stfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_004d:  ldarg.0
      IL_004e:  ldfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<i>5__1'
      IL_0053:  ldc.i4.1
      IL_0054:  add
      IL_0055:  stloc.1
      IL_0056:  ldarg.0
      IL_0057:  ldloc.1
      IL_0058:  stfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<i>5__1'
      IL_005d:  ldarg.0
      IL_005e:  ldfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<i>5__1'
      IL_0063:  ldc.i4.8
      IL_0064:  blt.s      IL_0020

      IL_0066:  ldc.i4.0
      IL_0067:  ret
    } // end of method '<GetCreativeValues>d__10'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>2__current'
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
      IL_0001:  ldfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>2__current'
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
      .locals init (class Game.LedBlock/'<GetCreativeValues>d__10' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.LedBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.LedBlock/'<GetCreativeValues>d__10'::.ctor(int32)
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.LedBlock/'<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__10'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.LedBlock/'<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.LedBlock/'<GetCreativeValues>d__10'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__10'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__10'

  .field public static literal int32 Index = int32(0x00000098)
  .field public static initonly valuetype [Engine]Engine.Color[] LedColors
  .field public static initonly string[] LedColorDisplayNames
  .field private class Game.BlockMesh[] m_standaloneBlockMeshesByColor
  .field private class Game.BlockMesh[] m_blockMeshesByData
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByData
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       594 (0x252)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.ModelMesh V_0,
             class [Engine]Engine.Graphics.ModelMesh V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             valuetype [Engine]Engine.Color V_5,
             valuetype [Engine]Engine.Matrix V_6,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_7,
             int32 V_8,
             int32 V_9,
             valuetype [Engine]Engine.Matrix V_10)
    IL_0000:  ldstr      "Models/Leds"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  dup
    IL_000b:  ldstr      "Led"
    IL_0010:  ldc.i4.1
    IL_0011:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0016:  stloc.0
    IL_0017:  ldstr      "LedBulb"
    IL_001c:  ldc.i4.1
    IL_001d:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0022:  stloc.1
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0029:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_002e:  stloc.2
    IL_002f:  ldloc.1
    IL_0030:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0035:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_003a:  stloc.3
    IL_003b:  ldc.i4.0
    IL_003c:  stloc.s    V_4
    IL_003e:  br         IL_0249

    IL_0043:  ldsfld     valuetype [Engine]Engine.Color[] Game.LedBlock::LedColors
    IL_0048:  ldloc.s    V_4
    IL_004a:  ldelem     [Engine]Engine.Color
    IL_004f:  stloc.s    V_5
    IL_0051:  ldloc.s    V_5
    IL_0053:  ldc.r4     0.5
    IL_0058:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_005d:  stloc.s    V_5
    IL_005f:  ldloca.s   V_5
    IL_0061:  ldc.i4     0xff
    IL_0066:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_006b:  ldc.r4     -1.5707964
    IL_0070:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0075:  ldc.r4     1.5707964
    IL_007a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_007f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0084:  stloc.s    V_6
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.BlockMesh[] Game.LedBlock::m_standaloneBlockMeshesByColor
    IL_008c:  ldloc.s    V_4
    IL_008e:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0093:  stelem.ref
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.BlockMesh[] Game.LedBlock::m_standaloneBlockMeshesByColor
    IL_009a:  ldloc.s    V_4
    IL_009c:  ldelem.ref
    IL_009d:  ldloc.0
    IL_009e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00a3:  stloc.s    V_7
    IL_00a5:  ldloca.s   V_7
    IL_00a7:  ldc.i4.0
    IL_00a8:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00ad:  ldloc.2
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b5:  ldc.i4.0
    IL_00b6:  ldc.i4.0
    IL_00b7:  ldc.i4.0
    IL_00b8:  ldc.i4.0
    IL_00b9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00be:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.BlockMesh[] Game.LedBlock::m_standaloneBlockMeshesByColor
    IL_00c9:  ldloc.s    V_4
    IL_00cb:  ldelem.ref
    IL_00cc:  ldloc.1
    IL_00cd:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00d2:  stloc.s    V_7
    IL_00d4:  ldloca.s   V_7
    IL_00d6:  ldc.i4.0
    IL_00d7:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00dc:  ldloc.3
    IL_00dd:  ldloc.s    V_6
    IL_00df:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e4:  ldc.i4.0
    IL_00e5:  ldc.i4.0
    IL_00e6:  ldc.i4.0
    IL_00e7:  ldc.i4.0
    IL_00e8:  ldloc.s    V_5
    IL_00ea:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00ef:  ldc.i4.0
    IL_00f0:  stloc.s    V_8
    IL_00f2:  br         IL_023b

    IL_00f7:  ldc.i4.0
    IL_00f8:  ldloc.s    V_4
    IL_00fa:  call       int32 Game.LedBlock::SetColor(int32,
                                                       int32)
    IL_00ff:  ldloc.s    V_8
    IL_0101:  call       int32 Game.LedBlock::SetMountingFace(int32,
                                                              int32)
    IL_0106:  stloc.s    V_9
    IL_0108:  ldloc.s    V_8
    IL_010a:  ldc.i4.4
    IL_010b:  bge.s      IL_0166

    IL_010d:  ldc.r4     1.5707964
    IL_0112:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0117:  ldc.r4     0.0
    IL_011c:  ldc.r4     0.0
    IL_0121:  ldc.r4     -0.5
    IL_0126:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_012b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0130:  ldloc.s    V_8
    IL_0132:  conv.r4
    IL_0133:  ldc.r4     3.1415927
    IL_0138:  mul
    IL_0139:  ldc.r4     2.
    IL_013e:  div
    IL_013f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0144:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0149:  ldc.r4     0.5
    IL_014e:  ldc.r4     0.5
    IL_0153:  ldc.r4     0.5
    IL_0158:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_015d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0162:  stloc.s    V_10
    IL_0164:  br.s       IL_01a8

    IL_0166:  ldloc.s    V_8
    IL_0168:  ldc.i4.4
    IL_0169:  bne.un.s   IL_0183

    IL_016b:  ldc.r4     0.5
    IL_0170:  ldc.r4     0.0
    IL_0175:  ldc.r4     0.5
    IL_017a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_017f:  stloc.s    V_10
    IL_0181:  br.s       IL_01a8

    IL_0183:  ldc.r4     3.1415927
    IL_0188:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_018d:  ldc.r4     0.5
    IL_0192:  ldc.r4     1.
    IL_0197:  ldc.r4     0.5
    IL_019c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01a1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01a6:  stloc.s    V_10
    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      class Game.BlockMesh[] Game.LedBlock::m_blockMeshesByData
    IL_01ae:  ldloc.s    V_9
    IL_01b0:  newobj     instance void Game.BlockMesh::.ctor()
    IL_01b5:  stelem.ref
    IL_01b6:  ldarg.0
    IL_01b7:  ldfld      class Game.BlockMesh[] Game.LedBlock::m_blockMeshesByData
    IL_01bc:  ldloc.s    V_9
    IL_01be:  ldelem.ref
    IL_01bf:  ldloc.0
    IL_01c0:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01c5:  stloc.s    V_7
    IL_01c7:  ldloca.s   V_7
    IL_01c9:  ldc.i4.0
    IL_01ca:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01cf:  ldloc.2
    IL_01d0:  ldloc.s    V_10
    IL_01d2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01d7:  ldc.i4.0
    IL_01d8:  ldc.i4.0
    IL_01d9:  ldc.i4.0
    IL_01da:  ldc.i4.0
    IL_01db:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01e0:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_01e5:  ldarg.0
    IL_01e6:  ldfld      class Game.BlockMesh[] Game.LedBlock::m_blockMeshesByData
    IL_01eb:  ldloc.s    V_9
    IL_01ed:  ldelem.ref
    IL_01ee:  ldloc.1
    IL_01ef:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01f4:  stloc.s    V_7
    IL_01f6:  ldloca.s   V_7
    IL_01f8:  ldc.i4.0
    IL_01f9:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01fe:  ldloc.3
    IL_01ff:  ldloc.s    V_10
    IL_0201:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0206:  ldc.i4.0
    IL_0207:  ldc.i4.0
    IL_0208:  ldc.i4.0
    IL_0209:  ldc.i4.0
    IL_020a:  ldloc.s    V_5
    IL_020c:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0211:  ldarg.0
    IL_0212:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.LedBlock::m_collisionBoxesByData
    IL_0217:  ldloc.s    V_9
    IL_0219:  ldc.i4.1
    IL_021a:  newarr     [Engine]Engine.BoundingBox
    IL_021f:  dup
    IL_0220:  ldc.i4.0
    IL_0221:  ldarg.0
    IL_0222:  ldfld      class Game.BlockMesh[] Game.LedBlock::m_blockMeshesByData
    IL_0227:  ldloc.s    V_9
    IL_0229:  ldelem.ref
    IL_022a:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_022f:  stelem     [Engine]Engine.BoundingBox
    IL_0234:  stelem.ref
    IL_0235:  ldloc.s    V_8
    IL_0237:  ldc.i4.1
    IL_0238:  add
    IL_0239:  stloc.s    V_8
    IL_023b:  ldloc.s    V_8
    IL_023d:  ldc.i4.6
    IL_023e:  blt        IL_00f7

    IL_0243:  ldloc.s    V_4
    IL_0245:  ldc.i4.1
    IL_0246:  add
    IL_0247:  stloc.s    V_4
    IL_0249:  ldloc.s    V_4
    IL_024b:  ldc.i4.8
    IL_024c:  blt        IL_0043

    IL_0251:  ret
  } // end of method LedBlock::Initialize

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 30 47 61 6D 65 2E 4C 65 64 42 6C 6F 63 6B   // ..0Game.LedBlock
                                                                                                                                                      2B 3C 47 65 74 50 72 6F 63 65 64 75 72 61 6C 43   // +<GetProceduralC
                                                                                                                                                      72 61 66 74 69 6E 67 52 65 63 69 70 65 73 3E 64   // raftingRecipes>d
                                                                                                                                                      5F 5F 37 00 00 )                                  // __7..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.LedBlock/'<GetProceduralCraftingRecipes>d__7'::.ctor(int32)
    IL_0007:  ret
  } // end of method LedBlock::GetProceduralCraftingRecipes

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.LedBlock::GetMountingFace(int32)
    IL_000b:  ret
  } // end of method LedBlock::GetFace

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.LedBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldsfld     string[] Game.LedBlock::LedColorDisplayNames
    IL_0011:  ldloc.0
    IL_0012:  ldelem.ref
    IL_0013:  ldstr      " LED"
    IL_0018:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_001d:  ret
  } // end of method LedBlock::GetDisplayName

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 26 47 61 6D 65 2E 4C 65 64 42 6C 6F 63 6B   // ..&Game.LedBlock
                                                                                                                                                      2B 3C 47 65 74 43 72 65 61 74 69 76 65 56 61 6C   // +<GetCreativeVal
                                                                                                                                                      75 65 73 3E 64 5F 5F 31 30 00 00 )                // ues>d__10..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.LedBlock/'<GetCreativeValues>d__10'::.ctor(int32)
    IL_0007:  ret
  } // end of method LedBlock::GetCreativeValues

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             valuetype Game.BlockPlacementData V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  ldarg.s    raycastResult
    IL_0008:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_000d:  ldfld      int32 Game.CellFace::Face
    IL_0012:  call       int32 Game.LedBlock::SetMountingFace(int32,
                                                              int32)
    IL_0017:  stloc.0
    IL_0018:  ldarg.3
    IL_0019:  ldloc.0
    IL_001a:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_001f:  stloc.1
    IL_0020:  ldloca.s   V_2
    IL_0022:  initobj    Game.BlockPlacementData
    IL_0028:  ldloca.s   V_2
    IL_002a:  ldloc.1
    IL_002b:  stfld      int32 Game.BlockPlacementData::Value
    IL_0030:  ldloca.s   V_2
    IL_0032:  ldarg.s    raycastResult
    IL_0034:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0039:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_003e:  ldloc.2
    IL_003f:  ret
  } // end of method LedBlock::GetPlacementValue

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
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.LedBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.s    dropValues
    IL_000e:  ldloca.s   V_1
    IL_0010:  initobj    Game.BlockDropValue
    IL_0016:  ldloca.s   V_1
    IL_0018:  ldc.i4     0x98
    IL_001d:  ldc.i4.0
    IL_001e:  ldc.i4.0
    IL_001f:  ldloc.0
    IL_0020:  call       int32 Game.LedBlock::SetColor(int32,
                                                       int32)
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
  } // end of method LedBlock::GetDropValues

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.LedBlock::m_collisionBoxesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  blt.s      IL_0014

    IL_0012:  ldnull
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.LedBlock::m_collisionBoxesByData
    IL_001a:  ldloc.0
    IL_001b:  ldelem.ref
    IL_001c:  ret
  } // end of method LedBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.BlockMesh[] Game.LedBlock::m_blockMeshesByData
    IL_000e:  ldlen
    IL_000f:  conv.i4
    IL_0010:  bge.s      IL_005f

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    y
    IL_0018:  ldarg.s    z
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.BlockMesh[] Game.LedBlock::m_blockMeshesByData
    IL_0020:  ldloc.0
    IL_0021:  ldelem.ref
    IL_0022:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0027:  ldloca.s   V_1
    IL_0029:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_002f:  ldloc.1
    IL_0030:  ldarg.2
    IL_0031:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0036:  callvirt   instance void Game.BlockGeometryGenerator::GenerateMeshVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         class Game.BlockMesh,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>,
                                                                                         class Game.TerrainGeometrySubset)
    IL_003b:  ldarg.1
    IL_003c:  ldarg.3
    IL_003d:  ldarg.s    x
    IL_003f:  ldarg.s    y
    IL_0041:  ldarg.s    z
    IL_0043:  ldarg.0
    IL_0044:  ldarg.3
    IL_0045:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_004a:  ldc.r4     0.25
    IL_004f:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0054:  ldarg.2
    IL_0055:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_005a:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_005f:  ret
  } // end of method LedBlock::GenerateTerrainVertices

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
    IL_0006:  call       int32 Game.LedBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.BlockMesh[] Game.LedBlock::m_standaloneBlockMeshesByColor
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
  } // end of method LedBlock::DrawBlock

  .method public hidebysig virtual instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       24 (0x18)
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
    IL_0012:  newobj     instance void Game.LedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                      valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method LedBlock::CreateElectricElement

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
  } // end of method LedBlock::GetConnectorType

  .method public hidebysig static int32  GetMountingFace(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  and
    IL_0003:  ret
  } // end of method LedBlock::GetMountingFace

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
  } // end of method LedBlock::SetMountingFace

  .method public hidebysig static int32  GetColor(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  shr
    IL_0003:  ldc.i4.7
    IL_0004:  and
    IL_0005:  ret
  } // end of method LedBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  int32 color) cil managed
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
  } // end of method LedBlock::SetColor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.LedBlock::m_standaloneBlockMeshesByColor
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.s   64
    IL_000f:  newarr     Game.BlockMesh
    IL_0014:  stfld      class Game.BlockMesh[] Game.LedBlock::m_blockMeshesByData
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.s   64
    IL_001c:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0021:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.LedBlock::m_collisionBoxesByData
    IL_0026:  ldarg.0
    IL_0027:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_002c:  ret
  } // end of method LedBlock::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       260 (0x104)
    .maxstack  6
    IL_0000:  ldc.i4.8
    IL_0001:  newarr     [Engine]Engine.Color
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xff
    IL_000d:  ldc.i4     0xff
    IL_0012:  ldc.i4     0xff
    IL_0017:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_001c:  stelem     [Engine]Engine.Color
    IL_0021:  dup
    IL_0022:  ldc.i4.1
    IL_0023:  ldc.i4.0
    IL_0024:  ldc.i4     0xff
    IL_0029:  ldc.i4     0xff
    IL_002e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0033:  stelem     [Engine]Engine.Color
    IL_0038:  dup
    IL_0039:  ldc.i4.2
    IL_003a:  ldc.i4     0xff
    IL_003f:  ldc.i4.0
    IL_0040:  ldc.i4.0
    IL_0041:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0046:  stelem     [Engine]Engine.Color
    IL_004b:  dup
    IL_004c:  ldc.i4.3
    IL_004d:  ldc.i4.0
    IL_004e:  ldc.i4.0
    IL_004f:  ldc.i4     0xff
    IL_0054:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0059:  stelem     [Engine]Engine.Color
    IL_005e:  dup
    IL_005f:  ldc.i4.4
    IL_0060:  ldc.i4     0xff
    IL_0065:  ldc.i4     0xf0
    IL_006a:  ldc.i4.0
    IL_006b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0070:  stelem     [Engine]Engine.Color
    IL_0075:  dup
    IL_0076:  ldc.i4.5
    IL_0077:  ldc.i4.0
    IL_0078:  ldc.i4     0xff
    IL_007d:  ldc.i4.0
    IL_007e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0083:  stelem     [Engine]Engine.Color
    IL_0088:  dup
    IL_0089:  ldc.i4.6
    IL_008a:  ldc.i4     0xff
    IL_008f:  ldc.i4.s   120
    IL_0091:  ldc.i4.0
    IL_0092:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0097:  stelem     [Engine]Engine.Color
    IL_009c:  dup
    IL_009d:  ldc.i4.7
    IL_009e:  ldc.i4     0xff
    IL_00a3:  ldc.i4.0
    IL_00a4:  ldc.i4     0xff
    IL_00a9:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00ae:  stelem     [Engine]Engine.Color
    IL_00b3:  stsfld     valuetype [Engine]Engine.Color[] Game.LedBlock::LedColors
    IL_00b8:  ldc.i4.8
    IL_00b9:  newarr     [System.Runtime]System.String
    IL_00be:  dup
    IL_00bf:  ldc.i4.0
    IL_00c0:  ldstr      "White"
    IL_00c5:  stelem.ref
    IL_00c6:  dup
    IL_00c7:  ldc.i4.1
    IL_00c8:  ldstr      "Cyan"
    IL_00cd:  stelem.ref
    IL_00ce:  dup
    IL_00cf:  ldc.i4.2
    IL_00d0:  ldstr      "Red"
    IL_00d5:  stelem.ref
    IL_00d6:  dup
    IL_00d7:  ldc.i4.3
    IL_00d8:  ldstr      "Blue"
    IL_00dd:  stelem.ref
    IL_00de:  dup
    IL_00df:  ldc.i4.4
    IL_00e0:  ldstr      "Yellow"
    IL_00e5:  stelem.ref
    IL_00e6:  dup
    IL_00e7:  ldc.i4.5
    IL_00e8:  ldstr      "Green"
    IL_00ed:  stelem.ref
    IL_00ee:  dup
    IL_00ef:  ldc.i4.6
    IL_00f0:  ldstr      "Orange"
    IL_00f5:  stelem.ref
    IL_00f6:  dup
    IL_00f7:  ldc.i4.7
    IL_00f8:  ldstr      "Purple"
    IL_00fd:  stelem.ref
    IL_00fe:  stsfld     string[] Game.LedBlock::LedColorDisplayNames
    IL_0103:  ret
  } // end of method LedBlock::.cctor

} // end of class Game.LedBlock