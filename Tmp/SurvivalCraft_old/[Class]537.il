.class public abstract auto ansi sealed beforefieldinit Game.Program
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.Program/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action`1<class [Engine]Engine.UnhandledExceptionInfo> '<>9__2_0'
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
            '<Main>b__2_0'(class [Engine]Engine.UnhandledExceptionInfo e) cil managed
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
    } // end of method '<>c'::'<Main>b__2_0'

  } // end of class '<>c'

  .field private static float64 m_frameBeginTime
  .field private static float64 m_cpuEndTime
  .field private static float32 '<LastFrameTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float32 '<LastCpuFrameTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
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
    IL_0045:  ldsfld     class [System.Runtime]System.Action`1<class [Engine]Engine.UnhandledExceptionInfo> Game.Program/'<>c'::'<>9__2_0'
    IL_004a:  dup
    IL_004b:  brtrue.s   IL_0064

    IL_004d:  pop
    IL_004e:  ldsfld     class Game.Program/'<>c' Game.Program/'<>c'::'<>9'
    IL_0053:  ldftn      instance void Game.Program/'<>c'::'<Main>b__2_0'(class [Engine]Engine.UnhandledExceptionInfo)
    IL_0059:  newobj     instance void class [System.Runtime]System.Action`1<class [Engine]Engine.UnhandledExceptionInfo>::.ctor(object,
                                                                                                                                 native int)
    IL_005e:  dup
    IL_005f:  stsfld     class [System.Runtime]System.Action`1<class [Engine]Engine.UnhandledExceptionInfo> Game.Program/'<>c'::'<>9__2_0'
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
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.Program::'<LastFrameTime>k__BackingField'
    IL_0005:  ret
  } // end of method Program::get_LastFrameTime

  .method private hidebysig specialname static 
          void  set_LastFrameTime(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.Program::'<LastFrameTime>k__BackingField'
    IL_0006:  ret
  } // end of method Program::set_LastFrameTime

  .method public hidebysig specialname static 
          float32  get_LastCpuFrameTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.Program::'<LastCpuFrameTime>k__BackingField'
    IL_0005:  ret
  } // end of method Program::get_LastCpuFrameTime

  .method private hidebysig specialname static 
          void  set_LastCpuFrameTime(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.Program::'<LastCpuFrameTime>k__BackingField'
    IL_0006:  ret
  } // end of method Program::set_LastCpuFrameTime

  .method private hidebysig static void  DeactivatedHandler() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  call       void [System.Runtime]System.GC::Collect()
    IL_0005:  ret
  } // end of method Program::DeactivatedHandler

  .method private hidebysig static void  FrameHandler() cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0005:  ldc.i4.s   10
    IL_0007:  bge.s      IL_0029

    IL_0009:  ldsfld     valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::Zero
    IL_000e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
    IL_0013:  ldc.i4.1
    IL_0014:  conv.r4
    IL_0015:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_001a:  ldloca.s   V_0
    IL_001c:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0022:  ldloc.0
    IL_0023:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                     valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                     valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0028:  ret

    IL_0029:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_002e:  ldc.i4.s   10
    IL_0030:  bne.un.s   IL_0038

    IL_0032:  call       void Game.Program::Initialize()
    IL_0037:  ret

    IL_0038:  call       void Game.Program::Run()
    IL_003d:  ret
  } // end of method Program::FrameHandler

  .method private hidebysig static void  Initialize() cil managed
  {
    // 代码大小       184 (0xb8)
    .maxstack  6
    IL_0000:  ldstr      "Survivalcraft starting up at {0}, Version={1}, Bui"
    + "ldConfiguration={2}, Platform={3}, Storage.AvailableFreeSpace={4}MB, Ap"
    + "proximateScreenDpi={5:0.0}, ApproxScreenInches={6:0.0}, ScreenResolutio"
    + "n={7}, ProcessorsCount={8}"
    IL_0005:  ldc.i4.s   9
    IL_0007:  newarr     [System.Runtime]System.Object
    IL_000c:  dup
    IL_000d:  ldc.i4.0
    IL_000e:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_0013:  box        [System.Runtime]System.DateTime
    IL_0018:  stelem.ref
    IL_0019:  dup
    IL_001a:  ldc.i4.1
    IL_001b:  call       string Game.VersionsManager::get_Version()
    IL_0020:  stelem.ref
    IL_0021:  dup
    IL_0022:  ldc.i4.2
    IL_0023:  call       valuetype Game.BuildConfiguration Game.VersionsManager::get_BuildConfiguration()
    IL_0028:  box        Game.BuildConfiguration
    IL_002d:  stelem.ref
    IL_002e:  dup
    IL_002f:  ldc.i4.3
    IL_0030:  call       valuetype Game.Platform Game.VersionsManager::get_Platform()
    IL_0035:  box        Game.Platform
    IL_003a:  stelem.ref
    IL_003b:  dup
    IL_003c:  ldc.i4.4
    IL_003d:  call       int64 [Engine]Engine.Storage::get_FreeSpace()
    IL_0042:  ldc.i4     0x400
    IL_0047:  conv.i8
    IL_0048:  div
    IL_0049:  ldc.i4     0x400
    IL_004e:  conv.i8
    IL_004f:  div
    IL_0050:  box        [System.Runtime]System.Int64
    IL_0055:  stelem.ref
    IL_0056:  dup
    IL_0057:  ldc.i4.5
    IL_0058:  call       float32 Game.ScreenResolutionManager::get_ApproximateScreenDpi()
    IL_005d:  box        [System.Runtime]System.Single
    IL_0062:  stelem.ref
    IL_0063:  dup
    IL_0064:  ldc.i4.6
    IL_0065:  call       float32 Game.ScreenResolutionManager::get_ApproximateScreenInches()
    IL_006a:  box        [System.Runtime]System.Single
    IL_006f:  stelem.ref
    IL_0070:  dup
    IL_0071:  ldc.i4.7
    IL_0072:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0077:  box        [Engine]Engine.Point2
    IL_007c:  stelem.ref
    IL_007d:  dup
    IL_007e:  ldc.i4.8
    IL_007f:  call       int32 [System.Runtime.Extensions]System.Environment::get_ProcessorCount()
    IL_0084:  box        [System.Runtime]System.Int32
    IL_0089:  stelem.ref
    IL_008a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_008f:  call       void [Engine]Engine.Log::Information(string)
    IL_0094:  call       void Game.MarketplaceManager::Initialize()
    IL_0099:  call       void Game.SettingsManager::Initialize()
    IL_009e:  call       void Game.AnalyticsManager::Initialize()
    IL_00a3:  call       void Game.VersionsManager::Initialize()
    IL_00a8:  call       void Game.ExternalContentManager::Initialize()
    IL_00ad:  call       void Game.ContentManager::Initialize()
    IL_00b2:  call       void Game.ScreensManager::Initialize()
    IL_00b7:  ret
  } // end of method Program::Initialize

  .method private hidebysig static void  Run() cil managed
  {
    // 代码大小       202 (0xca)
    .maxstack  3
    .locals init (class [System.Runtime]System.Exception V_0,
             class [System.Runtime]System.Exception V_1)
    IL_0000:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0005:  dup
    IL_0006:  ldsfld     float64 Game.Program::m_frameBeginTime
    IL_000b:  sub
    IL_000c:  conv.r4
    IL_000d:  call       void Game.Program::set_LastFrameTime(float32)
    IL_0012:  ldsfld     float64 Game.Program::m_cpuEndTime
    IL_0017:  ldsfld     float64 Game.Program::m_frameBeginTime
    IL_001c:  sub
    IL_001d:  conv.r4
    IL_001e:  call       void Game.Program::set_LastCpuFrameTime(float32)
    IL_0023:  stsfld     float64 Game.Program::m_frameBeginTime
    IL_0028:  call       int32 Game.SettingsManager::get_PresentationInterval()
    IL_002d:  call       void [Engine]Engine.Window::set_PresentationInterval(int32)
    .try
    {
      IL_0032:  call       class [System.Runtime]System.Exception Game.ExceptionManager::get_Error()
      IL_0037:  brtrue.s   IL_0059

      IL_0039:  call       void Game.PerformanceManager::Update()
      IL_003e:  call       void Game.MotdManager::Update()
      IL_0043:  call       void Game.MusicManager::Update()
      IL_0048:  call       void Game.ScreensManager::Update()
      IL_004d:  call       void Game.DialogsManager::Update()
      IL_0052:  call       void Game.WidgetsManager::Update()
      IL_0057:  br.s       IL_005e

      IL_0059:  call       void Game.ExceptionManager::UpdateExceptionScreen()
      IL_005e:  leave.s    IL_007a

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0060:  stloc.0
      IL_0061:  ldnull
      IL_0062:  ldloc.0
      IL_0063:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_0068:  ldstr      "MainMenu"
      IL_006d:  ldc.i4.0
      IL_006e:  newarr     [System.Runtime]System.Object
      IL_0073:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0078:  leave.s    IL_007a

    }  // end handler
    IL_007a:  nop
    .try
    {
      IL_007b:  ldnull
      IL_007c:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_0081:  call       class [System.Runtime]System.Exception Game.ExceptionManager::get_Error()
      IL_0086:  brtrue.s   IL_009e

      IL_0088:  call       void Game.ScreensManager::Draw()
      IL_008d:  call       void Game.WidgetsManager::Draw()
      IL_0092:  call       void Game.PerformanceManager::Draw()
      IL_0097:  call       void Game.ScreenCaptureManager::Run()
      IL_009c:  br.s       IL_00a3

      IL_009e:  call       void Game.ExceptionManager::DrawExceptionScreen()
      IL_00a3:  call       float64 [Engine]Engine.Time::get_RealTime()
      IL_00a8:  stsfld     float64 Game.Program::m_cpuEndTime
      IL_00ad:  leave.s    IL_00c9

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00af:  stloc.1
      IL_00b0:  ldnull
      IL_00b1:  ldloc.1
      IL_00b2:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_00b7:  ldstr      "MainMenu"
      IL_00bc:  ldc.i4.0
      IL_00bd:  newarr     [System.Runtime]System.Object
      IL_00c2:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_00c7:  leave.s    IL_00c9

    }  // end handler
    IL_00c9:  ret
  } // end of method Program::Run

  .property float32 LastFrameTime()
  {
    .get float32 Game.Program::get_LastFrameTime()
    .set void Game.Program::set_LastFrameTime(float32)
  } // end of property Program::LastFrameTime
  .property float32 LastCpuFrameTime()
  {
    .get float32 Game.Program::get_LastCpuFrameTime()
    .set void Game.Program::set_LastCpuFrameTime(float32)
  } // end of property Program::LastCpuFrameTime
} // end of class Game.Program