.class public sequential ansi sealed beforefieldinit Game.Segment2
       extends [System.Runtime]System.ValueType
{
  .field public valuetype [Engine]Engine.Vector2 Start
  .field public valuetype [Engine]Engine.Vector2 End
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [Engine]Engine.Vector2 start,
                               valuetype [Engine]Engine.Vector2 end) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_000e:  ret
  } // end of method Segment2::.ctor

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // 代码大小       93 (0x5d)
    .maxstack  5
    IL_0000:  ldstr      "Start: {0}, {1} End: {2}, {3}"
    IL_0005:  ldc.i4.4
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  ldarg.0
    IL_000e:  ldflda     valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0013:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0018:  box        [System.Runtime]System.Single
    IL_001d:  stelem.ref
    IL_001e:  dup
    IL_001f:  ldc.i4.1
    IL_0020:  ldarg.0
    IL_0021:  ldflda     valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0026:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002b:  box        [System.Runtime]System.Single
    IL_0030:  stelem.ref
    IL_0031:  dup
    IL_0032:  ldc.i4.2
    IL_0033:  ldarg.0
    IL_0034:  ldflda     valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0039:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003e:  box        [System.Runtime]System.Single
    IL_0043:  stelem.ref
    IL_0044:  dup
    IL_0045:  ldc.i4.3
    IL_0046:  ldarg.0
    IL_0047:  ldflda     valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_004c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0051:  box        [System.Runtime]System.Single
    IL_0056:  stelem.ref
    IL_0057:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_005c:  ret
  } // end of method Segment2::ToString

  .method public hidebysig static float32 
          Distance(valuetype Game.Segment2 s,
                   valuetype [Engine]Engine.Vector2 p) cil managed
  {
    // 代码大小       155 (0x9b)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             float32 V_3,
             float32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0006:  ldarg.0
    IL_0007:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_000c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0018:  ldarg.1
    IL_0019:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_001e:  stloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0025:  ldarg.1
    IL_0026:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_002b:  stloc.2
    IL_002c:  ldloc.1
    IL_002d:  ldloc.0
    IL_002e:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_0033:  stloc.3
    IL_0034:  ldloc.3
    IL_0035:  ldloc.2
    IL_0036:  ldloc.0
    IL_0037:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_003c:  mul
    IL_003d:  ldc.r4     0.0
    IL_0042:  bgt.un.s   IL_0083

    IL_0044:  ldloca.s   V_0
    IL_0046:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_004b:  stloc.s    V_4
    IL_004d:  ldloc.s    V_4
    IL_004f:  ldc.r4     0.0
    IL_0054:  bne.un.s   IL_0063

    IL_0056:  ldarg.1
    IL_0057:  ldarg.0
    IL_0058:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_005d:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0062:  ret

    IL_0063:  ldarg.1
    IL_0064:  ldarg.0
    IL_0065:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_006a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_006f:  ldloc.0
    IL_0070:  call       float32 [Engine]Engine.Vector2::Cross(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_0075:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_007a:  ldloc.s    V_4
    IL_007c:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0081:  div
    IL_0082:  ret

    IL_0083:  ldloc.3
    IL_0084:  ldc.r4     0.0
    IL_0089:  bgt.s      IL_0093

    IL_008b:  ldloca.s   V_2
    IL_008d:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_0092:  ret

    IL_0093:  ldloca.s   V_1
    IL_0095:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_009a:  ret
  } // end of method Segment2::Distance

  .method public hidebysig static bool  Intersection(valuetype Game.Segment2 s1,
                                                     valuetype Game.Segment2 s2,
                                                     [out] valuetype [Engine]Engine.Vector2& result) cil managed
  {
    // 代码大小       307 (0x133)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0006:  ldarg.0
    IL_0007:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_000c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0011:  stloc.0
    IL_0012:  ldarg.1
    IL_0013:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0018:  ldarg.1
    IL_0019:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_001e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0023:  stloc.1
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  call       float32 [Engine]Engine.Vector2::Cross(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_002b:  stloc.2
    IL_002c:  ldloc.2
    IL_002d:  ldc.r4     0.0
    IL_0032:  bne.un.s   IL_0041

    IL_0034:  ldarg.2
    IL_0035:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_003a:  stobj      [Engine]Engine.Vector2
    IL_003f:  ldc.i4.0
    IL_0040:  ret

    IL_0041:  ldc.r4     1.
    IL_0046:  ldloc.2
    IL_0047:  div
    IL_0048:  stloc.3
    IL_0049:  ldloc.1
    IL_004a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004f:  ldarg.0
    IL_0050:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0055:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005a:  ldarg.1
    IL_005b:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0060:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0065:  sub
    IL_0066:  mul
    IL_0067:  ldloc.1
    IL_0068:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_006d:  ldarg.0
    IL_006e:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0073:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0078:  ldarg.1
    IL_0079:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_007e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0083:  sub
    IL_0084:  mul
    IL_0085:  sub
    IL_0086:  ldloc.3
    IL_0087:  mul
    IL_0088:  stloc.s    V_4
    IL_008a:  ldloc.0
    IL_008b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0090:  ldarg.0
    IL_0091:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0096:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_009b:  ldarg.1
    IL_009c:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_00a1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a6:  sub
    IL_00a7:  mul
    IL_00a8:  ldloc.0
    IL_00a9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_00b4:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b9:  ldarg.1
    IL_00ba:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_00bf:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00c4:  sub
    IL_00c5:  mul
    IL_00c6:  sub
    IL_00c7:  ldloc.3
    IL_00c8:  mul
    IL_00c9:  stloc.s    V_5
    IL_00cb:  ldloc.s    V_4
    IL_00cd:  ldc.r4     0.0
    IL_00d2:  blt.s      IL_00ef

    IL_00d4:  ldloc.s    V_4
    IL_00d6:  ldc.r4     1.
    IL_00db:  bgt.s      IL_00ef

    IL_00dd:  ldloc.s    V_5
    IL_00df:  ldc.r4     0.0
    IL_00e4:  blt.s      IL_00ef

    IL_00e6:  ldloc.s    V_5
    IL_00e8:  ldc.r4     1.
    IL_00ed:  ble.un.s   IL_00fc

    IL_00ef:  ldarg.2
    IL_00f0:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00f5:  stobj      [Engine]Engine.Vector2
    IL_00fa:  ldc.i4.0
    IL_00fb:  ret

    IL_00fc:  ldarg.2
    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0103:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0108:  ldloc.s    V_4
    IL_010a:  ldloc.0
    IL_010b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0110:  mul
    IL_0111:  add
    IL_0112:  ldarg.0
    IL_0113:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0118:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_011d:  ldloc.s    V_4
    IL_011f:  ldloc.0
    IL_0120:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0125:  mul
    IL_0126:  add
    IL_0127:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_012c:  stobj      [Engine]Engine.Vector2
    IL_0131:  ldc.i4.1
    IL_0132:  ret
  } // end of method Segment2::Intersection

  .method public hidebysig static valuetype [Engine]Engine.Vector2 
          NearestPoint(valuetype Game.Segment2 s,
                       valuetype [Engine]Engine.Vector2 v) cil managed
  {
    // 代码大小       184 (0xb8)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0006:  ldarg.0
    IL_0007:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_000c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0018:  ldarg.1
    IL_0019:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_001e:  stloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0025:  ldarg.1
    IL_0026:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_002b:  stloc.2
    IL_002c:  ldloc.1
    IL_002d:  ldloc.0
    IL_002e:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_0033:  stloc.3
    IL_0034:  ldloc.3
    IL_0035:  ldloc.2
    IL_0036:  ldloc.0
    IL_0037:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_003c:  mul
    IL_003d:  ldc.r4     0.0
    IL_0042:  bgt.un.s   IL_00a2

    IL_0044:  ldloca.s   V_0
    IL_0046:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_004b:  stloc.s    V_4
    IL_004d:  ldloc.s    V_4
    IL_004f:  ldc.r4     0.0
    IL_0054:  bne.un.s   IL_005d

    IL_0056:  ldarg.0
    IL_0057:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_005c:  ret

    IL_005d:  ldloca.s   V_1
    IL_005f:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_0064:  ldarg.1
    IL_0065:  ldarg.0
    IL_0066:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_006b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0070:  ldloc.0
    IL_0071:  call       float32 [Engine]Engine.Vector2::Cross(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_0076:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_007b:  ldloc.s    V_4
    IL_007d:  div
    IL_007e:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0083:  sub
    IL_0084:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0089:  stloc.s    V_5
    IL_008b:  ldarg.0
    IL_008c:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0091:  ldarg.0
    IL_0092:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0097:  ldloc.s    V_5
    IL_0099:  ldloc.s    V_4
    IL_009b:  div
    IL_009c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Lerp(valuetype [Engine]Engine.Vector2,
                                                                                       valuetype [Engine]Engine.Vector2,
                                                                                       float32)
    IL_00a1:  ret

    IL_00a2:  ldloc.3
    IL_00a3:  ldc.r4     0.0
    IL_00a8:  bgt.s      IL_00b1

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_00b0:  ret

    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_00b7:  ret
  } // end of method Segment2::NearestPoint

} // end of class Game.Segment2