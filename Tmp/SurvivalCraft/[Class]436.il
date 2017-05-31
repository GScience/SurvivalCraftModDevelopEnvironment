.class public abstract auto ansi sealed beforefieldinit Game.MarketplaceManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.MarketplaceManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__5_1'
    .field public static class [Windows]Windows.ApplicationModel.Store.LicenseChangedEventHandler '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.MarketplaceManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.MarketplaceManager/'<>c' Game.MarketplaceManager/'<>c'::'<>9'
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
            '<Initialize>b__5_0'() cil managed
    {
      // 代码大小       38 (0x26)
      .maxstack  8
      IL_0000:  ldsfld     class [System.Runtime]System.Action Game.MarketplaceManager/'<>c'::'<>9__5_1'
      IL_0005:  dup
      IL_0006:  brtrue.s   IL_001f

      IL_0008:  pop
      IL_0009:  ldsfld     class Game.MarketplaceManager/'<>c' Game.MarketplaceManager/'<>c'::'<>9'
      IL_000e:  ldftn      instance void Game.MarketplaceManager/'<>c'::'<Initialize>b__5_1'()
      IL_0014:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0019:  dup
      IL_001a:  stsfld     class [System.Runtime]System.Action Game.MarketplaceManager/'<>c'::'<>9__5_1'
      IL_001f:  ldc.i4.0
      IL_0020:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                    bool)
      IL_0025:  ret
    } // end of method '<>c'::'<Initialize>b__5_0'

    .method assembly hidebysig instance void 
            '<Initialize>b__5_1'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.MarketplaceManager::UpdateLicence()
      IL_0005:  ret
    } // end of method '<>c'::'<Initialize>b__5_1'

  } // end of class '<>c'

  .field private static bool m_isInitialized
  .field private static bool m_isTrialMode
  .method public hidebysig specialname static 
          bool  get_IsTrialMode() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.MarketplaceManager::m_isInitialized
    IL_0005:  brtrue.s   IL_0012

    IL_0007:  ldstr      "MarketplaceManager not initialized."
    IL_000c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0011:  throw

    IL_0012:  ldsfld     bool Game.MarketplaceManager::m_isTrialMode
    IL_0017:  ret
  } // end of method MarketplaceManager::get_IsTrialMode

  .method private hidebysig specialname static 
          void  set_IsTrialMode(bool 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.MarketplaceManager::m_isTrialMode
    IL_0006:  ret
  } // end of method MarketplaceManager::set_IsTrialMode

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       113 (0x71)
    .maxstack  4
    .locals init (class [Windows]Windows.ApplicationModel.Store.LicenseInformation V_0,
             class [System.Runtime]System.Exception V_1)
    IL_0000:  ldc.i4.1
    IL_0001:  stsfld     bool Game.MarketplaceManager::m_isInitialized
    IL_0006:  call       void Game.MarketplaceManager::UpdateLicence()
    IL_000b:  ldnull
    IL_000c:  ldftn      void Game.MarketplaceManager::UpdateLicence()
    IL_0012:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0017:  call       void [Engine]Engine.Window::add_Activated(class [System.Runtime]System.Action)
    .try
    {
      IL_001c:  call       class [Windows]Windows.ApplicationModel.Store.LicenseInformation [Windows]Windows.ApplicationModel.Store.CurrentApp::get_LicenseInformation()
      IL_0021:  stloc.0
      IL_0022:  ldloc.0
      IL_0023:  dup
      IL_0024:  ldvirtftn  instance valuetype [System.Runtime.InteropServices.WindowsRuntime]System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken [Windows]Windows.ApplicationModel.Store.LicenseInformation::add_LicenseChanged(class [Windows]Windows.ApplicationModel.Store.LicenseChangedEventHandler)
      IL_002a:  newobj     instance void class [System.Runtime]System.Func`2<class [Windows]Windows.ApplicationModel.Store.LicenseChangedEventHandler,valuetype [System.Runtime.InteropServices.WindowsRuntime]System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken>::.ctor(object,
                                                                                                                                                                                                                                                                                            native int)
      IL_002f:  ldloc.0
      IL_0030:  dup
      IL_0031:  ldvirtftn  instance void [Windows]Windows.ApplicationModel.Store.LicenseInformation::remove_LicenseChanged(valuetype [System.Runtime.InteropServices.WindowsRuntime]System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken)
      IL_0037:  newobj     instance void class [System.Runtime]System.Action`1<valuetype [System.Runtime.InteropServices.WindowsRuntime]System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken>::.ctor(object,
                                                                                                                                                                                                                     native int)
      IL_003c:  ldsfld     class [Windows]Windows.ApplicationModel.Store.LicenseChangedEventHandler Game.MarketplaceManager/'<>c'::'<>9__5_0'
      IL_0041:  dup
      IL_0042:  brtrue.s   IL_005b

      IL_0044:  pop
      IL_0045:  ldsfld     class Game.MarketplaceManager/'<>c' Game.MarketplaceManager/'<>c'::'<>9'
      IL_004a:  ldftn      instance void Game.MarketplaceManager/'<>c'::'<Initialize>b__5_0'()
      IL_0050:  newobj     instance void [Windows]Windows.ApplicationModel.Store.LicenseChangedEventHandler::.ctor(object,
                                                                                                                   native int)
      IL_0055:  dup
      IL_0056:  stsfld     class [Windows]Windows.ApplicationModel.Store.LicenseChangedEventHandler Game.MarketplaceManager/'<>c'::'<>9__5_0'
      IL_005b:  call       void [System.Runtime.InteropServices.WindowsRuntime]System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal::AddEventHandler<class [Windows]Windows.ApplicationModel.Store.LicenseChangedEventHandler>(class [System.Runtime]System.Func`2<!!0,valuetype [System.Runtime.InteropServices.WindowsRuntime]System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken>,
                                                                                                                                                                                                                                              class [System.Runtime]System.Action`1<valuetype [System.Runtime.InteropServices.WindowsRuntime]System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken>,
                                                                                                                                                                                                                                              !!0)
      IL_0060:  leave.s    IL_0070

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0062:  stloc.1
      IL_0063:  ldstr      "LicenseChanged event hookup failed."
      IL_0068:  ldloc.1
      IL_0069:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_006e:  leave.s    IL_0070

    }  // end handler
    IL_0070:  ret
  } // end of method MarketplaceManager::Initialize

  .method public hidebysig static void  ShowMarketplace() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldstr      "[MarketplaceManager] Show marketplace"
    IL_0005:  ldc.i4.0
    IL_0006:  newarr     Game.AnalyticsParameter
    IL_000b:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0010:  call       void Game.MarketplaceManager::UpdateLicence()
    IL_0015:  ldc.i4.1
    IL_0016:  call       class [Windows]Windows.Foundation.IAsyncOperation`1<string> [Windows]Windows.ApplicationModel.Store.CurrentApp::RequestAppPurchaseAsync(bool)
    IL_001b:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task`1<!!0> [System.Runtime.WindowsRuntime]System.WindowsRuntimeSystemExtensions::AsTask<string>(class [Windows]Windows.Foundation.IAsyncOperation`1<!!0>)
    IL_0020:  pop
    IL_0021:  ret
  } // end of method MarketplaceManager::ShowMarketplace

  .method private hidebysig static void  UpdateLicence() cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  2
    .locals init (class [Windows]Windows.ApplicationModel.Store.LicenseInformation V_0,
             class [System.Runtime]System.Exception V_1)
    .try
    {
      IL_0000:  call       class [Windows]Windows.ApplicationModel.Store.LicenseInformation [Windows]Windows.ApplicationModel.Store.CurrentApp::get_LicenseInformation()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  callvirt   instance bool [Windows]Windows.ApplicationModel.Store.LicenseInformation::get_IsActive()
      IL_000c:  brfalse.s  IL_0016

      IL_000e:  ldloc.0
      IL_000f:  callvirt   instance bool [Windows]Windows.ApplicationModel.Store.LicenseInformation::get_IsTrial()
      IL_0014:  br.s       IL_0017

      IL_0016:  ldc.i4.1
      IL_0017:  call       void Game.MarketplaceManager::set_IsTrialMode(bool)
      IL_001c:  leave.s    IL_0032

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_001e:  stloc.1
      IL_001f:  ldc.i4.1
      IL_0020:  call       void Game.MarketplaceManager::set_IsTrialMode(bool)
      IL_0025:  ldstr      "Error accessing LicenseInformation."
      IL_002a:  ldloc.1
      IL_002b:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_0030:  leave.s    IL_0032

    }  // end handler
    IL_0032:  ret
  } // end of method MarketplaceManager::UpdateLicence

  .property bool IsTrialMode()
  {
    .get bool Game.MarketplaceManager::get_IsTrialMode()
    .set void Game.MarketplaceManager::set_IsTrialMode(bool)
  } // end of property MarketplaceManager::IsTrialMode
} // end of class Game.MarketplaceManager