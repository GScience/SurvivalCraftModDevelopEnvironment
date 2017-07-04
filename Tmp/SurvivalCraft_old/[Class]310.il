.class public auto ansi beforefieldinit Game.EggBlock
       extends Game.Block
{
  .class auto ansi nested public beforefieldinit EggType
         extends [System.Runtime]System.Object
  {
    .field public int32 EggTypeIndex
    .field public bool ShowEgg
    .field public string DisplayName
    .field public string TemplateName
    .field public float32 NutritionalValue
    .field public int32 TextureSlot
    .field public valuetype [Engine]Engine.Color Color
    .field public valuetype [Engine]Engine.Vector2 ScaleUV
    .field public bool SwapUV
    .field public float32 Scale
    .field public class Game.BlockMesh BlockMesh
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method EggType::.ctor

  } // end of class EggType

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [System.Runtime]System.Guid eggParameterSetGuid
    .field public class [System.Runtime]System.Func`2<class [EntitySystem]TemplatesDatabase.DatabaseObject,bool> '<>9__0'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_0'::.ctor

    .method assembly hidebysig instance bool 
            '<Initialize>b__0'(class [EntitySystem]TemplatesDatabase.DatabaseObject o) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.DatabaseObject::get_EffectiveInheritanceRoot()
      IL_0006:  callvirt   instance valuetype [System.Runtime]System.Guid [EntitySystem]TemplatesDatabase.DatabaseObject::get_Guid()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      valuetype [System.Runtime]System.Guid Game.EggBlock/'<>c__DisplayClass3_0'::eggParameterSetGuid
      IL_0011:  call       bool [System.Runtime]System.Guid::op_Equality(valuetype [System.Runtime]System.Guid,
                                                                         valuetype [System.Runtime]System.Guid)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass3_0'::'<Initialize>b__0'

  } // end of class '<>c__DisplayClass3_0'

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
    .field public class Game.EggBlock '<>4__this'
    .field private class Game.EggBlock/EggType '<eggType>5__1'
    .field private valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> '<>7__wrap1'
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
      IL_0008:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__10'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       31 (0x1f)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.s   -3
      IL_000a:  beq.s      IL_0014

      IL_000c:  ldloc.0
      IL_000d:  ldc.i4.1
      IL_000e:  beq.s      IL_0014

      IL_0010:  ldloc.0
      IL_0011:  ldc.i4.2
      IL_0012:  bne.un.s   IL_001e

      IL_0014:  nop
      .try
      {
        IL_0015:  leave.s    IL_001e

      }  // end .try
      finally
      {
        IL_0017:  ldarg.0
        IL_0018:  call       instance void Game.EggBlock/'<GetCreativeValues>d__10'::'<>m__Finally1'()
        IL_001d:  endfinally
      }  // end handler
      IL_001e:  ret
    } // end of method '<GetCreativeValues>d__10'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       285 (0x11d)
      .maxstack  5
      .locals init (bool V_0,
               int32 V_1)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  switch     ( 
                              IL_0020,
                              IL_0095,
                              IL_00df)
        IL_0019:  ldc.i4.0
        IL_001a:  stloc.0
        IL_001b:  leave      IL_011b

        IL_0020:  ldarg.0
        IL_0021:  ldc.i4.m1
        IL_0022:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
        IL_0027:  ldarg.0
        IL_0028:  ldarg.0
        IL_0029:  ldfld      class Game.EggBlock Game.EggBlock/'<GetCreativeValues>d__10'::'<>4__this'
        IL_002e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
        IL_0033:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType>::GetEnumerator()
        IL_0038:  stfld      valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetCreativeValues>d__10'::'<>7__wrap1'
        IL_003d:  ldarg.0
        IL_003e:  ldc.i4.s   -3
        IL_0040:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
        IL_0045:  br         IL_00ee

        IL_004a:  ldarg.0
        IL_004b:  ldarg.0
        IL_004c:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetCreativeValues>d__10'::'<>7__wrap1'
        IL_0051:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>::get_Current()
        IL_0056:  stfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__10'::'<eggType>5__1'
        IL_005b:  ldarg.0
        IL_005c:  ldfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__10'::'<eggType>5__1'
        IL_0061:  ldfld      bool Game.EggBlock/EggType::ShowEgg
        IL_0066:  brfalse.s  IL_00e7

        IL_0068:  ldarg.0
        IL_0069:  ldc.i4.s   118
        IL_006b:  ldc.i4.0
        IL_006c:  ldc.i4.0
        IL_006d:  ldarg.0
        IL_006e:  ldfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__10'::'<eggType>5__1'
        IL_0073:  ldfld      int32 Game.EggBlock/EggType::EggTypeIndex
        IL_0078:  call       int32 Game.EggBlock::SetEggType(int32,
                                                             int32)
        IL_007d:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
        IL_0082:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>2__current'
        IL_0087:  ldarg.0
        IL_0088:  ldc.i4.1
        IL_0089:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
        IL_008e:  ldc.i4.1
        IL_008f:  stloc.0
        IL_0090:  leave      IL_011b

        IL_0095:  ldarg.0
        IL_0096:  ldc.i4.s   -3
        IL_0098:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
        IL_009d:  ldarg.0
        IL_009e:  ldfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__10'::'<eggType>5__1'
        IL_00a3:  ldfld      float32 Game.EggBlock/EggType::NutritionalValue
        IL_00a8:  ldc.r4     0.0
        IL_00ad:  ble.un.s   IL_00e7

        IL_00af:  ldarg.0
        IL_00b0:  ldc.i4.s   118
        IL_00b2:  ldc.i4.0
        IL_00b3:  ldc.i4.0
        IL_00b4:  ldarg.0
        IL_00b5:  ldfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__10'::'<eggType>5__1'
        IL_00ba:  ldfld      int32 Game.EggBlock/EggType::EggTypeIndex
        IL_00bf:  call       int32 Game.EggBlock::SetEggType(int32,
                                                             int32)
        IL_00c4:  ldc.i4.1
        IL_00c5:  call       int32 Game.EggBlock::SetIsCooked(int32,
                                                              bool)
        IL_00ca:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
        IL_00cf:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>2__current'
        IL_00d4:  ldarg.0
        IL_00d5:  ldc.i4.2
        IL_00d6:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
        IL_00db:  ldc.i4.1
        IL_00dc:  stloc.0
        IL_00dd:  leave.s    IL_011b

        IL_00df:  ldarg.0
        IL_00e0:  ldc.i4.s   -3
        IL_00e2:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
        IL_00e7:  ldarg.0
        IL_00e8:  ldnull
        IL_00e9:  stfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__10'::'<eggType>5__1'
        IL_00ee:  ldarg.0
        IL_00ef:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetCreativeValues>d__10'::'<>7__wrap1'
        IL_00f4:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>::MoveNext()
        IL_00f9:  brtrue     IL_004a

        IL_00fe:  ldarg.0
        IL_00ff:  call       instance void Game.EggBlock/'<GetCreativeValues>d__10'::'<>m__Finally1'()
        IL_0104:  ldarg.0
        IL_0105:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetCreativeValues>d__10'::'<>7__wrap1'
        IL_010a:  initobj    valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>
        IL_0110:  ldc.i4.0
        IL_0111:  stloc.0
        IL_0112:  leave.s    IL_011b

      }  // end .try
      fault
      {
        IL_0114:  ldarg.0
        IL_0115:  call       instance void Game.EggBlock/'<GetCreativeValues>d__10'::System.IDisposable.Dispose()
        IL_011a:  endfinally
      }  // end handler
      IL_011b:  ldloc.0
      IL_011c:  ret
    } // end of method '<GetCreativeValues>d__10'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetCreativeValues>d__10'::'<>7__wrap1'
      IL_000d:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>
      IL_0013:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__10'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>2__current'
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
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__10'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.EggBlock/'<GetCreativeValues>d__10' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__10'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.EggBlock/'<GetCreativeValues>d__10'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.EggBlock Game.EggBlock/'<GetCreativeValues>d__10'::'<>4__this'
      IL_0030:  stfld      class Game.EggBlock Game.EggBlock/'<GetCreativeValues>d__10'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.EggBlock/'<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__10'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.EggBlock/'<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__10'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.EggBlock/'<GetCreativeValues>d__10'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__10'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__10'

  .class auto ansi sealed nested private beforefieldinit '<GetProceduralCraftingRecipes>d__11'
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
    .field private class Game.EggBlock/EggType '<eggType>5__1'
    .field public class Game.EggBlock '<>4__this'
    .field private int32 '<rot>5__2'
    .field private valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> '<>7__wrap1'
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
      IL_0008:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__11'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       27 (0x1b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.s   -3
      IL_000a:  beq.s      IL_0010

      IL_000c:  ldloc.0
      IL_000d:  ldc.i4.1
      IL_000e:  bne.un.s   IL_001a

      IL_0010:  nop
      .try
      {
        IL_0011:  leave.s    IL_001a

      }  // end .try
      finally
      {
        IL_0013:  ldarg.0
        IL_0014:  call       instance void Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__11'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       434 (0x1b2)
      .maxstack  6
      .locals init (bool V_0,
               int32 V_1,
               valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType> V_2,
               class Game.CraftingRecipe V_3,
               int32 V_4,
               int32 V_5,
               int32 V_6)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  brfalse.s  IL_0018

        IL_000a:  ldloc.1
        IL_000b:  ldc.i4.1
        IL_000c:  beq        IL_0156

        IL_0011:  ldc.i4.0
        IL_0012:  stloc.0
        IL_0013:  leave      IL_01b0

        IL_0018:  ldarg.0
        IL_0019:  ldc.i4.m1
        IL_001a:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>1__state'
        IL_001f:  ldarg.0
        IL_0020:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
        IL_0025:  ldc.i4.s   118
        IL_0027:  ldelem.ref
        IL_0028:  castclass  Game.EggBlock
        IL_002d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType> Game.EggBlock::get_EggTypes()
        IL_0032:  stloc.2
        IL_0033:  ldloca.s   V_2
        IL_0035:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType>::GetEnumerator()
        IL_003a:  stfld      valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>7__wrap1'
        IL_003f:  ldarg.0
        IL_0040:  ldc.i4.s   -3
        IL_0042:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>1__state'
        IL_0047:  br         IL_0183

        IL_004c:  ldarg.0
        IL_004d:  ldarg.0
        IL_004e:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>7__wrap1'
        IL_0053:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType>::get_Current()
        IL_0058:  stfld      class Game.EggBlock/EggType Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<eggType>5__1'
        IL_005d:  ldarg.0
        IL_005e:  ldfld      class Game.EggBlock/EggType Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<eggType>5__1'
        IL_0063:  ldfld      float32 Game.EggBlock/EggType::NutritionalValue
        IL_0068:  ldc.r4     0.0
        IL_006d:  ble.un     IL_017c

        IL_0072:  ldarg.0
        IL_0073:  ldc.i4.0
        IL_0074:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<rot>5__2'
        IL_0079:  br         IL_0170

        IL_007e:  newobj     instance void Game.CraftingRecipe::.ctor()
        IL_0083:  dup
        IL_0084:  ldc.i4.1
        IL_0085:  stfld      int32 Game.CraftingRecipe::ResultCount
        IL_008a:  dup
        IL_008b:  ldc.i4.s   118
        IL_008d:  ldc.i4.0
        IL_008e:  ldc.i4.0
        IL_008f:  ldc.i4.1
        IL_0090:  call       int32 Game.EggBlock::SetIsCooked(int32,
                                                              bool)
        IL_0095:  ldarg.0
        IL_0096:  ldfld      class Game.EggBlock/EggType Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<eggType>5__1'
        IL_009b:  ldfld      int32 Game.EggBlock/EggType::EggTypeIndex
        IL_00a0:  call       int32 Game.EggBlock::SetEggType(int32,
                                                             int32)
        IL_00a5:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
        IL_00aa:  stfld      int32 Game.CraftingRecipe::ResultValue
        IL_00af:  dup
        IL_00b0:  ldc.i4.1
        IL_00b1:  stfld      int32 Game.CraftingRecipe::RemainsCount
        IL_00b6:  dup
        IL_00b7:  ldc.i4.s   91
        IL_00b9:  call       int32 Game.Terrain::MakeBlockValue(int32)
        IL_00be:  stfld      int32 Game.CraftingRecipe::RemainsValue
        IL_00c3:  dup
        IL_00c4:  ldc.r4     1.
        IL_00c9:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
        IL_00ce:  dup
        IL_00cf:  ldstr      "Cook an egg to increase its nutritional value"
        IL_00d4:  stfld      string Game.CraftingRecipe::Description
        IL_00d9:  stloc.3
        IL_00da:  ldc.i4.0
        IL_00db:  ldc.i4.1
        IL_00dc:  call       int32 Game.EggBlock::SetIsLaid(int32,
                                                            bool)
        IL_00e1:  ldarg.0
        IL_00e2:  ldfld      class Game.EggBlock/EggType Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<eggType>5__1'
        IL_00e7:  ldfld      int32 Game.EggBlock/EggType::EggTypeIndex
        IL_00ec:  call       int32 Game.EggBlock::SetEggType(int32,
                                                             int32)
        IL_00f1:  stloc.s    V_4
        IL_00f3:  ldarg.0
        IL_00f4:  ldfld      class Game.EggBlock Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>4__this'
        IL_00f9:  ldc.i4.s   118
        IL_00fb:  ldc.i4.0
        IL_00fc:  ldloc.s    V_4
        IL_00fe:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
        IL_0103:  ldarg.0
        IL_0104:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<rot>5__2'
        IL_0109:  callvirt   instance int32 Game.Block::SetDamage(int32,
                                                                  int32)
        IL_010e:  stloc.s    V_5
        IL_0110:  ldloc.3
        IL_0111:  ldfld      string[] Game.CraftingRecipe::Ingredients
        IL_0116:  ldc.i4.0
        IL_0117:  ldstr      "egg:"
        IL_011c:  ldloc.s    V_5
        IL_011e:  call       int32 Game.Terrain::ExtractData(int32)
        IL_0123:  stloc.s    V_6
        IL_0125:  ldloca.s   V_6
        IL_0127:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
        IL_012c:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
        IL_0131:  call       string [System.Runtime]System.String::Concat(string,
                                                                          string)
        IL_0136:  stelem.ref
        IL_0137:  ldloc.3
        IL_0138:  ldfld      string[] Game.CraftingRecipe::Ingredients
        IL_013d:  ldc.i4.1
        IL_013e:  ldstr      "waterbucket"
        IL_0143:  stelem.ref
        IL_0144:  ldarg.0
        IL_0145:  ldloc.3
        IL_0146:  stfld      class Game.CraftingRecipe Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>2__current'
        IL_014b:  ldarg.0
        IL_014c:  ldc.i4.1
        IL_014d:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>1__state'
        IL_0152:  ldc.i4.1
        IL_0153:  stloc.0
        IL_0154:  leave.s    IL_01b0

        IL_0156:  ldarg.0
        IL_0157:  ldc.i4.s   -3
        IL_0159:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>1__state'
        IL_015e:  ldarg.0
        IL_015f:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<rot>5__2'
        IL_0164:  ldc.i4.1
        IL_0165:  add
        IL_0166:  stloc.s    V_6
        IL_0168:  ldarg.0
        IL_0169:  ldloc.s    V_6
        IL_016b:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<rot>5__2'
        IL_0170:  ldarg.0
        IL_0171:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<rot>5__2'
        IL_0176:  ldc.i4.1
        IL_0177:  ble        IL_007e

        IL_017c:  ldarg.0
        IL_017d:  ldnull
        IL_017e:  stfld      class Game.EggBlock/EggType Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<eggType>5__1'
        IL_0183:  ldarg.0
        IL_0184:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>7__wrap1'
        IL_0189:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType>::MoveNext()
        IL_018e:  brtrue     IL_004c

        IL_0193:  ldarg.0
        IL_0194:  call       instance void Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>m__Finally1'()
        IL_0199:  ldarg.0
        IL_019a:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>7__wrap1'
        IL_019f:  initobj    valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType>
        IL_01a5:  ldc.i4.0
        IL_01a6:  stloc.0
        IL_01a7:  leave.s    IL_01b0

      }  // end .try
      fault
      {
        IL_01a9:  ldarg.0
        IL_01aa:  call       instance void Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::System.IDisposable.Dispose()
        IL_01af:  endfinally
      }  // end handler
      IL_01b0:  ldloc.0
      IL_01b1:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__11'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>7__wrap1'
      IL_000d:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType>
      IL_0013:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__11'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance class Game.CraftingRecipe 
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__11'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetProceduralCraftingRecipes>d__11'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__11'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> 
            'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.EggBlock/'<GetProceduralCraftingRecipes>d__11' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.EggBlock Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>4__this'
      IL_0030:  stfld      class Game.EggBlock Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__11'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__11'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__11'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__11'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__11'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass15_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string templateName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass15_0'::.ctor

    .method assembly hidebysig instance bool 
            '<GetEggTypeByCreatureTemplateName>b__0'(class Game.EggBlock/EggType e) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.EggBlock/EggType::TemplateName
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.EggBlock/'<>c__DisplayClass15_0'::templateName
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass15_0'::'<GetEggTypeByCreatureTemplateName>b__0'

  } // end of class '<>c__DisplayClass15_0'

  .field public static literal int32 Index = int32(0x00000076)
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> m_eggTypes
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       821 (0x335)
    .maxstack  8
    .locals init (class Game.EggBlock/'<>c__DisplayClass3_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.EggBlock/EggType> V_1,
             class [EntitySystem]TemplatesDatabase.DatabaseObjectType V_2,
             class [Engine]Engine.Graphics.Model V_3,
             valuetype [Engine]Engine.Matrix V_4,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.DatabaseObject> V_5,
             class [System.Runtime]System.Func`2<class [EntitySystem]TemplatesDatabase.DatabaseObject,bool> V_6,
             class [EntitySystem]TemplatesDatabase.DatabaseObject V_7,
             int32 V_8,
             int32 V_9,
             class Game.EggBlock/EggType V_10,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> V_11,
             class Game.EggBlock/EggType V_12,
             valuetype [Engine]Engine.Matrix V_13,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_14)
    IL_0000:  newobj     instance void Game.EggBlock/'<>c__DisplayClass3_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.EggBlock/EggType>::.ctor()
    IL_000b:  stloc.1
    IL_000c:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
    IL_0011:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_ParameterSetType()
    IL_0016:  stloc.2
    IL_0017:  ldloc.0
    IL_0018:  ldstr      "300ff557-775f-4c7c-a88a-26655369f00b"
    IL_001d:  newobj     instance void [System.Runtime]System.Guid::.ctor(string)
    IL_0022:  stfld      valuetype [System.Runtime]System.Guid Game.EggBlock/'<>c__DisplayClass3_0'::eggParameterSetGuid
    IL_0027:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
    IL_002c:  callvirt   instance class [EntitySystem]TemplatesDatabase.Database [EntitySystem]GameEntitySystem.GameDatabase::get_Database()
    IL_0031:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.Database::get_Root()
    IL_0036:  ldloc.2
    IL_0037:  ldc.i4.0
    IL_0038:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [EntitySystem]TemplatesDatabase.DatabaseObject> [EntitySystem]TemplatesDatabase.DatabaseObject::GetExplicitNestingChildren(class [EntitySystem]TemplatesDatabase.DatabaseObjectType,
                                                                                                                                                                                                                                  bool)
    IL_003d:  ldloc.0
    IL_003e:  ldfld      class [System.Runtime]System.Func`2<class [EntitySystem]TemplatesDatabase.DatabaseObject,bool> Game.EggBlock/'<>c__DisplayClass3_0'::'<>9__0'
    IL_0043:  dup
    IL_0044:  brtrue.s   IL_005e

    IL_0046:  pop
    IL_0047:  ldloc.0
    IL_0048:  ldloc.0
    IL_0049:  ldftn      instance bool Game.EggBlock/'<>c__DisplayClass3_0'::'<Initialize>b__0'(class [EntitySystem]TemplatesDatabase.DatabaseObject)
    IL_004f:  newobj     instance void class [System.Runtime]System.Func`2<class [EntitySystem]TemplatesDatabase.DatabaseObject,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_0054:  dup
    IL_0055:  stloc.s    V_6
    IL_0057:  stfld      class [System.Runtime]System.Func`2<class [EntitySystem]TemplatesDatabase.DatabaseObject,bool> Game.EggBlock/'<>c__DisplayClass3_0'::'<>9__0'
    IL_005c:  ldloc.s    V_6
    IL_005e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [EntitySystem]TemplatesDatabase.DatabaseObject>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0063:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [EntitySystem]TemplatesDatabase.DatabaseObject>::GetEnumerator()
    IL_0068:  stloc.s    V_5
    .try
    {
      IL_006a:  br         IL_016f

      IL_006f:  ldloc.s    V_5
      IL_0071:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.DatabaseObject>::get_Current()
      IL_0076:  stloc.s    V_7
      IL_0078:  ldloc.s    V_7
      IL_007a:  ldstr      "EggTypeIndex"
      IL_007f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<int32>(string)
      IL_0084:  stloc.s    V_8
      IL_0086:  ldloc.s    V_8
      IL_0088:  ldc.i4.0
      IL_0089:  blt        IL_016f

      IL_008e:  ldloc.1
      IL_008f:  ldloc.s    V_8
      IL_0091:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.EggBlock/EggType>::ContainsKey(!0)
      IL_0096:  brfalse.s  IL_00b8

      IL_0098:  ldstr      "Duplicate creature egg data EggTypeIndex ({0})."
      IL_009d:  ldc.i4.1
      IL_009e:  newarr     [System.Runtime]System.Object
      IL_00a3:  dup
      IL_00a4:  ldc.i4.0
      IL_00a5:  ldloc.s    V_8
      IL_00a7:  box        [System.Runtime]System.Int32
      IL_00ac:  stelem.ref
      IL_00ad:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00b2:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_00b7:  throw

      IL_00b8:  ldloc.1
      IL_00b9:  ldloc.s    V_8
      IL_00bb:  newobj     instance void Game.EggBlock/EggType::.ctor()
      IL_00c0:  dup
      IL_00c1:  ldloc.s    V_8
      IL_00c3:  stfld      int32 Game.EggBlock/EggType::EggTypeIndex
      IL_00c8:  dup
      IL_00c9:  ldloc.s    V_7
      IL_00cb:  ldstr      "ShowEgg"
      IL_00d0:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<bool>(string)
      IL_00d5:  stfld      bool Game.EggBlock/EggType::ShowEgg
      IL_00da:  dup
      IL_00db:  ldloc.s    V_7
      IL_00dd:  ldstr      "DisplayName"
      IL_00e2:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<string>(string)
      IL_00e7:  stfld      string Game.EggBlock/EggType::DisplayName
      IL_00ec:  dup
      IL_00ed:  ldloc.s    V_7
      IL_00ef:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.DatabaseObject::get_NestingParent()
      IL_00f4:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
      IL_00f9:  stfld      string Game.EggBlock/EggType::TemplateName
      IL_00fe:  dup
      IL_00ff:  ldloc.s    V_7
      IL_0101:  ldstr      "NutritionalValue"
      IL_0106:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<float32>(string)
      IL_010b:  stfld      float32 Game.EggBlock/EggType::NutritionalValue
      IL_0110:  dup
      IL_0111:  ldloc.s    V_7
      IL_0113:  ldstr      "Color"
      IL_0118:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<valuetype [Engine]Engine.Color>(string)
      IL_011d:  stfld      valuetype [Engine]Engine.Color Game.EggBlock/EggType::Color
      IL_0122:  dup
      IL_0123:  ldloc.s    V_7
      IL_0125:  ldstr      "ScaleUV"
      IL_012a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<valuetype [Engine]Engine.Vector2>(string)
      IL_012f:  stfld      valuetype [Engine]Engine.Vector2 Game.EggBlock/EggType::ScaleUV
      IL_0134:  dup
      IL_0135:  ldloc.s    V_7
      IL_0137:  ldstr      "SwapUV"
      IL_013c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<bool>(string)
      IL_0141:  stfld      bool Game.EggBlock/EggType::SwapUV
      IL_0146:  dup
      IL_0147:  ldloc.s    V_7
      IL_0149:  ldstr      "Scale"
      IL_014e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<float32>(string)
      IL_0153:  stfld      float32 Game.EggBlock/EggType::Scale
      IL_0158:  dup
      IL_0159:  ldloc.s    V_7
      IL_015b:  ldstr      "TextureSlot"
      IL_0160:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<int32>(string)
      IL_0165:  stfld      int32 Game.EggBlock/EggType::TextureSlot
      IL_016a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.EggBlock/EggType>::Add(!0,
                                                                                                                                                   !1)
      IL_016f:  ldloc.s    V_5
      IL_0171:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0176:  brtrue     IL_006f

      IL_017b:  leave.s    IL_0189

    }  // end .try
    finally
    {
      IL_017d:  ldloc.s    V_5
      IL_017f:  brfalse.s  IL_0188

      IL_0181:  ldloc.s    V_5
      IL_0183:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0188:  endfinally
    }  // end handler
    IL_0189:  ldc.i4.0
    IL_018a:  stloc.s    V_9
    IL_018c:  br.s       IL_01cf

    IL_018e:  ldloc.1
    IL_018f:  ldloc.s    V_9
    IL_0191:  ldloca.s   V_10
    IL_0193:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.EggBlock/EggType>::TryGetValue(!0,
                                                                                                                                                         !1&)
    IL_0198:  brfalse.s  IL_01a9

    IL_019a:  ldarg.0
    IL_019b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
    IL_01a0:  ldloc.s    V_10
    IL_01a2:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType>::Add(!0)
    IL_01a7:  br.s       IL_01c9

    IL_01a9:  ldstr      "Missing creature egg data EggTypeIndex value {0}."
    IL_01ae:  ldc.i4.1
    IL_01af:  newarr     [System.Runtime]System.Object
    IL_01b4:  dup
    IL_01b5:  ldc.i4.0
    IL_01b6:  ldloc.s    V_9
    IL_01b8:  box        [System.Runtime]System.Int32
    IL_01bd:  stelem.ref
    IL_01be:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01c3:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_01c8:  throw

    IL_01c9:  ldloc.s    V_9
    IL_01cb:  ldc.i4.1
    IL_01cc:  add
    IL_01cd:  stloc.s    V_9
    IL_01cf:  ldloc.s    V_9
    IL_01d1:  ldloc.1
    IL_01d2:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.EggBlock/EggType>::get_Count()
    IL_01d7:  blt.s      IL_018e

    IL_01d9:  ldstr      "Models/Egg"
    IL_01de:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_01e3:  stloc.3
    IL_01e4:  ldloc.3
    IL_01e5:  ldstr      "Egg"
    IL_01ea:  ldc.i4.1
    IL_01eb:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01f0:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_01f5:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_01fa:  stloc.s    V_4
    IL_01fc:  ldarg.0
    IL_01fd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
    IL_0202:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType>::GetEnumerator()
    IL_0207:  stloc.s    V_11
    .try
    {
      IL_0209:  br         IL_0312

      IL_020e:  ldloca.s   V_11
      IL_0210:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>::get_Current()
      IL_0215:  stloc.s    V_12
      IL_0217:  ldloc.s    V_12
      IL_0219:  newobj     instance void Game.BlockMesh::.ctor()
      IL_021e:  stfld      class Game.BlockMesh Game.EggBlock/EggType::BlockMesh
      IL_0223:  ldloc.s    V_12
      IL_0225:  ldfld      class Game.BlockMesh Game.EggBlock/EggType::BlockMesh
      IL_022a:  ldloc.3
      IL_022b:  ldstr      "Egg"
      IL_0230:  ldc.i4.1
      IL_0231:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                    bool)
      IL_0236:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_023b:  stloc.s    V_14
      IL_023d:  ldloca.s   V_14
      IL_023f:  ldc.i4.0
      IL_0240:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
      IL_0245:  ldloc.s    V_4
      IL_0247:  ldc.i4.0
      IL_0248:  ldc.i4.0
      IL_0249:  ldc.i4.0
      IL_024a:  ldc.i4.0
      IL_024b:  ldloc.s    V_12
      IL_024d:  ldfld      valuetype [Engine]Engine.Color Game.EggBlock/EggType::Color
      IL_0252:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                             valuetype [Engine]Engine.Matrix,
                                                                             bool,
                                                                             bool,
                                                                             bool,
                                                                             bool,
                                                                             valuetype [Engine]Engine.Color)
      IL_0257:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
      IL_025c:  stloc.s    V_13
      IL_025e:  ldloc.s    V_12
      IL_0260:  ldfld      bool Game.EggBlock/EggType::SwapUV
      IL_0265:  brfalse.s  IL_0297

      IL_0267:  ldloca.s   V_13
      IL_0269:  ldc.r4     0.0
      IL_026e:  stfld      float32 [Engine]Engine.Matrix::M11
      IL_0273:  ldloca.s   V_13
      IL_0275:  ldc.r4     1.
      IL_027a:  stfld      float32 [Engine]Engine.Matrix::M12
      IL_027f:  ldloca.s   V_13
      IL_0281:  ldc.r4     1.
      IL_0286:  stfld      float32 [Engine]Engine.Matrix::M21
      IL_028b:  ldloca.s   V_13
      IL_028d:  ldc.r4     0.0
      IL_0292:  stfld      float32 [Engine]Engine.Matrix::M22
      IL_0297:  ldloc.s    V_13
      IL_0299:  ldc.r4     6.25e-002
      IL_029e:  ldloc.s    V_12
      IL_02a0:  ldflda     valuetype [Engine]Engine.Vector2 Game.EggBlock/EggType::ScaleUV
      IL_02a5:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_02aa:  mul
      IL_02ab:  ldc.r4     6.25e-002
      IL_02b0:  ldloc.s    V_12
      IL_02b2:  ldflda     valuetype [Engine]Engine.Vector2 Game.EggBlock/EggType::ScaleUV
      IL_02b7:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_02bc:  mul
      IL_02bd:  ldc.r4     1.
      IL_02c2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                              float32,
                                                                                              float32)
      IL_02c7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_02cc:  stloc.s    V_13
      IL_02ce:  ldloc.s    V_13
      IL_02d0:  ldloc.s    V_12
      IL_02d2:  ldfld      int32 Game.EggBlock/EggType::TextureSlot
      IL_02d7:  ldc.i4.s   16
      IL_02d9:  rem
      IL_02da:  conv.r4
      IL_02db:  ldc.r4     16.
      IL_02e0:  div
      IL_02e1:  ldloc.s    V_12
      IL_02e3:  ldfld      int32 Game.EggBlock/EggType::TextureSlot
      IL_02e8:  ldc.i4.s   16
      IL_02ea:  div
      IL_02eb:  conv.r4
      IL_02ec:  ldc.r4     16.
      IL_02f1:  div
      IL_02f2:  ldc.r4     0.0
      IL_02f7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                    float32,
                                                                                                    float32)
      IL_02fc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0301:  stloc.s    V_13
      IL_0303:  ldloc.s    V_12
      IL_0305:  ldfld      class Game.BlockMesh Game.EggBlock/EggType::BlockMesh
      IL_030a:  ldloc.s    V_13
      IL_030c:  ldc.i4.m1
      IL_030d:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                     int32)
      IL_0312:  ldloca.s   V_11
      IL_0314:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>::MoveNext()
      IL_0319:  brtrue     IL_020e

      IL_031e:  leave.s    IL_032e

    }  // end .try
    finally
    {
      IL_0320:  ldloca.s   V_11
      IL_0322:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>
      IL_0328:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_032d:  endfinally
    }  // end handler
    IL_032e:  ldarg.0
    IL_032f:  call       instance void Game.Block::Initialize()
    IL_0334:  ret
  } // end of method EggBlock::Initialize

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  2
    .locals init (class Game.EggBlock/EggType V_0,
             bool V_1,
             bool V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0007:  call       instance class Game.EggBlock/EggType Game.EggBlock::GetEggType(int32)
    IL_000c:  stloc.0
    IL_000d:  ldarg.2
    IL_000e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0013:  dup
    IL_0014:  call       bool Game.EggBlock::GetIsCooked(int32)
    IL_0019:  stloc.1
    IL_001a:  call       bool Game.EggBlock::GetIsLaid(int32)
    IL_001f:  stloc.2
    IL_0020:  ldloc.1
    IL_0021:  brfalse.s  IL_0034

    IL_0023:  ldstr      "Cooked "
    IL_0028:  ldloc.0
    IL_0029:  ldfld      string Game.EggBlock/EggType::DisplayName
    IL_002e:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0033:  ret

    IL_0034:  ldloc.2
    IL_0035:  brtrue.s   IL_003e

    IL_0037:  ldloc.0
    IL_0038:  ldfld      string Game.EggBlock/EggType::DisplayName
    IL_003d:  ret

    IL_003e:  ldstr      "Laid "
    IL_0043:  ldloc.0
    IL_0044:  ldfld      string Game.EggBlock/EggType::DisplayName
    IL_0049:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_004e:  ret
  } // end of method EggBlock::GetDisplayName

  .method public hidebysig virtual instance float32 
          GetNutritionalValue(int32 'value') cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  2
    .locals init (class Game.EggBlock/EggType V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0007:  call       instance class Game.EggBlock/EggType Game.EggBlock::GetEggType(int32)
    IL_000c:  stloc.0
    IL_000d:  ldarg.1
    IL_000e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0013:  call       bool Game.EggBlock::GetIsCooked(int32)
    IL_0018:  brtrue.s   IL_0021

    IL_001a:  ldloc.0
    IL_001b:  ldfld      float32 Game.EggBlock/EggType::NutritionalValue
    IL_0020:  ret

    IL_0021:  ldc.r4     1.5
    IL_0026:  ldloc.0
    IL_0027:  ldfld      float32 Game.EggBlock/EggType::NutritionalValue
    IL_002c:  mul
    IL_002d:  ret
  } // end of method EggBlock::GetNutritionalValue

  .method public hidebysig virtual instance float32 
          GetSicknessProbability(int32 'value') cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.EggBlock::GetIsCooked(int32)
    IL_000b:  brtrue.s   IL_0014

    IL_000d:  ldarg.0
    IL_000e:  ldfld      float32 Game.Block::DefaultSicknessProbability
    IL_0013:  ret

    IL_0014:  ldc.r4     0.0
    IL_0019:  ret
  } // end of method EggBlock::GetSicknessProbability

  .method public hidebysig virtual instance int32 
          GetDamage(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  ldc.i4.s   16
    IL_0008:  shr
    IL_0009:  ldc.i4.1
    IL_000a:  and
    IL_000b:  ret
  } // end of method EggBlock::GetDamage

  .method public hidebysig virtual instance int32 
          SetDamage(int32 'value',
                    int32 damage) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4     0xfffeffff
    IL_000d:  and
    IL_000e:  ldarg.2
    IL_000f:  ldc.i4.1
    IL_0010:  and
    IL_0011:  ldc.i4.s   16
    IL_0013:  shl
    IL_0014:  or
    IL_0015:  stloc.0
    IL_0016:  ldarg.1
    IL_0017:  ldloc.0
    IL_0018:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_001d:  ret
  } // end of method EggBlock::SetDamage

  .method public hidebysig virtual instance int32 
          GetDamageDestructionValue(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0xf6
    IL_0005:  ret
  } // end of method EggBlock::GetDamageDestructionValue

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 26 47 61 6D 65 2E 45 67 67 42 6C 6F 63 6B   // ..&Game.EggBlock
                                                                                                                                                      2B 3C 47 65 74 43 72 65 61 74 69 76 65 56 61 6C   // +<GetCreativeVal
                                                                                                                                                      75 65 73 3E 64 5F 5F 31 30 00 00 )                // ues>d__10..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.EggBlock/'<GetCreativeValues>d__10'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.EggBlock Game.EggBlock/'<GetCreativeValues>d__10'::'<>4__this'
    IL_000e:  ret
  } // end of method EggBlock::GetCreativeValues

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 31 47 61 6D 65 2E 45 67 67 42 6C 6F 63 6B   // ..1Game.EggBlock
                                                                                                                                                      2B 3C 47 65 74 50 72 6F 63 65 64 75 72 61 6C 43   // +<GetProceduralC
                                                                                                                                                      72 61 66 74 69 6E 67 52 65 63 69 70 65 73 3E 64   // raftingRecipes>d
                                                                                                                                                      5F 5F 31 31 00 00 )                               // __11..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.EggBlock Game.EggBlock/'<GetProceduralCraftingRecipes>d__11'::'<>4__this'
    IL_000e:  ret
  } // end of method EggBlock::GetProceduralCraftingRecipes

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
  } // end of method EggBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  6
    .locals init (int32 V_0,
             class Game.EggBlock/EggType V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  call       instance class Game.EggBlock/EggType Game.EggBlock::GetEggType(int32)
    IL_000e:  stloc.1
    IL_000f:  ldarg.1
    IL_0010:  ldloc.1
    IL_0011:  ldfld      class Game.BlockMesh Game.EggBlock/EggType::BlockMesh
    IL_0016:  ldarg.3
    IL_0017:  ldloc.1
    IL_0018:  ldfld      float32 Game.EggBlock/EggType::Scale
    IL_001d:  ldarg.s    size
    IL_001f:  mul
    IL_0020:  ldarg.s    matrix
    IL_0022:  ldarg.s    environmentData
    IL_0024:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0029:  ret
  } // end of method EggBlock::DrawBlock

  .method public hidebysig instance class Game.EggBlock/EggType 
          GetEggType(int32 data) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.4
    IL_0002:  shr
    IL_0003:  ldc.i4     0xfff
    IL_0008:  and
    IL_0009:  stloc.0
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType>::get_Item(int32)
    IL_0016:  ret
  } // end of method EggBlock::GetEggType

  .method public hidebysig instance class Game.EggBlock/EggType 
          GetEggTypeByCreatureTemplateName(string templateName) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (class Game.EggBlock/'<>c__DisplayClass15_0' V_0)
    IL_0000:  newobj     instance void Game.EggBlock/'<>c__DisplayClass15_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      string Game.EggBlock/'<>c__DisplayClass15_0'::templateName
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
    IL_0013:  ldloc.0
    IL_0014:  ldftn      instance bool Game.EggBlock/'<>c__DisplayClass15_0'::'<GetEggTypeByCreatureTemplateName>b__0'(class Game.EggBlock/EggType)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<class Game.EggBlock/EggType,bool>::.ctor(object,
                                                                                                                    native int)
    IL_001f:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.EggBlock/EggType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0024:  ret
  } // end of method EggBlock::GetEggTypeByCreatureTemplateName

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType> 
          get_EggTypes() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000b:  ret
  } // end of method EggBlock::get_EggTypes

  .method public hidebysig static bool  GetIsCooked(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method EggBlock::GetIsCooked

  .method public hidebysig static int32  SetIsCooked(int32 data,
                                                     bool isCooked) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -2
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  or
    IL_000b:  ret
  } // end of method EggBlock::SetIsCooked

  .method public hidebysig static bool  GetIsLaid(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method EggBlock::GetIsLaid

  .method public hidebysig static int32  SetIsLaid(int32 data,
                                                   bool isLaid) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -3
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.2
    IL_000a:  or
    IL_000b:  ret
  } // end of method EggBlock::SetIsLaid

  .method public hidebysig static int32  SetEggType(int32 data,
                                                    int32 eggTypeIndex) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xffff000f
    IL_0006:  and
    IL_0007:  starg.s    data
    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  ldc.i4     0xfff
    IL_0010:  and
    IL_0011:  ldc.i4.4
    IL_0012:  shl
    IL_0013:  or
    IL_0014:  starg.s    data
    IL_0016:  ldarg.0
    IL_0017:  ret
  } // end of method EggBlock::SetEggType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Block::.ctor()
    IL_0011:  ret
  } // end of method EggBlock::.ctor

  .property instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType>
          EggTypes()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType> Game.EggBlock::get_EggTypes()
  } // end of property EggBlock::EggTypes
} // end of class Game.EggBlock