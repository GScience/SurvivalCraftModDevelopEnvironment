.class public abstract auto ansi sealed beforefieldinit Game.DataSizeFormatter
       extends [System.Runtime]System.Object
{
  .method public hidebysig static string 
          Format(int64 bytes) cil managed
  {
    // 代码大小       194 (0xc2)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x400
    IL_0006:  conv.i8
    IL_0007:  bge.s      IL_0023

    IL_0009:  ldstr      "{0}B"
    IL_000e:  ldc.i4.1
    IL_000f:  newarr     [System.Runtime]System.Object
    IL_0014:  dup
    IL_0015:  ldc.i4.0
    IL_0016:  ldarg.0
    IL_0017:  box        [System.Runtime]System.Int64
    IL_001c:  stelem.ref
    IL_001d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0022:  ret

    IL_0023:  ldarg.0
    IL_0024:  ldc.i4     0x100000
    IL_0029:  conv.i8
    IL_002a:  bge.s      IL_0055

    IL_002c:  ldarg.0
    IL_002d:  conv.r4
    IL_002e:  ldc.r4     1024.
    IL_0033:  div
    IL_0034:  stloc.0
    IL_0035:  ldloc.0
    IL_0036:  ldstr      "kB"
    IL_003b:  call       string Game.DataSizeFormatter::PrepareFormatString(float32,
                                                                            string)
    IL_0040:  ldc.i4.1
    IL_0041:  newarr     [System.Runtime]System.Object
    IL_0046:  dup
    IL_0047:  ldc.i4.0
    IL_0048:  ldloc.0
    IL_0049:  box        [System.Runtime]System.Single
    IL_004e:  stelem.ref
    IL_004f:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0054:  ret

    IL_0055:  ldarg.0
    IL_0056:  ldc.i4     0x40000000
    IL_005b:  conv.i8
    IL_005c:  bge.s      IL_008d

    IL_005e:  ldarg.0
    IL_005f:  conv.r4
    IL_0060:  ldc.r4     1024.
    IL_0065:  div
    IL_0066:  ldc.r4     1024.
    IL_006b:  div
    IL_006c:  stloc.1
    IL_006d:  ldloc.1
    IL_006e:  ldstr      "MB"
    IL_0073:  call       string Game.DataSizeFormatter::PrepareFormatString(float32,
                                                                            string)
    IL_0078:  ldc.i4.1
    IL_0079:  newarr     [System.Runtime]System.Object
    IL_007e:  dup
    IL_007f:  ldc.i4.0
    IL_0080:  ldloc.1
    IL_0081:  box        [System.Runtime]System.Single
    IL_0086:  stelem.ref
    IL_0087:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_008c:  ret

    IL_008d:  ldarg.0
    IL_008e:  conv.r4
    IL_008f:  ldc.r4     1024.
    IL_0094:  div
    IL_0095:  ldc.r4     1024.
    IL_009a:  div
    IL_009b:  ldc.r4     1024.
    IL_00a0:  div
    IL_00a1:  stloc.2
    IL_00a2:  ldloc.2
    IL_00a3:  ldstr      "GB"
    IL_00a8:  call       string Game.DataSizeFormatter::PrepareFormatString(float32,
                                                                            string)
    IL_00ad:  ldc.i4.1
    IL_00ae:  newarr     [System.Runtime]System.Object
    IL_00b3:  dup
    IL_00b4:  ldc.i4.0
    IL_00b5:  ldloc.2
    IL_00b6:  box        [System.Runtime]System.Single
    IL_00bb:  stelem.ref
    IL_00bc:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00c1:  ret
  } // end of method DataSizeFormatter::Format

  .method private hidebysig static string 
          PrepareFormatString(float32 'value',
                              string unit) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       float32 [Engine]Engine.MathUtils::Log10(float32)
    IL_0006:  ldc.r4     1.
    IL_000b:  add
    IL_000c:  conv.i4
    IL_000d:  stloc.0
    IL_000e:  ldc.i4.3
    IL_000f:  ldloc.0
    IL_0010:  sub
    IL_0011:  ldc.i4.0
    IL_0012:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0017:  stloc.1
    IL_0018:  ldstr      "{0:F"
    IL_001d:  ldloca.s   V_1
    IL_001f:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_0024:  ldstr      "}"
    IL_0029:  ldarg.1
    IL_002a:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string,
                                                                      string)
    IL_002f:  ret
  } // end of method DataSizeFormatter::PrepareFormatString

} // end of class Game.DataSizeFormatter