.class public abstract auto ansi sealed beforefieldinit Game.DataSizeFormatter
       extends [System.Runtime]System.Object
{
  .method public hidebysig static string 
          Format(int64 bytes) cil managed
  {
    // ´úÂë´óÐ¡       170 (0xaa)
    .maxstack  6
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
    IL_002a:  bge.s      IL_004d

    IL_002c:  ldstr      "{0:0.0}kB"
    IL_0031:  ldc.i4.1
    IL_0032:  newarr     [System.Runtime]System.Object
    IL_0037:  dup
    IL_0038:  ldc.i4.0
    IL_0039:  ldarg.0
    IL_003a:  conv.r4
    IL_003b:  ldc.r4     1024.
    IL_0040:  div
    IL_0041:  box        [System.Runtime]System.Single
    IL_0046:  stelem.ref
    IL_0047:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_004c:  ret

    IL_004d:  ldarg.0
    IL_004e:  ldc.i4     0x40000000
    IL_0053:  conv.i8
    IL_0054:  bge.s      IL_007d

    IL_0056:  ldstr      "{0:0.0}MB"
    IL_005b:  ldc.i4.1
    IL_005c:  newarr     [System.Runtime]System.Object
    IL_0061:  dup
    IL_0062:  ldc.i4.0
    IL_0063:  ldarg.0
    IL_0064:  conv.r4
    IL_0065:  ldc.r4     1024.
    IL_006a:  div
    IL_006b:  ldc.r4     1024.
    IL_0070:  div
    IL_0071:  box        [System.Runtime]System.Single
    IL_0076:  stelem.ref
    IL_0077:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_007c:  ret

    IL_007d:  ldstr      "{0:0.0}GB"
    IL_0082:  ldc.i4.1
    IL_0083:  newarr     [System.Runtime]System.Object
    IL_0088:  dup
    IL_0089:  ldc.i4.0
    IL_008a:  ldarg.0
    IL_008b:  conv.r4
    IL_008c:  ldc.r4     1024.
    IL_0091:  div
    IL_0092:  ldc.r4     1024.
    IL_0097:  div
    IL_0098:  ldc.r4     1024.
    IL_009d:  div
    IL_009e:  box        [System.Runtime]System.Single
    IL_00a3:  stelem.ref
    IL_00a4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00a9:  ret
  } // end of method DataSizeFormatter::Format

} // end of class Game.DataSizeFormatter