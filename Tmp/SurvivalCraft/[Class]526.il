.class public abstract auto ansi sealed beforefieldinit Game.WebBrowserManager
       extends [System.Runtime]System.Object
{
  .method public hidebysig static void  LaunchBrowser(string url) cil managed
  {
    // ´úÂë´óÐ¡       118 (0x76)
    .maxstack  6
    .locals init (class [System.Runtime]System.Exception V_0)
    IL_0000:  ldstr      "[WebBrowserManager] Launching browser"
    IL_0005:  ldc.i4.1
    IL_0006:  newarr     Game.AnalyticsParameter
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  ldstr      "Url"
    IL_0012:  ldarg.0
    IL_0013:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0018:  stelem     Game.AnalyticsParameter
    IL_001d:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0022:  ldarg.0
    IL_0023:  ldstr      "://"
    IL_0028:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_002d:  brtrue.s   IL_003c

    IL_002f:  ldstr      "http://"
    IL_0034:  ldarg.0
    IL_0035:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_003a:  starg.s    url
    IL_003c:  nop
    .try
    {
      IL_003d:  ldarg.0
      IL_003e:  newobj     instance void [System.Runtime]System.Uri::.ctor(string)
      IL_0043:  call       class [Windows]Windows.Foundation.IAsyncOperation`1<bool> [Windows]Windows.System.Launcher::LaunchUriAsync(class [System.Runtime]System.Uri)
      IL_0048:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task`1<!!0> [System.Runtime.WindowsRuntime]System.WindowsRuntimeSystemExtensions::AsTask<bool>(class [Windows]Windows.Foundation.IAsyncOperation`1<!!0>)
      IL_004d:  pop
      IL_004e:  leave.s    IL_0075

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0050:  stloc.0
      IL_0051:  ldstr      "Error launching web browser with URL \"{0}\". Reason"
      + ": {1}"
      IL_0056:  ldc.i4.2
      IL_0057:  newarr     [System.Runtime]System.Object
      IL_005c:  dup
      IL_005d:  ldc.i4.0
      IL_005e:  ldarg.0
      IL_005f:  stelem.ref
      IL_0060:  dup
      IL_0061:  ldc.i4.1
      IL_0062:  ldloc.0
      IL_0063:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0068:  stelem.ref
      IL_0069:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_006e:  call       void [Engine]Engine.Log::Error(string)
      IL_0073:  leave.s    IL_0075

    }  // end handler
    IL_0075:  ret
  } // end of method WebBrowserManager::LaunchBrowser

} // end of class Game.WebBrowserManager