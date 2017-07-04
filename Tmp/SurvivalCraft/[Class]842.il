.class public abstract auto ansi sealed beforefieldinit Game.SimplexNoise
       extends [System.Runtime]System.Object
{
  .field private static int32[][] m_grad3
  .field private static int32[] m_permutations
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
    // 代码大小       463 (0x1cf)
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
    IL_000d:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0012:  conv.i4
    IL_0013:  ldarg.1
    IL_0014:  ldloc.3
    IL_0015:  add
    IL_0016:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_001b:  conv.i4
    IL_001c:  stloc.s    V_4
    IL_001e:  dup
    IL_001f:  ldloc.s    V_4
    IL_0021:  add
    IL_0022:  conv.r4
    IL_0023:  ldc.r4     0.21132487
    IL_0028:  mul
    IL_0029:  stloc.s    V_5
    IL_002b:  dup
    IL_002c:  conv.r4
    IL_002d:  ldloc.s    V_5
    IL_002f:  sub
    IL_0030:  stloc.s    V_6
    IL_0032:  ldloc.s    V_4
    IL_0034:  conv.r4
    IL_0035:  ldloc.s    V_5
    IL_0037:  sub
    IL_0038:  stloc.s    V_7
    IL_003a:  ldarg.0
    IL_003b:  ldloc.s    V_6
    IL_003d:  sub
    IL_003e:  stloc.s    V_8
    IL_0040:  ldarg.1
    IL_0041:  ldloc.s    V_7
    IL_0043:  sub
    IL_0044:  stloc.s    V_9
    IL_0046:  ldloc.s    V_8
    IL_0048:  ldloc.s    V_9
    IL_004a:  ble.un.s   IL_0054

    IL_004c:  ldc.i4.1
    IL_004d:  stloc.s    V_10
    IL_004f:  ldc.i4.0
    IL_0050:  stloc.s    V_11
    IL_0052:  br.s       IL_005a

    IL_0054:  ldc.i4.0
    IL_0055:  stloc.s    V_10
    IL_0057:  ldc.i4.1
    IL_0058:  stloc.s    V_11
    IL_005a:  ldloc.s    V_8
    IL_005c:  ldloc.s    V_10
    IL_005e:  conv.r4
    IL_005f:  sub
    IL_0060:  ldc.r4     0.21132487
    IL_0065:  add
    IL_0066:  stloc.s    V_12
    IL_0068:  ldloc.s    V_9
    IL_006a:  ldloc.s    V_11
    IL_006c:  conv.r4
    IL_006d:  sub
    IL_006e:  ldc.r4     0.21132487
    IL_0073:  add
    IL_0074:  stloc.s    V_13
    IL_0076:  ldloc.s    V_8
    IL_0078:  ldc.r4     1.
    IL_007d:  sub
    IL_007e:  ldc.r4     0.42264974
    IL_0083:  add
    IL_0084:  stloc.s    V_14
    IL_0086:  ldloc.s    V_9
    IL_0088:  ldc.r4     1.
    IL_008d:  sub
    IL_008e:  ldc.r4     0.42264974
    IL_0093:  add
    IL_0094:  stloc.s    V_15
    IL_0096:  ldc.i4     0xff
    IL_009b:  and
    IL_009c:  stloc.s    V_16
    IL_009e:  ldloc.s    V_4
    IL_00a0:  ldc.i4     0xff
    IL_00a5:  and
    IL_00a6:  stloc.s    V_17
    IL_00a8:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00ad:  ldloc.s    V_16
    IL_00af:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00b4:  ldloc.s    V_17
    IL_00b6:  ldelem.i4
    IL_00b7:  add
    IL_00b8:  ldelem.i4
    IL_00b9:  ldc.i4.s   12
    IL_00bb:  rem
    IL_00bc:  stloc.s    V_18
    IL_00be:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00c3:  ldloc.s    V_16
    IL_00c5:  ldloc.s    V_10
    IL_00c7:  add
    IL_00c8:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00cd:  ldloc.s    V_17
    IL_00cf:  ldloc.s    V_11
    IL_00d1:  add
    IL_00d2:  ldelem.i4
    IL_00d3:  add
    IL_00d4:  ldelem.i4
    IL_00d5:  ldc.i4.s   12
    IL_00d7:  rem
    IL_00d8:  stloc.s    V_19
    IL_00da:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00df:  ldloc.s    V_16
    IL_00e1:  ldc.i4.1
    IL_00e2:  add
    IL_00e3:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_00e8:  ldloc.s    V_17
    IL_00ea:  ldc.i4.1
    IL_00eb:  add
    IL_00ec:  ldelem.i4
    IL_00ed:  add
    IL_00ee:  ldelem.i4
    IL_00ef:  ldc.i4.s   12
    IL_00f1:  rem
    IL_00f2:  stloc.s    V_20
    IL_00f4:  ldc.r4     0.5
    IL_00f9:  ldloc.s    V_8
    IL_00fb:  ldloc.s    V_8
    IL_00fd:  mul
    IL_00fe:  sub
    IL_00ff:  ldloc.s    V_9
    IL_0101:  ldloc.s    V_9
    IL_0103:  mul
    IL_0104:  sub
    IL_0105:  stloc.s    V_21
    IL_0107:  ldloc.s    V_21
    IL_0109:  ldc.r4     0.0
    IL_010e:  bge.un.s   IL_0118

    IL_0110:  ldc.r4     0.0
    IL_0115:  stloc.0
    IL_0116:  br.s       IL_0137

    IL_0118:  ldloc.s    V_21
    IL_011a:  ldloc.s    V_21
    IL_011c:  mul
    IL_011d:  stloc.s    V_21
    IL_011f:  ldloc.s    V_21
    IL_0121:  ldloc.s    V_21
    IL_0123:  mul
    IL_0124:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_0129:  ldloc.s    V_18
    IL_012b:  ldelem.ref
    IL_012c:  ldloc.s    V_8
    IL_012e:  ldloc.s    V_9
    IL_0130:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32)
    IL_0135:  mul
    IL_0136:  stloc.0
    IL_0137:  ldc.r4     0.5
    IL_013c:  ldloc.s    V_12
    IL_013e:  ldloc.s    V_12
    IL_0140:  mul
    IL_0141:  sub
    IL_0142:  ldloc.s    V_13
    IL_0144:  ldloc.s    V_13
    IL_0146:  mul
    IL_0147:  sub
    IL_0148:  stloc.s    V_22
    IL_014a:  ldloc.s    V_22
    IL_014c:  ldc.r4     0.0
    IL_0151:  bge.un.s   IL_015b

    IL_0153:  ldc.r4     0.0
    IL_0158:  stloc.1
    IL_0159:  br.s       IL_017a

    IL_015b:  ldloc.s    V_22
    IL_015d:  ldloc.s    V_22
    IL_015f:  mul
    IL_0160:  stloc.s    V_22
    IL_0162:  ldloc.s    V_22
    IL_0164:  ldloc.s    V_22
    IL_0166:  mul
    IL_0167:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_016c:  ldloc.s    V_19
    IL_016e:  ldelem.ref
    IL_016f:  ldloc.s    V_12
    IL_0171:  ldloc.s    V_13
    IL_0173:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32)
    IL_0178:  mul
    IL_0179:  stloc.1
    IL_017a:  ldc.r4     0.5
    IL_017f:  ldloc.s    V_14
    IL_0181:  ldloc.s    V_14
    IL_0183:  mul
    IL_0184:  sub
    IL_0185:  ldloc.s    V_15
    IL_0187:  ldloc.s    V_15
    IL_0189:  mul
    IL_018a:  sub
    IL_018b:  stloc.s    V_23
    IL_018d:  ldloc.s    V_23
    IL_018f:  ldc.r4     0.0
    IL_0194:  bge.un.s   IL_019e

    IL_0196:  ldc.r4     0.0
    IL_019b:  stloc.2
    IL_019c:  br.s       IL_01bd

    IL_019e:  ldloc.s    V_23
    IL_01a0:  ldloc.s    V_23
    IL_01a2:  mul
    IL_01a3:  stloc.s    V_23
    IL_01a5:  ldloc.s    V_23
    IL_01a7:  ldloc.s    V_23
    IL_01a9:  mul
    IL_01aa:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_01af:  ldloc.s    V_20
    IL_01b1:  ldelem.ref
    IL_01b2:  ldloc.s    V_14
    IL_01b4:  ldloc.s    V_15
    IL_01b6:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32)
    IL_01bb:  mul
    IL_01bc:  stloc.2
    IL_01bd:  ldc.r4     35.
    IL_01c2:  ldloc.0
    IL_01c3:  ldloc.1
    IL_01c4:  add
    IL_01c5:  ldloc.2
    IL_01c6:  add
    IL_01c7:  mul
    IL_01c8:  ldc.r4     0.5
    IL_01cd:  add
    IL_01ce:  ret
  } // end of method SimplexNoise::Noise

  .method public hidebysig static float32 
          Noise(float32 x,
                float32 y,
                float32 z) cil managed
  {
    // 代码大小       880 (0x370)
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
    IL_0011:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0016:  conv.i4
    IL_0017:  ldarg.1
    IL_0018:  ldloc.s    V_4
    IL_001a:  add
    IL_001b:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0020:  conv.i4
    IL_0021:  stloc.s    V_5
    IL_0023:  ldarg.2
    IL_0024:  ldloc.s    V_4
    IL_0026:  add
    IL_0027:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_002c:  conv.i4
    IL_002d:  stloc.s    V_6
    IL_002f:  dup
    IL_0030:  ldloc.s    V_5
    IL_0032:  add
    IL_0033:  ldloc.s    V_6
    IL_0035:  add
    IL_0036:  conv.r4
    IL_0037:  ldc.r4     0.16666667
    IL_003c:  mul
    IL_003d:  stloc.s    V_7
    IL_003f:  dup
    IL_0040:  conv.r4
    IL_0041:  ldloc.s    V_7
    IL_0043:  sub
    IL_0044:  stloc.s    V_8
    IL_0046:  ldloc.s    V_5
    IL_0048:  conv.r4
    IL_0049:  ldloc.s    V_7
    IL_004b:  sub
    IL_004c:  stloc.s    V_9
    IL_004e:  ldloc.s    V_6
    IL_0050:  conv.r4
    IL_0051:  ldloc.s    V_7
    IL_0053:  sub
    IL_0054:  stloc.s    V_10
    IL_0056:  ldarg.0
    IL_0057:  ldloc.s    V_8
    IL_0059:  sub
    IL_005a:  stloc.s    V_11
    IL_005c:  ldarg.1
    IL_005d:  ldloc.s    V_9
    IL_005f:  sub
    IL_0060:  stloc.s    V_12
    IL_0062:  ldarg.2
    IL_0063:  ldloc.s    V_10
    IL_0065:  sub
    IL_0066:  stloc.s    V_13
    IL_0068:  ldloc.s    V_11
    IL_006a:  ldloc.s    V_12
    IL_006c:  blt.un.s   IL_00b6

    IL_006e:  ldloc.s    V_12
    IL_0070:  ldloc.s    V_13
    IL_0072:  blt.un.s   IL_0088

    IL_0074:  ldc.i4.1
    IL_0075:  stloc.s    V_14
    IL_0077:  ldc.i4.0
    IL_0078:  stloc.s    V_15
    IL_007a:  ldc.i4.0
    IL_007b:  stloc.s    V_16
    IL_007d:  ldc.i4.1
    IL_007e:  stloc.s    V_17
    IL_0080:  ldc.i4.1
    IL_0081:  stloc.s    V_18
    IL_0083:  ldc.i4.0
    IL_0084:  stloc.s    V_19
    IL_0086:  br.s       IL_00fc

    IL_0088:  ldloc.s    V_11
    IL_008a:  ldloc.s    V_13
    IL_008c:  blt.un.s   IL_00a2

    IL_008e:  ldc.i4.1
    IL_008f:  stloc.s    V_14
    IL_0091:  ldc.i4.0
    IL_0092:  stloc.s    V_15
    IL_0094:  ldc.i4.0
    IL_0095:  stloc.s    V_16
    IL_0097:  ldc.i4.1
    IL_0098:  stloc.s    V_17
    IL_009a:  ldc.i4.0
    IL_009b:  stloc.s    V_18
    IL_009d:  ldc.i4.1
    IL_009e:  stloc.s    V_19
    IL_00a0:  br.s       IL_00fc

    IL_00a2:  ldc.i4.0
    IL_00a3:  stloc.s    V_14
    IL_00a5:  ldc.i4.0
    IL_00a6:  stloc.s    V_15
    IL_00a8:  ldc.i4.1
    IL_00a9:  stloc.s    V_16
    IL_00ab:  ldc.i4.1
    IL_00ac:  stloc.s    V_17
    IL_00ae:  ldc.i4.0
    IL_00af:  stloc.s    V_18
    IL_00b1:  ldc.i4.1
    IL_00b2:  stloc.s    V_19
    IL_00b4:  br.s       IL_00fc

    IL_00b6:  ldloc.s    V_12
    IL_00b8:  ldloc.s    V_13
    IL_00ba:  bge.un.s   IL_00d0

    IL_00bc:  ldc.i4.0
    IL_00bd:  stloc.s    V_14
    IL_00bf:  ldc.i4.0
    IL_00c0:  stloc.s    V_15
    IL_00c2:  ldc.i4.1
    IL_00c3:  stloc.s    V_16
    IL_00c5:  ldc.i4.0
    IL_00c6:  stloc.s    V_17
    IL_00c8:  ldc.i4.1
    IL_00c9:  stloc.s    V_18
    IL_00cb:  ldc.i4.1
    IL_00cc:  stloc.s    V_19
    IL_00ce:  br.s       IL_00fc

    IL_00d0:  ldloc.s    V_11
    IL_00d2:  ldloc.s    V_13
    IL_00d4:  bge.un.s   IL_00ea

    IL_00d6:  ldc.i4.0
    IL_00d7:  stloc.s    V_14
    IL_00d9:  ldc.i4.1
    IL_00da:  stloc.s    V_15
    IL_00dc:  ldc.i4.0
    IL_00dd:  stloc.s    V_16
    IL_00df:  ldc.i4.0
    IL_00e0:  stloc.s    V_17
    IL_00e2:  ldc.i4.1
    IL_00e3:  stloc.s    V_18
    IL_00e5:  ldc.i4.1
    IL_00e6:  stloc.s    V_19
    IL_00e8:  br.s       IL_00fc

    IL_00ea:  ldc.i4.0
    IL_00eb:  stloc.s    V_14
    IL_00ed:  ldc.i4.1
    IL_00ee:  stloc.s    V_15
    IL_00f0:  ldc.i4.0
    IL_00f1:  stloc.s    V_16
    IL_00f3:  ldc.i4.1
    IL_00f4:  stloc.s    V_17
    IL_00f6:  ldc.i4.1
    IL_00f7:  stloc.s    V_18
    IL_00f9:  ldc.i4.0
    IL_00fa:  stloc.s    V_19
    IL_00fc:  ldloc.s    V_11
    IL_00fe:  ldloc.s    V_14
    IL_0100:  conv.r4
    IL_0101:  sub
    IL_0102:  ldc.r4     0.16666667
    IL_0107:  add
    IL_0108:  stloc.s    V_20
    IL_010a:  ldloc.s    V_12
    IL_010c:  ldloc.s    V_15
    IL_010e:  conv.r4
    IL_010f:  sub
    IL_0110:  ldc.r4     0.16666667
    IL_0115:  add
    IL_0116:  stloc.s    V_21
    IL_0118:  ldloc.s    V_13
    IL_011a:  ldloc.s    V_16
    IL_011c:  conv.r4
    IL_011d:  sub
    IL_011e:  ldc.r4     0.16666667
    IL_0123:  add
    IL_0124:  stloc.s    V_22
    IL_0126:  ldloc.s    V_11
    IL_0128:  ldloc.s    V_17
    IL_012a:  conv.r4
    IL_012b:  sub
    IL_012c:  ldc.r4     0.33333334
    IL_0131:  add
    IL_0132:  stloc.s    V_23
    IL_0134:  ldloc.s    V_12
    IL_0136:  ldloc.s    V_18
    IL_0138:  conv.r4
    IL_0139:  sub
    IL_013a:  ldc.r4     0.33333334
    IL_013f:  add
    IL_0140:  stloc.s    V_24
    IL_0142:  ldloc.s    V_13
    IL_0144:  ldloc.s    V_19
    IL_0146:  conv.r4
    IL_0147:  sub
    IL_0148:  ldc.r4     0.33333334
    IL_014d:  add
    IL_014e:  stloc.s    V_25
    IL_0150:  ldloc.s    V_11
    IL_0152:  ldc.r4     1.
    IL_0157:  sub
    IL_0158:  ldc.r4     0.5
    IL_015d:  add
    IL_015e:  stloc.s    V_26
    IL_0160:  ldloc.s    V_12
    IL_0162:  ldc.r4     1.
    IL_0167:  sub
    IL_0168:  ldc.r4     0.5
    IL_016d:  add
    IL_016e:  stloc.s    V_27
    IL_0170:  ldloc.s    V_13
    IL_0172:  ldc.r4     1.
    IL_0177:  sub
    IL_0178:  ldc.r4     0.5
    IL_017d:  add
    IL_017e:  stloc.s    V_28
    IL_0180:  ldc.i4     0xff
    IL_0185:  and
    IL_0186:  stloc.s    V_29
    IL_0188:  ldloc.s    V_5
    IL_018a:  ldc.i4     0xff
    IL_018f:  and
    IL_0190:  stloc.s    V_30
    IL_0192:  ldloc.s    V_6
    IL_0194:  ldc.i4     0xff
    IL_0199:  and
    IL_019a:  stloc.s    V_31
    IL_019c:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01a1:  ldloc.s    V_29
    IL_01a3:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01a8:  ldloc.s    V_30
    IL_01aa:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01af:  ldloc.s    V_31
    IL_01b1:  ldelem.i4
    IL_01b2:  add
    IL_01b3:  ldelem.i4
    IL_01b4:  add
    IL_01b5:  ldelem.i4
    IL_01b6:  ldc.i4.s   12
    IL_01b8:  rem
    IL_01b9:  stloc.s    V_32
    IL_01bb:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01c0:  ldloc.s    V_29
    IL_01c2:  ldloc.s    V_14
    IL_01c4:  add
    IL_01c5:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01ca:  ldloc.s    V_30
    IL_01cc:  ldloc.s    V_15
    IL_01ce:  add
    IL_01cf:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01d4:  ldloc.s    V_31
    IL_01d6:  ldloc.s    V_16
    IL_01d8:  add
    IL_01d9:  ldelem.i4
    IL_01da:  add
    IL_01db:  ldelem.i4
    IL_01dc:  add
    IL_01dd:  ldelem.i4
    IL_01de:  ldc.i4.s   12
    IL_01e0:  rem
    IL_01e1:  stloc.s    V_33
    IL_01e3:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01e8:  ldloc.s    V_29
    IL_01ea:  ldloc.s    V_17
    IL_01ec:  add
    IL_01ed:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01f2:  ldloc.s    V_30
    IL_01f4:  ldloc.s    V_18
    IL_01f6:  add
    IL_01f7:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_01fc:  ldloc.s    V_31
    IL_01fe:  ldloc.s    V_19
    IL_0200:  add
    IL_0201:  ldelem.i4
    IL_0202:  add
    IL_0203:  ldelem.i4
    IL_0204:  add
    IL_0205:  ldelem.i4
    IL_0206:  ldc.i4.s   12
    IL_0208:  rem
    IL_0209:  stloc.s    V_34
    IL_020b:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_0210:  ldloc.s    V_29
    IL_0212:  ldc.i4.1
    IL_0213:  add
    IL_0214:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_0219:  ldloc.s    V_30
    IL_021b:  ldc.i4.1
    IL_021c:  add
    IL_021d:  ldsfld     int32[] Game.SimplexNoise::m_permutations
    IL_0222:  ldloc.s    V_31
    IL_0224:  ldc.i4.1
    IL_0225:  add
    IL_0226:  ldelem.i4
    IL_0227:  add
    IL_0228:  ldelem.i4
    IL_0229:  add
    IL_022a:  ldelem.i4
    IL_022b:  ldc.i4.s   12
    IL_022d:  rem
    IL_022e:  stloc.s    V_35
    IL_0230:  ldc.r4     0.60000002
    IL_0235:  ldloc.s    V_11
    IL_0237:  ldloc.s    V_11
    IL_0239:  mul
    IL_023a:  sub
    IL_023b:  ldloc.s    V_12
    IL_023d:  ldloc.s    V_12
    IL_023f:  mul
    IL_0240:  sub
    IL_0241:  ldloc.s    V_13
    IL_0243:  ldloc.s    V_13
    IL_0245:  mul
    IL_0246:  sub
    IL_0247:  stloc.s    V_36
    IL_0249:  ldloc.s    V_36
    IL_024b:  ldc.r4     0.0
    IL_0250:  bge.un.s   IL_025a

    IL_0252:  ldc.r4     0.0
    IL_0257:  stloc.0
    IL_0258:  br.s       IL_027b

    IL_025a:  ldloc.s    V_36
    IL_025c:  ldloc.s    V_36
    IL_025e:  mul
    IL_025f:  stloc.s    V_36
    IL_0261:  ldloc.s    V_36
    IL_0263:  ldloc.s    V_36
    IL_0265:  mul
    IL_0266:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_026b:  ldloc.s    V_32
    IL_026d:  ldelem.ref
    IL_026e:  ldloc.s    V_11
    IL_0270:  ldloc.s    V_12
    IL_0272:  ldloc.s    V_13
    IL_0274:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32,
                                                        float32)
    IL_0279:  mul
    IL_027a:  stloc.0
    IL_027b:  ldc.r4     0.60000002
    IL_0280:  ldloc.s    V_20
    IL_0282:  ldloc.s    V_20
    IL_0284:  mul
    IL_0285:  sub
    IL_0286:  ldloc.s    V_21
    IL_0288:  ldloc.s    V_21
    IL_028a:  mul
    IL_028b:  sub
    IL_028c:  ldloc.s    V_22
    IL_028e:  ldloc.s    V_22
    IL_0290:  mul
    IL_0291:  sub
    IL_0292:  stloc.s    V_37
    IL_0294:  ldloc.s    V_37
    IL_0296:  ldc.r4     0.0
    IL_029b:  bge.un.s   IL_02a5

    IL_029d:  ldc.r4     0.0
    IL_02a2:  stloc.1
    IL_02a3:  br.s       IL_02c6

    IL_02a5:  ldloc.s    V_37
    IL_02a7:  ldloc.s    V_37
    IL_02a9:  mul
    IL_02aa:  stloc.s    V_37
    IL_02ac:  ldloc.s    V_37
    IL_02ae:  ldloc.s    V_37
    IL_02b0:  mul
    IL_02b1:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_02b6:  ldloc.s    V_33
    IL_02b8:  ldelem.ref
    IL_02b9:  ldloc.s    V_20
    IL_02bb:  ldloc.s    V_21
    IL_02bd:  ldloc.s    V_22
    IL_02bf:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32,
                                                        float32)
    IL_02c4:  mul
    IL_02c5:  stloc.1
    IL_02c6:  ldc.r4     0.60000002
    IL_02cb:  ldloc.s    V_23
    IL_02cd:  ldloc.s    V_23
    IL_02cf:  mul
    IL_02d0:  sub
    IL_02d1:  ldloc.s    V_24
    IL_02d3:  ldloc.s    V_24
    IL_02d5:  mul
    IL_02d6:  sub
    IL_02d7:  ldloc.s    V_25
    IL_02d9:  ldloc.s    V_25
    IL_02db:  mul
    IL_02dc:  sub
    IL_02dd:  stloc.s    V_38
    IL_02df:  ldloc.s    V_38
    IL_02e1:  ldc.r4     0.0
    IL_02e6:  bge.un.s   IL_02f0

    IL_02e8:  ldc.r4     0.0
    IL_02ed:  stloc.2
    IL_02ee:  br.s       IL_0311

    IL_02f0:  ldloc.s    V_38
    IL_02f2:  ldloc.s    V_38
    IL_02f4:  mul
    IL_02f5:  stloc.s    V_38
    IL_02f7:  ldloc.s    V_38
    IL_02f9:  ldloc.s    V_38
    IL_02fb:  mul
    IL_02fc:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_0301:  ldloc.s    V_34
    IL_0303:  ldelem.ref
    IL_0304:  ldloc.s    V_23
    IL_0306:  ldloc.s    V_24
    IL_0308:  ldloc.s    V_25
    IL_030a:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32,
                                                        float32)
    IL_030f:  mul
    IL_0310:  stloc.2
    IL_0311:  ldc.r4     0.60000002
    IL_0316:  ldloc.s    V_26
    IL_0318:  ldloc.s    V_26
    IL_031a:  mul
    IL_031b:  sub
    IL_031c:  ldloc.s    V_27
    IL_031e:  ldloc.s    V_27
    IL_0320:  mul
    IL_0321:  sub
    IL_0322:  ldloc.s    V_28
    IL_0324:  ldloc.s    V_28
    IL_0326:  mul
    IL_0327:  sub
    IL_0328:  stloc.s    V_39
    IL_032a:  ldloc.s    V_39
    IL_032c:  ldc.r4     0.0
    IL_0331:  bge.un.s   IL_033b

    IL_0333:  ldc.r4     0.0
    IL_0338:  stloc.3
    IL_0339:  br.s       IL_035c

    IL_033b:  ldloc.s    V_39
    IL_033d:  ldloc.s    V_39
    IL_033f:  mul
    IL_0340:  stloc.s    V_39
    IL_0342:  ldloc.s    V_39
    IL_0344:  ldloc.s    V_39
    IL_0346:  mul
    IL_0347:  ldsfld     int32[][] Game.SimplexNoise::m_grad3
    IL_034c:  ldloc.s    V_35
    IL_034e:  ldelem.ref
    IL_034f:  ldloc.s    V_26
    IL_0351:  ldloc.s    V_27
    IL_0353:  ldloc.s    V_28
    IL_0355:  call       float32 Game.SimplexNoise::Dot(int32[],
                                                        float32,
                                                        float32,
                                                        float32)
    IL_035a:  mul
    IL_035b:  stloc.3
    IL_035c:  ldc.r4     16.
    IL_0361:  ldloc.0
    IL_0362:  ldloc.1
    IL_0363:  add
    IL_0364:  ldloc.2
    IL_0365:  add
    IL_0366:  ldloc.3
    IL_0367:  add
    IL_0368:  mul
    IL_0369:  ldc.r4     0.5
    IL_036e:  add
    IL_036f:  ret
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