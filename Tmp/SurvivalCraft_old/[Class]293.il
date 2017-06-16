.class public auto ansi beforefieldinit Game.EggBlock
       extends Game.Block
{
  .class auto ansi nested public beforefieldinit EggType
         extends [System.Runtime]System.Object
  {
    .field public int32 EggTypeIndex
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

  .class auto ansi sealed nested private beforefieldinit '<GetCreativeValues>d__6'
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
      IL_0008:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__6'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       31 (0x1f)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
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
        IL_0018:  call       instance void Game.EggBlock/'<GetCreativeValues>d__6'::'<>m__Finally1'()
        IL_001d:  endfinally
      }  // end handler
      IL_001e:  ret
    } // end of method '<GetCreativeValues>d__6'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       272 (0x110)
      .maxstack  5
      .locals init (bool V_0,
               int32 V_1)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  switch     ( 
                              IL_0020,
                              IL_0088,
                              IL_00d2)
        IL_0019:  ldc.i4.0
        IL_001a:  stloc.0
        IL_001b:  leave      IL_010e

        IL_0020:  ldarg.0
        IL_0021:  ldc.i4.m1
        IL_0022:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
        IL_0027:  ldarg.0
        IL_0028:  ldarg.0
        IL_0029:  ldfld      class Game.EggBlock Game.EggBlock/'<GetCreativeValues>d__6'::'<>4__this'
        IL_002e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
        IL_0033:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType>::GetEnumerator()
        IL_0038:  stfld      valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetCreativeValues>d__6'::'<>7__wrap1'
        IL_003d:  ldarg.0
        IL_003e:  ldc.i4.s   -3
        IL_0040:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
        IL_0045:  br         IL_00e1

        IL_004a:  ldarg.0
        IL_004b:  ldarg.0
        IL_004c:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetCreativeValues>d__6'::'<>7__wrap1'
        IL_0051:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>::get_Current()
        IL_0056:  stfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__6'::'<eggType>5__1'
        IL_005b:  ldarg.0
        IL_005c:  ldc.i4.s   118
        IL_005e:  ldc.i4.0
        IL_005f:  ldc.i4.0
        IL_0060:  ldarg.0
        IL_0061:  ldfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__6'::'<eggType>5__1'
        IL_0066:  ldfld      int32 Game.EggBlock/EggType::EggTypeIndex
        IL_006b:  call       int32 Game.EggBlock::SetEggType(int32,
                                                             int32)
        IL_0070:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                    int32,
                                                                    int32)
        IL_0075:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>2__current'
        IL_007a:  ldarg.0
        IL_007b:  ldc.i4.1
        IL_007c:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
        IL_0081:  ldc.i4.1
        IL_0082:  stloc.0
        IL_0083:  leave      IL_010e

        IL_0088:  ldarg.0
        IL_0089:  ldc.i4.s   -3
        IL_008b:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
        IL_0090:  ldarg.0
        IL_0091:  ldfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__6'::'<eggType>5__1'
        IL_0096:  ldfld      float32 Game.EggBlock/EggType::NutritionalValue
        IL_009b:  ldc.r4     0.0
        IL_00a0:  ble.un.s   IL_00da

        IL_00a2:  ldarg.0
        IL_00a3:  ldc.i4.s   118
        IL_00a5:  ldc.i4.0
        IL_00a6:  ldc.i4.0
        IL_00a7:  ldarg.0
        IL_00a8:  ldfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__6'::'<eggType>5__1'
        IL_00ad:  ldfld      int32 Game.EggBlock/EggType::EggTypeIndex
        IL_00b2:  call       int32 Game.EggBlock::SetEggType(int32,
                                                             int32)
        IL_00b7:  ldc.i4.1
        IL_00b8:  call       int32 Game.EggBlock::SetIsCooked(int32,
                                                              bool)
        IL_00bd:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                    int32,
                                                                    int32)
        IL_00c2:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>2__current'
        IL_00c7:  ldarg.0
        IL_00c8:  ldc.i4.2
        IL_00c9:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
        IL_00ce:  ldc.i4.1
        IL_00cf:  stloc.0
        IL_00d0:  leave.s    IL_010e

        IL_00d2:  ldarg.0
        IL_00d3:  ldc.i4.s   -3
        IL_00d5:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
        IL_00da:  ldarg.0
        IL_00db:  ldnull
        IL_00dc:  stfld      class Game.EggBlock/EggType Game.EggBlock/'<GetCreativeValues>d__6'::'<eggType>5__1'
        IL_00e1:  ldarg.0
        IL_00e2:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetCreativeValues>d__6'::'<>7__wrap1'
        IL_00e7:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>::MoveNext()
        IL_00ec:  brtrue     IL_004a

        IL_00f1:  ldarg.0
        IL_00f2:  call       instance void Game.EggBlock/'<GetCreativeValues>d__6'::'<>m__Finally1'()
        IL_00f7:  ldarg.0
        IL_00f8:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetCreativeValues>d__6'::'<>7__wrap1'
        IL_00fd:  initobj    valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>
        IL_0103:  ldc.i4.0
        IL_0104:  stloc.0
        IL_0105:  leave.s    IL_010e

      }  // end .try
      fault
      {
        IL_0107:  ldarg.0
        IL_0108:  call       instance void Game.EggBlock/'<GetCreativeValues>d__6'::System.IDisposable.Dispose()
        IL_010d:  endfinally
      }  // end handler
      IL_010e:  ldloc.0
      IL_010f:  ret
    } // end of method '<GetCreativeValues>d__6'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetCreativeValues>d__6'::'<>7__wrap1'
      IL_000d:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>
      IL_0013:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0018:  ret
    } // end of method '<GetCreativeValues>d__6'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance int32  'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__6'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetCreativeValues>d__6'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>2__current'
      IL_0006:  box        [System.Runtime]System.Int32
      IL_000b:  ret
    } // end of method '<GetCreativeValues>d__6'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> 
            'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.EggBlock/'<GetCreativeValues>d__6' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.EggBlock/'<GetCreativeValues>d__6'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.EggBlock/'<GetCreativeValues>d__6'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.EggBlock Game.EggBlock/'<GetCreativeValues>d__6'::'<>4__this'
      IL_0030:  stfld      class Game.EggBlock Game.EggBlock/'<GetCreativeValues>d__6'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetCreativeValues>d__6'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> Game.EggBlock/'<GetCreativeValues>d__6'::'System.Collections.Generic.IEnumerable<System.Int32>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetCreativeValues>d__6'::System.Collections.IEnumerable.GetEnumerator

    .property instance int32 'System.Collections.Generic.IEnumerator<System.Int32>.Current'()
    {
      .get instance int32 Game.EggBlock/'<GetCreativeValues>d__6'::'System.Collections.Generic.IEnumerator<System.Int32>.get_Current'()
    } // end of property '<GetCreativeValues>d__6'::'System.Collections.Generic.IEnumerator<System.Int32>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.EggBlock/'<GetCreativeValues>d__6'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetCreativeValues>d__6'::System.Collections.IEnumerator.Current
  } // end of class '<GetCreativeValues>d__6'

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
      IL_0008:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       27 (0x1b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
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
        IL_0014:  call       instance void Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       326 (0x146)
      .maxstack  6
      .locals init (bool V_0,
               int32 V_1,
               valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType> V_2,
               class Game.EggBlock/EggType V_3,
               class Game.CraftingRecipe V_4,
               int32 V_5)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  brfalse.s  IL_0018

        IL_000a:  ldloc.1
        IL_000b:  ldc.i4.1
        IL_000c:  beq        IL_010f

        IL_0011:  ldc.i4.0
        IL_0012:  stloc.0
        IL_0013:  leave      IL_0144

        IL_0018:  ldarg.0
        IL_0019:  ldc.i4.m1
        IL_001a:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
        IL_001f:  ldarg.0
        IL_0020:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
        IL_0025:  ldc.i4.s   118
        IL_0027:  ldelem.ref
        IL_0028:  castclass  Game.EggBlock
        IL_002d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType> Game.EggBlock::get_EggTypes()
        IL_0032:  stloc.2
        IL_0033:  ldloca.s   V_2
        IL_0035:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType>::GetEnumerator()
        IL_003a:  stfld      valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>7__wrap1'
        IL_003f:  ldarg.0
        IL_0040:  ldc.i4.s   -3
        IL_0042:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
        IL_0047:  br         IL_0117

        IL_004c:  ldarg.0
        IL_004d:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>7__wrap1'
        IL_0052:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType>::get_Current()
        IL_0057:  stloc.3
        IL_0058:  ldloc.3
        IL_0059:  ldfld      float32 Game.EggBlock/EggType::NutritionalValue
        IL_005e:  ldc.r4     0.0
        IL_0063:  ble.un     IL_0117

        IL_0068:  newobj     instance void Game.CraftingRecipe::.ctor()
        IL_006d:  dup
        IL_006e:  ldc.i4.1
        IL_006f:  stfld      int32 Game.CraftingRecipe::ResultCount
        IL_0074:  dup
        IL_0075:  ldc.i4.s   118
        IL_0077:  ldc.i4.0
        IL_0078:  ldc.i4.0
        IL_0079:  ldc.i4.1
        IL_007a:  call       int32 Game.EggBlock::SetIsCooked(int32,
                                                              bool)
        IL_007f:  ldloc.3
        IL_0080:  ldfld      int32 Game.EggBlock/EggType::EggTypeIndex
        IL_0085:  call       int32 Game.EggBlock::SetEggType(int32,
                                                             int32)
        IL_008a:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                    int32,
                                                                    int32)
        IL_008f:  stfld      int32 Game.CraftingRecipe::ResultValue
        IL_0094:  dup
        IL_0095:  ldc.i4.1
        IL_0096:  stfld      int32 Game.CraftingRecipe::RemainsCount
        IL_009b:  dup
        IL_009c:  ldc.i4.s   91
        IL_009e:  call       int32 Game.TerrainData::MakeBlockValue(int32)
        IL_00a3:  stfld      int32 Game.CraftingRecipe::RemainsValue
        IL_00a8:  dup
        IL_00a9:  ldc.r4     1.
        IL_00ae:  stfld      float32 Game.CraftingRecipe::RequiredHeatLevel
        IL_00b3:  dup
        IL_00b4:  ldstr      "Cook an egg to increase its nutritional value"
        IL_00b9:  stfld      string Game.CraftingRecipe::Description
        IL_00be:  stloc.s    V_4
        IL_00c0:  ldloc.s    V_4
        IL_00c2:  ldfld      string[] Game.CraftingRecipe::Ingredients
        IL_00c7:  ldc.i4.0
        IL_00c8:  ldstr      "egg:"
        IL_00cd:  ldc.i4.0
        IL_00ce:  ldc.i4.1
        IL_00cf:  call       int32 Game.EggBlock::SetIsLaid(int32,
                                                            bool)
        IL_00d4:  ldloc.3
        IL_00d5:  ldfld      int32 Game.EggBlock/EggType::EggTypeIndex
        IL_00da:  call       int32 Game.EggBlock::SetEggType(int32,
                                                             int32)
        IL_00df:  stloc.s    V_5
        IL_00e1:  ldloca.s   V_5
        IL_00e3:  call       instance string [System.Runtime]System.Int32::ToString()
        IL_00e8:  call       string [System.Runtime]System.String::Concat(string,
                                                                          string)
        IL_00ed:  stelem.ref
        IL_00ee:  ldloc.s    V_4
        IL_00f0:  ldfld      string[] Game.CraftingRecipe::Ingredients
        IL_00f5:  ldc.i4.1
        IL_00f6:  ldstr      "waterbucket"
        IL_00fb:  stelem.ref
        IL_00fc:  ldarg.0
        IL_00fd:  ldloc.s    V_4
        IL_00ff:  stfld      class Game.CraftingRecipe Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>2__current'
        IL_0104:  ldarg.0
        IL_0105:  ldc.i4.1
        IL_0106:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
        IL_010b:  ldc.i4.1
        IL_010c:  stloc.0
        IL_010d:  leave.s    IL_0144

        IL_010f:  ldarg.0
        IL_0110:  ldc.i4.s   -3
        IL_0112:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
        IL_0117:  ldarg.0
        IL_0118:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>7__wrap1'
        IL_011d:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType>::MoveNext()
        IL_0122:  brtrue     IL_004c

        IL_0127:  ldarg.0
        IL_0128:  call       instance void Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>m__Finally1'()
        IL_012d:  ldarg.0
        IL_012e:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>7__wrap1'
        IL_0133:  initobj    valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType>
        IL_0139:  ldc.i4.0
        IL_013a:  stloc.0
        IL_013b:  leave.s    IL_0144

      }  // end .try
      fault
      {
        IL_013d:  ldarg.0
        IL_013e:  call       instance void Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::System.IDisposable.Dispose()
        IL_0143:  endfinally
      }  // end handler
      IL_0144:  ldloc.0
      IL_0145:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType> Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>7__wrap1'
      IL_000d:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.EggBlock/EggType>
      IL_0013:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0018:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance class Game.CraftingRecipe 
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CraftingRecipe Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>2__current'
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
      IL_0001:  ldfld      class Game.CraftingRecipe Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>2__current'
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
      .locals init (class Game.EggBlock/'<GetProceduralCraftingRecipes>d__7' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::.ctor(int32)
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
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.CraftingRecipe> Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'System.Collections.Generic.IEnumerable<Game.CraftingRecipe>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetProceduralCraftingRecipes>d__7'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.CraftingRecipe
            'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'()
    {
      .get instance class Game.CraftingRecipe Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.get_Current'()
    } // end of property '<GetProceduralCraftingRecipes>d__7'::'System.Collections.Generic.IEnumerator<Game.CraftingRecipe>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetProceduralCraftingRecipes>d__7'::System.Collections.IEnumerator.Current
  } // end of class '<GetProceduralCraftingRecipes>d__7'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass16_0'
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
    } // end of method '<>c__DisplayClass16_0'::.ctor

    .method assembly hidebysig instance bool 
            '<GetEggTypeByCreatureTemplateName>b__0'(class Game.EggBlock/EggType e) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.EggBlock/EggType::TemplateName
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.EggBlock/'<>c__DisplayClass16_0'::templateName
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass16_0'::'<GetEggTypeByCreatureTemplateName>b__0'

  } // end of class '<>c__DisplayClass16_0'

  .field public static literal int32 Index = int32(0x00000076)
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> m_eggTypes
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       803 (0x323)
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
      IL_006a:  br         IL_015d

      IL_006f:  ldloc.s    V_5
      IL_0071:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.DatabaseObject>::get_Current()
      IL_0076:  stloc.s    V_7
      IL_0078:  ldloc.s    V_7
      IL_007a:  ldstr      "EggTypeIndex"
      IL_007f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<int32>(string)
      IL_0084:  stloc.s    V_8
      IL_0086:  ldloc.s    V_8
      IL_0088:  ldc.i4.0
      IL_0089:  blt        IL_015d

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
      IL_00cb:  ldstr      "DisplayName"
      IL_00d0:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<string>(string)
      IL_00d5:  stfld      string Game.EggBlock/EggType::DisplayName
      IL_00da:  dup
      IL_00db:  ldloc.s    V_7
      IL_00dd:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.DatabaseObject::get_NestingParent()
      IL_00e2:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
      IL_00e7:  stfld      string Game.EggBlock/EggType::TemplateName
      IL_00ec:  dup
      IL_00ed:  ldloc.s    V_7
      IL_00ef:  ldstr      "NutritionalValue"
      IL_00f4:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<float32>(string)
      IL_00f9:  stfld      float32 Game.EggBlock/EggType::NutritionalValue
      IL_00fe:  dup
      IL_00ff:  ldloc.s    V_7
      IL_0101:  ldstr      "Color"
      IL_0106:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<valuetype [Engine]Engine.Color>(string)
      IL_010b:  stfld      valuetype [Engine]Engine.Color Game.EggBlock/EggType::Color
      IL_0110:  dup
      IL_0111:  ldloc.s    V_7
      IL_0113:  ldstr      "ScaleUV"
      IL_0118:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<valuetype [Engine]Engine.Vector2>(string)
      IL_011d:  stfld      valuetype [Engine]Engine.Vector2 Game.EggBlock/EggType::ScaleUV
      IL_0122:  dup
      IL_0123:  ldloc.s    V_7
      IL_0125:  ldstr      "SwapUV"
      IL_012a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<bool>(string)
      IL_012f:  stfld      bool Game.EggBlock/EggType::SwapUV
      IL_0134:  dup
      IL_0135:  ldloc.s    V_7
      IL_0137:  ldstr      "Scale"
      IL_013c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<float32>(string)
      IL_0141:  stfld      float32 Game.EggBlock/EggType::Scale
      IL_0146:  dup
      IL_0147:  ldloc.s    V_7
      IL_0149:  ldstr      "TextureSlot"
      IL_014e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.DatabaseObject::GetNestedValue<int32>(string)
      IL_0153:  stfld      int32 Game.EggBlock/EggType::TextureSlot
      IL_0158:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.EggBlock/EggType>::Add(!0,
                                                                                                                                                   !1)
      IL_015d:  ldloc.s    V_5
      IL_015f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0164:  brtrue     IL_006f

      IL_0169:  leave.s    IL_0177

    }  // end .try
    finally
    {
      IL_016b:  ldloc.s    V_5
      IL_016d:  brfalse.s  IL_0176

      IL_016f:  ldloc.s    V_5
      IL_0171:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0176:  endfinally
    }  // end handler
    IL_0177:  ldc.i4.0
    IL_0178:  stloc.s    V_9
    IL_017a:  br.s       IL_01bd

    IL_017c:  ldloc.1
    IL_017d:  ldloc.s    V_9
    IL_017f:  ldloca.s   V_10
    IL_0181:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.EggBlock/EggType>::TryGetValue(!0,
                                                                                                                                                         !1&)
    IL_0186:  brfalse.s  IL_0197

    IL_0188:  ldarg.0
    IL_0189:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
    IL_018e:  ldloc.s    V_10
    IL_0190:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType>::Add(!0)
    IL_0195:  br.s       IL_01b7

    IL_0197:  ldstr      "Missing creature egg data EggTypeIndex value {0}."
    IL_019c:  ldc.i4.1
    IL_019d:  newarr     [System.Runtime]System.Object
    IL_01a2:  dup
    IL_01a3:  ldc.i4.0
    IL_01a4:  ldloc.s    V_9
    IL_01a6:  box        [System.Runtime]System.Int32
    IL_01ab:  stelem.ref
    IL_01ac:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01b1:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_01b6:  throw

    IL_01b7:  ldloc.s    V_9
    IL_01b9:  ldc.i4.1
    IL_01ba:  add
    IL_01bb:  stloc.s    V_9
    IL_01bd:  ldloc.s    V_9
    IL_01bf:  ldloc.1
    IL_01c0:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.EggBlock/EggType>::get_Count()
    IL_01c5:  blt.s      IL_017c

    IL_01c7:  ldstr      "Models/Egg"
    IL_01cc:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_01d1:  stloc.3
    IL_01d2:  ldloc.3
    IL_01d3:  ldstr      "Egg"
    IL_01d8:  ldc.i4.1
    IL_01d9:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_01de:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
    IL_01e3:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_01e8:  stloc.s    V_4
    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
    IL_01f0:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType>::GetEnumerator()
    IL_01f5:  stloc.s    V_11
    .try
    {
      IL_01f7:  br         IL_0300

      IL_01fc:  ldloca.s   V_11
      IL_01fe:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>::get_Current()
      IL_0203:  stloc.s    V_12
      IL_0205:  ldloc.s    V_12
      IL_0207:  newobj     instance void Game.BlockMesh::.ctor()
      IL_020c:  stfld      class Game.BlockMesh Game.EggBlock/EggType::BlockMesh
      IL_0211:  ldloc.s    V_12
      IL_0213:  ldfld      class Game.BlockMesh Game.EggBlock/EggType::BlockMesh
      IL_0218:  ldloc.3
      IL_0219:  ldstr      "Egg"
      IL_021e:  ldc.i4.1
      IL_021f:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                    bool)
      IL_0224:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_0229:  stloc.s    V_14
      IL_022b:  ldloca.s   V_14
      IL_022d:  ldc.i4.0
      IL_022e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::get_Item(int32)
      IL_0233:  ldloc.s    V_4
      IL_0235:  ldc.i4.0
      IL_0236:  ldc.i4.0
      IL_0237:  ldc.i4.0
      IL_0238:  ldc.i4.0
      IL_0239:  ldloc.s    V_12
      IL_023b:  ldfld      valuetype [Engine]Engine.Color Game.EggBlock/EggType::Color
      IL_0240:  callvirt   instance void Game.BlockMesh::AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart,
                                                                             valuetype [Engine]Engine.Matrix,
                                                                             bool,
                                                                             bool,
                                                                             bool,
                                                                             bool,
                                                                             valuetype [Engine]Engine.Color)
      IL_0245:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
      IL_024a:  stloc.s    V_13
      IL_024c:  ldloc.s    V_12
      IL_024e:  ldfld      bool Game.EggBlock/EggType::SwapUV
      IL_0253:  brfalse.s  IL_0285

      IL_0255:  ldloca.s   V_13
      IL_0257:  ldc.r4     0.0
      IL_025c:  stfld      float32 [Engine]Engine.Matrix::M11
      IL_0261:  ldloca.s   V_13
      IL_0263:  ldc.r4     1.
      IL_0268:  stfld      float32 [Engine]Engine.Matrix::M12
      IL_026d:  ldloca.s   V_13
      IL_026f:  ldc.r4     1.
      IL_0274:  stfld      float32 [Engine]Engine.Matrix::M21
      IL_0279:  ldloca.s   V_13
      IL_027b:  ldc.r4     0.0
      IL_0280:  stfld      float32 [Engine]Engine.Matrix::M22
      IL_0285:  ldloc.s    V_13
      IL_0287:  ldc.r4     6.25e-002
      IL_028c:  ldloc.s    V_12
      IL_028e:  ldflda     valuetype [Engine]Engine.Vector2 Game.EggBlock/EggType::ScaleUV
      IL_0293:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0298:  mul
      IL_0299:  ldc.r4     6.25e-002
      IL_029e:  ldloc.s    V_12
      IL_02a0:  ldflda     valuetype [Engine]Engine.Vector2 Game.EggBlock/EggType::ScaleUV
      IL_02a5:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_02aa:  mul
      IL_02ab:  ldc.r4     1.
      IL_02b0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                              float32,
                                                                                              float32)
      IL_02b5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_02ba:  stloc.s    V_13
      IL_02bc:  ldloc.s    V_13
      IL_02be:  ldloc.s    V_12
      IL_02c0:  ldfld      int32 Game.EggBlock/EggType::TextureSlot
      IL_02c5:  ldc.i4.s   16
      IL_02c7:  rem
      IL_02c8:  conv.r4
      IL_02c9:  ldc.r4     16.
      IL_02ce:  div
      IL_02cf:  ldloc.s    V_12
      IL_02d1:  ldfld      int32 Game.EggBlock/EggType::TextureSlot
      IL_02d6:  ldc.i4.s   16
      IL_02d8:  div
      IL_02d9:  conv.r4
      IL_02da:  ldc.r4     16.
      IL_02df:  div
      IL_02e0:  ldc.r4     0.0
      IL_02e5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                    float32,
                                                                                                    float32)
      IL_02ea:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_02ef:  stloc.s    V_13
      IL_02f1:  ldloc.s    V_12
      IL_02f3:  ldfld      class Game.BlockMesh Game.EggBlock/EggType::BlockMesh
      IL_02f8:  ldloc.s    V_13
      IL_02fa:  ldc.i4.m1
      IL_02fb:  callvirt   instance void Game.BlockMesh::TransformTextureCoordinates(valuetype [Engine]Engine.Matrix,
                                                                                     int32)
      IL_0300:  ldloca.s   V_11
      IL_0302:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>::MoveNext()
      IL_0307:  brtrue     IL_01fc

      IL_030c:  leave.s    IL_031c

    }  // end .try
    finally
    {
      IL_030e:  ldloca.s   V_11
      IL_0310:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.EggBlock/EggType>
      IL_0316:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_031b:  endfinally
    }  // end handler
    IL_031c:  ldarg.0
    IL_031d:  call       instance void Game.Block::Initialize()
    IL_0322:  ret
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
    IL_0002:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0007:  call       instance class Game.EggBlock/EggType Game.EggBlock::GetEggType(int32)
    IL_000c:  stloc.0
    IL_000d:  ldarg.2
    IL_000e:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0002:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0007:  call       instance class Game.EggBlock/EggType Game.EggBlock::GetEggType(int32)
    IL_000c:  stloc.0
    IL_000d:  ldarg.1
    IL_000e:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0013:  call       bool Game.EggBlock::GetIsCooked(int32)
    IL_0018:  brtrue.s   IL_0021

    IL_001a:  ldloc.0
    IL_001b:  ldfld      float32 Game.EggBlock/EggType::NutritionalValue
    IL_0020:  ret

    IL_0021:  ldc.r4     2.
    IL_0026:  ldloc.0
    IL_0027:  ldfld      float32 Game.EggBlock/EggType::NutritionalValue
    IL_002c:  mul
    IL_002d:  ret
  } // end of method EggBlock::GetNutritionalValue

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 25 47 61 6D 65 2E 45 67 67 42 6C 6F 63 6B   // ..%Game.EggBlock
                                                                                                                                                      2B 3C 47 65 74 43 72 65 61 74 69 76 65 56 61 6C   // +<GetCreativeVal
                                                                                                                                                      75 65 73 3E 64 5F 5F 36 00 00 )                   // ues>d__6..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.EggBlock/'<GetCreativeValues>d__6'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.EggBlock Game.EggBlock/'<GetCreativeValues>d__6'::'<>4__this'
    IL_000e:  ret
  } // end of method EggBlock::GetCreativeValues

  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.CraftingRecipe> 
          GetProceduralCraftingRecipes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 30 47 61 6D 65 2E 45 67 67 42 6C 6F 63 6B   // ..0Game.EggBlock
                                                                                                                                                      2B 3C 47 65 74 50 72 6F 63 65 64 75 72 61 6C 43   // +<GetProceduralC
                                                                                                                                                      72 61 66 74 69 6E 67 52 65 63 69 70 65 73 3E 64   // raftingRecipes>d
                                                                                                                                                      5F 5F 37 00 00 )                                  // __7..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.EggBlock/'<GetProceduralCraftingRecipes>d__7'::.ctor(int32)
    IL_0007:  ret
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
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  5
    .locals init (int32 V_0,
             class Game.EggBlock/EggType V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  call       instance class Game.EggBlock/EggType Game.EggBlock::GetEggType(int32)
    IL_000e:  stloc.1
    IL_000f:  ldarg.1
    IL_0010:  ldloc.1
    IL_0011:  ldfld      class Game.BlockMesh Game.EggBlock/EggType::BlockMesh
    IL_0016:  ldloc.1
    IL_0017:  ldfld      float32 Game.EggBlock/EggType::Scale
    IL_001c:  ldarg.3
    IL_001d:  mul
    IL_001e:  ldarg.s    matrix
    IL_0020:  ldarg.s    environmentData
    IL_0022:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0027:  ret
  } // end of method EggBlock::DrawBlock

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
    .locals init (class Game.EggBlock/'<>c__DisplayClass16_0' V_0)
    IL_0000:  newobj     instance void Game.EggBlock/'<>c__DisplayClass16_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      string Game.EggBlock/'<>c__DisplayClass16_0'::templateName
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.EggBlock/EggType> Game.EggBlock::m_eggTypes
    IL_0013:  ldloc.0
    IL_0014:  ldftn      instance bool Game.EggBlock/'<>c__DisplayClass16_0'::'<GetEggTypeByCreatureTemplateName>b__0'(class Game.EggBlock/EggType)
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
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.EggBlock/EggType>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000b:  ret
  } // end of method EggBlock::get_EggTypes

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