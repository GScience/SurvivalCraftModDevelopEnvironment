.class public abstract auto ansi sealed beforefieldinit Game.Program
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.Program/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action`1<class [Engine]Engine.UnhandledExceptionInfo> '<>9__4_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.Program/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.Program/'<>c' Game.Program/'<>c'::'<>9'
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
            '<Main>b__4_0'(class [Engine]Engine.UnhandledExceptionInfo e) cil managed
    {
      // 代码大小       24 (0x18)
      .maxstack  8
      IL_0000:  ldstr      "Unhandled exception."
      IL_0005:  ldarg.1
      IL_0006:  ldfld      class [System.Runtime]System.Exception [Engine]Engine.UnhandledExceptionInfo::Exception
      IL_000b:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_0010:  ldarg.1
      IL_0011:  ldc.i4.1
      IL_0012:  stfld      bool [Engine]Engine.UnhandledExceptionInfo::IsHandled
      IL_0017:  ret
    } // end of method '<>c'::'<Main>b__4_0'

  } // end of class '<>c'

  .field private static float64 m_frameBeginTime
  .field private static float64 m_cpuEndTime
  .field private static float32 m_lastFrameTime
  .field private static float32 m_lastCpuFrameTime
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       127 (0x7f)
    .maxstack  4
    IL_0000:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0005:  call       void [System.Globalization]System.Globalization.CultureInfo::set_DefaultThreadCurrentCulture(class [System.Globalization]System.Globalization.CultureInfo)
    IL_000a:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_000f:  call       void [System.Globalization]System.Globalization.CultureInfo::set_DefaultThreadCurrentUICulture(class [System.Globalization]System.Globalization.CultureInfo)
    IL_0014:  call       void [Engine]Engine.Log::RemoveAllLogSinks()
    IL_0019:  newobj     instance void Game.GameLogSink::.ctor()
    IL_001e:  call       void [Engine]Engine.Log::AddLogSink(class [Engine]Engine.ILogSink)
    IL_0023:  ldnull
    IL_0024:  ldftn      void Game.Program::DeactivatedHandler()
    IL_002a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_002f:  call       void [Engine]Engine.Window::add_Deactivated(class [System.Runtime]System.Action)
    IL_0034:  ldnull
    IL_0035:  ldftn      void Game.Program::FrameHandler()
    IL_003b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0040:  call       void [Engine]Engine.Window::add_Frame(class [System.Runtime]System.Action)
    IL_0045:  ldsfld     class [System.Runtime]System.Action`1<class [Engine]Engine.UnhandledExceptionInfo> Game.Program/'<>c'::'<>9__4_0'
    IL_004a:  dup
    IL_004b:  brtrue.s   IL_0064

    IL_004d:  pop
    IL_004e:  ldsfld     class Game.Program/'<>c' Game.Program/'<>c'::'<>9'
    IL_0053:  ldftn      instance void Game.Program/'<>c'::'<Main>b__4_0'(class [Engine]Engine.UnhandledExceptionInfo)
    IL_0059:  newobj     instance void class [System.Runtime]System.Action`1<class [Engine]Engine.UnhandledExceptionInfo>::.ctor(object,
                                                                                                                                 native int)
    IL_005e:  dup
    IL_005f:  stsfld     class [System.Runtime]System.Action`1<class [Engine]Engine.UnhandledExceptionInfo> Game.Program/'<>c'::'<>9__4_0'
    IL_0064:  call       void [Engine]Engine.Window::add_UnhandledException(class [System.Runtime]System.Action`1<class [Engine]Engine.UnhandledExceptionInfo>)
    IL_0069:  ldc.i4     0x780
    IL_006e:  ldc.i4     0x438
    IL_0073:  ldc.i4.0
    IL_0074:  ldstr      "Survivalcraft 2"
    IL_0079:  call       void [Engine]Engine.Window::Run(int32,
                                                         int32,
                                                         valuetype [Engine]Engine.WindowMode,
                                                         string)
    IL_007e:  ret
  } // end of method Program::Main

  .method public hidebysig specialname static 
          float32  get_LastFrameTime() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.Program::m_lastFrameTime
    IL_0005:  ret
  } // end of method Program::get_LastFrameTime

  .method public hidebysig specialname static 
          float32  get_LastCpuFrameTime() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.Program::m_lastCpuFrameTime
    IL_0005:  ret
  } // end of method Program::get_LastCpuFrameTime

  .method private hidebysig static void  DeactivatedHandler() cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  call       void [System.Runtime]System.GC::Collect()
    IL_0005:  call       void [System.Runtime]System.GC::WaitForPendingFinalizers()
    IL_000a:  call       void [System.Runtime]System.GC::Collect()
    IL_000f:  ret
  } // end of method Program::DeactivatedHandler

  .method private hidebysig static void  FrameHandler() cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1)
    IL_0000:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0005:  ldc.i4.s   10
    IL_0007:  bge.s      IL_002b

    IL_0009:  ldsfld     valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::Zero
    IL_000e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
    IL_0013:  ldloca.s   V_0
    IL_0015:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_001b:  ldloc.0
    IL_001c:  ldloca.s   V_1
    IL_001e:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0024:  ldloc.1
    IL_0025:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                     valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                     valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_002a:  ret

    IL_002b:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0030:  ldc.i4.s   10
    IL_0032:  bne.un.s   IL_003a

    IL_0034:  call       void Game.Program::Initialize()
    IL_0039:  ret

    IL_003a:  call       void Game.Program::Update()
    IL_003f:  ret
  } // end of method Program::FrameHandler

  .method private hidebysig static void  Initialize() cil managed
  {
    // 代码大小       157 (0x9d)
    .maxstack  6
    IL_0000:  ldstr      "Survivalcraft starting up at {0}, Version={1}, Bui"
    + "ldConfiguration={2}, Platform={3}, Storage.AvailableFreeSpace={4}MB, Ap"
    + "proximateScreenDpi={5:0.0}, ScreenResolution={6}"
    IL_0005:  ldc.i4.7
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_0012:  box        [System.Runtime]System.DateTime
    IL_0017:  stelem.ref
    IL_0018:  dup
    IL_0019:  ldc.i4.1
    IL_001a:  call       string Game.VersionsManager::get_Version()
    IL_001f:  stelem.ref
    IL_0020:  dup
    IL_0021:  ldc.i4.2
    IL_0022:  call       valuetype Game.BuildConfiguration Game.VersionsManager::get_BuildConfiguration()
    IL_0027:  box        Game.BuildConfiguration
    IL_002c:  stelem.ref
    IL_002d:  dup
    IL_002e:  ldc.i4.3
    IL_002f:  call       valuetype Game.Platform Game.VersionsManager::get_Platform()
    IL_0034:  box        Game.Platform
    IL_0039:  stelem.ref
    IL_003a:  dup
    IL_003b:  ldc.i4.4
    IL_003c:  call       int64 [Engine]Engine.Storage::get_AvailableFreeSpace()
    IL_0041:  ldc.i4     0x400
    IL_0046:  conv.i8
    IL_0047:  div
    IL_0048:  ldc.i4     0x400
    IL_004d:  conv.i8
    IL_004e:  div
    IL_004f:  box        [System.Runtime]System.Int64
    IL_0054:  stelem.ref
    IL_0055:  dup
    IL_0056:  ldc.i4.5
    IL_0057:  call       float32 Game.ScreenResolutionManager::get_ApproximateScreenDpi()
    IL_005c:  box        [System.Runtime]System.Single
    IL_0061:  stelem.ref
    IL_0062:  dup
    IL_0063:  ldc.i4.6
    IL_0064:  call       valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_ScreenResolution()
    IL_0069:  box        [Engine]Engine.Point2
    IL_006e:  stelem.ref
    IL_006f:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0074:  call       void [Engine]Engine.Log::Information(string)
    IL_0079:  call       void Game.MarketplaceManager::Initialize()
    IL_007e:  call       void Game.SettingsManager::Initialize()
    IL_0083:  call       void Game.AnalyticsManager::Initialize()
    IL_0088:  call       void Game.VersionsManager::Initialize()
    IL_008d:  call       void Game.ExternalContentManager::Initialize()
    IL_0092:  call       void Game.ContentManager::Initialize()
    IL_0097:  call       void Game.FrontendManager::Initialize()
    IL_009c:  ret
  } // end of method Program::Initialize

  .method private hidebysig static void  Update() cil managed
  {
    // 代码大小       235 (0xeb)
    .maxstack  3
    .locals init (class [System.Runtime]System.Exception V_0,
             valuetype [Engine]Engine.Graphics.Viewport V_1,
             float64 V_2,
             class [System.Runtime]System.Exception V_3)
    IL_0000:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0005:  dup
    IL_0006:  ldsfld     float64 Game.Program::m_frameBeginTime
    IL_000b:  sub
    IL_000c:  conv.r4
    IL_000d:  stsfld     float32 Game.Program::m_lastFrameTime
    IL_0012:  ldsfld     float64 Game.Program::m_cpuEndTime
    IL_0017:  ldsfld     float64 Game.Program::m_frameBeginTime
    IL_001c:  sub
    IL_001d:  conv.r4
    IL_001e:  stsfld     float32 Game.Program::m_lastCpuFrameTime
    IL_0023:  stsfld     float64 Game.Program::m_frameBeginTime
    .try
    {
      IL_0028:  call       class [System.Runtime]System.Exception Game.ExceptionManager::get_Error()
      IL_002d:  brtrue.s   IL_0045

      IL_002f:  call       void Game.InputManager::Update()
      IL_0034:  call       void Game.PerformanceManager::Update()
      IL_0039:  call       void Game.MotdManager::Update()
      IL_003e:  call       void Game.FrontendManager::Update()
      IL_0043:  br.s       IL_004a

      IL_0045:  call       void Game.ExceptionManager::UpdateExceptionScreen()
      IL_004a:  leave.s    IL_0056

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_004c:  stloc.0
      IL_004d:  ldnull
      IL_004e:  ldloc.0
      IL_004f:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_0054:  leave.s    IL_0056

    }  // end handler
    IL_0056:  nop
    .try
    {
      IL_0057:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
      IL_005c:  stloc.1
      IL_005d:  ldloca.s   V_1
      IL_005f:  call       instance valuetype [Engine]Engine.Rectangle [Engine]Engine.Graphics.Viewport::get_Rectangle()
      IL_0064:  call       void [Engine]Engine.Graphics.Display::set_ScissorRectangle(valuetype [Engine]Engine.Rectangle)
      IL_0069:  call       class [System.Runtime]System.Exception Game.ExceptionManager::get_Error()
      IL_006e:  brtrue.s   IL_007c

      IL_0070:  call       void Game.ScreenCaptureManager::Run()
      IL_0075:  call       void Game.FrontendManager::Draw()
      IL_007a:  br.s       IL_0081

      IL_007c:  call       void Game.ExceptionManager::DrawExceptionScreen()
      IL_0081:  call       float64 [Engine]Engine.Time::get_RealTime()
      IL_0086:  stsfld     float64 Game.Program::m_cpuEndTime
      IL_008b:  br.s       IL_00d2

      IL_008d:  ldc.r4     1.
      IL_0092:  call       float32 Game.SettingsManager::get_FramerateLimit()
      IL_0097:  div
      IL_0098:  conv.r8
      IL_0099:  call       float64 [Engine]Engine.Time::get_RealTime()
      IL_009e:  ldsfld     float64 Game.Program::m_frameBeginTime
      IL_00a3:  sub
      IL_00a4:  sub
      IL_00a5:  stloc.2
      IL_00a6:  ldloc.2
      IL_00a7:  ldc.r8     4.0000000000000001e-003
      IL_00b0:  ble.un.s   IL_00de

      IL_00b2:  ldloc.2
      IL_00b3:  ldc.r8     4.0000000000000001e-003
      IL_00bc:  sub
      IL_00bd:  ldc.r8     1000.
      IL_00c6:  mul
      IL_00c7:  conv.i4
      IL_00c8:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Delay(int32)
      IL_00cd:  callvirt   instance void [System.Threading.Tasks]System.Threading.Tasks.Task::Wait()
      IL_00d2:  call       float32 Game.SettingsManager::get_FramerateLimit()
      IL_00d7:  ldc.r4     (00 00 80 7F)
      IL_00dc:  bne.un.s   IL_008d

      IL_00de:  leave.s    IL_00ea

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00e0:  stloc.3
      IL_00e1:  ldnull
      IL_00e2:  ldloc.3
      IL_00e3:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_00e8:  leave.s    IL_00ea

    }  // end handler
    IL_00ea:  ret
  } // end of method Program::Update

  .property float32 LastFrameTime()
  {
    .get float32 Game.Program::get_LastFrameTime()
  } // end of property Program::LastFrameTime
  .property float32 LastCpuFrameTime()
  {
    .get float32 Game.Program::get_LastCpuFrameTime()
  } // end of property Program::LastCpuFrameTime
} // end of class Game.Program