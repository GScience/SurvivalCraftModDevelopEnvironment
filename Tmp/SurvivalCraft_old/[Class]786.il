.class public abstract auto ansi sealed beforefieldinit Game.CollectionUtils
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static !!T  ElementAt<T,(class [System.Runtime]System.Collections.Generic.IEnumerator`1<!!T>) E>(!!E enumerator,
                                                                                                                            int32 index) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarga.s   enumerator
    IL_0004:  constrained. !!E
    IL_000a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
    IL_000f:  brtrue.s   IL_001c

    IL_0011:  ldstr      "ElementAt() index out of range."
    IL_0016:  newobj     instance void [System.Runtime]System.IndexOutOfRangeException::.ctor(string)
    IL_001b:  throw

    IL_001c:  ldloc.0
    IL_001d:  ldc.i4.1
    IL_001e:  add
    IL_001f:  stloc.0
    IL_0020:  ldloc.0
    IL_0021:  ldarg.1
    IL_0022:  ble.s      IL_0002

    IL_0024:  ldarga.s   enumerator
    IL_0026:  constrained. !!E
    IL_002c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<!!T>::get_Current()
    IL_0031:  ret
  } // end of method CollectionUtils::ElementAt

  .method public hidebysig static void  RandomShuffle<T>(class [System.Runtime]System.Collections.Generic.IList`1<!!T> list,
                                                         class [System.Runtime]System.Func`2<int32,int32> random) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       60 (0x3c)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             !!T V_2)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<!!T>::get_Count()
    IL_0006:  ldc.i4.1
    IL_0007:  sub
    IL_0008:  stloc.0
    IL_0009:  br.s       IL_0037

    IL_000b:  ldarg.1
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.1
    IL_000e:  add
    IL_000f:  callvirt   instance !1 class [System.Runtime]System.Func`2<int32,int32>::Invoke(!0)
    IL_0014:  stloc.1
    IL_0015:  ldarg.0
    IL_0016:  ldloc.1
    IL_0017:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IList`1<!!T>::get_Item(int32)
    IL_001c:  stloc.2
    IL_001d:  ldarg.0
    IL_001e:  ldloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IList`1<!!T>::get_Item(int32)
    IL_0026:  callvirt   instance void class [System.Runtime]System.Collections.Generic.IList`1<!!T>::set_Item(int32,
                                                                                                               !0)
    IL_002b:  ldarg.0
    IL_002c:  ldloc.0
    IL_002d:  ldloc.2
    IL_002e:  callvirt   instance void class [System.Runtime]System.Collections.Generic.IList`1<!!T>::set_Item(int32,
                                                                                                               !0)
    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.1
    IL_0035:  sub
    IL_0036:  stloc.0
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.0
    IL_0039:  bgt.s      IL_000b

    IL_003b:  ret
  } // end of method CollectionUtils::RandomShuffle

  .method public hidebysig static int32  FirstIndex<T>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!T> collection,
                                                       !!T 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       67 (0x43)
    .maxstack  2
    .locals init (int32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<!!T> V_1,
             int32 V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!T>::GetEnumerator()
    IL_0008:  stloc.1
    .try
    {
      IL_0009:  br.s       IL_002b

      IL_000b:  ldloc.1
      IL_000c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<!!T>::get_Current()
      IL_0011:  box        !!T
      IL_0016:  ldarg.1
      IL_0017:  box        !!T
      IL_001c:  call       bool [System.Runtime]System.Object::Equals(object,
                                                                      object)
      IL_0021:  brfalse.s  IL_0027

      IL_0023:  ldloc.0
      IL_0024:  stloc.2
      IL_0025:  leave.s    IL_0041

      IL_0027:  ldloc.0
      IL_0028:  ldc.i4.1
      IL_0029:  add
      IL_002a:  stloc.0
      IL_002b:  ldloc.1
      IL_002c:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0031:  brtrue.s   IL_000b

      IL_0033:  leave.s    IL_003f

    }  // end .try
    finally
    {
      IL_0035:  ldloc.1
      IL_0036:  brfalse.s  IL_003e

      IL_0038:  ldloc.1
      IL_0039:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003e:  endfinally
    }  // end handler
    IL_003f:  ldc.i4.m1
    IL_0040:  ret

    IL_0041:  ldloc.2
    IL_0042:  ret
  } // end of method CollectionUtils::FirstIndex

  .method public hidebysig static int32  FirstIndex<T>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!T> collection,
                                                       class [System.Runtime]System.Func`2<!!T,bool> predicate) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       59 (0x3b)
    .maxstack  2
    .locals init (int32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<!!T> V_1,
             !!T V_2,
             int32 V_3)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!T>::GetEnumerator()
    IL_0008:  stloc.1
    .try
    {
      IL_0009:  br.s       IL_0023

      IL_000b:  ldloc.1
      IL_000c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<!!T>::get_Current()
      IL_0011:  stloc.2
      IL_0012:  ldarg.1
      IL_0013:  ldloc.2
      IL_0014:  callvirt   instance !1 class [System.Runtime]System.Func`2<!!T,bool>::Invoke(!0)
      IL_0019:  brfalse.s  IL_001f

      IL_001b:  ldloc.0
      IL_001c:  stloc.3
      IL_001d:  leave.s    IL_0039

      IL_001f:  ldloc.0
      IL_0020:  ldc.i4.1
      IL_0021:  add
      IL_0022:  stloc.0
      IL_0023:  ldloc.1
      IL_0024:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0029:  brtrue.s   IL_000b

      IL_002b:  leave.s    IL_0037

    }  // end .try
    finally
    {
      IL_002d:  ldloc.1
      IL_002e:  brfalse.s  IL_0036

      IL_0030:  ldloc.1
      IL_0031:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0036:  endfinally
    }  // end handler
    IL_0037:  ldc.i4.m1
    IL_0038:  ret

    IL_0039:  ldloc.3
    IL_003a:  ret
  } // end of method CollectionUtils::FirstIndex

} // end of class Game.CollectionUtils