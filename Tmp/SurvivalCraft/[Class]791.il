.class public auto ansi beforefieldinit Game.GameLogSink
       extends [System.Runtime]System.Object
       implements [Engine]Engine.ILogSink
{
  .field private static class [System.IO]System.IO.Stream m_stream
  .field private static class [System.IO]System.IO.StreamWriter m_writer
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       178 (0xb2)
    .maxstack  5
    .locals init (string V_0,
             string V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    .try
    {
      IL_0006:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
      IL_000b:  brfalse.s  IL_0018

      IL_000d:  ldstr      "GameLogSink already created."
      IL_0012:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0017:  throw

      IL_0018:  ldstr      "data:/Logs"
      IL_001d:  stloc.0
      IL_001e:  ldc.i4.2
      IL_001f:  newarr     [System.Runtime]System.String
      IL_0024:  dup
      IL_0025:  ldc.i4.0
      IL_0026:  ldloc.0
      IL_0027:  stelem.ref
      IL_0028:  dup
      IL_0029:  ldc.i4.1
      IL_002a:  ldstr      "Game.log"
      IL_002f:  stelem.ref
      IL_0030:  call       string [Engine]Engine.Storage::CombinePaths(string[])
      IL_0035:  stloc.1
      IL_0036:  ldloc.0
      IL_0037:  call       void [Engine]Engine.Storage::CreateDirectory(string)
      IL_003c:  ldloc.1
      IL_003d:  ldc.i4.3
      IL_003e:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_0043:  stsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
      IL_0048:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
      IL_004d:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
      IL_0052:  ldc.i4     0xa00000
      IL_0057:  conv.i8
      IL_0058:  ble.s      IL_0070

      IL_005a:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
      IL_005f:  callvirt   instance void [System.IO]System.IO.Stream::Dispose()
      IL_0064:  ldloc.1
      IL_0065:  ldc.i4.2
      IL_0066:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_006b:  stsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
      IL_0070:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
      IL_0075:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
      IL_007a:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
      IL_007f:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
      IL_0084:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
      IL_0089:  newobj     instance void [System.IO]System.IO.StreamWriter::.ctor(class [System.IO]System.IO.Stream)
      IL_008e:  stsfld     class [System.IO]System.IO.StreamWriter Game.GameLogSink::m_writer
      IL_0093:  leave.s    IL_00b1

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0095:  stloc.2
      IL_0096:  ldstr      "Error creating GameLogSink. Reason: {0}"
      IL_009b:  ldc.i4.1
      IL_009c:  newarr     [System.Runtime]System.Object
      IL_00a1:  dup
      IL_00a2:  ldc.i4.0
      IL_00a3:  ldloc.2
      IL_00a4:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_00a9:  stelem.ref
      IL_00aa:  call       void [Engine]Engine.Log::Error(string,
                                                          object[])
      IL_00af:  leave.s    IL_00b1

    }  // end handler
    IL_00b1:  ret
  } // end of method GameLogSink::.ctor

  .method public hidebysig static string 
          GetRecentLog(int32 bytesCount) cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  3
    .locals init (class [System.IO]System.IO.Stream V_0,
             bool V_1,
             string V_2)
    IL_0000:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
    IL_0005:  brtrue.s   IL_000d

    IL_0007:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000c:  ret

    IL_000d:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
    IL_0012:  stloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  stloc.1
    .try
    {
      IL_0015:  ldloc.0
      IL_0016:  ldloca.s   V_1
      IL_0018:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      .try
      {
        IL_001d:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
        IL_0022:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
        IL_0027:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
        IL_002c:  ldarg.0
        IL_002d:  conv.i8
        IL_002e:  sub
        IL_002f:  ldc.i4.0
        IL_0030:  conv.i8
        IL_0031:  call       int64 [Engine]Engine.MathUtils::Max(int64,
                                                                 int64)
        IL_0036:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_003b:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
        IL_0040:  newobj     instance void [System.IO]System.IO.StreamReader::.ctor(class [System.IO]System.IO.Stream)
        IL_0045:  callvirt   instance string [System.IO]System.IO.TextReader::ReadToEnd()
        IL_004a:  stloc.2
        IL_004b:  leave.s    IL_006c

      }  // end .try
      finally
      {
        IL_004d:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
        IL_0052:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
        IL_0057:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
        IL_005c:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_0061:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_0062:  ldloc.1
      IL_0063:  brfalse.s  IL_006b

      IL_0065:  ldloc.0
      IL_0066:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_006b:  endfinally
    }  // end handler
    IL_006c:  ldloc.2
    IL_006d:  ret
  } // end of method GameLogSink::GetRecentLog

  .method public hidebysig static class [System.Collections]System.Collections.Generic.List`1<string> 
          GetRecentLogLines(int32 bytesCount) cil managed
  {
    // 代码大小       137 (0x89)
    .maxstack  3
    .locals init (class [System.IO]System.IO.Stream V_0,
             bool V_1,
             class [System.IO]System.IO.StreamReader V_2,
             class [System.Collections]System.Collections.Generic.List`1<string> V_3,
             string V_4,
             class [System.Collections]System.Collections.Generic.List`1<string> V_5)
    IL_0000:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
    IL_0005:  brtrue.s   IL_000d

    IL_0007:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_000c:  ret

    IL_000d:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
    IL_0012:  stloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  stloc.1
    .try
    {
      IL_0015:  ldloc.0
      IL_0016:  ldloca.s   V_1
      IL_0018:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      .try
      {
        IL_001d:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
        IL_0022:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
        IL_0027:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Position()
        IL_002c:  ldarg.0
        IL_002d:  conv.i8
        IL_002e:  sub
        IL_002f:  ldc.i4.0
        IL_0030:  conv.i8
        IL_0031:  call       int64 [Engine]Engine.MathUtils::Max(int64,
                                                                 int64)
        IL_0036:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_003b:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
        IL_0040:  newobj     instance void [System.IO]System.IO.StreamReader::.ctor(class [System.IO]System.IO.Stream)
        IL_0045:  stloc.2
        IL_0046:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
        IL_004b:  stloc.3
        IL_004c:  ldloc.2
        IL_004d:  callvirt   instance string [System.IO]System.IO.TextReader::ReadLine()
        IL_0052:  stloc.s    V_4
        IL_0054:  ldloc.s    V_4
        IL_0056:  brfalse.s  IL_0062

        IL_0058:  ldloc.3
        IL_0059:  ldloc.s    V_4
        IL_005b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
        IL_0060:  br.s       IL_004c

        IL_0062:  ldloc.3
        IL_0063:  stloc.s    V_5
        IL_0065:  leave.s    IL_0086

      }  // end .try
      finally
      {
        IL_0067:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
        IL_006c:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
        IL_0071:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
        IL_0076:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_007b:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_007c:  ldloc.1
      IL_007d:  brfalse.s  IL_0085

      IL_007f:  ldloc.0
      IL_0080:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_0085:  endfinally
    }  // end handler
    IL_0086:  ldloc.s    V_5
    IL_0088:  ret
  } // end of method GameLogSink::GetRecentLogLines

  .method public hidebysig newslot virtual final 
          instance void  Log(valuetype [Engine]Engine.LogType 'type',
                             string message) cil managed
  {
    // 代码大小       186 (0xba)
    .maxstack  3
    .locals init (class [System.IO]System.IO.Stream V_0,
             bool V_1,
             string V_2,
             valuetype [System.Runtime]System.DateTime V_3)
    IL_0000:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
    IL_0005:  brtrue.s   IL_0008

    IL_0007:  ret

    IL_0008:  ldsfld     class [System.IO]System.IO.Stream Game.GameLogSink::m_stream
    IL_000d:  stloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.1
    .try
    {
      IL_0010:  ldloc.0
      IL_0011:  ldloca.s   V_1
      IL_0013:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_0018:  ldarg.1
      IL_0019:  switch     ( 
                            IL_0034,
                            IL_003c,
                            IL_0044,
                            IL_004c,
                            IL_0054)
      IL_0032:  br.s       IL_005c

      IL_0034:  ldstr      "DEBUG: "
      IL_0039:  stloc.2
      IL_003a:  br.s       IL_0062

      IL_003c:  ldstr      "INFO: "
      IL_0041:  stloc.2
      IL_0042:  br.s       IL_0062

      IL_0044:  ldstr      "INFO: "
      IL_0049:  stloc.2
      IL_004a:  br.s       IL_0062

      IL_004c:  ldstr      "WARNING: "
      IL_0051:  stloc.2
      IL_0052:  br.s       IL_0062

      IL_0054:  ldstr      "ERROR: "
      IL_0059:  stloc.2
      IL_005a:  br.s       IL_0062

      IL_005c:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0061:  stloc.2
      IL_0062:  ldsfld     class [System.IO]System.IO.StreamWriter Game.GameLogSink::m_writer
      IL_0067:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
      IL_006c:  stloc.3
      IL_006d:  ldloca.s   V_3
      IL_006f:  ldstr      "HH:mm:ss.fff"
      IL_0074:  call       instance string [System.Runtime]System.DateTime::ToString(string)
      IL_0079:  callvirt   instance void [System.IO]System.IO.TextWriter::Write(string)
      IL_007e:  ldsfld     class [System.IO]System.IO.StreamWriter Game.GameLogSink::m_writer
      IL_0083:  ldstr      " "
      IL_0088:  callvirt   instance void [System.IO]System.IO.TextWriter::Write(string)
      IL_008d:  ldsfld     class [System.IO]System.IO.StreamWriter Game.GameLogSink::m_writer
      IL_0092:  ldloc.2
      IL_0093:  callvirt   instance void [System.IO]System.IO.TextWriter::Write(string)
      IL_0098:  ldsfld     class [System.IO]System.IO.StreamWriter Game.GameLogSink::m_writer
      IL_009d:  ldarg.2
      IL_009e:  callvirt   instance void [System.IO]System.IO.TextWriter::WriteLine(string)
      IL_00a3:  ldsfld     class [System.IO]System.IO.StreamWriter Game.GameLogSink::m_writer
      IL_00a8:  callvirt   instance void [System.IO]System.IO.TextWriter::Flush()
      IL_00ad:  leave.s    IL_00b9

    }  // end .try
    finally
    {
      IL_00af:  ldloc.1
      IL_00b0:  brfalse.s  IL_00b8

      IL_00b2:  ldloc.0
      IL_00b3:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_00b8:  endfinally
    }  // end handler
    IL_00b9:  ret
  } // end of method GameLogSink::Log

} // end of class Game.GameLogSink