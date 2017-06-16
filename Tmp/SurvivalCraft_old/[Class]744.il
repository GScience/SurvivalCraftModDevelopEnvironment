.class public auto ansi beforefieldinit Game.PlayerStats
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit StatAttribute
         extends [System.Runtime]System.Attribute
  {
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
      IL_0006:  ret
    } // end of method StatAttribute::.ctor

  } // end of class StatAttribute

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.PlayerStats/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> '<>9__30_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.PlayerStats/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.PlayerStats/'<>c' Game.PlayerStats/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<get_Stats>b__30_0'(class [System.Reflection]System.Reflection.FieldInfo f) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       !!0 [System.Reflection.Extensions]System.Reflection.CustomAttributeExtensions::GetCustomAttribute<class Game.PlayerStats/StatAttribute>(class [System.Reflection]System.Reflection.MemberInfo)
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<get_Stats>b__30_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<get_Stats>d__30'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private class [System.Reflection]System.Reflection.FieldInfo '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field private class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> '<>7__wrap1'
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
      IL_0008:  stfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<get_Stats>d__30'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       27 (0x1b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>1__state'
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
        IL_0014:  call       instance void Game.PlayerStats/'<get_Stats>d__30'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<get_Stats>d__30'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       177 (0xb1)
      .maxstack  4
      .locals init (bool V_0,
               int32 V_1,
               class [System.Reflection]System.Reflection.FieldInfo V_2)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  brfalse.s  IL_0015

        IL_000a:  ldloc.1
        IL_000b:  ldc.i4.1
        IL_000c:  beq.s      IL_0082

        IL_000e:  ldc.i4.0
        IL_000f:  stloc.0
        IL_0010:  leave      IL_00af

        IL_0015:  ldarg.0
        IL_0016:  ldc.i4.m1
        IL_0017:  stfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>1__state'
        IL_001c:  ldarg.0
        IL_001d:  ldtoken    Game.PlayerStats
        IL_0022:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0027:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
        IL_002c:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> Game.PlayerStats/'<>c'::'<>9__30_0'
        IL_0031:  dup
        IL_0032:  brtrue.s   IL_004b

        IL_0034:  pop
        IL_0035:  ldsfld     class Game.PlayerStats/'<>c' Game.PlayerStats/'<>c'::'<>9'
        IL_003a:  ldftn      instance bool Game.PlayerStats/'<>c'::'<get_Stats>b__30_0'(class [System.Reflection]System.Reflection.FieldInfo)
        IL_0040:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_0045:  dup
        IL_0046:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> Game.PlayerStats/'<>c'::'<>9__30_0'
        IL_004b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_0050:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
        IL_0055:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__30'::'<>7__wrap1'
        IL_005a:  ldarg.0
        IL_005b:  ldc.i4.s   -3
        IL_005d:  stfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>1__state'
        IL_0062:  br.s       IL_008a

        IL_0064:  ldarg.0
        IL_0065:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__30'::'<>7__wrap1'
        IL_006a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
        IL_006f:  stloc.2
        IL_0070:  ldarg.0
        IL_0071:  ldloc.2
        IL_0072:  stfld      class [System.Reflection]System.Reflection.FieldInfo Game.PlayerStats/'<get_Stats>d__30'::'<>2__current'
        IL_0077:  ldarg.0
        IL_0078:  ldc.i4.1
        IL_0079:  stfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>1__state'
        IL_007e:  ldc.i4.1
        IL_007f:  stloc.0
        IL_0080:  leave.s    IL_00af

        IL_0082:  ldarg.0
        IL_0083:  ldc.i4.s   -3
        IL_0085:  stfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>1__state'
        IL_008a:  ldarg.0
        IL_008b:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__30'::'<>7__wrap1'
        IL_0090:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_0095:  brtrue.s   IL_0064

        IL_0097:  ldarg.0
        IL_0098:  call       instance void Game.PlayerStats/'<get_Stats>d__30'::'<>m__Finally1'()
        IL_009d:  ldarg.0
        IL_009e:  ldnull
        IL_009f:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__30'::'<>7__wrap1'
        IL_00a4:  ldc.i4.0
        IL_00a5:  stloc.0
        IL_00a6:  leave.s    IL_00af

      }  // end .try
      fault
      {
        IL_00a8:  ldarg.0
        IL_00a9:  call       instance void Game.PlayerStats/'<get_Stats>d__30'::System.IDisposable.Dispose()
        IL_00ae:  endfinally
      }  // end handler
      IL_00af:  ldloc.0
      IL_00b0:  ret
    } // end of method '<get_Stats>d__30'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__30'::'<>7__wrap1'
      IL_000d:  brfalse.s  IL_001a

      IL_000f:  ldarg.0
      IL_0010:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__30'::'<>7__wrap1'
      IL_0015:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_001a:  ret
    } // end of method '<get_Stats>d__30'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance class [System.Reflection]System.Reflection.FieldInfo 
            'System.Collections.Generic.IEnumerator<System.Reflection.FieldInfo>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Reflection]System.Reflection.FieldInfo Game.PlayerStats/'<get_Stats>d__30'::'<>2__current'
      IL_0006:  ret
    } // end of method '<get_Stats>d__30'::'System.Collections.Generic.IEnumerator<System.Reflection.FieldInfo>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<get_Stats>d__30'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Reflection]System.Reflection.FieldInfo Game.PlayerStats/'<get_Stats>d__30'::'<>2__current'
      IL_0006:  ret
    } // end of method '<get_Stats>d__30'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> 
            'System.Collections.Generic.IEnumerable<System.Reflection.FieldInfo>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.PlayerStats/'<get_Stats>d__30' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PlayerStats/'<get_Stats>d__30'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PlayerStats/'<get_Stats>d__30'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<get_Stats>d__30'::'System.Collections.Generic.IEnumerable<System.Reflection.FieldInfo>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__30'::'System.Collections.Generic.IEnumerable<System.Reflection.FieldInfo>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<get_Stats>d__30'::System.Collections.IEnumerable.GetEnumerator

    .property instance class [System.Reflection]System.Reflection.FieldInfo
            'System.Collections.Generic.IEnumerator<System.Reflection.FieldInfo>.Current'()
    {
      .get instance class [System.Reflection]System.Reflection.FieldInfo Game.PlayerStats/'<get_Stats>d__30'::'System.Collections.Generic.IEnumerator<System.Reflection.FieldInfo>.get_Current'()
    } // end of property '<get_Stats>d__30'::'System.Collections.Generic.IEnumerator<System.Reflection.FieldInfo>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PlayerStats/'<get_Stats>d__30'::System.Collections.IEnumerator.get_Current()
    } // end of property '<get_Stats>d__30'::System.Collections.IEnumerator.Current
  } // end of class '<get_Stats>d__30'

  .field public bool Invalid
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceTravelled
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceWalked
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceFallen
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceClimbed
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceFlown
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceSwam
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceRidden
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 LowestAltitude
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 HighestAltitude
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DeepestDive
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 Jumps
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 BlocksDug
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 BlocksPlaced
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 BlocksInteracted
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 MeleeAttacks
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 MeleeHits
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 RangedAttacks
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 RangedHits
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 HitsReceived
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 StruckByLightning
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 TotalHealthLost
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 FoodItemsEaten
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 TimesWentToSleep
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 TimeSlept
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 ItemsCrafted
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 FurnitureItemsMade
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public valuetype Game.GameMode EasiestModeUsed
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> 
          get_Stats() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 21 47 61 6D 65 2E 50 6C 61 79 65 72 53 74   // ..!Game.PlayerSt
                                                                                                                                                      61 74 73 2B 3C 67 65 74 5F 53 74 61 74 73 3E 64   // ats+<get_Stats>d
                                                                                                                                                      5F 5F 33 30 00 00 )                               // __30..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PlayerStats/'<get_Stats>d__30'::.ctor(int32)
    IL_0007:  ret
  } // end of method PlayerStats::get_Stats

  .method public hidebysig instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> V_2,
             class [System.Reflection]System.Reflection.FieldInfo V_3,
             object V_4)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats::get_Stats()
    IL_0008:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
    IL_000d:  stloc.2
    .try
    {
      IL_000e:  br.s       IL_0045

      IL_0010:  ldloc.2
      IL_0011:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      IL_0016:  stloc.3
      IL_0017:  ldarg.1
      IL_0018:  ldloc.3
      IL_0019:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_001e:  callvirt   instance bool [EntitySystem]TemplatesDatabase.ValuesDictionary::ContainsKey(string)
      IL_0023:  brfalse.s  IL_0045

      IL_0025:  ldarg.1
      IL_0026:  ldloc.3
      IL_0027:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_002c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<object>(string)
      IL_0031:  stloc.s    V_4
      IL_0033:  ldloc.3
      IL_0034:  ldarg.0
      IL_0035:  ldloc.s    V_4
      IL_0037:  callvirt   instance void [System.Reflection]System.Reflection.FieldInfo::SetValue(object,
                                                                                                  object)
      IL_003c:  ldloc.s    V_4
      IL_003e:  ldloca.s   V_0
      IL_0040:  call       void Game.PlayerStats::Sum(object,
                                                      int32&)
      IL_0045:  ldloc.2
      IL_0046:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_004b:  brtrue.s   IL_0010

      IL_004d:  leave.s    IL_0059

    }  // end .try
    finally
    {
      IL_004f:  ldloc.2
      IL_0050:  brfalse.s  IL_0058

      IL_0052:  ldloc.2
      IL_0053:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0058:  endfinally
    }  // end handler
    IL_0059:  ldarg.1
    IL_005a:  ldstr      "Sum"
    IL_005f:  ldc.i4.0
    IL_0060:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_0065:  stloc.1
    IL_0066:  ldloc.0
    IL_0067:  ldloc.1
    IL_0068:  beq.s      IL_0071

    IL_006a:  ldarg.0
    IL_006b:  ldc.i4.1
    IL_006c:  stfld      bool Game.PlayerStats::Invalid
    IL_0071:  ret
  } // end of method PlayerStats::Load

  .method public hidebysig instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  3
    .locals init (int32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> V_1,
             class [System.Reflection]System.Reflection.FieldInfo V_2,
             object V_3)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats::get_Stats()
    IL_0008:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
    IL_000d:  stloc.1
    .try
    {
      IL_000e:  br.s       IL_0034

      IL_0010:  ldloc.1
      IL_0011:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      IL_0016:  stloc.2
      IL_0017:  ldloc.2
      IL_0018:  ldarg.0
      IL_0019:  callvirt   instance object [System.Reflection]System.Reflection.FieldInfo::GetValue(object)
      IL_001e:  stloc.3
      IL_001f:  ldarg.1
      IL_0020:  ldloc.2
      IL_0021:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0026:  ldloc.3
      IL_0027:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<object>(string,
                                                                                                            !!0)
      IL_002c:  ldloc.3
      IL_002d:  ldloca.s   V_0
      IL_002f:  call       void Game.PlayerStats::Sum(object,
                                                      int32&)
      IL_0034:  ldloc.1
      IL_0035:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_003a:  brtrue.s   IL_0010

      IL_003c:  leave.s    IL_0048

    }  // end .try
    finally
    {
      IL_003e:  ldloc.1
      IL_003f:  brfalse.s  IL_0047

      IL_0041:  ldloc.1
      IL_0042:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0047:  endfinally
    }  // end handler
    IL_0048:  ldarg.1
    IL_0049:  ldstr      "Sum"
    IL_004e:  ldloc.0
    IL_004f:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0054:  ret
  } // end of method PlayerStats::Save

  .method private hidebysig static void  Sum(object o,
                                             int32& s) cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  5
    .locals init (string V_0,
             string V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_000d:  ldloc.0
    IL_000e:  call       object [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString(class [System.Runtime]System.Type,
                                                                                                       string)
    IL_0013:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
    IL_0018:  stloc.1
    IL_0019:  ldc.i4.0
    IL_001a:  stloc.2
    IL_001b:  br.s       IL_003a

    IL_001d:  ldarg.1
    IL_001e:  ldarg.1
    IL_001f:  ldind.i4
    IL_0020:  ldloc.2
    IL_0021:  ldc.i4.s   117
    IL_0023:  add
    IL_0024:  ldloc.1
    IL_0025:  ldloc.2
    IL_0026:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_002b:  ldc.i4     0x7cfa
    IL_0030:  add
    IL_0031:  mul
    IL_0032:  ldc.i4.1
    IL_0033:  add
    IL_0034:  add
    IL_0035:  stind.i4
    IL_0036:  ldloc.2
    IL_0037:  ldc.i4.1
    IL_0038:  add
    IL_0039:  stloc.2
    IL_003a:  ldloc.2
    IL_003b:  ldloc.1
    IL_003c:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0041:  blt.s      IL_001d

    IL_0043:  ret
  } // end of method PlayerStats::Sum

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r8     (00 00 00 00 00 00 F0 7F)
    IL_000a:  stfld      float64 Game.PlayerStats::LowestAltitude
    IL_000f:  ldarg.0
    IL_0010:  ldc.i4     0x7fffffff
    IL_0015:  stfld      valuetype Game.GameMode Game.PlayerStats::EasiestModeUsed
    IL_001a:  ldarg.0
    IL_001b:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0020:  ret
  } // end of method PlayerStats::.ctor

  .property instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>
          Stats()
  {
    .get instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats::get_Stats()
  } // end of property PlayerStats::Stats
} // end of class Game.PlayerStats