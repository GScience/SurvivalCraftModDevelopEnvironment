.class public auto ansi beforefieldinit Game.SortedMultiCollection`2<TKey,TValue>
       extends [System.Runtime]System.Object
       implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>>,
                  [System.Runtime]System.Collections.IEnumerable
{
  .custom instance void [System.Runtime]System.Reflection.DefaultMemberAttribute::.ctor(string) = ( 01 00 04 49 74 65 6D 00 00 )                      // ...Item..
  .class sequential ansi sealed nested public beforefieldinit Enumerator<TKey,TValue>
         extends [System.Runtime]System.ValueType
         implements class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .field private class Game.SortedMultiCollection`2<!TKey,!TValue> m_collection
    .field private valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue> m_current
    .field private int32 m_index
    .field private int32 m_version
    .method assembly hidebysig specialname rtspecialname 
            instance void  .ctor(class Game.SortedMultiCollection`2<!TKey,!TValue> collection) cil managed
    {
      // 代码大小       39 (0x27)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  stfld      class Game.SortedMultiCollection`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_collection
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_current
      IL_000d:  initobj    valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.0
      IL_0015:  stfld      int32 valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_index
      IL_001a:  ldarg.0
      IL_001b:  ldarg.1
      IL_001c:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_version
      IL_0021:  stfld      int32 valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_version
      IL_0026:  ret
    } // end of method Enumerator::.ctor

    .method public hidebysig newslot specialname virtual final 
            instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue> 
            get_Current() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_current
      IL_0006:  ret
    } // end of method Enumerator::get_Current

    .method public hidebysig newslot virtual final 
            instance void  Dispose() cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method Enumerator::Dispose

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_current
      IL_0006:  box        valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
      IL_000b:  ret
    } // end of method Enumerator::System.Collections.IEnumerator.get_Current

    .method public hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      // 代码大小       107 (0x6b)
      .maxstack  3
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.SortedMultiCollection`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_collection
      IL_0006:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_version
      IL_000b:  ldarg.0
      IL_000c:  ldfld      int32 valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_version
      IL_0011:  beq.s      IL_001e

      IL_0013:  ldstr      "SortedMultiCollection was modified, enumeration ca"
      + "nnot continue."
      IL_0018:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_001d:  throw

      IL_001e:  ldarg.0
      IL_001f:  ldfld      int32 valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_index
      IL_0024:  ldarg.0
      IL_0025:  ldfld      class Game.SortedMultiCollection`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_collection
      IL_002a:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
      IL_002f:  bge.s      IL_005d

      IL_0031:  ldarg.0
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class Game.SortedMultiCollection`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_collection
      IL_0038:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
      IL_003d:  ldarg.0
      IL_003e:  ldfld      int32 valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_index
      IL_0043:  ldelem     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
      IL_0048:  stfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_current
      IL_004d:  ldarg.0
      IL_004e:  ldarg.0
      IL_004f:  ldfld      int32 valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_index
      IL_0054:  ldc.i4.1
      IL_0055:  add
      IL_0056:  stfld      int32 valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_index
      IL_005b:  ldc.i4.1
      IL_005c:  ret

      IL_005d:  ldarg.0
      IL_005e:  ldflda     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_current
      IL_0063:  initobj    valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
      IL_0069:  ldc.i4.0
      IL_006a:  ret
    } // end of method Enumerator::MoveNext

    .method public hidebysig newslot virtual final 
            instance void  Reset() cil managed
    {
      // 代码大小       50 (0x32)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.SortedMultiCollection`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_collection
      IL_0006:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_version
      IL_000b:  ldarg.0
      IL_000c:  ldfld      int32 valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_version
      IL_0011:  beq.s      IL_001e

      IL_0013:  ldstr      "SortedMultiCollection was modified, enumeration ca"
      + "nnot continue."
      IL_0018:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_001d:  throw

      IL_001e:  ldarg.0
      IL_001f:  ldc.i4.0
      IL_0020:  stfld      int32 valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_index
      IL_0025:  ldarg.0
      IL_0026:  ldflda     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::m_current
      IL_002b:  initobj    valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
      IL_0031:  ret
    } // end of method Enumerator::Reset

    .property instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
            Current()
    {
      .get instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue> Game.SortedMultiCollection`2/Enumerator::get_Current()
    } // end of property Enumerator::Current
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.SortedMultiCollection`2/Enumerator::System.Collections.IEnumerator.get_Current()
    } // end of property Enumerator::System.Collections.IEnumerator.Current
  } // end of class Enumerator

  .field private static literal int32 MinCapacity = int32(0x00000004)
  .field private valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>[] m_array
  .field private int32 m_count
  .field private int32 m_version
  .field private class [System.Runtime]System.Collections.Generic.IComparer`1<!TKey> m_comparer
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.4
    IL_0008:  newarr     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_000d:  stfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_0012:  ldarg.0
    IL_0013:  call       class [System.Collections]System.Collections.Generic.Comparer`1<!0> class [System.Collections]System.Collections.Generic.Comparer`1<!TKey>::get_Default()
    IL_0018:  stfld      class [System.Runtime]System.Collections.Generic.IComparer`1<!0> class Game.SortedMultiCollection`2<!TKey,!TValue>::m_comparer
    IL_001d:  ret
  } // end of method SortedMultiCollection`2::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [System.Runtime]System.Collections.Generic.IComparer`1<!TKey> comparer) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.4
    IL_0008:  newarr     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_000d:  stfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  stfld      class [System.Runtime]System.Collections.Generic.IComparer`1<!0> class Game.SortedMultiCollection`2<!TKey,!TValue>::m_comparer
    IL_0019:  ret
  } // end of method SortedMultiCollection`2::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 capacity) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  call       instance void class Game.SortedMultiCollection`2<!TKey,!TValue>::.ctor(int32,
                                                                                                class [System.Runtime]System.Collections.Generic.IComparer`1<!0>)
    IL_0008:  ldarg.1
    IL_0009:  ldc.i4.4
    IL_000a:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_000f:  starg.s    capacity
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  newarr     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_0018:  stfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_001d:  ldarg.0
    IL_001e:  call       class [System.Collections]System.Collections.Generic.Comparer`1<!0> class [System.Collections]System.Collections.Generic.Comparer`1<!TKey>::get_Default()
    IL_0023:  stfld      class [System.Runtime]System.Collections.Generic.IComparer`1<!0> class Game.SortedMultiCollection`2<!TKey,!TValue>::m_comparer
    IL_0028:  ret
  } // end of method SortedMultiCollection`2::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 capacity,
                               class [System.Runtime]System.Collections.Generic.IComparer`1<!TKey> comparer) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.4
    IL_0008:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_000d:  starg.s    capacity
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  newarr     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_0016:  stfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_001b:  ldarg.0
    IL_001c:  ldarg.2
    IL_001d:  stfld      class [System.Runtime]System.Collections.Generic.IComparer`1<!0> class Game.SortedMultiCollection`2<!TKey,!TValue>::m_comparer
    IL_0022:  ret
  } // end of method SortedMultiCollection`2::.ctor

  .method public hidebysig specialname instance int32 
          get_Count() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0006:  ret
  } // end of method SortedMultiCollection`2::get_Count

  .method public hidebysig specialname instance int32 
          get_Capacity() cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_0006:  ldlen
    IL_0007:  conv.i4
    IL_0008:  ret
  } // end of method SortedMultiCollection`2::get_Capacity

  .method public hidebysig specialname instance void 
          set_Capacity(int32 'value') cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>[] V_0)
    IL_0000:  ldc.i4.4
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0007:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_000c:  ldarg.1
    IL_000d:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_0012:  starg.s    'value'
    IL_0014:  ldarg.1
    IL_0015:  ldarg.0
    IL_0016:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_001b:  ldlen
    IL_001c:  conv.i4
    IL_001d:  beq.s      IL_003f

    IL_001f:  ldarg.1
    IL_0020:  newarr     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_0025:  stloc.0
    IL_0026:  ldarg.0
    IL_0027:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_002c:  ldloc.0
    IL_002d:  ldarg.0
    IL_002e:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0033:  call       void [System.Runtime]System.Array::Copy(class [System.Runtime]System.Array,
                                                                 class [System.Runtime]System.Array,
                                                                 int32)
    IL_0038:  ldarg.0
    IL_0039:  ldloc.0
    IL_003a:  stfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_003f:  ret
  } // end of method SortedMultiCollection`2::set_Capacity

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue> 
          get_Item(int32 i) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0007:  bge.s      IL_0016

    IL_0009:  ldarg.0
    IL_000a:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_000f:  ldarg.1
    IL_0010:  ldelem     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_0015:  ret

    IL_0016:  newobj     instance void [System.Runtime]System.ArgumentOutOfRangeException::.ctor()
    IL_001b:  throw
  } // end of method SortedMultiCollection`2::get_Item

  .method public hidebysig instance void 
          Add(!TKey key,
              !TValue 'value') cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  6
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::Find(!0)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  bge.s      IL_000f

    IL_000c:  ldloc.0
    IL_000d:  not
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0016:  ldc.i4.1
    IL_0017:  add
    IL_0018:  call       instance void class Game.SortedMultiCollection`2<!TKey,!TValue>::EnsureCapacity(int32)
    IL_001d:  ldarg.0
    IL_001e:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_0023:  ldloc.0
    IL_0024:  ldarg.0
    IL_0025:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.1
    IL_002c:  add
    IL_002d:  ldarg.0
    IL_002e:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0033:  ldloc.0
    IL_0034:  sub
    IL_0035:  call       void [System.Runtime]System.Array::Copy(class [System.Runtime]System.Array,
                                                                 int32,
                                                                 class [System.Runtime]System.Array,
                                                                 int32,
                                                                 int32)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_0040:  ldloc.0
    IL_0041:  ldarg.1
    IL_0042:  ldarg.2
    IL_0043:  newobj     instance void valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>::.ctor(!0,
                                                                                                                                 !1)
    IL_0048:  stelem     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_004d:  ldarg.0
    IL_004e:  ldarg.0
    IL_004f:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0054:  ldc.i4.1
    IL_0055:  add
    IL_0056:  stfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_005b:  ldarg.0
    IL_005c:  ldarg.0
    IL_005d:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_version
    IL_0062:  ldc.i4.1
    IL_0063:  add
    IL_0064:  stfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_version
    IL_0069:  ret
  } // end of method SortedMultiCollection`2::Add

  .method public hidebysig instance void 
          AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>> items) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue> V_1)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>>::GetEnumerator()
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  br.s       IL_0024

      IL_0009:  ldloc.0
      IL_000a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>>::get_Current()
      IL_000f:  stloc.1
      IL_0010:  ldarg.0
      IL_0011:  ldloca.s   V_1
      IL_0013:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>::get_Key()
      IL_0018:  ldloca.s   V_1
      IL_001a:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>::get_Value()
      IL_001f:  call       instance void class Game.SortedMultiCollection`2<!TKey,!TValue>::Add(!0,
                                                                                                !1)
      IL_0024:  ldloc.0
      IL_0025:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_002a:  brtrue.s   IL_0009

      IL_002c:  leave.s    IL_0038

    }  // end .try
    finally
    {
      IL_002e:  ldloc.0
      IL_002f:  brfalse.s  IL_0037

      IL_0031:  ldloc.0
      IL_0032:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0037:  endfinally
    }  // end handler
    IL_0038:  ret
  } // end of method SortedMultiCollection`2::AddRange

  .method public hidebysig instance bool 
          Remove(!TKey key) cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  6
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::Find(!0)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  blt.s      IL_0062

    IL_000c:  ldarg.0
    IL_000d:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.1
    IL_0014:  add
    IL_0015:  ldarg.0
    IL_0016:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_001b:  ldloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0022:  ldloc.0
    IL_0023:  sub
    IL_0024:  ldc.i4.1
    IL_0025:  sub
    IL_0026:  call       void [System.Runtime]System.Array::Copy(class [System.Runtime]System.Array,
                                                                 int32,
                                                                 class [System.Runtime]System.Array,
                                                                 int32,
                                                                 int32)
    IL_002b:  ldarg.0
    IL_002c:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_0031:  ldarg.0
    IL_0032:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0037:  ldc.i4.1
    IL_0038:  sub
    IL_0039:  ldelema    valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_003e:  initobj    valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_0044:  ldarg.0
    IL_0045:  ldarg.0
    IL_0046:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_004b:  ldc.i4.1
    IL_004c:  sub
    IL_004d:  stfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_version
    IL_0059:  ldc.i4.1
    IL_005a:  add
    IL_005b:  stfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_version
    IL_0060:  ldc.i4.1
    IL_0061:  ret

    IL_0062:  ldc.i4.0
    IL_0063:  ret
  } // end of method SortedMultiCollection`2::Remove

  .method public hidebysig instance void 
          Clear() cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_001a

    IL_0004:  ldarg.0
    IL_0005:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_000a:  ldloc.0
    IL_000b:  ldelema    valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_0010:  initobj    valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  add
    IL_0019:  stloc.0
    IL_001a:  ldloc.0
    IL_001b:  ldarg.0
    IL_001c:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0021:  blt.s      IL_0004

    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.0
    IL_0025:  stfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_version
    IL_0031:  ldc.i4.1
    IL_0032:  add
    IL_0033:  stfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_version
    IL_0038:  ret
  } // end of method SortedMultiCollection`2::Clear

  .method public hidebysig instance bool 
          TryGetValue(!TKey key,
                      [out] !TValue& 'value') cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::Find(!0)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  blt.s      IL_0025

    IL_000c:  ldarg.2
    IL_000d:  ldarg.0
    IL_000e:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_0013:  ldloc.0
    IL_0014:  ldelema    valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_0019:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>::get_Value()
    IL_001e:  stobj      !TValue
    IL_0023:  ldc.i4.1
    IL_0024:  ret

    IL_0025:  ldarg.2
    IL_0026:  initobj    !TValue
    IL_002c:  ldc.i4.0
    IL_002d:  ret
  } // end of method SortedMultiCollection`2::TryGetValue

  .method public hidebysig instance bool 
          ContainsKey(!TKey key) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::Find(!0)
    IL_0007:  ldc.i4.0
    IL_0008:  clt
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  ret
  } // end of method SortedMultiCollection`2::ContainsKey

  .method public hidebysig instance valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue> 
          GetEnumerator() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::.ctor(class Game.SortedMultiCollection`2<!0,!1>)
    IL_0006:  ret
  } // end of method SortedMultiCollection`2::GetEnumerator

  .method private hidebysig newslot virtual final 
          instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>> 
          'System.Collections.Generic.IEnumerable<System.Collections.Generic.KeyValuePair<TKey,TValue>>.GetEnumerator'() cil managed
  {
    .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>>::GetEnumerator()
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::.ctor(class Game.SortedMultiCollection`2<!0,!1>)
    IL_0006:  box        valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>
    IL_000b:  ret
  } // end of method SortedMultiCollection`2::'System.Collections.Generic.IEnumerable<System.Collections.Generic.KeyValuePair<TKey,TValue>>.GetEnumerator'

  .method private hidebysig newslot virtual final 
          instance class [System.Runtime]System.Collections.IEnumerator 
          System.Collections.IEnumerable.GetEnumerator() cil managed
  {
    .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>::.ctor(class Game.SortedMultiCollection`2<!0,!1>)
    IL_0006:  box        valuetype Game.SortedMultiCollection`2/Enumerator<!TKey,!TValue>
    IL_000b:  ret
  } // end of method SortedMultiCollection`2::System.Collections.IEnumerable.GetEnumerator

  .method private hidebysig instance void 
          EnsureCapacity(int32 capacity) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::get_Capacity()
    IL_0007:  ble.s      IL_001d

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  ldc.i4.2
    IL_000c:  ldarg.0
    IL_000d:  call       instance int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::get_Capacity()
    IL_0012:  mul
    IL_0013:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_0018:  call       instance void class Game.SortedMultiCollection`2<!TKey,!TValue>::set_Capacity(int32)
    IL_001d:  ret
  } // end of method SortedMultiCollection`2::EnsureCapacity

  .method private hidebysig instance int32 
          Find(!TKey key) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0006:  ldc.i4.0
    IL_0007:  ble.s      IL_0054

    IL_0009:  ldc.i4.0
    IL_000a:  stloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldfld      int32 class Game.SortedMultiCollection`2<!TKey,!TValue>::m_count
    IL_0011:  ldc.i4.1
    IL_0012:  sub
    IL_0013:  stloc.1
    IL_0014:  br.s       IL_004d

    IL_0016:  ldloc.0
    IL_0017:  ldloc.1
    IL_0018:  add
    IL_0019:  ldc.i4.1
    IL_001a:  shr
    IL_001b:  stloc.2
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [System.Runtime]System.Collections.Generic.IComparer`1<!0> class Game.SortedMultiCollection`2<!TKey,!TValue>::m_comparer
    IL_0022:  ldarg.0
    IL_0023:  ldfld      valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1>[] class Game.SortedMultiCollection`2<!TKey,!TValue>::m_array
    IL_0028:  ldloc.2
    IL_0029:  ldelema    valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
    IL_002e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>::get_Key()
    IL_0033:  ldarg.1
    IL_0034:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IComparer`1<!TKey>::Compare(!0,
                                                                                                                     !0)
    IL_0039:  stloc.3
    IL_003a:  ldloc.3
    IL_003b:  brtrue.s   IL_003f

    IL_003d:  ldloc.2
    IL_003e:  ret

    IL_003f:  ldloc.3
    IL_0040:  ldc.i4.0
    IL_0041:  bge.s      IL_0049

    IL_0043:  ldloc.2
    IL_0044:  ldc.i4.1
    IL_0045:  add
    IL_0046:  stloc.0
    IL_0047:  br.s       IL_004d

    IL_0049:  ldloc.2
    IL_004a:  ldc.i4.1
    IL_004b:  sub
    IL_004c:  stloc.1
    IL_004d:  ldloc.0
    IL_004e:  ldloc.1
    IL_004f:  ble.s      IL_0016

    IL_0051:  ldloc.0
    IL_0052:  not
    IL_0053:  ret

    IL_0054:  ldc.i4.m1
    IL_0055:  ret
  } // end of method SortedMultiCollection`2::Find

  .property instance int32 Count()
  {
    .get instance int32 Game.SortedMultiCollection`2::get_Count()
  } // end of property SortedMultiCollection`2::Count
  .property instance int32 Capacity()
  {
    .get instance int32 Game.SortedMultiCollection`2::get_Capacity()
    .set instance void Game.SortedMultiCollection`2::set_Capacity(int32)
  } // end of property SortedMultiCollection`2::Capacity
  .property instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>
          Item(int32)
  {
    .get instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue> Game.SortedMultiCollection`2::get_Item(int32)
  } // end of property SortedMultiCollection`2::Item
} // end of class Game.SortedMultiCollection`2