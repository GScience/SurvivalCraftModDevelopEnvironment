.class private auto ansi beforefieldinit Game.HsvUtils
       extends [System.Runtime]System.Object
{
  .method public hidebysig static valuetype [Engine]Engine.Vector3 
          RgbToHsv(valuetype [Engine]Engine.Vector3 rgb) cil managed
  {
    // 代码大小       216 (0xd8)
    .maxstack  3
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_000c:  ldarg.0
    IL_000d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0012:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32)
    IL_0017:  stloc.3
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_001e:  ldarg.0
    IL_001f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0024:  ldarg.0
    IL_0025:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_002a:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32)
    IL_002f:  stloc.s    V_4
    IL_0031:  ldloc.s    V_4
    IL_0033:  stloc.2
    IL_0034:  ldloc.s    V_4
    IL_0036:  ldloc.3
    IL_0037:  sub
    IL_0038:  stloc.s    V_5
    IL_003a:  ldloc.s    V_4
    IL_003c:  ldc.r4     0.0
    IL_0041:  beq.s      IL_004b

    IL_0043:  ldloc.s    V_5
    IL_0045:  ldloc.s    V_4
    IL_0047:  div
    IL_0048:  stloc.1
    IL_0049:  br.s       IL_0060

    IL_004b:  ldc.r4     0.0
    IL_0050:  stloc.1
    IL_0051:  ldc.r4     -1.
    IL_0056:  stloc.0
    IL_0057:  ldloc.0
    IL_0058:  ldloc.1
    IL_0059:  ldloc.2
    IL_005a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_005f:  ret

    IL_0060:  ldarg.0
    IL_0061:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0066:  ldloc.s    V_4
    IL_0068:  bne.un.s   IL_007d

    IL_006a:  ldarg.0
    IL_006b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0070:  ldarg.0
    IL_0071:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0076:  sub
    IL_0077:  ldloc.s    V_5
    IL_0079:  div
    IL_007a:  stloc.0
    IL_007b:  br.s       IL_00b7

    IL_007d:  ldarg.0
    IL_007e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0083:  ldloc.s    V_4
    IL_0085:  bne.un.s   IL_00a0

    IL_0087:  ldc.r4     2.
    IL_008c:  ldarg.0
    IL_008d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0092:  ldarg.0
    IL_0093:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0098:  sub
    IL_0099:  ldloc.s    V_5
    IL_009b:  div
    IL_009c:  add
    IL_009d:  stloc.0
    IL_009e:  br.s       IL_00b7

    IL_00a0:  ldc.r4     4.
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00b1:  sub
    IL_00b2:  ldloc.s    V_5
    IL_00b4:  div
    IL_00b5:  add
    IL_00b6:  stloc.0
    IL_00b7:  ldloc.0
    IL_00b8:  ldc.r4     60.
    IL_00bd:  mul
    IL_00be:  stloc.0
    IL_00bf:  ldloc.0
    IL_00c0:  ldc.r4     0.0
    IL_00c5:  bge.un.s   IL_00cf

    IL_00c7:  ldloc.0
    IL_00c8:  ldc.r4     360.
    IL_00cd:  add
    IL_00ce:  stloc.0
    IL_00cf:  ldloc.0
    IL_00d0:  ldloc.1
    IL_00d1:  ldloc.2
    IL_00d2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d7:  ret
  } // end of method HsvUtils::RgbToHsv

  .method public hidebysig static valuetype [Engine]Engine.Vector3 
          HsvToRgb(valuetype [Engine]Engine.Vector3 hsv) cil managed
  {
    // 代码大小       272 (0x110)
    .maxstack  5
    .locals init (int32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0006:  ldc.r4     0.0
    IL_000b:  bne.un.s   IL_0019

    IL_000d:  ldarg.0
    IL_000e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0013:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0018:  ret

    IL_0019:  ldarga.s   hsv
    IL_001b:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0020:  dup
    IL_0021:  ldind.r4
    IL_0022:  ldc.r4     60.
    IL_0027:  div
    IL_0028:  stind.r4
    IL_0029:  ldarg.0
    IL_002a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_002f:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0034:  conv.i4
    IL_0035:  stloc.0
    IL_0036:  ldarg.0
    IL_0037:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_003c:  ldloc.0
    IL_003d:  conv.r4
    IL_003e:  sub
    IL_003f:  stloc.1
    IL_0040:  ldarg.0
    IL_0041:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0046:  ldc.r4     1.
    IL_004b:  ldarg.0
    IL_004c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0051:  sub
    IL_0052:  mul
    IL_0053:  stloc.2
    IL_0054:  ldarg.0
    IL_0055:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005a:  ldc.r4     1.
    IL_005f:  ldarg.0
    IL_0060:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0065:  ldloc.1
    IL_0066:  mul
    IL_0067:  sub
    IL_0068:  mul
    IL_0069:  stloc.3
    IL_006a:  ldarg.0
    IL_006b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0070:  ldc.r4     1.
    IL_0075:  ldarg.0
    IL_0076:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_007b:  ldc.r4     1.
    IL_0080:  ldloc.1
    IL_0081:  sub
    IL_0082:  mul
    IL_0083:  sub
    IL_0084:  mul
    IL_0085:  stloc.s    V_4
    IL_0087:  ldloc.0
    IL_0088:  switch     ( 
                          IL_00a3,
                          IL_00b4,
                          IL_00c4,
                          IL_00d5,
                          IL_00e5)
    IL_00a1:  br.s       IL_00f6

    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00a9:  stloc.s    V_5
    IL_00ab:  ldloc.s    V_4
    IL_00ad:  stloc.s    V_6
    IL_00af:  ldloc.2
    IL_00b0:  stloc.s    V_7
    IL_00b2:  br.s       IL_0104

    IL_00b4:  ldloc.3
    IL_00b5:  stloc.s    V_5
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00bd:  stloc.s    V_6
    IL_00bf:  ldloc.2
    IL_00c0:  stloc.s    V_7
    IL_00c2:  br.s       IL_0104

    IL_00c4:  ldloc.2
    IL_00c5:  stloc.s    V_5
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00cd:  stloc.s    V_6
    IL_00cf:  ldloc.s    V_4
    IL_00d1:  stloc.s    V_7
    IL_00d3:  br.s       IL_0104

    IL_00d5:  ldloc.2
    IL_00d6:  stloc.s    V_5
    IL_00d8:  ldloc.3
    IL_00d9:  stloc.s    V_6
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00e1:  stloc.s    V_7
    IL_00e3:  br.s       IL_0104

    IL_00e5:  ldloc.s    V_4
    IL_00e7:  stloc.s    V_5
    IL_00e9:  ldloc.2
    IL_00ea:  stloc.s    V_6
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00f2:  stloc.s    V_7
    IL_00f4:  br.s       IL_0104

    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00fc:  stloc.s    V_5
    IL_00fe:  ldloc.2
    IL_00ff:  stloc.s    V_6
    IL_0101:  ldloc.3
    IL_0102:  stloc.s    V_7
    IL_0104:  ldloc.s    V_5
    IL_0106:  ldloc.s    V_6
    IL_0108:  ldloc.s    V_7
    IL_010a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_010f:  ret
  } // end of method HsvUtils::HsvToRgb

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method HsvUtils::.ctor

} // end of class Game.HsvUtils