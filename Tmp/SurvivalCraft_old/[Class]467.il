.class public abstract auto ansi sealed beforefieldinit Game.MotdManager
       extends [System.Runtime]System.Object
{
  .class auto ansi nested public beforefieldinit Message
         extends [System.Runtime]System.Object
  {
    .field public class [System.Collections]System.Collections.Generic.List`1<class Game.MotdManager/Line> Lines
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.MotdManager/Line>::.ctor()
      IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdManager/Line> Game.MotdManager/Message::Lines
      IL_000b:  ldarg.0
      IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0011:  ret
    } // end of method Message::.ctor

  } // end of class Message

  .class auto ansi nested public beforefieldinit Line
         extends [System.Runtime]System.Object
  {
    .field public float32 Time
    .field public class [System.Xml.XDocument]System.Xml.Linq.XElement Node
    .field public string Text
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Line::.ctor

  } // end of class Line

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass11_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string url
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass11_0'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__0'(uint8[] result) cil managed
    {
      // 代码大小       147 (0x93)
      .maxstack  7
      .locals init (valuetype [System.Runtime]System.DateTime V_0,
               class [System.Runtime]System.Exception V_1)
      .try
      {
        IL_0000:  ldarg.1
        IL_0001:  call       string Game.MotdManager::UnpackMotd(uint8[])
        IL_0006:  ldnull
        IL_0007:  call       void Game.MotdManager::set_MessageOfTheDay(class Game.MotdManager/Message)
        IL_000c:  call       void Game.SettingsManager::set_MotdLastDownloadedData(string)
        IL_0011:  ldstr      "Downloaded MOTD"
        IL_0016:  call       void [Engine]Engine.Log::Information(string)
        IL_001b:  ldstr      "[MotdManager] Downloaded MOTD"
        IL_0020:  ldc.i4.2
        IL_0021:  newarr     Game.AnalyticsParameter
        IL_0026:  dup
        IL_0027:  ldc.i4.0
        IL_0028:  ldstr      "Time"
        IL_002d:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
        IL_0032:  stloc.0
        IL_0033:  ldloca.s   V_0
        IL_0035:  ldstr      "HH:mm:ss.fff"
        IL_003a:  call       instance string [System.Runtime]System.DateTime::ToString(string)
        IL_003f:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                          string)
        IL_0044:  stelem     Game.AnalyticsParameter
        IL_0049:  dup
        IL_004a:  ldc.i4.1
        IL_004b:  ldstr      "Url"
        IL_0050:  ldarg.0
        IL_0051:  ldfld      string Game.MotdManager/'<>c__DisplayClass11_0'::url
        IL_0056:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                          string)
        IL_005b:  stelem     Game.AnalyticsParameter
        IL_0060:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                  valuetype Game.AnalyticsParameter[])
        IL_0065:  ldc.i4.0
        IL_0066:  call       void Game.SettingsManager::set_MotdUseBackupUrl(bool)
        IL_006b:  leave.s    IL_0092

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_006d:  stloc.1
        IL_006e:  ldstr      "Failed processing MOTD string. Reason: "
        IL_0073:  ldloc.1
        IL_0074:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_0079:  call       string [System.Runtime]System.String::Concat(string,
                                                                          string)
        IL_007e:  call       void [Engine]Engine.Log::Error(string)
        IL_0083:  call       bool Game.SettingsManager::get_MotdUseBackupUrl()
        IL_0088:  ldc.i4.0
        IL_0089:  ceq
        IL_008b:  call       void Game.SettingsManager::set_MotdUseBackupUrl(bool)
        IL_0090:  leave.s    IL_0092

      }  // end handler
      IL_0092:  ret
    } // end of method '<>c__DisplayClass11_0'::'<Update>b__0'

  } // end of class '<>c__DisplayClass11_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.MotdManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> '<>9__11_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.MotdManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.MotdManager/'<>c' Game.MotdManager/'<>c'::'<>9'
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
            '<Update>b__11_1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       39 (0x27)
      .maxstack  8
      IL_0000:  ldstr      "Failed downloading MOTD. Reason: {0}"
      IL_0005:  ldc.i4.1
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  dup
      IL_000c:  ldc.i4.0
      IL_000d:  ldarg.1
      IL_000e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0013:  stelem.ref
      IL_0014:  call       void [Engine]Engine.Log::Error(string,
                                                          object[])
      IL_0019:  call       bool Game.SettingsManager::get_MotdUseBackupUrl()
      IL_001e:  ldc.i4.0
      IL_001f:  ceq
      IL_0021:  call       void Game.SettingsManager::set_MotdUseBackupUrl(bool)
      IL_0026:  ret
    } // end of method '<>c'::'<Update>b__11_1'

  } // end of class '<>c'

  .field private static class Game.MotdManager/Message m_message
  .field private static class [System.Runtime]System.Action MessageOfTheDayUpdated
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname static 
          void  add_MessageOfTheDayUpdated(class [System.Runtime]System.Action 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action V_0,
             class [System.Runtime]System.Action V_1,
             class [System.Runtime]System.Action V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action Game.MotdManager::MessageOfTheDayUpdated
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_000f:  castclass  [System.Runtime]System.Action
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action Game.MotdManager::MessageOfTheDayUpdated
    IL_001a:  ldloc.2
    IL_001b:  ldloc.1
    IL_001c:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action>(!!0&,
                                                                                                                                  !!0,
                                                                                                                                  !!0)
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  bne.un.s   IL_0006

    IL_0026:  ret
  } // end of method MotdManager::add_MessageOfTheDayUpdated

  .method public hidebysig specialname static 
          void  remove_MessageOfTheDayUpdated(class [System.Runtime]System.Action 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action V_0,
             class [System.Runtime]System.Action V_1,
             class [System.Runtime]System.Action V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action Game.MotdManager::MessageOfTheDayUpdated
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_000f:  castclass  [System.Runtime]System.Action
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action Game.MotdManager::MessageOfTheDayUpdated
    IL_001a:  ldloc.2
    IL_001b:  ldloc.1
    IL_001c:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action>(!!0&,
                                                                                                                                  !!0,
                                                                                                                                  !!0)
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  bne.un.s   IL_0006

    IL_0026:  ret
  } // end of method MotdManager::remove_MessageOfTheDayUpdated

  .method public hidebysig specialname static 
          class Game.MotdManager/Message 
          get_MessageOfTheDay() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Game.MotdManager/Message Game.MotdManager::m_message
    IL_0005:  ret
  } // end of method MotdManager::get_MessageOfTheDay

  .method public hidebysig specialname static 
          void  set_MessageOfTheDay(class Game.MotdManager/Message 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     class Game.MotdManager/Message Game.MotdManager::m_message
    IL_0006:  ldsfld     class [System.Runtime]System.Action Game.MotdManager::MessageOfTheDayUpdated
    IL_000b:  brfalse.s  IL_0017

    IL_000d:  ldsfld     class [System.Runtime]System.Action Game.MotdManager::MessageOfTheDayUpdated
    IL_0012:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_0017:  ret
  } // end of method MotdManager::set_MessageOfTheDay

  .method public hidebysig static void  ForceRedownload() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::MinValue
    IL_0005:  call       void Game.SettingsManager::set_MotdLastUpdateTime(valuetype [System.Runtime]System.DateTime)
    IL_000a:  ret
  } // end of method MotdManager::ForceRedownload

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  call       string Game.VersionsManager::get_Version()
    IL_0005:  call       string Game.VersionsManager::get_LastLaunchedVersion()
    IL_000a:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_000f:  brfalse.s  IL_0016

    IL_0011:  call       void Game.MotdManager::ForceRedownload()
    IL_0016:  ret
  } // end of method MotdManager::Initialize

  .method public hidebysig static void  Update() cil managed
  {
    // 代码大小       260 (0x104)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.TimeSpan V_0,
             valuetype [System.Runtime]System.DateTime V_1,
             class Game.MotdManager/'<>c__DisplayClass11_0' V_2,
             valuetype [System.Runtime]System.DateTime V_3)
    IL_0000:  ldc.r8     1.
    IL_0009:  ldc.r8     0.0
    IL_0012:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0017:  brfalse    IL_00d0

    IL_001c:  call       float64 Game.SettingsManager::get_MotdUpdatePeriodHours()
    IL_0021:  call       valuetype [System.Runtime]System.TimeSpan [System.Runtime]System.TimeSpan::FromHours(float64)
    IL_0026:  stloc.0
    IL_0027:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_002c:  stloc.1
    IL_002d:  ldloc.1
    IL_002e:  call       valuetype [System.Runtime]System.DateTime Game.SettingsManager::get_MotdLastUpdateTime()
    IL_0033:  ldloc.0
    IL_0034:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::op_Addition(valuetype [System.Runtime]System.DateTime,
                                                                                                                valuetype [System.Runtime]System.TimeSpan)
    IL_0039:  call       bool [System.Runtime]System.DateTime::op_GreaterThanOrEqual(valuetype [System.Runtime]System.DateTime,
                                                                                     valuetype [System.Runtime]System.DateTime)
    IL_003e:  brfalse    IL_00d0

    IL_0043:  newobj     instance void Game.MotdManager/'<>c__DisplayClass11_0'::.ctor()
    IL_0048:  stloc.2
    IL_0049:  ldloc.1
    IL_004a:  call       void Game.SettingsManager::set_MotdLastUpdateTime(valuetype [System.Runtime]System.DateTime)
    IL_004f:  ldstr      "Downloading MOTD"
    IL_0054:  call       void [Engine]Engine.Log::Information(string)
    IL_0059:  ldstr      "[MotdManager] Downloading MOTD"
    IL_005e:  ldc.i4.1
    IL_005f:  newarr     Game.AnalyticsParameter
    IL_0064:  dup
    IL_0065:  ldc.i4.0
    IL_0066:  ldstr      "Time"
    IL_006b:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_0070:  stloc.3
    IL_0071:  ldloca.s   V_3
    IL_0073:  ldstr      "HH:mm:ss.fff"
    IL_0078:  call       instance string [System.Runtime]System.DateTime::ToString(string)
    IL_007d:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                      string)
    IL_0082:  stelem     Game.AnalyticsParameter
    IL_0087:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_008c:  ldloc.2
    IL_008d:  call       string Game.MotdManager::GetMotdUrl()
    IL_0092:  stfld      string Game.MotdManager/'<>c__DisplayClass11_0'::url
    IL_0097:  ldloc.2
    IL_0098:  ldfld      string Game.MotdManager/'<>c__DisplayClass11_0'::url
    IL_009d:  ldnull
    IL_009e:  ldnull
    IL_009f:  ldnull
    IL_00a0:  ldloc.2
    IL_00a1:  ldftn      instance void Game.MotdManager/'<>c__DisplayClass11_0'::'<Update>b__0'(uint8[])
    IL_00a7:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                             native int)
    IL_00ac:  ldsfld     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.MotdManager/'<>c'::'<>9__11_1'
    IL_00b1:  dup
    IL_00b2:  brtrue.s   IL_00cb

    IL_00b4:  pop
    IL_00b5:  ldsfld     class Game.MotdManager/'<>c' Game.MotdManager/'<>c'::'<>9'
    IL_00ba:  ldftn      instance void Game.MotdManager/'<>c'::'<Update>b__11_1'(class [System.Runtime]System.Exception)
    IL_00c0:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_00c5:  dup
    IL_00c6:  stsfld     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.MotdManager/'<>c'::'<>9__11_1'
    IL_00cb:  call       void Game.WebManager::Get(string,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                   class Game.CancellableProgress,
                                                   class [System.Runtime]System.Action`1<uint8[]>,
                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_00d0:  call       class Game.MotdManager/Message Game.MotdManager::get_MessageOfTheDay()
    IL_00d5:  brtrue.s   IL_0103

    IL_00d7:  call       string Game.SettingsManager::get_MotdLastDownloadedData()
    IL_00dc:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00e1:  brtrue.s   IL_0103

    IL_00e3:  call       string Game.SettingsManager::get_MotdLastDownloadedData()
    IL_00e8:  call       class Game.MotdManager/Message Game.MotdManager::ParseMotd(string)
    IL_00ed:  call       void Game.MotdManager::set_MessageOfTheDay(class Game.MotdManager/Message)
    IL_00f2:  call       class Game.MotdManager/Message Game.MotdManager::get_MessageOfTheDay()
    IL_00f7:  brtrue.s   IL_0103

    IL_00f9:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00fe:  call       void Game.SettingsManager::set_MotdLastDownloadedData(string)
    IL_0103:  ret
  } // end of method MotdManager::Update

  .method private hidebysig static string 
          UnpackMotd(uint8[] data) cil managed
  {
    // 代码大小       196 (0xc4)
    .maxstack  5
    .locals init (string V_0,
             class [System.IO]System.IO.MemoryStream V_1,
             class Game.ZipArchive V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ZipArchiveEntry> V_3,
             class Game.ZipArchiveEntry V_4,
             class [System.IO]System.IO.MemoryStream V_5,
             class [System.IO]System.IO.StreamReader V_6,
             string V_7)
    IL_0000:  ldstr      "motd.xml"
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(uint8[])
    IL_000c:  stloc.1
    .try
    {
      IL_000d:  ldloc.1
      IL_000e:  ldc.i4.0
      IL_000f:  call       class Game.ZipArchive Game.ZipArchive::Open(class [System.IO]System.IO.Stream,
                                                                       bool)
      IL_0014:  stloc.2
      .try
      {
        IL_0015:  ldloc.2
        IL_0016:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> Game.ZipArchive::ReadCentralDir()
        IL_001b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::GetEnumerator()
        IL_0020:  stloc.3
        .try
        {
          IL_0021:  br.s       IL_007a

          IL_0023:  ldloca.s   V_3
          IL_0025:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ZipArchiveEntry>::get_Current()
          IL_002a:  stloc.s    V_4
          IL_002c:  ldloc.s    V_4
          IL_002e:  ldfld      string Game.ZipArchiveEntry::FilenameInZip
          IL_0033:  callvirt   instance string [System.Runtime]System.String::ToLower()
          IL_0038:  ldloc.0
          IL_0039:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                               string)
          IL_003e:  brfalse.s  IL_007a

          IL_0040:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor()
          IL_0045:  stloc.s    V_5
          IL_0047:  ldloc.2
          IL_0048:  ldloc.s    V_4
          IL_004a:  ldloc.s    V_5
          IL_004c:  callvirt   instance void Game.ZipArchive::ExtractFile(class Game.ZipArchiveEntry,
                                                                          class [System.IO]System.IO.Stream)
          IL_0051:  ldloc.s    V_5
          IL_0053:  ldc.i4.0
          IL_0054:  conv.i8
          IL_0055:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
          IL_005a:  ldloc.s    V_5
          IL_005c:  newobj     instance void [System.IO]System.IO.StreamReader::.ctor(class [System.IO]System.IO.Stream)
          IL_0061:  stloc.s    V_6
          .try
          {
            IL_0063:  ldloc.s    V_6
            IL_0065:  callvirt   instance string [System.IO]System.IO.TextReader::ReadToEnd()
            IL_006a:  stloc.s    V_7
            IL_006c:  leave.s    IL_00c1

          }  // end .try
          finally
          {
            IL_006e:  ldloc.s    V_6
            IL_0070:  brfalse.s  IL_0079

            IL_0072:  ldloc.s    V_6
            IL_0074:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_0079:  endfinally
          }  // end handler
          IL_007a:  ldloca.s   V_3
          IL_007c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ZipArchiveEntry>::MoveNext()
          IL_0081:  brtrue.s   IL_0023

          IL_0083:  leave.s    IL_00a7

        }  // end .try
        finally
        {
          IL_0085:  ldloca.s   V_3
          IL_0087:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ZipArchiveEntry>
          IL_008d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0092:  endfinally
        }  // end handler
      }  // end .try
      finally
      {
        IL_0093:  ldloc.2
        IL_0094:  brfalse.s  IL_009c

        IL_0096:  ldloc.2
        IL_0097:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_009c:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_009d:  ldloc.1
      IL_009e:  brfalse.s  IL_00a6

      IL_00a0:  ldloc.1
      IL_00a1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a6:  endfinally
    }  // end handler
    IL_00a7:  ldstr      "\"{0}\" file not found in Motd zip archive."
    IL_00ac:  ldc.i4.1
    IL_00ad:  newarr     [System.Runtime]System.Object
    IL_00b2:  dup
    IL_00b3:  ldc.i4.0
    IL_00b4:  ldloc.0
    IL_00b5:  stelem.ref
    IL_00b6:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00bb:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00c0:  throw

    IL_00c1:  ldloc.s    V_7
    IL_00c3:  ret
  } // end of method MotdManager::UnpackMotd

  .method private hidebysig static class Game.MotdManager/Message 
          ParseMotd(string dataString) cil managed
  {
    // 代码大小       292 (0x124)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             class Game.MotdManager/Message V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_3,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_4,
             class Game.MotdManager/Line V_5,
             class Game.MotdManager/Message V_6,
             class [System.Runtime]System.Exception V_7)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldstr      "<Motd"
      IL_0006:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(string)
      IL_000b:  stloc.0
      IL_000c:  ldloc.0
      IL_000d:  ldc.i4.0
      IL_000e:  blt        IL_00fa

      IL_0013:  ldarg.0
      IL_0014:  ldstr      "</Motd>"
      IL_0019:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(string)
      IL_001e:  stloc.1
      IL_001f:  ldloc.1
      IL_0020:  ldc.i4.0
      IL_0021:  blt.s      IL_002b

      IL_0023:  ldloc.1
      IL_0024:  ldloc.0
      IL_0025:  ble.s      IL_002b

      IL_0027:  ldloc.1
      IL_0028:  ldc.i4.7
      IL_0029:  add
      IL_002a:  stloc.1
      IL_002b:  ldarg.0
      IL_002c:  ldloc.0
      IL_002d:  ldloc.1
      IL_002e:  ldloc.0
      IL_002f:  sub
      IL_0030:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                    int32)
      IL_0035:  ldc.i4.1
      IL_0036:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromString(string,
                                                                                                                                       bool)
      IL_003b:  dup
      IL_003c:  ldstr      "UpdatePeriodHours"
      IL_0041:  ldc.i4.s   24
      IL_0043:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                             string,
                                                                                             !!0)
      IL_0048:  conv.r8
      IL_0049:  call       void Game.SettingsManager::set_MotdUpdatePeriodHours(float64)
      IL_004e:  dup
      IL_004f:  ldstr      "UpdateUrl"
      IL_0054:  call       string Game.SettingsManager::get_MotdUpdateUrl()
      IL_0059:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_005e:  call       void Game.SettingsManager::set_MotdUpdateUrl(string)
      IL_0063:  dup
      IL_0064:  ldstr      "BackupUpdateUrl"
      IL_0069:  call       string Game.SettingsManager::get_MotdBackupUpdateUrl()
      IL_006e:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0073:  call       void Game.SettingsManager::set_MotdBackupUpdateUrl(string)
      IL_0078:  newobj     instance void Game.MotdManager/Message::.ctor()
      IL_007d:  stloc.2
      IL_007e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
      IL_0083:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
      IL_0088:  stloc.3
      .try
      {
        IL_0089:  br.s       IL_00e1

        IL_008b:  ldloc.3
        IL_008c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
        IL_0091:  stloc.s    V_4
        IL_0093:  ldloc.s    V_4
        IL_0095:  call       bool Game.WidgetsManager::IsNodeIncludedOnCurrentPlatform(class [System.Xml.XDocument]System.Xml.Linq.XElement)
        IL_009a:  brfalse.s  IL_00e1

        IL_009c:  newobj     instance void Game.MotdManager/Line::.ctor()
        IL_00a1:  dup
        IL_00a2:  ldloc.s    V_4
        IL_00a4:  ldstr      "Time"
        IL_00a9:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                 string)
        IL_00ae:  stfld      float32 Game.MotdManager/Line::Time
        IL_00b3:  dup
        IL_00b4:  ldloc.s    V_4
        IL_00b6:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
        IL_00bb:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Xml.XDocument]System.Xml.Linq.XElement>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
        IL_00c0:  stfld      class [System.Xml.XDocument]System.Xml.Linq.XElement Game.MotdManager/Line::Node
        IL_00c5:  dup
        IL_00c6:  ldloc.s    V_4
        IL_00c8:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XElement::get_Value()
        IL_00cd:  stfld      string Game.MotdManager/Line::Text
        IL_00d2:  stloc.s    V_5
        IL_00d4:  ldloc.2
        IL_00d5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdManager/Line> Game.MotdManager/Message::Lines
        IL_00da:  ldloc.s    V_5
        IL_00dc:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.MotdManager/Line>::Add(!0)
        IL_00e1:  ldloc.3
        IL_00e2:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_00e7:  brtrue.s   IL_008b

        IL_00e9:  leave.s    IL_00f5

      }  // end .try
      finally
      {
        IL_00eb:  ldloc.3
        IL_00ec:  brfalse.s  IL_00f4

        IL_00ee:  ldloc.3
        IL_00ef:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00f4:  endfinally
      }  // end handler
      IL_00f5:  ldloc.2
      IL_00f6:  stloc.s    V_6
      IL_00f8:  leave.s    IL_0121

      IL_00fa:  ldstr      "Invalid MOTD data string."
      IL_00ff:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0104:  throw

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0105:  stloc.s    V_7
      IL_0107:  ldstr      "Failed extracting MOTD string. Reason: "
      IL_010c:  ldloc.s    V_7
      IL_010e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0113:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0118:  call       void [Engine]Engine.Log::Warning(string)
      IL_011d:  leave.s    IL_011f

    }  // end handler
    IL_011f:  ldnull
    IL_0120:  ret

    IL_0121:  ldloc.s    V_6
    IL_0123:  ret
  } // end of method MotdManager::ParseMotd

  .method private hidebysig static string 
          GetMotdUrl() cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
    IL_0000:  call       bool Game.SettingsManager::get_MotdUseBackupUrl()
    IL_0005:  brfalse.s  IL_0020

    IL_0007:  call       string Game.SettingsManager::get_MotdBackupUpdateUrl()
    IL_000c:  ldc.i4.1
    IL_000d:  newarr     [System.Runtime]System.Object
    IL_0012:  dup
    IL_0013:  ldc.i4.0
    IL_0014:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0019:  stelem.ref
    IL_001a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_001f:  ret

    IL_0020:  call       string Game.SettingsManager::get_MotdUpdateUrl()
    IL_0025:  ldc.i4.1
    IL_0026:  newarr     [System.Runtime]System.Object
    IL_002b:  dup
    IL_002c:  ldc.i4.0
    IL_002d:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0032:  stelem.ref
    IL_0033:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0038:  ret
  } // end of method MotdManager::GetMotdUrl

  .event [System.Runtime]System.Action MessageOfTheDayUpdated
  {
    .addon void Game.MotdManager::add_MessageOfTheDayUpdated(class [System.Runtime]System.Action)
    .removeon void Game.MotdManager::remove_MessageOfTheDayUpdated(class [System.Runtime]System.Action)
  } // end of event MotdManager::MessageOfTheDayUpdated
  .property class Game.MotdManager/Message
          MessageOfTheDay()
  {
    .get class Game.MotdManager/Message Game.MotdManager::get_MessageOfTheDay()
    .set void Game.MotdManager::set_MessageOfTheDay(class Game.MotdManager/Message)
  } // end of property MotdManager::MessageOfTheDay
} // end of class Game.MotdManager