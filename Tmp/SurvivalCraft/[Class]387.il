.class public auto ansi beforefieldinit Game.FireworksBlock
       extends Game.Block
{
  .class auto ansi sealed nested public Shape
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.FireworksBlock/Shape SmallBurst = int32(0x00000000)
    .field public static literal valuetype Game.FireworksBlock/Shape LargeBurst = int32(0x00000001)
    .field public static literal valuetype Game.FireworksBlock/Shape Circle = int32(0x00000002)
    .field public static literal valuetype Game.FireworksBlock/Shape Disc = int32(0x00000003)
    .field public static literal valuetype Game.FireworksBlock/Shape Ball = int32(0x00000004)
    .field public static literal valuetype Game.FireworksBlock/Shape ShortTrails = int32(0x00000005)
    .field public static literal valuetype Game.FireworksBlock/Shape LongTrails = int32(0x00000006)
    .field public static literal valuetype Game.FireworksBlock/Shape FlatTrails = int32(0x00000007)
  } // end of class Shape

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
    .field private int32 '<flickering>5__1'
    .field private int32 '<altitude>5__2'
    .field private int32 '<color>5__3'
    .field private int32 '<shape>5__4'
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
      IL_0008:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>l__initialThreadId'
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
      // 代码大小       263 (0x107)
      .maxstack  6
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0013

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq        IL_0091

      IL_0011:  ldc.i4.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.m1
      IL_0015:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_001a:  ldarg.0
      IL_001b:  ldc.i4.0
      IL_001c:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<color>5__3'
      IL_0021:  br         IL_00f9

      IL_0026:  ldarg.0
      IL_0027:  ldc.i4.0
      IL_0028:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<altitude>5__2'
      IL_002d:  br         IL_00dd

      IL_0032:  ldarg.0
      IL_0033:  ldc.i4.0
      IL_0034:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<flickering>5__1'
      IL_0039:  br         IL_00c1

      IL_003e:  ldarg.0
      IL_003f:  ldc.i4.0
      IL_0040:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<shape>5__4'
      IL_0045:  br.s       IL_00a8

      IL_0047:  ldarg.0
      IL_0048:  ldc.i4     0xd7
      IL_004d:  ldc.i4.0
      IL_004e:  ldc.i4.0
      IL_004f:  ldarg.0
      IL_0050:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<flickering>5__1'
      IL_0055:  ldc.i4.0
      IL_0056:  cgt.un
      IL_0058:  call       int32 Game.FireworksBlock::SetFlickering(int32,
                                                                    bool)
      IL_005d:  ldarg.0
      IL_005e:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<shape>5__4'
      IL_0063:  call       int32 Game.FireworksBlock::SetShape(int32,
                                                               valuetype Game.FireworksBlock/Shape)
      IL_0068:  ldarg.0
      IL_0069:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<altitude>5__2'
      IL_006e:  call       int32 Game.FireworksBlock::SetAltitude(int32,
                                                                  int32)
      IL_0073:  ldarg.0
      IL_0074:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<color>5__3'
      IL_0079:  call       int32 Game.FireworksBlock::SetColor(int32,
                                                               int32)
      IL_007e:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0083:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>2__current'
      IL_0088:  ldarg.0
      IL_0089:  ldc.i4.1
      IL_008a:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_008f:  ldc.i4.1
      IL_0090:  ret

      IL_0091:  ldarg.0
      IL_0092:  ldc.i4.m1
      IL_0093:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_0098:  ldarg.0
      IL_0099:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<shape>5__4'
      IL_009e:  ldc.i4.1
      IL_009f:  add
      IL_00a0:  stloc.1
      IL_00a1:  ldarg.0
      IL_00a2:  ldloc.1
      IL_00a3:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<shape>5__4'
      IL_00a8:  ldarg.0
      IL_00a9:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<shape>5__4'
      IL_00ae:  ldc.i4.8
      IL_00af:  blt.s      IL_0047

      IL_00b1:  ldarg.0
      IL_00b2:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<flickering>5__1'
      IL_00b7:  ldc.i4.1
      IL_00b8:  add
      IL_00b9:  stloc.1
      IL_00ba:  ldarg.0
      IL_00bb:  ldloc.1
      IL_00bc:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<flickering>5__1'
      IL_00c1:  ldarg.0
      IL_00c2:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<flickering>5__1'
      IL_00c7:  ldc.i4.2
      IL_00c8:  blt        IL_003e

      IL_00cd:  ldarg.0
      IL_00ce:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<altitude>5__2'
      IL_00d3:  ldc.i4.1
      IL_00d4:  add
      IL_00d5:  stloc.1
      IL_00d6:  ldarg.0
      IL_00d7:  ldloc.1
      IL_00d8:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<altitude>5__2'
      IL_00dd:  ldarg.0
      IL_00de:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<altitude>5__2'
      IL_00e3:  ldc.i4.2
      IL_00e4:  blt        IL_0032

      IL_00e9:  ldarg.0
      IL_00ea:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<color>5__3'
      IL_00ef:  ldc.i4.1
      IL_00f0:  add
      IL_00f1:  stloc.1
      IL_00f2:  ldarg.0
      IL_00f3:  ldloc.1
      IL_00f4:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<color>5__3'
      IL_00f9:  ldarg.0
      IL_00fa:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<color>5__3'
      IL_00ff:  ldc.i4.8
      IL_0100:  blt        IL_0026

      IL_0105:  ldc.i4.0
      IL_0106:  ret
    } // end of method '<GetCreativeValues>d__13'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>2__current'
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
      IL_0001:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>2__current'
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
      .locals init (class Game.FireworksBlock/'<GetCreativeValues>d__13' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.FireworksBlock/'<GetCreativeValues>d__13'::.ctor(int32)
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.FireworksBlock/'<GetCreativeValues>d__13'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__13'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.FireworksBlock/'<GetCreativeValues>d__13'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__13'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.FireworksBlock/'<GetCreativeValues>d__13'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__13'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__13'

  .class auto ansi sealed nested private beforefieldinit '<GetProceduralCraftingRecipes>d__14'
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
    .field private int32 '<flickering>5__1'
    .field private int32 '<shape>5__2'
    .field private int32 '<altitude>5__3'
    .field private int32 '<color>5__4'
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
      IL_0008:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__14'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__14'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       905 (0x389)
      .maxstack  7
      .locals init (int32 V_0,
               class Game.CraftingRecipe V_1,
               int32 V_2,
               int32 V_3)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0013

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq        IL_0310

      IL_0011:  ldc.i4.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.m1
      IL_0015:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>1__state'
      IL_001a:  ldarg.0
      IL_001b:  ldc.i4.0
      IL_001c:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_0021:  br         IL_037b

      IL_0026:  ldarg.0
      IL_0027:  ldc.i4.0
      IL_0028:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<altitude>5__3'
      IL_002d:  br         IL_035f

      IL_0032:  ldarg.0
      IL_0033:  ldc.i4.0
      IL_0034:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<flickering>5__1'
      IL_0039:  br         IL_0343

      IL_003e:  ldarg.0
      IL_003f:  ldc.i4.0
      IL_0040:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<color>5__4'
      IL_0045:  br         IL_0327

      IL_004a:  newobj     instance void Game.CraftingRecipe::.ctor()
      IL_004f:  dup
      IL_0050:  ldc.i4.s   20
      IL_0052:  stfld      int32 Game.CraftingRecipe::ResultCount
      IL_0057:  dup
      IL_0058:  ldc.i4     0xd7
      IL_005d:  ldc.i4.0
      IL_005e:  ldc.i4.0
      IL_005f:  ldarg.0
      IL_0060:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<flickering>5__1'
      IL_0065:  ldc.i4.0
      IL_0066:  cgt.un
      IL_0068:  call       int32 Game.FireworksBlock::SetFlickering(int32,
                                                                    bool)
      IL_006d:  ldarg.0
      IL_006e:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_0073:  call       int32 Game.FireworksBlock::SetShape(int32,
                                                               valuetype Game.FireworksBlock/Shape)
      IL_0078:  ldarg.0
      IL_0079:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<altitude>5__3'
      IL_007e:  call       int32 Game.FireworksBlock::SetAltitude(int32,
                                                                  int32)
      IL_0083:  ldarg.0
      IL_0084:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<color>5__4'
      IL_0089:  call       int32 Game.FireworksBlock::SetColor(int32,
                                                               int32)
      IL_008e:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0093:  stfld      int32 Game.CraftingRecipe::ResultValue
      IL_0098:  dup
      IL_0099:  ldc.i4.1
      IL_009a:  stfld      int32 Game.CraftingRecipe::RemainsCount
      IL_009f:  dup
      IL_00a0:  ldc.i4.s   90
      IL_00a2:  call       int32 Game.Terrain::MakeBlockValue(int32)
      IL_00a7:  stfld      int32 Game.CraftingRecipe::RemainsValue
      IL_00ac:  dup
      IL_00ad:  ldc.r4     0.0
      IL_00b2:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
      IL_00b7:  dup
      IL_00b8:  ldstr      "Make fireworks"
      IL_00bd:  stfld      string Game.CraftingRecipe::Description
      IL_00c2:  stloc.1
      IL_00c3:  ldarg.0
      IL_00c4:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_00c9:  brtrue.s   IL_00ea

      IL_00cb:  ldloc.1
      IL_00cc:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00d1:  ldc.i4.0
      IL_00d2:  ldnull
      IL_00d3:  stelem.ref
      IL_00d4:  ldloc.1
      IL_00d5:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00da:  ldc.i4.1
      IL_00db:  ldstr      "sulphurchunk"
      IL_00e0:  stelem.ref
      IL_00e1:  ldloc.1
      IL_00e2:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00e7:  ldc.i4.2
      IL_00e8:  ldnull
      IL_00e9:  stelem.ref
      IL_00ea:  ldarg.0
      IL_00eb:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_00f0:  ldc.i4.1
      IL_00f1:  bne.un.s   IL_011a

      IL_00f3:  ldloc.1
      IL_00f4:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00f9:  ldc.i4.0
      IL_00fa:  ldstr      "sulphurchunk"
      IL_00ff:  stelem.ref
      IL_0100:  ldloc.1
      IL_0101:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0106:  ldc.i4.1
      IL_0107:  ldstr      "coalchunk"
      IL_010c:  stelem.ref
      IL_010d:  ldloc.1
      IL_010e:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0113:  ldc.i4.2
      IL_0114:  ldstr      "sulphurchunk"
      IL_0119:  stelem.ref
      IL_011a:  ldarg.0
      IL_011b:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_0120:  ldc.i4.2
      IL_0121:  bne.un.s   IL_0146

      IL_0123:  ldloc.1
      IL_0124:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0129:  ldc.i4.0
      IL_012a:  ldstr      "sulphurchunk"
      IL_012f:  stelem.ref
      IL_0130:  ldloc.1
      IL_0131:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0136:  ldc.i4.1
      IL_0137:  ldnull
      IL_0138:  stelem.ref
      IL_0139:  ldloc.1
      IL_013a:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_013f:  ldc.i4.2
      IL_0140:  ldstr      "sulphurchunk"
      IL_0145:  stelem.ref
      IL_0146:  ldarg.0
      IL_0147:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_014c:  ldc.i4.3
      IL_014d:  bne.un.s   IL_0176

      IL_014f:  ldloc.1
      IL_0150:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0155:  ldc.i4.0
      IL_0156:  ldstr      "sulphurchunk"
      IL_015b:  stelem.ref
      IL_015c:  ldloc.1
      IL_015d:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0162:  ldc.i4.1
      IL_0163:  ldstr      "sulphurchunk"
      IL_0168:  stelem.ref
      IL_0169:  ldloc.1
      IL_016a:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_016f:  ldc.i4.2
      IL_0170:  ldstr      "sulphurchunk"
      IL_0175:  stelem.ref
      IL_0176:  ldarg.0
      IL_0177:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_017c:  ldc.i4.4
      IL_017d:  bne.un.s   IL_01a6

      IL_017f:  ldloc.1
      IL_0180:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0185:  ldc.i4.0
      IL_0186:  ldstr      "coalchunk"
      IL_018b:  stelem.ref
      IL_018c:  ldloc.1
      IL_018d:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0192:  ldc.i4.1
      IL_0193:  ldstr      "coalchunk"
      IL_0198:  stelem.ref
      IL_0199:  ldloc.1
      IL_019a:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_019f:  ldc.i4.2
      IL_01a0:  ldstr      "coalchunk"
      IL_01a5:  stelem.ref
      IL_01a6:  ldarg.0
      IL_01a7:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_01ac:  ldc.i4.5
      IL_01ad:  bne.un.s   IL_01ce

      IL_01af:  ldloc.1
      IL_01b0:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_01b5:  ldc.i4.0
      IL_01b6:  ldnull
      IL_01b7:  stelem.ref
      IL_01b8:  ldloc.1
      IL_01b9:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_01be:  ldc.i4.1
      IL_01bf:  ldstr      "saltpeterchunk"
      IL_01c4:  stelem.ref
      IL_01c5:  ldloc.1
      IL_01c6:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_01cb:  ldc.i4.2
      IL_01cc:  ldnull
      IL_01cd:  stelem.ref
      IL_01ce:  ldarg.0
      IL_01cf:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_01d4:  ldc.i4.6
      IL_01d5:  bne.un.s   IL_01fe

      IL_01d7:  ldloc.1
      IL_01d8:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_01dd:  ldc.i4.0
      IL_01de:  ldstr      "sulphurchunk"
      IL_01e3:  stelem.ref
      IL_01e4:  ldloc.1
      IL_01e5:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_01ea:  ldc.i4.1
      IL_01eb:  ldstr      "saltpeterchunk"
      IL_01f0:  stelem.ref
      IL_01f1:  ldloc.1
      IL_01f2:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_01f7:  ldc.i4.2
      IL_01f8:  ldstr      "sulphurchunk"
      IL_01fd:  stelem.ref
      IL_01fe:  ldarg.0
      IL_01ff:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_0204:  ldc.i4.7
      IL_0205:  bne.un.s   IL_022e

      IL_0207:  ldloc.1
      IL_0208:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_020d:  ldc.i4.0
      IL_020e:  ldstr      "coalchunk"
      IL_0213:  stelem.ref
      IL_0214:  ldloc.1
      IL_0215:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_021a:  ldc.i4.1
      IL_021b:  ldstr      "saltpeterchunk"
      IL_0220:  stelem.ref
      IL_0221:  ldloc.1
      IL_0222:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0227:  ldc.i4.2
      IL_0228:  ldstr      "coalchunk"
      IL_022d:  stelem.ref
      IL_022e:  ldarg.0
      IL_022f:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<flickering>5__1'
      IL_0234:  brtrue.s   IL_0250

      IL_0236:  ldloc.1
      IL_0237:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_023c:  ldc.i4.3
      IL_023d:  ldstr      "canvas"
      IL_0242:  stelem.ref
      IL_0243:  ldloc.1
      IL_0244:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0249:  ldc.i4.5
      IL_024a:  ldstr      "canvas"
      IL_024f:  stelem.ref
      IL_0250:  ldarg.0
      IL_0251:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<flickering>5__1'
      IL_0256:  ldc.i4.1
      IL_0257:  bne.un.s   IL_0273

      IL_0259:  ldloc.1
      IL_025a:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_025f:  ldc.i4.3
      IL_0260:  ldstr      "gunpowder"
      IL_0265:  stelem.ref
      IL_0266:  ldloc.1
      IL_0267:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_026c:  ldc.i4.5
      IL_026d:  ldstr      "gunpowder"
      IL_0272:  stelem.ref
      IL_0273:  ldarg.0
      IL_0274:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<altitude>5__3'
      IL_0279:  brtrue.s   IL_029e

      IL_027b:  ldloc.1
      IL_027c:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0281:  ldc.i4.6
      IL_0282:  ldstr      "gunpowder"
      IL_0287:  stelem.ref
      IL_0288:  ldloc.1
      IL_0289:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_028e:  ldc.i4.7
      IL_028f:  ldnull
      IL_0290:  stelem.ref
      IL_0291:  ldloc.1
      IL_0292:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_0297:  ldc.i4.8
      IL_0298:  ldstr      "gunpowder"
      IL_029d:  stelem.ref
      IL_029e:  ldarg.0
      IL_029f:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<altitude>5__3'
      IL_02a4:  ldc.i4.1
      IL_02a5:  bne.un.s   IL_02ce

      IL_02a7:  ldloc.1
      IL_02a8:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_02ad:  ldc.i4.6
      IL_02ae:  ldstr      "gunpowder"
      IL_02b3:  stelem.ref
      IL_02b4:  ldloc.1
      IL_02b5:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_02ba:  ldc.i4.7
      IL_02bb:  ldstr      "gunpowder"
      IL_02c0:  stelem.ref
      IL_02c1:  ldloc.1
      IL_02c2:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_02c7:  ldc.i4.8
      IL_02c8:  ldstr      "gunpowder"
      IL_02cd:  stelem.ref
      IL_02ce:  ldarg.0
      IL_02cf:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<color>5__4'
      IL_02d4:  ldc.i4.7
      IL_02d5:  bne.un.s   IL_02db

      IL_02d7:  ldc.i4.s   10
      IL_02d9:  br.s       IL_02e1

      IL_02db:  ldarg.0
      IL_02dc:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<color>5__4'
      IL_02e1:  stloc.2
      IL_02e2:  ldloc.1
      IL_02e3:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_02e8:  ldc.i4.4
      IL_02e9:  ldstr      "paintbucket:"
      IL_02ee:  ldloca.s   V_2
      IL_02f0:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_02f5:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_02fa:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_02ff:  stelem.ref
      IL_0300:  ldarg.0
      IL_0301:  ldloc.1
      IL_0302:  stfld      class Game.CraftingRecipe Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>2__current'
      IL_0307:  ldarg.0
      IL_0308:  ldc.i4.1
      IL_0309:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>1__state'
      IL_030e:  ldc.i4.1
      IL_030f:  ret

      IL_0310:  ldarg.0
      IL_0311:  ldc.i4.m1
      IL_0312:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>1__state'
      IL_0317:  ldarg.0
      IL_0318:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<color>5__4'
      IL_031d:  ldc.i4.1
      IL_031e:  add
      IL_031f:  stloc.3
      IL_0320:  ldarg.0
      IL_0321:  ldloc.3
      IL_0322:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<color>5__4'
      IL_0327:  ldarg.0
      IL_0328:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<color>5__4'
      IL_032d:  ldc.i4.8
      IL_032e:  blt        IL_004a

      IL_0333:  ldarg.0
      IL_0334:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<flickering>5__1'
      IL_0339:  ldc.i4.1
      IL_033a:  add
      IL_033b:  stloc.3
      IL_033c:  ldarg.0
      IL_033d:  ldloc.3
      IL_033e:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<flickering>5__1'
      IL_0343:  ldarg.0
      IL_0344:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<flickering>5__1'
      IL_0349:  ldc.i4.2
      IL_034a:  blt        IL_003e

      IL_034f:  ldarg.0
      IL_0350:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<altitude>5__3'
      IL_0355:  ldc.i4.1
      IL_0356:  add
      IL_0357:  stloc.3
      IL_0358:  ldarg.0
      IL_0359:  ldloc.3
      IL_035a:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<altitude>5__3'
      IL_035f:  ldarg.0
      IL_0360:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<altitude>5__3'
      IL_0365:  ldc.i4.2
      IL_0366:  blt        IL_0032

      IL_036b:  ldarg.0
      IL_036c:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_0371:  ldc.i4.1
      IL_0372:  add
      IL_0373:  stloc.3
      IL_0374:  ldarg.0
      IL_0375:  ldloc.3
      IL_0376:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_037b:  ldarg.0
      IL_037c:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<shape>5__2'
      IL_0381:  ldc.i4.8
      IL_0382:  blt        IL_0026

      IL_0387:  ldc.i4.0
      IL_0388:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__14'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance class Game.CraftingRecipe 
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__14'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetProceduralCraftingRecipes>d__14'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__14'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> 
            'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__14'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__14'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__14'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__14'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__14'

  .field public static literal int32 Index = int32(0x000000D7)
  .field private class Game.BlockMesh[] m_headBlockMeshes
  .field private class Game.BlockMesh[] m_bodyBlockMeshes
  .field private class Game.BlockMesh[] m_finsBlockMeshes
  .field private static initonly string[] ShapeDisplayNames
  .field private static initonly string[] HeadNames
  .field public static initonly valuetype [Engine]Engine.Color[] FireworksColors
  .field public static initonly string[] FireworksColorDisplayNames
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       530 (0x212)
    .maxstack  10
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Matrix V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             valuetype [Engine]Engine.Color V_6,
             valuetype [Engine]Engine.Matrix V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_8,
             int32 V_9,
             float32 V_10,
             valuetype [Engine]Engine.Matrix V_11,
             int32 V_12)
    IL_0000:  ldstr      "Models/Fireworks"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "Body"
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0017:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_001c:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldstr      "Fins"
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_002e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0033:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0038:  stloc.2
    IL_0039:  ldc.i4.0
    IL_003a:  stloc.3
    IL_003b:  br         IL_00ea

    IL_0040:  ldloc.3
    IL_0041:  ldc.i4.8
    IL_0042:  div
    IL_0043:  stloc.s    V_4
    IL_0045:  ldloc.3
    IL_0046:  ldc.i4.8
    IL_0047:  rem
    IL_0048:  stloc.s    V_5
    IL_004a:  ldsfld     valuetype [Engine]Engine.Color[] Game.FireworksBlock::FireworksColors
    IL_004f:  ldloc.s    V_5
    IL_0051:  ldelem     [Engine]Engine.Color
    IL_0056:  stloc.s    V_6
    IL_0058:  ldloc.s    V_6
    IL_005a:  ldc.r4     0.75
    IL_005f:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0064:  stloc.s    V_6
    IL_0066:  ldloca.s   V_6
    IL_0068:  ldc.i4     0xff
    IL_006d:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0072:  ldloc.0
    IL_0073:  ldsfld     string[] Game.FireworksBlock::HeadNames
    IL_0078:  ldloc.s    V_4
    IL_007a:  ldelem.ref
    IL_007b:  ldc.i4.1
    IL_007c:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0081:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_0086:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_008b:  stloc.s    V_7
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.BlockMesh[] Game.FireworksBlock::m_headBlockMeshes
    IL_0093:  ldloc.3
    IL_0094:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0099:  stelem.ref
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.BlockMesh[] Game.FireworksBlock::m_headBlockMeshes
    IL_00a0:  ldloc.3
    IL_00a1:  ldelem.ref
    IL_00a2:  ldloc.0
    IL_00a3:  ldsfld     string[] Game.FireworksBlock::HeadNames
    IL_00a8:  ldloc.s    V_4
    IL_00aa:  ldelem.ref
    IL_00ab:  ldc.i4.1
    IL_00ac:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_00b1:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_00b6:  stloc.s    V_8
    IL_00b8:  ldloca.s   V_8
    IL_00ba:  ldc.i4.0
    IL_00bb:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_00c0:  ldloc.s    V_7
    IL_00c2:  ldc.r4     0.0
    IL_00c7:  ldc.r4     -0.25
    IL_00cc:  ldc.r4     0.0
    IL_00d1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00db:  ldc.i4.0
    IL_00dc:  ldc.i4.0
    IL_00dd:  ldc.i4.0
    IL_00de:  ldc.i4.0
    IL_00df:  ldloc.s    V_6
    IL_00e1:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_00e6:  ldloc.3
    IL_00e7:  ldc.i4.1
    IL_00e8:  add
    IL_00e9:  stloc.3
    IL_00ea:  ldloc.3
    IL_00eb:  ldc.i4.s   64
    IL_00ed:  blt        IL_0040

    IL_00f2:  ldc.i4.0
    IL_00f3:  stloc.s    V_9
    IL_00f5:  br         IL_0187

    IL_00fa:  ldc.r4     0.5
    IL_00ff:  ldloc.s    V_9
    IL_0101:  conv.r4
    IL_0102:  ldc.r4     0.5
    IL_0107:  mul
    IL_0108:  add
    IL_0109:  stloc.s    V_10
    IL_010b:  ldloc.s    V_10
    IL_010d:  ldc.r4     1.
    IL_0112:  ldloc.s    V_10
    IL_0114:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0119:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(valuetype [Engine]Engine.Vector3)
    IL_011e:  stloc.s    V_11
    IL_0120:  ldarg.0
    IL_0121:  ldfld      class Game.BlockMesh[] Game.FireworksBlock::m_bodyBlockMeshes
    IL_0126:  ldloc.s    V_9
    IL_0128:  newobj     instance void Game.BlockMesh::.ctor()
    IL_012d:  stelem.ref
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.BlockMesh[] Game.FireworksBlock::m_bodyBlockMeshes
    IL_0134:  ldloc.s    V_9
    IL_0136:  ldelem.ref
    IL_0137:  ldloc.0
    IL_0138:  ldstr      "Body"
    IL_013d:  ldc.i4.1
    IL_013e:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0143:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_0148:  stloc.s    V_8
    IL_014a:  ldloca.s   V_8
    IL_014c:  ldc.i4.0
    IL_014d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_0152:  ldloc.1
    IL_0153:  ldloc.s    V_11
    IL_0155:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_015a:  ldc.r4     0.0
    IL_015f:  ldc.r4     -0.25
    IL_0164:  ldc.r4     0.0
    IL_0169:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
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
    IL_0181:  ldloc.s    V_9
    IL_0183:  ldc.i4.1
    IL_0184:  add
    IL_0185:  stloc.s    V_9
    IL_0187:  ldloc.s    V_9
    IL_0189:  ldc.i4.2
    IL_018a:  blt        IL_00fa

    IL_018f:  ldc.i4.0
    IL_0190:  stloc.s    V_12
    IL_0192:  br.s       IL_0206

    IL_0194:  ldarg.0
    IL_0195:  ldfld      class Game.BlockMesh[] Game.FireworksBlock::m_finsBlockMeshes
    IL_019a:  ldloc.s    V_12
    IL_019c:  newobj     instance void Game.BlockMesh::.ctor()
    IL_01a1:  stelem.ref
    IL_01a2:  ldarg.0
    IL_01a3:  ldfld      class Game.BlockMesh[] Game.FireworksBlock::m_finsBlockMeshes
    IL_01a8:  ldloc.s    V_12
    IL_01aa:  ldelem.ref
    IL_01ab:  ldloc.0
    IL_01ac:  ldstr      "Fins"
    IL_01b1:  ldc.i4.1
    IL_01b2:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01b7:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_01bc:  stloc.s    V_8
    IL_01be:  ldloca.s   V_8
    IL_01c0:  ldc.i4.0
    IL_01c1:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
    IL_01c6:  ldloc.2
    IL_01c7:  ldc.r4     0.0
    IL_01cc:  ldc.r4     -0.25
    IL_01d1:  ldc.r4     0.0
    IL_01d6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01db:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01e0:  ldc.i4.0
    IL_01e1:  ldc.i4.0
    IL_01e2:  ldc.i4.0
    IL_01e3:  ldc.i4.0
    IL_01e4:  ldloc.s    V_12
    IL_01e6:  brfalse.s  IL_01f6

    IL_01e8:  ldc.i4     0xe0
    IL_01ed:  ldc.i4.0
    IL_01ee:  ldc.i4.0
    IL_01ef:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01f4:  br.s       IL_01fb

    IL_01f6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01fb:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                           valuetype [Engine]Engine.Matrix,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           bool,
                                                                           valuetype [Engine]Engine.Color)
    IL_0200:  ldloc.s    V_12
    IL_0202:  ldc.i4.1
    IL_0203:  add
    IL_0204:  stloc.s    V_12
    IL_0206:  ldloc.s    V_12
    IL_0208:  ldc.i4.2
    IL_0209:  blt.s      IL_0194

    IL_020b:  ldarg.0
    IL_020c:  call       instance void Game.Block::Initialize()
    IL_0211:  ret
  } // end of method FireworksBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method FireworksBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       125 (0x7d)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype Game.FireworksBlock/Shape V_1,
             int32 V_2,
             bool V_3)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.FireworksBlock::GetColor(int32)
    IL_000c:  stloc.0
    IL_000d:  dup
    IL_000e:  call       valuetype Game.FireworksBlock/Shape Game.FireworksBlock::GetShape(int32)
    IL_0013:  stloc.1
    IL_0014:  dup
    IL_0015:  call       int32 Game.FireworksBlock::GetAltitude(int32)
    IL_001a:  stloc.2
    IL_001b:  call       bool Game.FireworksBlock::GetFlickering(int32)
    IL_0020:  stloc.3
    IL_0021:  ldarg.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.BlockMesh[] Game.FireworksBlock::m_headBlockMeshes
    IL_0028:  ldloc.1
    IL_0029:  ldc.i4.8
    IL_002a:  mul
    IL_002b:  ldloc.0
    IL_002c:  add
    IL_002d:  ldelem.ref
    IL_002e:  ldarg.3
    IL_002f:  ldc.r4     2.
    IL_0034:  ldarg.s    size
    IL_0036:  mul
    IL_0037:  ldarg.s    matrix
    IL_0039:  ldarg.s    environmentData
    IL_003b:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0040:  ldarg.1
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.BlockMesh[] Game.FireworksBlock::m_bodyBlockMeshes
    IL_0047:  ldloc.2
    IL_0048:  ldelem.ref
    IL_0049:  ldarg.3
    IL_004a:  ldc.r4     2.
    IL_004f:  ldarg.s    size
    IL_0051:  mul
    IL_0052:  ldarg.s    matrix
    IL_0054:  ldarg.s    environmentData
    IL_0056:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_005b:  ldarg.1
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.BlockMesh[] Game.FireworksBlock::m_finsBlockMeshes
    IL_0062:  ldloc.3
    IL_0063:  brtrue.s   IL_0068

    IL_0065:  ldc.i4.0
    IL_0066:  br.s       IL_0069

    IL_0068:  ldc.i4.1
    IL_0069:  ldelem.ref
    IL_006a:  ldarg.3
    IL_006b:  ldc.r4     2.
    IL_0070:  ldarg.s    size
    IL_0072:  mul
    IL_0073:  ldarg.s    matrix
    IL_0075:  ldarg.s    environmentData
    IL_0077:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_007c:  ret
  } // end of method FireworksBlock::DrawBlock

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       102 (0x66)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype Game.FireworksBlock/Shape V_1,
             int32 V_2,
             bool V_3)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  dup
    IL_0007:  call       int32 Game.FireworksBlock::GetColor(int32)
    IL_000c:  stloc.0
    IL_000d:  dup
    IL_000e:  call       valuetype Game.FireworksBlock/Shape Game.FireworksBlock::GetShape(int32)
    IL_0013:  stloc.1
    IL_0014:  dup
    IL_0015:  call       int32 Game.FireworksBlock::GetAltitude(int32)
    IL_001a:  stloc.2
    IL_001b:  call       bool Game.FireworksBlock::GetFlickering(int32)
    IL_0020:  stloc.3
    IL_0021:  ldstr      "Fireworks {0} {1}{2} ({3})"
    IL_0026:  ldc.i4.4
    IL_0027:  newarr     [System.Runtime]System.Object
    IL_002c:  dup
    IL_002d:  ldc.i4.0
    IL_002e:  ldsfld     string[] Game.FireworksBlock::FireworksColorDisplayNames
    IL_0033:  ldloc.0
    IL_0034:  ldelem.ref
    IL_0035:  stelem.ref
    IL_0036:  dup
    IL_0037:  ldc.i4.1
    IL_0038:  ldloc.3
    IL_0039:  brtrue.s   IL_003e

    IL_003b:  ldnull
    IL_003c:  br.s       IL_0043

    IL_003e:  ldstr      "Flickering "
    IL_0043:  stelem.ref
    IL_0044:  dup
    IL_0045:  ldc.i4.2
    IL_0046:  ldsfld     string[] Game.FireworksBlock::ShapeDisplayNames
    IL_004b:  ldloc.1
    IL_004c:  ldelem.ref
    IL_004d:  stelem.ref
    IL_004e:  dup
    IL_004f:  ldc.i4.3
    IL_0050:  ldloc.2
    IL_0051:  brfalse.s  IL_005a

    IL_0053:  ldstr      "High"
    IL_0058:  br.s       IL_005f

    IL_005a:  ldstr      "Low"
    IL_005f:  stelem.ref
    IL_0060:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0065:  ret
  } // end of method FireworksBlock::GetDisplayName

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2C 47 61 6D 65 2E 46 69 72 65 77 6F 72 6B   // ..,Game.Firework
                                                                                                                                                      73 42 6C 6F 63 6B 2B 3C 47 65 74 43 72 65 61 74   // sBlock+<GetCreat
                                                                                                                                                      69 76 65 56 61 6C 75 65 73 3E 64 5F 5F 31 33 00   // iveValues>d__13.
                                                                                                                                                      00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.FireworksBlock/'<GetCreativeValues>d__13'::.ctor(int32)
    IL_0007:  ret
  } // end of method FireworksBlock::GetCreativeValues

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 37 47 61 6D 65 2E 46 69 72 65 77 6F 72 6B   // ..7Game.Firework
                                                                                                                                                      73 42 6C 6F 63 6B 2B 3C 47 65 74 50 72 6F 63 65   // sBlock+<GetProce
                                                                                                                                                      64 75 72 61 6C 43 72 61 66 74 69 6E 67 52 65 63   // duralCraftingRec
                                                                                                                                                      69 70 65 73 3E 64 5F 5F 31 34 00 00 )             // ipes>d__14..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.FireworksBlock/'<GetProceduralCraftingRecipes>d__14'::.ctor(int32)
    IL_0007:  ret
  } // end of method FireworksBlock::GetProceduralCraftingRecipes

  .method public hidebysig static valuetype Game.FireworksBlock/Shape 
          GetShape(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  and
    IL_0003:  ret
  } // end of method FireworksBlock::GetShape

  .method public hidebysig static int32  SetShape(int32 data,
                                                  valuetype Game.FireworksBlock/Shape shape) cil managed
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
  } // end of method FireworksBlock::SetShape

  .method public hidebysig static int32  GetAltitude(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  shr
    IL_0003:  ldc.i4.1
    IL_0004:  and
    IL_0005:  ret
  } // end of method FireworksBlock::GetAltitude

  .method public hidebysig static int32  SetAltitude(int32 data,
                                                     int32 altitude) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -9
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.1
    IL_0006:  and
    IL_0007:  ldc.i4.3
    IL_0008:  shl
    IL_0009:  or
    IL_000a:  ret
  } // end of method FireworksBlock::SetAltitude

  .method public hidebysig static bool  GetFlickering(int32 data) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  shr
    IL_0003:  ldc.i4.1
    IL_0004:  and
    IL_0005:  ldc.i4.0
    IL_0006:  cgt.un
    IL_0008:  ret
  } // end of method FireworksBlock::GetFlickering

  .method public hidebysig static int32  SetFlickering(int32 data,
                                                       bool flickering) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -17
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  brtrue.s   IL_000a

    IL_0007:  ldc.i4.0
    IL_0008:  br.s       IL_000b

    IL_000a:  ldc.i4.1
    IL_000b:  ldc.i4.4
    IL_000c:  shl
    IL_000d:  or
    IL_000e:  ret
  } // end of method FireworksBlock::SetFlickering

  .method public hidebysig static int32  GetColor(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.5
    IL_0002:  shr
    IL_0003:  ldc.i4.7
    IL_0004:  and
    IL_0005:  ret
  } // end of method FireworksBlock::GetColor

  .method public hidebysig static int32  SetColor(int32 data,
                                                  int32 color) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xffffff1f
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.7
    IL_0009:  and
    IL_000a:  ldc.i4.5
    IL_000b:  shl
    IL_000c:  or
    IL_000d:  ret
  } // end of method FireworksBlock::SetColor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   64
    IL_0003:  newarr     Game.BlockMesh
    IL_0008:  stfld      class Game.BlockMesh[] Game.FireworksBlock::m_headBlockMeshes
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.2
    IL_000f:  newarr     Game.BlockMesh
    IL_0014:  stfld      class Game.BlockMesh[] Game.FireworksBlock::m_bodyBlockMeshes
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.2
    IL_001b:  newarr     Game.BlockMesh
    IL_0020:  stfld      class Game.BlockMesh[] Game.FireworksBlock::m_finsBlockMeshes
    IL_0025:  ldarg.0
    IL_0026:  call       instance void Game.Block::.ctor()
    IL_002b:  ret
  } // end of method FireworksBlock::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       422 (0x1a6)
    .maxstack  6
    IL_0000:  ldc.i4.8
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldstr      "Small Burst"
    IL_000d:  stelem.ref
    IL_000e:  dup
    IL_000f:  ldc.i4.1
    IL_0010:  ldstr      "Large Burst"
    IL_0015:  stelem.ref
    IL_0016:  dup
    IL_0017:  ldc.i4.2
    IL_0018:  ldstr      "Circle"
    IL_001d:  stelem.ref
    IL_001e:  dup
    IL_001f:  ldc.i4.3
    IL_0020:  ldstr      "Disc"
    IL_0025:  stelem.ref
    IL_0026:  dup
    IL_0027:  ldc.i4.4
    IL_0028:  ldstr      "Sphere"
    IL_002d:  stelem.ref
    IL_002e:  dup
    IL_002f:  ldc.i4.5
    IL_0030:  ldstr      "Short Trails"
    IL_0035:  stelem.ref
    IL_0036:  dup
    IL_0037:  ldc.i4.6
    IL_0038:  ldstr      "Long Trails"
    IL_003d:  stelem.ref
    IL_003e:  dup
    IL_003f:  ldc.i4.7
    IL_0040:  ldstr      "Flat Trails"
    IL_0045:  stelem.ref
    IL_0046:  stsfld     string[] Game.FireworksBlock::ShapeDisplayNames
    IL_004b:  ldc.i4.8
    IL_004c:  newarr     [System.Runtime]System.String
    IL_0051:  dup
    IL_0052:  ldc.i4.0
    IL_0053:  ldstr      "HeadConeSmall"
    IL_0058:  stelem.ref
    IL_0059:  dup
    IL_005a:  ldc.i4.1
    IL_005b:  ldstr      "HeadConeLarge"
    IL_0060:  stelem.ref
    IL_0061:  dup
    IL_0062:  ldc.i4.2
    IL_0063:  ldstr      "HeadCylinderSmall"
    IL_0068:  stelem.ref
    IL_0069:  dup
    IL_006a:  ldc.i4.3
    IL_006b:  ldstr      "HeadCylinderLarge"
    IL_0070:  stelem.ref
    IL_0071:  dup
    IL_0072:  ldc.i4.4
    IL_0073:  ldstr      "HeadSphere"
    IL_0078:  stelem.ref
    IL_0079:  dup
    IL_007a:  ldc.i4.5
    IL_007b:  ldstr      "HeadDiamondSmall"
    IL_0080:  stelem.ref
    IL_0081:  dup
    IL_0082:  ldc.i4.6
    IL_0083:  ldstr      "HeadDiamondLarge"
    IL_0088:  stelem.ref
    IL_0089:  dup
    IL_008a:  ldc.i4.7
    IL_008b:  ldstr      "HeadCylinderFlat"
    IL_0090:  stelem.ref
    IL_0091:  stsfld     string[] Game.FireworksBlock::HeadNames
    IL_0096:  ldc.i4.8
    IL_0097:  newarr     [Engine]Engine.Color
    IL_009c:  dup
    IL_009d:  ldc.i4.0
    IL_009e:  ldc.i4     0xff
    IL_00a3:  ldc.i4     0xff
    IL_00a8:  ldc.i4     0xff
    IL_00ad:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00b2:  stelem     [Engine]Engine.Color
    IL_00b7:  dup
    IL_00b8:  ldc.i4.1
    IL_00b9:  ldc.i4.s   85
    IL_00bb:  ldc.i4     0xff
    IL_00c0:  ldc.i4     0xff
    IL_00c5:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00ca:  stelem     [Engine]Engine.Color
    IL_00cf:  dup
    IL_00d0:  ldc.i4.2
    IL_00d1:  ldc.i4     0xff
    IL_00d6:  ldc.i4.s   85
    IL_00d8:  ldc.i4.s   85
    IL_00da:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00df:  stelem     [Engine]Engine.Color
    IL_00e4:  dup
    IL_00e5:  ldc.i4.3
    IL_00e6:  ldc.i4.s   85
    IL_00e8:  ldc.i4.s   85
    IL_00ea:  ldc.i4     0xff
    IL_00ef:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00f4:  stelem     [Engine]Engine.Color
    IL_00f9:  dup
    IL_00fa:  ldc.i4.4
    IL_00fb:  ldc.i4     0xff
    IL_0100:  ldc.i4     0xff
    IL_0105:  ldc.i4.s   85
    IL_0107:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_010c:  stelem     [Engine]Engine.Color
    IL_0111:  dup
    IL_0112:  ldc.i4.5
    IL_0113:  ldc.i4.s   85
    IL_0115:  ldc.i4     0xff
    IL_011a:  ldc.i4.s   85
    IL_011c:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0121:  stelem     [Engine]Engine.Color
    IL_0126:  dup
    IL_0127:  ldc.i4.6
    IL_0128:  ldc.i4     0xff
    IL_012d:  ldc.i4     0xaa
    IL_0132:  ldc.i4.0
    IL_0133:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0138:  stelem     [Engine]Engine.Color
    IL_013d:  dup
    IL_013e:  ldc.i4.7
    IL_013f:  ldc.i4     0xff
    IL_0144:  ldc.i4.s   85
    IL_0146:  ldc.i4     0xff
    IL_014b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0150:  stelem     [Engine]Engine.Color
    IL_0155:  stsfld     valuetype [Engine]Engine.Color[] Game.FireworksBlock::FireworksColors
    IL_015a:  ldc.i4.8
    IL_015b:  newarr     [System.Runtime]System.String
    IL_0160:  dup
    IL_0161:  ldc.i4.0
    IL_0162:  ldstr      "White"
    IL_0167:  stelem.ref
    IL_0168:  dup
    IL_0169:  ldc.i4.1
    IL_016a:  ldstr      "Cyan"
    IL_016f:  stelem.ref
    IL_0170:  dup
    IL_0171:  ldc.i4.2
    IL_0172:  ldstr      "Red"
    IL_0177:  stelem.ref
    IL_0178:  dup
    IL_0179:  ldc.i4.3
    IL_017a:  ldstr      "Blue"
    IL_017f:  stelem.ref
    IL_0180:  dup
    IL_0181:  ldc.i4.4
    IL_0182:  ldstr      "Yellow"
    IL_0187:  stelem.ref
    IL_0188:  dup
    IL_0189:  ldc.i4.5
    IL_018a:  ldstr      "Green"
    IL_018f:  stelem.ref
    IL_0190:  dup
    IL_0191:  ldc.i4.6
    IL_0192:  ldstr      "Orange"
    IL_0197:  stelem.ref
    IL_0198:  dup
    IL_0199:  ldc.i4.7
    IL_019a:  ldstr      "Purple"
    IL_019f:  stelem.ref
    IL_01a0:  stsfld     string[] Game.FireworksBlock::FireworksColorDisplayNames
    IL_01a5:  ret
  } // end of method FireworksBlock::.cctor

} // end of class Game.FireworksBlock