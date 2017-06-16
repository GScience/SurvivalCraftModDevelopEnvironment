.class public abstract auto ansi sealed beforefieldinit Game.StringUtils
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static char[] m_digits
  .method public hidebysig static int32  Compare(class [System.Runtime]System.Text.StringBuilder s1,
                                                 string s2) cil managed
  {
    // 代码大小       78 (0x4e)
    .maxstack  2
    .locals init (int32 V_0,
             char V_1,
             char V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldloc.0
    IL_0003:  ldarg.0
    IL_0004:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_0009:  blt.s      IL_0016

    IL_000b:  ldloc.0
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0012:  blt.s      IL_0016

    IL_0014:  ldc.i4.0
    IL_0015:  ret

    IL_0016:  ldloc.0
    IL_0017:  ldarg.0
    IL_0018:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_001d:  ble.s      IL_0021

    IL_001f:  ldc.i4.m1
    IL_0020:  ret

    IL_0021:  ldloc.0
    IL_0022:  ldarg.1
    IL_0023:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0028:  ble.s      IL_002c

    IL_002a:  ldc.i4.1
    IL_002b:  ret

    IL_002c:  ldarg.0
    IL_002d:  ldloc.0
    IL_002e:  callvirt   instance char [System.Runtime]System.Text.StringBuilder::get_Chars(int32)
    IL_0033:  stloc.1
    IL_0034:  ldarg.1
    IL_0035:  ldloc.0
    IL_0036:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_003b:  stloc.2
    IL_003c:  ldloc.1
    IL_003d:  ldloc.2
    IL_003e:  bge.s      IL_0042

    IL_0040:  ldc.i4.m1
    IL_0041:  ret

    IL_0042:  ldloc.1
    IL_0043:  ldloc.2
    IL_0044:  ble.s      IL_0048

    IL_0046:  ldc.i4.1
    IL_0047:  ret

    IL_0048:  ldloc.0
    IL_0049:  ldc.i4.1
    IL_004a:  add
    IL_004b:  stloc.0
    IL_004c:  br.s       IL_0002
  } // end of method StringUtils::Compare

  .method public hidebysig static int32  CalculateNumberLength(uint32 'value',
                                                               int32 numberBase) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.2
    IL_0002:  blt.s      IL_0009

    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.s   16
    IL_0007:  ble.s      IL_0014

    IL_0009:  ldstr      "Number base is out of range."
    IL_000e:  newobj     instance void [System.Runtime]System.ArgumentException::.ctor(string)
    IL_0013:  throw

    IL_0014:  ldc.i4.0
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  add
    IL_0019:  stloc.0
    IL_001a:  ldarg.0
    IL_001b:  ldarg.1
    IL_001c:  div.un
    IL_001d:  starg.s    'value'
    IL_001f:  ldarg.0
    IL_0020:  ldc.i4.0
    IL_0021:  bgt.un.s   IL_0016

    IL_0023:  ldloc.0
    IL_0024:  ret
  } // end of method StringUtils::CalculateNumberLength

  .method public hidebysig static int32  CalculateNumberLength(int32 'value',
                                                               int32 numberBase) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_000c

    IL_0004:  ldarg.0
    IL_0005:  ldarg.1
    IL_0006:  call       int32 Game.StringUtils::CalculateNumberLength(uint32,
                                                                       int32)
    IL_000b:  ret

    IL_000c:  ldarg.0
    IL_000d:  neg
    IL_000e:  ldarg.1
    IL_000f:  call       int32 Game.StringUtils::CalculateNumberLength(uint32,
                                                                       int32)
    IL_0014:  ldc.i4.1
    IL_0015:  add
    IL_0016:  ret
  } // end of method StringUtils::CalculateNumberLength

  .method public hidebysig static int32  CalculateNumberLength(uint64 'value',
                                                               int32 numberBase) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.2
    IL_0002:  blt.s      IL_0009

    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.s   16
    IL_0007:  ble.s      IL_0014

    IL_0009:  ldstr      "Number base is out of range."
    IL_000e:  newobj     instance void [System.Runtime]System.ArgumentException::.ctor(string)
    IL_0013:  throw

    IL_0014:  ldc.i4.0
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  add
    IL_0019:  stloc.0
    IL_001a:  ldarg.0
    IL_001b:  ldarg.1
    IL_001c:  conv.u8
    IL_001d:  div.un
    IL_001e:  starg.s    'value'
    IL_0020:  ldarg.0
    IL_0021:  ldc.i4.0
    IL_0022:  conv.i8
    IL_0023:  bgt.un.s   IL_0016

    IL_0025:  ldloc.0
    IL_0026:  ret
  } // end of method StringUtils::CalculateNumberLength

  .method public hidebysig static int32  CalculateNumberLength(int64 'value',
                                                               int32 numberBase) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  conv.i8
    IL_0003:  blt.s      IL_000d

    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  call       int32 Game.StringUtils::CalculateNumberLength(uint64,
                                                                       int32)
    IL_000c:  ret

    IL_000d:  ldarg.0
    IL_000e:  neg
    IL_000f:  ldarg.1
    IL_0010:  call       int32 Game.StringUtils::CalculateNumberLength(uint64,
                                                                       int32)
    IL_0015:  ldc.i4.1
    IL_0016:  add
    IL_0017:  ret
  } // end of method StringUtils::CalculateNumberLength

  .method public hidebysig static void  AppendNumber(class [System.Runtime]System.Text.StringBuilder stringBuilder,
                                                     uint32 'value',
                                                     [opt] int32 padding,
                                                     [opt] char paddingCharacter,
                                                     [opt] int32 numberBase) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [3] = int32(0x00000000)
    .param [4] = char(0x0020)
    .param [5] = int32(0x0000000A)
    // 代码大小       71 (0x47)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             char V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.s    numberBase
    IL_0003:  call       int32 Game.StringUtils::CalculateNumberLength(uint32,
                                                                       int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.2
    IL_000a:  ldloc.0
    IL_000b:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_0010:  stloc.1
    IL_0011:  ldarg.0
    IL_0012:  ldarg.3
    IL_0013:  ldloc.1
    IL_0014:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char,
                                                                                                                                    int32)
    IL_0019:  pop
    IL_001a:  ldc.i4.0
    IL_001b:  stloc.2
    IL_001c:  ldsfld     char[] Game.StringUtils::m_digits
    IL_0021:  ldarg.1
    IL_0022:  ldarg.s    numberBase
    IL_0024:  rem.un
    IL_0025:  ldelem.u2
    IL_0026:  stloc.3
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_002e:  ldloc.2
    IL_002f:  sub
    IL_0030:  ldc.i4.1
    IL_0031:  sub
    IL_0032:  ldloc.3
    IL_0033:  callvirt   instance void [System.Runtime]System.Text.StringBuilder::set_Chars(int32,
                                                                                            char)
    IL_0038:  ldarg.1
    IL_0039:  ldarg.s    numberBase
    IL_003b:  div.un
    IL_003c:  starg.s    'value'
    IL_003e:  ldloc.2
    IL_003f:  ldc.i4.1
    IL_0040:  add
    IL_0041:  stloc.2
    IL_0042:  ldarg.1
    IL_0043:  ldc.i4.0
    IL_0044:  bgt.un.s   IL_001c

    IL_0046:  ret
  } // end of method StringUtils::AppendNumber

  .method public hidebysig static void  AppendNumber(class [System.Runtime]System.Text.StringBuilder stringBuilder,
                                                     int32 'value',
                                                     [opt] int32 padding,
                                                     [opt] char paddingCharacter,
                                                     [opt] int32 numberBase) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [3] = int32(0x00000000)
    .param [4] = char(0x0020)
    .param [5] = int32(0x0000000A)
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0010

    IL_0004:  ldarg.0
    IL_0005:  ldarg.1
    IL_0006:  ldarg.2
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    numberBase
    IL_000a:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             uint32,
                                                             int32,
                                                             char,
                                                             int32)
    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.s   45
    IL_0013:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0018:  pop
    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  neg
    IL_001c:  ldarg.2
    IL_001d:  ldc.i4.1
    IL_001e:  sub
    IL_001f:  ldarg.3
    IL_0020:  ldarg.s    numberBase
    IL_0022:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             uint32,
                                                             int32,
                                                             char,
                                                             int32)
    IL_0027:  ret
  } // end of method StringUtils::AppendNumber

  .method public hidebysig static void  AppendNumber(class [System.Runtime]System.Text.StringBuilder stringBuilder,
                                                     uint64 'value',
                                                     [opt] int32 padding,
                                                     [opt] char paddingCharacter,
                                                     [opt] int32 numberBase) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [3] = int32(0x00000000)
    .param [4] = char(0x0020)
    .param [5] = int32(0x0000000A)
    // 代码大小       75 (0x4b)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             char V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.s    numberBase
    IL_0003:  call       int32 Game.StringUtils::CalculateNumberLength(uint64,
                                                                       int32)
    IL_0008:  stloc.0
    IL_0009:  ldarg.2
    IL_000a:  ldloc.0
    IL_000b:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_0010:  stloc.1
    IL_0011:  ldarg.0
    IL_0012:  ldarg.3
    IL_0013:  ldloc.1
    IL_0014:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char,
                                                                                                                                    int32)
    IL_0019:  pop
    IL_001a:  ldc.i4.0
    IL_001b:  stloc.2
    IL_001c:  ldsfld     char[] Game.StringUtils::m_digits
    IL_0021:  ldarg.1
    IL_0022:  ldarg.s    numberBase
    IL_0024:  conv.u8
    IL_0025:  rem.un
    IL_0026:  conv.ovf.i.un
    IL_0027:  ldelem.u2
    IL_0028:  stloc.3
    IL_0029:  ldarg.0
    IL_002a:  ldarg.0
    IL_002b:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_0030:  ldloc.2
    IL_0031:  sub
    IL_0032:  ldc.i4.1
    IL_0033:  sub
    IL_0034:  ldloc.3
    IL_0035:  callvirt   instance void [System.Runtime]System.Text.StringBuilder::set_Chars(int32,
                                                                                            char)
    IL_003a:  ldarg.1
    IL_003b:  ldarg.s    numberBase
    IL_003d:  conv.u8
    IL_003e:  div.un
    IL_003f:  starg.s    'value'
    IL_0041:  ldloc.2
    IL_0042:  ldc.i4.1
    IL_0043:  add
    IL_0044:  stloc.2
    IL_0045:  ldarg.1
    IL_0046:  ldc.i4.0
    IL_0047:  conv.i8
    IL_0048:  bgt.un.s   IL_001c

    IL_004a:  ret
  } // end of method StringUtils::AppendNumber

  .method public hidebysig static void  AppendNumber(class [System.Runtime]System.Text.StringBuilder stringBuilder,
                                                     int64 'value',
                                                     [opt] int32 padding,
                                                     [opt] char paddingCharacter,
                                                     [opt] int32 numberBase) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [3] = int32(0x00000000)
    .param [4] = char(0x0020)
    .param [5] = int32(0x0000000A)
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  conv.i8
    IL_0003:  blt.s      IL_0011

    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    numberBase
    IL_000b:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             uint64,
                                                             int32,
                                                             char,
                                                             int32)
    IL_0010:  ret

    IL_0011:  ldarg.0
    IL_0012:  ldc.i4.s   45
    IL_0014:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0019:  pop
    IL_001a:  ldarg.0
    IL_001b:  ldarg.1
    IL_001c:  neg
    IL_001d:  ldarg.2
    IL_001e:  ldc.i4.1
    IL_001f:  sub
    IL_0020:  ldarg.3
    IL_0021:  ldarg.s    numberBase
    IL_0023:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             uint64,
                                                             int32,
                                                             char,
                                                             int32)
    IL_0028:  ret
  } // end of method StringUtils::AppendNumber

  .method public hidebysig static void  AppendNumber(class [System.Runtime]System.Text.StringBuilder stringBuilder,
                                                     float32 'value',
                                                     int32 precision) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       321 (0x141)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             uint64 V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  ldarg.2
    IL_0001:  ldc.i4.s   -30
    IL_0003:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_0008:  ldc.i4.s   30
    IL_000a:  call       int32 [System.Runtime.Extensions]System.Math::Min(int32,
                                                                           int32)
    IL_000f:  starg.s    precision
    IL_0011:  ldarg.1
    IL_0012:  call       bool [System.Runtime]System.Single::IsNegativeInfinity(float32)
    IL_0017:  brfalse.s  IL_0026

    IL_0019:  ldarg.0
    IL_001a:  ldstr      "Infinity"
    IL_001f:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0024:  pop
    IL_0025:  ret

    IL_0026:  ldarg.1
    IL_0027:  call       bool [System.Runtime]System.Single::IsPositiveInfinity(float32)
    IL_002c:  brfalse.s  IL_003b

    IL_002e:  ldarg.0
    IL_002f:  ldstr      "-Infinity"
    IL_0034:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0039:  pop
    IL_003a:  ret

    IL_003b:  ldarg.1
    IL_003c:  call       bool [System.Runtime]System.Single::IsNaN(float32)
    IL_0041:  brfalse.s  IL_0050

    IL_0043:  ldarg.0
    IL_0044:  ldstr      "NaN"
    IL_0049:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_004e:  pop
    IL_004f:  ret

    IL_0050:  ldarg.1
    IL_0051:  call       float32 [System.Runtime.Extensions]System.Math::Abs(float32)
    IL_0056:  stloc.0
    IL_0057:  ldloc.0
    IL_0058:  ldc.r4     1.e+019
    IL_005d:  ble.un.s   IL_006c

    IL_005f:  ldarg.0
    IL_0060:  ldstr      "NumberTooLarge"
    IL_0065:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_006a:  pop
    IL_006b:  ret

    IL_006c:  ldc.r4     10.
    IL_0071:  ldarg.2
    IL_0072:  call       int32 [System.Runtime.Extensions]System.Math::Abs(int32)
    IL_0077:  conv.r4
    IL_0078:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_007d:  stloc.1
    IL_007e:  ldloc.0
    IL_007f:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0084:  conv.u8
    IL_0085:  stloc.2
    IL_0086:  ldloc.0
    IL_0087:  ldloc.0
    IL_0088:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_008d:  sub
    IL_008e:  ldloc.1
    IL_008f:  mul
    IL_0090:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0095:  conv.u8
    IL_0096:  stloc.3
    IL_0097:  ldloc.3
    IL_0098:  conv.r.un
    IL_0099:  conv.r4
    IL_009a:  ldloc.1
    IL_009b:  blt.un.s   IL_00a5

    IL_009d:  ldloc.2
    IL_009e:  ldc.i4.1
    IL_009f:  conv.i8
    IL_00a0:  add
    IL_00a1:  stloc.2
    IL_00a2:  ldc.i4.0
    IL_00a3:  conv.i8
    IL_00a4:  stloc.3
    IL_00a5:  ldarg.1
    IL_00a6:  ldc.r4     0.0
    IL_00ab:  bge.un.s   IL_00b6

    IL_00ad:  ldarg.0
    IL_00ae:  ldc.i4.s   45
    IL_00b0:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00b5:  pop
    IL_00b6:  ldarg.0
    IL_00b7:  ldloc.2
    IL_00b8:  ldc.i4.0
    IL_00b9:  ldc.i4.s   48
    IL_00bb:  ldc.i4.s   10
    IL_00bd:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             uint64,
                                                             int32,
                                                             char,
                                                             int32)
    IL_00c2:  ldarg.2
    IL_00c3:  ldc.i4.0
    IL_00c4:  ble.s      IL_00dc

    IL_00c6:  ldarg.0
    IL_00c7:  ldc.i4.s   46
    IL_00c9:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00ce:  pop
    IL_00cf:  ldarg.0
    IL_00d0:  ldloc.3
    IL_00d1:  ldarg.2
    IL_00d2:  ldc.i4.s   48
    IL_00d4:  ldc.i4.s   10
    IL_00d6:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             uint64,
                                                             int32,
                                                             char,
                                                             int32)
    IL_00db:  ret

    IL_00dc:  ldarg.2
    IL_00dd:  ldc.i4.0
    IL_00de:  bge.s      IL_0140

    IL_00e0:  ldarg.0
    IL_00e1:  ldc.i4.s   46
    IL_00e3:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_00e8:  pop
    IL_00e9:  ldarg.0
    IL_00ea:  ldloc.3
    IL_00eb:  ldarg.2
    IL_00ec:  neg
    IL_00ed:  ldc.i4.s   48
    IL_00ef:  ldc.i4.s   10
    IL_00f1:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             uint64,
                                                             int32,
                                                             char,
                                                             int32)
    IL_00f6:  br.s       IL_010a

    IL_00f8:  ldarg.0
    IL_00f9:  dup
    IL_00fa:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_00ff:  ldc.i4.1
    IL_0100:  sub
    IL_0101:  stloc.s    V_4
    IL_0103:  ldloc.s    V_4
    IL_0105:  callvirt   instance void [System.Runtime]System.Text.StringBuilder::set_Length(int32)
    IL_010a:  ldarg.0
    IL_010b:  ldarg.0
    IL_010c:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_0111:  ldc.i4.1
    IL_0112:  sub
    IL_0113:  callvirt   instance char [System.Runtime]System.Text.StringBuilder::get_Chars(int32)
    IL_0118:  ldc.i4.s   48
    IL_011a:  beq.s      IL_00f8

    IL_011c:  ldarg.0
    IL_011d:  ldarg.0
    IL_011e:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_0123:  ldc.i4.1
    IL_0124:  sub
    IL_0125:  callvirt   instance char [System.Runtime]System.Text.StringBuilder::get_Chars(int32)
    IL_012a:  ldc.i4.s   46
    IL_012c:  bne.un.s   IL_0140

    IL_012e:  ldarg.0
    IL_012f:  dup
    IL_0130:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_0135:  ldc.i4.1
    IL_0136:  sub
    IL_0137:  stloc.s    V_4
    IL_0139:  ldloc.s    V_4
    IL_013b:  callvirt   instance void [System.Runtime]System.Text.StringBuilder::set_Length(int32)
    IL_0140:  ret
  } // end of method StringUtils::AppendNumber

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldc.i4.s   16
    IL_0002:  newarr     [System.Runtime]System.Char
    IL_0007:  dup
    IL_0008:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=32' '<PrivateImplementationDetails>'::'59F5BD34B6C013DEACC784F69C67E95150033A84'
    IL_000d:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0012:  stsfld     char[] Game.StringUtils::m_digits
    IL_0017:  ret
  } // end of method StringUtils::.cctor

} // end of class Game.StringUtils