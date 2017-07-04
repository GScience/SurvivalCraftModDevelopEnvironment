.class public abstract auto ansi sealed Game.PerformanceManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.PerformanceManager/'<>c' '<>9'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.PerformanceManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.PerformanceManager/'<>c' Game.PerformanceManager/'<>c'::'<>9'
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

    .method assembly hidebysig instance void 
            '<.cctor>b__12_0'() cil managed
    {
      // 代码大小       15 (0xf)
      .maxstack  8
      IL_0000:  ldc.r8     0.0
      IL_0009:  stsfld     float64 Game.PerformanceManager::m_totalGameTime
      IL_000e:  ret
    } // end of method '<>c'::'<.cctor>b__12_0'

    .method assembly hidebysig instance void 
            '<.cctor>b__12_1'() cil managed
    {
      // 代码大小       56 (0x38)
      .maxstack  8
      IL_0000:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
      IL_0005:  brfalse.s  IL_0037

      IL_0007:  ldsfld     float64 Game.PerformanceManager::m_totalGameTime
      IL_000c:  call       float32 [Engine]Engine.Time::get_FrameDuration()
      IL_0011:  conv.r8
      IL_0012:  add
      IL_0013:  stsfld     float64 Game.PerformanceManager::m_totalGameTime
      IL_0018:  ldsfld     float64 Game.PerformanceManager::m_totalGameTime
      IL_001d:  ldc.r8     60.
      IL_0026:  ble.un.s   IL_0037

      IL_0028:  ldsfld     class Game.StateMachine Game.PerformanceManager::m_stateMachine
      IL_002d:  ldstr      "Measuring"
      IL_0032:  callvirt   instance void Game.StateMachine::TransitionTo(string)
      IL_0037:  ret
    } // end of method '<>c'::'<.cctor>b__12_1'

    .method assembly hidebysig instance void 
            '<.cctor>b__12_2'() cil managed
    {
      // 代码大小       35 (0x23)
      .maxstack  8
      IL_0000:  ldc.r8     0.0
      IL_0009:  stsfld     float64 Game.PerformanceManager::m_totalFrameTime
      IL_000e:  ldc.r8     0.0
      IL_0017:  stsfld     float64 Game.PerformanceManager::m_totalCpuFrameTime
      IL_001c:  ldc.i4.0
      IL_001d:  stsfld     int32 Game.PerformanceManager::m_frameCount
      IL_0022:  ret
    } // end of method '<>c'::'<.cctor>b__12_2'

    .method assembly hidebysig instance void 
            '<.cctor>b__12_3'() cil managed
    {
      // 代码大小       175 (0xaf)
      .maxstack  2
      .locals init (float32 V_0,
               float32 V_1)
      IL_0000:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
      IL_0005:  brfalse    IL_009f

      IL_000a:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
      IL_000f:  brfalse    IL_00ae

      IL_0014:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
      IL_0019:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_001e:  ldtoken    Game.GameScreen
      IL_0023:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0028:  bne.un     IL_00ae

      IL_002d:  call       float32 Game.Program::get_LastFrameTime()
      IL_0032:  stloc.0
      IL_0033:  call       float32 Game.Program::get_LastCpuFrameTime()
      IL_0038:  stloc.1
      IL_0039:  ldloc.0
      IL_003a:  ldc.r4     0.0
      IL_003f:  ble.un.s   IL_007f

      IL_0041:  ldloc.0
      IL_0042:  ldc.r4     1.
      IL_0047:  bge.un.s   IL_007f

      IL_0049:  ldloc.1
      IL_004a:  ldc.r4     0.0
      IL_004f:  ble.un.s   IL_007f

      IL_0051:  ldloc.1
      IL_0052:  ldc.r4     1.
      IL_0057:  bge.un.s   IL_007f

      IL_0059:  ldsfld     float64 Game.PerformanceManager::m_totalFrameTime
      IL_005e:  ldloc.0
      IL_005f:  conv.r8
      IL_0060:  add
      IL_0061:  stsfld     float64 Game.PerformanceManager::m_totalFrameTime
      IL_0066:  ldsfld     float64 Game.PerformanceManager::m_totalCpuFrameTime
      IL_006b:  ldloc.1
      IL_006c:  conv.r8
      IL_006d:  add
      IL_006e:  stsfld     float64 Game.PerformanceManager::m_totalCpuFrameTime
      IL_0073:  ldsfld     int32 Game.PerformanceManager::m_frameCount
      IL_0078:  ldc.i4.1
      IL_0079:  add
      IL_007a:  stsfld     int32 Game.PerformanceManager::m_frameCount
      IL_007f:  ldsfld     float64 Game.PerformanceManager::m_totalFrameTime
      IL_0084:  ldc.r8     180.
      IL_008d:  ble.un.s   IL_00ae

      IL_008f:  ldsfld     class Game.StateMachine Game.PerformanceManager::m_stateMachine
      IL_0094:  ldstr      "PostMeasure"
      IL_0099:  callvirt   instance void Game.StateMachine::TransitionTo(string)
      IL_009e:  ret

      IL_009f:  ldsfld     class Game.StateMachine Game.PerformanceManager::m_stateMachine
      IL_00a4:  ldstr      "PreMeasure"
      IL_00a9:  callvirt   instance void Game.StateMachine::TransitionTo(string)
      IL_00ae:  ret
    } // end of method '<>c'::'<.cctor>b__12_3'

    .method assembly hidebysig instance void 
            '<.cctor>b__12_4'() cil managed
    {
      // 代码大小       310 (0x136)
      .maxstack  7
      .locals init (float32 V_0,
               float32 V_1)
      IL_0000:  ldsfld     int32 Game.PerformanceManager::m_frameCount
      IL_0005:  ldc.i4.0
      IL_0006:  ble        IL_0135

      IL_000b:  ldsfld     float64 Game.PerformanceManager::m_totalFrameTime
      IL_0010:  ldsfld     int32 Game.PerformanceManager::m_frameCount
      IL_0015:  conv.r8
      IL_0016:  div
      IL_0017:  conv.r4
      IL_0018:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
      IL_001d:  stsfld     valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::m_longTermAverageFrameTime
      IL_0022:  ldsfld     float64 Game.PerformanceManager::m_totalFrameTime
      IL_0027:  ldsfld     int32 Game.PerformanceManager::m_frameCount
      IL_002c:  conv.r8
      IL_002d:  div
      IL_002e:  ldc.r8     4.999999888241291e-003
      IL_0037:  div
      IL_0038:  call       float64 [Engine]Engine.MathUtils::Round(float64)
      IL_003d:  ldc.r8     4.999999888241291e-003
      IL_0046:  mul
      IL_0047:  ldc.r8     1000.
      IL_0050:  mul
      IL_0051:  call       float64 [Engine]Engine.MathUtils::Round(float64)
      IL_0056:  conv.i4
      IL_0057:  conv.r4
      IL_0058:  stloc.0
      IL_0059:  ldsfld     float64 Game.PerformanceManager::m_totalCpuFrameTime
      IL_005e:  ldsfld     int32 Game.PerformanceManager::m_frameCount
      IL_0063:  conv.r8
      IL_0064:  div
      IL_0065:  ldc.r8     4.999999888241291e-003
      IL_006e:  div
      IL_006f:  call       float64 [Engine]Engine.MathUtils::Round(float64)
      IL_0074:  ldc.r8     4.999999888241291e-003
      IL_007d:  mul
      IL_007e:  ldc.r8     1000.
      IL_0087:  mul
      IL_0088:  call       float64 [Engine]Engine.MathUtils::Round(float64)
      IL_008d:  conv.i4
      IL_008e:  conv.r4
      IL_008f:  stloc.1
      IL_0090:  ldstr      "[PerformanceManager] Measurement"
      IL_0095:  ldc.i4.3
      IL_0096:  newarr     Game.AnalyticsParameter
      IL_009b:  dup
      IL_009c:  ldc.i4.0
      IL_009d:  ldstr      "FrameCount"
      IL_00a2:  ldsflda    int32 Game.PerformanceManager::m_frameCount
      IL_00a7:  call       instance string [System.Runtime]System.Int32::ToString()
      IL_00ac:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_00b1:  stelem     Game.AnalyticsParameter
      IL_00b6:  dup
      IL_00b7:  ldc.i4.1
      IL_00b8:  ldstr      "AverageFrameTime"
      IL_00bd:  ldloca.s   V_0
      IL_00bf:  call       instance string [System.Runtime]System.Single::ToString()
      IL_00c4:  ldstr      "ms"
      IL_00c9:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_00ce:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_00d3:  stelem     Game.AnalyticsParameter
      IL_00d8:  dup
      IL_00d9:  ldc.i4.2
      IL_00da:  ldstr      "AverageFrameCpuTime"
      IL_00df:  ldloca.s   V_1
      IL_00e1:  call       instance string [System.Runtime]System.Single::ToString()
      IL_00e6:  ldstr      "ms"
      IL_00eb:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_00f0:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_00f5:  stelem     Game.AnalyticsParameter
      IL_00fa:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                valuetype Game.AnalyticsParameter[])
      IL_00ff:  ldstr      "PerformanceManager Measurement: frames={0}, avgFra"
      + "meTime={1}ms, avgFrameCpuTime={2}ms"
      IL_0104:  ldc.i4.3
      IL_0105:  newarr     [System.Runtime]System.Object
      IL_010a:  dup
      IL_010b:  ldc.i4.0
      IL_010c:  ldsflda    int32 Game.PerformanceManager::m_frameCount
      IL_0111:  call       instance string [System.Runtime]System.Int32::ToString()
      IL_0116:  stelem.ref
      IL_0117:  dup
      IL_0118:  ldc.i4.1
      IL_0119:  ldloca.s   V_0
      IL_011b:  call       instance string [System.Runtime]System.Single::ToString()
      IL_0120:  stelem.ref
      IL_0121:  dup
      IL_0122:  ldc.i4.2
      IL_0123:  ldloca.s   V_1
      IL_0125:  call       instance string [System.Runtime]System.Single::ToString()
      IL_012a:  stelem.ref
      IL_012b:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0130:  call       void [Engine]Engine.Log::Information(string)
      IL_0135:  ret
    } // end of method '<>c'::'<.cctor>b__12_4'

    .method assembly hidebysig instance void 
            '<.cctor>b__12_5'() cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
      IL_0005:  brtrue.s   IL_0016

      IL_0007:  ldsfld     class Game.StateMachine Game.PerformanceManager::m_stateMachine
      IL_000c:  ldstr      "PreMeasure"
      IL_0011:  callvirt   instance void Game.StateMachine::TransitionTo(string)
      IL_0016:  ret
    } // end of method '<>c'::'<.cctor>b__12_5'

  } // end of class '<>c'

  .field private static class [Engine]Engine.Graphics.PrimitivesRenderer2D m_primitivesRenderer
  .field private static class Game.RunningAverage m_averageFrameTime
  .field private static class Game.RunningAverage m_averageCpuFrameTime
  .field private static valuetype [System.Runtime]System.Nullable`1<float32> m_longTermAverageFrameTime
  .field private static int64 m_totalMemoryUsed
  .field private static int64 m_totalGpuMemoryUsed
  .field private static class Game.StateMachine m_stateMachine
  .field private static float64 m_totalGameTime
  .field private static float64 m_totalFrameTime
  .field private static float64 m_totalCpuFrameTime
  .field private static int32 m_frameCount
  .field private static string m_statsString
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       220 (0xdc)
    .maxstack  5
    IL_0000:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0005:  stsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.PerformanceManager::m_primitivesRenderer
    IL_000a:  ldc.r4     1.
    IL_000f:  newobj     instance void Game.RunningAverage::.ctor(float32)
    IL_0014:  stsfld     class Game.RunningAverage Game.PerformanceManager::m_averageFrameTime
    IL_0019:  ldc.r4     1.
    IL_001e:  newobj     instance void Game.RunningAverage::.ctor(float32)
    IL_0023:  stsfld     class Game.RunningAverage Game.PerformanceManager::m_averageCpuFrameTime
    IL_0028:  newobj     instance void Game.StateMachine::.ctor()
    IL_002d:  stsfld     class Game.StateMachine Game.PerformanceManager::m_stateMachine
    IL_0032:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0037:  stsfld     string Game.PerformanceManager::m_statsString
    IL_003c:  ldsfld     class Game.StateMachine Game.PerformanceManager::m_stateMachine
    IL_0041:  ldstr      "PreMeasure"
    IL_0046:  ldsfld     class Game.PerformanceManager/'<>c' Game.PerformanceManager/'<>c'::'<>9'
    IL_004b:  ldftn      instance void Game.PerformanceManager/'<>c'::'<.cctor>b__12_0'()
    IL_0051:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0056:  ldsfld     class Game.PerformanceManager/'<>c' Game.PerformanceManager/'<>c'::'<>9'
    IL_005b:  ldftn      instance void Game.PerformanceManager/'<>c'::'<.cctor>b__12_1'()
    IL_0061:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0066:  ldnull
    IL_0067:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_006c:  ldsfld     class Game.StateMachine Game.PerformanceManager::m_stateMachine
    IL_0071:  ldstr      "Measuring"
    IL_0076:  ldsfld     class Game.PerformanceManager/'<>c' Game.PerformanceManager/'<>c'::'<>9'
    IL_007b:  ldftn      instance void Game.PerformanceManager/'<>c'::'<.cctor>b__12_2'()
    IL_0081:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0086:  ldsfld     class Game.PerformanceManager/'<>c' Game.PerformanceManager/'<>c'::'<>9'
    IL_008b:  ldftn      instance void Game.PerformanceManager/'<>c'::'<.cctor>b__12_3'()
    IL_0091:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0096:  ldnull
    IL_0097:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_009c:  ldsfld     class Game.StateMachine Game.PerformanceManager::m_stateMachine
    IL_00a1:  ldstr      "PostMeasure"
    IL_00a6:  ldsfld     class Game.PerformanceManager/'<>c' Game.PerformanceManager/'<>c'::'<>9'
    IL_00ab:  ldftn      instance void Game.PerformanceManager/'<>c'::'<.cctor>b__12_4'()
    IL_00b1:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b6:  ldsfld     class Game.PerformanceManager/'<>c' Game.PerformanceManager/'<>c'::'<>9'
    IL_00bb:  ldftn      instance void Game.PerformanceManager/'<>c'::'<.cctor>b__12_5'()
    IL_00c1:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c6:  ldnull
    IL_00c7:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00cc:  ldsfld     class Game.StateMachine Game.PerformanceManager::m_stateMachine
    IL_00d1:  ldstr      "PreMeasure"
    IL_00d6:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00db:  ret
  } // end of method PerformanceManager::.cctor

  .method public hidebysig specialname static 
          valuetype [System.Runtime]System.Nullable`1<float32> 
          get_LongTermAverageFrameTime() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::m_longTermAverageFrameTime
    IL_0005:  ret
  } // end of method PerformanceManager::get_LongTermAverageFrameTime

  .method public hidebysig specialname static 
          float32  get_AverageFrameTime() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class Game.RunningAverage Game.PerformanceManager::m_averageFrameTime
    IL_0005:  callvirt   instance float32 Game.RunningAverage::get_Value()
    IL_000a:  ret
  } // end of method PerformanceManager::get_AverageFrameTime

  .method public hidebysig specialname static 
          float32  get_AverageCpuFrameTime() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class Game.RunningAverage Game.PerformanceManager::m_averageCpuFrameTime
    IL_0005:  callvirt   instance float32 Game.RunningAverage::get_Value()
    IL_000a:  ret
  } // end of method PerformanceManager::get_AverageCpuFrameTime

  .method public hidebysig specialname static 
          int64  get_TotalMemoryUsed() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int64 Game.PerformanceManager::m_totalMemoryUsed
    IL_0005:  ret
  } // end of method PerformanceManager::get_TotalMemoryUsed

  .method public hidebysig specialname static 
          int64  get_TotalGpuMemoryUsed() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int64 Game.PerformanceManager::m_totalGpuMemoryUsed
    IL_0005:  ret
  } // end of method PerformanceManager::get_TotalGpuMemoryUsed

  .method public hidebysig static void  Update() cil managed
  {
    // 代码大小       87 (0x57)
    .maxstack  2
    IL_0000:  ldsfld     class Game.RunningAverage Game.PerformanceManager::m_averageFrameTime
    IL_0005:  call       float32 Game.Program::get_LastFrameTime()
    IL_000a:  callvirt   instance void Game.RunningAverage::AddSample(float32)
    IL_000f:  ldsfld     class Game.RunningAverage Game.PerformanceManager::m_averageCpuFrameTime
    IL_0014:  call       float32 Game.Program::get_LastCpuFrameTime()
    IL_0019:  callvirt   instance void Game.RunningAverage::AddSample(float32)
    IL_001e:  ldc.r8     1.
    IL_0027:  ldc.r8     0.0
    IL_0030:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0035:  brfalse.s  IL_004c

    IL_0037:  ldc.i4.0
    IL_0038:  call       int64 [System.Runtime]System.GC::GetTotalMemory(bool)
    IL_003d:  stsfld     int64 Game.PerformanceManager::m_totalMemoryUsed
    IL_0042:  call       int64 [Engine]Engine.Graphics.Display::GetGpuMemoryUsage()
    IL_0047:  stsfld     int64 Game.PerformanceManager::m_totalGpuMemoryUsed
    IL_004c:  ldsfld     class Game.StateMachine Game.PerformanceManager::m_stateMachine
    IL_0051:  callvirt   instance void Game.StateMachine::Update()
    IL_0056:  ret
  } // end of method PerformanceManager::Update

  .method public hidebysig static void  Draw() cil managed
  {
    // 代码大小       275 (0x113)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             valuetype [Engine]Engine.Vector2 V_1)
    IL_0000:  call       bool Game.SettingsManager::get_DisplayFpsCounter()
    IL_0005:  brfalse    IL_0107

    IL_000a:  ldc.r8     1.
    IL_0013:  ldc.r8     0.0
    IL_001c:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0021:  brfalse.s  IL_0098

    IL_0023:  ldstr      "CPUMEM {0:0}MB, GPUMEM {1:0}MB, CPU {2:0}%, FPS {3"
    + ":0.0}"
    IL_0028:  ldc.i4.4
    IL_0029:  newarr     [System.Runtime]System.Object
    IL_002e:  dup
    IL_002f:  ldc.i4.0
    IL_0030:  call       int64 Game.PerformanceManager::get_TotalMemoryUsed()
    IL_0035:  conv.r4
    IL_0036:  ldc.r4     1024.
    IL_003b:  div
    IL_003c:  ldc.r4     1024.
    IL_0041:  div
    IL_0042:  box        [System.Runtime]System.Single
    IL_0047:  stelem.ref
    IL_0048:  dup
    IL_0049:  ldc.i4.1
    IL_004a:  call       int64 Game.PerformanceManager::get_TotalGpuMemoryUsed()
    IL_004f:  conv.r4
    IL_0050:  ldc.r4     1024.
    IL_0055:  div
    IL_0056:  ldc.r4     1024.
    IL_005b:  div
    IL_005c:  box        [System.Runtime]System.Single
    IL_0061:  stelem.ref
    IL_0062:  dup
    IL_0063:  ldc.i4.2
    IL_0064:  call       float32 Game.PerformanceManager::get_AverageCpuFrameTime()
    IL_0069:  call       float32 Game.PerformanceManager::get_AverageFrameTime()
    IL_006e:  div
    IL_006f:  ldc.r4     100.
    IL_0074:  mul
    IL_0075:  box        [System.Runtime]System.Single
    IL_007a:  stelem.ref
    IL_007b:  dup
    IL_007c:  ldc.i4.3
    IL_007d:  ldc.r4     1.
    IL_0082:  call       float32 Game.PerformanceManager::get_AverageFrameTime()
    IL_0087:  div
    IL_0088:  box        [System.Runtime]System.Single
    IL_008d:  stelem.ref
    IL_008e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0093:  stsfld     string Game.PerformanceManager::m_statsString
    IL_0098:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_009d:  stloc.0
    IL_009e:  ldloca.s   V_1
    IL_00a0:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00a5:  ldc.r4     1.
    IL_00aa:  ldc.r4     4.
    IL_00af:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00b4:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00b9:  call       instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00be:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.PerformanceManager::m_primitivesRenderer
    IL_00c3:  call       class [Engine]Engine.Media.BitmapFont [Engine]Engine.Media.BitmapFont::get_DebugFont()
    IL_00c8:  ldc.i4.0
    IL_00c9:  ldnull
    IL_00ca:  ldnull
    IL_00cb:  ldnull
    IL_00cc:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_00d1:  callvirt   instance class [Engine]Engine.Graphics.FontBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_00d6:  ldsfld     string Game.PerformanceManager::m_statsString
    IL_00db:  ldloc.0
    IL_00dc:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_00e1:  conv.r4
    IL_00e2:  ldc.r4     0.0
    IL_00e7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ec:  ldc.r4     0.0
    IL_00f1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00f6:  ldc.i4.4
    IL_00f7:  ldloc.1
    IL_00f8:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00fd:  ldc.r4     0.0
    IL_0102:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32)
    IL_0107:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.PerformanceManager::m_primitivesRenderer
    IL_010c:  ldc.i4.1
    IL_010d:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_0112:  ret
  } // end of method PerformanceManager::Draw

  .property valuetype [System.Runtime]System.Nullable`1<float32>
          LongTermAverageFrameTime()
  {
    .get valuetype [System.Runtime]System.Nullable`1<float32> Game.PerformanceManager::get_LongTermAverageFrameTime()
  } // end of property PerformanceManager::LongTermAverageFrameTime
  .property float32 AverageFrameTime()
  {
    .get float32 Game.PerformanceManager::get_AverageFrameTime()
  } // end of property PerformanceManager::AverageFrameTime
  .property float32 AverageCpuFrameTime()
  {
    .get float32 Game.PerformanceManager::get_AverageCpuFrameTime()
  } // end of property PerformanceManager::AverageCpuFrameTime
  .property int64 TotalMemoryUsed()
  {
    .get int64 Game.PerformanceManager::get_TotalMemoryUsed()
  } // end of property PerformanceManager::TotalMemoryUsed
  .property int64 TotalGpuMemoryUsed()
  {
    .get int64 Game.PerformanceManager::get_TotalGpuMemoryUsed()
  } // end of property PerformanceManager::TotalGpuMemoryUsed
} // end of class Game.PerformanceManager