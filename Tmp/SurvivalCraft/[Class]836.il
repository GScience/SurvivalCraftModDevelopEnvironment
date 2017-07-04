.class public auto ansi beforefieldinit Game.OldRandom
       extends [System.Runtime]System.Object
{
  .class auto ansi nested public beforefieldinit InternalRandom
         extends [System.Runtime]System.Object
  {
    .field private int32 m_inext
    .field private int32 m_inextp
    .field private int32[] m_seedArray
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 seed) cil managed
    {
      // 代码大小       236 (0xec)
      .maxstack  6
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2,
               int32 V_3,
               int32 V_4,
               int32 V_5,
               int32 V_6)
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldc.i4.s   56
      IL_0009:  newarr     [System.Runtime]System.Int32
      IL_000e:  stfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_0013:  ldarg.1
      IL_0014:  ldc.i4     0x80000000
      IL_0019:  beq.s      IL_0023

      IL_001b:  ldarg.1
      IL_001c:  call       int32 [System.Runtime.Extensions]System.Math::Abs(int32)
      IL_0021:  br.s       IL_0028

      IL_0023:  ldc.i4     0x7fffffff
      IL_0028:  stloc.0
      IL_0029:  ldc.i4     0x9a4ec86
      IL_002e:  ldloc.0
      IL_002f:  sub
      IL_0030:  stloc.1
      IL_0031:  ldarg.0
      IL_0032:  ldfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_0037:  ldc.i4.s   55
      IL_0039:  ldloc.1
      IL_003a:  stelem.i4
      IL_003b:  ldc.i4.1
      IL_003c:  stloc.2
      IL_003d:  ldc.i4.1
      IL_003e:  stloc.3
      IL_003f:  br.s       IL_0072

      IL_0041:  ldc.i4.s   21
      IL_0043:  ldloc.3
      IL_0044:  mul
      IL_0045:  ldc.i4.s   55
      IL_0047:  rem
      IL_0048:  stloc.s    V_4
      IL_004a:  ldarg.0
      IL_004b:  ldfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_0050:  ldloc.s    V_4
      IL_0052:  ldloc.2
      IL_0053:  stelem.i4
      IL_0054:  ldloc.1
      IL_0055:  ldloc.2
      IL_0056:  sub
      IL_0057:  stloc.2
      IL_0058:  ldloc.2
      IL_0059:  ldc.i4.0
      IL_005a:  bge.s      IL_0064

      IL_005c:  ldloc.2
      IL_005d:  ldc.i4     0x7fffffff
      IL_0062:  add
      IL_0063:  stloc.2
      IL_0064:  ldarg.0
      IL_0065:  ldfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_006a:  ldloc.s    V_4
      IL_006c:  ldelem.i4
      IL_006d:  stloc.1
      IL_006e:  ldloc.3
      IL_006f:  ldc.i4.1
      IL_0070:  add
      IL_0071:  stloc.3
      IL_0072:  ldloc.3
      IL_0073:  ldc.i4.s   55
      IL_0075:  blt.s      IL_0041

      IL_0077:  ldc.i4.1
      IL_0078:  stloc.s    V_5
      IL_007a:  br.s       IL_00d7

      IL_007c:  ldc.i4.1
      IL_007d:  stloc.s    V_6
      IL_007f:  br.s       IL_00cb

      IL_0081:  ldarg.0
      IL_0082:  ldfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_0087:  ldloc.s    V_6
      IL_0089:  ldelema    [System.Runtime]System.Int32
      IL_008e:  dup
      IL_008f:  ldind.i4
      IL_0090:  ldarg.0
      IL_0091:  ldfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_0096:  ldc.i4.1
      IL_0097:  ldloc.s    V_6
      IL_0099:  ldc.i4.s   30
      IL_009b:  add
      IL_009c:  ldc.i4.s   55
      IL_009e:  rem
      IL_009f:  add
      IL_00a0:  ldelem.i4
      IL_00a1:  sub
      IL_00a2:  stind.i4
      IL_00a3:  ldarg.0
      IL_00a4:  ldfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_00a9:  ldloc.s    V_6
      IL_00ab:  ldelem.i4
      IL_00ac:  ldc.i4.0
      IL_00ad:  bge.s      IL_00c5

      IL_00af:  ldarg.0
      IL_00b0:  ldfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_00b5:  ldloc.s    V_6
      IL_00b7:  ldelema    [System.Runtime]System.Int32
      IL_00bc:  dup
      IL_00bd:  ldind.i4
      IL_00be:  ldc.i4     0x7fffffff
      IL_00c3:  add
      IL_00c4:  stind.i4
      IL_00c5:  ldloc.s    V_6
      IL_00c7:  ldc.i4.1
      IL_00c8:  add
      IL_00c9:  stloc.s    V_6
      IL_00cb:  ldloc.s    V_6
      IL_00cd:  ldc.i4.s   56
      IL_00cf:  blt.s      IL_0081

      IL_00d1:  ldloc.s    V_5
      IL_00d3:  ldc.i4.1
      IL_00d4:  add
      IL_00d5:  stloc.s    V_5
      IL_00d7:  ldloc.s    V_5
      IL_00d9:  ldc.i4.5
      IL_00da:  blt.s      IL_007c

      IL_00dc:  ldarg.0
      IL_00dd:  ldc.i4.0
      IL_00de:  stfld      int32 Game.OldRandom/InternalRandom::m_inext
      IL_00e3:  ldarg.0
      IL_00e4:  ldc.i4.s   21
      IL_00e6:  stfld      int32 Game.OldRandom/InternalRandom::m_inextp
      IL_00eb:  ret
    } // end of method InternalRandom::.ctor

    .method private hidebysig instance float64 
            GetSampleForLargeRange() cil managed
    {
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  call       instance int32 Game.OldRandom/InternalRandom::InternalSample()
      IL_0006:  stloc.0
      IL_0007:  ldarg.0
      IL_0008:  call       instance int32 Game.OldRandom/InternalRandom::InternalSample()
      IL_000d:  ldc.i4.2
      IL_000e:  rem
      IL_000f:  brtrue.s   IL_0014

      IL_0011:  ldloc.0
      IL_0012:  neg
      IL_0013:  stloc.0
      IL_0014:  ldloc.0
      IL_0015:  conv.r8
      IL_0016:  ldc.r8     2147483646.
      IL_001f:  add
      IL_0020:  ldc.r8     4294967293.
      IL_0029:  div
      IL_002a:  ret
    } // end of method InternalRandom::GetSampleForLargeRange

    .method private hidebysig instance int32 
            InternalSample() cil managed
    {
      // 代码大小       103 (0x67)
      .maxstack  3
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.OldRandom/InternalRandom::m_inext
      IL_0006:  stloc.0
      IL_0007:  ldarg.0
      IL_0008:  ldfld      int32 Game.OldRandom/InternalRandom::m_inextp
      IL_000d:  stloc.1
      IL_000e:  ldloc.0
      IL_000f:  ldc.i4.1
      IL_0010:  add
      IL_0011:  dup
      IL_0012:  stloc.0
      IL_0013:  ldc.i4.s   56
      IL_0015:  blt.s      IL_0019

      IL_0017:  ldc.i4.1
      IL_0018:  stloc.0
      IL_0019:  ldloc.1
      IL_001a:  ldc.i4.1
      IL_001b:  add
      IL_001c:  dup
      IL_001d:  stloc.1
      IL_001e:  ldc.i4.s   56
      IL_0020:  blt.s      IL_0024

      IL_0022:  ldc.i4.1
      IL_0023:  stloc.1
      IL_0024:  ldarg.0
      IL_0025:  ldfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_002a:  ldloc.0
      IL_002b:  ldelem.i4
      IL_002c:  ldarg.0
      IL_002d:  ldfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_0032:  ldloc.1
      IL_0033:  ldelem.i4
      IL_0034:  sub
      IL_0035:  stloc.2
      IL_0036:  ldloc.2
      IL_0037:  ldc.i4     0x7fffffff
      IL_003c:  bne.un.s   IL_0042

      IL_003e:  ldloc.2
      IL_003f:  ldc.i4.1
      IL_0040:  sub
      IL_0041:  stloc.2
      IL_0042:  ldloc.2
      IL_0043:  ldc.i4.0
      IL_0044:  bge.s      IL_004e

      IL_0046:  ldloc.2
      IL_0047:  ldc.i4     0x7fffffff
      IL_004c:  add
      IL_004d:  stloc.2
      IL_004e:  ldarg.0
      IL_004f:  ldfld      int32[] Game.OldRandom/InternalRandom::m_seedArray
      IL_0054:  ldloc.0
      IL_0055:  ldloc.2
      IL_0056:  stelem.i4
      IL_0057:  ldarg.0
      IL_0058:  ldloc.0
      IL_0059:  stfld      int32 Game.OldRandom/InternalRandom::m_inext
      IL_005e:  ldarg.0
      IL_005f:  ldloc.1
      IL_0060:  stfld      int32 Game.OldRandom/InternalRandom::m_inextp
      IL_0065:  ldloc.2
      IL_0066:  ret
    } // end of method InternalRandom::InternalSample

    .method public hidebysig instance int32 
            Next() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance int32 Game.OldRandom/InternalRandom::InternalSample()
      IL_0006:  ret
    } // end of method InternalRandom::Next

    .method public hidebysig instance int32 
            Next(int32 maxValue) cil managed
    {
      // 代码大小       26 (0x1a)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldc.i4.0
      IL_0002:  bge.s      IL_000f

      IL_0004:  ldstr      "maxValue"
      IL_0009:  newobj     instance void [System.Runtime]System.ArgumentOutOfRangeException::.ctor(string)
      IL_000e:  throw

      IL_000f:  ldarg.0
      IL_0010:  call       instance float64 Game.OldRandom/InternalRandom::Sample()
      IL_0015:  ldarg.1
      IL_0016:  conv.r8
      IL_0017:  mul
      IL_0018:  conv.i4
      IL_0019:  ret
    } // end of method InternalRandom::Next

    .method public hidebysig instance int32 
            Next(int32 minValue,
                 int32 maxValue) cil managed
    {
      // 代码大小       56 (0x38)
      .maxstack  2
      .locals init (int64 V_0)
      IL_0000:  ldarg.1
      IL_0001:  ldarg.2
      IL_0002:  ble.s      IL_000f

      IL_0004:  ldstr      "minValue"
      IL_0009:  newobj     instance void [System.Runtime]System.ArgumentOutOfRangeException::.ctor(string)
      IL_000e:  throw

      IL_000f:  ldarg.2
      IL_0010:  ldarg.1
      IL_0011:  sub
      IL_0012:  conv.i8
      IL_0013:  stloc.0
      IL_0014:  ldloc.0
      IL_0015:  ldc.i4     0x7fffffff
      IL_001a:  conv.i8
      IL_001b:  bgt.s      IL_002a

      IL_001d:  ldarg.0
      IL_001e:  call       instance float64 Game.OldRandom/InternalRandom::Sample()
      IL_0023:  ldloc.0
      IL_0024:  conv.r8
      IL_0025:  mul
      IL_0026:  conv.i4
      IL_0027:  ldarg.1
      IL_0028:  add
      IL_0029:  ret

      IL_002a:  ldarg.0
      IL_002b:  call       instance float64 Game.OldRandom/InternalRandom::GetSampleForLargeRange()
      IL_0030:  ldloc.0
      IL_0031:  conv.r8
      IL_0032:  mul
      IL_0033:  conv.i8
      IL_0034:  conv.i4
      IL_0035:  ldarg.1
      IL_0036:  add
      IL_0037:  ret
    } // end of method InternalRandom::Next

    .method public hidebysig instance void 
            NextBytes(uint8[] buffer) cil managed
    {
      // 代码大小       45 (0x2d)
      .maxstack  4
      .locals init (int32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_000e

      IL_0003:  ldstr      "buffer"
      IL_0008:  newobj     instance void [System.Runtime]System.ArgumentNullException::.ctor(string)
      IL_000d:  throw

      IL_000e:  ldc.i4.0
      IL_000f:  stloc.0
      IL_0010:  br.s       IL_0026

      IL_0012:  ldarg.1
      IL_0013:  ldloc.0
      IL_0014:  ldarg.0
      IL_0015:  call       instance int32 Game.OldRandom/InternalRandom::InternalSample()
      IL_001a:  ldc.i4     0x100
      IL_001f:  rem
      IL_0020:  conv.u1
      IL_0021:  stelem.i1
      IL_0022:  ldloc.0
      IL_0023:  ldc.i4.1
      IL_0024:  add
      IL_0025:  stloc.0
      IL_0026:  ldloc.0
      IL_0027:  ldarg.1
      IL_0028:  ldlen
      IL_0029:  conv.i4
      IL_002a:  blt.s      IL_0012

      IL_002c:  ret
    } // end of method InternalRandom::NextBytes

    .method public hidebysig instance float64 
            NextDouble() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance float64 Game.OldRandom/InternalRandom::Sample()
      IL_0006:  ret
    } // end of method InternalRandom::NextDouble

    .method family hidebysig instance float64 
            Sample() cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance int32 Game.OldRandom/InternalRandom::InternalSample()
      IL_0006:  conv.r8
      IL_0007:  ldc.r8     4.6566128752457969e-010
      IL_0010:  mul
      IL_0011:  ret
    } // end of method InternalRandom::Sample

  } // end of class InternalRandom

  .field private class Game.OldRandom/InternalRandom m_random
  .field private static int32 m_seed
  .field public static initonly class Game.OldRandom GlobalRandom
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4     0x3e5
    IL_000c:  ldsfld     int32 Game.OldRandom::m_seed
    IL_0011:  dup
    IL_0012:  ldc.i4.1
    IL_0013:  add
    IL_0014:  stsfld     int32 Game.OldRandom::m_seed
    IL_0019:  mul
    IL_001a:  newobj     instance void Game.OldRandom/InternalRandom::.ctor(int32)
    IL_001f:  stfld      class Game.OldRandom/InternalRandom Game.OldRandom::m_random
    IL_0024:  ret
  } // end of method OldRandom::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 seed) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  newobj     instance void Game.OldRandom/InternalRandom::.ctor(int32)
    IL_000d:  stfld      class Game.OldRandom/InternalRandom Game.OldRandom::m_random
    IL_0012:  ret
  } // end of method OldRandom::.ctor

  .method public hidebysig instance int32 
          Sign() cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.OldRandom/InternalRandom Game.OldRandom::m_random
    IL_0006:  callvirt   instance int32 Game.OldRandom/InternalRandom::Next()
    IL_000b:  ldc.i4.2
    IL_000c:  rem
    IL_000d:  brfalse.s  IL_0011

    IL_000f:  ldc.i4.1
    IL_0010:  ret

    IL_0011:  ldc.i4.m1
    IL_0012:  ret
  } // end of method OldRandom::Sign

  .method public hidebysig instance bool 
          Bool() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.OldRandom/InternalRandom Game.OldRandom::m_random
    IL_0006:  callvirt   instance int32 Game.OldRandom/InternalRandom::Next()
    IL_000b:  ldc.i4.2
    IL_000c:  rem
    IL_000d:  ldc.i4.0
    IL_000e:  ceq
    IL_0010:  ret
  } // end of method OldRandom::Bool

  .method public hidebysig instance int32 
          UniformInt(int32 min,
                     int32 max) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.OldRandom/InternalRandom Game.OldRandom::m_random
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  add
    IL_000a:  callvirt   instance int32 Game.OldRandom/InternalRandom::Next(int32,
                                                                            int32)
    IL_000f:  ret
  } // end of method OldRandom::UniformInt

  .method public hidebysig instance float32 
          UniformFloat(float32 min,
                       float32 max) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.OldRandom/InternalRandom Game.OldRandom::m_random
    IL_0006:  callvirt   instance float64 Game.OldRandom/InternalRandom::NextDouble()
    IL_000b:  conv.r4
    IL_000c:  ldarg.2
    IL_000d:  ldarg.1
    IL_000e:  sub
    IL_000f:  mul
    IL_0010:  ldarg.1
    IL_0011:  add
    IL_0012:  ret
  } // end of method OldRandom::UniformFloat

  .method public hidebysig instance float32 
          NormalFloat(float32 mean,
                      float32 stddev) cil managed
  {
    // 代码大小       258 (0x102)
    .maxstack  9
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     1.
    IL_000b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  conv.r8
    IL_0013:  ldc.r8     0.5
    IL_001c:  bge.un.s   IL_0086

    IL_001e:  ldc.r4     -2.
    IL_0023:  ldloc.0
    IL_0024:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_0029:  mul
    IL_002a:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_002f:  stloc.1
    IL_0030:  ldc.r4     0.32223243
    IL_0035:  ldloc.1
    IL_0036:  ldc.r4     1.
    IL_003b:  ldloc.1
    IL_003c:  ldc.r4     0.34224209
    IL_0041:  ldloc.1
    IL_0042:  ldc.r4     2.0423122e-002
    IL_0047:  ldloc.1
    IL_0048:  ldc.r4     4.5364221e-005
    IL_004d:  mul
    IL_004e:  add
    IL_004f:  mul
    IL_0050:  add
    IL_0051:  mul
    IL_0052:  add
    IL_0053:  mul
    IL_0054:  add
    IL_0055:  stloc.2
    IL_0056:  ldc.r4     9.9348463e-002
    IL_005b:  ldloc.1
    IL_005c:  ldc.r4     0.58858156
    IL_0061:  ldloc.1
    IL_0062:  ldc.r4     0.53110349
    IL_0067:  ldloc.1
    IL_0068:  ldc.r4     0.10353775
    IL_006d:  ldloc.1
    IL_006e:  ldc.r4     3.8560701e-003
    IL_0073:  mul
    IL_0074:  add
    IL_0075:  mul
    IL_0076:  add
    IL_0077:  mul
    IL_0078:  add
    IL_0079:  mul
    IL_007a:  add
    IL_007b:  stloc.3
    IL_007c:  ldarg.1
    IL_007d:  ldarg.2
    IL_007e:  ldloc.2
    IL_007f:  ldloc.3
    IL_0080:  div
    IL_0081:  ldloc.1
    IL_0082:  sub
    IL_0083:  mul
    IL_0084:  add
    IL_0085:  ret

    IL_0086:  ldc.r4     -2.
    IL_008b:  ldc.r4     1.
    IL_0090:  ldloc.0
    IL_0091:  sub
    IL_0092:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_0097:  mul
    IL_0098:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_009d:  stloc.s    V_4
    IL_009f:  ldc.r4     0.32223243
    IL_00a4:  ldloc.s    V_4
    IL_00a6:  ldc.r4     1.
    IL_00ab:  ldloc.s    V_4
    IL_00ad:  ldc.r4     0.34224209
    IL_00b2:  ldloc.s    V_4
    IL_00b4:  ldc.r4     2.0423122e-002
    IL_00b9:  ldloc.s    V_4
    IL_00bb:  ldc.r4     4.5364221e-005
    IL_00c0:  mul
    IL_00c1:  add
    IL_00c2:  mul
    IL_00c3:  add
    IL_00c4:  mul
    IL_00c5:  add
    IL_00c6:  mul
    IL_00c7:  add
    IL_00c8:  stloc.s    V_5
    IL_00ca:  ldc.r4     9.9348463e-002
    IL_00cf:  ldloc.s    V_4
    IL_00d1:  ldc.r4     0.58858156
    IL_00d6:  ldloc.s    V_4
    IL_00d8:  ldc.r4     0.53110349
    IL_00dd:  ldloc.s    V_4
    IL_00df:  ldc.r4     0.10353775
    IL_00e4:  ldloc.s    V_4
    IL_00e6:  ldc.r4     3.8560701e-003
    IL_00eb:  mul
    IL_00ec:  add
    IL_00ed:  mul
    IL_00ee:  add
    IL_00ef:  mul
    IL_00f0:  add
    IL_00f1:  mul
    IL_00f2:  add
    IL_00f3:  stloc.s    V_6
    IL_00f5:  ldarg.1
    IL_00f6:  ldarg.2
    IL_00f7:  ldloc.s    V_5
    IL_00f9:  ldloc.s    V_6
    IL_00fb:  div
    IL_00fc:  ldloc.s    V_4
    IL_00fe:  sub
    IL_00ff:  mul
    IL_0100:  sub
    IL_0101:  ret
  } // end of method OldRandom::NormalFloat

  .method public hidebysig instance valuetype [Engine]Engine.Vector2 
          Vector2(float32 length) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     -1.
    IL_0006:  ldc.r4     1.
    IL_000b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0010:  ldarg.0
    IL_0011:  ldc.r4     -1.
    IL_0016:  ldc.r4     1.
    IL_001b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0020:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0025:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_002a:  ldarg.1
    IL_002b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0030:  ret
  } // end of method OldRandom::Vector2

  .method public hidebysig instance valuetype [Engine]Engine.Vector2 
          UniformVector2(float32 minLength,
                         float32 maxLength) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     -1.
    IL_0006:  ldc.r4     1.
    IL_000b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0010:  ldarg.0
    IL_0011:  ldc.r4     -1.
    IL_0016:  ldc.r4     1.
    IL_001b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0020:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0025:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_002a:  ldarg.0
    IL_002b:  ldarg.1
    IL_002c:  ldarg.2
    IL_002d:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0032:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0037:  ret
  } // end of method OldRandom::UniformVector2

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          Vector3(float32 length) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     -1.
    IL_0006:  ldc.r4     1.
    IL_000b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0010:  ldarg.0
    IL_0011:  ldc.r4     -1.
    IL_0016:  ldc.r4     1.
    IL_001b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0020:  ldarg.0
    IL_0021:  ldc.r4     -1.
    IL_0026:  ldc.r4     1.
    IL_002b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0030:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0035:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_003a:  ldarg.1
    IL_003b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0040:  ret
  } // end of method OldRandom::Vector3

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          UniformVector3(float32 minLength,
                         float32 maxLength) cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     -1.
    IL_0006:  ldc.r4     1.
    IL_000b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0010:  ldarg.0
    IL_0011:  ldc.r4     -1.
    IL_0016:  ldc.r4     1.
    IL_001b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0020:  ldarg.0
    IL_0021:  ldc.r4     -1.
    IL_0026:  ldc.r4     1.
    IL_002b:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0030:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0035:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_003a:  ldarg.0
    IL_003b:  ldarg.1
    IL_003c:  ldarg.2
    IL_003d:  call       instance float32 Game.OldRandom::UniformFloat(float32,
                                                                       float32)
    IL_0042:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0047:  ret
  } // end of method OldRandom::UniformVector3

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  call       int64 [System.Runtime.Extensions]System.Diagnostics.Stopwatch::GetTimestamp()
    IL_0005:  conv.i4
    IL_0006:  stsfld     int32 Game.OldRandom::m_seed
    IL_000b:  ldc.i4.0
    IL_000c:  newobj     instance void Game.OldRandom::.ctor(int32)
    IL_0011:  stsfld     class Game.OldRandom Game.OldRandom::GlobalRandom
    IL_0016:  ret
  } // end of method OldRandom::.cctor

} // end of class Game.OldRandom