.class public auto ansi beforefieldinit Game.RunningAverage
       extends [System.Runtime]System.Object
{
  .field private int64 m_startTicks
  .field private int64 m_period
  .field private float32 m_sumValues
  .field private int32 m_countValues
  .field private float32 m_value
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(float32 period) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldsfld     int64 [System.Runtime.Extensions]System.Diagnostics.Stopwatch::Frequency
    IL_000d:  conv.r4
    IL_000e:  mul
    IL_000f:  conv.i8
    IL_0010:  stfld      int64 Game.RunningAverage::m_period
    IL_0015:  ret
  } // end of method RunningAverage::.ctor

  .method public hidebysig specialname instance float32 
          get_Value() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.RunningAverage::m_value
    IL_0006:  ret
  } // end of method RunningAverage::get_Value

  .method public hidebysig instance void 
          AddSample(float32 sample) cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  3
    .locals init (int64 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.RunningAverage::m_sumValues
    IL_0007:  ldarg.1
    IL_0008:  add
    IL_0009:  stfld      float32 Game.RunningAverage::m_sumValues
    IL_000e:  ldarg.0
    IL_000f:  ldarg.0
    IL_0010:  ldfld      int32 Game.RunningAverage::m_countValues
    IL_0015:  ldc.i4.1
    IL_0016:  add
    IL_0017:  stfld      int32 Game.RunningAverage::m_countValues
    IL_001c:  call       int64 [System.Runtime.Extensions]System.Diagnostics.Stopwatch::GetTimestamp()
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  ldarg.0
    IL_0024:  ldfld      int64 Game.RunningAverage::m_startTicks
    IL_0029:  ldarg.0
    IL_002a:  ldfld      int64 Game.RunningAverage::m_period
    IL_002f:  add
    IL_0030:  blt.s      IL_005f

    IL_0032:  ldarg.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      float32 Game.RunningAverage::m_sumValues
    IL_0039:  ldarg.0
    IL_003a:  ldfld      int32 Game.RunningAverage::m_countValues
    IL_003f:  conv.r4
    IL_0040:  div
    IL_0041:  stfld      float32 Game.RunningAverage::m_value
    IL_0046:  ldarg.0
    IL_0047:  ldc.r4     0.0
    IL_004c:  stfld      float32 Game.RunningAverage::m_sumValues
    IL_0051:  ldarg.0
    IL_0052:  ldc.i4.0
    IL_0053:  stfld      int32 Game.RunningAverage::m_countValues
    IL_0058:  ldarg.0
    IL_0059:  ldloc.0
    IL_005a:  stfld      int64 Game.RunningAverage::m_startTicks
    IL_005f:  ret
  } // end of method RunningAverage::AddSample

  .property instance float32 Value()
  {
    .get instance float32 Game.RunningAverage::get_Value()
  } // end of property RunningAverage::Value
} // end of class Game.RunningAverage