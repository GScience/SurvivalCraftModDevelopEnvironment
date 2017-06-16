.class public abstract auto ansi sealed beforefieldinit Game.ExceptionManager
       extends [System.Runtime]System.Object
{
  .field private static class [System.Runtime]System.Exception m_error
  .method public hidebysig specialname static 
          class [System.Runtime]System.Exception 
          get_Error() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Runtime]System.Exception Game.ExceptionManager::m_error
    IL_0005:  ret
  } // end of method ExceptionManager::get_Error

  .method public hidebysig static void  ReportExceptionToUser(string additionalMessage,
                                                              class [System.Runtime]System.Exception e) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                            class [System.Runtime]System.Exception)
    IL_0007:  stloc.0
    IL_0008:  ldstr      "{0}\n{1}"
    IL_000d:  ldc.i4.2
    IL_000e:  newarr     [System.Runtime]System.Object
    IL_0013:  dup
    IL_0014:  ldc.i4.0
    IL_0015:  ldloc.0
    IL_0016:  stelem.ref
    IL_0017:  dup
    IL_0018:  ldc.i4.1
    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance string [System.Runtime]System.Exception::get_StackTrace()
    IL_001f:  stelem.ref
    IL_0020:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0025:  call       void [Engine]Engine.Log::Error(string)
    IL_002a:  ldarg.0
    IL_002b:  ldarg.1
    IL_002c:  call       void Game.AnalyticsManager::LogError(string,
                                                              class [System.Runtime]System.Exception)
    IL_0031:  ret
  } // end of method ExceptionManager::ReportExceptionToUser

  .method public hidebysig static void  DrawExceptionScreen() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ExceptionManager::DrawExceptionScreen

  .method public hidebysig static void  UpdateExceptionScreen() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ExceptionManager::UpdateExceptionScreen

  .method public hidebysig static string 
          MakeFullErrorMessage(class [System.Runtime]System.Exception e) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldnull
    IL_0001:  ldarg.0
    IL_0002:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                            class [System.Runtime]System.Exception)
    IL_0007:  ret
  } // end of method ExceptionManager::MakeFullErrorMessage

  .method public hidebysig static string 
          MakeFullErrorMessage(string additionalMessage,
                               class [System.Runtime]System.Exception e) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  3
    .locals init (string V_0,
             class [System.Runtime]System.Exception V_1)
    IL_0000:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000c:  brtrue.s   IL_0010

    IL_000e:  ldarg.0
    IL_000f:  stloc.0
    IL_0010:  ldarg.1
    IL_0011:  stloc.1
    IL_0012:  br.s       IL_003d

    IL_0014:  ldloc.0
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_001b:  ldc.i4.0
    IL_001c:  bgt.s      IL_0025

    IL_001e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0023:  br.s       IL_002a

    IL_0025:  call       string [System.Runtime.Extensions]System.Environment::get_NewLine()
    IL_002a:  ldloc.1
    IL_002b:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
    IL_0030:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0035:  stloc.0
    IL_0036:  ldloc.1
    IL_0037:  callvirt   instance class [System.Runtime]System.Exception [System.Runtime]System.Exception::get_InnerException()
    IL_003c:  stloc.1
    IL_003d:  ldloc.1
    IL_003e:  brtrue.s   IL_0014

    IL_0040:  ldloc.0
    IL_0041:  ret
  } // end of method ExceptionManager::MakeFullErrorMessage

  .method private hidebysig static bool  CheckContinueKey() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldc.i4.s   14
    IL_0002:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0007:  brtrue.s   IL_0011

    IL_0009:  ldc.i4.0
    IL_000a:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_000f:  brfalse.s  IL_0013

    IL_0011:  ldc.i4.1
    IL_0012:  ret

    IL_0013:  ldc.i4.0
    IL_0014:  ret
  } // end of method ExceptionManager::CheckContinueKey

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ExceptionManager::.cctor

  .property class [System.Runtime]System.Exception
          Error()
  {
    .get class [System.Runtime]System.Exception Game.ExceptionManager::get_Error()
  } // end of property ExceptionManager::Error
} // end of class Game.ExceptionManager