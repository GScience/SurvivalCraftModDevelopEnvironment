.class private auto ansi beforefieldinit SimpleJson.PocoJsonSerializerStrategy
       extends [System.Runtime]System.Object
       implements SimpleJson.IJsonSerializerStrategy
{
  .custom instance void [System.Diagnostics.Tools]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                                        string) = ( 01 00 0B 73 69 6D 70 6C 65 2D 6A 73 6F 6E 05 31   // ...simple-json.1
                                                                                                                    2E 30 2E 30 00 00 )                               // .0.0..
  .field assembly class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate> ConstructorCache
  .field assembly class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>> GetCache
  .field assembly class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>> SetCache
  .field static assembly initonly class [System.Runtime]System.Type[] EmptyTypes
  .field static assembly initonly class [System.Runtime]System.Type[] ArrayConstructorParameterTypes
  .field private static initonly string[] Iso8601Format
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.0
    IL_0008:  dup
    IL_0009:  ldvirtftn  instance class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate SimpleJson.PocoJsonSerializerStrategy::ContructorDelegateFactory(class [System.Runtime]System.Type)
    IL_000f:  newobj     instance void class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate>::.ctor(object,
                                                                                                                                                                                                                                native int)
    IL_0014:  newobj     instance void class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate>::.ctor(class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<!0,!1>)
    IL_0019:  stfld      class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate> SimpleJson.PocoJsonSerializerStrategy::ConstructorCache
    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  dup
    IL_0021:  ldvirtftn  instance class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate> SimpleJson.PocoJsonSerializerStrategy::GetterValueFactory(class [System.Runtime]System.Type)
    IL_0027:  newobj     instance void class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>>::.ctor(object,
                                                                                                                                                                                                                                                                                               native int)
    IL_002c:  newobj     instance void class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>>::.ctor(class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<!0,!1>)
    IL_0031:  stfld      class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>> SimpleJson.PocoJsonSerializerStrategy::GetCache
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  dup
    IL_0039:  ldvirtftn  instance class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>> SimpleJson.PocoJsonSerializerStrategy::SetterValueFactory(class [System.Runtime]System.Type)
    IL_003f:  newobj     instance void class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>>::.ctor(object,
                                                                                                                                                                                                                                                                                                                                                                                                      native int)
    IL_0044:  newobj     instance void class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionary`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>>::.ctor(class SimpleJson.Reflection.ReflectionUtils/ThreadSafeDictionaryValueFactory`2<!0,!1>)
    IL_0049:  stfld      class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>> SimpleJson.PocoJsonSerializerStrategy::SetCache
    IL_004e:  ret
  } // end of method PocoJsonSerializerStrategy::.ctor

  .method family hidebysig newslot virtual 
          instance string  MapClrMemberNameToJsonFieldName(string clrPropertyName) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ret
  } // end of method PocoJsonSerializerStrategy::MapClrMemberNameToJsonFieldName

  .method assembly hidebysig newslot strict virtual 
          instance class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate 
          ContructorDelegateFactory(class [System.Runtime]System.Type key) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance bool [System.Runtime]System.Type::get_IsArray()
    IL_0007:  brtrue.s   IL_0010

    IL_0009:  ldsfld     class [System.Runtime]System.Type[] SimpleJson.PocoJsonSerializerStrategy::EmptyTypes
    IL_000e:  br.s       IL_0015

    IL_0010:  ldsfld     class [System.Runtime]System.Type[] SimpleJson.PocoJsonSerializerStrategy::ArrayConstructorParameterTypes
    IL_0015:  call       class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate SimpleJson.Reflection.ReflectionUtils::GetContructor(class [System.Runtime]System.Type,
                                                                                                                                              class [System.Runtime]System.Type[])
    IL_001a:  ret
  } // end of method PocoJsonSerializerStrategy::ContructorDelegateFactory

  .method assembly hidebysig newslot strict virtual 
          instance class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate> 
          GetterValueFactory(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       195 (0xc3)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate> V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.PropertyInfo> V_1,
             class [System.Reflection]System.Reflection.PropertyInfo V_2,
             class [System.Reflection]System.Reflection.MethodInfo V_3,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> V_4,
             class [System.Reflection]System.Reflection.FieldInfo V_5)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo> SimpleJson.Reflection.ReflectionUtils::GetProperties(class [System.Runtime]System.Type)
    IL_000c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo>::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br.s       IL_0052

      IL_0014:  ldloc.1
      IL_0015:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.PropertyInfo>::get_Current()
      IL_001a:  stloc.2
      IL_001b:  ldloc.2
      IL_001c:  callvirt   instance bool [System.Reflection]System.Reflection.PropertyInfo::get_CanRead()
      IL_0021:  brfalse.s  IL_0052

      IL_0023:  ldloc.2
      IL_0024:  call       class [System.Reflection]System.Reflection.MethodInfo SimpleJson.Reflection.ReflectionUtils::GetGetterMethodInfo(class [System.Reflection]System.Reflection.PropertyInfo)
      IL_0029:  stloc.3
      IL_002a:  ldloc.3
      IL_002b:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsStatic()
      IL_0030:  brtrue.s   IL_0052

      IL_0032:  ldloc.3
      IL_0033:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsPublic()
      IL_0038:  brfalse.s  IL_0052

      IL_003a:  ldloc.0
      IL_003b:  ldarg.0
      IL_003c:  ldloc.2
      IL_003d:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0042:  callvirt   instance string SimpleJson.PocoJsonSerializerStrategy::MapClrMemberNameToJsonFieldName(string)
      IL_0047:  ldloc.2
      IL_0048:  call       class SimpleJson.Reflection.ReflectionUtils/GetDelegate SimpleJson.Reflection.ReflectionUtils::GetGetMethod(class [System.Reflection]System.Reflection.PropertyInfo)
      IL_004d:  callvirt   instance void class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>::set_Item(!0,
                                                                                                                                                                                  !1)
      IL_0052:  ldloc.1
      IL_0053:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0058:  brtrue.s   IL_0014

      IL_005a:  leave.s    IL_0066

    }  // end .try
    finally
    {
      IL_005c:  ldloc.1
      IL_005d:  brfalse.s  IL_0065

      IL_005f:  ldloc.1
      IL_0060:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0065:  endfinally
    }  // end handler
    IL_0066:  ldarg.1
    IL_0067:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> SimpleJson.Reflection.ReflectionUtils::GetFields(class [System.Runtime]System.Type)
    IL_006c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
    IL_0071:  stloc.s    V_4
    .try
    {
      IL_0073:  br.s       IL_00aa

      IL_0075:  ldloc.s    V_4
      IL_0077:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      IL_007c:  stloc.s    V_5
      IL_007e:  ldloc.s    V_5
      IL_0080:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_0085:  brtrue.s   IL_00aa

      IL_0087:  ldloc.s    V_5
      IL_0089:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_008e:  brfalse.s  IL_00aa

      IL_0090:  ldloc.0
      IL_0091:  ldarg.0
      IL_0092:  ldloc.s    V_5
      IL_0094:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0099:  callvirt   instance string SimpleJson.PocoJsonSerializerStrategy::MapClrMemberNameToJsonFieldName(string)
      IL_009e:  ldloc.s    V_5
      IL_00a0:  call       class SimpleJson.Reflection.ReflectionUtils/GetDelegate SimpleJson.Reflection.ReflectionUtils::GetGetMethod(class [System.Reflection]System.Reflection.FieldInfo)
      IL_00a5:  callvirt   instance void class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>::set_Item(!0,
                                                                                                                                                                                  !1)
      IL_00aa:  ldloc.s    V_4
      IL_00ac:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00b1:  brtrue.s   IL_0075

      IL_00b3:  leave.s    IL_00c1

    }  // end .try
    finally
    {
      IL_00b5:  ldloc.s    V_4
      IL_00b7:  brfalse.s  IL_00c0

      IL_00b9:  ldloc.s    V_4
      IL_00bb:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c0:  endfinally
    }  // end handler
    IL_00c1:  ldloc.0
    IL_00c2:  ret
  } // end of method PocoJsonSerializerStrategy::GetterValueFactory

  .method assembly hidebysig newslot strict virtual 
          instance class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>> 
          SetterValueFactory(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       227 (0xe3)
    .maxstack  4
    .locals init (class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>> V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.PropertyInfo> V_1,
             class [System.Reflection]System.Reflection.PropertyInfo V_2,
             class [System.Reflection]System.Reflection.MethodInfo V_3,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> V_4,
             class [System.Reflection]System.Reflection.FieldInfo V_5)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo> SimpleJson.Reflection.ReflectionUtils::GetProperties(class [System.Runtime]System.Type)
    IL_000c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo>::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br.s       IL_005d

      IL_0014:  ldloc.1
      IL_0015:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.PropertyInfo>::get_Current()
      IL_001a:  stloc.2
      IL_001b:  ldloc.2
      IL_001c:  callvirt   instance bool [System.Reflection]System.Reflection.PropertyInfo::get_CanWrite()
      IL_0021:  brfalse.s  IL_005d

      IL_0023:  ldloc.2
      IL_0024:  call       class [System.Reflection]System.Reflection.MethodInfo SimpleJson.Reflection.ReflectionUtils::GetSetterMethodInfo(class [System.Reflection]System.Reflection.PropertyInfo)
      IL_0029:  stloc.3
      IL_002a:  ldloc.3
      IL_002b:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsStatic()
      IL_0030:  brtrue.s   IL_005d

      IL_0032:  ldloc.3
      IL_0033:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsPublic()
      IL_0038:  brfalse.s  IL_005d

      IL_003a:  ldloc.0
      IL_003b:  ldarg.0
      IL_003c:  ldloc.2
      IL_003d:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0042:  callvirt   instance string SimpleJson.PocoJsonSerializerStrategy::MapClrMemberNameToJsonFieldName(string)
      IL_0047:  ldloc.2
      IL_0048:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.PropertyInfo::get_PropertyType()
      IL_004d:  ldloc.2
      IL_004e:  call       class SimpleJson.Reflection.ReflectionUtils/SetDelegate SimpleJson.Reflection.ReflectionUtils::GetSetMethod(class [System.Reflection]System.Reflection.PropertyInfo)
      IL_0053:  newobj     instance void valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>::.ctor(!0,
                                                                                                                                                                                                               !1)
      IL_0058:  callvirt   instance void class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>::set_Item(!0,
                                                                                                                                                                                                                                                                                         !1)
      IL_005d:  ldloc.1
      IL_005e:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0063:  brtrue.s   IL_0014

      IL_0065:  leave.s    IL_0071

    }  // end .try
    finally
    {
      IL_0067:  ldloc.1
      IL_0068:  brfalse.s  IL_0070

      IL_006a:  ldloc.1
      IL_006b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0070:  endfinally
    }  // end handler
    IL_0071:  ldarg.1
    IL_0072:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> SimpleJson.Reflection.ReflectionUtils::GetFields(class [System.Runtime]System.Type)
    IL_0077:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
    IL_007c:  stloc.s    V_4
    .try
    {
      IL_007e:  br.s       IL_00ca

      IL_0080:  ldloc.s    V_4
      IL_0082:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      IL_0087:  stloc.s    V_5
      IL_0089:  ldloc.s    V_5
      IL_008b:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsInitOnly()
      IL_0090:  brtrue.s   IL_00ca

      IL_0092:  ldloc.s    V_5
      IL_0094:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_0099:  brtrue.s   IL_00ca

      IL_009b:  ldloc.s    V_5
      IL_009d:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_00a2:  brfalse.s  IL_00ca

      IL_00a4:  ldloc.0
      IL_00a5:  ldarg.0
      IL_00a6:  ldloc.s    V_5
      IL_00a8:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_00ad:  callvirt   instance string SimpleJson.PocoJsonSerializerStrategy::MapClrMemberNameToJsonFieldName(string)
      IL_00b2:  ldloc.s    V_5
      IL_00b4:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
      IL_00b9:  ldloc.s    V_5
      IL_00bb:  call       class SimpleJson.Reflection.ReflectionUtils/SetDelegate SimpleJson.Reflection.ReflectionUtils::GetSetMethod(class [System.Reflection]System.Reflection.FieldInfo)
      IL_00c0:  newobj     instance void valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>::.ctor(!0,
                                                                                                                                                                                                               !1)
      IL_00c5:  callvirt   instance void class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>::set_Item(!0,
                                                                                                                                                                                                                                                                                         !1)
      IL_00ca:  ldloc.s    V_4
      IL_00cc:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00d1:  brtrue.s   IL_0080

      IL_00d3:  leave.s    IL_00e1

    }  // end .try
    finally
    {
      IL_00d5:  ldloc.s    V_4
      IL_00d7:  brfalse.s  IL_00e0

      IL_00d9:  ldloc.s    V_4
      IL_00db:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e0:  endfinally
    }  // end handler
    IL_00e1:  ldloc.0
    IL_00e2:  ret
  } // end of method PocoJsonSerializerStrategy::SetterValueFactory

  .method public hidebysig newslot virtual 
          instance bool  TrySerializeNonPrimitiveObject(object input,
                                                        [out] object& output) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  callvirt   instance bool SimpleJson.PocoJsonSerializerStrategy::TrySerializeKnownTypes(object,
                                                                                                     object&)
    IL_0008:  brtrue.s   IL_0013

    IL_000a:  ldarg.0
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  callvirt   instance bool SimpleJson.PocoJsonSerializerStrategy::TrySerializeUnknownTypes(object,
                                                                                                       object&)
    IL_0012:  ret

    IL_0013:  ldc.i4.1
    IL_0014:  ret
  } // end of method PocoJsonSerializerStrategy::TrySerializeNonPrimitiveObject

  .method public hidebysig newslot virtual 
          instance object  DeserializeObject(object 'value',
                                             class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       1356 (0x54c)
    .maxstack  6
    .locals init (string V_0,
             object V_1,
             bool V_2,
             bool V_3,
             valuetype [System.Runtime]System.Guid V_4,
             class [System.Runtime]System.Uri V_5,
             class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object> V_6,
             class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object> V_7,
             class [System.Runtime]System.Type V_8,
             class [System.Runtime]System.Type V_9,
             class [System.Runtime]System.Type V_10,
             class [System.Runtime]System.Collections.IDictionary V_11,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_12,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_13,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>> V_14,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>> V_15,
             object V_16,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate> V_17,
             class [System.Runtime]System.Collections.Generic.IList`1<object> V_18,
             class [System.Runtime]System.Collections.Generic.IList`1<object> V_19,
             class [System.Runtime]System.Collections.IList V_20,
             int32 V_21,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<object> V_22,
             object V_23,
             class [System.Runtime]System.Type V_24,
             object V_25)
    IL_0000:  ldarg.2
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "type"
    IL_0008:  newobj     instance void [System.Runtime]System.ArgumentNullException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.1
    IL_000f:  isinst     [System.Runtime]System.String
    IL_0014:  stloc.0
    IL_0015:  ldarg.2
    IL_0016:  ldtoken    [System.Runtime]System.Guid
    IL_001b:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0020:  bne.un.s   IL_003a

    IL_0022:  ldloc.0
    IL_0023:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0028:  brfalse.s  IL_003a

    IL_002a:  ldloca.s   V_4
    IL_002c:  initobj    [System.Runtime]System.Guid
    IL_0032:  ldloc.s    V_4
    IL_0034:  box        [System.Runtime]System.Guid
    IL_0039:  ret

    IL_003a:  ldarg.1
    IL_003b:  brtrue.s   IL_003f

    IL_003d:  ldnull
    IL_003e:  ret

    IL_003f:  ldnull
    IL_0040:  stloc.1
    IL_0041:  ldloc.0
    IL_0042:  brfalse    IL_01a0

    IL_0047:  ldloc.0
    IL_0048:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_004d:  brfalse    IL_0145

    IL_0052:  ldarg.2
    IL_0053:  ldtoken    [System.Runtime]System.DateTime
    IL_0058:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_005d:  beq.s      IL_0079

    IL_005f:  ldarg.2
    IL_0060:  call       bool SimpleJson.Reflection.ReflectionUtils::IsNullableType(class [System.Runtime]System.Type)
    IL_0065:  brfalse.s  IL_0091

    IL_0067:  ldarg.2
    IL_0068:  call       class [System.Runtime]System.Type [System.Runtime]System.Nullable::GetUnderlyingType(class [System.Runtime]System.Type)
    IL_006d:  ldtoken    [System.Runtime]System.DateTime
    IL_0072:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0077:  bne.un.s   IL_0091

    IL_0079:  ldloc.0
    IL_007a:  ldsfld     string[] SimpleJson.PocoJsonSerializerStrategy::Iso8601Format
    IL_007f:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0084:  ldc.i4.s   80
    IL_0086:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::ParseExact(string,
                                                                                                               string[],
                                                                                                               class [System.Runtime]System.IFormatProvider,
                                                                                                               valuetype [System.Runtime]System.Globalization.DateTimeStyles)
    IL_008b:  box        [System.Runtime]System.DateTime
    IL_0090:  ret

    IL_0091:  ldarg.2
    IL_0092:  ldtoken    [System.Runtime]System.DateTimeOffset
    IL_0097:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_009c:  beq.s      IL_00b8

    IL_009e:  ldarg.2
    IL_009f:  call       bool SimpleJson.Reflection.ReflectionUtils::IsNullableType(class [System.Runtime]System.Type)
    IL_00a4:  brfalse.s  IL_00d0

    IL_00a6:  ldarg.2
    IL_00a7:  call       class [System.Runtime]System.Type [System.Runtime]System.Nullable::GetUnderlyingType(class [System.Runtime]System.Type)
    IL_00ac:  ldtoken    [System.Runtime]System.DateTimeOffset
    IL_00b1:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00b6:  bne.un.s   IL_00d0

    IL_00b8:  ldloc.0
    IL_00b9:  ldsfld     string[] SimpleJson.PocoJsonSerializerStrategy::Iso8601Format
    IL_00be:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_00c3:  ldc.i4.s   80
    IL_00c5:  call       valuetype [System.Runtime]System.DateTimeOffset [System.Runtime]System.DateTimeOffset::ParseExact(string,
                                                                                                                           string[],
                                                                                                                           class [System.Runtime]System.IFormatProvider,
                                                                                                                           valuetype [System.Runtime]System.Globalization.DateTimeStyles)
    IL_00ca:  box        [System.Runtime]System.DateTimeOffset
    IL_00cf:  ret

    IL_00d0:  ldarg.2
    IL_00d1:  ldtoken    [System.Runtime]System.Guid
    IL_00d6:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00db:  beq.s      IL_00f7

    IL_00dd:  ldarg.2
    IL_00de:  call       bool SimpleJson.Reflection.ReflectionUtils::IsNullableType(class [System.Runtime]System.Type)
    IL_00e3:  brfalse.s  IL_0103

    IL_00e5:  ldarg.2
    IL_00e6:  call       class [System.Runtime]System.Type [System.Runtime]System.Nullable::GetUnderlyingType(class [System.Runtime]System.Type)
    IL_00eb:  ldtoken    [System.Runtime]System.Guid
    IL_00f0:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00f5:  bne.un.s   IL_0103

    IL_00f7:  ldloc.0
    IL_00f8:  newobj     instance void [System.Runtime]System.Guid::.ctor(string)
    IL_00fd:  box        [System.Runtime]System.Guid
    IL_0102:  ret

    IL_0103:  ldarg.2
    IL_0104:  ldtoken    [System.Runtime]System.Uri
    IL_0109:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_010e:  bne.un.s   IL_0129

    IL_0110:  ldloc.0
    IL_0111:  ldc.i4.0
    IL_0112:  call       bool [System.Runtime]System.Uri::IsWellFormedUriString(string,
                                                                                valuetype [System.Runtime]System.UriKind)
    IL_0117:  brfalse.s  IL_0127

    IL_0119:  ldloc.0
    IL_011a:  ldc.i4.0
    IL_011b:  ldloca.s   V_5
    IL_011d:  call       bool [System.Runtime]System.Uri::TryCreate(string,
                                                                    valuetype [System.Runtime]System.UriKind,
                                                                    class [System.Runtime]System.Uri&)
    IL_0122:  brfalse.s  IL_0127

    IL_0124:  ldloc.s    V_5
    IL_0126:  ret

    IL_0127:  ldnull
    IL_0128:  ret

    IL_0129:  ldarg.2
    IL_012a:  ldtoken    [System.Runtime]System.String
    IL_012f:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0134:  bne.un.s   IL_0138

    IL_0136:  ldloc.0
    IL_0137:  ret

    IL_0138:  ldloc.0
    IL_0139:  ldarg.2
    IL_013a:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_013f:  call       object [System.Runtime.Extensions]System.Convert::ChangeType(object,
                                                                                      class [System.Runtime]System.Type,
                                                                                      class [System.Runtime]System.IFormatProvider)
    IL_0144:  ret

    IL_0145:  ldarg.2
    IL_0146:  ldtoken    [System.Runtime]System.Guid
    IL_014b:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0150:  bne.un.s   IL_0164

    IL_0152:  ldloca.s   V_4
    IL_0154:  initobj    [System.Runtime]System.Guid
    IL_015a:  ldloc.s    V_4
    IL_015c:  box        [System.Runtime]System.Guid
    IL_0161:  stloc.1
    IL_0162:  br.s       IL_0184

    IL_0164:  ldarg.2
    IL_0165:  call       bool SimpleJson.Reflection.ReflectionUtils::IsNullableType(class [System.Runtime]System.Type)
    IL_016a:  brfalse.s  IL_0182

    IL_016c:  ldarg.2
    IL_016d:  call       class [System.Runtime]System.Type [System.Runtime]System.Nullable::GetUnderlyingType(class [System.Runtime]System.Type)
    IL_0172:  ldtoken    [System.Runtime]System.Guid
    IL_0177:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_017c:  bne.un.s   IL_0182

    IL_017e:  ldnull
    IL_017f:  stloc.1
    IL_0180:  br.s       IL_0184

    IL_0182:  ldloc.0
    IL_0183:  stloc.1
    IL_0184:  ldarg.2
    IL_0185:  call       bool SimpleJson.Reflection.ReflectionUtils::IsNullableType(class [System.Runtime]System.Type)
    IL_018a:  brtrue.s   IL_01aa

    IL_018c:  ldarg.2
    IL_018d:  call       class [System.Runtime]System.Type [System.Runtime]System.Nullable::GetUnderlyingType(class [System.Runtime]System.Type)
    IL_0192:  ldtoken    [System.Runtime]System.Guid
    IL_0197:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_019c:  bne.un.s   IL_01aa

    IL_019e:  ldloc.0
    IL_019f:  ret

    IL_01a0:  ldarg.1
    IL_01a1:  isinst     [System.Runtime]System.Boolean
    IL_01a6:  brfalse.s  IL_01aa

    IL_01a8:  ldarg.1
    IL_01a9:  ret

    IL_01aa:  ldarg.1
    IL_01ab:  isinst     [System.Runtime]System.Int64
    IL_01b0:  ldnull
    IL_01b1:  cgt.un
    IL_01b3:  stloc.2
    IL_01b4:  ldarg.1
    IL_01b5:  isinst     [System.Runtime]System.Double
    IL_01ba:  ldnull
    IL_01bb:  cgt.un
    IL_01bd:  stloc.3
    IL_01be:  ldloc.2
    IL_01bf:  brfalse.s  IL_01ce

    IL_01c1:  ldarg.2
    IL_01c2:  ldtoken    [System.Runtime]System.Int64
    IL_01c7:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_01cc:  beq.s      IL_01de

    IL_01ce:  ldloc.3
    IL_01cf:  brfalse.s  IL_01e0

    IL_01d1:  ldarg.2
    IL_01d2:  ldtoken    [System.Runtime]System.Double
    IL_01d7:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_01dc:  bne.un.s   IL_01e0

    IL_01de:  ldarg.1
    IL_01df:  ret

    IL_01e0:  ldloc.3
    IL_01e1:  brfalse.s  IL_01f0

    IL_01e3:  ldarg.2
    IL_01e4:  ldtoken    [System.Runtime]System.Double
    IL_01e9:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_01ee:  bne.un.s   IL_0203

    IL_01f0:  ldloc.2
    IL_01f1:  brfalse    IL_0280

    IL_01f6:  ldarg.2
    IL_01f7:  ldtoken    [System.Runtime]System.Int64
    IL_01fc:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0201:  beq.s      IL_0280

    IL_0203:  ldarg.2
    IL_0204:  ldtoken    [System.Runtime]System.Int32
    IL_0209:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_020e:  beq.s      IL_026e

    IL_0210:  ldarg.2
    IL_0211:  ldtoken    [System.Runtime]System.Int64
    IL_0216:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_021b:  beq.s      IL_026e

    IL_021d:  ldarg.2
    IL_021e:  ldtoken    [System.Runtime]System.Double
    IL_0223:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0228:  beq.s      IL_026e

    IL_022a:  ldarg.2
    IL_022b:  ldtoken    [System.Runtime]System.Single
    IL_0230:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0235:  beq.s      IL_026e

    IL_0237:  ldarg.2
    IL_0238:  ldtoken    [System.Runtime]System.Boolean
    IL_023d:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0242:  beq.s      IL_026e

    IL_0244:  ldarg.2
    IL_0245:  ldtoken    [System.Runtime]System.Decimal
    IL_024a:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_024f:  beq.s      IL_026e

    IL_0251:  ldarg.2
    IL_0252:  ldtoken    [System.Runtime]System.Byte
    IL_0257:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_025c:  beq.s      IL_026e

    IL_025e:  ldarg.2
    IL_025f:  ldtoken    [System.Runtime]System.Int16
    IL_0264:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0269:  beq.s      IL_026e

    IL_026b:  ldarg.1
    IL_026c:  br.s       IL_027a

    IL_026e:  ldarg.1
    IL_026f:  ldarg.2
    IL_0270:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0275:  call       object [System.Runtime.Extensions]System.Convert::ChangeType(object,
                                                                                      class [System.Runtime]System.Type,
                                                                                      class [System.Runtime]System.IFormatProvider)
    IL_027a:  stloc.1
    IL_027b:  br         IL_053a

    IL_0280:  ldarg.1
    IL_0281:  isinst     class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>
    IL_0286:  stloc.s    V_6
    IL_0288:  ldloc.s    V_6
    IL_028a:  brfalse    IL_03e5

    IL_028f:  ldloc.s    V_6
    IL_0291:  stloc.s    V_7
    IL_0293:  ldarg.2
    IL_0294:  call       bool SimpleJson.Reflection.ReflectionUtils::IsTypeDictionary(class [System.Runtime]System.Type)
    IL_0299:  brfalse    IL_033d

    IL_029e:  ldarg.2
    IL_029f:  call       class [System.Runtime]System.Type[] SimpleJson.Reflection.ReflectionUtils::GetGenericTypeArguments(class [System.Runtime]System.Type)
    IL_02a4:  dup
    IL_02a5:  ldc.i4.0
    IL_02a6:  ldelem.ref
    IL_02a7:  stloc.s    V_8
    IL_02a9:  ldc.i4.1
    IL_02aa:  ldelem.ref
    IL_02ab:  stloc.s    V_9
    IL_02ad:  ldtoken    [System.Collections]System.Collections.Generic.Dictionary`2
    IL_02b2:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_02b7:  ldc.i4.2
    IL_02b8:  newarr     [System.Runtime]System.Type
    IL_02bd:  dup
    IL_02be:  ldc.i4.0
    IL_02bf:  ldloc.s    V_8
    IL_02c1:  stelem.ref
    IL_02c2:  dup
    IL_02c3:  ldc.i4.1
    IL_02c4:  ldloc.s    V_9
    IL_02c6:  stelem.ref
    IL_02c7:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Type::MakeGenericType(class [System.Runtime]System.Type[])
    IL_02cc:  stloc.s    V_10
    IL_02ce:  ldarg.0
    IL_02cf:  ldfld      class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate> SimpleJson.PocoJsonSerializerStrategy::ConstructorCache
    IL_02d4:  ldloc.s    V_10
    IL_02d6:  callvirt   instance !1 class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate>::get_Item(!0)
    IL_02db:  ldc.i4.0
    IL_02dc:  newarr     [System.Runtime]System.Object
    IL_02e1:  callvirt   instance object SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate::Invoke(object[])
    IL_02e6:  castclass  [System.Runtime]System.Collections.IDictionary
    IL_02eb:  stloc.s    V_11
    IL_02ed:  ldloc.s    V_7
    IL_02ef:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::GetEnumerator()
    IL_02f4:  stloc.s    V_12
    .try
    {
      IL_02f6:  br.s       IL_031e

      IL_02f8:  ldloc.s    V_12
      IL_02fa:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_02ff:  stloc.s    V_13
      IL_0301:  ldloc.s    V_11
      IL_0303:  ldloca.s   V_13
      IL_0305:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_030a:  ldarg.0
      IL_030b:  ldloca.s   V_13
      IL_030d:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_0312:  ldloc.s    V_9
      IL_0314:  callvirt   instance object SimpleJson.PocoJsonSerializerStrategy::DeserializeObject(object,
                                                                                                    class [System.Runtime]System.Type)
      IL_0319:  callvirt   instance void [System.Runtime]System.Collections.IDictionary::Add(object,
                                                                                             object)
      IL_031e:  ldloc.s    V_12
      IL_0320:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0325:  brtrue.s   IL_02f8

      IL_0327:  leave.s    IL_0335

    }  // end .try
    finally
    {
      IL_0329:  ldloc.s    V_12
      IL_032b:  brfalse.s  IL_0334

      IL_032d:  ldloc.s    V_12
      IL_032f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0334:  endfinally
    }  // end handler
    IL_0335:  ldloc.s    V_11
    IL_0337:  stloc.1
    IL_0338:  br         IL_0538

    IL_033d:  ldarg.2
    IL_033e:  ldtoken    [System.Runtime]System.Object
    IL_0343:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0348:  bne.un.s   IL_0351

    IL_034a:  ldarg.1
    IL_034b:  stloc.1
    IL_034c:  br         IL_0538

    IL_0351:  ldarg.0
    IL_0352:  ldfld      class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate> SimpleJson.PocoJsonSerializerStrategy::ConstructorCache
    IL_0357:  ldarg.2
    IL_0358:  callvirt   instance !1 class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate>::get_Item(!0)
    IL_035d:  ldc.i4.0
    IL_035e:  newarr     [System.Runtime]System.Object
    IL_0363:  callvirt   instance object SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate::Invoke(object[])
    IL_0368:  stloc.1
    IL_0369:  ldarg.0
    IL_036a:  ldfld      class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>> SimpleJson.PocoJsonSerializerStrategy::SetCache
    IL_036f:  ldarg.2
    IL_0370:  callvirt   instance !1 class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>>::get_Item(!0)
    IL_0375:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>>::GetEnumerator()
    IL_037a:  stloc.s    V_14
    .try
    {
      IL_037c:  br.s       IL_03cb

      IL_037e:  ldloc.s    V_14
      IL_0380:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>>::get_Current()
      IL_0385:  stloc.s    V_15
      IL_0387:  ldloc.s    V_7
      IL_0389:  ldloca.s   V_15
      IL_038b:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>::get_Key()
      IL_0390:  ldloca.s   V_16
      IL_0392:  callvirt   instance bool class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>::TryGetValue(!0,
                                                                                                                                    !1&)
      IL_0397:  brfalse.s  IL_03cb

      IL_0399:  ldarg.0
      IL_039a:  ldloc.s    V_16
      IL_039c:  ldloca.s   V_15
      IL_039e:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>::get_Value()
      IL_03a3:  stloc.s    V_17
      IL_03a5:  ldloca.s   V_17
      IL_03a7:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>::get_Key()
      IL_03ac:  callvirt   instance object SimpleJson.PocoJsonSerializerStrategy::DeserializeObject(object,
                                                                                                    class [System.Runtime]System.Type)
      IL_03b1:  stloc.s    V_16
      IL_03b3:  ldloca.s   V_15
      IL_03b5:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>>::get_Value()
      IL_03ba:  stloc.s    V_17
      IL_03bc:  ldloca.s   V_17
      IL_03be:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/SetDelegate>::get_Value()
      IL_03c3:  ldloc.1
      IL_03c4:  ldloc.s    V_16
      IL_03c6:  callvirt   instance void SimpleJson.Reflection.ReflectionUtils/SetDelegate::Invoke(object,
                                                                                                   object)
      IL_03cb:  ldloc.s    V_14
      IL_03cd:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_03d2:  brtrue.s   IL_037e

      IL_03d4:  leave      IL_0538

    }  // end .try
    finally
    {
      IL_03d9:  ldloc.s    V_14
      IL_03db:  brfalse.s  IL_03e4

      IL_03dd:  ldloc.s    V_14
      IL_03df:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_03e4:  endfinally
    }  // end handler
    IL_03e5:  ldarg.1
    IL_03e6:  isinst     class [System.Runtime]System.Collections.Generic.IList`1<object>
    IL_03eb:  stloc.s    V_18
    IL_03ed:  ldloc.s    V_18
    IL_03ef:  brfalse    IL_0538

    IL_03f4:  ldloc.s    V_18
    IL_03f6:  stloc.s    V_19
    IL_03f8:  ldnull
    IL_03f9:  stloc.s    V_20
    IL_03fb:  ldarg.2
    IL_03fc:  callvirt   instance bool [System.Runtime]System.Type::get_IsArray()
    IL_0401:  brfalse.s  IL_047d

    IL_0403:  ldarg.0
    IL_0404:  ldfld      class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate> SimpleJson.PocoJsonSerializerStrategy::ConstructorCache
    IL_0409:  ldarg.2
    IL_040a:  callvirt   instance !1 class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate>::get_Item(!0)
    IL_040f:  ldc.i4.1
    IL_0410:  newarr     [System.Runtime]System.Object
    IL_0415:  dup
    IL_0416:  ldc.i4.0
    IL_0417:  ldloc.s    V_19
    IL_0419:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<object>::get_Count()
    IL_041e:  box        [System.Runtime]System.Int32
    IL_0423:  stelem.ref
    IL_0424:  callvirt   instance object SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate::Invoke(object[])
    IL_0429:  castclass  [System.Runtime]System.Collections.IList
    IL_042e:  stloc.s    V_20
    IL_0430:  ldc.i4.0
    IL_0431:  stloc.s    V_21
    IL_0433:  ldloc.s    V_19
    IL_0435:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_043a:  stloc.s    V_22
    .try
    {
      IL_043c:  br.s       IL_0463

      IL_043e:  ldloc.s    V_22
      IL_0440:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_0445:  stloc.s    V_23
      IL_0447:  ldloc.s    V_20
      IL_0449:  ldloc.s    V_21
      IL_044b:  dup
      IL_044c:  ldc.i4.1
      IL_044d:  add
      IL_044e:  stloc.s    V_21
      IL_0450:  ldarg.0
      IL_0451:  ldloc.s    V_23
      IL_0453:  ldarg.2
      IL_0454:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Type::GetElementType()
      IL_0459:  callvirt   instance object SimpleJson.PocoJsonSerializerStrategy::DeserializeObject(object,
                                                                                                    class [System.Runtime]System.Type)
      IL_045e:  callvirt   instance void [System.Runtime]System.Collections.IList::set_Item(int32,
                                                                                            object)
      IL_0463:  ldloc.s    V_22
      IL_0465:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_046a:  brtrue.s   IL_043e

      IL_046c:  leave      IL_0535

    }  // end .try
    finally
    {
      IL_0471:  ldloc.s    V_22
      IL_0473:  brfalse.s  IL_047c

      IL_0475:  ldloc.s    V_22
      IL_0477:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_047c:  endfinally
    }  // end handler
    IL_047d:  ldarg.2
    IL_047e:  call       bool SimpleJson.Reflection.ReflectionUtils::IsTypeGenericeCollectionInterface(class [System.Runtime]System.Type)
    IL_0483:  brtrue.s   IL_049a

    IL_0485:  ldtoken    [System.Runtime]System.Collections.IList
    IL_048a:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_048f:  ldarg.2
    IL_0490:  call       bool SimpleJson.Reflection.ReflectionUtils::IsAssignableFrom(class [System.Runtime]System.Type,
                                                                                      class [System.Runtime]System.Type)
    IL_0495:  brfalse    IL_0535

    IL_049a:  ldarg.2
    IL_049b:  call       class [System.Runtime]System.Type SimpleJson.Reflection.ReflectionUtils::GetGenericListElementType(class [System.Runtime]System.Type)
    IL_04a0:  stloc.s    V_24
    IL_04a2:  ldarg.0
    IL_04a3:  ldfld      class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate> SimpleJson.PocoJsonSerializerStrategy::ConstructorCache
    IL_04a8:  ldarg.2
    IL_04a9:  callvirt   instance !1 class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate>::get_Item(!0)
    IL_04ae:  dup
    IL_04af:  brtrue.s   IL_04d7

    IL_04b1:  pop
    IL_04b2:  ldarg.0
    IL_04b3:  ldfld      class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate> SimpleJson.PocoJsonSerializerStrategy::ConstructorCache
    IL_04b8:  ldtoken    [System.Collections]System.Collections.Generic.List`1
    IL_04bd:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_04c2:  ldc.i4.1
    IL_04c3:  newarr     [System.Runtime]System.Type
    IL_04c8:  dup
    IL_04c9:  ldc.i4.0
    IL_04ca:  ldloc.s    V_24
    IL_04cc:  stelem.ref
    IL_04cd:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Type::MakeGenericType(class [System.Runtime]System.Type[])
    IL_04d2:  callvirt   instance !1 class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate>::get_Item(!0)
    IL_04d7:  ldc.i4.1
    IL_04d8:  newarr     [System.Runtime]System.Object
    IL_04dd:  dup
    IL_04de:  ldc.i4.0
    IL_04df:  ldloc.s    V_19
    IL_04e1:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<object>::get_Count()
    IL_04e6:  box        [System.Runtime]System.Int32
    IL_04eb:  stelem.ref
    IL_04ec:  callvirt   instance object SimpleJson.Reflection.ReflectionUtils/ConstructorDelegate::Invoke(object[])
    IL_04f1:  castclass  [System.Runtime]System.Collections.IList
    IL_04f6:  stloc.s    V_20
    IL_04f8:  ldloc.s    V_19
    IL_04fa:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_04ff:  stloc.s    V_22
    .try
    {
      IL_0501:  br.s       IL_051e

      IL_0503:  ldloc.s    V_22
      IL_0505:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_050a:  stloc.s    V_25
      IL_050c:  ldloc.s    V_20
      IL_050e:  ldarg.0
      IL_050f:  ldloc.s    V_25
      IL_0511:  ldloc.s    V_24
      IL_0513:  callvirt   instance object SimpleJson.PocoJsonSerializerStrategy::DeserializeObject(object,
                                                                                                    class [System.Runtime]System.Type)
      IL_0518:  callvirt   instance int32 [System.Runtime]System.Collections.IList::Add(object)
      IL_051d:  pop
      IL_051e:  ldloc.s    V_22
      IL_0520:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0525:  brtrue.s   IL_0503

      IL_0527:  leave.s    IL_0535

    }  // end .try
    finally
    {
      IL_0529:  ldloc.s    V_22
      IL_052b:  brfalse.s  IL_0534

      IL_052d:  ldloc.s    V_22
      IL_052f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0534:  endfinally
    }  // end handler
    IL_0535:  ldloc.s    V_20
    IL_0537:  stloc.1
    IL_0538:  ldloc.1
    IL_0539:  ret

    IL_053a:  ldarg.2
    IL_053b:  call       bool SimpleJson.Reflection.ReflectionUtils::IsNullableType(class [System.Runtime]System.Type)
    IL_0540:  brfalse.s  IL_054a

    IL_0542:  ldloc.1
    IL_0543:  ldarg.2
    IL_0544:  call       object SimpleJson.Reflection.ReflectionUtils::ToNullableType(object,
                                                                                      class [System.Runtime]System.Type)
    IL_0549:  ret

    IL_054a:  ldloc.1
    IL_054b:  ret
  } // end of method PocoJsonSerializerStrategy::DeserializeObject

  .method family hidebysig newslot virtual 
          instance object  SerializeEnum(class [System.Runtime]System.Enum p) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0006:  call       float64 [System.Runtime.Extensions]System.Convert::ToDouble(object,
                                                                                     class [System.Runtime]System.IFormatProvider)
    IL_000b:  box        [System.Runtime]System.Double
    IL_0010:  ret
  } // end of method PocoJsonSerializerStrategy::SerializeEnum

  .method family hidebysig newslot virtual 
          instance bool  TrySerializeKnownTypes(object input,
                                                [out] object& output) cil managed
  {
    // 代码大小       174 (0xae)
    .maxstack  4
    .locals init (bool V_0,
             valuetype [System.Runtime]System.DateTime V_1,
             valuetype [System.Runtime]System.DateTimeOffset V_2,
             valuetype [System.Runtime]System.Guid V_3,
             class [System.Runtime]System.Enum V_4)
    IL_0000:  ldc.i4.1
    IL_0001:  stloc.0
    IL_0002:  ldarg.1
    IL_0003:  isinst     [System.Runtime]System.DateTime
    IL_0008:  brfalse.s  IL_0030

    IL_000a:  ldarg.2
    IL_000b:  ldarg.1
    IL_000c:  unbox.any  [System.Runtime]System.DateTime
    IL_0011:  stloc.1
    IL_0012:  ldloca.s   V_1
    IL_0014:  call       instance valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::ToUniversalTime()
    IL_0019:  stloc.1
    IL_001a:  ldloca.s   V_1
    IL_001c:  ldsfld     string[] SimpleJson.PocoJsonSerializerStrategy::Iso8601Format
    IL_0021:  ldc.i4.0
    IL_0022:  ldelem.ref
    IL_0023:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0028:  call       instance string [System.Runtime]System.DateTime::ToString(string,
                                                                                   class [System.Runtime]System.IFormatProvider)
    IL_002d:  stind.ref
    IL_002e:  br.s       IL_00ac

    IL_0030:  ldarg.1
    IL_0031:  isinst     [System.Runtime]System.DateTimeOffset
    IL_0036:  brfalse.s  IL_005e

    IL_0038:  ldarg.2
    IL_0039:  ldarg.1
    IL_003a:  unbox.any  [System.Runtime]System.DateTimeOffset
    IL_003f:  stloc.2
    IL_0040:  ldloca.s   V_2
    IL_0042:  call       instance valuetype [System.Runtime]System.DateTimeOffset [System.Runtime]System.DateTimeOffset::ToUniversalTime()
    IL_0047:  stloc.2
    IL_0048:  ldloca.s   V_2
    IL_004a:  ldsfld     string[] SimpleJson.PocoJsonSerializerStrategy::Iso8601Format
    IL_004f:  ldc.i4.0
    IL_0050:  ldelem.ref
    IL_0051:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0056:  call       instance string [System.Runtime]System.DateTimeOffset::ToString(string,
                                                                                         class [System.Runtime]System.IFormatProvider)
    IL_005b:  stind.ref
    IL_005c:  br.s       IL_00ac

    IL_005e:  ldarg.1
    IL_005f:  isinst     [System.Runtime]System.Guid
    IL_0064:  brfalse.s  IL_007d

    IL_0066:  ldarg.2
    IL_0067:  ldarg.1
    IL_0068:  unbox.any  [System.Runtime]System.Guid
    IL_006d:  stloc.3
    IL_006e:  ldloca.s   V_3
    IL_0070:  ldstr      "D"
    IL_0075:  call       instance string [System.Runtime]System.Guid::ToString(string)
    IL_007a:  stind.ref
    IL_007b:  br.s       IL_00ac

    IL_007d:  ldarg.1
    IL_007e:  isinst     [System.Runtime]System.Uri
    IL_0083:  brfalse.s  IL_008f

    IL_0085:  ldarg.2
    IL_0086:  ldarg.1
    IL_0087:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_008c:  stind.ref
    IL_008d:  br.s       IL_00ac

    IL_008f:  ldarg.1
    IL_0090:  isinst     [System.Runtime]System.Enum
    IL_0095:  stloc.s    V_4
    IL_0097:  ldloc.s    V_4
    IL_0099:  brfalse.s  IL_00a7

    IL_009b:  ldarg.2
    IL_009c:  ldarg.0
    IL_009d:  ldloc.s    V_4
    IL_009f:  callvirt   instance object SimpleJson.PocoJsonSerializerStrategy::SerializeEnum(class [System.Runtime]System.Enum)
    IL_00a4:  stind.ref
    IL_00a5:  br.s       IL_00ac

    IL_00a7:  ldc.i4.0
    IL_00a8:  stloc.0
    IL_00a9:  ldarg.2
    IL_00aa:  ldnull
    IL_00ab:  stind.ref
    IL_00ac:  ldloc.0
    IL_00ad:  ret
  } // end of method PocoJsonSerializerStrategy::TrySerializeKnownTypes

  .method family hidebysig newslot virtual 
          instance bool  TrySerializeUnknownTypes(object input,
                                                  [out] object& output) cil managed
  {
    // 代码大小       133 (0x85)
    .maxstack  4
    .locals init (class [System.Runtime]System.Type V_0,
             class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object> V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>> V_2,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate> V_3)
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "input"
    IL_0008:  newobj     instance void [System.Runtime]System.ArgumentNullException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.2
    IL_000f:  ldnull
    IL_0010:  stind.ref
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
    IL_001e:  brtrue.s   IL_0022

    IL_0020:  ldc.i4.0
    IL_0021:  ret

    IL_0022:  newobj     instance void SimpleJson.JsonObject::.ctor()
    IL_0027:  stloc.1
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>> SimpleJson.PocoJsonSerializerStrategy::GetCache
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance !1 class [System.Runtime]System.Collections.Generic.IDictionary`2<class [System.Runtime]System.Type,class [System.Runtime]System.Collections.Generic.IDictionary`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>>::get_Item(!0)
    IL_0034:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>>::GetEnumerator()
    IL_0039:  stloc.2
    .try
    {
      IL_003a:  br.s       IL_006c

      IL_003c:  ldloc.2
      IL_003d:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>>::get_Current()
      IL_0042:  stloc.3
      IL_0043:  ldloca.s   V_3
      IL_0045:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>::get_Value()
      IL_004a:  brfalse.s  IL_006c

      IL_004c:  ldloc.1
      IL_004d:  ldarg.0
      IL_004e:  ldloca.s   V_3
      IL_0050:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>::get_Key()
      IL_0055:  callvirt   instance string SimpleJson.PocoJsonSerializerStrategy::MapClrMemberNameToJsonFieldName(string)
      IL_005a:  ldloca.s   V_3
      IL_005c:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,class SimpleJson.Reflection.ReflectionUtils/GetDelegate>::get_Value()
      IL_0061:  ldarg.1
      IL_0062:  callvirt   instance object SimpleJson.Reflection.ReflectionUtils/GetDelegate::Invoke(object)
      IL_0067:  callvirt   instance void class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>::Add(!0,
                                                                                                                            !1)
      IL_006c:  ldloc.2
      IL_006d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0072:  brtrue.s   IL_003c

      IL_0074:  leave.s    IL_0080

    }  // end .try
    finally
    {
      IL_0076:  ldloc.2
      IL_0077:  brfalse.s  IL_007f

      IL_0079:  ldloc.2
      IL_007a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_007f:  endfinally
    }  // end handler
    IL_0080:  ldarg.2
    IL_0081:  ldloc.1
    IL_0082:  stind.ref
    IL_0083:  ldc.i4.1
    IL_0084:  ret
  } // end of method PocoJsonSerializerStrategy::TrySerializeUnknownTypes

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  4
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Type
    IL_0006:  stsfld     class [System.Runtime]System.Type[] SimpleJson.PocoJsonSerializerStrategy::EmptyTypes
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [System.Runtime]System.Type
    IL_0011:  dup
    IL_0012:  ldc.i4.0
    IL_0013:  ldtoken    [System.Runtime]System.Int32
    IL_0018:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_001d:  stelem.ref
    IL_001e:  stsfld     class [System.Runtime]System.Type[] SimpleJson.PocoJsonSerializerStrategy::ArrayConstructorParameterTypes
    IL_0023:  ldc.i4.3
    IL_0024:  newarr     [System.Runtime]System.String
    IL_0029:  dup
    IL_002a:  ldc.i4.0
    IL_002b:  ldstr      "yyyy-MM-dd\\THH:mm:ss.FFFFFFF\\Z"
    IL_0030:  stelem.ref
    IL_0031:  dup
    IL_0032:  ldc.i4.1
    IL_0033:  ldstr      "yyyy-MM-dd\\THH:mm:ss\\Z"
    IL_0038:  stelem.ref
    IL_0039:  dup
    IL_003a:  ldc.i4.2
    IL_003b:  ldstr      "yyyy-MM-dd\\THH:mm:ssK"
    IL_0040:  stelem.ref
    IL_0041:  stsfld     string[] SimpleJson.PocoJsonSerializerStrategy::Iso8601Format
    IL_0046:  ret
  } // end of method PocoJsonSerializerStrategy::.cctor

} // end of class SimpleJson.PocoJsonSerializerStrategy