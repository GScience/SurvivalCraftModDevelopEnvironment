.class public sequential ansi sealed beforefieldinit Game.Segment3
       extends [System.Runtime]System.ValueType
{
  .field public valuetype [Engine]Engine.Vector3 Start
  .field public valuetype [Engine]Engine.Vector3 End
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [Engine]Engine.Vector3 start,
                               valuetype [Engine]Engine.Vector3 end) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      valuetype [Engine]Engine.Vector3 Game.Segment3::End
    IL_000e:  ret
  } // end of method Segment3::.ctor

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // 代码大小       131 (0x83)
    .maxstack  5
    IL_0000:  ldstr      "{0}, {1}, {2},  {3}, {4}, {5}"
    IL_0005:  ldc.i4.6
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  ldarg.0
    IL_000e:  ldflda     valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_0013:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0018:  box        [System.Runtime]System.Single
    IL_001d:  stelem.ref
    IL_001e:  dup
    IL_001f:  ldc.i4.1
    IL_0020:  ldarg.0
    IL_0021:  ldflda     valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_0026:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_002b:  box        [System.Runtime]System.Single
    IL_0030:  stelem.ref
    IL_0031:  dup
    IL_0032:  ldc.i4.2
    IL_0033:  ldarg.0
    IL_0034:  ldflda     valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_0039:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_003e:  box        [System.Runtime]System.Single
    IL_0043:  stelem.ref
    IL_0044:  dup
    IL_0045:  ldc.i4.3
    IL_0046:  ldarg.0
    IL_0047:  ldflda     valuetype [Engine]Engine.Vector3 Game.Segment3::End
    IL_004c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0051:  box        [System.Runtime]System.Single
    IL_0056:  stelem.ref
    IL_0057:  dup
    IL_0058:  ldc.i4.4
    IL_0059:  ldarg.0
    IL_005a:  ldflda     valuetype [Engine]Engine.Vector3 Game.Segment3::End
    IL_005f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0064:  box        [System.Runtime]System.Single
    IL_0069:  stelem.ref
    IL_006a:  dup
    IL_006b:  ldc.i4.5
    IL_006c:  ldarg.0
    IL_006d:  ldflda     valuetype [Engine]Engine.Vector3 Game.Segment3::End
    IL_0072:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0077:  box        [System.Runtime]System.Single
    IL_007c:  stelem.ref
    IL_007d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0082:  ret
  } // end of method Segment3::ToString

  .method public hidebysig static float32 
          Distance(valuetype Game.Segment3 s,
                   valuetype [Engine]Engine.Vector3 p) cil managed
  {
    // 代码大小       159 (0x9f)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             float32 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector3 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::End
    IL_0006:  ldarg.0
    IL_0007:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_000c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_0018:  ldarg.1
    IL_0019:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_001e:  stloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::End
    IL_0025:  ldarg.1
    IL_0026:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_002b:  stloc.2
    IL_002c:  ldloc.1
    IL_002d:  ldloc.0
    IL_002e:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0033:  stloc.3
    IL_0034:  ldloc.3
    IL_0035:  ldloc.2
    IL_0036:  ldloc.0
    IL_0037:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_003c:  mul
    IL_003d:  ldc.r4     0.0
    IL_0042:  bgt.un.s   IL_0087

    IL_0044:  ldloca.s   V_0
    IL_0046:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_004b:  stloc.s    V_4
    IL_004d:  ldloc.s    V_4
    IL_004f:  ldc.r4     0.0
    IL_0054:  bne.un.s   IL_0063

    IL_0056:  ldarg.1
    IL_0057:  ldarg.0
    IL_0058:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_005d:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0062:  ret

    IL_0063:  ldarg.1
    IL_0064:  ldarg.0
    IL_0065:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_006a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_006f:  ldloc.0
    IL_0070:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0075:  stloc.s    V_5
    IL_0077:  ldloca.s   V_5
    IL_0079:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_007e:  ldloc.s    V_4
    IL_0080:  div
    IL_0081:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0086:  ret

    IL_0087:  ldloc.3
    IL_0088:  ldc.r4     0.0
    IL_008d:  bgt.s      IL_0097

    IL_008f:  ldloca.s   V_2
    IL_0091:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0096:  ret

    IL_0097:  ldloca.s   V_1
    IL_0099:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_009e:  ret
  } // end of method Segment3::Distance

  .method public hidebysig static valuetype [Engine]Engine.Vector3 
          NearestPoint(valuetype Game.Segment3 s,
                       valuetype [Engine]Engine.Vector3 p) cil managed
  {
    // 代码大小       188 (0xbc)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector3 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::End
    IL_0006:  ldarg.0
    IL_0007:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_000c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_0018:  ldarg.1
    IL_0019:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_001e:  stloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::End
    IL_0025:  ldarg.1
    IL_0026:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_002b:  stloc.2
    IL_002c:  ldloc.1
    IL_002d:  ldloc.0
    IL_002e:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0033:  stloc.3
    IL_0034:  ldloc.3
    IL_0035:  ldloc.2
    IL_0036:  ldloc.0
    IL_0037:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_003c:  mul
    IL_003d:  ldc.r4     0.0
    IL_0042:  bgt.un.s   IL_00a6

    IL_0044:  ldloca.s   V_0
    IL_0046:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_004b:  stloc.s    V_4
    IL_004d:  ldloc.s    V_4
    IL_004f:  ldc.r4     0.0
    IL_0054:  bne.un.s   IL_005d

    IL_0056:  ldarg.0
    IL_0057:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_005c:  ret

    IL_005d:  ldloca.s   V_1
    IL_005f:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0064:  ldarg.1
    IL_0065:  ldarg.0
    IL_0066:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_006b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0070:  ldloc.0
    IL_0071:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0076:  stloc.s    V_6
    IL_0078:  ldloca.s   V_6
    IL_007a:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_007f:  ldloc.s    V_4
    IL_0081:  div
    IL_0082:  sub
    IL_0083:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0088:  stloc.s    V_5
    IL_008a:  ldarg.0
    IL_008b:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_0090:  ldarg.0
    IL_0091:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::End
    IL_0096:  ldloc.s    V_5
    IL_0098:  ldloc.s    V_4
    IL_009a:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_009f:  div
    IL_00a0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_00a5:  ret

    IL_00a6:  ldloc.3
    IL_00a7:  ldc.r4     0.0
    IL_00ac:  bgt.s      IL_00b5

    IL_00ae:  ldarg.0
    IL_00af:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::End
    IL_00b4:  ret

    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      valuetype [Engine]Engine.Vector3 Game.Segment3::Start
    IL_00bb:  ret
  } // end of method Segment3::NearestPoint

} // end of class Game.Segment3