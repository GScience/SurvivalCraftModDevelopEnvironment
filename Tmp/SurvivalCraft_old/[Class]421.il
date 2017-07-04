.class public auto ansi beforefieldinit Game.FourLedBlock
       extends Game.MountedElectricElementBlock
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
      IL_0008:  stfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>l__initialThreadId'
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
      // 代码大小       287 (0x11f)
      .maxstack  6
      .locals init (int32 V_0,
               class Game.CraftingRecipe V_1,
               int32 V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0013

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq        IL_00fa

      IL_0011:  ldc.i4.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.m1
      IL_0015:  stfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_001a:  ldarg.0
      IL_001b:  ldc.i4.0
      IL_001c:  stfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<color>5__1'
      IL_0021:  br         IL_0111

      IL_0026:  newobj     instance void Game.CraftingRecipe::.ctor()
      IL_002b:  dup
      IL_002c:  ldc.i4.4
      IL_002d:  stfld      int32 Game.CraftingRecipe::ResultCount
      IL_0032:  dup
      IL_0033:  ldc.i4     0xb6
      IL_0038:  ldc.i4.0
      IL_0039:  ldc.i4.0
      IL_003a:  ldarg.0
      IL_003b:  ldfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<color>5__1'
      IL_0040:  call       int32 Game.FourLedBlock::SetColor(int32,
                                                             int32)
      IL_0045:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_004a:  stfld      int32 Game.CraftingRecipe::ResultValue
      IL_004f:  dup
      IL_0050:  ldc.i4.1
      IL_0051:  stfld      int32 Game.CraftingRecipe::RemainsCount
      IL_0056:  dup
      IL_0057:  ldc.i4.s   90
      IL_0059:  call       int32 Game.Terrain::MakeBlockValue(int32)
      IL_005e:  stfld      int32 Game.CraftingRecipe::RemainsValue
      IL_0063:  dup
      IL_0064:  ldc.r4     0.0
      IL_0069:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
      IL_006e:  dup
      IL_006f:  ldstr      "Make colored 4-LEDs from copper, glass and paint"
      IL_0074:  stfld      string Game.CraftingRecipe::Description
      IL_0079:  stloc.1
      IL_007a:  ldloc.1
      IL_007b:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0080:  ldc.i4.0
      IL_0081:  ldstr      "glass"
      IL_0086:  stelem.ref
      IL_0087:  ldloc.1
      IL_0088:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_008d:  ldc.i4.1
      IL_008e:  ldstr      "glass"
      IL_0093:  stelem.ref
      IL_0094:  ldloc.1
      IL_0095:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_009a:  ldc.i4.2
      IL_009b:  ldstr      "glass"
      IL_00a0:  stelem.ref
      IL_00a1:  ldloc.1
      IL_00a2:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00a7:  ldc.i4.4
      IL_00a8:  ldstr      "paintbucket:"
      IL_00ad:  ldarg.0
      IL_00ae:  ldflda     int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<color>5__1'
      IL_00b3:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_00b8:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_00bd:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_00c2:  stelem.ref
      IL_00c3:  ldloc.1
      IL_00c4:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00c9:  ldc.i4.6
      IL_00ca:  ldstr      "copperingot"
      IL_00cf:  stelem.ref
      IL_00d0:  ldloc.1
      IL_00d1:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00d6:  ldc.i4.7
      IL_00d7:  ldstr      "copperingot"
      IL_00dc:  stelem.ref
      IL_00dd:  ldloc.1
      IL_00de:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00e3:  ldc.i4.8
      IL_00e4:  ldstr      "copperingot"
      IL_00e9:  stelem.ref
      IL_00ea:  ldarg.0
      IL_00eb:  ldloc.1
      IL_00ec:  stfld      class Game.CraftingRecipe Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
      IL_00f1:  ldarg.0
      IL_00f2:  ldc.i4.1
      IL_00f3:  stfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_00f8:  ldc.i4.1
      IL_00f9:  ret

      IL_00fa:  ldarg.0
      IL_00fb:  ldc.i4.m1
      IL_00fc:  stfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_0101:  ldarg.0
      IL_0102:  ldfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<color>5__1'
      IL_0107:  ldc.i4.1
      IL_0108:  add
      IL_0109:  stloc.2
      IL_010a:  ldarg.0
      IL_010b:  ldloc.2
      IL_010c:  stfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<color>5__1'
      IL_0111:  ldarg.0
      IL_0112:  ldfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<color>5__1'
      IL_0117:  ldc.i4.8
      IL_0118:  blt        IL_0026

      IL_011d:  ldc.i4.0
      IL_011e:  ret
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
      IL_0001:  ldfld      class Game.CraftingRecipe Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
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
      IL_0001:  ldfld      class Game.CraftingRecipe Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> 
            'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__5'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__5'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__5'

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
      IL_0008:  stfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>l__initialThreadId'
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
      // 代码大小       104 (0x68)
      .maxstack  5
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>1__state'
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
      IL_0012:  stfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_001e:  br.s       IL_005d

      IL_0020:  ldarg.0
      IL_0021:  ldc.i4     0xb6
      IL_0026:  ldc.i4.0
      IL_0027:  ldc.i4.0
      IL_0028:  ldarg.0
      IL_0029:  ldfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_002e:  call       int32 Game.FourLedBlock::SetColor(int32,
                                                             int32)
      IL_0033:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0038:  stfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>2__current'
      IL_003d:  ldarg.0
      IL_003e:  ldc.i4.1
      IL_003f:  stfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0044:  ldc.i4.1
      IL_0045:  ret

      IL_0046:  ldarg.0
      IL_0047:  ldc.i4.m1
      IL_0048:  stfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_004d:  ldarg.0
      IL_004e:  ldfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_0053:  ldc.i4.1
      IL_0054:  add
      IL_0055:  stloc.1
      IL_0056:  ldarg.0
      IL_0057:  ldloc.1
      IL_0058:  stfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_005d:  ldarg.0
      IL_005e:  ldfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<i>5__1'
      IL_0063:  ldc.i4.8
      IL_0064:  blt.s      IL_0020

      IL_0066:  ldc.i4.0
      IL_0067:  ret
    } // end of method '<GetCreativeValues>d__9'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>2__current'
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
      IL_0001:  ldfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>2__current'
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
      .locals init (class Game.FourLedBlock/'<GetCreativeValues>d__9' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.FourLedBlock/'<GetCreativeValues>d__9'::.ctor(int32)
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.FourLedBlock/'<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__9'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.FourLedBlock/'<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__9'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.FourLedBlock/'<GetCreativeValues>d__9'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__9'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__9'

  .field public static literal int32 Index = int32(0x000000B6)
  .field private class Game.BlockMesh m_standaloneBlockMesh
  .field private class Game.BlockMesh[] m_blockMeshesByFace
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByFace
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       383 (0x17f)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.ModelMesh V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_5)
    IL_0000:  ldstr      "Models/Leds"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  ldstr      "FourLed"
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.3
    IL_0024:  br         IL_0127

    IL_0029:  ldloc.3
    IL_002a:  ldc.i4.4
    IL_002b:  bge.s      IL_0085

    IL_002d:  ldc.r4     1.5707964
    IL_0032:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0037:  ldc.r4     0.0
    IL_003c:  ldc.r4     0.0
    IL_0041:  ldc.r4     -0.5
    IL_0046:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_004b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0050:  ldloc.3
    IL_0051:  conv.r4
    IL_0052:  ldc.r4     3.1415927
    IL_0057:  mul
    IL_0058:  ldc.r4     2.
    IL_005d:  div
    IL_005e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0063:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0068:  ldc.r4     0.5
    IL_006d:  ldc.r4     0.5
    IL_0072:  ldc.r4     0.5
    IL_0077:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_007c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0081:  stloc.s    V_4
    IL_0083:  br.s       IL_00c6

    IL_0085:  ldloc.3
    IL_0086:  ldc.i4.4
    IL_0087:  bne.un.s   IL_00a1

    IL_0089:  ldc.r4     0.5
    IL_008e:  ldc.r4     0.0
    IL_0093:  ldc.r4     0.5
    IL_0098:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_009d:  stloc.s    V_4
    IL_009f:  br.s       IL_00c6

    IL_00a1:  ldc.r4     3.1415927
    IL_00a6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_00ab:  ldc.r4     0.5
    IL_00b0:  ldc.r4     1.
    IL_00b5:  ldc.r4     0.5
    IL_00ba:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00bf:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00c4:  stloc.s    V_4
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.BlockMesh[] Game.FourLedBlock::m_blockMeshesByFace
    IL_00cc:  ldloc.3
    IL_00cd:  newobj     instance void Game.BlockMesh::.ctor()
    IL_00d2:  stelem.ref
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.BlockMesh[] Game.FourLedBlock::m_blockMeshesByFace
    IL_00d9:  ldloc.3
    IL_00da:  ldelem.ref
    IL_00db:  ldloc.0
    IL_00dc:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00e1:  stloc.s    V_5
    IL_00e3:  ldloca.s   V_5
    IL_00e5:  ldc.i4.0
    IL_00e6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00eb:  ldloc.1
    IL_00ec:  ldloc.s    V_4
    IL_00ee:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f3:  ldc.i4.0
    IL_00f4:  ldc.i4.0
    IL_00f5:  ldc.i4.0
    IL_00f6:  ldc.i4.0
    IL_00f7:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00fc:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0101:  ldarg.0
    IL_0102:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FourLedBlock::m_collisionBoxesByFace
    IL_0107:  ldloc.3
    IL_0108:  ldc.i4.1
    IL_0109:  newarr     [Engine]Engine.BoundingBox
    IL_010e:  dup
    IL_010f:  ldc.i4.0
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class Game.BlockMesh[] Game.FourLedBlock::m_blockMeshesByFace
    IL_0116:  ldloc.3
    IL_0117:  ldelem.ref
    IL_0118:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.BlockMesh::CalculateBoundingBox()
    IL_011d:  stelem     [Engine]Engine.BoundingBox
    IL_0122:  stelem.ref
    IL_0123:  ldloc.3
    IL_0124:  ldc.i4.1
    IL_0125:  add
    IL_0126:  stloc.3
    IL_0127:  ldloc.3
    IL_0128:  ldc.i4.6
    IL_0129:  blt        IL_0029

    IL_012e:  ldc.r4     -1.5707964
    IL_0133:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0138:  ldc.r4     1.5707964
    IL_013d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0142:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0147:  stloc.2
    IL_0148:  ldarg.0
    IL_0149:  newobj     instance void Game.BlockMesh::.ctor()
    IL_014e:  stfld      class Game.BlockMesh Game.FourLedBlock::m_standaloneBlockMesh
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class Game.BlockMesh Game.FourLedBlock::m_standaloneBlockMesh
    IL_0159:  ldloc.0
    IL_015a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_015f:  stloc.s    V_5
    IL_0161:  ldloca.s   V_5
    IL_0163:  ldc.i4.0
    IL_0164:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0169:  ldloc.1
    IL_016a:  ldloc.2
    IL_016b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0170:  ldc.i4.0
    IL_0171:  ldc.i4.0
    IL_0172:  ldc.i4.0
    IL_0173:  ldc.i4.0
    IL_0174:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0179:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_017e:  ret
  } // end of method FourLedBlock::Initialize

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 34 47 61 6D 65 2E 46 6F 75 72 4C 65 64 42   // ..4Game.FourLedB
                                                                                                                                                      6C 6F 63 6B 2B 3C 47 65 74 50 72 6F 63 65 64 75   // lock+<GetProcedu
                                                                                                                                                      72 61 6C 43 72 61 66 74 69 6E 67 52 65 63 69 70   // ralCraftingRecip
                                                                                                                                                      65 73 3E 64 5F 5F 35 00 00 )                      // es>d__5..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.FourLedBlock/'<GetProceduralCraftingRecipes>d__5'::.ctor(int32)
    IL_0007:  ret
  } // end of method FourLedBlock::GetProceduralCraftingRecipes

  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FourLedBlock::GetMountingFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldloc.0
    IL_000e:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0013:  ceq
    IL_0015:  ldc.i4.0
    IL_0016:  ceq
    IL_0018:  ret
  } // end of method FourLedBlock::IsFaceTransparent

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FourLedBlock::GetMountingFace(int32)
    IL_000b:  ret
  } // end of method FourLedBlock::GetFace

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FourLedBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldsfld     string[] Game.LedBlock::LedColorDisplayNames
    IL_0011:  ldloc.0
    IL_0012:  ldelem.ref
    IL_0013:  ldstr      " 4-LED"
    IL_0018:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_001d:  ret
  } // end of method FourLedBlock::GetDisplayName

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 29 47 61 6D 65 2E 46 6F 75 72 4C 65 64 42   // ..)Game.FourLedB
                                                                                                                                                      6C 6F 63 6B 2B 3C 47 65 74 43 72 65 61 74 69 76   // lock+<GetCreativ
                                                                                                                                                      65 56 61 6C 75 65 73 3E 64 5F 5F 39 00 00 )       // eValues>d__9..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.FourLedBlock/'<GetCreativeValues>d__9'::.ctor(int32)
    IL_0007:  ret
  } // end of method FourLedBlock::GetCreativeValues

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
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
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldarg.s    raycastResult
    IL_0008:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_000d:  ldfld      int32 Game.CellFace::Face
    IL_0012:  call       int32 Game.FourLedBlock::SetMountingFace(int32,
                                                                  int32)
    IL_0017:  stloc.0
    IL_0018:  ldarg.3
    IL_0019:  ldloc.0
    IL_001a:  call       int32 Game.Terrain::ReplaceData(int32,
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
  } // end of method FourLedBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
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
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FourLedBlock::GetColor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.s    dropValues
    IL_000e:  ldloca.s   V_1
    IL_0010:  initobj    Game.BlockDropValue
    IL_0016:  ldloca.s   V_1
    IL_0018:  ldc.i4     0xb6
    IL_001d:  ldc.i4.0
    IL_001e:  ldc.i4.0
    IL_001f:  ldloc.0
    IL_0020:  call       int32 Game.FourLedBlock::SetColor(int32,
                                                           int32)
    IL_0025:  call       int32 Game.Terrain::MakeBlockValue(int32,
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
  } // end of method FourLedBlock::GetDropValues

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FourLedBlock::GetMountingFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FourLedBlock::m_collisionBoxesByFace
    IL_0013:  ldlen
    IL_0014:  conv.i4
    IL_0015:  blt.s      IL_0019

    IL_0017:  ldnull
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FourLedBlock::m_collisionBoxesByFace
    IL_001f:  ldloc.0
    IL_0020:  ldelem.ref
    IL_0021:  ret
  } // end of method FourLedBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  9
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.FourLedBlock::GetMountingFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.BlockMesh[] Game.FourLedBlock::m_blockMeshesByFace
    IL_0013:  ldlen
    IL_0014:  conv.i4
    IL_0015:  bge.s      IL_005e

    IL_0017:  ldarg.1
    IL_0018:  ldarg.0
    IL_0019:  ldarg.s    x
    IL_001b:  ldarg.s    y
    IL_001d:  ldarg.s    z
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.BlockMesh[] Game.FourLedBlock::m_blockMeshesByFace
    IL_0025:  ldloc.0
    IL_0026:  ldelem.ref
    IL_0027:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_002c:  ldloca.s   V_1
    IL_002e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0034:  ldloc.1
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
    IL_0040:  ldarg.1
    IL_0041:  ldarg.3
    IL_0042:  ldarg.s    x
    IL_0044:  ldarg.s    y
    IL_0046:  ldarg.s    z
    IL_0048:  ldloc.0
    IL_0049:  ldc.r4     1.
    IL_004e:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0053:  ldarg.2
    IL_0054:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_0059:  callvirt   instance void Game.BlockGeometryGenerator::GenerateWireVertices(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2,
                                                                                         class Game.TerrainGeometrySubset)
    IL_005e:  ret
  } // end of method FourLedBlock::GenerateTerrainVertices

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
    IL_0002:  ldfld      class Game.BlockMesh Game.FourLedBlock::m_standaloneBlockMesh
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
  } // end of method FourLedBlock::DrawBlock

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
    IL_0012:  newobj     instance void Game.FourLedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method FourLedBlock::CreateElectricElement

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
  } // end of method FourLedBlock::GetConnectorType

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
  } // end of method FourLedBlock::GetColor

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
  } // end of method FourLedBlock::SetColor

  .method public hidebysig static int32  GetMountingFace(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  and
    IL_0003:  ret
  } // end of method FourLedBlock::GetMountingFace

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
  } // end of method FourLedBlock::SetMountingFace

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.6
    IL_0002:  newarr     Game.BlockMesh
    IL_0007:  stfld      class Game.BlockMesh[] Game.FourLedBlock::m_blockMeshesByFace
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.6
    IL_000e:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0013:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.FourLedBlock::m_collisionBoxesByFace
    IL_0018:  ldarg.0
    IL_0019:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_001e:  ret
  } // end of method FourLedBlock::.ctor

} // end of class Game.FourLedBlock