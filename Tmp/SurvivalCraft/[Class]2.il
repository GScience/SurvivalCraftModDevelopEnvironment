.class private abstract auto ansi sealed SimpleJson.SimpleJson
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Diagnostics.Tools]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                                        string) = ( 01 00 0B 73 69 6D 70 6C 65 2D 6A 73 6F 6E 05 31   // ...simple-json.1
                                                                                                                    2E 30 2E 30 00 00 )                               // .0.0..
  .field private static literal int32 TOKEN_NONE = int32(0x00000000)
  .field private static literal int32 TOKEN_CURLY_OPEN = int32(0x00000001)
  .field private static literal int32 TOKEN_CURLY_CLOSE = int32(0x00000002)
  .field private static literal int32 TOKEN_SQUARED_OPEN = int32(0x00000003)
  .field private static literal int32 TOKEN_SQUARED_CLOSE = int32(0x00000004)
  .field private static literal int32 TOKEN_COLON = int32(0x00000005)
  .field private static literal int32 TOKEN_COMMA = int32(0x00000006)
  .field private static literal int32 TOKEN_STRING = int32(0x00000007)
  .field private static literal int32 TOKEN_NUMBER = int32(0x00000008)
  .field private static literal int32 TOKEN_TRUE = int32(0x00000009)
  .field private static literal int32 TOKEN_FALSE = int32(0x0000000A)
  .field private static literal int32 TOKEN_NULL = int32(0x0000000B)
  .field private static literal int32 BUILDER_CAPACITY = int32(0x000007D0)
  .field private static initonly char[] EscapeTable
  .field private static initonly char[] EscapeCharacters
  .field private static class SimpleJson.IJsonSerializerStrategy _currentJsonSerializerStrategy
  .field private static class SimpleJson.PocoJsonSerializerStrategy _pocoJsonSerializerStrategy
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  3
    IL_0000:  ldc.i4.7
    IL_0001:  newarr     [System.Runtime]System.Char
    IL_0006:  dup
    IL_0007:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=14' '<PrivateImplementationDetails>'::'73A7CA944158467943BFEB320F79099327A00212'
    IL_000c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0011:  stsfld     char[] SimpleJson.SimpleJson::EscapeCharacters
    IL_0016:  ldc.i4.s   93
    IL_0018:  newarr     [System.Runtime]System.Char
    IL_001d:  stsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_0022:  ldsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_0027:  ldc.i4.s   34
    IL_0029:  ldc.i4.s   34
    IL_002b:  stelem.i2
    IL_002c:  ldsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_0031:  ldc.i4.s   92
    IL_0033:  ldc.i4.s   92
    IL_0035:  stelem.i2
    IL_0036:  ldsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_003b:  ldc.i4.8
    IL_003c:  ldc.i4.s   98
    IL_003e:  stelem.i2
    IL_003f:  ldsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_0044:  ldc.i4.s   12
    IL_0046:  ldc.i4.s   102
    IL_0048:  stelem.i2
    IL_0049:  ldsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_004e:  ldc.i4.s   10
    IL_0050:  ldc.i4.s   110
    IL_0052:  stelem.i2
    IL_0053:  ldsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_0058:  ldc.i4.s   13
    IL_005a:  ldc.i4.s   114
    IL_005c:  stelem.i2
    IL_005d:  ldsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_0062:  ldc.i4.s   9
    IL_0064:  ldc.i4.s   116
    IL_0066:  stelem.i2
    IL_0067:  ret
  } // end of method SimpleJson::.cctor

  .method public hidebysig static object 
          DeserializeObject(string json) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  2
    .locals init (object V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldloca.s   V_0
    IL_0003:  call       bool SimpleJson.SimpleJson::TryDeserializeObject(string,
                                                                          object&)
    IL_0008:  brfalse.s  IL_000c

    IL_000a:  ldloc.0
    IL_000b:  ret

    IL_000c:  ldstr      "Invalid JSON string"
    IL_0011:  newobj     instance void [System.Runtime.Serialization.Primitives]System.Runtime.Serialization.SerializationException::.ctor(string)
    IL_0016:  throw
  } // end of method SimpleJson::DeserializeObject

  .method public hidebysig static bool  TryDeserializeObject(string json,
                                                             [out] object& obj) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  4
    .locals init (bool V_0,
             char[] V_1,
             int32 V_2)
    IL_0000:  ldc.i4.1
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  brfalse.s  IL_001c

    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance char[] [System.Runtime]System.String::ToCharArray()
    IL_000b:  stloc.1
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.2
    IL_000e:  ldarg.1
    IL_000f:  ldloc.1
    IL_0010:  ldloca.s   V_2
    IL_0012:  ldloca.s   V_0
    IL_0014:  call       object SimpleJson.SimpleJson::ParseValue(char[],
                                                                  int32&,
                                                                  bool&)
    IL_0019:  stind.ref
    IL_001a:  br.s       IL_001f

    IL_001c:  ldarg.1
    IL_001d:  ldnull
    IL_001e:  stind.ref
    IL_001f:  ldloc.0
    IL_0020:  ret
  } // end of method SimpleJson::TryDeserializeObject

  .method public hidebysig static object 
          DeserializeObject(string json,
                            class [System.Runtime]System.Type 'type',
                            class SimpleJson.IJsonSerializerStrategy jsonSerializerStrategy) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  3
    .locals init (object V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       object SimpleJson.SimpleJson::DeserializeObject(string)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  brfalse.s  IL_002d

    IL_000a:  ldloc.0
    IL_000b:  brfalse.s  IL_001b

    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0013:  ldarg.1
    IL_0014:  call       bool SimpleJson.Reflection.ReflectionUtils::IsAssignableFrom(class [System.Runtime]System.Type,
                                                                                      class [System.Runtime]System.Type)
    IL_0019:  brtrue.s   IL_002d

    IL_001b:  ldarg.2
    IL_001c:  dup
    IL_001d:  brtrue.s   IL_0025

    IL_001f:  pop
    IL_0020:  call       class SimpleJson.IJsonSerializerStrategy SimpleJson.SimpleJson::get_CurrentJsonSerializerStrategy()
    IL_0025:  ldloc.0
    IL_0026:  ldarg.1
    IL_0027:  callvirt   instance object SimpleJson.IJsonSerializerStrategy::DeserializeObject(object,
                                                                                               class [System.Runtime]System.Type)
    IL_002c:  ret

    IL_002d:  ldloc.0
    IL_002e:  ret
  } // end of method SimpleJson::DeserializeObject

  .method public hidebysig static object 
          DeserializeObject(string json,
                            class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  call       object SimpleJson.SimpleJson::DeserializeObject(string,
                                                                         class [System.Runtime]System.Type,
                                                                         class SimpleJson.IJsonSerializerStrategy)
    IL_0008:  ret
  } // end of method SimpleJson::DeserializeObject

  .method public hidebysig static !!T  DeserializeObject<T>(string json,
                                                            class SimpleJson.IJsonSerializerStrategy jsonSerializerStrategy) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldtoken    !!T
    IL_0006:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000b:  ldarg.1
    IL_000c:  call       object SimpleJson.SimpleJson::DeserializeObject(string,
                                                                         class [System.Runtime]System.Type,
                                                                         class SimpleJson.IJsonSerializerStrategy)
    IL_0011:  unbox.any  !!T
    IL_0016:  ret
  } // end of method SimpleJson::DeserializeObject

  .method public hidebysig static !!T  DeserializeObject<T>(string json) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldtoken    !!T
    IL_0006:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000b:  ldnull
    IL_000c:  call       object SimpleJson.SimpleJson::DeserializeObject(string,
                                                                         class [System.Runtime]System.Type,
                                                                         class SimpleJson.IJsonSerializerStrategy)
    IL_0011:  unbox.any  !!T
    IL_0016:  ret
  } // end of method SimpleJson::DeserializeObject

  .method public hidebysig static string 
          SerializeObject(object json,
                          class SimpleJson.IJsonSerializerStrategy jsonSerializerStrategy) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  3
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0)
    IL_0000:  ldc.i4     0x7d0
    IL_0005:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor(int32)
    IL_000a:  stloc.0
    IL_000b:  ldarg.1
    IL_000c:  ldarg.0
    IL_000d:  ldloc.0
    IL_000e:  call       bool SimpleJson.SimpleJson::SerializeValue(class SimpleJson.IJsonSerializerStrategy,
                                                                    object,
                                                                    class [System.Runtime]System.Text.StringBuilder)
    IL_0013:  brtrue.s   IL_0017

    IL_0015:  ldnull
    IL_0016:  ret

    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_001d:  ret
  } // end of method SimpleJson::SerializeObject

  .method public hidebysig static string 
          SerializeObject(object json) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class SimpleJson.IJsonSerializerStrategy SimpleJson.SimpleJson::get_CurrentJsonSerializerStrategy()
    IL_0006:  call       string SimpleJson.SimpleJson::SerializeObject(object,
                                                                       class SimpleJson.IJsonSerializerStrategy)
    IL_000b:  ret
  } // end of method SimpleJson::SerializeObject

  .method public hidebysig static string 
          EscapeToJavascriptString(string jsonString) cil managed
  {
    // 代码大小       214 (0xd6)
    .maxstack  4
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0,
             char V_1,
             int32 V_2,
             char V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brfalse.s  IL_000a

    IL_0008:  ldarg.0
    IL_0009:  ret

    IL_000a:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_000f:  stloc.0
    IL_0010:  ldc.i4.0
    IL_0011:  stloc.2
    IL_0012:  br         IL_00c3

    IL_0017:  ldarg.0
    IL_0018:  ldloc.2
    IL_0019:  dup
    IL_001a:  ldc.i4.1
    IL_001b:  add
    IL_001c:  stloc.2
    IL_001d:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0022:  stloc.1
    IL_0023:  ldloc.1
    IL_0024:  ldc.i4.s   92
    IL_0026:  bne.un     IL_00bb

    IL_002b:  ldarg.0
    IL_002c:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0031:  ldloc.2
    IL_0032:  sub
    IL_0033:  ldc.i4.2
    IL_0034:  blt        IL_00c3

    IL_0039:  ldarg.0
    IL_003a:  ldloc.2
    IL_003b:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0040:  stloc.3
    IL_0041:  ldloc.3
    IL_0042:  ldc.i4.s   92
    IL_0044:  bne.un.s   IL_0055

    IL_0046:  ldloc.0
    IL_0047:  ldc.i4.s   92
    IL_0049:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_004e:  pop
    IL_004f:  ldloc.2
    IL_0050:  ldc.i4.1
    IL_0051:  add
    IL_0052:  stloc.2
    IL_0053:  br.s       IL_00c3

    IL_0055:  ldloc.3
    IL_0056:  ldc.i4.s   34
    IL_0058:  bne.un.s   IL_006c

    IL_005a:  ldloc.0
    IL_005b:  ldstr      "\""
    IL_0060:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0065:  pop
    IL_0066:  ldloc.2
    IL_0067:  ldc.i4.1
    IL_0068:  add
    IL_0069:  stloc.2
    IL_006a:  br.s       IL_00c3

    IL_006c:  ldloc.3
    IL_006d:  ldc.i4.s   116
    IL_006f:  bne.un.s   IL_0080

    IL_0071:  ldloc.0
    IL_0072:  ldc.i4.s   9
    IL_0074:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0079:  pop
    IL_007a:  ldloc.2
    IL_007b:  ldc.i4.1
    IL_007c:  add
    IL_007d:  stloc.2
    IL_007e:  br.s       IL_00c3

    IL_0080:  ldloc.3
    IL_0081:  ldc.i4.s   98
    IL_0083:  bne.un.s   IL_0093

    IL_0085:  ldloc.0
    IL_0086:  ldc.i4.8
    IL_0087:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_008c:  pop
    IL_008d:  ldloc.2
    IL_008e:  ldc.i4.1
    IL_008f:  add
    IL_0090:  stloc.2
    IL_0091:  br.s       IL_00c3

    IL_0093:  ldloc.3
    IL_0094:  ldc.i4.s   110
    IL_0096:  bne.un.s   IL_00a7

    IL_0098:  ldloc.0
    IL_0099:  ldc.i4.s   10
    IL_009b:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00a0:  pop
    IL_00a1:  ldloc.2
    IL_00a2:  ldc.i4.1
    IL_00a3:  add
    IL_00a4:  stloc.2
    IL_00a5:  br.s       IL_00c3

    IL_00a7:  ldloc.3
    IL_00a8:  ldc.i4.s   114
    IL_00aa:  bne.un.s   IL_00c3

    IL_00ac:  ldloc.0
    IL_00ad:  ldc.i4.s   13
    IL_00af:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00b4:  pop
    IL_00b5:  ldloc.2
    IL_00b6:  ldc.i4.1
    IL_00b7:  add
    IL_00b8:  stloc.2
    IL_00b9:  br.s       IL_00c3

    IL_00bb:  ldloc.0
    IL_00bc:  ldloc.1
    IL_00bd:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00c2:  pop
    IL_00c3:  ldloc.2
    IL_00c4:  ldarg.0
    IL_00c5:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_00ca:  blt        IL_0017

    IL_00cf:  ldloc.0
    IL_00d0:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00d5:  ret
  } // end of method SimpleJson::EscapeToJavascriptString

  .method private hidebysig static class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object> 
          ParseObject(char[] json,
                      int32& index,
                      bool& success) cil managed
  {
    // 代码大小       131 (0x83)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object> V_0,
             int32 V_1,
             bool V_2,
             string V_3,
             object V_4)
    IL_0000:  newobj     instance void SimpleJson.JsonObject::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_000d:  pop
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.2
    IL_0010:  br.s       IL_007e

    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldind.i4
    IL_0015:  call       int32 SimpleJson.SimpleJson::LookAhead(char[],
                                                                int32)
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  brtrue.s   IL_0023

    IL_001e:  ldarg.2
    IL_001f:  ldc.i4.0
    IL_0020:  stind.i1
    IL_0021:  ldnull
    IL_0022:  ret

    IL_0023:  ldloc.1
    IL_0024:  ldc.i4.6
    IL_0025:  bne.un.s   IL_0031

    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_002e:  pop
    IL_002f:  br.s       IL_007e

    IL_0031:  ldloc.1
    IL_0032:  ldc.i4.2
    IL_0033:  bne.un.s   IL_003f

    IL_0035:  ldarg.0
    IL_0036:  ldarg.1
    IL_0037:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_003c:  pop
    IL_003d:  ldloc.0
    IL_003e:  ret

    IL_003f:  ldarg.0
    IL_0040:  ldarg.1
    IL_0041:  ldarg.2
    IL_0042:  call       string SimpleJson.SimpleJson::ParseString(char[],
                                                                   int32&,
                                                                   bool&)
    IL_0047:  stloc.3
    IL_0048:  ldarg.2
    IL_0049:  ldind.u1
    IL_004a:  brtrue.s   IL_0051

    IL_004c:  ldarg.2
    IL_004d:  ldc.i4.0
    IL_004e:  stind.i1
    IL_004f:  ldnull
    IL_0050:  ret

    IL_0051:  ldarg.0
    IL_0052:  ldarg.1
    IL_0053:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_0058:  stloc.1
    IL_0059:  ldloc.1
    IL_005a:  ldc.i4.5
    IL_005b:  beq.s      IL_0062

    IL_005d:  ldarg.2
    IL_005e:  ldc.i4.0
    IL_005f:  stind.i1
    IL_0060:  ldnull
    IL_0061:  ret

    IL_0062:  ldarg.0
    IL_0063:  ldarg.1
    IL_0064:  ldarg.2
    IL_0065:  call       object SimpleJson.SimpleJson::ParseValue(char[],
                                                                  int32&,
                                                                  bool&)
    IL_006a:  stloc.s    V_4
    IL_006c:  ldarg.2
    IL_006d:  ldind.u1
    IL_006e:  brtrue.s   IL_0075

    IL_0070:  ldarg.2
    IL_0071:  ldc.i4.0
    IL_0072:  stind.i1
    IL_0073:  ldnull
    IL_0074:  ret

    IL_0075:  ldloc.0
    IL_0076:  ldloc.3
    IL_0077:  ldloc.s    V_4
    IL_0079:  callvirt   instance void class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                               !1)
    IL_007e:  ldloc.2
    IL_007f:  brfalse.s  IL_0012

    IL_0081:  ldloc.0
    IL_0082:  ret
  } // end of method SimpleJson::ParseObject

  .method private hidebysig static class SimpleJson.JsonArray 
          ParseArray(char[] json,
                     int32& index,
                     bool& success) cil managed
  {
    // 代码大小       90 (0x5a)
    .maxstack  3
    .locals init (class SimpleJson.JsonArray V_0,
             bool V_1,
             int32 V_2,
             object V_3)
    IL_0000:  newobj     instance void SimpleJson.JsonArray::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_000d:  pop
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_0055

    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldind.i4
    IL_0015:  call       int32 SimpleJson.SimpleJson::LookAhead(char[],
                                                                int32)
    IL_001a:  stloc.2
    IL_001b:  ldloc.2
    IL_001c:  brtrue.s   IL_0023

    IL_001e:  ldarg.2
    IL_001f:  ldc.i4.0
    IL_0020:  stind.i1
    IL_0021:  ldnull
    IL_0022:  ret

    IL_0023:  ldloc.2
    IL_0024:  ldc.i4.6
    IL_0025:  bne.un.s   IL_0031

    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_002e:  pop
    IL_002f:  br.s       IL_0055

    IL_0031:  ldloc.2
    IL_0032:  ldc.i4.4
    IL_0033:  bne.un.s   IL_003f

    IL_0035:  ldarg.0
    IL_0036:  ldarg.1
    IL_0037:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_003c:  pop
    IL_003d:  br.s       IL_0058

    IL_003f:  ldarg.0
    IL_0040:  ldarg.1
    IL_0041:  ldarg.2
    IL_0042:  call       object SimpleJson.SimpleJson::ParseValue(char[],
                                                                  int32&,
                                                                  bool&)
    IL_0047:  stloc.3
    IL_0048:  ldarg.2
    IL_0049:  ldind.u1
    IL_004a:  brtrue.s   IL_004e

    IL_004c:  ldnull
    IL_004d:  ret

    IL_004e:  ldloc.0
    IL_004f:  ldloc.3
    IL_0050:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<object>::Add(!0)
    IL_0055:  ldloc.1
    IL_0056:  brfalse.s  IL_0012

    IL_0058:  ldloc.0
    IL_0059:  ret
  } // end of method SimpleJson::ParseArray

  .method private hidebysig static object 
          ParseValue(char[] json,
                     int32& index,
                     bool& success) cil managed
  {
    // 代码大小       146 (0x92)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldind.i4
    IL_0003:  call       int32 SimpleJson.SimpleJson::LookAhead(char[],
                                                                int32)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  switch     ( 
                          IL_008d,
                          IL_0053,
                          IL_008d,
                          IL_005c,
                          IL_008d,
                          IL_008d,
                          IL_008d,
                          IL_0041,
                          IL_004a,
                          IL_0065,
                          IL_0074,
                          IL_0083)
    IL_003f:  br.s       IL_008d

    IL_0041:  ldarg.0
    IL_0042:  ldarg.1
    IL_0043:  ldarg.2
    IL_0044:  call       string SimpleJson.SimpleJson::ParseString(char[],
                                                                   int32&,
                                                                   bool&)
    IL_0049:  ret

    IL_004a:  ldarg.0
    IL_004b:  ldarg.1
    IL_004c:  ldarg.2
    IL_004d:  call       object SimpleJson.SimpleJson::ParseNumber(char[],
                                                                   int32&,
                                                                   bool&)
    IL_0052:  ret

    IL_0053:  ldarg.0
    IL_0054:  ldarg.1
    IL_0055:  ldarg.2
    IL_0056:  call       class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object> SimpleJson.SimpleJson::ParseObject(char[],
                                                                                                                                          int32&,
                                                                                                                                          bool&)
    IL_005b:  ret

    IL_005c:  ldarg.0
    IL_005d:  ldarg.1
    IL_005e:  ldarg.2
    IL_005f:  call       class SimpleJson.JsonArray SimpleJson.SimpleJson::ParseArray(char[],
                                                                                      int32&,
                                                                                      bool&)
    IL_0064:  ret

    IL_0065:  ldarg.0
    IL_0066:  ldarg.1
    IL_0067:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_006c:  pop
    IL_006d:  ldc.i4.1
    IL_006e:  box        [System.Runtime]System.Boolean
    IL_0073:  ret

    IL_0074:  ldarg.0
    IL_0075:  ldarg.1
    IL_0076:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_007b:  pop
    IL_007c:  ldc.i4.0
    IL_007d:  box        [System.Runtime]System.Boolean
    IL_0082:  ret

    IL_0083:  ldarg.0
    IL_0084:  ldarg.1
    IL_0085:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_008a:  pop
    IL_008b:  ldnull
    IL_008c:  ret

    IL_008d:  ldarg.2
    IL_008e:  ldc.i4.0
    IL_008f:  stind.i1
    IL_0090:  ldnull
    IL_0091:  ret
  } // end of method SimpleJson::ParseValue

  .method private hidebysig static string 
          ParseString(char[] json,
                      int32& index,
                      bool& success) cil managed
  {
    // 代码大小       506 (0x1fa)
    .maxstack  5
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0,
             char V_1,
             bool V_2,
             int32 V_3,
             uint32 V_4,
             bool V_5,
             uint32 V_6)
    IL_0000:  ldc.i4     0x7d0
    IL_0005:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor(int32)
    IL_000a:  stloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  call       void SimpleJson.SimpleJson::EatWhitespace(char[],
                                                                   int32&)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldarg.1
    IL_0015:  ldind.i4
    IL_0016:  stloc.3
    IL_0017:  ldloc.3
    IL_0018:  ldc.i4.1
    IL_0019:  add
    IL_001a:  stind.i4
    IL_001b:  ldloc.3
    IL_001c:  ldelem.u2
    IL_001d:  stloc.1
    IL_001e:  ldc.i4.0
    IL_001f:  stloc.2
    IL_0020:  br         IL_01e5

    IL_0025:  ldarg.1
    IL_0026:  ldind.i4
    IL_0027:  ldarg.0
    IL_0028:  ldlen
    IL_0029:  conv.i4
    IL_002a:  beq        IL_01eb

    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  ldarg.1
    IL_0032:  ldind.i4
    IL_0033:  stloc.3
    IL_0034:  ldloc.3
    IL_0035:  ldc.i4.1
    IL_0036:  add
    IL_0037:  stind.i4
    IL_0038:  ldloc.3
    IL_0039:  ldelem.u2
    IL_003a:  stloc.1
    IL_003b:  ldloc.1
    IL_003c:  ldc.i4.s   34
    IL_003e:  bne.un.s   IL_0047

    IL_0040:  ldc.i4.1
    IL_0041:  stloc.2
    IL_0042:  br         IL_01eb

    IL_0047:  ldloc.1
    IL_0048:  ldc.i4.s   92
    IL_004a:  bne.un     IL_01dd

    IL_004f:  ldarg.1
    IL_0050:  ldind.i4
    IL_0051:  ldarg.0
    IL_0052:  ldlen
    IL_0053:  conv.i4
    IL_0054:  beq        IL_01eb

    IL_0059:  ldarg.0
    IL_005a:  ldarg.1
    IL_005b:  ldarg.1
    IL_005c:  ldind.i4
    IL_005d:  stloc.3
    IL_005e:  ldloc.3
    IL_005f:  ldc.i4.1
    IL_0060:  add
    IL_0061:  stind.i4
    IL_0062:  ldloc.3
    IL_0063:  ldelem.u2
    IL_0064:  stloc.1
    IL_0065:  ldloc.1
    IL_0066:  ldc.i4.s   34
    IL_0068:  bne.un.s   IL_0078

    IL_006a:  ldloc.0
    IL_006b:  ldc.i4.s   34
    IL_006d:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0072:  pop
    IL_0073:  br         IL_01e5

    IL_0078:  ldloc.1
    IL_0079:  ldc.i4.s   92
    IL_007b:  bne.un.s   IL_008b

    IL_007d:  ldloc.0
    IL_007e:  ldc.i4.s   92
    IL_0080:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0085:  pop
    IL_0086:  br         IL_01e5

    IL_008b:  ldloc.1
    IL_008c:  ldc.i4.s   47
    IL_008e:  bne.un.s   IL_009e

    IL_0090:  ldloc.0
    IL_0091:  ldc.i4.s   47
    IL_0093:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0098:  pop
    IL_0099:  br         IL_01e5

    IL_009e:  ldloc.1
    IL_009f:  ldc.i4.s   98
    IL_00a1:  bne.un.s   IL_00b0

    IL_00a3:  ldloc.0
    IL_00a4:  ldc.i4.8
    IL_00a5:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00aa:  pop
    IL_00ab:  br         IL_01e5

    IL_00b0:  ldloc.1
    IL_00b1:  ldc.i4.s   102
    IL_00b3:  bne.un.s   IL_00c3

    IL_00b5:  ldloc.0
    IL_00b6:  ldc.i4.s   12
    IL_00b8:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00bd:  pop
    IL_00be:  br         IL_01e5

    IL_00c3:  ldloc.1
    IL_00c4:  ldc.i4.s   110
    IL_00c6:  bne.un.s   IL_00d6

    IL_00c8:  ldloc.0
    IL_00c9:  ldc.i4.s   10
    IL_00cb:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00d0:  pop
    IL_00d1:  br         IL_01e5

    IL_00d6:  ldloc.1
    IL_00d7:  ldc.i4.s   114
    IL_00d9:  bne.un.s   IL_00e9

    IL_00db:  ldloc.0
    IL_00dc:  ldc.i4.s   13
    IL_00de:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00e3:  pop
    IL_00e4:  br         IL_01e5

    IL_00e9:  ldloc.1
    IL_00ea:  ldc.i4.s   116
    IL_00ec:  bne.un.s   IL_00fc

    IL_00ee:  ldloc.0
    IL_00ef:  ldc.i4.s   9
    IL_00f1:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00f6:  pop
    IL_00f7:  br         IL_01e5

    IL_00fc:  ldloc.1
    IL_00fd:  ldc.i4.s   117
    IL_00ff:  bne.un     IL_01e5

    IL_0104:  ldarg.0
    IL_0105:  ldlen
    IL_0106:  conv.i4
    IL_0107:  ldarg.1
    IL_0108:  ldind.i4
    IL_0109:  sub
    IL_010a:  ldc.i4.4
    IL_010b:  blt        IL_01eb

    IL_0110:  ldarg.2
    IL_0111:  ldarg.0
    IL_0112:  ldarg.1
    IL_0113:  ldind.i4
    IL_0114:  ldc.i4.4
    IL_0115:  newobj     instance void [System.Runtime]System.String::.ctor(char[],
                                                                            int32,
                                                                            int32)
    IL_011a:  ldc.i4     0x203
    IL_011f:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0124:  ldloca.s   V_4
    IL_0126:  call       bool [System.Runtime]System.UInt32::TryParse(string,
                                                                      valuetype [System.Runtime]System.Globalization.NumberStyles,
                                                                      class [System.Runtime]System.IFormatProvider,
                                                                      uint32&)
    IL_012b:  dup
    IL_012c:  stloc.s    V_5
    IL_012e:  stind.i1
    IL_012f:  ldloc.s    V_5
    IL_0131:  brtrue.s   IL_0139

    IL_0133:  ldstr      ""
    IL_0138:  ret

    IL_0139:  ldc.i4     0xd800
    IL_013e:  ldloc.s    V_4
    IL_0140:  bgt.un     IL_01c7

    IL_0145:  ldloc.s    V_4
    IL_0147:  ldc.i4     0xdbff
    IL_014c:  bgt.un.s   IL_01c7

    IL_014e:  ldarg.1
    IL_014f:  ldarg.1
    IL_0150:  ldind.i4
    IL_0151:  ldc.i4.4
    IL_0152:  add
    IL_0153:  stind.i4
    IL_0154:  ldarg.0
    IL_0155:  ldlen
    IL_0156:  conv.i4
    IL_0157:  ldarg.1
    IL_0158:  ldind.i4
    IL_0159:  sub
    IL_015a:  ldc.i4.6
    IL_015b:  blt.s      IL_01be

    IL_015d:  ldarg.0
    IL_015e:  ldarg.1
    IL_015f:  ldind.i4
    IL_0160:  ldc.i4.2
    IL_0161:  newobj     instance void [System.Runtime]System.String::.ctor(char[],
                                                                            int32,
                                                                            int32)
    IL_0166:  ldstr      "\\u"
    IL_016b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0170:  brfalse.s  IL_01be

    IL_0172:  ldarg.0
    IL_0173:  ldarg.1
    IL_0174:  ldind.i4
    IL_0175:  ldc.i4.2
    IL_0176:  add
    IL_0177:  ldc.i4.4
    IL_0178:  newobj     instance void [System.Runtime]System.String::.ctor(char[],
                                                                            int32,
                                                                            int32)
    IL_017d:  ldc.i4     0x203
    IL_0182:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0187:  ldloca.s   V_6
    IL_0189:  call       bool [System.Runtime]System.UInt32::TryParse(string,
                                                                      valuetype [System.Runtime]System.Globalization.NumberStyles,
                                                                      class [System.Runtime]System.IFormatProvider,
                                                                      uint32&)
    IL_018e:  brfalse.s  IL_01be

    IL_0190:  ldc.i4     0xdc00
    IL_0195:  ldloc.s    V_6
    IL_0197:  bgt.un.s   IL_01be

    IL_0199:  ldloc.s    V_6
    IL_019b:  ldc.i4     0xdfff
    IL_01a0:  bgt.un.s   IL_01be

    IL_01a2:  ldloc.0
    IL_01a3:  ldloc.s    V_4
    IL_01a5:  conv.u2
    IL_01a6:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_01ab:  pop
    IL_01ac:  ldloc.0
    IL_01ad:  ldloc.s    V_6
    IL_01af:  conv.u2
    IL_01b0:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_01b5:  pop
    IL_01b6:  ldarg.1
    IL_01b7:  ldarg.1
    IL_01b8:  ldind.i4
    IL_01b9:  ldc.i4.6
    IL_01ba:  add
    IL_01bb:  stind.i4
    IL_01bc:  br.s       IL_01e5

    IL_01be:  ldarg.2
    IL_01bf:  ldc.i4.0
    IL_01c0:  stind.i1
    IL_01c1:  ldstr      ""
    IL_01c6:  ret

    IL_01c7:  ldloc.0
    IL_01c8:  ldloc.s    V_4
    IL_01ca:  call       string SimpleJson.SimpleJson::ConvertFromUtf32(int32)
    IL_01cf:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_01d4:  pop
    IL_01d5:  ldarg.1
    IL_01d6:  ldarg.1
    IL_01d7:  ldind.i4
    IL_01d8:  ldc.i4.4
    IL_01d9:  add
    IL_01da:  stind.i4
    IL_01db:  br.s       IL_01e5

    IL_01dd:  ldloc.0
    IL_01de:  ldloc.1
    IL_01df:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_01e4:  pop
    IL_01e5:  ldloc.2
    IL_01e6:  brfalse    IL_0025

    IL_01eb:  ldloc.2
    IL_01ec:  brtrue.s   IL_01f3

    IL_01ee:  ldarg.2
    IL_01ef:  ldc.i4.0
    IL_01f0:  stind.i1
    IL_01f1:  ldnull
    IL_01f2:  ret

    IL_01f3:  ldloc.0
    IL_01f4:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_01f9:  ret
  } // end of method SimpleJson::ParseString

  .method private hidebysig static string 
          ConvertFromUtf32(int32 utf32) cil managed
  {
    // 代码大小       129 (0x81)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_000c

    IL_0004:  ldarg.0
    IL_0005:  ldc.i4     0x10ffff
    IL_000a:  ble.s      IL_001c

    IL_000c:  ldstr      "utf32"
    IL_0011:  ldstr      "The argument must be from 0 to 0x10FFFF."
    IL_0016:  newobj     instance void [System.Runtime]System.ArgumentOutOfRangeException::.ctor(string,
                                                                                                 string)
    IL_001b:  throw

    IL_001c:  ldc.i4     0xd800
    IL_0021:  ldarg.0
    IL_0022:  bgt.s      IL_003c

    IL_0024:  ldarg.0
    IL_0025:  ldc.i4     0xdfff
    IL_002a:  bgt.s      IL_003c

    IL_002c:  ldstr      "utf32"
    IL_0031:  ldstr      "The argument must not be in surrogate pair range."
    IL_0036:  newobj     instance void [System.Runtime]System.ArgumentOutOfRangeException::.ctor(string,
                                                                                                 string)
    IL_003b:  throw

    IL_003c:  ldarg.0
    IL_003d:  ldc.i4     0x10000
    IL_0042:  bge.s      IL_004d

    IL_0044:  ldarg.0
    IL_0045:  conv.u2
    IL_0046:  ldc.i4.1
    IL_0047:  newobj     instance void [System.Runtime]System.String::.ctor(char,
                                                                            int32)
    IL_004c:  ret

    IL_004d:  ldarg.0
    IL_004e:  ldc.i4     0x10000
    IL_0053:  sub
    IL_0054:  starg.s    utf32
    IL_0056:  ldc.i4.2
    IL_0057:  newarr     [System.Runtime]System.Char
    IL_005c:  dup
    IL_005d:  ldc.i4.0
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4.s   10
    IL_0061:  shr
    IL_0062:  ldc.i4     0xd800
    IL_0067:  add
    IL_0068:  conv.u2
    IL_0069:  stelem.i2
    IL_006a:  dup
    IL_006b:  ldc.i4.1
    IL_006c:  ldarg.0
    IL_006d:  ldc.i4     0x400
    IL_0072:  rem
    IL_0073:  ldc.i4     0xdc00
    IL_0078:  add
    IL_0079:  conv.u2
    IL_007a:  stelem.i2
    IL_007b:  newobj     instance void [System.Runtime]System.String::.ctor(char[])
    IL_0080:  ret
  } // end of method SimpleJson::ConvertFromUtf32

  .method private hidebysig static object 
          ParseNumber(char[] json,
                      int32& index,
                      bool& success) cil managed
  {
    // 代码大小       144 (0x90)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             object V_2,
             string V_3,
             float64 V_4,
             int64 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       void SimpleJson.SimpleJson::EatWhitespace(char[],
                                                                   int32&)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldind.i4
    IL_000a:  call       int32 SimpleJson.SimpleJson::GetLastIndexOfNumber(char[],
                                                                           int32)
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  ldarg.1
    IL_0012:  ldind.i4
    IL_0013:  sub
    IL_0014:  ldc.i4.1
    IL_0015:  add
    IL_0016:  stloc.1
    IL_0017:  ldarg.0
    IL_0018:  ldarg.1
    IL_0019:  ldind.i4
    IL_001a:  ldloc.1
    IL_001b:  newobj     instance void [System.Runtime]System.String::.ctor(char[],
                                                                            int32,
                                                                            int32)
    IL_0020:  stloc.3
    IL_0021:  ldloc.3
    IL_0022:  ldstr      "."
    IL_0027:  ldc.i4.5
    IL_0028:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(string,
                                                                               valuetype [System.Runtime]System.StringComparison)
    IL_002d:  ldc.i4.m1
    IL_002e:  bne.un.s   IL_003f

    IL_0030:  ldloc.3
    IL_0031:  ldstr      "e"
    IL_0036:  ldc.i4.5
    IL_0037:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(string,
                                                                               valuetype [System.Runtime]System.StringComparison)
    IL_003c:  ldc.i4.m1
    IL_003d:  beq.s      IL_0065

    IL_003f:  ldarg.2
    IL_0040:  ldarg.0
    IL_0041:  ldarg.1
    IL_0042:  ldind.i4
    IL_0043:  ldloc.1
    IL_0044:  newobj     instance void [System.Runtime]System.String::.ctor(char[],
                                                                            int32,
                                                                            int32)
    IL_0049:  ldc.i4     0x1ff
    IL_004e:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0053:  ldloca.s   V_4
    IL_0055:  call       bool [System.Runtime]System.Double::TryParse(string,
                                                                      valuetype [System.Runtime]System.Globalization.NumberStyles,
                                                                      class [System.Runtime]System.IFormatProvider,
                                                                      float64&)
    IL_005a:  stind.i1
    IL_005b:  ldloc.s    V_4
    IL_005d:  box        [System.Runtime]System.Double
    IL_0062:  stloc.2
    IL_0063:  br.s       IL_0089

    IL_0065:  ldarg.2
    IL_0066:  ldarg.0
    IL_0067:  ldarg.1
    IL_0068:  ldind.i4
    IL_0069:  ldloc.1
    IL_006a:  newobj     instance void [System.Runtime]System.String::.ctor(char[],
                                                                            int32,
                                                                            int32)
    IL_006f:  ldc.i4     0x1ff
    IL_0074:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0079:  ldloca.s   V_5
    IL_007b:  call       bool [System.Runtime]System.Int64::TryParse(string,
                                                                     valuetype [System.Runtime]System.Globalization.NumberStyles,
                                                                     class [System.Runtime]System.IFormatProvider,
                                                                     int64&)
    IL_0080:  stind.i1
    IL_0081:  ldloc.s    V_5
    IL_0083:  box        [System.Runtime]System.Int64
    IL_0088:  stloc.2
    IL_0089:  ldarg.1
    IL_008a:  ldloc.0
    IL_008b:  ldc.i4.1
    IL_008c:  add
    IL_008d:  stind.i4
    IL_008e:  ldloc.2
    IL_008f:  ret
  } // end of method SimpleJson::ParseNumber

  .method private hidebysig static int32 
          GetLastIndexOfNumber(char[] json,
                               int32 index) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0018

    IL_0004:  ldstr      "0123456789+-.eE"
    IL_0009:  ldarg.0
    IL_000a:  ldloc.0
    IL_000b:  ldelem.u2
    IL_000c:  call       instance int32 [System.Runtime]System.String::IndexOf(char)
    IL_0011:  ldc.i4.m1
    IL_0012:  beq.s      IL_001e

    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  add
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  ldarg.0
    IL_001a:  ldlen
    IL_001b:  conv.i4
    IL_001c:  blt.s      IL_0004

    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.1
    IL_0020:  sub
    IL_0021:  ret
  } // end of method SimpleJson::GetLastIndexOfNumber

  .method private hidebysig static void  EatWhitespace(char[] json,
                                                       int32& index) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  br.s       IL_0019

    IL_0002:  ldstr      bytearray (20 00 09 00 0A 00 0D 00 08 00 0C 00 )             //  ...........
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldind.i4
    IL_000a:  ldelem.u2
    IL_000b:  call       instance int32 [System.Runtime]System.String::IndexOf(char)
    IL_0010:  ldc.i4.m1
    IL_0011:  beq.s      IL_0020

    IL_0013:  ldarg.1
    IL_0014:  ldarg.1
    IL_0015:  ldind.i4
    IL_0016:  ldc.i4.1
    IL_0017:  add
    IL_0018:  stind.i4
    IL_0019:  ldarg.1
    IL_001a:  ldind.i4
    IL_001b:  ldarg.0
    IL_001c:  ldlen
    IL_001d:  conv.i4
    IL_001e:  blt.s      IL_0002

    IL_0020:  ret
  } // end of method SimpleJson::EatWhitespace

  .method private hidebysig static int32 
          LookAhead(char[] json,
                    int32 index) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldloca.s   V_0
    IL_0005:  call       int32 SimpleJson.SimpleJson::NextToken(char[],
                                                                int32&)
    IL_000a:  ret
  } // end of method SimpleJson::LookAhead

  .method private hidebysig static int32 
          NextToken(char[] json,
                    int32& index) cil managed
  {
    // 代码大小       359 (0x167)
    .maxstack  3
    .locals init (char V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       void SimpleJson.SimpleJson::EatWhitespace(char[],
                                                                   int32&)
    IL_0007:  ldarg.1
    IL_0008:  ldind.i4
    IL_0009:  ldarg.0
    IL_000a:  ldlen
    IL_000b:  conv.i4
    IL_000c:  bne.un.s   IL_0010

    IL_000e:  ldc.i4.0
    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  ldind.i4
    IL_0013:  ldelem.u2
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldarg.1
    IL_0017:  ldind.i4
    IL_0018:  ldc.i4.1
    IL_0019:  add
    IL_001a:  stind.i4
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.s   91
    IL_001e:  bgt.un.s   IL_0094

    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.s   34
    IL_0023:  sub
    IL_0024:  switch     ( 
                          IL_00af,
                          IL_00b5,
                          IL_00b5,
                          IL_00b5,
                          IL_00b5,
                          IL_00b5,
                          IL_00b5,
                          IL_00b5,
                          IL_00b5,
                          IL_00b5,
                          IL_00ad,
                          IL_00b1,
                          IL_00b5,
                          IL_00b5,
                          IL_00b1,
                          IL_00b1,
                          IL_00b1,
                          IL_00b1,
                          IL_00b1,
                          IL_00b1,
                          IL_00b1,
                          IL_00b1,
                          IL_00b1,
                          IL_00b1,
                          IL_00b3)
    IL_008d:  ldloc.0
    IL_008e:  ldc.i4.s   91
    IL_0090:  beq.s      IL_00a9

    IL_0092:  br.s       IL_00b5

    IL_0094:  ldloc.0
    IL_0095:  ldc.i4.s   93
    IL_0097:  beq.s      IL_00ab

    IL_0099:  ldloc.0
    IL_009a:  ldc.i4.s   123
    IL_009c:  beq.s      IL_00a5

    IL_009e:  ldloc.0
    IL_009f:  ldc.i4.s   125
    IL_00a1:  beq.s      IL_00a7

    IL_00a3:  br.s       IL_00b5

    IL_00a5:  ldc.i4.1
    IL_00a6:  ret

    IL_00a7:  ldc.i4.2
    IL_00a8:  ret

    IL_00a9:  ldc.i4.3
    IL_00aa:  ret

    IL_00ab:  ldc.i4.4
    IL_00ac:  ret

    IL_00ad:  ldc.i4.6
    IL_00ae:  ret

    IL_00af:  ldc.i4.7
    IL_00b0:  ret

    IL_00b1:  ldc.i4.8
    IL_00b2:  ret

    IL_00b3:  ldc.i4.5
    IL_00b4:  ret

    IL_00b5:  ldarg.1
    IL_00b6:  ldarg.1
    IL_00b7:  ldind.i4
    IL_00b8:  ldc.i4.1
    IL_00b9:  sub
    IL_00ba:  stind.i4
    IL_00bb:  ldarg.0
    IL_00bc:  ldlen
    IL_00bd:  conv.i4
    IL_00be:  ldarg.1
    IL_00bf:  ldind.i4
    IL_00c0:  sub
    IL_00c1:  stloc.1
    IL_00c2:  ldloc.1
    IL_00c3:  ldc.i4.5
    IL_00c4:  blt.s      IL_00ff

    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.1
    IL_00c8:  ldind.i4
    IL_00c9:  ldelem.u2
    IL_00ca:  ldc.i4.s   102
    IL_00cc:  bne.un.s   IL_00ff

    IL_00ce:  ldarg.0
    IL_00cf:  ldarg.1
    IL_00d0:  ldind.i4
    IL_00d1:  ldc.i4.1
    IL_00d2:  add
    IL_00d3:  ldelem.u2
    IL_00d4:  ldc.i4.s   97
    IL_00d6:  bne.un.s   IL_00ff

    IL_00d8:  ldarg.0
    IL_00d9:  ldarg.1
    IL_00da:  ldind.i4
    IL_00db:  ldc.i4.2
    IL_00dc:  add
    IL_00dd:  ldelem.u2
    IL_00de:  ldc.i4.s   108
    IL_00e0:  bne.un.s   IL_00ff

    IL_00e2:  ldarg.0
    IL_00e3:  ldarg.1
    IL_00e4:  ldind.i4
    IL_00e5:  ldc.i4.3
    IL_00e6:  add
    IL_00e7:  ldelem.u2
    IL_00e8:  ldc.i4.s   115
    IL_00ea:  bne.un.s   IL_00ff

    IL_00ec:  ldarg.0
    IL_00ed:  ldarg.1
    IL_00ee:  ldind.i4
    IL_00ef:  ldc.i4.4
    IL_00f0:  add
    IL_00f1:  ldelem.u2
    IL_00f2:  ldc.i4.s   101
    IL_00f4:  bne.un.s   IL_00ff

    IL_00f6:  ldarg.1
    IL_00f7:  ldarg.1
    IL_00f8:  ldind.i4
    IL_00f9:  ldc.i4.5
    IL_00fa:  add
    IL_00fb:  stind.i4
    IL_00fc:  ldc.i4.s   10
    IL_00fe:  ret

    IL_00ff:  ldloc.1
    IL_0100:  ldc.i4.4
    IL_0101:  blt.s      IL_0132

    IL_0103:  ldarg.0
    IL_0104:  ldarg.1
    IL_0105:  ldind.i4
    IL_0106:  ldelem.u2
    IL_0107:  ldc.i4.s   116
    IL_0109:  bne.un.s   IL_0132

    IL_010b:  ldarg.0
    IL_010c:  ldarg.1
    IL_010d:  ldind.i4
    IL_010e:  ldc.i4.1
    IL_010f:  add
    IL_0110:  ldelem.u2
    IL_0111:  ldc.i4.s   114
    IL_0113:  bne.un.s   IL_0132

    IL_0115:  ldarg.0
    IL_0116:  ldarg.1
    IL_0117:  ldind.i4
    IL_0118:  ldc.i4.2
    IL_0119:  add
    IL_011a:  ldelem.u2
    IL_011b:  ldc.i4.s   117
    IL_011d:  bne.un.s   IL_0132

    IL_011f:  ldarg.0
    IL_0120:  ldarg.1
    IL_0121:  ldind.i4
    IL_0122:  ldc.i4.3
    IL_0123:  add
    IL_0124:  ldelem.u2
    IL_0125:  ldc.i4.s   101
    IL_0127:  bne.un.s   IL_0132

    IL_0129:  ldarg.1
    IL_012a:  ldarg.1
    IL_012b:  ldind.i4
    IL_012c:  ldc.i4.4
    IL_012d:  add
    IL_012e:  stind.i4
    IL_012f:  ldc.i4.s   9
    IL_0131:  ret

    IL_0132:  ldloc.1
    IL_0133:  ldc.i4.4
    IL_0134:  blt.s      IL_0165

    IL_0136:  ldarg.0
    IL_0137:  ldarg.1
    IL_0138:  ldind.i4
    IL_0139:  ldelem.u2
    IL_013a:  ldc.i4.s   110
    IL_013c:  bne.un.s   IL_0165

    IL_013e:  ldarg.0
    IL_013f:  ldarg.1
    IL_0140:  ldind.i4
    IL_0141:  ldc.i4.1
    IL_0142:  add
    IL_0143:  ldelem.u2
    IL_0144:  ldc.i4.s   117
    IL_0146:  bne.un.s   IL_0165

    IL_0148:  ldarg.0
    IL_0149:  ldarg.1
    IL_014a:  ldind.i4
    IL_014b:  ldc.i4.2
    IL_014c:  add
    IL_014d:  ldelem.u2
    IL_014e:  ldc.i4.s   108
    IL_0150:  bne.un.s   IL_0165

    IL_0152:  ldarg.0
    IL_0153:  ldarg.1
    IL_0154:  ldind.i4
    IL_0155:  ldc.i4.3
    IL_0156:  add
    IL_0157:  ldelem.u2
    IL_0158:  ldc.i4.s   108
    IL_015a:  bne.un.s   IL_0165

    IL_015c:  ldarg.1
    IL_015d:  ldarg.1
    IL_015e:  ldind.i4
    IL_015f:  ldc.i4.4
    IL_0160:  add
    IL_0161:  stind.i4
    IL_0162:  ldc.i4.s   11
    IL_0164:  ret

    IL_0165:  ldc.i4.0
    IL_0166:  ret
  } // end of method SimpleJson::NextToken

  .method private hidebysig static bool  SerializeValue(class SimpleJson.IJsonSerializerStrategy jsonSerializerStrategy,
                                                        object 'value',
                                                        class [System.Runtime]System.Text.StringBuilder builder) cil managed
  {
    // 代码大小       213 (0xd5)
    .maxstack  4
    .locals init (bool V_0,
             string V_1,
             class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object> V_2,
             class [System.Runtime]System.Collections.Generic.IDictionary`2<string,string> V_3,
             class [System.Runtime]System.Collections.IEnumerable V_4,
             object V_5)
    IL_0000:  ldc.i4.1
    IL_0001:  stloc.0
    IL_0002:  ldarg.1
    IL_0003:  isinst     [System.Runtime]System.String
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  brfalse.s  IL_0019

    IL_000c:  ldloc.1
    IL_000d:  ldarg.2
    IL_000e:  call       bool SimpleJson.SimpleJson::SerializeString(string,
                                                                     class [System.Runtime]System.Text.StringBuilder)
    IL_0013:  stloc.0
    IL_0014:  br         IL_00d3

    IL_0019:  ldarg.1
    IL_001a:  isinst     class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>
    IL_001f:  stloc.2
    IL_0020:  ldloc.2
    IL_0021:  brfalse.s  IL_003c

    IL_0023:  ldarg.0
    IL_0024:  ldloc.2
    IL_0025:  callvirt   instance class [System.Runtime]System.Collections.Generic.ICollection`1<!0> class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>::get_Keys()
    IL_002a:  ldloc.2
    IL_002b:  callvirt   instance class [System.Runtime]System.Collections.Generic.ICollection`1<!1> class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>::get_Values()
    IL_0030:  ldarg.2
    IL_0031:  call       bool SimpleJson.SimpleJson::SerializeObject(class SimpleJson.IJsonSerializerStrategy,
                                                                     class [System.Runtime]System.Collections.IEnumerable,
                                                                     class [System.Runtime]System.Collections.IEnumerable,
                                                                     class [System.Runtime]System.Text.StringBuilder)
    IL_0036:  stloc.0
    IL_0037:  br         IL_00d3

    IL_003c:  ldarg.1
    IL_003d:  isinst     class [System.Runtime]System.Collections.Generic.IDictionary`2<string,string>
    IL_0042:  stloc.3
    IL_0043:  ldloc.3
    IL_0044:  brfalse.s  IL_005c

    IL_0046:  ldarg.0
    IL_0047:  ldloc.3
    IL_0048:  callvirt   instance class [System.Runtime]System.Collections.Generic.ICollection`1<!0> class [System.Runtime]System.Collections.Generic.IDictionary`2<string,string>::get_Keys()
    IL_004d:  ldloc.3
    IL_004e:  callvirt   instance class [System.Runtime]System.Collections.Generic.ICollection`1<!1> class [System.Runtime]System.Collections.Generic.IDictionary`2<string,string>::get_Values()
    IL_0053:  ldarg.2
    IL_0054:  call       bool SimpleJson.SimpleJson::SerializeObject(class SimpleJson.IJsonSerializerStrategy,
                                                                     class [System.Runtime]System.Collections.IEnumerable,
                                                                     class [System.Runtime]System.Collections.IEnumerable,
                                                                     class [System.Runtime]System.Text.StringBuilder)
    IL_0059:  stloc.0
    IL_005a:  br.s       IL_00d3

    IL_005c:  ldarg.1
    IL_005d:  isinst     [System.Runtime]System.Collections.IEnumerable
    IL_0062:  stloc.s    V_4
    IL_0064:  ldloc.s    V_4
    IL_0066:  brfalse.s  IL_0074

    IL_0068:  ldarg.0
    IL_0069:  ldloc.s    V_4
    IL_006b:  ldarg.2
    IL_006c:  call       bool SimpleJson.SimpleJson::SerializeArray(class SimpleJson.IJsonSerializerStrategy,
                                                                    class [System.Runtime]System.Collections.IEnumerable,
                                                                    class [System.Runtime]System.Text.StringBuilder)
    IL_0071:  stloc.0
    IL_0072:  br.s       IL_00d3

    IL_0074:  ldarg.1
    IL_0075:  call       bool SimpleJson.SimpleJson::IsNumeric(object)
    IL_007a:  brfalse.s  IL_0086

    IL_007c:  ldarg.1
    IL_007d:  ldarg.2
    IL_007e:  call       bool SimpleJson.SimpleJson::SerializeNumber(object,
                                                                     class [System.Runtime]System.Text.StringBuilder)
    IL_0083:  stloc.0
    IL_0084:  br.s       IL_00d3

    IL_0086:  ldarg.1
    IL_0087:  isinst     [System.Runtime]System.Boolean
    IL_008c:  brfalse.s  IL_00ab

    IL_008e:  ldarg.2
    IL_008f:  ldarg.1
    IL_0090:  unbox.any  [System.Runtime]System.Boolean
    IL_0095:  brtrue.s   IL_009e

    IL_0097:  ldstr      "false"
    IL_009c:  br.s       IL_00a3

    IL_009e:  ldstr      "true"
    IL_00a3:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_00a8:  pop
    IL_00a9:  br.s       IL_00d3

    IL_00ab:  ldarg.1
    IL_00ac:  brtrue.s   IL_00bc

    IL_00ae:  ldarg.2
    IL_00af:  ldstr      "null"
    IL_00b4:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_00b9:  pop
    IL_00ba:  br.s       IL_00d3

    IL_00bc:  ldarg.0
    IL_00bd:  ldarg.1
    IL_00be:  ldloca.s   V_5
    IL_00c0:  callvirt   instance bool SimpleJson.IJsonSerializerStrategy::TrySerializeNonPrimitiveObject(object,
                                                                                                          object&)
    IL_00c5:  stloc.0
    IL_00c6:  ldloc.0
    IL_00c7:  brfalse.s  IL_00d3

    IL_00c9:  ldarg.0
    IL_00ca:  ldloc.s    V_5
    IL_00cc:  ldarg.2
    IL_00cd:  call       bool SimpleJson.SimpleJson::SerializeValue(class SimpleJson.IJsonSerializerStrategy,
                                                                    object,
                                                                    class [System.Runtime]System.Text.StringBuilder)
    IL_00d2:  pop
    IL_00d3:  ldloc.0
    IL_00d4:  ret
  } // end of method SimpleJson::SerializeValue

  .method private hidebysig static bool  SerializeObject(class SimpleJson.IJsonSerializerStrategy jsonSerializerStrategy,
                                                         class [System.Runtime]System.Collections.IEnumerable keys,
                                                         class [System.Runtime]System.Collections.IEnumerable values,
                                                         class [System.Runtime]System.Text.StringBuilder builder) cil managed
  {
    // 代码大小       148 (0x94)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.IEnumerator V_0,
             class [System.Runtime]System.Collections.IEnumerator V_1,
             bool V_2,
             object V_3,
             string V_4)
    IL_0000:  ldarg.3
    IL_0001:  ldstr      "{"
    IL_0006:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_000b:  pop
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class [System.Runtime]System.Collections.IEnumerator [System.Runtime]System.Collections.IEnumerable::GetEnumerator()
    IL_0012:  stloc.0
    IL_0013:  ldarg.2
    IL_0014:  callvirt   instance class [System.Runtime]System.Collections.IEnumerator [System.Runtime]System.Collections.IEnumerable::GetEnumerator()
    IL_0019:  stloc.1
    IL_001a:  ldc.i4.1
    IL_001b:  stloc.2
    IL_001c:  br.s       IL_0076

    IL_001e:  ldloc.0
    IL_001f:  callvirt   instance object [System.Runtime]System.Collections.IEnumerator::get_Current()
    IL_0024:  ldloc.1
    IL_0025:  callvirt   instance object [System.Runtime]System.Collections.IEnumerator::get_Current()
    IL_002a:  stloc.3
    IL_002b:  ldloc.2
    IL_002c:  brtrue.s   IL_003a

    IL_002e:  ldarg.3
    IL_002f:  ldstr      ","
    IL_0034:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0039:  pop
    IL_003a:  isinst     [System.Runtime]System.String
    IL_003f:  stloc.s    V_4
    IL_0041:  ldloc.s    V_4
    IL_0043:  brfalse.s  IL_0050

    IL_0045:  ldloc.s    V_4
    IL_0047:  ldarg.3
    IL_0048:  call       bool SimpleJson.SimpleJson::SerializeString(string,
                                                                     class [System.Runtime]System.Text.StringBuilder)
    IL_004d:  pop
    IL_004e:  br.s       IL_005c

    IL_0050:  ldarg.0
    IL_0051:  ldloc.3
    IL_0052:  ldarg.3
    IL_0053:  call       bool SimpleJson.SimpleJson::SerializeValue(class SimpleJson.IJsonSerializerStrategy,
                                                                    object,
                                                                    class [System.Runtime]System.Text.StringBuilder)
    IL_0058:  brtrue.s   IL_005c

    IL_005a:  ldc.i4.0
    IL_005b:  ret

    IL_005c:  ldarg.3
    IL_005d:  ldstr      ":"
    IL_0062:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0067:  pop
    IL_0068:  ldarg.0
    IL_0069:  ldloc.3
    IL_006a:  ldarg.3
    IL_006b:  call       bool SimpleJson.SimpleJson::SerializeValue(class SimpleJson.IJsonSerializerStrategy,
                                                                    object,
                                                                    class [System.Runtime]System.Text.StringBuilder)
    IL_0070:  brtrue.s   IL_0074

    IL_0072:  ldc.i4.0
    IL_0073:  ret

    IL_0074:  ldc.i4.0
    IL_0075:  stloc.2
    IL_0076:  ldloc.0
    IL_0077:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
    IL_007c:  brfalse.s  IL_0086

    IL_007e:  ldloc.1
    IL_007f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
    IL_0084:  brtrue.s   IL_001e

    IL_0086:  ldarg.3
    IL_0087:  ldstr      "}"
    IL_008c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0091:  pop
    IL_0092:  ldc.i4.1
    IL_0093:  ret
  } // end of method SimpleJson::SerializeObject

  .method private hidebysig static bool  SerializeArray(class SimpleJson.IJsonSerializerStrategy jsonSerializerStrategy,
                                                        class [System.Runtime]System.Collections.IEnumerable anArray,
                                                        class [System.Runtime]System.Text.StringBuilder builder) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  3
    .locals init (bool V_0,
             class [System.Runtime]System.Collections.IEnumerator V_1,
             object V_2,
             bool V_3,
             class [System.Runtime]System.IDisposable V_4)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "["
    IL_0006:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_000b:  pop
    IL_000c:  ldc.i4.1
    IL_000d:  stloc.0
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance class [System.Runtime]System.Collections.IEnumerator [System.Runtime]System.Collections.IEnumerable::GetEnumerator()
    IL_0014:  stloc.1
    .try
    {
      IL_0015:  br.s       IL_003d

      IL_0017:  ldloc.1
      IL_0018:  callvirt   instance object [System.Runtime]System.Collections.IEnumerator::get_Current()
      IL_001d:  stloc.2
      IL_001e:  ldloc.0
      IL_001f:  brtrue.s   IL_002d

      IL_0021:  ldarg.2
      IL_0022:  ldstr      ","
      IL_0027:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_002c:  pop
      IL_002d:  ldarg.0
      IL_002e:  ldloc.2
      IL_002f:  ldarg.2
      IL_0030:  call       bool SimpleJson.SimpleJson::SerializeValue(class SimpleJson.IJsonSerializerStrategy,
                                                                      object,
                                                                      class [System.Runtime]System.Text.StringBuilder)
      IL_0035:  brtrue.s   IL_003b

      IL_0037:  ldc.i4.0
      IL_0038:  stloc.3
      IL_0039:  leave.s    IL_0069

      IL_003b:  ldc.i4.0
      IL_003c:  stloc.0
      IL_003d:  ldloc.1
      IL_003e:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0043:  brtrue.s   IL_0017

      IL_0045:  leave.s    IL_005b

    }  // end .try
    finally
    {
      IL_0047:  ldloc.1
      IL_0048:  isinst     [System.Runtime]System.IDisposable
      IL_004d:  stloc.s    V_4
      IL_004f:  ldloc.s    V_4
      IL_0051:  brfalse.s  IL_005a

      IL_0053:  ldloc.s    V_4
      IL_0055:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005a:  endfinally
    }  // end handler
    IL_005b:  ldarg.2
    IL_005c:  ldstr      "]"
    IL_0061:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0066:  pop
    IL_0067:  ldc.i4.1
    IL_0068:  ret

    IL_0069:  ldloc.3
    IL_006a:  ret
  } // end of method SimpleJson::SerializeArray

  .method private hidebysig static bool  SerializeString(string aString,
                                                         class [System.Runtime]System.Text.StringBuilder builder) cil managed
  {
    // 代码大小       173 (0xad)
    .maxstack  4
    .locals init (int32 V_0,
             char[] V_1,
             int32 V_2,
             char V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     char[] SimpleJson.SimpleJson::EscapeCharacters
    IL_0006:  callvirt   instance int32 [System.Runtime]System.String::IndexOfAny(char[])
    IL_000b:  ldc.i4.m1
    IL_000c:  bne.un.s   IL_002a

    IL_000e:  ldarg.1
    IL_000f:  ldc.i4.s   34
    IL_0011:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0016:  pop
    IL_0017:  ldarg.1
    IL_0018:  ldarg.0
    IL_0019:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_001e:  pop
    IL_001f:  ldarg.1
    IL_0020:  ldc.i4.s   34
    IL_0022:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0027:  pop
    IL_0028:  ldc.i4.1
    IL_0029:  ret

    IL_002a:  ldarg.1
    IL_002b:  ldc.i4.s   34
    IL_002d:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0032:  pop
    IL_0033:  ldc.i4.0
    IL_0034:  stloc.0
    IL_0035:  ldarg.0
    IL_0036:  callvirt   instance char[] [System.Runtime]System.String::ToCharArray()
    IL_003b:  stloc.1
    IL_003c:  ldc.i4.0
    IL_003d:  stloc.2
    IL_003e:  br.s       IL_008a

    IL_0040:  ldloc.1
    IL_0041:  ldloc.2
    IL_0042:  ldelem.u2
    IL_0043:  stloc.3
    IL_0044:  ldloc.3
    IL_0045:  ldsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_004a:  ldlen
    IL_004b:  conv.i4
    IL_004c:  bge.s      IL_0057

    IL_004e:  ldsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_0053:  ldloc.3
    IL_0054:  ldelem.u2
    IL_0055:  brtrue.s   IL_005d

    IL_0057:  ldloc.0
    IL_0058:  ldc.i4.1
    IL_0059:  add
    IL_005a:  stloc.0
    IL_005b:  br.s       IL_0086

    IL_005d:  ldloc.0
    IL_005e:  ldc.i4.0
    IL_005f:  ble.s      IL_006f

    IL_0061:  ldarg.1
    IL_0062:  ldloc.1
    IL_0063:  ldloc.2
    IL_0064:  ldloc.0
    IL_0065:  sub
    IL_0066:  ldloc.0
    IL_0067:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char[],
                                                                                                                                    int32,
                                                                                                                                    int32)
    IL_006c:  pop
    IL_006d:  ldc.i4.0
    IL_006e:  stloc.0
    IL_006f:  ldarg.1
    IL_0070:  ldc.i4.s   92
    IL_0072:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0077:  pop
    IL_0078:  ldarg.1
    IL_0079:  ldsfld     char[] SimpleJson.SimpleJson::EscapeTable
    IL_007e:  ldloc.3
    IL_007f:  ldelem.u2
    IL_0080:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0085:  pop
    IL_0086:  ldloc.2
    IL_0087:  ldc.i4.1
    IL_0088:  add
    IL_0089:  stloc.2
    IL_008a:  ldloc.2
    IL_008b:  ldloc.1
    IL_008c:  ldlen
    IL_008d:  conv.i4
    IL_008e:  blt.s      IL_0040

    IL_0090:  ldloc.0
    IL_0091:  ldc.i4.0
    IL_0092:  ble.s      IL_00a2

    IL_0094:  ldarg.1
    IL_0095:  ldloc.1
    IL_0096:  ldloc.1
    IL_0097:  ldlen
    IL_0098:  conv.i4
    IL_0099:  ldloc.0
    IL_009a:  sub
    IL_009b:  ldloc.0
    IL_009c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char[],
                                                                                                                                    int32,
                                                                                                                                    int32)
    IL_00a1:  pop
    IL_00a2:  ldarg.1
    IL_00a3:  ldc.i4.s   34
    IL_00a5:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00aa:  pop
    IL_00ab:  ldc.i4.1
    IL_00ac:  ret
  } // end of method SimpleJson::SerializeString

  .method private hidebysig static bool  SerializeNumber(object number,
                                                         class [System.Runtime]System.Text.StringBuilder builder) cil managed
  {
    // 代码大小       266 (0x10a)
    .maxstack  4
    .locals init (int64 V_0,
             uint64 V_1,
             int32 V_2,
             uint32 V_3,
             valuetype [System.Runtime]System.Decimal V_4,
             float32 V_5,
             float64 V_6)
    IL_0000:  ldarg.0
    IL_0001:  isinst     [System.Runtime]System.Int64
    IL_0006:  brfalse.s  IL_0027

    IL_0008:  ldarg.1
    IL_0009:  ldarg.0
    IL_000a:  unbox.any  [System.Runtime]System.Int64
    IL_000f:  stloc.0
    IL_0010:  ldloca.s   V_0
    IL_0012:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0017:  call       instance string [System.Runtime]System.Int64::ToString(class [System.Runtime]System.IFormatProvider)
    IL_001c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0021:  pop
    IL_0022:  br         IL_0108

    IL_0027:  ldarg.0
    IL_0028:  isinst     [System.Runtime]System.UInt64
    IL_002d:  brfalse.s  IL_004e

    IL_002f:  ldarg.1
    IL_0030:  ldarg.0
    IL_0031:  unbox.any  [System.Runtime]System.UInt64
    IL_0036:  stloc.1
    IL_0037:  ldloca.s   V_1
    IL_0039:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_003e:  call       instance string [System.Runtime]System.UInt64::ToString(class [System.Runtime]System.IFormatProvider)
    IL_0043:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0048:  pop
    IL_0049:  br         IL_0108

    IL_004e:  ldarg.0
    IL_004f:  isinst     [System.Runtime]System.Int32
    IL_0054:  brfalse.s  IL_0075

    IL_0056:  ldarg.1
    IL_0057:  ldarg.0
    IL_0058:  unbox.any  [System.Runtime]System.Int32
    IL_005d:  stloc.2
    IL_005e:  ldloca.s   V_2
    IL_0060:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0065:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
    IL_006a:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_006f:  pop
    IL_0070:  br         IL_0108

    IL_0075:  ldarg.0
    IL_0076:  isinst     [System.Runtime]System.UInt32
    IL_007b:  brfalse.s  IL_0099

    IL_007d:  ldarg.1
    IL_007e:  ldarg.0
    IL_007f:  unbox.any  [System.Runtime]System.UInt32
    IL_0084:  stloc.3
    IL_0085:  ldloca.s   V_3
    IL_0087:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_008c:  call       instance string [System.Runtime]System.UInt32::ToString(class [System.Runtime]System.IFormatProvider)
    IL_0091:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0096:  pop
    IL_0097:  br.s       IL_0108

    IL_0099:  ldarg.0
    IL_009a:  isinst     [System.Runtime]System.Decimal
    IL_009f:  brfalse.s  IL_00be

    IL_00a1:  ldarg.1
    IL_00a2:  ldarg.0
    IL_00a3:  unbox.any  [System.Runtime]System.Decimal
    IL_00a8:  stloc.s    V_4
    IL_00aa:  ldloca.s   V_4
    IL_00ac:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_00b1:  call       instance string [System.Runtime]System.Decimal::ToString(class [System.Runtime]System.IFormatProvider)
    IL_00b6:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_00bb:  pop
    IL_00bc:  br.s       IL_0108

    IL_00be:  ldarg.0
    IL_00bf:  isinst     [System.Runtime]System.Single
    IL_00c4:  brfalse.s  IL_00e3

    IL_00c6:  ldarg.1
    IL_00c7:  ldarg.0
    IL_00c8:  unbox.any  [System.Runtime]System.Single
    IL_00cd:  stloc.s    V_5
    IL_00cf:  ldloca.s   V_5
    IL_00d1:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_00d6:  call       instance string [System.Runtime]System.Single::ToString(class [System.Runtime]System.IFormatProvider)
    IL_00db:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_00e0:  pop
    IL_00e1:  br.s       IL_0108

    IL_00e3:  ldarg.1
    IL_00e4:  ldarg.0
    IL_00e5:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_00ea:  call       float64 [System.Runtime.Extensions]System.Convert::ToDouble(object,
                                                                                     class [System.Runtime]System.IFormatProvider)
    IL_00ef:  stloc.s    V_6
    IL_00f1:  ldloca.s   V_6
    IL_00f3:  ldstr      "r"
    IL_00f8:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_00fd:  call       instance string [System.Runtime]System.Double::ToString(string,
                                                                                 class [System.Runtime]System.IFormatProvider)
    IL_0102:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0107:  pop
    IL_0108:  ldc.i4.1
    IL_0109:  ret
  } // end of method SimpleJson::SerializeNumber

  .method private hidebysig static bool  IsNumeric(object 'value') cil managed
  {
    // 代码大小       112 (0x70)
    .maxstack  1
    IL_0000:  ldarg.0
    IL_0001:  isinst     [System.Runtime]System.SByte
    IL_0006:  brfalse.s  IL_000a

    IL_0008:  ldc.i4.1
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  isinst     [System.Runtime]System.Byte
    IL_0010:  brfalse.s  IL_0014

    IL_0012:  ldc.i4.1
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  isinst     [System.Runtime]System.Int16
    IL_001a:  brfalse.s  IL_001e

    IL_001c:  ldc.i4.1
    IL_001d:  ret

    IL_001e:  ldarg.0
    IL_001f:  isinst     [System.Runtime]System.UInt16
    IL_0024:  brfalse.s  IL_0028

    IL_0026:  ldc.i4.1
    IL_0027:  ret

    IL_0028:  ldarg.0
    IL_0029:  isinst     [System.Runtime]System.Int32
    IL_002e:  brfalse.s  IL_0032

    IL_0030:  ldc.i4.1
    IL_0031:  ret

    IL_0032:  ldarg.0
    IL_0033:  isinst     [System.Runtime]System.UInt32
    IL_0038:  brfalse.s  IL_003c

    IL_003a:  ldc.i4.1
    IL_003b:  ret

    IL_003c:  ldarg.0
    IL_003d:  isinst     [System.Runtime]System.Int64
    IL_0042:  brfalse.s  IL_0046

    IL_0044:  ldc.i4.1
    IL_0045:  ret

    IL_0046:  ldarg.0
    IL_0047:  isinst     [System.Runtime]System.UInt64
    IL_004c:  brfalse.s  IL_0050

    IL_004e:  ldc.i4.1
    IL_004f:  ret

    IL_0050:  ldarg.0
    IL_0051:  isinst     [System.Runtime]System.Single
    IL_0056:  brfalse.s  IL_005a

    IL_0058:  ldc.i4.1
    IL_0059:  ret

    IL_005a:  ldarg.0
    IL_005b:  isinst     [System.Runtime]System.Double
    IL_0060:  brfalse.s  IL_0064

    IL_0062:  ldc.i4.1
    IL_0063:  ret

    IL_0064:  ldarg.0
    IL_0065:  isinst     [System.Runtime]System.Decimal
    IL_006a:  brfalse.s  IL_006e

    IL_006c:  ldc.i4.1
    IL_006d:  ret

    IL_006e:  ldc.i4.0
    IL_006f:  ret
  } // end of method SimpleJson::IsNumeric

  .method public hidebysig specialname static 
          class SimpleJson.IJsonSerializerStrategy 
          get_CurrentJsonSerializerStrategy() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldsfld     class SimpleJson.IJsonSerializerStrategy SimpleJson.SimpleJson::_currentJsonSerializerStrategy
    IL_0005:  dup
    IL_0006:  brtrue.s   IL_0014

    IL_0008:  pop
    IL_0009:  call       class SimpleJson.PocoJsonSerializerStrategy SimpleJson.SimpleJson::get_PocoJsonSerializerStrategy()
    IL_000e:  dup
    IL_000f:  stsfld     class SimpleJson.IJsonSerializerStrategy SimpleJson.SimpleJson::_currentJsonSerializerStrategy
    IL_0014:  ret
  } // end of method SimpleJson::get_CurrentJsonSerializerStrategy

  .method public hidebysig specialname static 
          void  set_CurrentJsonSerializerStrategy(class SimpleJson.IJsonSerializerStrategy 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     class SimpleJson.IJsonSerializerStrategy SimpleJson.SimpleJson::_currentJsonSerializerStrategy
    IL_0006:  ret
  } // end of method SimpleJson::set_CurrentJsonSerializerStrategy

  .method public hidebysig specialname static 
          class SimpleJson.PocoJsonSerializerStrategy 
          get_PocoJsonSerializerStrategy() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldsfld     class SimpleJson.PocoJsonSerializerStrategy SimpleJson.SimpleJson::_pocoJsonSerializerStrategy
    IL_0005:  dup
    IL_0006:  brtrue.s   IL_0014

    IL_0008:  pop
    IL_0009:  newobj     instance void SimpleJson.PocoJsonSerializerStrategy::.ctor()
    IL_000e:  dup
    IL_000f:  stsfld     class SimpleJson.PocoJsonSerializerStrategy SimpleJson.SimpleJson::_pocoJsonSerializerStrategy
    IL_0014:  ret
  } // end of method SimpleJson::get_PocoJsonSerializerStrategy

  .property class SimpleJson.IJsonSerializerStrategy
          CurrentJsonSerializerStrategy()
  {
    .get class SimpleJson.IJsonSerializerStrategy SimpleJson.SimpleJson::get_CurrentJsonSerializerStrategy()
    .set void SimpleJson.SimpleJson::set_CurrentJsonSerializerStrategy(class SimpleJson.IJsonSerializerStrategy)
  } // end of property SimpleJson::CurrentJsonSerializerStrategy
  .property class SimpleJson.PocoJsonSerializerStrategy
          PocoJsonSerializerStrategy()
  {
    .custom instance void [System.Runtime]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System.Runtime]System.ComponentModel.EditorBrowsableState) = ( 01 00 02 00 00 00 00 00 ) 
    .get class SimpleJson.PocoJsonSerializerStrategy SimpleJson.SimpleJson::get_PocoJsonSerializerStrategy()
  } // end of property SimpleJson::PocoJsonSerializerStrategy
} // end of class SimpleJson.SimpleJson