.class public auto ansi beforefieldinit Game.WorldPalette
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.WorldPalette/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<string,int32,valuetype [Engine]Engine.Color> '<>9__7_0'
    .field public static class [System.Runtime]System.Func`3<string,int32,string> '<>9__7_1'
    .field public static class [System.Runtime]System.Func`3<valuetype [Engine]Engine.Color,int32,string> '<>9__8_0'
    .field public static class [System.Runtime]System.Func`3<string,int32,string> '<>9__8_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.WorldPalette/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.WorldPalette/'<>c' Game.WorldPalette/'<>c'::'<>9'
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

    .method assembly hidebysig instance valuetype [Engine]Engine.Color 
            '<.ctor>b__7_0'(string s,
                            int32 i) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0006:  brtrue.s   IL_000f

      IL_0008:  ldarg.1
      IL_0009:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<valuetype [Engine]Engine.Color>(string)
      IL_000e:  ret

      IL_000f:  ldsfld     valuetype [Engine]Engine.Color[] Game.WorldPalette::DefaultColors
      IL_0014:  ldarg.2
      IL_0015:  ldelem     [Engine]Engine.Color
      IL_001a:  ret
    } // end of method '<>c'::'<.ctor>b__7_0'

    .method assembly hidebysig instance string 
            '<.ctor>b__7_1'(string s,
                            int32 i) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0006:  brtrue.s   IL_000a

      IL_0008:  ldarg.1
      IL_0009:  ret

      IL_000a:  ldsfld     string[] Game.WorldPalette::DefaultNames
      IL_000f:  ldarg.2
      IL_0010:  ldelem.ref
      IL_0011:  ret
    } // end of method '<>c'::'<.ctor>b__7_1'

    .method assembly hidebysig instance string 
            '<Save>b__8_0'(valuetype [Engine]Engine.Color c,
                           int32 i) cil managed
    {
      // 代码大小       37 (0x25)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldsfld     valuetype [Engine]Engine.Color[] Game.WorldPalette::DefaultColors
      IL_0006:  ldarg.2
      IL_0007:  ldelem     [Engine]Engine.Color
      IL_000c:  call       bool [Engine]Engine.Color::op_Equality(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
      IL_0011:  brtrue.s   IL_001f

      IL_0013:  ldarg.1
      IL_0014:  box        [Engine]Engine.Color
      IL_0019:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
      IL_001e:  ret

      IL_001f:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0024:  ret
    } // end of method '<>c'::'<Save>b__8_0'

    .method assembly hidebysig instance string 
            '<Save>b__8_1'(string n,
                           int32 i) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldsfld     string[] Game.WorldPalette::DefaultNames
      IL_0006:  ldarg.2
      IL_0007:  ldelem.ref
      IL_0008:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_000d:  brtrue.s   IL_0011

      IL_000f:  ldarg.1
      IL_0010:  ret

      IL_0011:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0016:  ret
    } // end of method '<>c'::'<Save>b__8_1'

  } // end of class '<>c'

  .field public static literal int32 MaxColors = int32(0x00000010)
  .field public static literal int32 MaxNameLength = int32(0x00000010)
  .field public static initonly valuetype [Engine]Engine.Color[] DefaultColors
  .field public static initonly string[] DefaultNames
  .field public valuetype [Engine]Engine.Color[] Colors
  .field public string[] Names
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldsfld     valuetype [Engine]Engine.Color[] Game.WorldPalette::DefaultColors
    IL_000c:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype [Engine]Engine.Color>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0011:  stfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
    IL_0016:  ldarg.0
    IL_0017:  ldsfld     string[] Game.WorldPalette::DefaultNames
    IL_001c:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0021:  stfld      string[] Game.WorldPalette::Names
    IL_0026:  ret
  } // end of method WorldPalette::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       255 (0xff)
    .maxstack  5
    .locals init (string[] V_0,
             string[] V_1,
             string[] V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "Colors"
    IL_000c:  ldc.i4.s   59
    IL_000e:  ldc.i4.s   15
    IL_0010:  newobj     instance void [System.Runtime]System.String::.ctor(char,
                                                                            int32)
    IL_0015:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_001a:  ldc.i4.1
    IL_001b:  newarr     [System.Runtime]System.Char
    IL_0020:  dup
    IL_0021:  ldc.i4.0
    IL_0022:  ldc.i4.s   59
    IL_0024:  stelem.i2
    IL_0025:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldlen
    IL_002d:  conv.i4
    IL_002e:  ldc.i4.s   16
    IL_0030:  beq.s      IL_003d

    IL_0032:  ldstr      "Invalid colors."
    IL_0037:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_003c:  throw

    IL_003d:  ldarg.0
    IL_003e:  ldloc.0
    IL_003f:  ldsfld     class [System.Runtime]System.Func`3<string,int32,valuetype [Engine]Engine.Color> Game.WorldPalette/'<>c'::'<>9__7_0'
    IL_0044:  dup
    IL_0045:  brtrue.s   IL_005e

    IL_0047:  pop
    IL_0048:  ldsfld     class Game.WorldPalette/'<>c' Game.WorldPalette/'<>c'::'<>9'
    IL_004d:  ldftn      instance valuetype [Engine]Engine.Color Game.WorldPalette/'<>c'::'<.ctor>b__7_0'(string,
                                                                                                          int32)
    IL_0053:  newobj     instance void class [System.Runtime]System.Func`3<string,int32,valuetype [Engine]Engine.Color>::.ctor(object,
                                                                                                                               native int)
    IL_0058:  dup
    IL_0059:  stsfld     class [System.Runtime]System.Func`3<string,int32,valuetype [Engine]Engine.Color> Game.WorldPalette/'<>c'::'<>9__7_0'
    IL_005e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<string,valuetype [Engine]Engine.Color>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                class [System.Runtime]System.Func`3<!!0,int32,!!1>)
    IL_0063:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype [Engine]Engine.Color>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0068:  stfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
    IL_006d:  ldarg.1
    IL_006e:  ldstr      "Names"
    IL_0073:  ldc.i4.s   59
    IL_0075:  ldc.i4.s   15
    IL_0077:  newobj     instance void [System.Runtime]System.String::.ctor(char,
                                                                            int32)
    IL_007c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_0081:  ldc.i4.1
    IL_0082:  newarr     [System.Runtime]System.Char
    IL_0087:  dup
    IL_0088:  ldc.i4.0
    IL_0089:  ldc.i4.s   59
    IL_008b:  stelem.i2
    IL_008c:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0091:  stloc.1
    IL_0092:  ldloc.1
    IL_0093:  ldlen
    IL_0094:  conv.i4
    IL_0095:  ldc.i4.s   16
    IL_0097:  beq.s      IL_00a4

    IL_0099:  ldstr      "Invalid color names."
    IL_009e:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00a3:  throw

    IL_00a4:  ldarg.0
    IL_00a5:  ldloc.1
    IL_00a6:  ldsfld     class [System.Runtime]System.Func`3<string,int32,string> Game.WorldPalette/'<>c'::'<>9__7_1'
    IL_00ab:  dup
    IL_00ac:  brtrue.s   IL_00c5

    IL_00ae:  pop
    IL_00af:  ldsfld     class Game.WorldPalette/'<>c' Game.WorldPalette/'<>c'::'<>9'
    IL_00b4:  ldftn      instance string Game.WorldPalette/'<>c'::'<.ctor>b__7_1'(string,
                                                                                  int32)
    IL_00ba:  newobj     instance void class [System.Runtime]System.Func`3<string,int32,string>::.ctor(object,
                                                                                                       native int)
    IL_00bf:  dup
    IL_00c0:  stsfld     class [System.Runtime]System.Func`3<string,int32,string> Game.WorldPalette/'<>c'::'<>9__7_1'
    IL_00c5:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<string,string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                        class [System.Runtime]System.Func`3<!!0,int32,!!1>)
    IL_00ca:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00cf:  stfld      string[] Game.WorldPalette::Names
    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      string[] Game.WorldPalette::Names
    IL_00da:  stloc.2
    IL_00db:  ldc.i4.0
    IL_00dc:  stloc.3
    IL_00dd:  br.s       IL_00f8

    IL_00df:  ldloc.2
    IL_00e0:  ldloc.3
    IL_00e1:  ldelem.ref
    IL_00e2:  call       bool Game.WorldPalette::VerifyColorName(string)
    IL_00e7:  brtrue.s   IL_00f4

    IL_00e9:  ldstr      "Invalid color name."
    IL_00ee:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00f3:  throw

    IL_00f4:  ldloc.3
    IL_00f5:  ldc.i4.1
    IL_00f6:  add
    IL_00f7:  stloc.3
    IL_00f8:  ldloc.3
    IL_00f9:  ldloc.2
    IL_00fa:  ldlen
    IL_00fb:  conv.i4
    IL_00fc:  blt.s      IL_00df

    IL_00fe:  ret
  } // end of method WorldPalette::.ctor

  .method public hidebysig instance class [EntitySystem]TemplatesDatabase.ValuesDictionary 
          Save() cil managed
  {
    // 代码大小       136 (0x88)
    .maxstack  5
    .locals init (string V_0,
             string V_1)
    IL_0000:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0005:  ldstr      ";"
    IL_000a:  ldarg.0
    IL_000b:  ldfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
    IL_0010:  ldsfld     class [System.Runtime]System.Func`3<valuetype [Engine]Engine.Color,int32,string> Game.WorldPalette/'<>c'::'<>9__8_0'
    IL_0015:  dup
    IL_0016:  brtrue.s   IL_002f

    IL_0018:  pop
    IL_0019:  ldsfld     class Game.WorldPalette/'<>c' Game.WorldPalette/'<>c'::'<>9'
    IL_001e:  ldftn      instance string Game.WorldPalette/'<>c'::'<Save>b__8_0'(valuetype [Engine]Engine.Color,
                                                                                 int32)
    IL_0024:  newobj     instance void class [System.Runtime]System.Func`3<valuetype [Engine]Engine.Color,int32,string>::.ctor(object,
                                                                                                                               native int)
    IL_0029:  dup
    IL_002a:  stsfld     class [System.Runtime]System.Func`3<valuetype [Engine]Engine.Color,int32,string> Game.WorldPalette/'<>c'::'<>9__8_0'
    IL_002f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<valuetype [Engine]Engine.Color,string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                class [System.Runtime]System.Func`3<!!0,int32,!!1>)
    IL_0034:  call       string [System.Runtime]System.String::Join(string,
                                                                    class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>)
    IL_0039:  stloc.0
    IL_003a:  ldstr      ";"
    IL_003f:  ldarg.0
    IL_0040:  ldfld      string[] Game.WorldPalette::Names
    IL_0045:  ldsfld     class [System.Runtime]System.Func`3<string,int32,string> Game.WorldPalette/'<>c'::'<>9__8_1'
    IL_004a:  dup
    IL_004b:  brtrue.s   IL_0064

    IL_004d:  pop
    IL_004e:  ldsfld     class Game.WorldPalette/'<>c' Game.WorldPalette/'<>c'::'<>9'
    IL_0053:  ldftn      instance string Game.WorldPalette/'<>c'::'<Save>b__8_1'(string,
                                                                                 int32)
    IL_0059:  newobj     instance void class [System.Runtime]System.Func`3<string,int32,string>::.ctor(object,
                                                                                                       native int)
    IL_005e:  dup
    IL_005f:  stsfld     class [System.Runtime]System.Func`3<string,int32,string> Game.WorldPalette/'<>c'::'<>9__8_1'
    IL_0064:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<string,string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                        class [System.Runtime]System.Func`3<!!0,int32,!!1>)
    IL_0069:  call       string [System.Runtime]System.String::Join(string,
                                                                    class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>)
    IL_006e:  stloc.1
    IL_006f:  dup
    IL_0070:  ldstr      "Colors"
    IL_0075:  ldloc.0
    IL_0076:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_007b:  dup
    IL_007c:  ldstr      "Names"
    IL_0081:  ldloc.1
    IL_0082:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0087:  ret
  } // end of method WorldPalette::Save

  .method public hidebysig instance void 
          CopyTo(class Game.WorldPalette palette) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
    IL_0007:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype [Engine]Engine.Color>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_000c:  stfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
    IL_0011:  ldarg.1
    IL_0012:  ldarg.0
    IL_0013:  ldfld      string[] Game.WorldPalette::Names
    IL_0018:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_001d:  stfld      string[] Game.WorldPalette::Names
    IL_0022:  ret
  } // end of method WorldPalette::CopyTo

  .method public hidebysig static bool  VerifyColorName(string name) cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  2
    .locals init (string V_0,
             int32 V_1,
             char V_2)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0006:  ldc.i4.1
    IL_0007:  blt.s      IL_0013

    IL_0009:  ldarg.0
    IL_000a:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_000f:  ldc.i4.s   16
    IL_0011:  ble.s      IL_0015

    IL_0013:  ldc.i4.0
    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  stloc.0
    IL_0017:  ldc.i4.0
    IL_0018:  stloc.1
    IL_0019:  br.s       IL_003b

    IL_001b:  ldloc.0
    IL_001c:  ldloc.1
    IL_001d:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0022:  stloc.2
    IL_0023:  ldloc.2
    IL_0024:  call       bool [System.Runtime]System.Char::IsLetterOrDigit(char)
    IL_0029:  brtrue.s   IL_0037

    IL_002b:  ldloc.2
    IL_002c:  ldc.i4.s   45
    IL_002e:  beq.s      IL_0037

    IL_0030:  ldloc.2
    IL_0031:  ldc.i4.s   32
    IL_0033:  beq.s      IL_0037

    IL_0035:  ldc.i4.0
    IL_0036:  ret

    IL_0037:  ldloc.1
    IL_0038:  ldc.i4.1
    IL_0039:  add
    IL_003a:  stloc.1
    IL_003b:  ldloc.1
    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0042:  blt.s      IL_001b

    IL_0044:  ldc.i4.1
    IL_0045:  ret
  } // end of method WorldPalette::VerifyColorName

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       533 (0x215)
    .maxstack  6
    IL_0000:  ldc.i4.s   16
    IL_0002:  newarr     [Engine]Engine.Color
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4     0xff
    IL_000e:  ldc.i4     0xff
    IL_0013:  ldc.i4     0xff
    IL_0018:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_001d:  stelem     [Engine]Engine.Color
    IL_0022:  dup
    IL_0023:  ldc.i4.1
    IL_0024:  ldc.i4     0xb5
    IL_0029:  ldc.i4     0xff
    IL_002e:  ldc.i4     0xff
    IL_0033:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0038:  stelem     [Engine]Engine.Color
    IL_003d:  dup
    IL_003e:  ldc.i4.2
    IL_003f:  ldc.i4     0xff
    IL_0044:  ldc.i4     0xb5
    IL_0049:  ldc.i4     0xff
    IL_004e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0053:  stelem     [Engine]Engine.Color
    IL_0058:  dup
    IL_0059:  ldc.i4.3
    IL_005a:  ldc.i4     0xa0
    IL_005f:  ldc.i4     0xb5
    IL_0064:  ldc.i4     0xff
    IL_0069:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_006e:  stelem     [Engine]Engine.Color
    IL_0073:  dup
    IL_0074:  ldc.i4.4
    IL_0075:  ldc.i4     0xff
    IL_007a:  ldc.i4     0xf0
    IL_007f:  ldc.i4     0xa0
    IL_0084:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0089:  stelem     [Engine]Engine.Color
    IL_008e:  dup
    IL_008f:  ldc.i4.5
    IL_0090:  ldc.i4     0xb5
    IL_0095:  ldc.i4     0xff
    IL_009a:  ldc.i4     0xb5
    IL_009f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00a4:  stelem     [Engine]Engine.Color
    IL_00a9:  dup
    IL_00aa:  ldc.i4.6
    IL_00ab:  ldc.i4     0xff
    IL_00b0:  ldc.i4     0xb5
    IL_00b5:  ldc.i4     0xa0
    IL_00ba:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00bf:  stelem     [Engine]Engine.Color
    IL_00c4:  dup
    IL_00c5:  ldc.i4.7
    IL_00c6:  ldc.i4     0xb5
    IL_00cb:  ldc.i4     0xb5
    IL_00d0:  ldc.i4     0xb5
    IL_00d5:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00da:  stelem     [Engine]Engine.Color
    IL_00df:  dup
    IL_00e0:  ldc.i4.8
    IL_00e1:  ldc.i4.s   112
    IL_00e3:  ldc.i4.s   112
    IL_00e5:  ldc.i4.s   112
    IL_00e7:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00ec:  stelem     [Engine]Engine.Color
    IL_00f1:  dup
    IL_00f2:  ldc.i4.s   9
    IL_00f4:  ldc.i4.s   32
    IL_00f6:  ldc.i4.s   112
    IL_00f8:  ldc.i4.s   112
    IL_00fa:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00ff:  stelem     [Engine]Engine.Color
    IL_0104:  dup
    IL_0105:  ldc.i4.s   10
    IL_0107:  ldc.i4.s   112
    IL_0109:  ldc.i4.s   32
    IL_010b:  ldc.i4.s   112
    IL_010d:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0112:  stelem     [Engine]Engine.Color
    IL_0117:  dup
    IL_0118:  ldc.i4.s   11
    IL_011a:  ldc.i4.s   26
    IL_011c:  ldc.i4.s   52
    IL_011e:  ldc.i4     0x80
    IL_0123:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0128:  stelem     [Engine]Engine.Color
    IL_012d:  dup
    IL_012e:  ldc.i4.s   12
    IL_0130:  ldc.i4.s   87
    IL_0132:  ldc.i4.s   54
    IL_0134:  ldc.i4.s   31
    IL_0136:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_013b:  stelem     [Engine]Engine.Color
    IL_0140:  dup
    IL_0141:  ldc.i4.s   13
    IL_0143:  ldc.i4.s   24
    IL_0145:  ldc.i4.s   116
    IL_0147:  ldc.i4.s   24
    IL_0149:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_014e:  stelem     [Engine]Engine.Color
    IL_0153:  dup
    IL_0154:  ldc.i4.s   14
    IL_0156:  ldc.i4     0x88
    IL_015b:  ldc.i4.s   32
    IL_015d:  ldc.i4.s   32
    IL_015f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0164:  stelem     [Engine]Engine.Color
    IL_0169:  dup
    IL_016a:  ldc.i4.s   15
    IL_016c:  ldc.i4.s   24
    IL_016e:  ldc.i4.s   24
    IL_0170:  ldc.i4.s   24
    IL_0172:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0177:  stelem     [Engine]Engine.Color
    IL_017c:  stsfld     valuetype [Engine]Engine.Color[] Game.WorldPalette::DefaultColors
    IL_0181:  ldc.i4.s   16
    IL_0183:  newarr     [System.Runtime]System.String
    IL_0188:  dup
    IL_0189:  ldc.i4.0
    IL_018a:  ldstr      "White"
    IL_018f:  stelem.ref
    IL_0190:  dup
    IL_0191:  ldc.i4.1
    IL_0192:  ldstr      "Pale Cyan"
    IL_0197:  stelem.ref
    IL_0198:  dup
    IL_0199:  ldc.i4.2
    IL_019a:  ldstr      "Pink"
    IL_019f:  stelem.ref
    IL_01a0:  dup
    IL_01a1:  ldc.i4.3
    IL_01a2:  ldstr      "Pale Blue"
    IL_01a7:  stelem.ref
    IL_01a8:  dup
    IL_01a9:  ldc.i4.4
    IL_01aa:  ldstr      "Yellow"
    IL_01af:  stelem.ref
    IL_01b0:  dup
    IL_01b1:  ldc.i4.5
    IL_01b2:  ldstr      "Pale Green"
    IL_01b7:  stelem.ref
    IL_01b8:  dup
    IL_01b9:  ldc.i4.6
    IL_01ba:  ldstr      "Salmon"
    IL_01bf:  stelem.ref
    IL_01c0:  dup
    IL_01c1:  ldc.i4.7
    IL_01c2:  ldstr      "Light Gray"
    IL_01c7:  stelem.ref
    IL_01c8:  dup
    IL_01c9:  ldc.i4.8
    IL_01ca:  ldstr      "Gray"
    IL_01cf:  stelem.ref
    IL_01d0:  dup
    IL_01d1:  ldc.i4.s   9
    IL_01d3:  ldstr      "Cyan"
    IL_01d8:  stelem.ref
    IL_01d9:  dup
    IL_01da:  ldc.i4.s   10
    IL_01dc:  ldstr      "Purple"
    IL_01e1:  stelem.ref
    IL_01e2:  dup
    IL_01e3:  ldc.i4.s   11
    IL_01e5:  ldstr      "Blue"
    IL_01ea:  stelem.ref
    IL_01eb:  dup
    IL_01ec:  ldc.i4.s   12
    IL_01ee:  ldstr      "Brown"
    IL_01f3:  stelem.ref
    IL_01f4:  dup
    IL_01f5:  ldc.i4.s   13
    IL_01f7:  ldstr      "Green"
    IL_01fc:  stelem.ref
    IL_01fd:  dup
    IL_01fe:  ldc.i4.s   14
    IL_0200:  ldstr      "Red"
    IL_0205:  stelem.ref
    IL_0206:  dup
    IL_0207:  ldc.i4.s   15
    IL_0209:  ldstr      "Black"
    IL_020e:  stelem.ref
    IL_020f:  stsfld     string[] Game.WorldPalette::DefaultNames
    IL_0214:  ret
  } // end of method WorldPalette::.cctor

} // end of class Game.WorldPalette