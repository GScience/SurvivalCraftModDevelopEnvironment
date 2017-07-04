.class public abstract auto ansi sealed beforefieldinit Game.AnalyticsManagerUtils
       extends [System.Runtime]System.Object
{
  .method private hidebysig static string 
          AbbreviateStackTrace(string stackTrace) cil managed
  {
    // 代码大小       221 (0xdd)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "System.Collections.Generic."
    IL_0006:  ldstr      ""
    IL_000b:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0010:  starg.s    stackTrace
    IL_0012:  ldarg.0
    IL_0013:  ldstr      "System.Collections."
    IL_0018:  ldstr      ""
    IL_001d:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0022:  starg.s    stackTrace
    IL_0024:  ldarg.0
    IL_0025:  ldstr      "System.IO."
    IL_002a:  ldstr      ""
    IL_002f:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0034:  starg.s    stackTrace
    IL_0036:  ldarg.0
    IL_0037:  ldstr      "Engine.Audio."
    IL_003c:  ldstr      ""
    IL_0041:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0046:  starg.s    stackTrace
    IL_0048:  ldarg.0
    IL_0049:  ldstr      "Engine.Input."
    IL_004e:  ldstr      ""
    IL_0053:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0058:  starg.s    stackTrace
    IL_005a:  ldarg.0
    IL_005b:  ldstr      "Engine.Graphics."
    IL_0060:  ldstr      ""
    IL_0065:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_006a:  starg.s    stackTrace
    IL_006c:  ldarg.0
    IL_006d:  ldstr      "Engine."
    IL_0072:  ldstr      ""
    IL_0077:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_007c:  starg.s    stackTrace
    IL_007e:  ldarg.0
    IL_007f:  ldstr      "Engine."
    IL_0084:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
    IL_0089:  brfalse.s  IL_009d

    IL_008b:  ldarg.0
    IL_008c:  ldstr      "Engine."
    IL_0091:  call       instance int32 [System.Runtime]System.String::get_Length()
    IL_0096:  callvirt   instance string [System.Runtime]System.String::Substring(int32)
    IL_009b:  starg.s    stackTrace
    IL_009d:  ldarg.0
    IL_009e:  ldstr      "Game."
    IL_00a3:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
    IL_00a8:  brfalse.s  IL_00bc

    IL_00aa:  ldarg.0
    IL_00ab:  ldstr      "Game."
    IL_00b0:  call       instance int32 [System.Runtime]System.String::get_Length()
    IL_00b5:  callvirt   instance string [System.Runtime]System.String::Substring(int32)
    IL_00ba:  starg.s    stackTrace
    IL_00bc:  ldarg.0
    IL_00bd:  ldstr      "System."
    IL_00c2:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
    IL_00c7:  brfalse.s  IL_00db

    IL_00c9:  ldarg.0
    IL_00ca:  ldstr      "System."
    IL_00cf:  call       instance int32 [System.Runtime]System.String::get_Length()
    IL_00d4:  callvirt   instance string [System.Runtime]System.String::Substring(int32)
    IL_00d9:  starg.s    stackTrace
    IL_00db:  ldarg.0
    IL_00dc:  ret
  } // end of method AnalyticsManagerUtils::AbbreviateStackTrace

  .method private hidebysig static string[] 
          SplitStackTrace(string stackTrace) cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<string> V_0,
             string V_1)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_000e:  ldc.i4     0xfe
    IL_0013:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0018:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_001d:  stloc.1
    IL_001e:  ldloc.0
    IL_001f:  ldloc.1
    IL_0020:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0025:  ldarg.0
    IL_0026:  ldc.i4.0
    IL_0027:  ldloc.1
    IL_0028:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_002d:  callvirt   instance string [System.Runtime]System.String::Remove(int32,
                                                                               int32)
    IL_0032:  starg.s    stackTrace
    IL_0034:  ldarg.0
    IL_0035:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_003a:  ldc.i4.0
    IL_003b:  ble.s      IL_0046

    IL_003d:  ldloc.0
    IL_003e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0043:  ldc.i4.4
    IL_0044:  blt.s      IL_0006

    IL_0046:  ldloc.0
    IL_0047:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<string>::ToArray()
    IL_004c:  ret
  } // end of method AnalyticsManagerUtils::SplitStackTrace

  .method public hidebysig static valuetype Game.AnalyticsParameter[] 
          CreateAnalyticsParametersForError(string message,
                                            class [System.Runtime]System.Exception 'error') cil managed
  {
    // 代码大小       243 (0xf3)
    .maxstack  6
    .locals init (string V_0,
             string[] V_1,
             valuetype [System.Runtime]System.DateTime V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                            class [System.Runtime]System.Exception)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_000e:  ldc.i4     0xfe
    IL_0013:  ble.s      IL_0022

    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.0
    IL_0017:  ldc.i4     0xfe
    IL_001c:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0021:  stloc.0
    IL_0022:  ldarg.1
    IL_0023:  callvirt   instance string [System.Runtime]System.Exception::get_StackTrace()
    IL_0028:  call       string Game.AnalyticsManagerUtils::AbbreviateStackTrace(string)
    IL_002d:  call       string[] Game.AnalyticsManagerUtils::SplitStackTrace(string)
    IL_0032:  stloc.1
    IL_0033:  ldc.i4.6
    IL_0034:  newarr     Game.AnalyticsParameter
    IL_0039:  dup
    IL_003a:  ldc.i4.0
    IL_003b:  ldstr      "FullMessage"
    IL_0040:  ldloc.0
    IL_0041:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0046:  stelem     Game.AnalyticsParameter
    IL_004b:  dup
    IL_004c:  ldc.i4.1
    IL_004d:  ldstr      "StackTrace1"
    IL_0052:  ldloc.1
    IL_0053:  ldlen
    IL_0054:  conv.i4
    IL_0055:  ldc.i4.1
    IL_0056:  bge.s      IL_005f

    IL_0058:  ldsfld     string [System.Runtime]System.String::Empty
    IL_005d:  br.s       IL_0062

    IL_005f:  ldloc.1
    IL_0060:  ldc.i4.0
    IL_0061:  ldelem.ref
    IL_0062:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0067:  stelem     Game.AnalyticsParameter
    IL_006c:  dup
    IL_006d:  ldc.i4.2
    IL_006e:  ldstr      "StackTrace2"
    IL_0073:  ldloc.1
    IL_0074:  ldlen
    IL_0075:  conv.i4
    IL_0076:  ldc.i4.2
    IL_0077:  bge.s      IL_0080

    IL_0079:  ldsfld     string [System.Runtime]System.String::Empty
    IL_007e:  br.s       IL_0083

    IL_0080:  ldloc.1
    IL_0081:  ldc.i4.1
    IL_0082:  ldelem.ref
    IL_0083:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0088:  stelem     Game.AnalyticsParameter
    IL_008d:  dup
    IL_008e:  ldc.i4.3
    IL_008f:  ldstr      "StackTrace3"
    IL_0094:  ldloc.1
    IL_0095:  ldlen
    IL_0096:  conv.i4
    IL_0097:  ldc.i4.3
    IL_0098:  bge.s      IL_00a1

    IL_009a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_009f:  br.s       IL_00a4

    IL_00a1:  ldloc.1
    IL_00a2:  ldc.i4.2
    IL_00a3:  ldelem.ref
    IL_00a4:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_00a9:  stelem     Game.AnalyticsParameter
    IL_00ae:  dup
    IL_00af:  ldc.i4.4
    IL_00b0:  ldstr      "StackTrace4"
    IL_00b5:  ldloc.1
    IL_00b6:  ldlen
    IL_00b7:  conv.i4
    IL_00b8:  ldc.i4.4
    IL_00b9:  bge.s      IL_00c2

    IL_00bb:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00c0:  br.s       IL_00c5

    IL_00c2:  ldloc.1
    IL_00c3:  ldc.i4.3
    IL_00c4:  ldelem.ref
    IL_00c5:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_00ca:  stelem     Game.AnalyticsParameter
    IL_00cf:  dup
    IL_00d0:  ldc.i4.5
    IL_00d1:  ldstr      "Time"
    IL_00d6:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_00db:  stloc.2
    IL_00dc:  ldloca.s   V_2
    IL_00de:  ldstr      "HH:mm:ss.fff"
    IL_00e3:  call       instance string [System.Runtime]System.DateTime::ToString(string)
    IL_00e8:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_00ed:  stelem     Game.AnalyticsParameter
    IL_00f2:  ret
  } // end of method AnalyticsManagerUtils::CreateAnalyticsParametersForError

} // end of class Game.AnalyticsManagerUtils