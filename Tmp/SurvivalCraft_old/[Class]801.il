.class public abstract auto ansi sealed beforefieldinit Game.SimplexNoise
       extends [System.Runtime]System.Object
{
  .field private static int32[][] m_grad3
  .field private static int32[] m_permutations
  .method private hidebysig static int32 
          FastFloor(float32 x) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  bgt.s      IL_000d

    IL_0008:  ldarg.0
    IL_0009:  conv.i4
    IL_000a:  ldc.i4.1
    IL_000b:  sub
    IL_000c:  ret

    IL_000d:  ldarg.0
    IL_000e:  conv.i4
    IL_000f:  ret
  } // end of method SimplexNoise::FastFloor

  .method private hidebysig static float32 
          Dot(int32[] g,
              float32 x,
              float32 y) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  ldelem.i4
    IL_0003:  conv.r4
    IL_0004:  ldarg.1
    IL_0005:  mul
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  ldelem.i4
    IL_0009:  conv.r4
    IL_000a:  ldarg.2
    IL_000b:  mul
    IL_000c:  add
    IL_000d:  ret
  } // end of method SimplexNoise::Dot

  .method private hidebysig static float32 
          Dot(int32[] g,
              float32 x,
              float32 y,
              float32 z) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  ldelem.i4
    IL_0003:  conv.r4
    IL_0004:  ldarg.1
    IL_0005:  mul
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  ldelem.i4
    IL_0009:  conv.r4
    IL_000a:  ldarg.2
    IL_000b:  mul
    IL_000c:  add
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.2
    IL_000f:  ldelem.i4
    IL_0010:  conv.r4
    IL_0011:  ldarg.3
    IL_0012:  mul
    IL_0013:  add
    IL_0014:  ret
  } // end of method SimplexNoise::Dot

  .method private hidebysig static float32 
          Hash(int32 x) cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   13
    IL_0003:  shl
    IL_0004:  ldarg.0
    IL_0005:  xor
    IL_0006:  starg.s    x
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldarg.0
    IL_000b:  mul
    IL_000c:  ldc.i4     0x3d73
    IL_0011:  mul
    IL_0012:  ldc.i4     0xc0ae5
    IL_0017:  add
    IL_0018:  mul
    IL_0019:  ldc.i4     0x5208dd0d
    IL_001e:  add
    IL_001f:  ldc.i4     0x7fffffff
    IL_0024:  and
    IL_0025:  conv.r4
    IL_0026:  ldc.r4     2.1474836e+009
    IL_002b:  div
    IL_002c:  ret
  } // end of method SimplexNoise::Hash

  .method public hidebysig static float32 
          Noise(float32 x) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  5
    .locals init (int32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0006:  conv.i4
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_000e:  conv.i4
    IL_000f:  ldarg.0
    IL_0010:  ldloc.0
    IL_0011:  conv.r4
    IL_0012:  sub
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  call       float32 Game.SimplexNoise::Hash(int32)
    IL_001a:  stloc.2
    IL_001b:  call       float32 Game.SimplexNoise::Hash(int32)
    IL_0020:  stloc.3
    IL_0021:  ldloc.2
    IL_0022:  ldloc.1
    IL_0023:  ldloc.1
    IL_0024:  mul
    IL_0025:  ldc.r4     3.
    IL_002a:  ldc.r4     2.
    IL_002f:  ldloc.1
    IL_0030:  mul
    IL_0031:  sub
    IL_0032:  mul
    IL_0033:  ldloc.3
    IL_0034:  ldloc.2
    IL_0035:  sub
    IL_0036:  mul
    IL_0037:  add
    IL_0038:  ret
  } // end of method SimplexNoise::Noise

  .method public hidebysig static float32 
          Noise(float32 x,
                float32 y) cil managed
  {
    // 代码大小       461 (0x1cd)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             int32 V_10,
             int32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             float32 V_21,
             float32 V_22,
             float32 V_23)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  add
    IL_0003:  ldc.r4     0.36602542
    IL_0008:  mul
    IL_0009:  stloc.3
    IL_000a:  ldarg.0
    IL_000b:  ldloc.3
    IL_000c:  add
    IL_000d:  call       int32 Game.SimplexNoise::FastFloor(float32)
    IL_0012:  ldarg.1
    IL_0013:  ldloc.3
    IL_0014:  add
    IL_0015:  call       int32 Game.SimplexNoise::FastFloor(float32)
    IL_001a:  stloc.s    V_4
    IL_001c:  dup
    IL_001d:  ldloc.s    V_4
    IL_001f:  add
    IL_0020:  conv.r4
    IL_0021:  ldc.r4     0.21132487
    IL_0026:  mul
    IL_0027:  stloc.s    V_5
    IL_0029:  dup
    IL_002a:  conv.r4
    IL_002b:  ldloc.s    V_5
    IL_002d:  sub
    IL_002e:  stloc.s    V_6
    IL_0030:  ldloc.s    V_4
    IL_0032:  conv.r4
    IL_0033:  ldloc.s    V_5
    IL_0035:  sub
    IL_0036:  stloc.s    V_7
    IL_0038:  ldarg.0
    IL_0039:  ldloc.s    V_6
    IL_003b:  sub
    IL_003c:  stloc.s    V_8
    IL_003e:  ldarg.1
    IL_003f:  ldloc.s    V_7
    IL_0041:  sub
    IL_0042:  stloc.s    V_9
    IL_0044:  ldloc.s    V_8
    IL_0046:  ldloc.s    V_9
    IL_0048:  ble.un.s   IL_0052

    IL_004a:  ldc.i4.1
    IL_004b:  stloc.s    V_10
    IL_004d:  ldc.i4.0
    IL_004e:  stloc.s    V_11
    IL_0050:  br.s       IL_0058

    IL_0052:  ldc.i4.0
    IL_0053:  stloc.s    V_10
    IL_0055:  ldc.i4.1
    IL_0056:  stloc.s    V_11
    IL_0058:  ldloc.s    V_8
    IL_005a:  ldloc.s    V_10
    IL_005c:  conv.r4
    IL_005d:  sub
    IL_005e:  ldc.r4     0.21132487
    IL_0063:  add
    IL_0064:  stloc.s    V_12
    IL_0066:  ldloc.s    V_9
    IL_0068:  ldloc.s    V_11
    IL_006a:  conv.r4
    IL_006b:  sub
    IL_006c:  ldc.r4     0.21132487
    IL_0071:  add
    IL_0072:  stloc.s    V_13
    IL_0074:  ldloc.s    V_8
    IL_0076:  ldc.r4     1.
    IL_007b:  sub
    IL_007c:  ldc.r4     0.42264974
    IL_0081:  add
    IL_0082:  stloc.s    V_14
    IL_0084:  ldloc.s    V_9
    IL_0086:  ldc.r4     1.
    IL_008b:  sub
    IL_008c:  ldc.r4     0.42264974
    IL_0091:  add
    IL_0092:  stloc.s    V_15
    IL_0094:  ldc.i4     0xff
    IL_0099:  and
    IL_009a:  stloc.s    V_16
    IL_009c:  ldloc.s    V_4
    IL_009e:  ldc.i4     0xff
    IL_00a3:  and
    IL_00a4:  stloc.s    V_17
    IL_00a6:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00ab:  ldloc.s    V_16
    IL_00ad:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00b2:  ldloc.s    V_17
    IL_00b4:  ldelem.i4
    IL_00b5:  add
    IL_00b6:  ldelem.i4
    IL_00b7:  ldc.i4.s   12
    IL_00b9:  rem
    IL_00ba:  stloc.s    V_18
    IL_00bc:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00c1:  ldloc.s    V_16
    IL_00c3:  ldloc.s    V_10
    IL_00c5:  add
    IL_00c6:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00cb:  ldloc.s    V_17
    IL_00cd:  ldloc.s    V_11
    IL_00cf:  add
    IL_00d0:  ldelem.i4
    IL_00d1:  add
    IL_00d2:  ldelem.i4
    IL_00d3:  ldc.i4.s   12
    IL_00d5:  rem
    IL_00d6:  stloc.s    V_19
    IL_00d8:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00dd:  ldloc.s    V_16
    IL_00df:  ldc.i4.1
    IL_00e0:  add
    IL_00e1:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00e6:  ldloc.s    V_17
    IL_00e8:  ldc.i4.1
    IL_00e9:  add
    IL_00ea:  ldelem.i4
    IL_00eb:  add
    IL_00ec:  ldelem.i4
    IL_00ed:  ldc.i4.s   12
    IL_00ef:  rem
    IL_00f0:  stloc.s    V_20
    IL_00f2:  ldc.r4     0.5
    IL_00f7:  ldloc.s    V_8
    IL_00f9:  ldloc.s    V_8
    IL_00fb:  mul
    IL_00fc:  sub
    IL_00fd:  ldloc.s    V_9
    IL_00ff:  ldloc.s    V_9
    IL_0101:  mul
    IL_0102:  sub
    IL_0103:  stloc.s    V_21
    IL_0105:  ldloc.s    V_21
    IL_0107:  ldc.r4     0.0
    IL_010c:  bge.un.s   IL_0116

    IL_010e:  ldc.r4     0.0
    IL_0113:  stloc.0
    IL_0114:  br.s       IL_0135

    IL_0116:  ldloc.s    V_21
    IL_0118:  ldloc.s    V_21
    IL_011a:  mul
    IL_011b:  stloc.s    V_21
    IL_011d:  ldloc.s    V_21
    IL_011f:  ldloc.s    V_21
    IL_0121:  mul
    IL_0122:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_0127:  ldloc.s    V_18
    IL_0129:  ldelem.ref
    IL_012a:  ldloc.s    V_8
    IL_012c:  ldloc.s    V_9
    IL_012e:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32)
    IL_0133:  mul
    IL_0134:  stloc.0
    IL_0135:  ldc.r4     0.5
    IL_013a:  ldloc.s    V_12
    IL_013c:  ldloc.s    V_12
    IL_013e:  mul
    IL_013f:  sub
    IL_0140:  ldloc.s    V_13
    IL_0142:  ldloc.s    V_13
    IL_0144:  mul
    IL_0145:  sub
    IL_0146:  stloc.s    V_22
    IL_0148:  ldloc.s    V_22
    IL_014a:  ldc.r4     0.0
    IL_014f:  bge.un.s   IL_0159

    IL_0151:  ldc.r4     0.0
    IL_0156:  stloc.1
    IL_0157:  br.s       IL_0178

    IL_0159:  ldloc.s    V_22
    IL_015b:  ldloc.s    V_22
    IL_015d:  mul
    IL_015e:  stloc.s    V_22
    IL_0160:  ldloc.s    V_22
    IL_0162:  ldloc.s    V_22
    IL_0164:  mul
    IL_0165:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_016a:  ldloc.s    V_19
    IL_016c:  ldelem.ref
    IL_016d:  ldloc.s    V_12
    IL_016f:  ldloc.s    V_13
    IL_0171:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32)
    IL_0176:  mul
    IL_0177:  stloc.1
    IL_0178:  ldc.r4     0.5
    IL_017d:  ldloc.s    V_14
    IL_017f:  ldloc.s    V_14
    IL_0181:  mul
    IL_0182:  sub
    IL_0183:  ldloc.s    V_15
    IL_0185:  ldloc.s    V_15
    IL_0187:  mul
    IL_0188:  sub
    IL_0189:  stloc.s    V_23
    IL_018b:  ldloc.s    V_23
    IL_018d:  ldc.r4     0.0
    IL_0192:  bge.un.s   IL_019c

    IL_0194:  ldc.r4     0.0
    IL_0199:  stloc.2
    IL_019a:  br.s       IL_01bb

    IL_019c:  ldloc.s    V_23
    IL_019e:  ldloc.s    V_23
    IL_01a0:  mul
    IL_01a1:  stloc.s    V_23
    IL_01a3:  ldloc.s    V_23
    IL_01a5:  ldloc.s    V_23
    IL_01a7:  mul
    IL_01a8:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_01ad:  ldloc.s    V_20
    IL_01af:  ldelem.ref
    IL_01b0:  ldloc.s    V_14
    IL_01b2:  ldloc.s    V_15
    IL_01b4:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32)
    IL_01b9:  mul
    IL_01ba:  stloc.2
    IL_01bb:  ldc.r4     35.
    IL_01c0:  ldloc.0
    IL_01c1:  ldloc.1
    IL_01c2:  add
    IL_01c3:  ldloc.2
    IL_01c4:  add
    IL_01c5:  mul
    IL_01c6:  ldc.r4     0.5
    IL_01cb:  add
    IL_01cc:  ret
  } // end of method SimplexNoise::Noise

  .method public hidebysig static float32 
          Noise(float32 x,
                float32 y,
                float32 z) cil managed
  {
    // 代码大小       877 (0x36d)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             int32 V_5,
             int32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             float32 V_20,
             float32 V_21,
             float32 V_22,
             float32 V_23,
             float32 V_24,
             float32 V_25,
             float32 V_26,
             float32 V_27,
             float32 V_28,
             int32 V_29,
             int32 V_30,
             int32 V_31,
             int32 V_32,
             int32 V_33,
             int32 V_34,
             int32 V_35,
             float32 V_36,
             float32 V_37,
             float32 V_38,
             float32 V_39)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  add
    IL_0003:  ldarg.2
    IL_0004:  add
    IL_0005:  ldc.r4     0.33333334
    IL_000a:  mul
    IL_000b:  stloc.s    V_4
    IL_000d:  ldarg.0
    IL_000e:  ldloc.s    V_4
    IL_0010:  add
    IL_0011:  call       int32 Game.SimplexNoise::FastFloor(float32)
    IL_0016:  ldarg.1
    IL_0017:  ldloc.s    V_4
    IL_0019:  add
    IL_001a:  call       int32 Game.SimplexNoise::FastFloor(float32)
    IL_001f:  stloc.s    V_5
    IL_0021:  ldarg.2
    IL_0022:  ldloc.s    V_4
    IL_0024:  add
    IL_0025:  call       int32 Game.SimplexNoise::FastFloor(float32)
    IL_002a:  stloc.s    V_6
    IL_002c:  dup
    IL_002d:  ldloc.s    V_5
    IL_002f:  add
    IL_0030:  ldloc.s    V_6
    IL_0032:  add
    IL_0033:  conv.r4
    IL_0034:  ldc.r4     0.16666667
    IL_0039:  mul
    IL_003a:  stloc.s    V_7
    IL_003c:  dup
    IL_003d:  conv.r4
    IL_003e:  ldloc.s    V_7
    IL_0040:  sub
    IL_0041:  stloc.s    V_8
    IL_0043:  ldloc.s    V_5
    IL_0045:  conv.r4
    IL_0046:  ldloc.s    V_7
    IL_0048:  sub
    IL_0049:  stloc.s    V_9
    IL_004b:  ldloc.s    V_6
    IL_004d:  conv.r4
    IL_004e:  ldloc.s    V_7
    IL_0050:  sub
    IL_0051:  stloc.s    V_10
    IL_0053:  ldarg.0
    IL_0054:  ldloc.s    V_8
    IL_0056:  sub
    IL_0057:  stloc.s    V_11
    IL_0059:  ldarg.1
    IL_005a:  ldloc.s    V_9
    IL_005c:  sub
    IL_005d:  stloc.s    V_12
    IL_005f:  ldarg.2
    IL_0060:  ldloc.s    V_10
    IL_0062:  sub
    IL_0063:  stloc.s    V_13
    IL_0065:  ldloc.s    V_11
    IL_0067:  ldloc.s    V_12
    IL_0069:  blt.un.s   IL_00b3

    IL_006b:  ldloc.s    V_12
    IL_006d:  ldloc.s    V_13
    IL_006f:  blt.un.s   IL_0085

    IL_0071:  ldc.i4.1
    IL_0072:  stloc.s    V_14
    IL_0074:  ldc.i4.0
    IL_0075:  stloc.s    V_15
    IL_0077:  ldc.i4.0
    IL_0078:  stloc.s    V_16
    IL_007a:  ldc.i4.1
    IL_007b:  stloc.s    V_17
    IL_007d:  ldc.i4.1
    IL_007e:  stloc.s    V_18
    IL_0080:  ldc.i4.0
    IL_0081:  stloc.s    V_19
    IL_0083:  br.s       IL_00f9

    IL_0085:  ldloc.s    V_11
    IL_0087:  ldloc.s    V_13
    IL_0089:  blt.un.s   IL_009f

    IL_008b:  ldc.i4.1
    IL_008c:  stloc.s    V_14
    IL_008e:  ldc.i4.0
    IL_008f:  stloc.s    V_15
    IL_0091:  ldc.i4.0
    IL_0092:  stloc.s    V_16
    IL_0094:  ldc.i4.1
    IL_0095:  stloc.s    V_17
    IL_0097:  ldc.i4.0
    IL_0098:  stloc.s    V_18
    IL_009a:  ldc.i4.1
    IL_009b:  stloc.s    V_19
    IL_009d:  br.s       IL_00f9

    IL_009f:  ldc.i4.0
    IL_00a0:  stloc.s    V_14
    IL_00a2:  ldc.i4.0
    IL_00a3:  stloc.s    V_15
    IL_00a5:  ldc.i4.1
    IL_00a6:  stloc.s    V_16
    IL_00a8:  ldc.i4.1
    IL_00a9:  stloc.s    V_17
    IL_00ab:  ldc.i4.0
    IL_00ac:  stloc.s    V_18
    IL_00ae:  ldc.i4.1
    IL_00af:  stloc.s    V_19
    IL_00b1:  br.s       IL_00f9

    IL_00b3:  ldloc.s    V_12
    IL_00b5:  ldloc.s    V_13
    IL_00b7:  bge.un.s   IL_00cd

    IL_00b9:  ldc.i4.0
    IL_00ba:  stloc.s    V_14
    IL_00bc:  ldc.i4.0
    IL_00bd:  stloc.s    V_15
    IL_00bf:  ldc.i4.1
    IL_00c0:  stloc.s    V_16
    IL_00c2:  ldc.i4.0
    IL_00c3:  stloc.s    V_17
    IL_00c5:  ldc.i4.1
    IL_00c6:  stloc.s    V_18
    IL_00c8:  ldc.i4.1
    IL_00c9:  stloc.s    V_19
    IL_00cb:  br.s       IL_00f9

    IL_00cd:  ldloc.s    V_11
    IL_00cf:  ldloc.s    V_13
    IL_00d1:  bge.un.s   IL_00e7

    IL_00d3:  ldc.i4.0
    IL_00d4:  stloc.s    V_14
    IL_00d6:  ldc.i4.1
    IL_00d7:  stloc.s    V_15
    IL_00d9:  ldc.i4.0
    IL_00da:  stloc.s    V_16
    IL_00dc:  ldc.i4.0
    IL_00dd:  stloc.s    V_17
    IL_00df:  ldc.i4.1
    IL_00e0:  stloc.s    V_18
    IL_00e2:  ldc.i4.1
    IL_00e3:  stloc.s    V_19
    IL_00e5:  br.s       IL_00f9

    IL_00e7:  ldc.i4.0
    IL_00e8:  stloc.s    V_14
    IL_00ea:  ldc.i4.1
    IL_00eb:  stloc.s    V_15
    IL_00ed:  ldc.i4.0
    IL_00ee:  stloc.s    V_16
    IL_00f0:  ldc.i4.1
    IL_00f1:  stloc.s    V_17
    IL_00f3:  ldc.i4.1
    IL_00f4:  stloc.s    V_18
    IL_00f6:  ldc.i4.0
    IL_00f7:  stloc.s    V_19
    IL_00f9:  ldloc.s    V_11
    IL_00fb:  ldloc.s    V_14
    IL_00fd:  conv.r4
    IL_00fe:  sub
    IL_00ff:  ldc.r4     0.16666667
    IL_0104:  add
    IL_0105:  stloc.s    V_20
    IL_0107:  ldloc.s    V_12
    IL_0109:  ldloc.s    V_15
    IL_010b:  conv.r4
    IL_010c:  sub
    IL_010d:  ldc.r4     0.16666667
    IL_0112:  add
    IL_0113:  stloc.s    V_21
    IL_0115:  ldloc.s    V_13
    IL_0117:  ldloc.s    V_16
    IL_0119:  conv.r4
    IL_011a:  sub
    IL_011b:  ldc.r4     0.16666667
    IL_0120:  add
    IL_0121:  stloc.s    V_22
    IL_0123:  ldloc.s    V_11
    IL_0125:  ldloc.s    V_17
    IL_0127:  conv.r4
    IL_0128:  sub
    IL_0129:  ldc.r4     0.33333334
    IL_012e:  add
    IL_012f:  stloc.s    V_23
    IL_0131:  ldloc.s    V_12
    IL_0133:  ldloc.s    V_18
    IL_0135:  conv.r4
    IL_0136:  sub
    IL_0137:  ldc.r4     0.33333334
    IL_013c:  add
    IL_013d:  stloc.s    V_24
    IL_013f:  ldloc.s    V_13
    IL_0141:  ldloc.s    V_19
    IL_0143:  conv.r4
    IL_0144:  sub
    IL_0145:  ldc.r4     0.33333334
    IL_014a:  add
    IL_014b:  stloc.s    V_25
    IL_014d:  ldloc.s    V_11
    IL_014f:  ldc.r4     1.
    IL_0154:  sub
    IL_0155:  ldc.r4     0.5
    IL_015a:  add
    IL_015b:  stloc.s    V_26
    IL_015d:  ldloc.s    V_12
    IL_015f:  ldc.r4     1.
    IL_0164:  sub
    IL_0165:  ldc.r4     0.5
    IL_016a:  add
    IL_016b:  stloc.s    V_27
    IL_016d:  ldloc.s    V_13
    IL_016f:  ldc.r4     1.
    IL_0174:  sub
    IL_0175:  ldc.r4     0.5
    IL_017a:  add
    IL_017b:  stloc.s    V_28
    IL_017d:  ldc.i4     0xff
    IL_0182:  and
    IL_0183:  stloc.s    V_29
    IL_0185:  ldloc.s    V_5
    IL_0187:  ldc.i4     0xff
    IL_018c:  and
    IL_018d:  stloc.s    V_30
    IL_018f:  ldloc.s    V_6
    IL_0191:  ldc.i4     0xff
    IL_0196:  and
    IL_0197:  stloc.s    V_31
    IL_0199:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_019e:  ldloc.s    V_29
    IL_01a0:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01a5:  ldloc.s    V_30
    IL_01a7:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01ac:  ldloc.s    V_31
    IL_01ae:  ldelem.i4
    IL_01af:  add
    IL_01b0:  ldelem.i4
    IL_01b1:  add
    IL_01b2:  ldelem.i4
    IL_01b3:  ldc.i4.s   12
    IL_01b5:  rem
    IL_01b6:  stloc.s    V_32
    IL_01b8:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01bd:  ldloc.s    V_29
    IL_01bf:  ldloc.s    V_14
    IL_01c1:  add
    IL_01c2:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01c7:  ldloc.s    V_30
    IL_01c9:  ldloc.s    V_15
    IL_01cb:  add
    IL_01cc:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01d1:  ldloc.s    V_31
    IL_01d3:  ldloc.s    V_16
    IL_01d5:  add
    IL_01d6:  ldelem.i4
    IL_01d7:  add
    IL_01d8:  ldelem.i4
    IL_01d9:  add
    IL_01da:  ldelem.i4
    IL_01db:  ldc.i4.s   12
    IL_01dd:  rem
    IL_01de:  stloc.s    V_33
    IL_01e0:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01e5:  ldloc.s    V_29
    IL_01e7:  ldloc.s    V_17
    IL_01e9:  add
    IL_01ea:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01ef:  ldloc.s    V_30
    IL_01f1:  ldloc.s    V_18
    IL_01f3:  add
    IL_01f4:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01f9:  ldloc.s    V_31
    IL_01fb:  ldloc.s    V_19
    IL_01fd:  add
    IL_01fe:  ldelem.i4
    IL_01ff:  add
    IL_0200:  ldelem.i4
    IL_0201:  add
    IL_0202:  ldelem.i4
    IL_0203:  ldc.i4.s   12
    IL_0205:  rem
    IL_0206:  stloc.s    V_34
    IL_0208:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_020d:  ldloc.s    V_29
    IL_020f:  ldc.i4.1
    IL_0210:  add
    IL_0211:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_0216:  ldloc.s    V_30
    IL_0218:  ldc.i4.1
    IL_0219:  add
    IL_021a:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_021f:  ldloc.s    V_31
    IL_0221:  ldc.i4.1
    IL_0222:  add
    IL_0223:  ldelem.i4
    IL_0224:  add
    IL_0225:  ldelem.i4
    IL_0226:  add
    IL_0227:  ldelem.i4
    IL_0228:  ldc.i4.s   12
    IL_022a:  rem
    IL_022b:  stloc.s    V_35
    IL_022d:  ldc.r4     0.60000002
    IL_0232:  ldloc.s    V_11
    IL_0234:  ldloc.s    V_11
    IL_0236:  mul
    IL_0237:  sub
    IL_0238:  ldloc.s    V_12
    IL_023a:  ldloc.s    V_12
    IL_023c:  mul
    IL_023d:  sub
    IL_023e:  ldloc.s    V_13
    IL_0240:  ldloc.s    V_13
    IL_0242:  mul
    IL_0243:  sub
    IL_0244:  stloc.s    V_36
    IL_0246:  ldloc.s    V_36
    IL_0248:  ldc.r4     0.0
    IL_024d:  bge.un.s   IL_0257

    IL_024f:  ldc.r4     0.0
    IL_0254:  stloc.0
    IL_0255:  br.s       IL_0278

    IL_0257:  ldloc.s    V_36
    IL_0259:  ldloc.s    V_36
    IL_025b:  mul
    IL_025c:  stloc.s    V_36
    IL_025e:  ldloc.s    V_36
    IL_0260:  ldloc.s    V_36
    IL_0262:  mul
    IL_0263:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_0268:  ldloc.s    V_32
    IL_026a:  ldelem.ref
    IL_026b:  ldloc.s    V_11
    IL_026d:  ldloc.s    V_12
    IL_026f:  ldloc.s    V_13
    IL_0271:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32,
                                                        float32)
    IL_0276:  mul
    IL_0277:  stloc.0
    IL_0278:  ldc.r4     0.60000002
    IL_027d:  ldloc.s    V_20
    IL_027f:  ldloc.s    V_20
    IL_0281:  mul
    IL_0282:  sub
    IL_0283:  ldloc.s    V_21
    IL_0285:  ldloc.s    V_21
    IL_0287:  mul
    IL_0288:  sub
    IL_0289:  ldloc.s    V_22
    IL_028b:  ldloc.s    V_22
    IL_028d:  mul
    IL_028e:  sub
    IL_028f:  stloc.s    V_37
    IL_0291:  ldloc.s    V_37
    IL_0293:  ldc.r4     0.0
    IL_0298:  bge.un.s   IL_02a2

    IL_029a:  ldc.r4     0.0
    IL_029f:  stloc.1
    IL_02a0:  br.s       IL_02c3

    IL_02a2:  ldloc.s    V_37
    IL_02a4:  ldloc.s    V_37
    IL_02a6:  mul
    IL_02a7:  stloc.s    V_37
    IL_02a9:  ldloc.s    V_37
    IL_02ab:  ldloc.s    V_37
    IL_02ad:  mul
    IL_02ae:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_02b3:  ldloc.s    V_33
    IL_02b5:  ldelem.ref
    IL_02b6:  ldloc.s    V_20
    IL_02b8:  ldloc.s    V_21
    IL_02ba:  ldloc.s    V_22
    IL_02bc:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32,
                                                        float32)
    IL_02c1:  mul
    IL_02c2:  stloc.1
    IL_02c3:  ldc.r4     0.60000002
    IL_02c8:  ldloc.s    V_23
    IL_02ca:  ldloc.s    V_23
    IL_02cc:  mul
    IL_02cd:  sub
    IL_02ce:  ldloc.s    V_24
    IL_02d0:  ldloc.s    V_24
    IL_02d2:  mul
    IL_02d3:  sub
    IL_02d4:  ldloc.s    V_25
    IL_02d6:  ldloc.s    V_25
    IL_02d8:  mul
    IL_02d9:  sub
    IL_02da:  stloc.s    V_38
    IL_02dc:  ldloc.s    V_38
    IL_02de:  ldc.r4     0.0
    IL_02e3:  bge.un.s   IL_02ed

    IL_02e5:  ldc.r4     0.0
    IL_02ea:  stloc.2
    IL_02eb:  br.s       IL_030e

    IL_02ed:  ldloc.s    V_38
    IL_02ef:  ldloc.s    V_38
    IL_02f1:  mul
    IL_02f2:  stloc.s    V_38
    IL_02f4:  ldloc.s    V_38
    IL_02f6:  ldloc.s    V_38
    IL_02f8:  mul
    IL_02f9:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_02fe:  ldloc.s    V_34
    IL_0300:  ldelem.ref
    IL_0301:  ldloc.s    V_23
    IL_0303:  ldloc.s    V_24
    IL_0305:  ldloc.s    V_25
    IL_0307:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32,
                                                        float32)
    IL_030c:  mul
    IL_030d:  stloc.2
    IL_030e:  ldc.r4     0.60000002
    IL_0313:  ldloc.s    V_26
    IL_0315:  ldloc.s    V_26
    IL_0317:  mul
    IL_0318:  sub
    IL_0319:  ldloc.s    V_27
    IL_031b:  ldloc.s    V_27
    IL_031d:  mul
    IL_031e:  sub
    IL_031f:  ldloc.s    V_28
    IL_0321:  ldloc.s    V_28
    IL_0323:  mul
    IL_0324:  sub
    IL_0325:  stloc.s    V_39
    IL_0327:  ldloc.s    V_39
    IL_0329:  ldc.r4     0.0
    IL_032e:  bge.un.s   IL_0338

    IL_0330:  ldc.r4     0.0
    IL_0335:  stloc.3
    IL_0336:  br.s       IL_0359

    IL_0338:  ldloc.s    V_39
    IL_033a:  ldloc.s    V_39
    IL_033c:  mul
    IL_033d:  stloc.s    V_39
    IL_033f:  ldloc.s    V_39
    IL_0341:  ldloc.s    V_39
    IL_0343:  mul
    IL_0344:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_0349:  ldloc.s    V_35
    IL_034b:  ldelem.ref
    IL_034c:  ldloc.s    V_26
    IL_034e:  ldloc.s    V_27
    IL_0350:  ldloc.s    V_28
    IL_0352:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32,
                                                        float32)
    IL_0357:  mul
    IL_0358:  stloc.3
    IL_0359:  ldc.r4     16.
    IL_035e:  ldloc.0
    IL_035f:  ldloc.1
    IL_0360:  add
    IL_0361:  ldloc.2
    IL_0362:  add
    IL_0363:  ldloc.3
    IL_0364:  add
    IL_0365:  mul
    IL_0366:  ldc.r4     0.5
    IL_036b:  add
    IL_036c:  ret
  } // end of method SimplexNoise::Noise

  .method public hidebysig static float32 
          OctavedNoise(float32 x,
                       float32 frequency,
                       int32 octaves,
                       float32 frequencyStep,
                       float32 amplitudeStep) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  4
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             int32 V_3)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldc.r4     0.0
    IL_000b:  stloc.1
    IL_000c:  ldc.r4     1.
    IL_0011:  stloc.2
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.3
    IL_0014:  br.s       IL_0035

    IL_0016:  ldloc.0
    IL_0017:  ldloc.2
    IL_0018:  ldarg.0
    IL_0019:  ldarg.1
    IL_001a:  mul
    IL_001b:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0020:  mul
    IL_0021:  add
    IL_0022:  stloc.0
    IL_0023:  ldloc.1
    IL_0024:  ldloc.2
    IL_0025:  add
    IL_0026:  stloc.1
    IL_0027:  ldarg.1
    IL_0028:  ldarg.3
    IL_0029:  mul
    IL_002a:  starg.s    frequency
    IL_002c:  ldloc.2
    IL_002d:  ldarg.s    amplitudeStep
    IL_002f:  mul
    IL_0030:  stloc.2
    IL_0031:  ldloc.3
    IL_0032:  ldc.i4.1
    IL_0033:  add
    IL_0034:  stloc.3
    IL_0035:  ldloc.3
    IL_0036:  ldarg.2
    IL_0037:  blt.s      IL_0016

    IL_0039:  ldloc.0
    IL_003a:  ldloc.1
    IL_003b:  div
    IL_003c:  ret
  } // end of method SimplexNoise::OctavedNoise

  .method public hidebysig static float32 
          OctavedNoise(float32 x,
                       float32 y,
                       float32 frequency,
                       int32 octaves,
                       float32 frequencyStep,
                       float32 amplitudeStep) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             int32 V_3)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldc.r4     0.0
    IL_000b:  stloc.1
    IL_000c:  ldc.r4     1.
    IL_0011:  stloc.2
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.3
    IL_0014:  br.s       IL_0039

    IL_0016:  ldloc.0
    IL_0017:  ldloc.2
    IL_0018:  ldarg.0
    IL_0019:  ldarg.2
    IL_001a:  mul
    IL_001b:  ldarg.1
    IL_001c:  ldarg.2
    IL_001d:  mul
    IL_001e:  call       float32 Game.SimplexNoise::Noise(float32,
                                                          float32)
    IL_0023:  mul
    IL_0024:  add
    IL_0025:  stloc.0
    IL_0026:  ldloc.1
    IL_0027:  ldloc.2
    IL_0028:  add
    IL_0029:  stloc.1
    IL_002a:  ldarg.2
    IL_002b:  ldarg.s    frequencyStep
    IL_002d:  mul
    IL_002e:  starg.s    frequency
    IL_0030:  ldloc.2
    IL_0031:  ldarg.s    amplitudeStep
    IL_0033:  mul
    IL_0034:  stloc.2
    IL_0035:  ldloc.3
    IL_0036:  ldc.i4.1
    IL_0037:  add
    IL_0038:  stloc.3
    IL_0039:  ldloc.3
    IL_003a:  ldarg.3
    IL_003b:  blt.s      IL_0016

    IL_003d:  ldloc.0
    IL_003e:  ldloc.1
    IL_003f:  div
    IL_0040:  ret
  } // end of method SimplexNoise::OctavedNoise

  .method public hidebysig static float32 
          OctavedNoise(float32 x,
                       float32 y,
                       float32 z,
                       float32 frequency,
                       int32 octaves,
                       float32 frequencyStep,
                       float32 amplitudeStep) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  6
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             int32 V_3)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldc.r4     0.0
    IL_000b:  stloc.1
    IL_000c:  ldc.r4     1.
    IL_0011:  stloc.2
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.3
    IL_0014:  br.s       IL_003c

    IL_0016:  ldloc.0
    IL_0017:  ldloc.2
    IL_0018:  ldarg.0
    IL_0019:  ldarg.3
    IL_001a:  mul
    IL_001b:  ldarg.1
    IL_001c:  ldarg.3
    IL_001d:  mul
    IL_001e:  ldarg.2
    IL_001f:  ldarg.3
    IL_0020:  mul
    IL_0021:  call       float32 Game.SimplexNoise::Noise(float32,
                                                          float32,
                                                          float32)
    IL_0026:  mul
    IL_0027:  add
    IL_0028:  stloc.0
    IL_0029:  ldloc.1
    IL_002a:  ldloc.2
    IL_002b:  add
    IL_002c:  stloc.1
    IL_002d:  ldarg.3
    IL_002e:  ldarg.s    frequencyStep
    IL_0030:  mul
    IL_0031:  starg.s    frequency
    IL_0033:  ldloc.2
    IL_0034:  ldarg.s    amplitudeStep
    IL_0036:  mul
    IL_0037:  stloc.2
    IL_0038:  ldloc.3
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  stloc.3
    IL_003c:  ldloc.3
    IL_003d:  ldarg.s    octaves
    IL_003f:  blt.s      IL_0016

    IL_0041:  ldloc.0
    IL_0042:  ldloc.1
    IL_0043:  div
    IL_0044:  ret
  } // end of method SimplexNoise::OctavedNoise

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       246 (0xf6)
    .maxstack  7
    IL_0000:  ldc.i4.s   12
    IL_0002:  newarr     int32[]
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.3
    IL_000a:  newarr     [System.Runtime]System.Int32
    IL_000f:  dup
    IL_0010:  ldc.i4.0
    IL_0011:  ldc.i4.1
    IL_0012:  stelem.i4
    IL_0013:  dup
    IL_0014:  ldc.i4.1
    IL_0015:  ldc.i4.1
    IL_0016:  stelem.i4
    IL_0017:  stelem.ref
    IL_0018:  dup
    IL_0019:  ldc.i4.1
    IL_001a:  ldc.i4.3
    IL_001b:  newarr     [System.Runtime]System.Int32
    IL_0020:  dup
    IL_0021:  ldc.i4.0
    IL_0022:  ldc.i4.m1
    IL_0023:  stelem.i4
    IL_0024:  dup
    IL_0025:  ldc.i4.1
    IL_0026:  ldc.i4.1
    IL_0027:  stelem.i4
    IL_0028:  stelem.ref
    IL_0029:  dup
    IL_002a:  ldc.i4.2
    IL_002b:  ldc.i4.3
    IL_002c:  newarr     [System.Runtime]System.Int32
    IL_0031:  dup
    IL_0032:  ldc.i4.0
    IL_0033:  ldc.i4.1
    IL_0034:  stelem.i4
    IL_0035:  dup
    IL_0036:  ldc.i4.1
    IL_0037:  ldc.i4.m1
    IL_0038:  stelem.i4
    IL_0039:  stelem.ref
    IL_003a:  dup
    IL_003b:  ldc.i4.3
    IL_003c:  ldc.i4.3
    IL_003d:  newarr     [System.Runtime]System.Int32
    IL_0042:  dup
    IL_0043:  ldc.i4.0
    IL_0044:  ldc.i4.m1
    IL_0045:  stelem.i4
    IL_0046:  dup
    IL_0047:  ldc.i4.1
    IL_0048:  ldc.i4.m1
    IL_0049:  stelem.i4
    IL_004a:  stelem.ref
    IL_004b:  dup
    IL_004c:  ldc.i4.4
    IL_004d:  ldc.i4.3
    IL_004e:  newarr     [System.Runtime]System.Int32
    IL_0053:  dup
    IL_0054:  ldc.i4.0
    IL_0055:  ldc.i4.1
    IL_0056:  stelem.i4
    IL_0057:  dup
    IL_0058:  ldc.i4.2
    IL_0059:  ldc.i4.1
    IL_005a:  stelem.i4
    IL_005b:  stelem.ref
    IL_005c:  dup
    IL_005d:  ldc.i4.5
    IL_005e:  ldc.i4.3
    IL_005f:  newarr     [System.Runtime]System.Int32
    IL_0064:  dup
    IL_0065:  ldc.i4.0
    IL_0066:  ldc.i4.m1
    IL_0067:  stelem.i4
    IL_0068:  dup
    IL_0069:  ldc.i4.2
    IL_006a:  ldc.i4.1
    IL_006b:  stelem.i4
    IL_006c:  stelem.ref
    IL_006d:  dup
    IL_006e:  ldc.i4.6
    IL_006f:  ldc.i4.3
    IL_0070:  newarr     [System.Runtime]System.Int32
    IL_0075:  dup
    IL_0076:  ldc.i4.0
    IL_0077:  ldc.i4.1
    IL_0078:  stelem.i4
    IL_0079:  dup
    IL_007a:  ldc.i4.2
    IL_007b:  ldc.i4.m1
    IL_007c:  stelem.i4
    IL_007d:  stelem.ref
    IL_007e:  dup
    IL_007f:  ldc.i4.7
    IL_0080:  ldc.i4.3
    IL_0081:  newarr     [System.Runtime]System.Int32
    IL_0086:  dup
    IL_0087:  ldc.i4.0
    IL_0088:  ldc.i4.m1
    IL_0089:  stelem.i4
    IL_008a:  dup
    IL_008b:  ldc.i4.2
    IL_008c:  ldc.i4.m1
    IL_008d:  stelem.i4
    IL_008e:  stelem.ref
    IL_008f:  dup
    IL_0090:  ldc.i4.8
    IL_0091:  ldc.i4.3
    IL_0092:  newarr     [System.Runtime]System.Int32
    IL_0097:  dup
    IL_0098:  ldc.i4.1
    IL_0099:  ldc.i4.1
    IL_009a:  stelem.i4
    IL_009b:  dup
    IL_009c:  ldc.i4.2
    IL_009d:  ldc.i4.1
    IL_009e:  stelem.i4
    IL_009f:  stelem.ref
    IL_00a0:  dup
    IL_00a1:  ldc.i4.s   9
    IL_00a3:  ldc.i4.3
    IL_00a4:  newarr     [System.Runtime]System.Int32
    IL_00a9:  dup
    IL_00aa:  ldc.i4.1
    IL_00ab:  ldc.i4.m1
    IL_00ac:  stelem.i4
    IL_00ad:  dup
    IL_00ae:  ldc.i4.2
    IL_00af:  ldc.i4.1
    IL_00b0:  stelem.i4
    IL_00b1:  stelem.ref
    IL_00b2:  dup
    IL_00b3:  ldc.i4.s   10
    IL_00b5:  ldc.i4.3
    IL_00b6:  newarr     [System.Runtime]System.Int32
    IL_00bb:  dup
    IL_00bc:  ldc.i4.1
    IL_00bd:  ldc.i4.1
    IL_00be:  stelem.i4
    IL_00bf:  dup
    IL_00c0:  ldc.i4.2
    IL_00c1:  ldc.i4.m1
    IL_00c2:  stelem.i4
    IL_00c3:  stelem.ref
    IL_00c4:  dup
    IL_00c5:  ldc.i4.s   11
    IL_00c7:  ldc.i4.3
    IL_00c8:  newarr     [System.Runtime]System.Int32
    IL_00cd:  dup
    IL_00ce:  ldc.i4.1
    IL_00cf:  ldc.i4.m1
    IL_00d0:  stelem.i4
    IL_00d1:  dup
    IL_00d2:  ldc.i4.2
    IL_00d3:  ldc.i4.m1
    IL_00d4:  stelem.i4
    IL_00d5:  stelem.ref
    IL_00d6:  stsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_00db:  ldc.i4     0x200
    IL_00e0:  newarr     [System.Runtime]System.Int32
    IL_00e5:  dup
    IL_00e6:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=2048' '<PrivateImplementationDetails>'::'43A214299CEA27B6A55E61A929FC7B62C5D4941E'
    IL_00eb:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_00f0:  stsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00f5:  ret
  } // end of method SimplexNoise::.cctor

} // end of class Game.SimplexNoise