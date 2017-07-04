.class private auto ansi beforefieldinit SimpleJson.JsonObject
       extends [System.Runtime]System.Object
       implements class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>,
                  class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>,
                  class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>,
                  [System.Runtime]System.Collections.IEnumerable
{
  .custom instance void [System.Runtime]System.Reflection.DefaultMemberAttribute::.ctor(string) = ( 01 00 04 49 74 65 6D 00 00 )                      // ...Item..
  .custom instance void [System.Diagnostics.Tools]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                                        string) = ( 01 00 0B 73 69 6D 70 6C 65 2D 6A 73 6F 6E 05 31   // ...simple-json.1
                                                                                                                    2E 30 2E 30 00 00 )                               // .0.0..
  .custom instance void [System.Runtime]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System.Runtime]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
  .field private initonly class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> _members
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::.ctor()
    IL_000c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0011:  ret
  } // end of method JsonObject::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [System.Runtime]System.Collections.Generic.IEqualityComparer`1<string> comparer) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::.ctor(class [System.Runtime]System.Collections.Generic.IEqualityComparer`1<!0>)
    IL_000d:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0012:  ret
  } // end of method JsonObject::.ctor

  .method public hidebysig specialname instance object 
          get_Item(int32 index) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  ldarg.1
    IL_0007:  call       object SimpleJson.JsonObject::GetAtIndex(class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>,
                                                                  int32)
    IL_000c:  ret
  } // end of method JsonObject::get_Item

  .method assembly hidebysig static object 
          GetAtIndex(class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object> obj,
                     int32 index) cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  3
    .locals init (int32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_2,
             object V_3)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "obj"
    IL_0008:  newobj     instance void [System.Runtime]System.ArgumentNullException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.1
    IL_000f:  ldarg.0
    IL_0010:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Count()
    IL_0015:  blt.s      IL_0022

    IL_0017:  ldstr      "index"
    IL_001c:  newobj     instance void [System.Runtime]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0021:  throw

    IL_0022:  ldc.i4.0
    IL_0023:  stloc.0
    IL_0024:  ldarg.0
    IL_0025:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::GetEnumerator()
    IL_002a:  stloc.1
    .try
    {
      IL_002b:  br.s       IL_0046

      IL_002d:  ldloc.1
      IL_002e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_0033:  stloc.2
      IL_0034:  ldloc.0
      IL_0035:  dup
      IL_0036:  ldc.i4.1
      IL_0037:  add
      IL_0038:  stloc.0
      IL_0039:  ldarg.1
      IL_003a:  bne.un.s   IL_0046

      IL_003c:  ldloca.s   V_2
      IL_003e:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_0043:  stloc.3
      IL_0044:  leave.s    IL_005c

      IL_0046:  ldloc.1
      IL_0047:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_004c:  brtrue.s   IL_002d

      IL_004e:  leave.s    IL_005a

    }  // end .try
    finally
    {
      IL_0050:  ldloc.1
      IL_0051:  brfalse.s  IL_0059

      IL_0053:  ldloc.1
      IL_0054:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0059:  endfinally
    }  // end handler
    IL_005a:  ldnull
    IL_005b:  ret

    IL_005c:  ldloc.3
    IL_005d:  ret
  } // end of method JsonObject::GetAtIndex

  .method public hidebysig newslot virtual final 
          instance void  Add(string key,
                             object 'value') cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::Add(!0,
                                                                                                                             !1)
    IL_000d:  ret
  } // end of method JsonObject::Add

  .method public hidebysig newslot virtual final 
          instance bool  ContainsKey(string key) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::ContainsKey(!0)
    IL_000c:  ret
  } // end of method JsonObject::ContainsKey

  .method public hidebysig newslot specialname virtual final 
          instance class [System.Runtime]System.Collections.Generic.ICollection`1<string> 
          get_Keys() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::get_Keys()
    IL_000b:  ret
  } // end of method JsonObject::get_Keys

  .method public hidebysig newslot virtual final 
          instance bool  Remove(string key) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::Remove(!0)
    IL_000c:  ret
  } // end of method JsonObject::Remove

  .method public hidebysig newslot virtual final 
          instance bool  TryGetValue(string key,
                                     [out] object& 'value') cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::TryGetValue(!0,
                                                                                                                                     !1&)
    IL_000d:  ret
  } // end of method JsonObject::TryGetValue

  .method public hidebysig newslot specialname virtual final 
          instance class [System.Runtime]System.Collections.Generic.ICollection`1<object> 
          get_Values() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::get_Values()
    IL_000b:  ret
  } // end of method JsonObject::get_Values

  .method public hidebysig newslot specialname virtual final 
          instance object  get_Item(string key) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::get_Item(!0)
    IL_000c:  ret
  } // end of method JsonObject::get_Item

  .method public hidebysig newslot specialname virtual final 
          instance void  set_Item(string key,
                                  object 'value') cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::set_Item(!0,
                                                                                                                                  !1)
    IL_000d:  ret
  } // end of method JsonObject::set_Item

  .method public hidebysig newslot virtual final 
          instance void  Add(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> item) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  ldarga.s   item
    IL_0008:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
    IL_000d:  ldarga.s   item
    IL_000f:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
    IL_0014:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::Add(!0,
                                                                                                                             !1)
    IL_0019:  ret
  } // end of method JsonObject::Add

  .method public hidebysig newslot virtual final 
          instance void  Clear() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::Clear()
    IL_000b:  ret
  } // end of method JsonObject::Clear

  .method public hidebysig newslot virtual final 
          instance bool  Contains(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> item) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  ldarga.s   item
    IL_0008:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
    IL_000d:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::ContainsKey(!0)
    IL_0012:  brfalse.s  IL_0030

    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_001a:  ldarga.s   item
    IL_001c:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
    IL_0021:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::get_Item(!0)
    IL_0026:  ldarga.s   item
    IL_0028:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
    IL_002d:  ceq
    IL_002f:  ret

    IL_0030:  ldc.i4.0
    IL_0031:  ret
  } // end of method JsonObject::Contains

  .method public hidebysig newslot virtual final 
          instance void  CopyTo(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>[] 'array',
                                int32 arrayIndex) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  4
    .locals init (int32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_2)
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "array"
    IL_0008:  newobj     instance void [System.Runtime]System.ArgumentNullException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.0
    IL_000f:  call       instance int32 SimpleJson.JsonObject::get_Count()
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> SimpleJson.JsonObject::GetEnumerator()
    IL_001b:  stloc.1
    .try
    {
      IL_001c:  br.s       IL_003c

      IL_001e:  ldloc.1
      IL_001f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_0024:  stloc.2
      IL_0025:  ldarg.1
      IL_0026:  ldarg.2
      IL_0027:  dup
      IL_0028:  ldc.i4.1
      IL_0029:  add
      IL_002a:  starg.s    arrayIndex
      IL_002c:  ldloc.2
      IL_002d:  stelem     valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>
      IL_0032:  ldloc.0
      IL_0033:  ldc.i4.1
      IL_0034:  sub
      IL_0035:  dup
      IL_0036:  stloc.0
      IL_0037:  ldc.i4.0
      IL_0038:  bgt.s      IL_003c

      IL_003a:  leave.s    IL_0050

      IL_003c:  ldloc.1
      IL_003d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0042:  brtrue.s   IL_001e

      IL_0044:  leave.s    IL_0050

    }  // end .try
    finally
    {
      IL_0046:  ldloc.1
      IL_0047:  brfalse.s  IL_004f

      IL_0049:  ldloc.1
      IL_004a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004f:  endfinally
    }  // end handler
    IL_0050:  ret
  } // end of method JsonObject::CopyTo

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_Count() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::get_Count()
    IL_000b:  ret
  } // end of method JsonObject::get_Count

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_IsReadOnly() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method JsonObject::get_IsReadOnly

  .method public hidebysig newslot virtual final 
          instance bool  Remove(valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> item) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  ldarga.s   item
    IL_0008:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
    IL_000d:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::Remove(!0)
    IL_0012:  ret
  } // end of method JsonObject::Remove

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> 
          GetEnumerator() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::GetEnumerator()
    IL_000b:  box        valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,object>
    IL_0010:  ret
  } // end of method JsonObject::GetEnumerator

  .method private hidebysig newslot virtual final 
          instance class [System.Runtime]System.Collections.IEnumerator 
          System.Collections.IEnumerable.GetEnumerator() cil managed
  {
    .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,object> SimpleJson.JsonObject::_members
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,object>::GetEnumerator()
    IL_000b:  box        valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,object>
    IL_0010:  ret
  } // end of method JsonObject::System.Collections.IEnumerable.GetEnumerator

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       string SimpleJson.SimpleJson::SerializeObject(object)
    IL_0006:  ret
  } // end of method JsonObject::ToString

  .property instance object Item(int32)
  {
    .get instance object SimpleJson.JsonObject::get_Item(int32)
  } // end of property JsonObject::Item
  .property instance class [System.Runtime]System.Collections.Generic.ICollection`1<string>
          Keys()
  {
    .get instance class [System.Runtime]System.Collections.Generic.ICollection`1<string> SimpleJson.JsonObject::get_Keys()
  } // end of property JsonObject::Keys
  .property instance class [System.Runtime]System.Collections.Generic.ICollection`1<object>
          Values()
  {
    .get instance class [System.Runtime]System.Collections.Generic.ICollection`1<object> SimpleJson.JsonObject::get_Values()
  } // end of property JsonObject::Values
  .property instance object Item(string)
  {
    .get instance object SimpleJson.JsonObject::get_Item(string)
    .set instance void SimpleJson.JsonObject::set_Item(string,
                                                       object)
  } // end of property JsonObject::Item
  .property instance int32 Count()
  {
    .get instance int32 SimpleJson.JsonObject::get_Count()
  } // end of property JsonObject::Count
  .property instance bool IsReadOnly()
  {
    .get instance bool SimpleJson.JsonObject::get_IsReadOnly()
  } // end of property JsonObject::IsReadOnly
} // end of class SimpleJson.JsonObject