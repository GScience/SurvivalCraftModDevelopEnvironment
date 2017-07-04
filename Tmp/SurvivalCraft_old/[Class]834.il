.class public sequential ansi sealed beforefieldinit Game.Profiler
       extends [System.Runtime]System.ValueType
       implements [System.Runtime]System.IDisposable
{
  .class auto ansi nested public beforefieldinit Metric
         extends [System.Runtime]System.Object
  {
    .field public string Name
    .field public int32 HitCount
    .field public int64 TotalTicks
    .field public int64 MaxTicks
    .field public initonly class Game.RunningAverage AverageHitCount
    .field public initonly class Game.RunningAverage AverageTime
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       39 (0x27)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.r4     5.
      IL_0006:  newobj     instance void Game.RunningAverage::.ctor(float32)
      IL_000b:  stfld      class Game.RunningAverage Game.Profiler/Metric::AverageHitCount
      IL_0010:  ldarg.0
      IL_0011:  ldc.r4     5.
      IL_0016:  newobj     instance void Game.RunningAverage::.ctor(float32)
      IL_001b:  stfld      class Game.RunningAverage Game.Profiler/Metric::AverageTime
      IL_0020:  ldarg.0
      IL_0021:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0026:  ret
    } // end of method Metric::.ctor

  } // end of class Metric

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.Profiler/'<>c' '<>9'
    .field public static class [System.Runtime]System.Comparison`1<class Game.Profiler/Metric> '<>9__14_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.Profiler/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.Profiler/'<>c' Game.Profiler/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance int32 
            '<get_Metrics>b__14_0'(class Game.Profiler/Metric x,
                                   class Game.Profiler/Metric y) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.Profiler/Metric::Name
      IL_0006:  ldarg.2
      IL_0007:  ldfld      string Game.Profiler/Metric::Name
      IL_000c:  call       int32 [System.Runtime]System.String::CompareOrdinal(string,
                                                                               string)
      IL_0011:  ret
    } // end of method '<>c'::'<get_Metrics>b__14_0'

  } // end of class '<>c'

  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Profiler/Metric> m_metrics
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.Profiler/Metric> m_sortedMetrics
  .field private static int32 m_maxNameLength
  .field private static bool m_sortNeeded
  .field private int64 m_startTicks
  .field private class Game.Profiler/Metric m_metric
  .field public static bool Enabled
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string name) cil managed
  {
    // 代码大小       137 (0x89)
    .maxstack  3
    IL_0000:  ldsfld     bool Game.Profiler::Enabled
    IL_0005:  brfalse.s  IL_0079

    IL_0007:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Profiler/Metric> Game.Profiler::m_metrics
    IL_000c:  ldarg.1
    IL_000d:  ldarg.0
    IL_000e:  ldflda     class Game.Profiler/Metric Game.Profiler::m_metric
    IL_0013:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Profiler/Metric>::TryGetValue(!0,
                                                                                                                                                         !1&)
    IL_0018:  brtrue.s   IL_006d

    IL_001a:  ldarg.0
    IL_001b:  newobj     instance void Game.Profiler/Metric::.ctor()
    IL_0020:  stfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_002b:  ldarg.1
    IL_002c:  stfld      string Game.Profiler/Metric::Name
    IL_0031:  ldsfld     int32 Game.Profiler::m_maxNameLength
    IL_0036:  ldarg.1
    IL_0037:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_003c:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0041:  stsfld     int32 Game.Profiler::m_maxNameLength
    IL_0046:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Profiler/Metric> Game.Profiler::m_metrics
    IL_004b:  ldarg.1
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_0052:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Profiler/Metric>::Add(!0,
                                                                                                                                                 !1)
    IL_0057:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Profiler/Metric> Game.Profiler::m_sortedMetrics
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_0062:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Profiler/Metric>::Add(!0)
    IL_0067:  ldc.i4.1
    IL_0068:  stsfld     bool Game.Profiler::m_sortNeeded
    IL_006d:  ldarg.0
    IL_006e:  call       int64 [System.Runtime.Extensions]System.Diagnostics.Stopwatch::GetTimestamp()
    IL_0073:  stfld      int64 Game.Profiler::m_startTicks
    IL_0078:  ret

    IL_0079:  ldarg.0
    IL_007a:  ldc.i4.0
    IL_007b:  conv.i8
    IL_007c:  stfld      int64 Game.Profiler::m_startTicks
    IL_0081:  ldarg.0
    IL_0082:  ldnull
    IL_0083:  stfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_0088:  ret
  } // end of method Profiler::.ctor

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  3
    .locals init (int64 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_0006:  brfalse.s  IL_005f

    IL_0008:  call       int64 [System.Runtime.Extensions]System.Diagnostics.Stopwatch::GetTimestamp()
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int64 Game.Profiler::m_startTicks
    IL_0013:  sub
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_001b:  dup
    IL_001c:  ldfld      int64 Game.Profiler/Metric::TotalTicks
    IL_0021:  ldloc.0
    IL_0022:  add
    IL_0023:  stfld      int64 Game.Profiler/Metric::TotalTicks
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_0034:  ldfld      int64 Game.Profiler/Metric::MaxTicks
    IL_0039:  ldloc.0
    IL_003a:  call       int64 [Engine]Engine.MathUtils::Max(int64,
                                                             int64)
    IL_003f:  stfld      int64 Game.Profiler/Metric::MaxTicks
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_004a:  dup
    IL_004b:  ldfld      int32 Game.Profiler/Metric::HitCount
    IL_0050:  ldc.i4.1
    IL_0051:  add
    IL_0052:  stfld      int32 Game.Profiler/Metric::HitCount
    IL_0057:  ldarg.0
    IL_0058:  ldnull
    IL_0059:  stfld      class Game.Profiler/Metric Game.Profiler::m_metric
    IL_005e:  ret

    IL_005f:  ldstr      "Profiler.Dispose called without a matching constru"
    + "ctor."
    IL_0064:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0069:  throw
  } // end of method Profiler::Dispose

  .method public hidebysig specialname static 
          int32  get_MaxNameLength() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32 Game.Profiler::m_maxNameLength
    IL_0005:  ret
  } // end of method Profiler::get_MaxNameLength

  .method public hidebysig static void  Sample() cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric> V_1,
             class Game.Profiler/Metric V_2,
             float32 V_3)
    IL_0000:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric> Game.Profiler::get_Metrics()
    IL_0005:  stloc.1
    IL_0006:  ldloca.s   V_1
    IL_0008:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric>::GetEnumerator()
    IL_000d:  stloc.0
    .try
    {
      IL_000e:  br.s       IL_005c

      IL_0010:  ldloca.s   V_0
      IL_0012:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric>::get_Current()
      IL_0017:  stloc.2
      IL_0018:  ldloc.2
      IL_0019:  ldfld      int64 Game.Profiler/Metric::TotalTicks
      IL_001e:  conv.r4
      IL_001f:  ldsfld     int64 [System.Runtime.Extensions]System.Diagnostics.Stopwatch::Frequency
      IL_0024:  conv.r4
      IL_0025:  div
      IL_0026:  stloc.3
      IL_0027:  ldloc.2
      IL_0028:  ldfld      class Game.RunningAverage Game.Profiler/Metric::AverageHitCount
      IL_002d:  ldloc.2
      IL_002e:  ldfld      int32 Game.Profiler/Metric::HitCount
      IL_0033:  conv.r4
      IL_0034:  callvirt   instance void Game.RunningAverage::AddSample(float32)
      IL_0039:  ldloc.2
      IL_003a:  ldfld      class Game.RunningAverage Game.Profiler/Metric::AverageTime
      IL_003f:  ldloc.3
      IL_0040:  callvirt   instance void Game.RunningAverage::AddSample(float32)
      IL_0045:  ldloc.2
      IL_0046:  ldc.i4.0
      IL_0047:  stfld      int32 Game.Profiler/Metric::HitCount
      IL_004c:  ldloc.2
      IL_004d:  ldc.i4.0
      IL_004e:  conv.i8
      IL_004f:  stfld      int64 Game.Profiler/Metric::TotalTicks
      IL_0054:  ldloc.2
      IL_0055:  ldc.i4.0
      IL_0056:  conv.i8
      IL_0057:  stfld      int64 Game.Profiler/Metric::MaxTicks
      IL_005c:  ldloca.s   V_0
      IL_005e:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric>::MoveNext()
      IL_0063:  brtrue.s   IL_0010

      IL_0065:  leave.s    IL_0075

    }  // end .try
    finally
    {
      IL_0067:  ldloca.s   V_0
      IL_0069:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric>
      IL_006f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0074:  endfinally
    }  // end handler
    IL_0075:  ret
  } // end of method Profiler::Sample

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric> 
          get_Metrics() cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  3
    IL_0000:  ldsfld     bool Game.Profiler::m_sortNeeded
    IL_0005:  brfalse.s  IL_0036

    IL_0007:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Profiler/Metric> Game.Profiler::m_sortedMetrics
    IL_000c:  ldsfld     class [System.Runtime]System.Comparison`1<class Game.Profiler/Metric> Game.Profiler/'<>c'::'<>9__14_0'
    IL_0011:  dup
    IL_0012:  brtrue.s   IL_002b

    IL_0014:  pop
    IL_0015:  ldsfld     class Game.Profiler/'<>c' Game.Profiler/'<>c'::'<>9'
    IL_001a:  ldftn      instance int32 Game.Profiler/'<>c'::'<get_Metrics>b__14_0'(class Game.Profiler/Metric,
                                                                                    class Game.Profiler/Metric)
    IL_0020:  newobj     instance void class [System.Runtime]System.Comparison`1<class Game.Profiler/Metric>::.ctor(object,
                                                                                                                    native int)
    IL_0025:  dup
    IL_0026:  stsfld     class [System.Runtime]System.Comparison`1<class Game.Profiler/Metric> Game.Profiler/'<>c'::'<>9__14_0'
    IL_002b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Profiler/Metric>::Sort(class [System.Runtime]System.Comparison`1<!0>)
    IL_0030:  ldc.i4.0
    IL_0031:  stsfld     bool Game.Profiler::m_sortNeeded
    IL_0036:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Profiler/Metric> Game.Profiler::m_sortedMetrics
    IL_003b:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_0040:  ret
  } // end of method Profiler::get_Metrics

  .method public hidebysig static void  ReportAverage(class Game.Profiler/Metric metric,
                                                      class [System.Runtime]System.Text.StringBuilder text) cil managed
  {
    // 代码大小       129 (0x81)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldsfld     int32 Game.Profiler::m_maxNameLength
    IL_0005:  ldc.i4.2
    IL_0006:  add
    IL_0007:  stloc.0
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_000e:  stloc.1
    IL_000f:  ldarg.1
    IL_0010:  ldarg.0
    IL_0011:  ldfld      string Game.Profiler/Metric::Name
    IL_0016:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_001b:  pop
    IL_001c:  ldarg.1
    IL_001d:  ldc.i4.s   46
    IL_001f:  ldc.i4.1
    IL_0020:  ldloc.0
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_0027:  sub
    IL_0028:  ldloc.1
    IL_0029:  add
    IL_002a:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_002f:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char,
                                                                                                                                    int32)
    IL_0034:  pop
    IL_0035:  ldarg.1
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.RunningAverage Game.Profiler/Metric::AverageHitCount
    IL_003c:  callvirt   instance float32 Game.RunningAverage::get_Value()
    IL_0041:  ldc.i4.2
    IL_0042:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_0047:  ldarg.1
    IL_0048:  ldstr      "x"
    IL_004d:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0052:  pop
    IL_0053:  ldarg.1
    IL_0054:  ldc.i4.s   46
    IL_0056:  ldc.i4.1
    IL_0057:  ldloc.0
    IL_0058:  ldc.i4.s   9
    IL_005a:  add
    IL_005b:  ldarg.1
    IL_005c:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_0061:  sub
    IL_0062:  ldloc.1
    IL_0063:  add
    IL_0064:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_0069:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char,
                                                                                                                                    int32)
    IL_006e:  pop
    IL_006f:  ldarg.1
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.RunningAverage Game.Profiler/Metric::AverageTime
    IL_0076:  callvirt   instance float32 Game.RunningAverage::get_Value()
    IL_007b:  call       void Game.Profiler::FormatTimeSimple(class [System.Runtime]System.Text.StringBuilder,
                                                              float32)
    IL_0080:  ret
  } // end of method Profiler::ReportAverage

  .method public hidebysig static void  ReportFrame(class Game.Profiler/Metric metric,
                                                    class [System.Runtime]System.Text.StringBuilder text) cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldsfld     int32 Game.Profiler::m_maxNameLength
    IL_0005:  ldc.i4.2
    IL_0006:  add
    IL_0007:  stloc.0
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_000e:  stloc.1
    IL_000f:  ldarg.1
    IL_0010:  ldarg.0
    IL_0011:  ldfld      string Game.Profiler/Metric::Name
    IL_0016:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_001b:  pop
    IL_001c:  ldarg.1
    IL_001d:  ldc.i4.s   46
    IL_001f:  ldc.i4.1
    IL_0020:  ldloc.0
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_0027:  sub
    IL_0028:  ldloc.1
    IL_0029:  add
    IL_002a:  call       int32 [System.Runtime.Extensions]System.Math::Max(int32,
                                                                           int32)
    IL_002f:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char,
                                                                                                                                    int32)
    IL_0034:  pop
    IL_0035:  ldarg.1
    IL_0036:  ldarg.0
    IL_0037:  ldfld      int64 Game.Profiler/Metric::TotalTicks
    IL_003c:  conv.r4
    IL_003d:  ldsfld     int64 [System.Runtime.Extensions]System.Diagnostics.Stopwatch::Frequency
    IL_0042:  conv.r4
    IL_0043:  div
    IL_0044:  call       void Game.Profiler::FormatTimeSimple(class [System.Runtime]System.Text.StringBuilder,
                                                              float32)
    IL_0049:  ret
  } // end of method Profiler::ReportFrame

  .method public hidebysig static void  ReportAverage(class [System.Runtime]System.Text.StringBuilder text) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric> V_1)
    IL_0000:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric> Game.Profiler::get_Metrics()
    IL_0005:  stloc.1
    IL_0006:  ldloca.s   V_1
    IL_0008:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric>::GetEnumerator()
    IL_000d:  stloc.0
    .try
    {
      IL_000e:  br.s       IL_0029

      IL_0010:  ldloca.s   V_0
      IL_0012:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric>::get_Current()
      IL_0017:  ldarg.0
      IL_0018:  call       void Game.Profiler::ReportAverage(class Game.Profiler/Metric,
                                                             class [System.Runtime]System.Text.StringBuilder)
      IL_001d:  ldarg.0
      IL_001e:  ldstr      "\n"
      IL_0023:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_0028:  pop
      IL_0029:  ldloca.s   V_0
      IL_002b:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric>::MoveNext()
      IL_0030:  brtrue.s   IL_0010

      IL_0032:  leave.s    IL_0042

    }  // end .try
    finally
    {
      IL_0034:  ldloca.s   V_0
      IL_0036:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric>
      IL_003c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0041:  endfinally
    }  // end handler
    IL_0042:  ret
  } // end of method Profiler::ReportAverage

  .method public hidebysig static void  ReportFrame(class [System.Runtime]System.Text.StringBuilder text) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric> V_1)
    IL_0000:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric> Game.Profiler::get_Metrics()
    IL_0005:  stloc.1
    IL_0006:  ldloca.s   V_1
    IL_0008:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric>::GetEnumerator()
    IL_000d:  stloc.0
    .try
    {
      IL_000e:  br.s       IL_0029

      IL_0010:  ldloca.s   V_0
      IL_0012:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric>::get_Current()
      IL_0017:  ldarg.0
      IL_0018:  call       void Game.Profiler::ReportFrame(class Game.Profiler/Metric,
                                                           class [System.Runtime]System.Text.StringBuilder)
      IL_001d:  ldarg.0
      IL_001e:  ldstr      "\n"
      IL_0023:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_0028:  pop
      IL_0029:  ldloca.s   V_0
      IL_002b:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric>::MoveNext()
      IL_0030:  brtrue.s   IL_0010

      IL_0032:  leave.s    IL_0042

    }  // end .try
    finally
    {
      IL_0034:  ldloca.s   V_0
      IL_0036:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Profiler/Metric>
      IL_003c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0041:  endfinally
    }  // end handler
    IL_0042:  ret
  } // end of method Profiler::ReportFrame

  .method public hidebysig static void  FormatTimeSimple(class [System.Runtime]System.Text.StringBuilder text,
                                                         float32 time) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.r4     1000.
    IL_0007:  mul
    IL_0008:  ldc.i4.3
    IL_0009:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_000e:  ldarg.0
    IL_000f:  ldstr      "ms"
    IL_0014:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0019:  pop
    IL_001a:  ret
  } // end of method Profiler::FormatTimeSimple

  .method public hidebysig static void  FormatTime(class [System.Runtime]System.Text.StringBuilder text,
                                                   float32 time) cil managed
  {
    // 代码大小       336 (0x150)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     1.
    IL_0006:  blt.un.s   IL_001d

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.2
    IL_000b:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_0010:  ldarg.0
    IL_0011:  ldstr      "s"
    IL_0016:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_001b:  pop
    IL_001c:  ret

    IL_001d:  ldarg.1
    IL_001e:  ldc.r4     0.1
    IL_0023:  blt.un.s   IL_0040

    IL_0025:  ldarg.0
    IL_0026:  ldarg.1
    IL_0027:  ldc.r4     1000.
    IL_002c:  mul
    IL_002d:  ldc.i4.0
    IL_002e:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_0033:  ldarg.0
    IL_0034:  ldstr      "ms"
    IL_0039:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_003e:  pop
    IL_003f:  ret

    IL_0040:  ldarg.1
    IL_0041:  ldc.r4     9.9999998e-003
    IL_0046:  blt.un.s   IL_0063

    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  ldc.r4     1000.
    IL_004f:  mul
    IL_0050:  ldc.i4.1
    IL_0051:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_0056:  ldarg.0
    IL_0057:  ldstr      "ms"
    IL_005c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0061:  pop
    IL_0062:  ret

    IL_0063:  ldarg.1
    IL_0064:  ldc.r4     1.e-003
    IL_0069:  blt.un.s   IL_0086

    IL_006b:  ldarg.0
    IL_006c:  ldarg.1
    IL_006d:  ldc.r4     1000.
    IL_0072:  mul
    IL_0073:  ldc.i4.2
    IL_0074:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_0079:  ldarg.0
    IL_007a:  ldstr      "ms"
    IL_007f:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0084:  pop
    IL_0085:  ret

    IL_0086:  ldarg.1
    IL_0087:  ldc.r4     9.9999997e-005
    IL_008c:  blt.un.s   IL_00a9

    IL_008e:  ldarg.0
    IL_008f:  ldarg.1
    IL_0090:  ldc.r4     1000000.
    IL_0095:  mul
    IL_0096:  ldc.i4.0
    IL_0097:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_009c:  ldarg.0
    IL_009d:  ldstr      "us"
    IL_00a2:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_00a7:  pop
    IL_00a8:  ret

    IL_00a9:  ldarg.1
    IL_00aa:  ldc.r4     9.9999997e-006
    IL_00af:  blt.un.s   IL_00cc

    IL_00b1:  ldarg.0
    IL_00b2:  ldarg.1
    IL_00b3:  ldc.r4     1000000.
    IL_00b8:  mul
    IL_00b9:  ldc.i4.1
    IL_00ba:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_00bf:  ldarg.0
    IL_00c0:  ldstr      "us"
    IL_00c5:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_00ca:  pop
    IL_00cb:  ret

    IL_00cc:  ldarg.1
    IL_00cd:  ldc.r4     1.e-006
    IL_00d2:  blt.un.s   IL_00ef

    IL_00d4:  ldarg.0
    IL_00d5:  ldarg.1
    IL_00d6:  ldc.r4     1000000.
    IL_00db:  mul
    IL_00dc:  ldc.i4.2
    IL_00dd:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_00e2:  ldarg.0
    IL_00e3:  ldstr      "us"
    IL_00e8:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_00ed:  pop
    IL_00ee:  ret

    IL_00ef:  ldarg.1
    IL_00f0:  ldc.r4     1.e-007
    IL_00f5:  blt.un.s   IL_0112

    IL_00f7:  ldarg.0
    IL_00f8:  ldarg.1
    IL_00f9:  ldc.r4     1.e+009
    IL_00fe:  mul
    IL_00ff:  ldc.i4.0
    IL_0100:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_0105:  ldarg.0
    IL_0106:  ldstr      "ns"
    IL_010b:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0110:  pop
    IL_0111:  ret

    IL_0112:  ldarg.1
    IL_0113:  ldc.r4     9.9999999e-009
    IL_0118:  blt.un.s   IL_0135

    IL_011a:  ldarg.0
    IL_011b:  ldarg.1
    IL_011c:  ldc.r4     1.e+009
    IL_0121:  mul
    IL_0122:  ldc.i4.1
    IL_0123:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_0128:  ldarg.0
    IL_0129:  ldstr      "ns"
    IL_012e:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0133:  pop
    IL_0134:  ret

    IL_0135:  ldarg.0
    IL_0136:  ldarg.1
    IL_0137:  ldc.r4     1.e+009
    IL_013c:  mul
    IL_013d:  ldc.i4.2
    IL_013e:  call       void Game.StringUtils::AppendNumber(class [System.Runtime]System.Text.StringBuilder,
                                                             float32,
                                                             int32)
    IL_0143:  ldarg.0
    IL_0144:  ldstr      "ns"
    IL_0149:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_014e:  pop
    IL_014f:  ret
  } // end of method Profiler::FormatTime

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Profiler/Metric>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Profiler/Metric> Game.Profiler::m_metrics
    IL_000a:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Profiler/Metric>::.ctor()
    IL_000f:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Profiler/Metric> Game.Profiler::m_sortedMetrics
    IL_0014:  ldc.i4.1
    IL_0015:  stsfld     bool Game.Profiler::Enabled
    IL_001a:  ret
  } // end of method Profiler::.cctor

  .property int32 MaxNameLength()
  {
    .get int32 Game.Profiler::get_MaxNameLength()
  } // end of property Profiler::MaxNameLength
  .property valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric>
          Metrics()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<class Game.Profiler/Metric> Game.Profiler::get_Metrics()
  } // end of property Profiler::Metrics
} // end of class Game.Profiler