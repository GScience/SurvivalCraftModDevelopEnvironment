.class public abstract auto ansi sealed Game.PlantsManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 height
    .field public class Game.PlantsManager/'<>c__DisplayClass3_1' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_0'::.ctor

    .method assembly hidebysig instance float32 
            '<.cctor>b__0'(int32 y) cil managed
    {
      // 代码大小       67 (0x43)
      .maxstack  3
      .locals init (float32 V_0)
      IL_0000:  ldc.r4     0.40000001
      IL_0005:  stloc.0
      IL_0006:  ldarg.1
      IL_0007:  conv.r4
      IL_0008:  ldc.r4     0.2
      IL_000d:  ldarg.0
      IL_000e:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_0'::height
      IL_0013:  conv.r4
      IL_0014:  mul
      IL_0015:  bge.un.s   IL_001f

      IL_0017:  ldc.r4     0.0
      IL_001c:  stloc.0
      IL_001d:  br.s       IL_0041

      IL_001f:  ldarg.1
      IL_0020:  conv.r4
      IL_0021:  ldc.r4     0.2
      IL_0026:  ldarg.0
      IL_0027:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_0'::height
      IL_002c:  conv.r4
      IL_002d:  mul
      IL_002e:  blt.un.s   IL_0041

      IL_0030:  ldarg.1
      IL_0031:  ldarg.0
      IL_0032:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_0'::height
      IL_0037:  bgt.s      IL_0041

      IL_0039:  ldloc.0
      IL_003a:  ldc.r4     1.5
      IL_003f:  mul
      IL_0040:  stloc.0
      IL_0041:  ldloc.0
      IL_0042:  ret
    } // end of method '<>c__DisplayClass3_0'::'<.cctor>b__0'

    .method assembly hidebysig instance float32 
            '<.cctor>b__1'(int32 y) cil managed
    {
      // 代码大小       115 (0x73)
      .maxstack  3
      .locals init (float32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  conv.r4
      IL_0002:  ldarg.0
      IL_0003:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_0'::height
      IL_0008:  conv.r4
      IL_0009:  ldc.r4     0.30000001
      IL_000e:  mul
      IL_000f:  blt.s      IL_0022

      IL_0011:  ldarg.1
      IL_0012:  conv.r4
      IL_0013:  ldarg.0
      IL_0014:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_0'::height
      IL_0019:  conv.r4
      IL_001a:  ldc.r4     0.89999998
      IL_001f:  mul
      IL_0020:  ble.un.s   IL_0028

      IL_0022:  ldc.r4     0.0
      IL_0027:  ret

      IL_0028:  ldarg.1
      IL_0029:  conv.r4
      IL_002a:  ldarg.0
      IL_002b:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_0'::height
      IL_0030:  conv.r4
      IL_0031:  ldc.r4     0.69999999
      IL_0036:  mul
      IL_0037:  blt.s      IL_0048

      IL_0039:  ldc.r4     0.34999999
      IL_003e:  ldarg.0
      IL_003f:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_0'::height
      IL_0044:  conv.r4
      IL_0045:  mul
      IL_0046:  br.s       IL_0055

      IL_0048:  ldc.r4     0.5
      IL_004d:  ldarg.0
      IL_004e:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_0'::height
      IL_0053:  conv.r4
      IL_0054:  mul
      IL_0055:  stloc.0
      IL_0056:  ldarg.0
      IL_0057:  ldfld      class Game.PlantsManager/'<>c__DisplayClass3_1' Game.PlantsManager/'<>c__DisplayClass3_0'::'CS$<>8__locals1'
      IL_005c:  ldfld      class Game.Random Game.PlantsManager/'<>c__DisplayClass3_1'::random
      IL_0061:  ldc.r4     0.33000001
      IL_0066:  ldc.r4     1.
      IL_006b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0070:  ldloc.0
      IL_0071:  mul
      IL_0072:  ret
    } // end of method '<>c__DisplayClass3_0'::'<.cctor>b__1'

  } // end of class '<>c__DisplayClass3_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.Random random
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_1'::.ctor

  } // end of class '<>c__DisplayClass3_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_2'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 height
    .field public class Game.PlantsManager/'<>c__DisplayClass3_1' 'CS$<>8__locals2'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_2'::.ctor

    .method assembly hidebysig instance float32 
            '<.cctor>b__2'(int32 y) cil managed
    {
      // 代码大小       57 (0x39)
      .maxstack  3
      .locals init (float32 V_0)
      IL_0000:  ldc.r4     0.66000003
      IL_0005:  stloc.0
      IL_0006:  ldarg.1
      IL_0007:  ldarg.0
      IL_0008:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_2'::height
      IL_000d:  ldc.i4.2
      IL_000e:  div
      IL_000f:  ldc.i4.1
      IL_0010:  sub
      IL_0011:  bge.s      IL_001b

      IL_0013:  ldc.r4     0.0
      IL_0018:  stloc.0
      IL_0019:  br.s       IL_0037

      IL_001b:  ldarg.1
      IL_001c:  ldarg.0
      IL_001d:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_2'::height
      IL_0022:  ldc.i4.2
      IL_0023:  div
      IL_0024:  ble.s      IL_0037

      IL_0026:  ldarg.1
      IL_0027:  ldarg.0
      IL_0028:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_2'::height
      IL_002d:  bgt.s      IL_0037

      IL_002f:  ldloc.0
      IL_0030:  ldc.r4     1.5
      IL_0035:  mul
      IL_0036:  stloc.0
      IL_0037:  ldloc.0
      IL_0038:  ret
    } // end of method '<>c__DisplayClass3_2'::'<.cctor>b__2'

    .method assembly hidebysig instance float32 
            '<.cctor>b__3'(int32 y) cil managed
    {
      // 代码大小       75 (0x4b)
      .maxstack  4
      IL_0000:  ldarg.1
      IL_0001:  conv.r4
      IL_0002:  ldarg.0
      IL_0003:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_2'::height
      IL_0008:  conv.r4
      IL_0009:  ldc.r4     0.34999999
      IL_000e:  mul
      IL_000f:  blt.s      IL_0022

      IL_0011:  ldarg.1
      IL_0012:  conv.r4
      IL_0013:  ldarg.0
      IL_0014:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_2'::height
      IL_0019:  conv.r4
      IL_001a:  ldc.r4     0.75
      IL_001f:  mul
      IL_0020:  ble.un.s   IL_0028

      IL_0022:  ldc.r4     0.0
      IL_0027:  ret

      IL_0028:  ldarg.0
      IL_0029:  ldfld      class Game.PlantsManager/'<>c__DisplayClass3_1' Game.PlantsManager/'<>c__DisplayClass3_2'::'CS$<>8__locals2'
      IL_002e:  ldfld      class Game.Random Game.PlantsManager/'<>c__DisplayClass3_1'::random
      IL_0033:  ldc.r4     0.0
      IL_0038:  ldc.r4     0.33000001
      IL_003d:  ldarg.0
      IL_003e:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_2'::height
      IL_0043:  conv.r4
      IL_0044:  mul
      IL_0045:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_004a:  ret
    } // end of method '<>c__DisplayClass3_2'::'<.cctor>b__3'

  } // end of class '<>c__DisplayClass3_2'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_3'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 height
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_3'::.ctor

    .method assembly hidebysig instance float32 
            '<.cctor>b__4'(int32 y) cil managed
    {
      // 代码大小       51 (0x33)
      .maxstack  4
      .locals init (float32 V_0)
      IL_0000:  ldc.r4     1.4
      IL_0005:  ldc.r4     0.30000001
      IL_000a:  ldarg.1
      IL_000b:  conv.r4
      IL_000c:  ldarg.0
      IL_000d:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_3'::height
      IL_0012:  conv.r4
      IL_0013:  div
      IL_0014:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0019:  stloc.0
      IL_001a:  ldarg.1
      IL_001b:  ldc.i4.3
      IL_001c:  bge.s      IL_0024

      IL_001e:  ldc.r4     0.0
      IL_0023:  stloc.0
      IL_0024:  ldarg.1
      IL_0025:  ldc.i4.2
      IL_0026:  rem
      IL_0027:  brtrue.s   IL_0031

      IL_0029:  ldloc.0
      IL_002a:  ldc.r4     0.30000001
      IL_002f:  mul
      IL_0030:  stloc.0
      IL_0031:  ldloc.0
      IL_0032:  ret
    } // end of method '<>c__DisplayClass3_3'::'<.cctor>b__4'

    .method assembly hidebysig instance float32 
            '<.cctor>b__5'(int32 y) cil managed
    {
      // 代码大小       77 (0x4d)
      .maxstack  4
      IL_0000:  ldarg.1
      IL_0001:  ldc.i4.3
      IL_0002:  blt.s      IL_0015

      IL_0004:  ldarg.1
      IL_0005:  conv.r4
      IL_0006:  ldarg.0
      IL_0007:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_3'::height
      IL_000c:  conv.r4
      IL_000d:  ldc.r4     0.80000001
      IL_0012:  mul
      IL_0013:  ble.un.s   IL_001b

      IL_0015:  ldc.r4     0.0
      IL_001a:  ret

      IL_001b:  ldarg.1
      IL_001c:  ldc.i4.2
      IL_001d:  rem
      IL_001e:  brtrue.s   IL_0026

      IL_0020:  ldc.r4     0.0
      IL_0025:  ret

      IL_0026:  ldc.r4     0.30000001
      IL_002b:  ldarg.0
      IL_002c:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_3'::height
      IL_0031:  conv.r4
      IL_0032:  mul
      IL_0033:  ldc.r4     0.0
      IL_0038:  ldarg.1
      IL_0039:  conv.r4
      IL_003a:  ldarg.0
      IL_003b:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_3'::height
      IL_0040:  conv.r4
      IL_0041:  div
      IL_0042:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_0047:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_004c:  ret
    } // end of method '<>c__DisplayClass3_3'::'<.cctor>b__5'

  } // end of class '<>c__DisplayClass3_3'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_4'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 height
    .field public float32 startHeight
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_4'::.ctor

    .method assembly hidebysig instance float32 
            '<.cctor>b__6'(int32 y) cil managed
    {
      // 代码大小       92 (0x5c)
      .maxstack  4
      .locals init (float32 V_0,
               float32 V_1)
      IL_0000:  ldarg.1
      IL_0001:  conv.r4
      IL_0002:  ldarg.0
      IL_0003:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_4'::height
      IL_0008:  conv.r4
      IL_0009:  div
      IL_000a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_000f:  stloc.0
      IL_0010:  ldc.r4     1.5
      IL_0015:  ldc.r4     0.0
      IL_001a:  ldloc.0
      IL_001b:  ldc.r4     0.60000002
      IL_0020:  sub
      IL_0021:  ldc.r4     0.40000001
      IL_0026:  div
      IL_0027:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_002c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0031:  stloc.1
      IL_0032:  ldarg.1
      IL_0033:  conv.r4
      IL_0034:  ldarg.0
      IL_0035:  ldfld      float32 Game.PlantsManager/'<>c__DisplayClass3_4'::startHeight
      IL_003a:  bge.un.s   IL_0042

      IL_003c:  ldc.r4     0.0
      IL_0041:  stloc.1
      IL_0042:  ldarg.1
      IL_0043:  ldc.i4.3
      IL_0044:  rem
      IL_0045:  brfalse.s  IL_005a

      IL_0047:  ldarg.1
      IL_0048:  ldarg.0
      IL_0049:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_4'::height
      IL_004e:  ldc.i4.4
      IL_004f:  sub
      IL_0050:  bge.s      IL_005a

      IL_0052:  ldloc.1
      IL_0053:  ldc.r4     0.2
      IL_0058:  mul
      IL_0059:  stloc.1
      IL_005a:  ldloc.1
      IL_005b:  ret
    } // end of method '<>c__DisplayClass3_4'::'<.cctor>b__6'

    .method assembly hidebysig instance float32 
            '<.cctor>b__7'(int32 y) cil managed
    {
      // 代码大小       115 (0x73)
      .maxstack  4
      .locals init (float32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  conv.r4
      IL_0002:  ldarg.0
      IL_0003:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_4'::height
      IL_0008:  conv.r4
      IL_0009:  div
      IL_000a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_000f:  stloc.0
      IL_0010:  ldarg.1
      IL_0011:  ldc.i4.3
      IL_0012:  rem
      IL_0013:  brfalse.s  IL_001b

      IL_0015:  ldc.r4     0.0
      IL_001a:  ret

      IL_001b:  ldarg.1
      IL_001c:  conv.r4
      IL_001d:  ldarg.0
      IL_001e:  ldfld      float32 Game.PlantsManager/'<>c__DisplayClass3_4'::startHeight
      IL_0023:  bge.un.s   IL_0049

      IL_0025:  ldarg.1
      IL_0026:  conv.r4
      IL_0027:  ldarg.0
      IL_0028:  ldfld      float32 Game.PlantsManager/'<>c__DisplayClass3_4'::startHeight
      IL_002d:  ldc.r4     4.
      IL_0032:  sub
      IL_0033:  blt.s      IL_0043

      IL_0035:  ldc.r4     0.1
      IL_003a:  ldarg.0
      IL_003b:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_4'::height
      IL_0040:  conv.r4
      IL_0041:  mul
      IL_0042:  ret

      IL_0043:  ldc.r4     0.0
      IL_0048:  ret

      IL_0049:  ldc.r4     0.18000001
      IL_004e:  ldarg.0
      IL_004f:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_4'::height
      IL_0054:  conv.r4
      IL_0055:  mul
      IL_0056:  ldc.r4     0.0
      IL_005b:  ldloc.0
      IL_005c:  ldc.r4     0.60000002
      IL_0061:  sub
      IL_0062:  ldc.r4     0.40000001
      IL_0067:  div
      IL_0068:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_006d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0072:  ret
    } // end of method '<>c__DisplayClass3_4'::'<.cctor>b__7'

  } // end of class '<>c__DisplayClass3_4'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass10_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 woodIndex
    .field public class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32> '<>9__1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass10_0'::.ctor

    .method assembly hidebysig instance int32 
            '<CreateTreeBrush>b__1'(valuetype [System.Runtime]System.Nullable`1<int32> v) cil managed
    {
      // 代码大小       33 (0x21)
      .maxstack  8
      IL_0000:  ldarga.s   v
      IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0007:  brfalse.s  IL_001d

      IL_0009:  ldarga.s   v
      IL_000b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_0010:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0015:  ldarg.0
      IL_0016:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass10_0'::woodIndex
      IL_001b:  beq.s      IL_001f

      IL_001d:  ldc.i4.0
      IL_001e:  ret

      IL_001f:  ldc.i4.1
      IL_0020:  ret
    } // end of method '<>c__DisplayClass10_0'::'<CreateTreeBrush>b__1'

  } // end of class '<>c__DisplayClass10_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass10_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 cutFace
    .field public class Game.PlantsManager/'<>c__DisplayClass10_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass10_1'::.ctor

    .method assembly hidebysig instance valuetype [System.Runtime]System.Nullable`1<int32> 
            '<CreateTreeBrush>b__0'(valuetype [System.Runtime]System.Nullable`1<int32> v) cil managed
    {
      // 代码大小       54 (0x36)
      .maxstack  4
      .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
      IL_0000:  ldarga.s   v
      IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0007:  brfalse.s  IL_0013

      IL_0009:  ldloca.s   V_0
      IL_000b:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0011:  ldloc.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldfld      class Game.PlantsManager/'<>c__DisplayClass10_0' Game.PlantsManager/'<>c__DisplayClass10_1'::'CS$<>8__locals1'
      IL_0019:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass10_0'::woodIndex
      IL_001e:  ldc.i4.0
      IL_001f:  ldc.i4.0
      IL_0020:  ldarg.0
      IL_0021:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass10_1'::cutFace
      IL_0026:  call       int32 Game.WoodBlock::SetCutFace(int32,
                                                            int32)
      IL_002b:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_0030:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_0035:  ret
    } // end of method '<>c__DisplayClass10_1'::'<CreateTreeBrush>b__0'

  } // end of class '<>c__DisplayClass10_1'

  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] m_treeBrushesByType
  .field private static int32[] m_treeTrunksByType
  .field private static int32[] m_treeLeavesByType
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       810 (0x32a)
    .maxstack  8
    .locals init (class Game.PlantsManager/'<>c__DisplayClass3_1' V_0,
             int32 V_1,
             class Game.PlantsManager/'<>c__DisplayClass3_0' V_2,
             int32[] V_3,
             int32 V_4,
             class Game.TerrainBrush V_5,
             int32 V_6,
             class Game.PlantsManager/'<>c__DisplayClass3_2' V_7,
             int32[] V_8,
             int32 V_9,
             class Game.TerrainBrush V_10,
             int32 V_11,
             class Game.PlantsManager/'<>c__DisplayClass3_3' V_12,
             int32[] V_13,
             int32 V_14,
             class Game.TerrainBrush V_15,
             int32 V_16,
             class Game.PlantsManager/'<>c__DisplayClass3_4' V_17,
             int32[] V_18,
             int32 V_19,
             class Game.TerrainBrush V_20)
    IL_0000:  ldtoken    Game.TreeType
    IL_0005:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000a:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_000f:  call       int32 [System.Linq]System.Linq.Enumerable::Max(class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_0014:  ldc.i4.1
    IL_0015:  add
    IL_0016:  newarr     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>
    IL_001b:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] Game.PlantsManager::m_treeBrushesByType
    IL_0020:  ldc.i4.4
    IL_0021:  newarr     [System.Runtime]System.Int32
    IL_0026:  dup
    IL_0027:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::D90BF00F1E51488F865188807B90979264E882CF
    IL_002c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0031:  stsfld     int32[] Game.PlantsManager::m_treeTrunksByType
    IL_0036:  ldc.i4.4
    IL_0037:  newarr     [System.Runtime]System.Int32
    IL_003c:  dup
    IL_003d:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::AD4385694399C23FA2456B78A458C300F805B427
    IL_0042:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0047:  stsfld     int32[] Game.PlantsManager::m_treeLeavesByType
    IL_004c:  newobj     instance void Game.PlantsManager/'<>c__DisplayClass3_1'::.ctor()
    IL_0051:  stloc.0
    IL_0052:  ldloc.0
    IL_0053:  ldc.i4.s   33
    IL_0055:  newobj     instance void Game.Random::.ctor(int32)
    IL_005a:  stfld      class Game.Random Game.PlantsManager/'<>c__DisplayClass3_1'::random
    IL_005f:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] Game.PlantsManager::m_treeBrushesByType
    IL_0064:  ldc.i4.0
    IL_0065:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_006a:  stelem.ref
    IL_006b:  ldc.i4.0
    IL_006c:  stloc.1
    IL_006d:  br         IL_0105

    IL_0072:  newobj     instance void Game.PlantsManager/'<>c__DisplayClass3_0'::.ctor()
    IL_0077:  stloc.2
    IL_0078:  ldloc.2
    IL_0079:  ldloc.0
    IL_007a:  stfld      class Game.PlantsManager/'<>c__DisplayClass3_1' Game.PlantsManager/'<>c__DisplayClass3_0'::'CS$<>8__locals1'
    IL_007f:  ldc.i4.s   16
    IL_0081:  newarr     [System.Runtime]System.Int32
    IL_0086:  dup
    IL_0087:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=64' '<PrivateImplementationDetails>'::E784296BCF768732E4225E71C255A41614AF7FD7
    IL_008c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0091:  stloc.3
    IL_0092:  ldloc.2
    IL_0093:  ldloc.3
    IL_0094:  ldloc.1
    IL_0095:  ldelem.i4
    IL_0096:  stfld      int32 Game.PlantsManager/'<>c__DisplayClass3_0'::height
    IL_009b:  ldc.r4     10.
    IL_00a0:  ldc.r4     20.
    IL_00a5:  ldloc.1
    IL_00a6:  conv.r4
    IL_00a7:  ldc.r4     16.
    IL_00ac:  div
    IL_00ad:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00b2:  conv.i4
    IL_00b3:  stloc.s    V_4
    IL_00b5:  ldloc.2
    IL_00b6:  ldfld      class Game.PlantsManager/'<>c__DisplayClass3_1' Game.PlantsManager/'<>c__DisplayClass3_0'::'CS$<>8__locals1'
    IL_00bb:  ldfld      class Game.Random Game.PlantsManager/'<>c__DisplayClass3_1'::random
    IL_00c0:  ldc.i4.0
    IL_00c1:  call       int32 Game.PlantsManager::GetTreeTrunkValue(valuetype Game.TreeType)
    IL_00c6:  ldc.i4.0
    IL_00c7:  call       int32 Game.PlantsManager::GetTreeLeavesValue(valuetype Game.TreeType)
    IL_00cc:  ldloc.2
    IL_00cd:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_0'::height
    IL_00d2:  ldloc.s    V_4
    IL_00d4:  ldloc.2
    IL_00d5:  ldftn      instance float32 Game.PlantsManager/'<>c__DisplayClass3_0'::'<.cctor>b__0'(int32)
    IL_00db:  newobj     instance void class [System.Runtime]System.Func`2<int32,float32>::.ctor(object,
                                                                                                 native int)
    IL_00e0:  ldloc.2
    IL_00e1:  ldftn      instance float32 Game.PlantsManager/'<>c__DisplayClass3_0'::'<.cctor>b__1'(int32)
    IL_00e7:  newobj     instance void class [System.Runtime]System.Func`2<int32,float32>::.ctor(object,
                                                                                                 native int)
    IL_00ec:  call       class Game.TerrainBrush Game.PlantsManager::CreateTreeBrush(class Game.Random,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     class [System.Runtime]System.Func`2<int32,float32>,
                                                                                     class [System.Runtime]System.Func`2<int32,float32>)
    IL_00f1:  stloc.s    V_5
    IL_00f3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] Game.PlantsManager::m_treeBrushesByType
    IL_00f8:  ldc.i4.0
    IL_00f9:  ldelem.ref
    IL_00fa:  ldloc.s    V_5
    IL_00fc:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_0101:  ldloc.1
    IL_0102:  ldc.i4.1
    IL_0103:  add
    IL_0104:  stloc.1
    IL_0105:  ldloc.1
    IL_0106:  ldc.i4.s   16
    IL_0108:  blt        IL_0072

    IL_010d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] Game.PlantsManager::m_treeBrushesByType
    IL_0112:  ldc.i4.1
    IL_0113:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0118:  stelem.ref
    IL_0119:  ldc.i4.0
    IL_011a:  stloc.s    V_6
    IL_011c:  br         IL_01c1

    IL_0121:  newobj     instance void Game.PlantsManager/'<>c__DisplayClass3_2'::.ctor()
    IL_0126:  stloc.s    V_7
    IL_0128:  ldloc.s    V_7
    IL_012a:  ldloc.0
    IL_012b:  stfld      class Game.PlantsManager/'<>c__DisplayClass3_1' Game.PlantsManager/'<>c__DisplayClass3_2'::'CS$<>8__locals2'
    IL_0130:  ldc.i4.s   16
    IL_0132:  newarr     [System.Runtime]System.Int32
    IL_0137:  dup
    IL_0138:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=64' '<PrivateImplementationDetails>'::'86E0537376F426EE1BAF446E65F9B58D50B82DB5'
    IL_013d:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0142:  stloc.s    V_8
    IL_0144:  ldloc.s    V_7
    IL_0146:  ldloc.s    V_8
    IL_0148:  ldloc.s    V_6
    IL_014a:  ldelem.i4
    IL_014b:  stfld      int32 Game.PlantsManager/'<>c__DisplayClass3_2'::height
    IL_0150:  ldc.r4     0.0
    IL_0155:  ldc.r4     20.
    IL_015a:  ldloc.s    V_6
    IL_015c:  conv.r4
    IL_015d:  ldc.r4     16.
    IL_0162:  div
    IL_0163:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0168:  conv.i4
    IL_0169:  stloc.s    V_9
    IL_016b:  ldloc.s    V_7
    IL_016d:  ldfld      class Game.PlantsManager/'<>c__DisplayClass3_1' Game.PlantsManager/'<>c__DisplayClass3_2'::'CS$<>8__locals2'
    IL_0172:  ldfld      class Game.Random Game.PlantsManager/'<>c__DisplayClass3_1'::random
    IL_0177:  ldc.i4.1
    IL_0178:  call       int32 Game.PlantsManager::GetTreeTrunkValue(valuetype Game.TreeType)
    IL_017d:  ldc.i4.1
    IL_017e:  call       int32 Game.PlantsManager::GetTreeLeavesValue(valuetype Game.TreeType)
    IL_0183:  ldloc.s    V_7
    IL_0185:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_2'::height
    IL_018a:  ldloc.s    V_9
    IL_018c:  ldloc.s    V_7
    IL_018e:  ldftn      instance float32 Game.PlantsManager/'<>c__DisplayClass3_2'::'<.cctor>b__2'(int32)
    IL_0194:  newobj     instance void class [System.Runtime]System.Func`2<int32,float32>::.ctor(object,
                                                                                                 native int)
    IL_0199:  ldloc.s    V_7
    IL_019b:  ldftn      instance float32 Game.PlantsManager/'<>c__DisplayClass3_2'::'<.cctor>b__3'(int32)
    IL_01a1:  newobj     instance void class [System.Runtime]System.Func`2<int32,float32>::.ctor(object,
                                                                                                 native int)
    IL_01a6:  call       class Game.TerrainBrush Game.PlantsManager::CreateTreeBrush(class Game.Random,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     class [System.Runtime]System.Func`2<int32,float32>,
                                                                                     class [System.Runtime]System.Func`2<int32,float32>)
    IL_01ab:  stloc.s    V_10
    IL_01ad:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] Game.PlantsManager::m_treeBrushesByType
    IL_01b2:  ldc.i4.1
    IL_01b3:  ldelem.ref
    IL_01b4:  ldloc.s    V_10
    IL_01b6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_01bb:  ldloc.s    V_6
    IL_01bd:  ldc.i4.1
    IL_01be:  add
    IL_01bf:  stloc.s    V_6
    IL_01c1:  ldloc.s    V_6
    IL_01c3:  ldc.i4.s   16
    IL_01c5:  blt        IL_0121

    IL_01ca:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] Game.PlantsManager::m_treeBrushesByType
    IL_01cf:  ldc.i4.2
    IL_01d0:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_01d5:  stelem.ref
    IL_01d6:  ldc.i4.0
    IL_01d7:  stloc.s    V_11
    IL_01d9:  br         IL_0260

    IL_01de:  newobj     instance void Game.PlantsManager/'<>c__DisplayClass3_3'::.ctor()
    IL_01e3:  stloc.s    V_12
    IL_01e5:  ldc.i4.s   16
    IL_01e7:  newarr     [System.Runtime]System.Int32
    IL_01ec:  dup
    IL_01ed:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=64' '<PrivateImplementationDetails>'::'3893AAA27964BD965FDFD1B57EFFAAF950B29821'
    IL_01f2:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_01f7:  stloc.s    V_13
    IL_01f9:  ldloc.s    V_12
    IL_01fb:  ldloc.s    V_13
    IL_01fd:  ldloc.s    V_11
    IL_01ff:  ldelem.i4
    IL_0200:  stfld      int32 Game.PlantsManager/'<>c__DisplayClass3_3'::height
    IL_0205:  ldloc.s    V_12
    IL_0207:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_3'::height
    IL_020c:  ldc.i4.3
    IL_020d:  mul
    IL_020e:  stloc.s    V_14
    IL_0210:  ldloc.0
    IL_0211:  ldfld      class Game.Random Game.PlantsManager/'<>c__DisplayClass3_1'::random
    IL_0216:  ldc.i4.2
    IL_0217:  call       int32 Game.PlantsManager::GetTreeTrunkValue(valuetype Game.TreeType)
    IL_021c:  ldc.i4.2
    IL_021d:  call       int32 Game.PlantsManager::GetTreeLeavesValue(valuetype Game.TreeType)
    IL_0222:  ldloc.s    V_12
    IL_0224:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_3'::height
    IL_0229:  ldloc.s    V_14
    IL_022b:  ldloc.s    V_12
    IL_022d:  ldftn      instance float32 Game.PlantsManager/'<>c__DisplayClass3_3'::'<.cctor>b__4'(int32)
    IL_0233:  newobj     instance void class [System.Runtime]System.Func`2<int32,float32>::.ctor(object,
                                                                                                 native int)
    IL_0238:  ldloc.s    V_12
    IL_023a:  ldftn      instance float32 Game.PlantsManager/'<>c__DisplayClass3_3'::'<.cctor>b__5'(int32)
    IL_0240:  newobj     instance void class [System.Runtime]System.Func`2<int32,float32>::.ctor(object,
                                                                                                 native int)
    IL_0245:  call       class Game.TerrainBrush Game.PlantsManager::CreateTreeBrush(class Game.Random,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     class [System.Runtime]System.Func`2<int32,float32>,
                                                                                     class [System.Runtime]System.Func`2<int32,float32>)
    IL_024a:  stloc.s    V_15
    IL_024c:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] Game.PlantsManager::m_treeBrushesByType
    IL_0251:  ldc.i4.2
    IL_0252:  ldelem.ref
    IL_0253:  ldloc.s    V_15
    IL_0255:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_025a:  ldloc.s    V_11
    IL_025c:  ldc.i4.1
    IL_025d:  add
    IL_025e:  stloc.s    V_11
    IL_0260:  ldloc.s    V_11
    IL_0262:  ldc.i4.s   16
    IL_0264:  blt        IL_01de

    IL_0269:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] Game.PlantsManager::m_treeBrushesByType
    IL_026e:  ldc.i4.3
    IL_026f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::.ctor()
    IL_0274:  stelem.ref
    IL_0275:  ldc.i4.0
    IL_0276:  stloc.s    V_16
    IL_0278:  br         IL_0320

    IL_027d:  newobj     instance void Game.PlantsManager/'<>c__DisplayClass3_4'::.ctor()
    IL_0282:  stloc.s    V_17
    IL_0284:  ldc.i4.s   18
    IL_0286:  newarr     [System.Runtime]System.Int32
    IL_028b:  dup
    IL_028c:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=72' '<PrivateImplementationDetails>'::'98E1046154D44D8730A9FE0D3D57FFEDD72D5BFF'
    IL_0291:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0296:  stloc.s    V_18
    IL_0298:  ldloc.s    V_17
    IL_029a:  ldloc.s    V_18
    IL_029c:  ldloc.s    V_16
    IL_029e:  ldelem.i4
    IL_029f:  stfld      int32 Game.PlantsManager/'<>c__DisplayClass3_4'::height
    IL_02a4:  ldloc.s    V_17
    IL_02a6:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_4'::height
    IL_02ab:  ldc.i4.3
    IL_02ac:  mul
    IL_02ad:  stloc.s    V_19
    IL_02af:  ldloc.s    V_17
    IL_02b1:  ldc.r4     0.30000001
    IL_02b6:  ldloc.s    V_16
    IL_02b8:  ldc.i4.4
    IL_02b9:  rem
    IL_02ba:  conv.r4
    IL_02bb:  ldc.r4     5.0000001e-002
    IL_02c0:  mul
    IL_02c1:  add
    IL_02c2:  ldloc.s    V_17
    IL_02c4:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_4'::height
    IL_02c9:  conv.r4
    IL_02ca:  mul
    IL_02cb:  stfld      float32 Game.PlantsManager/'<>c__DisplayClass3_4'::startHeight
    IL_02d0:  ldloc.0
    IL_02d1:  ldfld      class Game.Random Game.PlantsManager/'<>c__DisplayClass3_1'::random
    IL_02d6:  ldc.i4.3
    IL_02d7:  call       int32 Game.PlantsManager::GetTreeTrunkValue(valuetype Game.TreeType)
    IL_02dc:  ldc.i4.3
    IL_02dd:  call       int32 Game.PlantsManager::GetTreeLeavesValue(valuetype Game.TreeType)
    IL_02e2:  ldloc.s    V_17
    IL_02e4:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass3_4'::height
    IL_02e9:  ldloc.s    V_19
    IL_02eb:  ldloc.s    V_17
    IL_02ed:  ldftn      instance float32 Game.PlantsManager/'<>c__DisplayClass3_4'::'<.cctor>b__6'(int32)
    IL_02f3:  newobj     instance void class [System.Runtime]System.Func`2<int32,float32>::.ctor(object,
                                                                                                 native int)
    IL_02f8:  ldloc.s    V_17
    IL_02fa:  ldftn      instance float32 Game.PlantsManager/'<>c__DisplayClass3_4'::'<.cctor>b__7'(int32)
    IL_0300:  newobj     instance void class [System.Runtime]System.Func`2<int32,float32>::.ctor(object,
                                                                                                 native int)
    IL_0305:  call       class Game.TerrainBrush Game.PlantsManager::CreateTreeBrush(class Game.Random,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     class [System.Runtime]System.Func`2<int32,float32>,
                                                                                     class [System.Runtime]System.Func`2<int32,float32>)
    IL_030a:  stloc.s    V_20
    IL_030c:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] Game.PlantsManager::m_treeBrushesByType
    IL_0311:  ldc.i4.3
    IL_0312:  ldelem.ref
    IL_0313:  ldloc.s    V_20
    IL_0315:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>::Add(!0)
    IL_031a:  ldloc.s    V_16
    IL_031c:  ldc.i4.1
    IL_031d:  add
    IL_031e:  stloc.s    V_16
    IL_0320:  ldloc.s    V_16
    IL_0322:  ldc.i4.s   16
    IL_0324:  blt        IL_027d

    IL_0329:  ret
  } // end of method PlantsManager::.cctor

  .method public hidebysig static int32  GetTreeTrunkValue(valuetype Game.TreeType treeType) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.PlantsManager::m_treeTrunksByType
    IL_0005:  ldarg.0
    IL_0006:  ldelem.i4
    IL_0007:  ret
  } // end of method PlantsManager::GetTreeTrunkValue

  .method public hidebysig static int32  GetTreeLeavesValue(valuetype Game.TreeType treeType) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.PlantsManager::m_treeLeavesByType
    IL_0005:  ldarg.0
    IL_0006:  ldelem.i4
    IL_0007:  ret
  } // end of method PlantsManager::GetTreeLeavesValue

  .method public hidebysig static valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush> 
          GetTreeBrushes(valuetype Game.TreeType treeType) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainBrush>[] Game.PlantsManager::m_treeBrushesByType
    IL_0005:  ldarg.0
    IL_0006:  ldelem.ref
    IL_0007:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000c:  ret
  } // end of method PlantsManager::GetTreeBrushes

  .method public hidebysig static int32  GenerateRandomPlantValue(class Game.Random random,
                                                                  int32 groundValue,
                                                                  int32 temperature,
                                                                  int32 humidity,
                                                                  int32 y) cil managed
  {
    // 代码大小       366 (0x16e)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             float32 V_2)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.2
    IL_0009:  beq.s      IL_0012

    IL_000b:  ldloc.0
    IL_000c:  ldc.i4.8
    IL_000d:  bne.un     IL_0122

    IL_0012:  ldarg.3
    IL_0013:  ldc.i4.6
    IL_0014:  blt        IL_00e0

    IL_0019:  ldarg.0
    IL_001a:  ldc.r4     0.0
    IL_001f:  ldc.r4     1.
    IL_0024:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0029:  ldarg.3
    IL_002a:  conv.r4
    IL_002b:  ldc.r4     60.
    IL_0030:  div
    IL_0031:  bge.un     IL_016c

    IL_0036:  ldc.i4.s   19
    IL_0038:  ldc.i4.0
    IL_0039:  ldc.i4.0
    IL_003a:  ldc.i4.0
    IL_003b:  call       int32 Game.TallGrassBlock::SetIsSmall(int32,
                                                               bool)
    IL_0040:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0045:  stloc.1
    IL_0046:  ldarg.2
    IL_0047:  ldarg.s    y
    IL_0049:  call       bool Game.SubsystemWeather::IsPlaceFrozen(int32,
                                                                   int32)
    IL_004e:  brtrue     IL_00de

    IL_0053:  ldarg.0
    IL_0054:  ldc.r4     0.0
    IL_0059:  ldc.r4     1.
    IL_005e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0063:  stloc.2
    IL_0064:  ldloc.2
    IL_0065:  ldc.r4     3.9999999e-002
    IL_006a:  bge.un.s   IL_0076

    IL_006c:  ldc.i4.s   20
    IL_006e:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0073:  stloc.1
    IL_0074:  br.s       IL_00de

    IL_0076:  ldloc.2
    IL_0077:  ldc.r4     7.e-002
    IL_007c:  bge.un.s   IL_0088

    IL_007e:  ldc.i4.s   24
    IL_0080:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0085:  stloc.1
    IL_0086:  br.s       IL_00de

    IL_0088:  ldloc.2
    IL_0089:  ldc.r4     9.0000004e-002
    IL_008e:  bge.un.s   IL_009a

    IL_0090:  ldc.i4.s   25
    IL_0092:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0097:  stloc.1
    IL_0098:  br.s       IL_00de

    IL_009a:  ldloc.2
    IL_009b:  ldc.r4     0.17
    IL_00a0:  bge.un.s   IL_00bd

    IL_00a2:  ldc.i4     0xae
    IL_00a7:  ldc.i4.0
    IL_00a8:  ldc.i4.0
    IL_00a9:  ldc.i4.7
    IL_00aa:  call       int32 Game.RyeBlock::SetSize(int32,
                                                      int32)
    IL_00af:  ldc.i4.1
    IL_00b0:  call       int32 Game.RyeBlock::SetIsWild(int32,
                                                        bool)
    IL_00b5:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_00ba:  stloc.1
    IL_00bb:  br.s       IL_00de

    IL_00bd:  ldloc.2
    IL_00be:  ldc.r4     0.19
    IL_00c3:  bge.un.s   IL_00de

    IL_00c5:  ldc.i4     0xcc
    IL_00ca:  ldc.i4.0
    IL_00cb:  ldc.i4.0
    IL_00cc:  ldc.i4.2
    IL_00cd:  call       int32 Game.CottonBlock::SetSize(int32,
                                                         int32)
    IL_00d2:  ldc.i4.1
    IL_00d3:  call       int32 Game.CottonBlock::SetIsWild(int32,
                                                           bool)
    IL_00d8:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_00dd:  stloc.1
    IL_00de:  ldloc.1
    IL_00df:  ret

    IL_00e0:  ldarg.0
    IL_00e1:  ldc.r4     0.0
    IL_00e6:  ldc.r4     1.
    IL_00eb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00f0:  ldc.r4     2.5e-002
    IL_00f5:  bge.un.s   IL_016c

    IL_00f7:  ldarg.0
    IL_00f8:  ldc.r4     0.0
    IL_00fd:  ldc.r4     1.
    IL_0102:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0107:  ldc.r4     0.2
    IL_010c:  bge.un.s   IL_0118

    IL_010e:  ldc.i4.s   99
    IL_0110:  ldc.i4.0
    IL_0111:  ldc.i4.0
    IL_0112:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0117:  ret

    IL_0118:  ldc.i4.s   28
    IL_011a:  ldc.i4.0
    IL_011b:  ldc.i4.0
    IL_011c:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0121:  ret

    IL_0122:  ldloc.0
    IL_0123:  ldc.i4.7
    IL_0124:  bne.un.s   IL_016c

    IL_0126:  ldarg.3
    IL_0127:  ldc.i4.8
    IL_0128:  bge.s      IL_016c

    IL_012a:  ldarg.0
    IL_012b:  ldc.r4     0.0
    IL_0130:  ldc.r4     1.
    IL_0135:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_013a:  ldc.r4     9.9999998e-003
    IL_013f:  bge.un.s   IL_016c

    IL_0141:  ldarg.0
    IL_0142:  ldc.r4     0.0
    IL_0147:  ldc.r4     1.
    IL_014c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0151:  ldc.r4     5.0000001e-002
    IL_0156:  bge.un.s   IL_0162

    IL_0158:  ldc.i4.s   99
    IL_015a:  ldc.i4.0
    IL_015b:  ldc.i4.0
    IL_015c:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0161:  ret

    IL_0162:  ldc.i4.s   28
    IL_0164:  ldc.i4.0
    IL_0165:  ldc.i4.0
    IL_0166:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_016b:  ret

    IL_016c:  ldc.i4.0
    IL_016d:  ret
  } // end of method PlantsManager::GenerateRandomPlantValue

  .method public hidebysig static valuetype Game.TreeType 
          GenerateRandomTreeType(class Game.Random random,
                                 int32 temperature,
                                 int32 humidity,
                                 int32 y) cil managed
  {
    // 代码大小       161 (0xa1)
    .maxstack  4
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8)
    IL_0000:  ldc.i4.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       float32 Game.PlantsManager::CalculateTreeProbability(valuetype Game.TreeType,
                                                                              int32,
                                                                              int32,
                                                                              int32)
    IL_0009:  stloc.0
    IL_000a:  ldc.i4.1
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  call       float32 Game.PlantsManager::CalculateTreeProbability(valuetype Game.TreeType,
                                                                              int32,
                                                                              int32,
                                                                              int32)
    IL_0013:  stloc.1
    IL_0014:  ldc.i4.2
    IL_0015:  ldarg.1
    IL_0016:  ldarg.2
    IL_0017:  ldarg.3
    IL_0018:  call       float32 Game.PlantsManager::CalculateTreeProbability(valuetype Game.TreeType,
                                                                              int32,
                                                                              int32,
                                                                              int32)
    IL_001d:  stloc.2
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.1
    IL_0020:  ldarg.2
    IL_0021:  ldarg.3
    IL_0022:  call       float32 Game.PlantsManager::CalculateTreeProbability(valuetype Game.TreeType,
                                                                              int32,
                                                                              int32,
                                                                              int32)
    IL_0027:  stloc.3
    IL_0028:  ldarg.0
    IL_0029:  ldc.r4     0.0
    IL_002e:  ldc.r4     1.
    IL_0033:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0038:  ldloc.0
    IL_0039:  mul
    IL_003a:  stloc.s    V_4
    IL_003c:  ldarg.0
    IL_003d:  ldc.r4     0.0
    IL_0042:  ldc.r4     1.
    IL_0047:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004c:  ldloc.1
    IL_004d:  mul
    IL_004e:  stloc.s    V_5
    IL_0050:  ldarg.0
    IL_0051:  ldc.r4     0.0
    IL_0056:  ldc.r4     1.
    IL_005b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0060:  ldloc.2
    IL_0061:  mul
    IL_0062:  stloc.s    V_6
    IL_0064:  ldarg.0
    IL_0065:  ldc.r4     0.0
    IL_006a:  ldc.r4     1.
    IL_006f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0074:  ldloc.3
    IL_0075:  mul
    IL_0076:  stloc.s    V_7
    IL_0078:  ldloc.s    V_4
    IL_007a:  ldloc.s    V_5
    IL_007c:  ldloc.s    V_6
    IL_007e:  ldloc.s    V_7
    IL_0080:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0085:  stloc.s    V_8
    IL_0087:  ldloc.s    V_8
    IL_0089:  ldloc.s    V_4
    IL_008b:  bne.un.s   IL_008f

    IL_008d:  ldc.i4.0
    IL_008e:  ret

    IL_008f:  ldloc.s    V_8
    IL_0091:  ldloc.s    V_5
    IL_0093:  bne.un.s   IL_0097

    IL_0095:  ldc.i4.1
    IL_0096:  ret

    IL_0097:  ldloc.s    V_8
    IL_0099:  ldloc.s    V_6
    IL_009b:  bne.un.s   IL_009f

    IL_009d:  ldc.i4.2
    IL_009e:  ret

    IL_009f:  ldc.i4.3
    IL_00a0:  ret
  } // end of method PlantsManager::GenerateRandomTreeType

  .method public hidebysig static float32 
          CalculateTreeProbability(valuetype Game.TreeType treeType,
                                   int32 temperature,
                                   int32 humidity,
                                   int32 y) cil managed
  {
    // 代码大小       231 (0xe7)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  conv.r4
    IL_0002:  ldc.r4     3.
    IL_0007:  sub
    IL_0008:  ldc.r4     12.
    IL_000d:  div
    IL_000e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0013:  stloc.0
    IL_0014:  ldarg.0
    IL_0015:  brtrue.s   IL_0040

    IL_0017:  ldc.r4     1.
    IL_001c:  ldloc.0
    IL_001d:  mul
    IL_001e:  ldc.r4     8.
    IL_0023:  ldc.r4     10.
    IL_0028:  ldarg.1
    IL_0029:  conv.r4
    IL_002a:  sub
    IL_002b:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0030:  sub
    IL_0031:  ldc.r4     8.
    IL_0036:  div
    IL_0037:  ldloc.0
    IL_0038:  mul
    IL_0039:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_003e:  mul
    IL_003f:  ret

    IL_0040:  ldarg.0
    IL_0041:  ldc.i4.1
    IL_0042:  bne.un.s   IL_006d

    IL_0044:  ldc.r4     1.
    IL_0049:  ldloc.0
    IL_004a:  mul
    IL_004b:  ldc.r4     5.
    IL_0050:  ldc.r4     9.
    IL_0055:  ldarg.1
    IL_0056:  conv.r4
    IL_0057:  sub
    IL_0058:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_005d:  sub
    IL_005e:  ldc.r4     5.
    IL_0063:  div
    IL_0064:  ldloc.0
    IL_0065:  mul
    IL_0066:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_006b:  mul
    IL_006c:  ret

    IL_006d:  ldarg.0
    IL_006e:  ldc.i4.2
    IL_006f:  bne.un.s   IL_00a5

    IL_0071:  ldarg.2
    IL_0072:  ldc.i4.s   11
    IL_0074:  blt.s      IL_007c

    IL_0076:  ldc.r4     0.0
    IL_007b:  ret

    IL_007c:  ldc.r4     1.
    IL_0081:  ldloc.0
    IL_0082:  mul
    IL_0083:  ldc.r4     8.
    IL_0088:  ldc.r4     1.5
    IL_008d:  ldarg.1
    IL_008e:  conv.r4
    IL_008f:  sub
    IL_0090:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0095:  sub
    IL_0096:  ldc.r4     8.
    IL_009b:  div
    IL_009c:  ldloc.0
    IL_009d:  mul
    IL_009e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00a3:  mul
    IL_00a4:  ret

    IL_00a5:  ldarg.0
    IL_00a6:  ldc.i4.3
    IL_00a7:  bne.un.s   IL_00e1

    IL_00a9:  ldarg.2
    IL_00aa:  ldc.i4.8
    IL_00ab:  ble.s      IL_00b2

    IL_00ad:  ldarg.3
    IL_00ae:  ldc.i4.s   75
    IL_00b0:  blt.s      IL_00b8

    IL_00b2:  ldc.r4     0.0
    IL_00b7:  ret

    IL_00b8:  ldc.r4     0.33000001
    IL_00bd:  ldloc.0
    IL_00be:  mul
    IL_00bf:  ldc.r4     8.
    IL_00c4:  ldc.r4     1.5
    IL_00c9:  ldarg.1
    IL_00ca:  conv.r4
    IL_00cb:  sub
    IL_00cc:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00d1:  sub
    IL_00d2:  ldc.r4     8.
    IL_00d7:  div
    IL_00d8:  ldloc.0
    IL_00d9:  mul
    IL_00da:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00df:  mul
    IL_00e0:  ret

    IL_00e1:  ldc.r4     0.0
    IL_00e6:  ret
  } // end of method PlantsManager::CalculateTreeProbability

  .method private hidebysig static class Game.TerrainBrush 
          CreateTreeBrush(class Game.Random random,
                          int32 woodIndex,
                          int32 leavesIndex,
                          int32 height,
                          int32 branchesCount,
                          class [System.Runtime]System.Func`2<int32,float32> leavesProbabilityByHeight,
                          class [System.Runtime]System.Func`2<int32,float32> branchesLengthByHeight) cil managed
  {
    // 代码大小       703 (0x2bf)
    .maxstack  12
    .locals init (class Game.PlantsManager/'<>c__DisplayClass10_0' V_0,
             class Game.TerrainBrush V_1,
             int32 V_2,
             class Game.PlantsManager/'<>c__DisplayClass10_1' V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             float32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             valuetype [Engine]Engine.Point3 V_13,
             valuetype [Engine]Engine.Point3 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             float32 V_18,
             valuetype [System.Runtime]System.Nullable`1<int32> V_19,
             class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32> V_20)
    IL_0000:  newobj     instance void Game.PlantsManager/'<>c__DisplayClass10_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Game.PlantsManager/'<>c__DisplayClass10_0'::woodIndex
    IL_000d:  newobj     instance void Game.TerrainBrush::.ctor()
    IL_0012:  stloc.1
    IL_0013:  ldloc.1
    IL_0014:  ldc.i4.0
    IL_0015:  ldc.i4.m1
    IL_0016:  ldc.i4.0
    IL_0017:  ldc.i4.0
    IL_0018:  ldarg.3
    IL_0019:  ldc.i4.0
    IL_001a:  ldc.i4.1
    IL_001b:  ldc.i4.1
    IL_001c:  ldc.i4.1
    IL_001d:  ldloc.0
    IL_001e:  ldfld      int32 Game.PlantsManager/'<>c__DisplayClass10_0'::woodIndex
    IL_0023:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_0028:  callvirt   instance void Game.TerrainBrush::AddRay(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_002d:  ldc.i4.0
    IL_002e:  stloc.2
    IL_002f:  br         IL_017e

    IL_0034:  newobj     instance void Game.PlantsManager/'<>c__DisplayClass10_1'::.ctor()
    IL_0039:  stloc.3
    IL_003a:  ldloc.3
    IL_003b:  ldloc.0
    IL_003c:  stfld      class Game.PlantsManager/'<>c__DisplayClass10_0' Game.PlantsManager/'<>c__DisplayClass10_1'::'CS$<>8__locals1'
    IL_0041:  ldc.i4.0
    IL_0042:  stloc.s    V_4
    IL_0044:  ldarg.0
    IL_0045:  ldc.i4.0
    IL_0046:  ldarg.3
    IL_0047:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_004c:  stloc.s    V_5
    IL_004e:  ldc.i4.0
    IL_004f:  stloc.s    V_6
    IL_0051:  ldarg.s    branchesLengthByHeight
    IL_0053:  ldloc.s    V_5
    IL_0055:  callvirt   instance !1 class [System.Runtime]System.Func`2<int32,float32>::Invoke(!0)
    IL_005a:  stloc.s    V_7
    IL_005c:  ldarg.0
    IL_005d:  ldc.r4     -1.
    IL_0062:  ldc.r4     1.
    IL_0067:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_006c:  ldarg.0
    IL_006d:  ldc.r4     0.0
    IL_0072:  ldc.r4     0.33000001
    IL_0077:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_007c:  ldarg.0
    IL_007d:  ldc.r4     -1.
    IL_0082:  ldc.r4     1.
    IL_0087:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_008c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0091:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0096:  ldloc.s    V_7
    IL_0098:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_009d:  stloc.s    V_8
    IL_009f:  ldloc.s    V_8
    IL_00a1:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00a6:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00ab:  conv.i4
    IL_00ac:  stloc.s    V_9
    IL_00ae:  ldloc.s    V_5
    IL_00b0:  ldloc.s    V_8
    IL_00b2:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00b7:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00bc:  conv.i4
    IL_00bd:  add
    IL_00be:  stloc.s    V_10
    IL_00c0:  ldloc.s    V_8
    IL_00c2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00c7:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00cc:  conv.i4
    IL_00cd:  stloc.s    V_11
    IL_00cf:  ldloc.3
    IL_00d0:  ldc.i4.0
    IL_00d1:  stfld      int32 Game.PlantsManager/'<>c__DisplayClass10_1'::cutFace
    IL_00d6:  ldloc.s    V_8
    IL_00d8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00dd:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00e2:  ldloc.s    V_8
    IL_00e4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00e9:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00ee:  ldloc.s    V_8
    IL_00f0:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00f5:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00fa:  ldloc.s    V_8
    IL_00fc:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0101:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0106:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32)
    IL_010b:  bne.un.s   IL_0116

    IL_010d:  ldloc.3
    IL_010e:  ldc.i4.1
    IL_010f:  stfld      int32 Game.PlantsManager/'<>c__DisplayClass10_1'::cutFace
    IL_0114:  br.s       IL_0154

    IL_0116:  ldloc.s    V_8
    IL_0118:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_011d:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0122:  ldloc.s    V_8
    IL_0124:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0129:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_012e:  ldloc.s    V_8
    IL_0130:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0135:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_013a:  ldloc.s    V_8
    IL_013c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0141:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0146:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32)
    IL_014b:  bne.un.s   IL_0154

    IL_014d:  ldloc.3
    IL_014e:  ldc.i4.4
    IL_014f:  stfld      int32 Game.PlantsManager/'<>c__DisplayClass10_1'::cutFace
    IL_0154:  ldloc.1
    IL_0155:  ldloc.s    V_4
    IL_0157:  ldloc.s    V_5
    IL_0159:  ldloc.s    V_6
    IL_015b:  ldloc.s    V_9
    IL_015d:  ldloc.s    V_10
    IL_015f:  ldloc.s    V_11
    IL_0161:  ldc.i4.1
    IL_0162:  ldc.i4.1
    IL_0163:  ldc.i4.1
    IL_0164:  ldloc.3
    IL_0165:  ldftn      instance valuetype [System.Runtime]System.Nullable`1<int32> Game.PlantsManager/'<>c__DisplayClass10_1'::'<CreateTreeBrush>b__0'(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_016b:  newobj     instance void class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,valuetype [System.Runtime]System.Nullable`1<int32>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_0170:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,valuetype [System.Runtime]System.Nullable`1<int32>>)
    IL_0175:  callvirt   instance void Game.TerrainBrush::AddRay(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class Game.TerrainBrush/Brush)
    IL_017a:  ldloc.2
    IL_017b:  ldc.i4.1
    IL_017c:  add
    IL_017d:  stloc.2
    IL_017e:  ldloc.2
    IL_017f:  ldarg.s    branchesCount
    IL_0181:  blt        IL_0034

    IL_0186:  ldc.i4.0
    IL_0187:  stloc.s    V_12
    IL_0189:  br         IL_02a0

    IL_018e:  ldloc.1
    IL_018f:  ldloca.s   V_13
    IL_0191:  ldloca.s   V_14
    IL_0193:  callvirt   instance void Game.TerrainBrush::CalculateBounds(valuetype [Engine]Engine.Point3&,
                                                                          valuetype [Engine]Engine.Point3&)
    IL_0198:  ldloc.s    V_13
    IL_019a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_019f:  ldc.i4.1
    IL_01a0:  sub
    IL_01a1:  stloc.s    V_15
    IL_01a3:  br         IL_0282

    IL_01a8:  ldloc.s    V_13
    IL_01aa:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01af:  ldc.i4.1
    IL_01b0:  sub
    IL_01b1:  stloc.s    V_16
    IL_01b3:  br         IL_026c

    IL_01b8:  ldc.i4.1
    IL_01b9:  stloc.s    V_17
    IL_01bb:  br         IL_0256

    IL_01c0:  ldarg.s    leavesProbabilityByHeight
    IL_01c2:  ldloc.s    V_17
    IL_01c4:  callvirt   instance !1 class [System.Runtime]System.Func`2<int32,float32>::Invoke(!0)
    IL_01c9:  stloc.s    V_18
    IL_01cb:  ldarg.0
    IL_01cc:  ldc.r4     0.0
    IL_01d1:  ldc.r4     1.
    IL_01d6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01db:  ldloc.s    V_18
    IL_01dd:  bge.un.s   IL_0250

    IL_01df:  ldloc.1
    IL_01e0:  ldloc.s    V_15
    IL_01e2:  ldloc.s    V_17
    IL_01e4:  ldloc.s    V_16
    IL_01e6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.TerrainBrush::GetValue(int32,
                                                                                                                 int32,
                                                                                                                 int32)
    IL_01eb:  stloc.s    V_19
    IL_01ed:  ldloca.s   V_19
    IL_01ef:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_01f4:  brtrue.s   IL_0250

    IL_01f6:  ldloc.1
    IL_01f7:  ldloc.s    V_15
    IL_01f9:  ldloc.s    V_17
    IL_01fb:  ldloc.s    V_16
    IL_01fd:  ldarg.2
    IL_01fe:  call       class Game.TerrainBrush/Counter Game.TerrainBrush/Counter::op_Implicit(int32)
    IL_0203:  callvirt   instance int32 Game.TerrainBrush::CountNonDiagonalNeighbors(int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     class Game.TerrainBrush/Counter)
    IL_0208:  brtrue.s   IL_023e

    IL_020a:  ldloc.1
    IL_020b:  ldloc.s    V_15
    IL_020d:  ldloc.s    V_17
    IL_020f:  ldloc.s    V_16
    IL_0211:  ldloc.0
    IL_0212:  ldfld      class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32> Game.PlantsManager/'<>c__DisplayClass10_0'::'<>9__1'
    IL_0217:  dup
    IL_0218:  brtrue.s   IL_0232

    IL_021a:  pop
    IL_021b:  ldloc.0
    IL_021c:  ldloc.0
    IL_021d:  ldftn      instance int32 Game.PlantsManager/'<>c__DisplayClass10_0'::'<CreateTreeBrush>b__1'(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0223:  newobj     instance void class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32>::.ctor(object,
                                                                                                                                            native int)
    IL_0228:  dup
    IL_0229:  stloc.s    V_20
    IL_022b:  stfld      class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32> Game.PlantsManager/'<>c__DisplayClass10_0'::'<>9__1'
    IL_0230:  ldloc.s    V_20
    IL_0232:  call       class Game.TerrainBrush/Counter Game.TerrainBrush/Counter::op_Implicit(class [System.Runtime]System.Func`2<valuetype [System.Runtime]System.Nullable`1<int32>,int32>)
    IL_0237:  callvirt   instance int32 Game.TerrainBrush::CountNonDiagonalNeighbors(int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     class Game.TerrainBrush/Counter)
    IL_023c:  brfalse.s  IL_0250

    IL_023e:  ldloc.1
    IL_023f:  ldloc.s    V_15
    IL_0241:  ldloc.s    V_17
    IL_0243:  ldloc.s    V_16
    IL_0245:  ldc.i4.0
    IL_0246:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_024b:  callvirt   instance void Game.TerrainBrush::AddCell(int32,
                                                                  int32,
                                                                  int32,
                                                                  class Game.TerrainBrush/Brush)
    IL_0250:  ldloc.s    V_17
    IL_0252:  ldc.i4.1
    IL_0253:  add
    IL_0254:  stloc.s    V_17
    IL_0256:  ldloc.s    V_17
    IL_0258:  ldloc.s    V_14
    IL_025a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_025f:  ldc.i4.1
    IL_0260:  add
    IL_0261:  ble        IL_01c0

    IL_0266:  ldloc.s    V_16
    IL_0268:  ldc.i4.1
    IL_0269:  add
    IL_026a:  stloc.s    V_16
    IL_026c:  ldloc.s    V_16
    IL_026e:  ldloc.s    V_14
    IL_0270:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0275:  ldc.i4.1
    IL_0276:  add
    IL_0277:  ble        IL_01b8

    IL_027c:  ldloc.s    V_15
    IL_027e:  ldc.i4.1
    IL_027f:  add
    IL_0280:  stloc.s    V_15
    IL_0282:  ldloc.s    V_15
    IL_0284:  ldloc.s    V_14
    IL_0286:  ldfld      int32 [Engine]Engine.Point3::X
    IL_028b:  ldc.i4.1
    IL_028c:  add
    IL_028d:  ble        IL_01a8

    IL_0292:  ldloc.1
    IL_0293:  ldc.i4.0
    IL_0294:  ldarg.2
    IL_0295:  callvirt   instance void Game.TerrainBrush::Replace(int32,
                                                                  int32)
    IL_029a:  ldloc.s    V_12
    IL_029c:  ldc.i4.1
    IL_029d:  add
    IL_029e:  stloc.s    V_12
    IL_02a0:  ldloc.s    V_12
    IL_02a2:  ldc.i4.3
    IL_02a3:  blt        IL_018e

    IL_02a8:  ldloc.1
    IL_02a9:  ldc.i4.0
    IL_02aa:  ldarg.3
    IL_02ab:  ldc.i4.0
    IL_02ac:  ldarg.2
    IL_02ad:  call       class Game.TerrainBrush/Brush Game.TerrainBrush/Brush::op_Implicit(int32)
    IL_02b2:  callvirt   instance void Game.TerrainBrush::AddCell(int32,
                                                                  int32,
                                                                  int32,
                                                                  class Game.TerrainBrush/Brush)
    IL_02b7:  ldloc.1
    IL_02b8:  callvirt   instance void Game.TerrainBrush::Compile()
    IL_02bd:  ldloc.1
    IL_02be:  ret
  } // end of method PlantsManager::CreateTreeBrush

} // end of class Game.PlantsManager