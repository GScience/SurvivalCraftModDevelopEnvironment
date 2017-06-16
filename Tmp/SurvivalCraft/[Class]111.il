.class public abstract auto ansi sealed beforefieldinit Game.AnalyticsManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.AnalyticsManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__2_0'
    .field public static class [System.Runtime]System.Action '<>9__2_1'
    .field public static class [System.Runtime]System.Action '<>9__2_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.AnalyticsManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.AnalyticsManager/'<>c' Game.AnalyticsManager/'<>c'::'<>9'
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
            '<Initialize>b__2_0'() cil managed
    {
      // 代码大小       119 (0x77)
      .maxstack  4
      .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype Game.AnalyticsParameter> V_0,
               int64 V_1,
               valuetype [System.Runtime]System.DateTime V_2)
      IL_0000:  call       void Game.AnalyticsManager::Start()
      IL_0005:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.AnalyticsParameter>::.ctor()
      IL_000a:  stloc.0
      IL_000b:  ldloc.0
      IL_000c:  ldstr      "Version"
      IL_0011:  call       string Game.AnalyticsManager::get_AnalyticsVersion()
      IL_0016:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_001b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.AnalyticsParameter>::Add(!0)
      IL_0020:  ldloc.0
      IL_0021:  ldstr      "FreeSpaceKb"
      IL_0026:  call       int64 [Engine]Engine.Storage::get_AvailableFreeSpace()
      IL_002b:  ldc.i4     0x400
      IL_0030:  conv.i8
      IL_0031:  div
      IL_0032:  stloc.1
      IL_0033:  ldloca.s   V_1
      IL_0035:  call       instance string [System.Runtime]System.Int64::ToString()
      IL_003a:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_003f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.AnalyticsParameter>::Add(!0)
      IL_0044:  ldloc.0
      IL_0045:  ldstr      "Time"
      IL_004a:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
      IL_004f:  stloc.2
      IL_0050:  ldloca.s   V_2
      IL_0052:  ldstr      "HH:mm:ss.fff"
      IL_0057:  call       instance string [System.Runtime]System.DateTime::ToString(string)
      IL_005c:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0061:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.AnalyticsParameter>::Add(!0)
      IL_0066:  ldstr      "[XnaGame] OnActivated"
      IL_006b:  ldloc.0
      IL_006c:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<valuetype Game.AnalyticsParameter>::ToArray()
      IL_0071:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                valuetype Game.AnalyticsParameter[])
      IL_0076:  ret
    } // end of method '<>c'::'<Initialize>b__2_0'

    .method assembly hidebysig instance void 
            '<Initialize>b__2_1'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.AnalyticsManager::Stop()
      IL_0005:  ret
    } // end of method '<>c'::'<Initialize>b__2_1'

    .method assembly hidebysig instance void 
            '<Initialize>b__2_2'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.AnalyticsManager::Stop()
      IL_0005:  ret
    } // end of method '<>c'::'<Initialize>b__2_2'

  } // end of class '<>c'

  .method public hidebysig specialname static 
          string  get_AnalyticsVersion() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  call       string Game.VersionsManager::get_Version()
    IL_0005:  ldstr      " "
    IL_000a:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_000f:  brtrue.s   IL_0018

    IL_0011:  ldstr      "full"
    IL_0016:  br.s       IL_001d

    IL_0018:  ldstr      "trial"
    IL_001d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0022:  ret
  } // end of method AnalyticsManager::get_AnalyticsVersion

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  2
    IL_0000:  call       void Game.AnalyticsManager::Start()
    IL_0005:  ldsfld     class [System.Runtime]System.Action Game.AnalyticsManager/'<>c'::'<>9__2_0'
    IL_000a:  dup
    IL_000b:  brtrue.s   IL_0024

    IL_000d:  pop
    IL_000e:  ldsfld     class Game.AnalyticsManager/'<>c' Game.AnalyticsManager/'<>c'::'<>9'
    IL_0013:  ldftn      instance void Game.AnalyticsManager/'<>c'::'<Initialize>b__2_0'()
    IL_0019:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_001e:  dup
    IL_001f:  stsfld     class [System.Runtime]System.Action Game.AnalyticsManager/'<>c'::'<>9__2_0'
    IL_0024:  call       void [Engine]Engine.Window::add_Activated(class [System.Runtime]System.Action)
    IL_0029:  ldsfld     class [System.Runtime]System.Action Game.AnalyticsManager/'<>c'::'<>9__2_1'
    IL_002e:  dup
    IL_002f:  brtrue.s   IL_0048

    IL_0031:  pop
    IL_0032:  ldsfld     class Game.AnalyticsManager/'<>c' Game.AnalyticsManager/'<>c'::'<>9'
    IL_0037:  ldftn      instance void Game.AnalyticsManager/'<>c'::'<Initialize>b__2_1'()
    IL_003d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0042:  dup
    IL_0043:  stsfld     class [System.Runtime]System.Action Game.AnalyticsManager/'<>c'::'<>9__2_1'
    IL_0048:  call       void [Engine]Engine.Window::add_Deactivated(class [System.Runtime]System.Action)
    IL_004d:  ldsfld     class [System.Runtime]System.Action Game.AnalyticsManager/'<>c'::'<>9__2_2'
    IL_0052:  dup
    IL_0053:  brtrue.s   IL_006c

    IL_0055:  pop
    IL_0056:  ldsfld     class Game.AnalyticsManager/'<>c' Game.AnalyticsManager/'<>c'::'<>9'
    IL_005b:  ldftn      instance void Game.AnalyticsManager/'<>c'::'<Initialize>b__2_2'()
    IL_0061:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0066:  dup
    IL_0067:  stsfld     class [System.Runtime]System.Action Game.AnalyticsManager/'<>c'::'<>9__2_2'
    IL_006c:  call       void [Engine]Engine.Window::add_Closed(class [System.Runtime]System.Action)
    IL_0071:  ret
  } // end of method AnalyticsManager::Initialize

  .method public hidebysig static void  LogError(string message,
                                                 class [System.Runtime]System.Exception 'error') cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  2
    .locals init (valuetype Game.AnalyticsParameter[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       valuetype Game.AnalyticsParameter[] Game.AnalyticsManagerUtils::CreateAnalyticsParametersForError(string,
                                                                                                                           class [System.Runtime]System.Exception)
    IL_0007:  stloc.0
    IL_0008:  ldstr      "[Error]"
    IL_000d:  ldloc.0
    IL_000e:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0013:  ret
  } // end of method AnalyticsManager::LogError

  .method public hidebysig static void  LogEvent(string eventName,
                                                 valuetype Game.AnalyticsParameter[] parameters) cil managed
  {
    .param [2]
    .custom instance void [System.Runtime]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       89 (0x59)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class [FlurryWin8SDK]FlurryWin8SDK.Models.Parameter> V_0,
             valuetype Game.AnalyticsParameter[] V_1,
             int32 V_2,
             valuetype Game.AnalyticsParameter V_3,
             class [System.Runtime]System.Exception V_4)
    .try
    {
      IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [FlurryWin8SDK]FlurryWin8SDK.Models.Parameter>::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldarg.1
      IL_0007:  stloc.1
      IL_0008:  ldc.i4.0
      IL_0009:  stloc.2
      IL_000a:  br.s       IL_002f

      IL_000c:  ldloc.1
      IL_000d:  ldloc.2
      IL_000e:  ldelem     Game.AnalyticsParameter
      IL_0013:  stloc.3
      IL_0014:  ldloc.0
      IL_0015:  ldloc.3
      IL_0016:  ldfld      string Game.AnalyticsParameter::Name
      IL_001b:  ldloc.3
      IL_001c:  ldfld      string Game.AnalyticsParameter::Value
      IL_0021:  newobj     instance void [FlurryWin8SDK]FlurryWin8SDK.Models.Parameter::.ctor(string,
                                                                                              string)
      IL_0026:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [FlurryWin8SDK]FlurryWin8SDK.Models.Parameter>::Add(!0)
      IL_002b:  ldloc.2
      IL_002c:  ldc.i4.1
      IL_002d:  add
      IL_002e:  stloc.2
      IL_002f:  ldloc.2
      IL_0030:  ldloc.1
      IL_0031:  ldlen
      IL_0032:  conv.i4
      IL_0033:  blt.s      IL_000c

      IL_0035:  ldarg.0
      IL_0036:  ldloc.0
      IL_0037:  call       void [FlurryWin8SDK]FlurryWin8SDK.Api::LogEvent(string,
                                                                           class [System.Runtime]System.Collections.Generic.IList`1<class [FlurryWin8SDK]FlurryWin8SDK.Models.Parameter>)
      IL_003c:  leave.s    IL_0058

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_003e:  stloc.s    V_4
      IL_0040:  ldstr      "Flurry LogEvent() failed. Reason: "
      IL_0045:  ldloc.s    V_4
      IL_0047:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_004c:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0051:  call       void [Engine]Engine.Log::Warning(string)
      IL_0056:  leave.s    IL_0058

    }  // end handler
    IL_0058:  ret
  } // end of method AnalyticsManager::LogEvent

  .method private hidebysig static void  Start() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  2
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  call       string Game.AnalyticsManager::get_AnalyticsVersion()
      IL_0005:  call       void [FlurryWin8SDK]FlurryWin8SDK.Api::SetVersion(string)
      IL_000a:  ldstr      "D7B75XH7VJ9ZV673DQJZ"
      IL_000f:  call       void [FlurryWin8SDK]FlurryWin8SDK.Api::StartSession(string)
      IL_0014:  leave.s    IL_002e

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0016:  stloc.0
      IL_0017:  ldstr      "Flurry StartSession() failed. Reason: "
      IL_001c:  ldloc.0
      IL_001d:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0022:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0027:  call       void [Engine]Engine.Log::Warning(string)
      IL_002c:  leave.s    IL_002e

    }  // end handler
    IL_002e:  ret
  } // end of method AnalyticsManager::Start

  .method private hidebysig static void  Stop() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method AnalyticsManager::Stop

  .property string AnalyticsVersion()
  {
    .get string Game.AnalyticsManager::get_AnalyticsVersion()
  } // end of property AnalyticsManager::AnalyticsVersion
} // end of class Game.AnalyticsManager