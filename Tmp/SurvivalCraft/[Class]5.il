.class private auto ansi beforefieldinit SimpleJson.Reflection.ReflectionUtils
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Diagnostics.Tools]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                                        string) = ( 01 00 10 72 65 66 6C 65 63 74 69 6F 6E 2D 75 74   // ...reflection-ut
                                                                                                                    69 6C 73 05 31 2E 30 2E 30 00 00 )                // ils.1.0.0..
  .class auto ansi sealed nested public GetDelegate
         extends [System.Runtime]System.MulticastDelegate
  {
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(object 'object',
                                 native int 'method') runtime managed
    {
    } // end of method GetDelegate::.ctor

    .method public hidebysig newslot virtual 
            instance object  Invoke(object source) runtime managed
    {
    } // end of method GetDelegate::Invoke

    .method public hidebysig newslot virtual 
            instance class [System.Runtime]System.IAsyncResult 
            BeginInvoke(object source,
                        class [System.Runtime]System.AsyncCallback callback,
                        object 'object') runtime managed
    {
    } // end of method GetDelegate::BeginInvoke

    .method public hidebysig newslot virtual 
            instance object  EndInvoke(class [System.Runtime]System.IAsyncResult result) runtime managed
    {
    } // end of method GetDelegate::EndInvoke

  } // end of class GetDelegate

  .class auto ansi sealed nested public SetDelegate
         extends [System.Runtime]System.MulticastDelegate
  {
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(object 'object',
                                 native int 'method') runtime managed
    {
    } // end of method SetDelegate::.ctor

    .method public hidebysig newslot virtual 
            instance void  Invoke(object source,
                                  object 'value') runtime managed
    {
    } // end of method SetDelegate::Invoke

    .method public hidebysig newslot virtual 
            instance class [System.Runtime]System.IAsyncResult 
            BeginInvoke(object source,
                        object 'value',
                        class [System.Runtime]System.AsyncCallback callback,
                        object 'object') runtime managed
    {
    } // end of method SetDelegate::BeginInvoke

    .method public hidebysig newslot virtual 
            instance void  EndInvoke(class [System.Runtime]System.IAsyncResult result) runtime managed
    {
    } // end of method SetDelegate::EndInvoke

  } // end of class SetDelegate

  .class auto ansi sealed nested public ConstructorDelegate
         extends [System.Runtime]System.MulticastDelegate
  {
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(object 'object',
                                 native int 'method') runtime managed
    {
    } // end of method ConstructorDelegate::.ctor

    .method public hidebysig newslot virtual 
            instance object  Invoke(object[] args) runtime managed
    {
      .param [1]
      .custom instance void [System.Runtime]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    } // end of method ConstructorDelegate::Invoke

    .method public hidebysig newslot virtual 
            instance class [System.Runtime]System.IAsyncResult 
            BeginInvoke(object[] args,
                        class [System.Runtime]System.AsyncCallback callback,
                        object 'object') runtime managed
    {
    } // end of method ConstructorDelegate::BeginInvoke

    .method public hidebysig newslot virtual 
            instance object  EndInvoke(class [System.Runtime]System.IAsyncResult result) runtime managed
    {
    } // end of method ConstructorDelegate::EndInvoke

  } // end of class ConstructorDelegate

  .class auto ansi sealed nested public ThreadSafeDictionaryValueFactory`2<TKey,TValue>
         extends [System.Runtime]System.MulticastDelegate
  {
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(object 'object',
                                 native int 'method') runtime managed
    {
    } // end of method ThreadSafeDictionaryValueFactory`2::.ctor

    .method public hidebysig newslot virtual 
            instance !TValue  Invoke(!TKey key) runtime managed
    {
    } // end of method ThreadSafeDictionaryValueFactory`2::Invoke

    .method public hidebysig newslot virtual 
            instance class [System.Runtime]System.IAsyncResult 
            BeginInvoke(!TKey key,
                        class [System.Runtime]System.AsyncCallback callback,
                        object 'object') runtime managed
    {
    } // end of method ThreadSafeDictionaryValueFactory`2::BeginInvoke

    .method public hidebysig newslot virtual 
            instance !TValue  EndInvoke(class [System.Runtime]System.IAsyncResult result) runtime managed
    {
    } // end of method ThreadSafeDictionaryValueFactory`2::EndInvoke

  } // end of class ThreadSafeDictionaryValueFactory`2

  .class auto ansi sealed nested public beforefieldinit ThreadSafeDictionary`2<TKey,TValue>
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IDictionary`2<!TKey,!TValue>,
                    class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>>,
                    class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>>,
                    [System.Runtime]System.Collections.IEnumerable
  {
    .custom instance void [System.Runtime]System.Reflection.DefaultMemberAttribute::.ctor(string) = ( 01 00 04 49 74 65 6D 00 00 )                      // ...Item..
    .field private initonly object _lock
    .field private initonly class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<!TKey,!TValue> _valueFactory
    .field private class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue> _dictionary
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<!TKey,!TValue> valueFactory) cil managed
    {
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  newobj     instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  stfld      object class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_lock
      IL_000b:  ldarg.0
      IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0011:  ldarg.0
      IL_0012:  ldarg.1
      IL_0013:  stfld      class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_valueFactory
      IL_0018:  ret
    } // end of method ThreadSafeDictionary`2::.ctor

    .method private hidebysig instance !TValue 
            Get(!TKey key) cil managed
    {
      // 代码大小       42 (0x2a)
      .maxstack  3
      .locals init (!TValue V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
      IL_0006:  brtrue.s   IL_0010

      IL_0008:  ldarg.0
      IL_0009:  ldarg.1
      IL_000a:  call       instance !1 class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::AddValue(!0)
      IL_000f:  ret

      IL_0010:  ldarg.0
      IL_0011:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
      IL_0016:  ldarg.1
      IL_0017:  ldloca.s   V_0
      IL_0019:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::TryGetValue(!0,
                                                                                                                                       !1&)
      IL_001e:  brtrue.s   IL_0028

      IL_0020:  ldarg.0
      IL_0021:  ldarg.1
      IL_0022:  call       instance !1 class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::AddValue(!0)
      IL_0027:  ret

      IL_0028:  ldloc.0
      IL_0029:  ret
    } // end of method ThreadSafeDictionary`2::Get

    .method private hidebysig instance !TValue 
            AddValue(!TKey key) cil managed
    {
      // 代码大小       132 (0x84)
      .maxstack  3
      .locals init (!TValue V_0,
               object V_1,
               bool V_2,
               !TValue V_3,
               class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue> V_4,
               !TValue V_5)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_valueFactory
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance !1 class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<!TKey,!TValue>::Invoke(!0)
      IL_000c:  stloc.0
      IL_000d:  ldarg.0
      IL_000e:  ldfld      object class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_lock
      IL_0013:  stloc.1
      IL_0014:  ldc.i4.0
      IL_0015:  stloc.2
      .try
      {
        IL_0016:  ldloc.1
        IL_0017:  ldloca.s   V_2
        IL_0019:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                    bool&)
        IL_001e:  ldarg.0
        IL_001f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
        IL_0024:  brtrue.s   IL_0040

        IL_0026:  ldarg.0
        IL_0027:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::.ctor()
        IL_002c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
        IL_0031:  ldarg.0
        IL_0032:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
        IL_0037:  ldarg.1
        IL_0038:  ldloc.0
        IL_0039:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::set_Item(!0,
                                                                                                                                      !1)
        IL_003e:  leave.s    IL_007f

        IL_0040:  ldarg.0
        IL_0041:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
        IL_0046:  ldarg.1
        IL_0047:  ldloca.s   V_3
        IL_0049:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::TryGetValue(!0,
                                                                                                                                         !1&)
        IL_004e:  brfalse.s  IL_0055

        IL_0050:  ldloc.3
        IL_0051:  stloc.s    V_5
        IL_0053:  leave.s    IL_0081

        IL_0055:  ldarg.0
        IL_0056:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
        IL_005b:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::.ctor(class [System.Runtime]System.Collections.Generic.IDictionary`2<!0,!1>)
        IL_0060:  stloc.s    V_4
        IL_0062:  ldloc.s    V_4
        IL_0064:  ldarg.1
        IL_0065:  ldloc.0
        IL_0066:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::set_Item(!0,
                                                                                                                                      !1)
        IL_006b:  ldarg.0
        IL_006c:  ldloc.s    V_4
        IL_006e:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
        IL_0073:  leave.s    IL_007f

      }  // end .try
      finally
      {
        IL_0075:  ldloc.2
        IL_0076:  brfalse.s  IL_007e

        IL_0078:  ldloc.1
        IL_0079:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
        IL_007e:  endfinally
      }  // end handler
      IL_007f:  ldloc.0
      IL_0080:  ret

      IL_0081:  ldloc.s    V_5
      IL_0083:  ret
    } // end of method ThreadSafeDictionary`2::AddValue

    .method public hidebysig newslot virtual final 
            instance void  Add(!TKey key,
                               !TValue 'value') cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotImplementedException::.ctor()
      IL_0005:  throw
    } // end of method ThreadSafeDictionary`2::Add

    .method public hidebysig newslot virtual final 
            instance bool  ContainsKey(!TKey key) cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::ContainsKey(!0)
      IL_000c:  ret
    } // end of method ThreadSafeDictionary`2::ContainsKey

    .method public hidebysig newslot specialname virtual final 
            instance class [System.Runtime]System.Collections.Generic.ICollection`1<!TKey> 
            get_Keys() cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
      IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::get_Keys()
      IL_000b:  ret
    } // end of method ThreadSafeDictionary`2::get_Keys

    .method public hidebysig newslot virtual final 
            instance bool  Remove(!TKey key) cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotImplementedException::.ctor()
      IL_0005:  throw
    } // end of method ThreadSafeDictionary`2::Remove

    .method public hidebysig newslot virtual final 
            instance bool  TryGetValue(!TKey key,
                                       [out] !TValue& 'value') cil managed
    {
      // 代码大小       15 (0xf)
      .maxstack  8
      IL_0000:  ldarg.2
      IL_0001:  ldarg.0
      IL_0002:  ldarg.1
      IL_0003:  call       instance !1 class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::get_Item(!0)
      IL_0008:  stobj      !TValue
      IL_000d:  ldc.i4.1
      IL_000e:  ret
    } // end of method ThreadSafeDictionary`2::TryGetValue

    .method public hidebysig newslot specialname virtual final 
            instance class [System.Runtime]System.Collections.Generic.ICollection`1<!TValue> 
            get_Values() cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
      IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::get_Values()
      IL_000b:  ret
    } // end of method ThreadSafeDictionary`2::get_Values

    .method public hidebysig newslot specialname virtual final 
            instance !TValue  get_Item(!TKey key) cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  call       instance !1 class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::Get(!0)
      IL_0007:  ret
    } // end of method ThreadSafeDictionary`2::get_Item

    .method public hidebysig newslot specialname virtual final 
            instance void  set_Item(!TKey key,
                                    !TValue 'value') cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotImplementedException::.ctor()
      IL_0005:  throw
    } // end of method ThreadSafeDictionary`2::set_Item

    .method public hidebysig newslot virtual final 
            instance void  Add(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue> item) cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotImplementedException::.ctor()
      IL_0005:  throw
    } // end of method ThreadSafeDictionary`2::Add

    .method public hidebysig newslot virtual final 
            instance void  Clear() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotImplementedException::.ctor()
      IL_0005:  throw
    } // end of method ThreadSafeDictionary`2::Clear

    .method public hidebysig newslot virtual final 
            instance bool  Contains(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue> item) cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotImplementedException::.ctor()
      IL_0005:  throw
    } // end of method ThreadSafeDictionary`2::Contains

    .method public hidebysig newslot virtual final 
            instance void  CopyTo(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>[] 'array',
                                  int32 arrayIndex) cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotImplementedException::.ctor()
      IL_0005:  throw
    } // end of method ThreadSafeDictionary`2::CopyTo

    .method public hidebysig newslot specialname virtual final 
            instance int32  get_Count() cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
      IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::get_Count()
      IL_000b:  ret
    } // end of method ThreadSafeDictionary`2::get_Count

    .method public hidebysig newslot specialname virtual final 
            instance bool  get_IsReadOnly() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotImplementedException::.ctor()
      IL_0005:  throw
    } // end of method ThreadSafeDictionary`2::get_IsReadOnly

    .method public hidebysig newslot virtual final 
            instance bool  Remove(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue> item) cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotImplementedException::.ctor()
      IL_0005:  throw
    } // end of method ThreadSafeDictionary`2::Remove

    .method public hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!TKey,!TValue>> 
            GetEnumerator() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
      IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::GetEnumerator()
      IL_000b:  box        valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!TKey,!TValue>
      IL_0010:  ret
    } // end of method ThreadSafeDictionary`2::GetEnumerator

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<!0,!1> class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<!TKey,!TValue>::_dictionary
      IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<!TKey,!TValue>::GetEnumerator()
      IL_000b:  box        valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!TKey,!TValue>
      IL_0010:  ret
    } // end of method ThreadSafeDictionary`2::System.Collections.IEnumerable.GetEnumerator

    .property instance class [System.Runtime]System.Collections.Generic.ICollection`1<!TKey>
            Keys()
    {
      .get instance class [System.Runtime]System.Collections.Generic.ICollection`1<!TKey> SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2::get_Keys()
    } // end of property ThreadSafeDictionary`2::Keys
    .property instance class [System.Runtime]System.Collections.Generic.ICollection`1<!TValue>
            Values()
    {
      .get instance class [System.Runtime]System.Collections.Generic.ICollection`1<!TValue> SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2::get_Values()
    } // end of property ThreadSafeDictionary`2::Values
    .property instance !TValue Item(!TKey)
    {
      .get instance !TValue SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2::get_Item(!TKey)
      .set instance void SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2::set_Item(!TKey,
                                                                                                !TValue)
    } // end of property ThreadSafeDictionary`2::Item
    .property instance int32 Count()
    {
      .get instance int32 SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2::get_Count()
    } // end of property ThreadSafeDictionary`2::Count
    .property instance bool IsReadOnly()
    {
      .get instance bool SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2::get_IsReadOnly()
    } // end of property ThreadSafeDictionary`2::IsReadOnly
  } // end of class ThreadSafeDictionary`2

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass25_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Reflection]System.Reflection.ConstructorInfo constructorInfo
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass25_0'::.ctor

    .method assembly hidebysig instance object 
            '<GetConstructorByReflection>b__0'(object[] args) cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Reflection]System.Reflection.ConstructorInfo SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass25_0'::constructorInfo
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance object [System.Reflection]System.Reflection.ConstructorInfo::Invoke(object[])
      IL_000c:  ret
    } // end of method '<>c__DisplayClass25_0'::'<GetConstructorByReflection>b__0'

  } // end of class '<>c__DisplayClass25_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass29_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Reflection]System.Reflection.MethodInfo methodInfo
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass29_0'::.ctor

    .method assembly hidebysig instance object 
            '<GetGetMethodByReflection>b__0'(object source) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Reflection]System.Reflection.MethodInfo SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass29_0'::methodInfo
      IL_0006:  ldarg.1
      IL_0007:  ldsfld     object[] SimpleJson.Reflection.ReflectionUtils::EmptyObjects
      IL_000c:  callvirt   instance object [System.Reflection]System.Reflection.MethodBase::Invoke(object,
                                                                                                   object[])
      IL_0011:  ret
    } // end of method '<>c__DisplayClass29_0'::'<GetGetMethodByReflection>b__0'

  } // end of class '<>c__DisplayClass29_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass30_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Reflection]System.Reflection.FieldInfo fieldInfo
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass30_0'::.ctor

    .method assembly hidebysig instance object 
            '<GetGetMethodByReflection>b__0'(object source) cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Reflection]System.Reflection.FieldInfo SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass30_0'::fieldInfo
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance object [System.Reflection]System.Reflection.FieldInfo::GetValue(object)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass30_0'::'<GetGetMethodByReflection>b__0'

  } // end of class '<>c__DisplayClass30_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass33_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Reflection]System.Reflection.MethodInfo methodInfo
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass33_0'::.ctor

    .method assembly hidebysig instance void 
            '<GetSetMethodByReflection>b__0'(object source,
                                             object 'value') cil managed
    {
      // 代码大小       24 (0x18)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Reflection]System.Reflection.MethodInfo SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass33_0'::methodInfo
      IL_0006:  ldarg.1
      IL_0007:  ldc.i4.1
      IL_0008:  newarr     [System.Runtime]System.Object
      IL_000d:  dup
      IL_000e:  ldc.i4.0
      IL_000f:  ldarg.2
      IL_0010:  stelem.ref
      IL_0011:  callvirt   instance object [System.Reflection]System.Reflection.MethodBase::Invoke(object,
                                                                                                   object[])
      IL_0016:  pop
      IL_0017:  ret
    } // end of method '<>c__DisplayClass33_0'::'<GetSetMethodByReflection>b__0'

  } // end of class '<>c__DisplayClass33_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass34_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Reflection]System.Reflection.FieldInfo fieldInfo
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass34_0'::.ctor

    .method assembly hidebysig instance void 
            '<GetSetMethodByReflection>b__0'(object source,
                                             object 'value') cil managed
    {
      // 代码大小       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Reflection]System.Reflection.FieldInfo SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass34_0'::fieldInfo
      IL_0006:  ldarg.1
      IL_0007:  ldarg.2
      IL_0008:  callvirt   instance void [System.Reflection]System.Reflection.FieldInfo::SetValue(object,
                                                                                                  object)
      IL_000d:  ret
    } // end of method '<>c__DisplayClass34_0'::'<GetSetMethodByReflection>b__0'

  } // end of class '<>c__DisplayClass34_0'

  .field private static initonly object[] EmptyObjects
  .method public hidebysig static class [System.Reflection]System.Reflection.TypeInfo 
          GetTypeInfo(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0006:  ret
  } // end of method ReflectionUtils::GetTypeInfo

  .method public hidebysig static class [System.Runtime]System.Attribute 
          GetAttribute(class [System.Reflection]System.Reflection.MemberInfo info,
                       class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_000f

    IL_0003:  ldarg.1
    IL_0004:  brfalse.s  IL_000f

    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       bool [System.Reflection.Extensions]System.Reflection.CustomAttributeExtensions::IsDefined(class [System.Reflection]System.Reflection.MemberInfo,
                                                                                                                   class [System.Runtime]System.Type)
    IL_000d:  brtrue.s   IL_0011

    IL_000f:  ldnull
    IL_0010:  ret

    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  call       class [System.Runtime]System.Attribute [System.Reflection.Extensions]System.Reflection.CustomAttributeExtensions::GetCustomAttribute(class [System.Reflection]System.Reflection.MemberInfo,
                                                                                                                                                              class [System.Runtime]System.Type)
    IL_0018:  ret
  } // end of method ReflectionUtils::GetAttribute

  .method public hidebysig static class [System.Runtime]System.Type 
          GetGenericListElementType(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Runtime]System.Type> V_0,
             class [System.Runtime]System.Type V_1,
             class [System.Runtime]System.Type V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0006:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Runtime]System.Type> [System.Reflection]System.Reflection.TypeInfo::get_ImplementedInterfaces()
    IL_000b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Runtime]System.Type>::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br.s       IL_003f

      IL_0013:  ldloc.0
      IL_0014:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Runtime]System.Type>::get_Current()
      IL_0019:  stloc.1
      IL_001a:  ldloc.1
      IL_001b:  call       bool SimpleJson.Reflection.ReflectionUtils::IsTypeGeneric(class [System.Runtime]System.Type)
      IL_0020:  brfalse.s  IL_003f

      IL_0022:  ldloc.1
      IL_0023:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Type::GetGenericTypeDefinition()
      IL_0028:  ldtoken    [System.Runtime]System.Collections.Generic.IList`1
      IL_002d:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0032:  bne.un.s   IL_003f

      IL_0034:  ldloc.1
      IL_0035:  call       class [System.Runtime]System.Type[] SimpleJson.Reflection.ReflectionUtils::GetGenericTypeArguments(class [System.Runtime]System.Type)
      IL_003a:  ldc.i4.0
      IL_003b:  ldelem.ref
      IL_003c:  stloc.2
      IL_003d:  leave.s    IL_005c

      IL_003f:  ldloc.0
      IL_0040:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0045:  brtrue.s   IL_0013

      IL_0047:  leave.s    IL_0053

    }  // end .try
    finally
    {
      IL_0049:  ldloc.0
      IL_004a:  brfalse.s  IL_0052

      IL_004c:  ldloc.0
      IL_004d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0052:  endfinally
    }  // end handler
    IL_0053:  ldarg.0
    IL_0054:  call       class [System.Runtime]System.Type[] SimpleJson.Reflection.ReflectionUtils::GetGenericTypeArguments(class [System.Runtime]System.Type)
    IL_0059:  ldc.i4.0
    IL_005a:  ldelem.ref
    IL_005b:  ret

    IL_005c:  ldloc.2
    IL_005d:  ret
  } // end of method ReflectionUtils::GetGenericListElementType

  .method public hidebysig static class [System.Runtime]System.Attribute 
          GetAttribute(class [System.Runtime]System.Type objectType,
                       class [System.Runtime]System.Type attributeType) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_0014

    IL_0003:  ldarg.1
    IL_0004:  brfalse.s  IL_0014

    IL_0006:  ldarg.0
    IL_0007:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_000c:  ldarg.1
    IL_000d:  call       bool [System.Reflection.Extensions]System.Reflection.CustomAttributeExtensions::IsDefined(class [System.Reflection]System.Reflection.MemberInfo,
                                                                                                                   class [System.Runtime]System.Type)
    IL_0012:  brtrue.s   IL_0016

    IL_0014:  ldnull
    IL_0015:  ret

    IL_0016:  ldarg.0
    IL_0017:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_001c:  ldarg.1
    IL_001d:  call       class [System.Runtime]System.Attribute [System.Reflection.Extensions]System.Reflection.CustomAttributeExtensions::GetCustomAttribute(class [System.Reflection]System.Reflection.MemberInfo,
                                                                                                                                                              class [System.Runtime]System.Type)
    IL_0022:  ret
  } // end of method ReflectionUtils::GetAttribute

  .method public hidebysig static class [System.Runtime]System.Type[] 
          GetGenericTypeArguments(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0006:  callvirt   instance class [System.Runtime]System.Type[] [System.Reflection]System.Reflection.TypeInfo::get_GenericTypeArguments()
    IL_000b:  ret
  } // end of method ReflectionUtils::GetGenericTypeArguments

  .method public hidebysig static bool  IsTypeGeneric(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Reflection]System.Reflection.TypeInfo SimpleJson.Reflection.ReflectionUtils::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0006:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsGenericType()
    IL_000b:  ret
  } // end of method ReflectionUtils::IsTypeGeneric

  .method public hidebysig static bool  IsTypeGenericeCollectionInterface(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  2
    .locals init (class [System.Runtime]System.Type V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       bool SimpleJson.Reflection.ReflectionUtils::IsTypeGeneric(class [System.Runtime]System.Type)
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldc.i4.0
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Type::GetGenericTypeDefinition()
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldtoken    [System.Runtime]System.Collections.Generic.IList`1
    IL_0017:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_001c:  beq.s      IL_0039

    IL_001e:  ldloc.0
    IL_001f:  ldtoken    [System.Runtime]System.Collections.Generic.ICollection`1
    IL_0024:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0029:  beq.s      IL_0039

    IL_002b:  ldloc.0
    IL_002c:  ldtoken    [System.Runtime]System.Collections.Generic.IEnumerable`1
    IL_0031:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0036:  ceq
    IL_0038:  ret

    IL_0039:  ldc.i4.1
    IL_003a:  ret
  } // end of method ReflectionUtils::IsTypeGenericeCollectionInterface

  .method public hidebysig static bool  IsAssignableFrom(class [System.Runtime]System.Type type1,
                                                         class [System.Runtime]System.Type type2) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Reflection]System.Reflection.TypeInfo SimpleJson.Reflection.ReflectionUtils::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0006:  ldarg.1
    IL_0007:  call       class [System.Reflection]System.Reflection.TypeInfo SimpleJson.Reflection.ReflectionUtils::GetTypeInfo(class [System.Runtime]System.Type)
    IL_000c:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsAssignableFrom(class [System.Reflection]System.Reflection.TypeInfo)
    IL_0011:  ret
  } // end of method ReflectionUtils::IsAssignableFrom

  .method public hidebysig static bool  IsTypeDictionary(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    IL_0000:  ldtoken    [System.Runtime]System.Collections.Generic.IDictionary`2
    IL_0005:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000a:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_000f:  ldarg.0
    IL_0010:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0015:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsAssignableFrom(class [System.Reflection]System.Reflection.TypeInfo)
    IL_001a:  brfalse.s  IL_001e

    IL_001c:  ldc.i4.1
    IL_001d:  ret

    IL_001e:  ldarg.0
    IL_001f:  call       class [System.Reflection]System.Reflection.TypeInfo SimpleJson.Reflection.ReflectionUtils::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0024:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsGenericType()
    IL_0029:  brtrue.s   IL_002d

    IL_002b:  ldc.i4.0
    IL_002c:  ret

    IL_002d:  ldarg.0
    IL_002e:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Type::GetGenericTypeDefinition()
    IL_0033:  ldtoken    [System.Runtime]System.Collections.Generic.IDictionary`2
    IL_0038:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_003d:  ceq
    IL_003f:  ret
  } // end of method ReflectionUtils::IsTypeDictionary

  .method public hidebysig static bool  IsNullableType(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Reflection]System.Reflection.TypeInfo SimpleJson.Reflection.ReflectionUtils::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0006:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsGenericType()
    IL_000b:  brfalse.s  IL_0020

    IL_000d:  ldarg.0
    IL_000e:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Type::GetGenericTypeDefinition()
    IL_0013:  ldtoken    [System.Runtime]System.Nullable`1
    IL_0018:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_001d:  ceq
    IL_001f:  ret

    IL_0020:  ldc.i4.0
    IL_0021:  ret
  } // end of method ReflectionUtils::IsNullableType

  .method public hidebysig static object 
          ToNullableType(object obj,
                         class [System.Runtime]System.Type nullableType) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_0015

    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  call       class [System.Runtime]System.Type [System.Runtime]System.Nullable::GetUnderlyingType(class [System.Runtime]System.Type)
    IL_000a:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_000f:  call       object [System.Runtime.Extensions]System.Convert::ChangeType(object,
                                                                                      class [System.Runtime]System.Type,
                                                                                      class [System.Runtime]System.IFormatProvider)
    IL_0014:  ret

    IL_0015:  ldnull
    IL_0016:  ret
  } // end of method ReflectionUtils::ToNullableType

  .method public hidebysig static bool  IsValueType(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Reflection]System.Reflection.TypeInfo SimpleJson.Reflection.ReflectionUtils::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0006:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsValueType()
    IL_000b:  ret
  } // end of method ReflectionUtils::IsValueType

  .method public hidebysig static class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.ConstructorInfo> 
          GetConstructors(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0006:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.ConstructorInfo> [System.Reflection]System.Reflection.TypeInfo::get_DeclaredConstructors()
    IL_000b:  ret
  } // end of method ReflectionUtils::GetConstructors

  .method public hidebysig static class [System.Reflection]System.Reflection.ConstructorInfo 
          GetConstructorInfo(class [System.Runtime]System.Type 'type',
                             class [System.Runtime]System.Type[] argsType) cil managed
  {
    .param [2]
    .custom instance void [System.Runtime]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       121 (0x79)
    .maxstack  3
    .locals init (int32 V_0,
             bool V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.ConstructorInfo> V_2,
             class [System.Reflection]System.Reflection.ConstructorInfo V_3,
             class [System.Reflection]System.Reflection.ParameterInfo[] V_4,
             class [System.Reflection]System.Reflection.ParameterInfo[] V_5,
             int32 V_6,
             class [System.Reflection]System.Reflection.ConstructorInfo V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.ConstructorInfo> SimpleJson.Reflection.ReflectionUtils::GetConstructors(class [System.Runtime]System.Type)
    IL_0006:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.ConstructorInfo>::GetEnumerator()
    IL_000b:  stloc.2
    .try
    {
      IL_000c:  br.s       IL_0060

      IL_000e:  ldloc.2
      IL_000f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.ConstructorInfo>::get_Current()
      IL_0014:  stloc.3
      IL_0015:  ldloc.3
      IL_0016:  callvirt   instance class [System.Reflection]System.Reflection.ParameterInfo[] [System.Reflection]System.Reflection.MethodBase::GetParameters()
      IL_001b:  stloc.s    V_4
      IL_001d:  ldarg.1
      IL_001e:  ldlen
      IL_001f:  conv.i4
      IL_0020:  ldloc.s    V_4
      IL_0022:  ldlen
      IL_0023:  conv.i4
      IL_0024:  bne.un.s   IL_0060

      IL_0026:  ldc.i4.0
      IL_0027:  stloc.0
      IL_0028:  ldc.i4.1
      IL_0029:  stloc.1
      IL_002a:  ldloc.3
      IL_002b:  callvirt   instance class [System.Reflection]System.Reflection.ParameterInfo[] [System.Reflection]System.Reflection.MethodBase::GetParameters()
      IL_0030:  stloc.s    V_5
      IL_0032:  ldc.i4.0
      IL_0033:  stloc.s    V_6
      IL_0035:  br.s       IL_0050

      IL_0037:  ldloc.s    V_5
      IL_0039:  ldloc.s    V_6
      IL_003b:  ldelem.ref
      IL_003c:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.ParameterInfo::get_ParameterType()
      IL_0041:  ldarg.1
      IL_0042:  ldloc.0
      IL_0043:  ldelem.ref
      IL_0044:  beq.s      IL_004a

      IL_0046:  ldc.i4.0
      IL_0047:  stloc.1
      IL_0048:  br.s       IL_0058

      IL_004a:  ldloc.s    V_6
      IL_004c:  ldc.i4.1
      IL_004d:  add
      IL_004e:  stloc.s    V_6
      IL_0050:  ldloc.s    V_6
      IL_0052:  ldloc.s    V_5
      IL_0054:  ldlen
      IL_0055:  conv.i4
      IL_0056:  blt.s      IL_0037

      IL_0058:  ldloc.1
      IL_0059:  brfalse.s  IL_0060

      IL_005b:  ldloc.3
      IL_005c:  stloc.s    V_7
      IL_005e:  leave.s    IL_0076

      IL_0060:  ldloc.2
      IL_0061:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0066:  brtrue.s   IL_000e

      IL_0068:  leave.s    IL_0074

    }  // end .try
    finally
    {
      IL_006a:  ldloc.2
      IL_006b:  brfalse.s  IL_0073

      IL_006d:  ldloc.2
      IL_006e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0073:  endfinally
    }  // end handler
    IL_0074:  ldnull
    IL_0075:  ret

    IL_0076:  ldloc.s    V_7
    IL_0078:  ret
  } // end of method ReflectionUtils::GetConstructorInfo

  .method public hidebysig static class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo> 
          GetProperties(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeProperties(class [System.Runtime]System.Type)
    IL_0006:  ret
  } // end of method ReflectionUtils::GetProperties

  .method public hidebysig static class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> 
          GetFields(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
    IL_0006:  ret
  } // end of method ReflectionUtils::GetFields

  .method public hidebysig static class [System.Reflection]System.Reflection.MethodInfo 
          GetGetterMethodInfo(class [System.Reflection]System.Reflection.PropertyInfo propertyInfo) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance class [System.Reflection]System.Reflection.MethodInfo [System.Reflection]System.Reflection.PropertyInfo::get_GetMethod()
    IL_0006:  ret
  } // end of method ReflectionUtils::GetGetterMethodInfo

  .method public hidebysig static class [System.Reflection]System.Reflection.MethodInfo 
          GetSetterMethodInfo(class [System.Reflection]System.Reflection.PropertyInfo propertyInfo) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance class [System.Reflection]System.Reflection.MethodInfo [System.Reflection]System.Reflection.PropertyInfo::get_SetMethod()
    IL_0006:  ret
  } // end of method ReflectionUtils::GetSetterMethodInfo

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate 
          GetContructor(class [System.Reflection]System.Reflection.ConstructorInfo constructorInfo) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate SimpleJson.Reflection.ReflectionUtils::GetConstructorByReflection(class [System.Reflection]System.Reflection.ConstructorInfo)
    IL_0006:  ret
  } // end of method ReflectionUtils::GetContructor

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate 
          GetContructor(class [System.Runtime]System.Type 'type',
                        class [System.Runtime]System.Type[] argsType) cil managed
  {
    .param [2]
    .custom instance void [System.Runtime]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate SimpleJson.Reflection.ReflectionUtils::GetConstructorByReflection(class [System.Runtime]System.Type,
                                                                                                                                                           class [System.Runtime]System.Type[])
    IL_0007:  ret
  } // end of method ReflectionUtils::GetContructor

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate 
          GetConstructorByReflection(class [System.Reflection]System.Reflection.ConstructorInfo constructorInfo) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  newobj     instance void SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass25_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  stfld      class [System.Reflection]System.Reflection.ConstructorInfo SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass25_0'::constructorInfo
    IL_000c:  ldftn      instance object SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass25_0'::'<GetConstructorByReflection>b__0'(object[])
    IL_0012:  newobj     instance void SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate::.ctor(object,
                                                                                                        native int)
    IL_0017:  ret
  } // end of method ReflectionUtils::GetConstructorByReflection

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate 
          GetConstructorByReflection(class [System.Runtime]System.Type 'type',
                                     class [System.Runtime]System.Type[] argsType) cil managed
  {
    .param [2]
    .custom instance void [System.Runtime]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  2
    .locals init (class [System.Reflection]System.Reflection.ConstructorInfo V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       class [System.Reflection]System.Reflection.ConstructorInfo SimpleJson.Reflection.ReflectionUtils::GetConstructorInfo(class [System.Runtime]System.Type,
                                                                                                                                              class [System.Runtime]System.Type[])
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brfalse.s  IL_0012

    IL_000b:  ldloc.0
    IL_000c:  call       class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate SimpleJson.Reflection.ReflectionUtils::GetConstructorByReflection(class [System.Reflection]System.Reflection.ConstructorInfo)
    IL_0011:  ret

    IL_0012:  ldnull
    IL_0013:  ret
  } // end of method ReflectionUtils::GetConstructorByReflection

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/GetDelegate 
          GetGetMethod(class [System.Reflection]System.Reflection.PropertyInfo propertyInfo) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class SimpleJson.Reflection.ReflectionUtils/GetDelegate SimpleJson.Reflection.ReflectionUtils::GetGetMethodByReflection(class [System.Reflection]System.Reflection.PropertyInfo)
    IL_0006:  ret
  } // end of method ReflectionUtils::GetGetMethod

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/GetDelegate 
          GetGetMethod(class [System.Reflection]System.Reflection.FieldInfo fieldInfo) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class SimpleJson.Reflection.ReflectionUtils/GetDelegate SimpleJson.Reflection.ReflectionUtils::GetGetMethodByReflection(class [System.Reflection]System.Reflection.FieldInfo)
    IL_0006:  ret
  } // end of method ReflectionUtils::GetGetMethod

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/GetDelegate 
          GetGetMethodByReflection(class [System.Reflection]System.Reflection.PropertyInfo propertyInfo) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  newobj     instance void SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass29_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  call       class [System.Reflection]System.Reflection.MethodInfo SimpleJson.Reflection.ReflectionUtils::GetGetterMethodInfo(class [System.Reflection]System.Reflection.PropertyInfo)
    IL_000c:  stfld      class [System.Reflection]System.Reflection.MethodInfo SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass29_0'::methodInfo
    IL_0011:  ldftn      instance object SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass29_0'::'<GetGetMethodByReflection>b__0'(object)
    IL_0017:  newobj     instance void SimpleJson.Reflection.ReflectionUtils/GetDelegate::.ctor(object,
                                                                                                native int)
    IL_001c:  ret
  } // end of method ReflectionUtils::GetGetMethodByReflection

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/GetDelegate 
          GetGetMethodByReflection(class [System.Reflection]System.Reflection.FieldInfo fieldInfo) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  newobj     instance void SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass30_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  stfld      class [System.Reflection]System.Reflection.FieldInfo SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass30_0'::fieldInfo
    IL_000c:  ldftn      instance object SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass30_0'::'<GetGetMethodByReflection>b__0'(object)
    IL_0012:  newobj     instance void SimpleJson.Reflection.ReflectionUtils/GetDelegate::.ctor(object,
                                                                                                native int)
    IL_0017:  ret
  } // end of method ReflectionUtils::GetGetMethodByReflection

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/SetDelegate 
          GetSetMethod(class [System.Reflection]System.Reflection.PropertyInfo propertyInfo) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class SimpleJson.Reflection.ReflectionUtils/SetDelegate SimpleJson.Reflection.ReflectionUtils::GetSetMethodByReflection(class [System.Reflection]System.Reflection.PropertyInfo)
    IL_0006:  ret
  } // end of method ReflectionUtils::GetSetMethod

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/SetDelegate 
          GetSetMethod(class [System.Reflection]System.Reflection.FieldInfo fieldInfo) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class SimpleJson.Reflection.ReflectionUtils/SetDelegate SimpleJson.Reflection.ReflectionUtils::GetSetMethodByReflection(class [System.Reflection]System.Reflection.FieldInfo)
    IL_0006:  ret
  } // end of method ReflectionUtils::GetSetMethod

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/SetDelegate 
          GetSetMethodByReflection(class [System.Reflection]System.Reflection.PropertyInfo propertyInfo) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  newobj     instance void SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass33_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  call       class [System.Reflection]System.Reflection.MethodInfo SimpleJson.Reflection.ReflectionUtils::GetSetterMethodInfo(class [System.Reflection]System.Reflection.PropertyInfo)
    IL_000c:  stfld      class [System.Reflection]System.Reflection.MethodInfo SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass33_0'::methodInfo
    IL_0011:  ldftn      instance void SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass33_0'::'<GetSetMethodByReflection>b__0'(object,
                                                                                                                                       object)
    IL_0017:  newobj     instance void SimpleJson.Reflection.ReflectionUtils/SetDelegate::.ctor(object,
                                                                                                native int)
    IL_001c:  ret
  } // end of method ReflectionUtils::GetSetMethodByReflection

  .method public hidebysig static class SimpleJson.Reflection.ReflectionUtils/SetDelegate 
          GetSetMethodByReflection(class [System.Reflection]System.Reflection.FieldInfo fieldInfo) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  newobj     instance void SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass34_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  stfld      class [System.Reflection]System.Reflection.FieldInfo SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass34_0'::fieldInfo
    IL_000c:  ldftn      instance void SimpleJson.Reflection.ReflectionUtils/'<>c__DisplayClass34_0'::'<GetSetMethodByReflection>b__0'(object,
                                                                                                                                       object)
    IL_0012:  newobj     instance void SimpleJson.Reflection.ReflectionUtils/SetDelegate::.ctor(object,
                                                                                                native int)
    IL_0017:  ret
  } // end of method ReflectionUtils::GetSetMethodByReflection

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method ReflectionUtils::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Object
    IL_0006:  stsfld     object[] SimpleJson.Reflection.ReflectionUtils::EmptyObjects
    IL_000b:  ret
  } // end of method ReflectionUtils::.cctor

} // end of class SimpleJson.Reflection.ReflectionUtils