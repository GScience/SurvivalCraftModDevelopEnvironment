.class public abstract auto ansi sealed beforefieldinit Game.WebManager
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit ProgressHttpContent
         extends [System.Net.Http]System.Net.Http.HttpContent
  {
    .class auto ansi sealed nested private beforefieldinit '<SerializeToStreamAsync>d__4'
           extends [System.Runtime]System.ValueType
           implements [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .field public int32 '<>1__state'
      .field public valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
      .field public class Game.WebManager/ProgressHttpContent '<>4__this'
      .field private uint8[] '<buffer>5__1'
      .field public class [System.IO]System.IO.Stream targetStream
      .field private int64 '<written>5__2'
      .field private int32 '<read>5__3'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter '<>u__1'
      .method private hidebysig newslot virtual final 
              instance void  MoveNext() cil managed
      {
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
        // 代码大小       395 (0x18b)
        .maxstack  5
        .locals init (int32 V_0,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter V_1,
                 class [System.Runtime]System.Exception V_2)
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
        IL_0006:  stloc.0
        .try
        {
          IL_0007:  ldloc.0
          IL_0008:  brfalse    IL_0113

          IL_000d:  ldarg.0
          IL_000e:  ldc.i4     0x400
          IL_0013:  newarr     [System.Runtime]System.Byte
          IL_0018:  stfld      uint8[] Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<buffer>5__1'
          IL_001d:  ldarg.0
          IL_001e:  ldc.i4.0
          IL_001f:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_0024:  ldarg.0
          IL_0025:  ldc.i4.0
          IL_0026:  conv.i8
          IL_0027:  stfld      int64 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<written>5__2'
          IL_002c:  ldarg.0
          IL_002d:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>4__this'
          IL_0032:  ldfld      class Game.CancellableProgress Game.WebManager/ProgressHttpContent::m_progress
          IL_0037:  ldarg.0
          IL_0038:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>4__this'
          IL_003d:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/ProgressHttpContent::m_sourceStream
          IL_0042:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
          IL_0047:  conv.r4
          IL_0048:  stfld      float32 Game.Progress::Total
          IL_004d:  ldarg.0
          IL_004e:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>4__this'
          IL_0053:  ldfld      class Game.CancellableProgress Game.WebManager/ProgressHttpContent::m_progress
          IL_0058:  ldarg.0
          IL_0059:  ldfld      int64 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<written>5__2'
          IL_005e:  conv.r4
          IL_005f:  stfld      float32 Game.Progress::Completed
          IL_0064:  ldarg.0
          IL_0065:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>4__this'
          IL_006a:  ldfld      class Game.CancellableProgress Game.WebManager/ProgressHttpContent::m_progress
          IL_006f:  ldfld      class [System.Threading.Tasks]System.Threading.CancellationTokenSource Game.CancellableProgress::CancellationTokenSource
          IL_0074:  callvirt   instance bool [System.Threading.Tasks]System.Threading.CancellationTokenSource::get_IsCancellationRequested()
          IL_0079:  brfalse.s  IL_0086

          IL_007b:  ldstr      "Operation cancelled."
          IL_0080:  newobj     instance void [System.Threading.Tasks]System.OperationCanceledException::.ctor(string)
          IL_0085:  throw

          IL_0086:  ldarg.0
          IL_0087:  ldarg.0
          IL_0088:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>4__this'
          IL_008d:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/ProgressHttpContent::m_sourceStream
          IL_0092:  ldarg.0
          IL_0093:  ldfld      uint8[] Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<buffer>5__1'
          IL_0098:  ldc.i4.0
          IL_0099:  ldarg.0
          IL_009a:  ldfld      uint8[] Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<buffer>5__1'
          IL_009f:  ldlen
          IL_00a0:  conv.i4
          IL_00a1:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                                int32,
                                                                                int32)
          IL_00a6:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_00ab:  ldarg.0
          IL_00ac:  ldfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_00b1:  ldc.i4.0
          IL_00b2:  ble        IL_0152

          IL_00b7:  ldarg.0
          IL_00b8:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::targetStream
          IL_00bd:  ldarg.0
          IL_00be:  ldfld      uint8[] Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<buffer>5__1'
          IL_00c3:  ldc.i4.0
          IL_00c4:  ldarg.0
          IL_00c5:  ldfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_00ca:  ldarg.0
          IL_00cb:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>4__this'
          IL_00d0:  ldfld      class Game.CancellableProgress Game.WebManager/ProgressHttpContent::m_progress
          IL_00d5:  ldfld      class [System.Threading.Tasks]System.Threading.CancellationTokenSource Game.CancellableProgress::CancellationTokenSource
          IL_00da:  callvirt   instance valuetype [System.Threading.Tasks]System.Threading.CancellationToken [System.Threading.Tasks]System.Threading.CancellationTokenSource::get_Token()
          IL_00df:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task [System.IO]System.IO.Stream::WriteAsync(uint8[],
                                                                                                                                          int32,
                                                                                                                                          int32,
                                                                                                                                          valuetype [System.Threading.Tasks]System.Threading.CancellationToken)
          IL_00e4:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter [System.Threading.Tasks]System.Threading.Tasks.Task::GetAwaiter()
          IL_00e9:  stloc.1
          IL_00ea:  ldloca.s   V_1
          IL_00ec:  call       instance bool [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
          IL_00f1:  brtrue.s   IL_012f

          IL_00f3:  ldarg.0
          IL_00f4:  ldc.i4.0
          IL_00f5:  dup
          IL_00f6:  stloc.0
          IL_00f7:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
          IL_00fc:  ldarg.0
          IL_00fd:  ldloc.1
          IL_00fe:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>u__1'
          IL_0103:  ldarg.0
          IL_0104:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>t__builder'
          IL_0109:  ldloca.s   V_1
          IL_010b:  ldarg.0
          IL_010c:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter,valuetype Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                                                !!1&)
          IL_0111:  leave.s    IL_018a

          IL_0113:  ldarg.0
          IL_0114:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>u__1'
          IL_0119:  stloc.1
          IL_011a:  ldarg.0
          IL_011b:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>u__1'
          IL_0120:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
          IL_0126:  ldarg.0
          IL_0127:  ldc.i4.m1
          IL_0128:  dup
          IL_0129:  stloc.0
          IL_012a:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
          IL_012f:  ldloca.s   V_1
          IL_0131:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
          IL_0136:  ldloca.s   V_1
          IL_0138:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
          IL_013e:  ldarg.0
          IL_013f:  ldarg.0
          IL_0140:  ldfld      int64 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<written>5__2'
          IL_0145:  ldarg.0
          IL_0146:  ldfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_014b:  conv.i8
          IL_014c:  add
          IL_014d:  stfld      int64 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<written>5__2'
          IL_0152:  ldarg.0
          IL_0153:  ldfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_0158:  ldc.i4.0
          IL_0159:  bgt        IL_002c

          IL_015e:  leave.s    IL_0177

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_0160:  stloc.2
          IL_0161:  ldarg.0
          IL_0162:  ldc.i4.s   -2
          IL_0164:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
          IL_0169:  ldarg.0
          IL_016a:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>t__builder'
          IL_016f:  ldloc.2
          IL_0170:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
          IL_0175:  leave.s    IL_018a

        }  // end handler
        IL_0177:  ldarg.0
        IL_0178:  ldc.i4.s   -2
        IL_017a:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
        IL_017f:  ldarg.0
        IL_0180:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>t__builder'
        IL_0185:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
        IL_018a:  ret
      } // end of method '<SerializeToStreamAsync>d__4'::MoveNext

      .method private hidebysig newslot virtual final 
              instance void  SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
      {
        .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
        // 代码大小       13 (0xd)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>t__builder'
        IL_0006:  ldarg.1
        IL_0007:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine)
        IL_000c:  ret
      } // end of method '<SerializeToStreamAsync>d__4'::SetStateMachine

    } // end of class '<SerializeToStreamAsync>d__4'

    .field private class [System.IO]System.IO.Stream m_sourceStream
    .field private class Game.CancellableProgress m_progress
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(class [System.IO]System.IO.Stream sourceStream,
                                 class Game.CancellableProgress progress) cil managed
    {
      // 代码大小       30 (0x1e)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Net.Http]System.Net.Http.HttpContent::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      class [System.IO]System.IO.Stream Game.WebManager/ProgressHttpContent::m_sourceStream
      IL_000d:  ldarg.0
      IL_000e:  ldarg.2
      IL_000f:  dup
      IL_0010:  brtrue.s   IL_0018

      IL_0012:  pop
      IL_0013:  newobj     instance void Game.CancellableProgress::.ctor()
      IL_0018:  stfld      class Game.CancellableProgress Game.WebManager/ProgressHttpContent::m_progress
      IL_001d:  ret
    } // end of method ProgressHttpContent::.ctor

    .method family hidebysig virtual instance bool 
            TryComputeLength([out] int64& length) cil managed
    {
      // 代码大小       15 (0xf)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.0
      IL_0002:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/ProgressHttpContent::m_sourceStream
      IL_0007:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
      IL_000c:  stind.i8
      IL_000d:  ldc.i4.1
      IL_000e:  ret
    } // end of method ProgressHttpContent::TryComputeLength

    .method family hidebysig virtual instance class [System.Threading.Tasks]System.Threading.Tasks.Task 
            SerializeToStreamAsync(class [System.IO]System.IO.Stream targetStream,
                                   class [System.Net.Primitives]System.Net.TransportContext context) cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 40 47 61 6D 65 2E 57 65 62 4D 61 6E 61 67   // ..@Game.WebManag
                                                                                                                                                     65 72 2B 50 72 6F 67 72 65 73 73 48 74 74 70 43   // er+ProgressHttpC
                                                                                                                                                     6F 6E 74 65 6E 74 2B 3C 53 65 72 69 61 6C 69 7A   // ontent+<Serializ
                                                                                                                                                     65 54 6F 53 74 72 65 61 6D 41 73 79 6E 63 3E 64   // eToStreamAsync>d
                                                                                                                                                     5F 5F 34 00 00 )                                  // __4..
      // 代码大小       65 (0x41)
      .maxstack  2
      .locals init (valuetype Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4' V_0,
               valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder V_1)
      IL_0000:  ldloca.s   V_0
      IL_0002:  ldarg.0
      IL_0003:  stfld      class Game.WebManager/ProgressHttpContent Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>4__this'
      IL_0008:  ldloca.s   V_0
      IL_000a:  ldarg.1
      IL_000b:  stfld      class [System.IO]System.IO.Stream Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::targetStream
      IL_0010:  ldloca.s   V_0
      IL_0012:  call       valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
      IL_0017:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>t__builder'
      IL_001c:  ldloca.s   V_0
      IL_001e:  ldc.i4.m1
      IL_001f:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
      IL_0024:  ldloc.0
      IL_0025:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>t__builder'
      IL_002a:  stloc.1
      IL_002b:  ldloca.s   V_1
      IL_002d:  ldloca.s   V_0
      IL_002f:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'>(!!0&)
      IL_0034:  ldloca.s   V_0
      IL_0036:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>t__builder'
      IL_003b:  call       instance class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
      IL_0040:  ret
    } // end of method ProgressHttpContent::SerializeToStreamAsync

  } // end of class ProgressHttpContent

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .class auto ansi sealed nested private beforefieldinit '<<Get>b__0>d'
           extends [System.Runtime]System.ValueType
           implements [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine
    {
      .field public int32 '<>1__state'
      .field public valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
      .field public class Game.WebManager/'<>c__DisplayClass2_0' '<>4__this'
      .field private class [System.Net.Http]System.Net.Http.HttpResponseMessage '<responseMessage>5__1'
      .field private class [System.IO]System.IO.Stream '<responseStream>5__2'
      .field private uint8[] '<buffer>5__3'
      .field private class Game.WebManager/'<>c__DisplayClass2_1' '<>8__4'
      .field private int64 '<written>5__5'
      .field private class [System.Net.Http]System.Net.Http.HttpClient '<client>5__6'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> '<>u__1'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter '<>u__2'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> '<>u__3'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32> '<>u__4'
      .method private hidebysig newslot virtual final 
              instance void  MoveNext() cil managed
      {
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
        // 代码大小       1366 (0x556)
        .maxstack  5
        .locals init (int32 V_0,
                 class [System.Runtime]System.Uri V_1,
                 valuetype [System.Runtime]System.Nullable`1<int64> V_2,
                 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string> V_3,
                 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string> V_4,
                 class [System.Net.Http]System.Net.Http.HttpResponseMessage V_5,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> V_6,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter V_7,
                 valuetype [System.Runtime]System.Nullable`1<int64> V_8,
                 class [System.IO]System.IO.Stream V_9,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> V_10,
                 int32 V_11,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32> V_12,
                 class Game.WebManager/'<>c__DisplayClass2_2' V_13,
                 class [System.Runtime]System.Exception V_14)
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
        IL_0006:  stloc.0
        .try
        {
          IL_0007:  ldloc.0
          IL_0008:  switch     ( 
                                IL_001d,
                                IL_001d,
                                IL_001d,
                                IL_001d)
          IL_001d:  nop
          .try
          {
            IL_001e:  ldloc.0
            IL_001f:  switch     ( 
                                  IL_0070,
                                  IL_0070,
                                  IL_0070,
                                  IL_0070)
            IL_0034:  ldarg.0
            IL_0035:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
            IL_003a:  ldarg.0
            IL_003b:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
            IL_0040:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass2_0'::progress
            IL_0045:  dup
            IL_0046:  brtrue.s   IL_004e

            IL_0048:  pop
            IL_0049:  newobj     instance void Game.CancellableProgress::.ctor()
            IL_004e:  stfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass2_0'::progress
            IL_0053:  call       bool Game.WebManager::IsInternetConnectionAvailable()
            IL_0058:  brtrue.s   IL_0065

            IL_005a:  ldstr      "Internet connection is unavailable."
            IL_005f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
            IL_0064:  throw

            IL_0065:  ldarg.0
            IL_0066:  newobj     instance void [System.Net.Http]System.Net.Http.HttpClient::.ctor()
            IL_006b:  stfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<client>5__6'
            IL_0070:  nop
            .try
            {
              IL_0071:  ldloc.0
              IL_0072:  switch     ( 
                                    IL_01ca,
                                    IL_023f,
                                    IL_02ed,
                                    IL_0323)
              IL_0087:  ldarg.0
              IL_0088:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_008d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass2_0'::parameters
              IL_0092:  brfalse.s  IL_00a7

              IL_0094:  ldarg.0
              IL_0095:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_009a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass2_0'::parameters
              IL_009f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Count()
              IL_00a4:  ldc.i4.0
              IL_00a5:  bgt.s      IL_00b9

              IL_00a7:  ldarg.0
              IL_00a8:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_00ad:  ldfld      string Game.WebManager/'<>c__DisplayClass2_0'::address
              IL_00b2:  newobj     instance void [System.Runtime]System.Uri::.ctor(string)
              IL_00b7:  br.s       IL_00ef

              IL_00b9:  ldstr      "{0}\?{1}"
              IL_00be:  ldc.i4.2
              IL_00bf:  newarr     [System.Runtime]System.Object
              IL_00c4:  dup
              IL_00c5:  ldc.i4.0
              IL_00c6:  ldarg.0
              IL_00c7:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_00cc:  ldfld      string Game.WebManager/'<>c__DisplayClass2_0'::address
              IL_00d1:  stelem.ref
              IL_00d2:  dup
              IL_00d3:  ldc.i4.1
              IL_00d4:  ldarg.0
              IL_00d5:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_00da:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass2_0'::parameters
              IL_00df:  call       string Game.WebManager::UrlParametersToString(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
              IL_00e4:  stelem.ref
              IL_00e5:  call       string [System.Runtime]System.String::Format(string,
                                                                                object[])
              IL_00ea:  newobj     instance void [System.Runtime]System.Uri::.ctor(string)
              IL_00ef:  stloc.1
              IL_00f0:  ldarg.0
              IL_00f1:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<client>5__6'
              IL_00f6:  callvirt   instance class [System.Net.Http]System.Net.Http.Headers.HttpRequestHeaders [System.Net.Http]System.Net.Http.HttpClient::get_DefaultRequestHeaders()
              IL_00fb:  ldarg.0
              IL_00fc:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_0101:  ldfld      string Game.WebManager/'<>c__DisplayClass2_0'::address
              IL_0106:  newobj     instance void [System.Runtime]System.Uri::.ctor(string)
              IL_010b:  callvirt   instance void [System.Net.Http]System.Net.Http.Headers.HttpRequestHeaders::set_Referrer(class [System.Runtime]System.Uri)
              IL_0110:  ldarg.0
              IL_0111:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_0116:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass2_0'::headers
              IL_011b:  brfalse.s  IL_0174

              IL_011d:  ldarg.0
              IL_011e:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_0123:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass2_0'::headers
              IL_0128:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::GetEnumerator()
              IL_012d:  stloc.3
              .try
              {
                IL_012e:  br.s       IL_0157

                IL_0130:  ldloca.s   V_3
                IL_0132:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::get_Current()
                IL_0137:  stloc.s    V_4
                IL_0139:  ldarg.0
                IL_013a:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<client>5__6'
                IL_013f:  callvirt   instance class [System.Net.Http]System.Net.Http.Headers.HttpRequestHeaders [System.Net.Http]System.Net.Http.HttpClient::get_DefaultRequestHeaders()
                IL_0144:  ldloca.s   V_4
                IL_0146:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Key()
                IL_014b:  ldloca.s   V_4
                IL_014d:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Value()
                IL_0152:  callvirt   instance void [System.Net.Http]System.Net.Http.Headers.HttpHeaders::Add(string,
                                                                                                             string)
                IL_0157:  ldloca.s   V_3
                IL_0159:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::MoveNext()
                IL_015e:  brtrue.s   IL_0130

                IL_0160:  leave.s    IL_0174

              }  // end .try
              finally
              {
                IL_0162:  ldloc.0
                IL_0163:  ldc.i4.0
                IL_0164:  bge.s      IL_0173

                IL_0166:  ldloca.s   V_3
                IL_0168:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>
                IL_016e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
                IL_0173:  endfinally
              }  // end handler
              IL_0174:  ldarg.0
              IL_0175:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<client>5__6'
              IL_017a:  ldloc.1
              IL_017b:  ldc.i4.1
              IL_017c:  ldarg.0
              IL_017d:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_0182:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass2_0'::progress
              IL_0187:  ldfld      class [System.Threading.Tasks]System.Threading.CancellationTokenSource Game.CancellableProgress::CancellationTokenSource
              IL_018c:  callvirt   instance valuetype [System.Threading.Tasks]System.Threading.CancellationToken [System.Threading.Tasks]System.Threading.CancellationTokenSource::get_Token()
              IL_0191:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(class [System.Runtime]System.Uri,
                                                                                                                                                                                                                          valuetype [System.Net.Http]System.Net.Http.HttpCompletionOption,
                                                                                                                                                                                                                          valuetype [System.Threading.Tasks]System.Threading.CancellationToken)
              IL_0196:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::GetAwaiter()
              IL_019b:  stloc.s    V_6
              IL_019d:  ldloca.s   V_6
              IL_019f:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::get_IsCompleted()
              IL_01a4:  brtrue.s   IL_01e7

              IL_01a6:  ldarg.0
              IL_01a7:  ldc.i4.0
              IL_01a8:  dup
              IL_01a9:  stloc.0
              IL_01aa:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_01af:  ldarg.0
              IL_01b0:  ldloc.s    V_6
              IL_01b2:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__1'
              IL_01b7:  ldarg.0
              IL_01b8:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
              IL_01bd:  ldloca.s   V_6
              IL_01bf:  ldarg.0
              IL_01c0:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>,valuetype Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                     !!1&)
              IL_01c5:  leave      IL_0555

              IL_01ca:  ldarg.0
              IL_01cb:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__1'
              IL_01d0:  stloc.s    V_6
              IL_01d2:  ldarg.0
              IL_01d3:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__1'
              IL_01d8:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>
              IL_01de:  ldarg.0
              IL_01df:  ldc.i4.m1
              IL_01e0:  dup
              IL_01e1:  stloc.0
              IL_01e2:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_01e7:  ldloca.s   V_6
              IL_01e9:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::GetResult()
              IL_01ee:  ldloca.s   V_6
              IL_01f0:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>
              IL_01f6:  stloc.s    V_5
              IL_01f8:  ldarg.0
              IL_01f9:  ldloc.s    V_5
              IL_01fb:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseMessage>5__1'
              IL_0200:  ldarg.0
              IL_0201:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseMessage>5__1'
              IL_0206:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task Game.WebManager::VerifyResponse(class [System.Net.Http]System.Net.Http.HttpResponseMessage)
              IL_020b:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter [System.Threading.Tasks]System.Threading.Tasks.Task::GetAwaiter()
              IL_0210:  stloc.s    V_7
              IL_0212:  ldloca.s   V_7
              IL_0214:  call       instance bool [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
              IL_0219:  brtrue.s   IL_025c

              IL_021b:  ldarg.0
              IL_021c:  ldc.i4.1
              IL_021d:  dup
              IL_021e:  stloc.0
              IL_021f:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_0224:  ldarg.0
              IL_0225:  ldloc.s    V_7
              IL_0227:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__2'
              IL_022c:  ldarg.0
              IL_022d:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
              IL_0232:  ldloca.s   V_7
              IL_0234:  ldarg.0
              IL_0235:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter,valuetype Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                       !!1&)
              IL_023a:  leave      IL_0555

              IL_023f:  ldarg.0
              IL_0240:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__2'
              IL_0245:  stloc.s    V_7
              IL_0247:  ldarg.0
              IL_0248:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__2'
              IL_024d:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
              IL_0253:  ldarg.0
              IL_0254:  ldc.i4.m1
              IL_0255:  dup
              IL_0256:  stloc.0
              IL_0257:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_025c:  ldloca.s   V_7
              IL_025e:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
              IL_0263:  ldloca.s   V_7
              IL_0265:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
              IL_026b:  ldarg.0
              IL_026c:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseMessage>5__1'
              IL_0271:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
              IL_0276:  callvirt   instance class [System.Net.Http]System.Net.Http.Headers.HttpContentHeaders [System.Net.Http]System.Net.Http.HttpContent::get_Headers()
              IL_027b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int64> [System.Net.Http]System.Net.Http.Headers.HttpContentHeaders::get_ContentLength()
              IL_0280:  stloc.2
              IL_0281:  ldarg.0
              IL_0282:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_0287:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass2_0'::progress
              IL_028c:  ldloc.2
              IL_028d:  stloc.s    V_8
              IL_028f:  ldloca.s   V_8
              IL_0291:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int64>::get_HasValue()
              IL_0296:  brtrue.s   IL_029c

              IL_0298:  ldc.i4.0
              IL_0299:  conv.i8
              IL_029a:  br.s       IL_02a3

              IL_029c:  ldloca.s   V_8
              IL_029e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int64>::GetValueOrDefault()
              IL_02a3:  conv.r4
              IL_02a4:  stfld      float32 Game.Progress::Total
              IL_02a9:  ldarg.0
              IL_02aa:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseMessage>5__1'
              IL_02af:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
              IL_02b4:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.IO]System.IO.Stream> [System.Net.Http]System.Net.Http.HttpContent::ReadAsStreamAsync()
              IL_02b9:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.IO]System.IO.Stream>::GetAwaiter()
              IL_02be:  stloc.s    V_10
              IL_02c0:  ldloca.s   V_10
              IL_02c2:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>::get_IsCompleted()
              IL_02c7:  brtrue.s   IL_030a

              IL_02c9:  ldarg.0
              IL_02ca:  ldc.i4.2
              IL_02cb:  dup
              IL_02cc:  stloc.0
              IL_02cd:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_02d2:  ldarg.0
              IL_02d3:  ldloc.s    V_10
              IL_02d5:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__3'
              IL_02da:  ldarg.0
              IL_02db:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
              IL_02e0:  ldloca.s   V_10
              IL_02e2:  ldarg.0
              IL_02e3:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>,valuetype Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                                            !!1&)
              IL_02e8:  leave      IL_0555

              IL_02ed:  ldarg.0
              IL_02ee:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__3'
              IL_02f3:  stloc.s    V_10
              IL_02f5:  ldarg.0
              IL_02f6:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__3'
              IL_02fb:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>
              IL_0301:  ldarg.0
              IL_0302:  ldc.i4.m1
              IL_0303:  dup
              IL_0304:  stloc.0
              IL_0305:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_030a:  ldloca.s   V_10
              IL_030c:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>::GetResult()
              IL_0311:  ldloca.s   V_10
              IL_0313:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>
              IL_0319:  stloc.s    V_9
              IL_031b:  ldarg.0
              IL_031c:  ldloc.s    V_9
              IL_031e:  stfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseStream>5__2'
              IL_0323:  nop
              .try
              {
                IL_0324:  ldloc.0
                IL_0325:  ldc.i4.3
                IL_0326:  beq.s      IL_0354

                IL_0328:  ldarg.0
                IL_0329:  newobj     instance void Game.WebManager/'<>c__DisplayClass2_1'::.ctor()
                IL_032e:  stfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                IL_0333:  ldarg.0
                IL_0334:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                IL_0339:  ldarg.0
                IL_033a:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
                IL_033f:  stfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
                IL_0344:  ldarg.0
                IL_0345:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                IL_034a:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor()
                IL_034f:  stfld      class [System.IO]System.IO.MemoryStream Game.WebManager/'<>c__DisplayClass2_1'::targetStream
                IL_0354:  nop
                .try
                {
                  IL_0355:  ldloc.0
                  IL_0356:  ldc.i4.3
                  IL_0357:  beq.s      IL_03d7

                  IL_0359:  ldc.i4.0
                  IL_035a:  stloc.s    V_11
                  IL_035c:  ldarg.0
                  IL_035d:  ldc.i4.0
                  IL_035e:  conv.i8
                  IL_035f:  stfld      int64 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<written>5__5'
                  IL_0364:  ldarg.0
                  IL_0365:  ldc.i4     0x400
                  IL_036a:  newarr     [System.Runtime]System.Byte
                  IL_036f:  stfld      uint8[] Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<buffer>5__3'
                  IL_0374:  ldarg.0
                  IL_0375:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseStream>5__2'
                  IL_037a:  ldarg.0
                  IL_037b:  ldfld      uint8[] Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<buffer>5__3'
                  IL_0380:  ldc.i4.0
                  IL_0381:  ldarg.0
                  IL_0382:  ldfld      uint8[] Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<buffer>5__3'
                  IL_0387:  ldlen
                  IL_0388:  conv.i4
                  IL_0389:  ldarg.0
                  IL_038a:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
                  IL_038f:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass2_0'::progress
                  IL_0394:  ldfld      class [System.Threading.Tasks]System.Threading.CancellationTokenSource Game.CancellableProgress::CancellationTokenSource
                  IL_0399:  callvirt   instance valuetype [System.Threading.Tasks]System.Threading.CancellationToken [System.Threading.Tasks]System.Threading.CancellationTokenSource::get_Token()
                  IL_039e:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<int32> [System.IO]System.IO.Stream::ReadAsync(uint8[],
                                                                                                                                                          int32,
                                                                                                                                                          int32,
                                                                                                                                                          valuetype [System.Threading.Tasks]System.Threading.CancellationToken)
                  IL_03a3:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<int32>::GetAwaiter()
                  IL_03a8:  stloc.s    V_12
                  IL_03aa:  ldloca.s   V_12
                  IL_03ac:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32>::get_IsCompleted()
                  IL_03b1:  brtrue.s   IL_03f4

                  IL_03b3:  ldarg.0
                  IL_03b4:  ldc.i4.3
                  IL_03b5:  dup
                  IL_03b6:  stloc.0
                  IL_03b7:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
                  IL_03bc:  ldarg.0
                  IL_03bd:  ldloc.s    V_12
                  IL_03bf:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__4'
                  IL_03c4:  ldarg.0
                  IL_03c5:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
                  IL_03ca:  ldloca.s   V_12
                  IL_03cc:  ldarg.0
                  IL_03cd:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32>,valuetype Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                    !!1&)
                  IL_03d2:  leave      IL_0555

                  IL_03d7:  ldarg.0
                  IL_03d8:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__4'
                  IL_03dd:  stloc.s    V_12
                  IL_03df:  ldarg.0
                  IL_03e0:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__4'
                  IL_03e5:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32>
                  IL_03eb:  ldarg.0
                  IL_03ec:  ldc.i4.m1
                  IL_03ed:  dup
                  IL_03ee:  stloc.0
                  IL_03ef:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
                  IL_03f4:  ldloca.s   V_12
                  IL_03f6:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32>::GetResult()
                  IL_03fb:  ldloca.s   V_12
                  IL_03fd:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32>
                  IL_0403:  stloc.s    V_11
                  IL_0405:  ldloc.s    V_11
                  IL_0407:  ldc.i4.0
                  IL_0408:  ble.s      IL_044a

                  IL_040a:  ldarg.0
                  IL_040b:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                  IL_0410:  ldfld      class [System.IO]System.IO.MemoryStream Game.WebManager/'<>c__DisplayClass2_1'::targetStream
                  IL_0415:  ldarg.0
                  IL_0416:  ldfld      uint8[] Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<buffer>5__3'
                  IL_041b:  ldc.i4.0
                  IL_041c:  ldloc.s    V_11
                  IL_041e:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                                        int32,
                                                                                        int32)
                  IL_0423:  ldarg.0
                  IL_0424:  ldarg.0
                  IL_0425:  ldfld      int64 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<written>5__5'
                  IL_042a:  ldloc.s    V_11
                  IL_042c:  conv.i8
                  IL_042d:  add
                  IL_042e:  stfld      int64 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<written>5__5'
                  IL_0433:  ldarg.0
                  IL_0434:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
                  IL_0439:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass2_0'::progress
                  IL_043e:  ldarg.0
                  IL_043f:  ldfld      int64 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<written>5__5'
                  IL_0444:  conv.r4
                  IL_0445:  stfld      float32 Game.Progress::Completed
                  IL_044a:  ldloc.s    V_11
                  IL_044c:  ldc.i4.0
                  IL_044d:  bgt        IL_0374

                  IL_0452:  ldarg.0
                  IL_0453:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                  IL_0458:  ldftn      instance void Game.WebManager/'<>c__DisplayClass2_1'::'<Get>b__1'()
                  IL_045e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                          native int)
                  IL_0463:  ldc.i4.0
                  IL_0464:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                                bool)
                  IL_0469:  ldarg.0
                  IL_046a:  ldnull
                  IL_046b:  stfld      uint8[] Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<buffer>5__3'
                  IL_0470:  leave.s    IL_0494

                }  // end .try
                finally
                {
                  IL_0472:  ldloc.0
                  IL_0473:  ldc.i4.0
                  IL_0474:  bge.s      IL_0493

                  IL_0476:  ldarg.0
                  IL_0477:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                  IL_047c:  ldfld      class [System.IO]System.IO.MemoryStream Game.WebManager/'<>c__DisplayClass2_1'::targetStream
                  IL_0481:  brfalse.s  IL_0493

                  IL_0483:  ldarg.0
                  IL_0484:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                  IL_0489:  ldfld      class [System.IO]System.IO.MemoryStream Game.WebManager/'<>c__DisplayClass2_1'::targetStream
                  IL_048e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
                  IL_0493:  endfinally
                }  // end handler
                IL_0494:  ldarg.0
                IL_0495:  ldnull
                IL_0496:  stfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                IL_049b:  leave.s    IL_04b5

              }  // end .try
              finally
              {
                IL_049d:  ldloc.0
                IL_049e:  ldc.i4.0
                IL_049f:  bge.s      IL_04b4

                IL_04a1:  ldarg.0
                IL_04a2:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseStream>5__2'
                IL_04a7:  brfalse.s  IL_04b4

                IL_04a9:  ldarg.0
                IL_04aa:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseStream>5__2'
                IL_04af:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
                IL_04b4:  endfinally
              }  // end handler
              IL_04b5:  ldarg.0
              IL_04b6:  ldnull
              IL_04b7:  stfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseStream>5__2'
              IL_04bc:  ldarg.0
              IL_04bd:  ldnull
              IL_04be:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseMessage>5__1'
              IL_04c3:  leave.s    IL_04dd

            }  // end .try
            finally
            {
              IL_04c5:  ldloc.0
              IL_04c6:  ldc.i4.0
              IL_04c7:  bge.s      IL_04dc

              IL_04c9:  ldarg.0
              IL_04ca:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<client>5__6'
              IL_04cf:  brfalse.s  IL_04dc

              IL_04d1:  ldarg.0
              IL_04d2:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<client>5__6'
              IL_04d7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
              IL_04dc:  endfinally
            }  // end handler
            IL_04dd:  ldarg.0
            IL_04de:  ldnull
            IL_04df:  stfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<client>5__6'
            IL_04e4:  leave.s    IL_0527

          }  // end .try
          catch [System.Runtime]System.Exception 
          {
            IL_04e6:  newobj     instance void Game.WebManager/'<>c__DisplayClass2_2'::.ctor()
            IL_04eb:  stloc.s    V_13
            IL_04ed:  ldloc.s    V_13
            IL_04ef:  ldarg.0
            IL_04f0:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
            IL_04f5:  stfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_2'::'CS$<>8__locals2'
            IL_04fa:  stloc.s    V_14
            IL_04fc:  ldloc.s    V_13
            IL_04fe:  ldloc.s    V_14
            IL_0500:  stfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass2_2'::e
            IL_0505:  ldnull
            IL_0506:  ldloc.s    V_13
            IL_0508:  ldfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass2_2'::e
            IL_050d:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                                   class [System.Runtime]System.Exception)
            IL_0512:  ldloc.s    V_13
            IL_0514:  ldftn      instance void Game.WebManager/'<>c__DisplayClass2_2'::'<Get>b__2'()
            IL_051a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                    native int)
            IL_051f:  ldc.i4.0
            IL_0520:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                          bool)
            IL_0525:  leave.s    IL_0527

          }  // end handler
          IL_0527:  leave.s    IL_0542

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_0529:  stloc.s    V_14
          IL_052b:  ldarg.0
          IL_052c:  ldc.i4.s   -2
          IL_052e:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
          IL_0533:  ldarg.0
          IL_0534:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
          IL_0539:  ldloc.s    V_14
          IL_053b:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
          IL_0540:  leave.s    IL_0555

        }  // end handler
        IL_0542:  ldarg.0
        IL_0543:  ldc.i4.s   -2
        IL_0545:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
        IL_054a:  ldarg.0
        IL_054b:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
        IL_0550:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
        IL_0555:  ret
      } // end of method '<<Get>b__0>d'::MoveNext

      .method private hidebysig newslot virtual final 
              instance void  SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
      {
        .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
        // 代码大小       13 (0xd)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
        IL_0006:  ldarg.1
        IL_0007:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine)
        IL_000c:  ret
      } // end of method '<<Get>b__0>d'::SetStateMachine

    } // end of class '<<Get>b__0>d'

    .field public class Game.CancellableProgress progress
    .field public class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> parameters
    .field public string address
    .field public class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> headers
    .field public class [System.Runtime]System.Action`1<uint8[]> success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass2_0'::.ctor

    .method assembly hidebysig instance class [System.Threading.Tasks]System.Threading.Tasks.Task 
            '<Get>b__0'() cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 31 47 61 6D 65 2E 57 65 62 4D 61 6E 61 67   // ..1Game.WebManag
                                                                                                                                                     65 72 2B 3C 3E 63 5F 5F 44 69 73 70 6C 61 79 43   // er+<>c__DisplayC
                                                                                                                                                     6C 61 73 73 32 5F 30 2B 3C 3C 47 65 74 3E 62 5F   // lass2_0+<<Get>b_
                                                                                                                                                     5F 30 3E 64 00 00 )                               // _0>d..
      // 代码大小       57 (0x39)
      .maxstack  2
      .locals init (valuetype Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d' V_0,
               valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder V_1)
      IL_0000:  ldloca.s   V_0
      IL_0002:  ldarg.0
      IL_0003:  stfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
      IL_0008:  ldloca.s   V_0
      IL_000a:  call       valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
      IL_000f:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
      IL_0014:  ldloca.s   V_0
      IL_0016:  ldc.i4.m1
      IL_0017:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
      IL_001c:  ldloc.0
      IL_001d:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
      IL_0022:  stloc.1
      IL_0023:  ldloca.s   V_1
      IL_0025:  ldloca.s   V_0
      IL_0027:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'>(!!0&)
      IL_002c:  ldloca.s   V_0
      IL_002e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
      IL_0033:  call       instance class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
      IL_0038:  ret
    } // end of method '<>c__DisplayClass2_0'::'<Get>b__0'

  } // end of class '<>c__DisplayClass2_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.IO]System.IO.MemoryStream targetStream
    .field public class Game.WebManager/'<>c__DisplayClass2_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass2_1'::.ctor

    .method assembly hidebysig instance void 
            '<Get>b__1'() cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
      IL_0006:  ldfld      class [System.Runtime]System.Action`1<uint8[]> Game.WebManager/'<>c__DisplayClass2_0'::success
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class [System.IO]System.IO.MemoryStream Game.WebManager/'<>c__DisplayClass2_1'::targetStream
      IL_0011:  callvirt   instance uint8[] [System.IO]System.IO.MemoryStream::ToArray()
      IL_0016:  callvirt   instance void class [System.Runtime]System.Action`1<uint8[]>::Invoke(!0)
      IL_001b:  ret
    } // end of method '<>c__DisplayClass2_1'::'<Get>b__1'

  } // end of class '<>c__DisplayClass2_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_2'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Exception e
    .field public class Game.WebManager/'<>c__DisplayClass2_0' 'CS$<>8__locals2'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass2_2'::.ctor

    .method assembly hidebysig instance void 
            '<Get>b__2'() cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_2'::'CS$<>8__locals2'
      IL_0006:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.WebManager/'<>c__DisplayClass2_0'::failure
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass2_2'::e
      IL_0011:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass2_2'::'<Get>b__2'

  } // end of class '<>c__DisplayClass2_2'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .class auto ansi sealed nested private beforefieldinit '<<Post>b__0>d'
           extends [System.Runtime]System.ValueType
           implements [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine
    {
      .field public int32 '<>1__state'
      .field public valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
      .field public class Game.WebManager/'<>c__DisplayClass3_0' '<>4__this'
      .field private class Game.WebManager/'<>c__DisplayClass3_1' '<>8__1'
      .field private class [System.Net.Http]System.Net.Http.HttpResponseMessage '<responseMessage>5__2'
      .field private class [System.Net.Http]System.Net.Http.HttpClient '<client>5__3'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> '<>u__1'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter '<>u__2'
      .field private class Game.WebManager/'<>c__DisplayClass3_1' '<>7__wrap1'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]> '<>u__3'
      .method private hidebysig newslot virtual final 
              instance void  MoveNext() cil managed
      {
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
        // 代码大小       938 (0x3aa)
        .maxstack  5
        .locals init (int32 V_0,
                 class [System.Runtime]System.Uri V_1,
                 class Game.WebManager/ProgressHttpContent V_2,
                 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string> V_3,
                 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string> V_4,
                 class [System.Net.Http]System.Net.Http.HttpResponseMessage V_5,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> V_6,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter V_7,
                 uint8[] V_8,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]> V_9,
                 class Game.WebManager/'<>c__DisplayClass3_2' V_10,
                 class [System.Runtime]System.Exception V_11)
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>1__state'
        IL_0006:  stloc.0
        .try
        {
          IL_0007:  ldloc.0
          IL_0008:  switch     ( 
                                IL_0019,
                                IL_0019,
                                IL_0019)
          IL_0019:  nop
          .try
          {
            IL_001a:  ldloc.0
            IL_001b:  switch     ( 
                                  IL_0049,
                                  IL_0049,
                                  IL_0049)
            IL_002c:  call       bool Game.WebManager::IsInternetConnectionAvailable()
            IL_0031:  brtrue.s   IL_003e

            IL_0033:  ldstr      "Internet connection is unavailable."
            IL_0038:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
            IL_003d:  throw

            IL_003e:  ldarg.0
            IL_003f:  newobj     instance void [System.Net.Http]System.Net.Http.HttpClient::.ctor()
            IL_0044:  stfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<client>5__3'
            IL_0049:  nop
            .try
            {
              IL_004a:  ldloc.0
              IL_004b:  switch     ( 
                                    IL_01b3,
                                    IL_0228,
                                    IL_02b0)
              IL_005c:  ldarg.0
              IL_005d:  newobj     instance void Game.WebManager/'<>c__DisplayClass3_1'::.ctor()
              IL_0062:  stfld      class Game.WebManager/'<>c__DisplayClass3_1' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>8__1'
              IL_0067:  ldarg.0
              IL_0068:  ldfld      class Game.WebManager/'<>c__DisplayClass3_1' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>8__1'
              IL_006d:  ldarg.0
              IL_006e:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_0073:  stfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_1'::'CS$<>8__locals1'
              IL_0078:  ldarg.0
              IL_0079:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_007e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass3_0'::parameters
              IL_0083:  brfalse.s  IL_0098

              IL_0085:  ldarg.0
              IL_0086:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_008b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass3_0'::parameters
              IL_0090:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Count()
              IL_0095:  ldc.i4.0
              IL_0096:  bgt.s      IL_00aa

              IL_0098:  ldarg.0
              IL_0099:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_009e:  ldfld      string Game.WebManager/'<>c__DisplayClass3_0'::address
              IL_00a3:  newobj     instance void [System.Runtime]System.Uri::.ctor(string)
              IL_00a8:  br.s       IL_00e0

              IL_00aa:  ldstr      "{0}\?{1}"
              IL_00af:  ldc.i4.2
              IL_00b0:  newarr     [System.Runtime]System.Object
              IL_00b5:  dup
              IL_00b6:  ldc.i4.0
              IL_00b7:  ldarg.0
              IL_00b8:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_00bd:  ldfld      string Game.WebManager/'<>c__DisplayClass3_0'::address
              IL_00c2:  stelem.ref
              IL_00c3:  dup
              IL_00c4:  ldc.i4.1
              IL_00c5:  ldarg.0
              IL_00c6:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_00cb:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass3_0'::parameters
              IL_00d0:  call       string Game.WebManager::UrlParametersToString(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
              IL_00d5:  stelem.ref
              IL_00d6:  call       string [System.Runtime]System.String::Format(string,
                                                                                object[])
              IL_00db:  newobj     instance void [System.Runtime]System.Uri::.ctor(string)
              IL_00e0:  stloc.1
              IL_00e1:  ldarg.0
              IL_00e2:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_00e7:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass3_0'::data
              IL_00ec:  ldarg.0
              IL_00ed:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_00f2:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass3_0'::progress
              IL_00f7:  newobj     instance void Game.WebManager/ProgressHttpContent::.ctor(class [System.IO]System.IO.Stream,
                                                                                            class Game.CancellableProgress)
              IL_00fc:  stloc.2
              IL_00fd:  ldarg.0
              IL_00fe:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_0103:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass3_0'::headers
              IL_0108:  brfalse.s  IL_015d

              IL_010a:  ldarg.0
              IL_010b:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_0110:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass3_0'::headers
              IL_0115:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::GetEnumerator()
              IL_011a:  stloc.3
              .try
              {
                IL_011b:  br.s       IL_0140

                IL_011d:  ldloca.s   V_3
                IL_011f:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::get_Current()
                IL_0124:  stloc.s    V_4
                IL_0126:  ldloc.2
                IL_0127:  callvirt   instance class [System.Net.Http]System.Net.Http.Headers.HttpContentHeaders [System.Net.Http]System.Net.Http.HttpContent::get_Headers()
                IL_012c:  ldloca.s   V_4
                IL_012e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Key()
                IL_0133:  ldloca.s   V_4
                IL_0135:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Value()
                IL_013a:  callvirt   instance bool [System.Net.Http]System.Net.Http.Headers.HttpHeaders::TryAddWithoutValidation(string,
                                                                                                                                 string)
                IL_013f:  pop
                IL_0140:  ldloca.s   V_3
                IL_0142:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::MoveNext()
                IL_0147:  brtrue.s   IL_011d

                IL_0149:  leave.s    IL_015d

              }  // end .try
              finally
              {
                IL_014b:  ldloc.0
                IL_014c:  ldc.i4.0
                IL_014d:  bge.s      IL_015c

                IL_014f:  ldloca.s   V_3
                IL_0151:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>
                IL_0157:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
                IL_015c:  endfinally
              }  // end handler
              IL_015d:  ldarg.0
              IL_015e:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<client>5__3'
              IL_0163:  ldloc.1
              IL_0164:  ldloc.2
              IL_0165:  ldarg.0
              IL_0166:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
              IL_016b:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass3_0'::progress
              IL_0170:  ldfld      class [System.Threading.Tasks]System.Threading.CancellationTokenSource Game.CancellableProgress::CancellationTokenSource
              IL_0175:  callvirt   instance valuetype [System.Threading.Tasks]System.Threading.CancellationToken [System.Threading.Tasks]System.Threading.CancellationTokenSource::get_Token()
              IL_017a:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::PostAsync(class [System.Runtime]System.Uri,
                                                                                                                                                                                                                           class [System.Net.Http]System.Net.Http.HttpContent,
                                                                                                                                                                                                                           valuetype [System.Threading.Tasks]System.Threading.CancellationToken)
              IL_017f:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::GetAwaiter()
              IL_0184:  stloc.s    V_6
              IL_0186:  ldloca.s   V_6
              IL_0188:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::get_IsCompleted()
              IL_018d:  brtrue.s   IL_01d0

              IL_018f:  ldarg.0
              IL_0190:  ldc.i4.0
              IL_0191:  dup
              IL_0192:  stloc.0
              IL_0193:  stfld      int32 Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>1__state'
              IL_0198:  ldarg.0
              IL_0199:  ldloc.s    V_6
              IL_019b:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>u__1'
              IL_01a0:  ldarg.0
              IL_01a1:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>t__builder'
              IL_01a6:  ldloca.s   V_6
              IL_01a8:  ldarg.0
              IL_01a9:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>,valuetype Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                      !!1&)
              IL_01ae:  leave      IL_03a9

              IL_01b3:  ldarg.0
              IL_01b4:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>u__1'
              IL_01b9:  stloc.s    V_6
              IL_01bb:  ldarg.0
              IL_01bc:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>u__1'
              IL_01c1:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>
              IL_01c7:  ldarg.0
              IL_01c8:  ldc.i4.m1
              IL_01c9:  dup
              IL_01ca:  stloc.0
              IL_01cb:  stfld      int32 Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>1__state'
              IL_01d0:  ldloca.s   V_6
              IL_01d2:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::GetResult()
              IL_01d7:  ldloca.s   V_6
              IL_01d9:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>
              IL_01df:  stloc.s    V_5
              IL_01e1:  ldarg.0
              IL_01e2:  ldloc.s    V_5
              IL_01e4:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<responseMessage>5__2'
              IL_01e9:  ldarg.0
              IL_01ea:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<responseMessage>5__2'
              IL_01ef:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task Game.WebManager::VerifyResponse(class [System.Net.Http]System.Net.Http.HttpResponseMessage)
              IL_01f4:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter [System.Threading.Tasks]System.Threading.Tasks.Task::GetAwaiter()
              IL_01f9:  stloc.s    V_7
              IL_01fb:  ldloca.s   V_7
              IL_01fd:  call       instance bool [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
              IL_0202:  brtrue.s   IL_0245

              IL_0204:  ldarg.0
              IL_0205:  ldc.i4.1
              IL_0206:  dup
              IL_0207:  stloc.0
              IL_0208:  stfld      int32 Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>1__state'
              IL_020d:  ldarg.0
              IL_020e:  ldloc.s    V_7
              IL_0210:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>u__2'
              IL_0215:  ldarg.0
              IL_0216:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>t__builder'
              IL_021b:  ldloca.s   V_7
              IL_021d:  ldarg.0
              IL_021e:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter,valuetype Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                        !!1&)
              IL_0223:  leave      IL_03a9

              IL_0228:  ldarg.0
              IL_0229:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>u__2'
              IL_022e:  stloc.s    V_7
              IL_0230:  ldarg.0
              IL_0231:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>u__2'
              IL_0236:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
              IL_023c:  ldarg.0
              IL_023d:  ldc.i4.m1
              IL_023e:  dup
              IL_023f:  stloc.0
              IL_0240:  stfld      int32 Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>1__state'
              IL_0245:  ldloca.s   V_7
              IL_0247:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
              IL_024c:  ldloca.s   V_7
              IL_024e:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
              IL_0254:  ldarg.0
              IL_0255:  ldarg.0
              IL_0256:  ldfld      class Game.WebManager/'<>c__DisplayClass3_1' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>8__1'
              IL_025b:  stfld      class Game.WebManager/'<>c__DisplayClass3_1' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>7__wrap1'
              IL_0260:  ldarg.0
              IL_0261:  ldfld      class Game.WebManager/'<>c__DisplayClass3_1' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>7__wrap1'
              IL_0266:  ldfld      uint8[] Game.WebManager/'<>c__DisplayClass3_1'::responseData
              IL_026b:  pop
              IL_026c:  ldarg.0
              IL_026d:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<responseMessage>5__2'
              IL_0272:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
              IL_0277:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<uint8[]> [System.Net.Http]System.Net.Http.HttpContent::ReadAsByteArrayAsync()
              IL_027c:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<uint8[]>::GetAwaiter()
              IL_0281:  stloc.s    V_9
              IL_0283:  ldloca.s   V_9
              IL_0285:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]>::get_IsCompleted()
              IL_028a:  brtrue.s   IL_02cd

              IL_028c:  ldarg.0
              IL_028d:  ldc.i4.2
              IL_028e:  dup
              IL_028f:  stloc.0
              IL_0290:  stfld      int32 Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>1__state'
              IL_0295:  ldarg.0
              IL_0296:  ldloc.s    V_9
              IL_0298:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]> Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>u__3'
              IL_029d:  ldarg.0
              IL_029e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>t__builder'
              IL_02a3:  ldloca.s   V_9
              IL_02a5:  ldarg.0
              IL_02a6:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]>,valuetype Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                   !!1&)
              IL_02ab:  leave      IL_03a9

              IL_02b0:  ldarg.0
              IL_02b1:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]> Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>u__3'
              IL_02b6:  stloc.s    V_9
              IL_02b8:  ldarg.0
              IL_02b9:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]> Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>u__3'
              IL_02be:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]>
              IL_02c4:  ldarg.0
              IL_02c5:  ldc.i4.m1
              IL_02c6:  dup
              IL_02c7:  stloc.0
              IL_02c8:  stfld      int32 Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>1__state'
              IL_02cd:  ldloca.s   V_9
              IL_02cf:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]>::GetResult()
              IL_02d4:  ldloca.s   V_9
              IL_02d6:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]>
              IL_02dc:  stloc.s    V_8
              IL_02de:  ldarg.0
              IL_02df:  ldfld      class Game.WebManager/'<>c__DisplayClass3_1' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>7__wrap1'
              IL_02e4:  ldloc.s    V_8
              IL_02e6:  stfld      uint8[] Game.WebManager/'<>c__DisplayClass3_1'::responseData
              IL_02eb:  ldarg.0
              IL_02ec:  ldnull
              IL_02ed:  stfld      class Game.WebManager/'<>c__DisplayClass3_1' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>7__wrap1'
              IL_02f2:  ldarg.0
              IL_02f3:  ldfld      class Game.WebManager/'<>c__DisplayClass3_1' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>8__1'
              IL_02f8:  ldftn      instance void Game.WebManager/'<>c__DisplayClass3_1'::'<Post>b__1'()
              IL_02fe:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                      native int)
              IL_0303:  ldc.i4.0
              IL_0304:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                            bool)
              IL_0309:  ldarg.0
              IL_030a:  ldnull
              IL_030b:  stfld      class Game.WebManager/'<>c__DisplayClass3_1' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>8__1'
              IL_0310:  ldarg.0
              IL_0311:  ldnull
              IL_0312:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<responseMessage>5__2'
              IL_0317:  leave.s    IL_0331

            }  // end .try
            finally
            {
              IL_0319:  ldloc.0
              IL_031a:  ldc.i4.0
              IL_031b:  bge.s      IL_0330

              IL_031d:  ldarg.0
              IL_031e:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<client>5__3'
              IL_0323:  brfalse.s  IL_0330

              IL_0325:  ldarg.0
              IL_0326:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<client>5__3'
              IL_032b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
              IL_0330:  endfinally
            }  // end handler
            IL_0331:  ldarg.0
            IL_0332:  ldnull
            IL_0333:  stfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<client>5__3'
            IL_0338:  leave.s    IL_037b

          }  // end .try
          catch [System.Runtime]System.Exception 
          {
            IL_033a:  newobj     instance void Game.WebManager/'<>c__DisplayClass3_2'::.ctor()
            IL_033f:  stloc.s    V_10
            IL_0341:  ldloc.s    V_10
            IL_0343:  ldarg.0
            IL_0344:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
            IL_0349:  stfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_2'::'CS$<>8__locals2'
            IL_034e:  stloc.s    V_11
            IL_0350:  ldloc.s    V_10
            IL_0352:  ldloc.s    V_11
            IL_0354:  stfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass3_2'::e
            IL_0359:  ldnull
            IL_035a:  ldloc.s    V_10
            IL_035c:  ldfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass3_2'::e
            IL_0361:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                                   class [System.Runtime]System.Exception)
            IL_0366:  ldloc.s    V_10
            IL_0368:  ldftn      instance void Game.WebManager/'<>c__DisplayClass3_2'::'<Post>b__2'()
            IL_036e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                    native int)
            IL_0373:  ldc.i4.0
            IL_0374:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                          bool)
            IL_0379:  leave.s    IL_037b

          }  // end handler
          IL_037b:  leave.s    IL_0396

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_037d:  stloc.s    V_11
          IL_037f:  ldarg.0
          IL_0380:  ldc.i4.s   -2
          IL_0382:  stfld      int32 Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>1__state'
          IL_0387:  ldarg.0
          IL_0388:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>t__builder'
          IL_038d:  ldloc.s    V_11
          IL_038f:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
          IL_0394:  leave.s    IL_03a9

        }  // end handler
        IL_0396:  ldarg.0
        IL_0397:  ldc.i4.s   -2
        IL_0399:  stfld      int32 Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>1__state'
        IL_039e:  ldarg.0
        IL_039f:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>t__builder'
        IL_03a4:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
        IL_03a9:  ret
      } // end of method '<<Post>b__0>d'::MoveNext

      .method private hidebysig newslot virtual final 
              instance void  SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
      {
        .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
        // 代码大小       13 (0xd)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>t__builder'
        IL_0006:  ldarg.1
        IL_0007:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine)
        IL_000c:  ret
      } // end of method '<<Post>b__0>d'::SetStateMachine

    } // end of class '<<Post>b__0>d'

    .field public class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> parameters
    .field public string address
    .field public class [System.IO]System.IO.Stream data
    .field public class Game.CancellableProgress progress
    .field public class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> headers
    .field public class [System.Runtime]System.Action`1<uint8[]> success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_0'::.ctor

    .method assembly hidebysig instance class [System.Threading.Tasks]System.Threading.Tasks.Task 
            '<Post>b__0'() cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 32 47 61 6D 65 2E 57 65 62 4D 61 6E 61 67   // ..2Game.WebManag
                                                                                                                                                     65 72 2B 3C 3E 63 5F 5F 44 69 73 70 6C 61 79 43   // er+<>c__DisplayC
                                                                                                                                                     6C 61 73 73 33 5F 30 2B 3C 3C 50 6F 73 74 3E 62   // lass3_0+<<Post>b
                                                                                                                                                     5F 5F 30 3E 64 00 00 )                            // __0>d..
      // 代码大小       57 (0x39)
      .maxstack  2
      .locals init (valuetype Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d' V_0,
               valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder V_1)
      IL_0000:  ldloca.s   V_0
      IL_0002:  ldarg.0
      IL_0003:  stfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>4__this'
      IL_0008:  ldloca.s   V_0
      IL_000a:  call       valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
      IL_000f:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>t__builder'
      IL_0014:  ldloca.s   V_0
      IL_0016:  ldc.i4.m1
      IL_0017:  stfld      int32 Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>1__state'
      IL_001c:  ldloc.0
      IL_001d:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>t__builder'
      IL_0022:  stloc.1
      IL_0023:  ldloca.s   V_1
      IL_0025:  ldloca.s   V_0
      IL_0027:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'>(!!0&)
      IL_002c:  ldloca.s   V_0
      IL_002e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass3_0'/'<<Post>b__0>d'::'<>t__builder'
      IL_0033:  call       instance class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
      IL_0038:  ret
    } // end of method '<>c__DisplayClass3_0'::'<Post>b__0'

  } // end of class '<>c__DisplayClass3_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public uint8[] responseData
    .field public class Game.WebManager/'<>c__DisplayClass3_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_1'::.ctor

    .method assembly hidebysig instance void 
            '<Post>b__1'() cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_1'::'CS$<>8__locals1'
      IL_0006:  ldfld      class [System.Runtime]System.Action`1<uint8[]> Game.WebManager/'<>c__DisplayClass3_0'::success
      IL_000b:  ldarg.0
      IL_000c:  ldfld      uint8[] Game.WebManager/'<>c__DisplayClass3_1'::responseData
      IL_0011:  callvirt   instance void class [System.Runtime]System.Action`1<uint8[]>::Invoke(!0)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass3_1'::'<Post>b__1'

  } // end of class '<>c__DisplayClass3_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_2'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Exception e
    .field public class Game.WebManager/'<>c__DisplayClass3_0' 'CS$<>8__locals2'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_2'::.ctor

    .method assembly hidebysig instance void 
            '<Post>b__2'() cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.WebManager/'<>c__DisplayClass3_0' Game.WebManager/'<>c__DisplayClass3_2'::'CS$<>8__locals2'
      IL_0006:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.WebManager/'<>c__DisplayClass3_0'::failure
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass3_2'::e
      IL_0011:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass3_2'::'<Post>b__2'

  } // end of class '<>c__DisplayClass3_2'

  .class auto ansi sealed nested private beforefieldinit '<VerifyResponse>d__11'
         extends [System.Runtime]System.ValueType
         implements [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public class [System.Net.Http]System.Net.Http.HttpResponseMessage message
    .field private string '<responseText>5__1'
    .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> '<>u__1'
    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // 代码大小       288 (0x120)
      .maxstack  5
      .locals init (int32 V_0,
               string V_1,
               valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> V_2,
               valuetype [System.Net.Primitives]System.Net.HttpStatusCode V_3,
               class [System.Runtime]System.Exception V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.WebManager/'<VerifyResponse>d__11'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_0025

        IL_000a:  ldarg.0
        IL_000b:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<VerifyResponse>d__11'::message
        IL_0010:  callvirt   instance bool [System.Net.Http]System.Net.Http.HttpResponseMessage::get_IsSuccessStatusCode()
        IL_0015:  brtrue     IL_00f1

        IL_001a:  ldarg.0
        IL_001b:  ldsfld     string [System.Runtime]System.String::Empty
        IL_0020:  stfld      string Game.WebManager/'<VerifyResponse>d__11'::'<responseText>5__1'
        IL_0025:  nop
        .try
        {
          IL_0026:  ldloc.0
          IL_0027:  brfalse.s  IL_006b

          IL_0029:  ldarg.0
          IL_002a:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<VerifyResponse>d__11'::message
          IL_002f:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
          IL_0034:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<string> [System.Net.Http]System.Net.Http.HttpContent::ReadAsStringAsync()
          IL_0039:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<string>::GetAwaiter()
          IL_003e:  stloc.2
          IL_003f:  ldloca.s   V_2
          IL_0041:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>::get_IsCompleted()
          IL_0046:  brtrue.s   IL_0087

          IL_0048:  ldarg.0
          IL_0049:  ldc.i4.0
          IL_004a:  dup
          IL_004b:  stloc.0
          IL_004c:  stfld      int32 Game.WebManager/'<VerifyResponse>d__11'::'<>1__state'
          IL_0051:  ldarg.0
          IL_0052:  ldloc.2
          IL_0053:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> Game.WebManager/'<VerifyResponse>d__11'::'<>u__1'
          IL_0058:  ldarg.0
          IL_0059:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__11'::'<>t__builder'
          IL_005e:  ldloca.s   V_2
          IL_0060:  ldarg.0
          IL_0061:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>,valuetype Game.WebManager/'<VerifyResponse>d__11'>(!!0&,
                                                                                                                                                                                                                                                                                               !!1&)
          IL_0066:  leave      IL_011f

          IL_006b:  ldarg.0
          IL_006c:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> Game.WebManager/'<VerifyResponse>d__11'::'<>u__1'
          IL_0071:  stloc.2
          IL_0072:  ldarg.0
          IL_0073:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> Game.WebManager/'<VerifyResponse>d__11'::'<>u__1'
          IL_0078:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>
          IL_007e:  ldarg.0
          IL_007f:  ldc.i4.m1
          IL_0080:  dup
          IL_0081:  stloc.0
          IL_0082:  stfld      int32 Game.WebManager/'<VerifyResponse>d__11'::'<>1__state'
          IL_0087:  ldloca.s   V_2
          IL_0089:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>::GetResult()
          IL_008e:  ldloca.s   V_2
          IL_0090:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>
          IL_0096:  stloc.1
          IL_0097:  ldarg.0
          IL_0098:  ldloc.1
          IL_0099:  stfld      string Game.WebManager/'<VerifyResponse>d__11'::'<responseText>5__1'
          IL_009e:  leave.s    IL_00a3

        }  // end .try
        catch [System.Runtime]System.Object 
        {
          IL_00a0:  pop
          IL_00a1:  leave.s    IL_00a3

        }  // end handler
        IL_00a3:  ldstr      "{0} ({1})\n{2}"
        IL_00a8:  ldc.i4.3
        IL_00a9:  newarr     [System.Runtime]System.Object
        IL_00ae:  dup
        IL_00af:  ldc.i4.0
        IL_00b0:  ldarg.0
        IL_00b1:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<VerifyResponse>d__11'::message
        IL_00b6:  callvirt   instance valuetype [System.Net.Primitives]System.Net.HttpStatusCode [System.Net.Http]System.Net.Http.HttpResponseMessage::get_StatusCode()
        IL_00bb:  stloc.3
        IL_00bc:  ldloca.s   V_3
        IL_00be:  constrained. [System.Net.Primitives]System.Net.HttpStatusCode
        IL_00c4:  callvirt   instance string [System.Runtime]System.Object::ToString()
        IL_00c9:  stelem.ref
        IL_00ca:  dup
        IL_00cb:  ldc.i4.1
        IL_00cc:  ldarg.0
        IL_00cd:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<VerifyResponse>d__11'::message
        IL_00d2:  callvirt   instance valuetype [System.Net.Primitives]System.Net.HttpStatusCode [System.Net.Http]System.Net.Http.HttpResponseMessage::get_StatusCode()
        IL_00d7:  box        [System.Runtime]System.Int32
        IL_00dc:  stelem.ref
        IL_00dd:  dup
        IL_00de:  ldc.i4.2
        IL_00df:  ldarg.0
        IL_00e0:  ldfld      string Game.WebManager/'<VerifyResponse>d__11'::'<responseText>5__1'
        IL_00e5:  stelem.ref
        IL_00e6:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_00eb:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
        IL_00f0:  throw

        IL_00f1:  leave.s    IL_010c

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_00f3:  stloc.s    V_4
        IL_00f5:  ldarg.0
        IL_00f6:  ldc.i4.s   -2
        IL_00f8:  stfld      int32 Game.WebManager/'<VerifyResponse>d__11'::'<>1__state'
        IL_00fd:  ldarg.0
        IL_00fe:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__11'::'<>t__builder'
        IL_0103:  ldloc.s    V_4
        IL_0105:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_010a:  leave.s    IL_011f

      }  // end handler
      IL_010c:  ldarg.0
      IL_010d:  ldc.i4.s   -2
      IL_010f:  stfld      int32 Game.WebManager/'<VerifyResponse>d__11'::'<>1__state'
      IL_0114:  ldarg.0
      IL_0115:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__11'::'<>t__builder'
      IL_011a:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_011f:  ret
    } // end of method '<VerifyResponse>d__11'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__11'::'<>t__builder'
      IL_0006:  ldarg.1
      IL_0007:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine)
      IL_000c:  ret
    } // end of method '<VerifyResponse>d__11'::SetStateMachine

  } // end of class '<VerifyResponse>d__11'

  .method public hidebysig static bool  IsInternetConnectionAvailable() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  2
    .locals init (class [Windows]Windows.Networking.Connectivity.ConnectionProfile V_0,
             bool V_1,
             class [System.Runtime]System.Exception V_2)
    .try
    {
      IL_0000:  call       class [Windows]Windows.Networking.Connectivity.ConnectionProfile [Windows]Windows.Networking.Connectivity.NetworkInformation::GetInternetConnectionProfile()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  brfalse.s  IL_0014

      IL_0009:  ldloc.0
      IL_000a:  callvirt   instance valuetype [Windows]Windows.Networking.Connectivity.NetworkConnectivityLevel [Windows]Windows.Networking.Connectivity.ConnectionProfile::GetNetworkConnectivityLevel()
      IL_000f:  ldc.i4.3
      IL_0010:  ceq
      IL_0012:  br.s       IL_0015

      IL_0014:  ldc.i4.0
      IL_0015:  stloc.1
      IL_0016:  leave.s    IL_002d

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0018:  stloc.2
      IL_0019:  ldstr      "Could not check internet connection availability."
      IL_001e:  ldloc.2
      IL_001f:  call       string Game.ExceptionManager::MakeFullErrorMessage(string,
                                                                              class [System.Runtime]System.Exception)
      IL_0024:  call       void [Engine]Engine.Log::Warning(string)
      IL_0029:  leave.s    IL_002b

    }  // end handler
    IL_002b:  ldc.i4.1
    IL_002c:  ret

    IL_002d:  ldloc.1
    IL_002e:  ret
  } // end of method WebManager::IsInternetConnectionAvailable

  .method public hidebysig static void  Get(string address,
                                            class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> parameters,
                                            class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> headers,
                                            class Game.CancellableProgress progress,
                                            class [System.Runtime]System.Action`1<uint8[]> success,
                                            class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  3
    IL_0000:  newobj     instance void Game.WebManager/'<>c__DisplayClass2_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.3
    IL_0007:  stfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass2_0'::progress
    IL_000c:  dup
    IL_000d:  ldarg.1
    IL_000e:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass2_0'::parameters
    IL_0013:  dup
    IL_0014:  ldarg.0
    IL_0015:  stfld      string Game.WebManager/'<>c__DisplayClass2_0'::address
    IL_001a:  dup
    IL_001b:  ldarg.2
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass2_0'::headers
    IL_0021:  dup
    IL_0022:  ldarg.s    success
    IL_0024:  stfld      class [System.Runtime]System.Action`1<uint8[]> Game.WebManager/'<>c__DisplayClass2_0'::success
    IL_0029:  dup
    IL_002a:  ldarg.s    failure
    IL_002c:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.WebManager/'<>c__DisplayClass2_0'::failure
    IL_0031:  ldftn      instance class [System.Threading.Tasks]System.Threading.Tasks.Task Game.WebManager/'<>c__DisplayClass2_0'::'<Get>b__0'()
    IL_0037:  newobj     instance void class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>::.ctor(object,
                                                                                                                                             native int)
    IL_003c:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>)
    IL_0041:  pop
    IL_0042:  ret
  } // end of method WebManager::Get

  .method public hidebysig static void  Post(string address,
                                             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> parameters,
                                             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> headers,
                                             class [System.IO]System.IO.Stream data,
                                             class Game.CancellableProgress progress,
                                             class [System.Runtime]System.Action`1<uint8[]> success,
                                             class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       75 (0x4b)
    .maxstack  3
    IL_0000:  newobj     instance void Game.WebManager/'<>c__DisplayClass3_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.1
    IL_0007:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass3_0'::parameters
    IL_000c:  dup
    IL_000d:  ldarg.0
    IL_000e:  stfld      string Game.WebManager/'<>c__DisplayClass3_0'::address
    IL_0013:  dup
    IL_0014:  ldarg.3
    IL_0015:  stfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass3_0'::data
    IL_001a:  dup
    IL_001b:  ldarg.s    progress
    IL_001d:  stfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass3_0'::progress
    IL_0022:  dup
    IL_0023:  ldarg.2
    IL_0024:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass3_0'::headers
    IL_0029:  dup
    IL_002a:  ldarg.s    success
    IL_002c:  stfld      class [System.Runtime]System.Action`1<uint8[]> Game.WebManager/'<>c__DisplayClass3_0'::success
    IL_0031:  dup
    IL_0032:  ldarg.s    failure
    IL_0034:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.WebManager/'<>c__DisplayClass3_0'::failure
    IL_0039:  ldftn      instance class [System.Threading.Tasks]System.Threading.Tasks.Task Game.WebManager/'<>c__DisplayClass3_0'::'<Post>b__0'()
    IL_003f:  newobj     instance void class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>::.ctor(object,
                                                                                                                                             native int)
    IL_0044:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>)
    IL_0049:  pop
    IL_004a:  ret
  } // end of method WebManager::Post

  .method public hidebysig static string 
          UrlParametersToString(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> values) cil managed
  {
    // 代码大小       136 (0x88)
    .maxstack  2
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0,
             string V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string> V_2,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string> V_3)
    IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000b:  stloc.1
    IL_000c:  ldarg.0
    IL_000d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::GetEnumerator()
    IL_0012:  stloc.2
    .try
    {
      IL_0013:  br.s       IL_0068

      IL_0015:  ldloca.s   V_2
      IL_0017:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::get_Current()
      IL_001c:  stloc.3
      IL_001d:  ldloc.0
      IL_001e:  ldloc.1
      IL_001f:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_0024:  pop
      IL_0025:  ldstr      "&"
      IL_002a:  stloc.1
      IL_002b:  ldloc.0
      IL_002c:  ldloca.s   V_3
      IL_002e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Key()
      IL_0033:  call       string [System.Runtime]System.Uri::EscapeDataString(string)
      IL_0038:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_003d:  pop
      IL_003e:  ldloc.0
      IL_003f:  ldc.i4.s   61
      IL_0041:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_0046:  pop
      IL_0047:  ldloca.s   V_3
      IL_0049:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Value()
      IL_004e:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0053:  brtrue.s   IL_0068

      IL_0055:  ldloc.0
      IL_0056:  ldloca.s   V_3
      IL_0058:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Value()
      IL_005d:  call       string [System.Runtime]System.Uri::EscapeDataString(string)
      IL_0062:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_0067:  pop
      IL_0068:  ldloca.s   V_2
      IL_006a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::MoveNext()
      IL_006f:  brtrue.s   IL_0015

      IL_0071:  leave.s    IL_0081

    }  // end .try
    finally
    {
      IL_0073:  ldloca.s   V_2
      IL_0075:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>
      IL_007b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0080:  endfinally
    }  // end handler
    IL_0081:  ldloc.0
    IL_0082:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0087:  ret
  } // end of method WebManager::UrlParametersToString

  .method public hidebysig static uint8[] 
          UrlParametersToBytes(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> values) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
    IL_0005:  ldarg.0
    IL_0006:  call       string Game.WebManager::UrlParametersToString(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
    IL_000b:  callvirt   instance uint8[] [System.Text.Encoding]System.Text.Encoding::GetBytes(string)
    IL_0010:  ret
  } // end of method WebManager::UrlParametersToBytes

  .method public hidebysig static class [System.IO]System.IO.MemoryStream 
          UrlParametersToStream(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> values) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
    IL_0005:  ldarg.0
    IL_0006:  call       string Game.WebManager::UrlParametersToString(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
    IL_000b:  callvirt   instance uint8[] [System.Text.Encoding]System.Text.Encoding::GetBytes(string)
    IL_0010:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(uint8[])
    IL_0015:  ret
  } // end of method WebManager::UrlParametersToStream

  .method public hidebysig static class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> 
          UrlParametersFromString(string s) cil managed
  {
    // 代码大小       84 (0x54)
    .maxstack  5
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_0,
             string[] V_1,
             int32 V_2,
             string[] V_3)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  newarr     [System.Runtime]System.Char
    IL_000d:  dup
    IL_000e:  ldc.i4.0
    IL_000f:  ldc.i4.s   38
    IL_0011:  stelem.i2
    IL_0012:  ldc.i4.1
    IL_0013:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_0018:  stloc.1
    IL_0019:  ldc.i4.0
    IL_001a:  stloc.2
    IL_001b:  br.s       IL_004c

    IL_001d:  ldloc.1
    IL_001e:  ldloc.2
    IL_001f:  ldelem.ref
    IL_0020:  call       string [System.Runtime]System.Uri::UnescapeDataString(string)
    IL_0025:  ldc.i4.1
    IL_0026:  newarr     [System.Runtime]System.Char
    IL_002b:  dup
    IL_002c:  ldc.i4.0
    IL_002d:  ldc.i4.s   61
    IL_002f:  stelem.i2
    IL_0030:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0035:  stloc.3
    IL_0036:  ldloc.3
    IL_0037:  ldlen
    IL_0038:  conv.i4
    IL_0039:  ldc.i4.2
    IL_003a:  bne.un.s   IL_0048

    IL_003c:  ldloc.0
    IL_003d:  ldloc.3
    IL_003e:  ldc.i4.0
    IL_003f:  ldelem.ref
    IL_0040:  ldloc.3
    IL_0041:  ldc.i4.1
    IL_0042:  ldelem.ref
    IL_0043:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::set_Item(!0,
                                                                                                                                  !1)
    IL_0048:  ldloc.2
    IL_0049:  ldc.i4.1
    IL_004a:  add
    IL_004b:  stloc.2
    IL_004c:  ldloc.2
    IL_004d:  ldloc.1
    IL_004e:  ldlen
    IL_004f:  conv.i4
    IL_0050:  blt.s      IL_001d

    IL_0052:  ldloc.0
    IL_0053:  ret
  } // end of method WebManager::UrlParametersFromString

  .method public hidebysig static class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> 
          UrlParametersFromBytes(uint8[] bytes) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.0
    IL_0007:  ldarg.0
    IL_0008:  ldlen
    IL_0009:  conv.i4
    IL_000a:  callvirt   instance string [System.Text.Encoding]System.Text.Encoding::GetString(uint8[],
                                                                                               int32,
                                                                                               int32)
    IL_000f:  call       class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager::UrlParametersFromString(string)
    IL_0014:  ret
  } // end of method WebManager::UrlParametersFromBytes

  .method public hidebysig static object 
          JsonFromString(string s) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       object SimpleJson.SimpleJson::DeserializeObject(string)
    IL_0006:  ret
  } // end of method WebManager::JsonFromString

  .method public hidebysig static object 
          JsonFromBytes(uint8[] bytes) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.0
    IL_0007:  ldarg.0
    IL_0008:  ldlen
    IL_0009:  conv.i4
    IL_000a:  callvirt   instance string [System.Text.Encoding]System.Text.Encoding::GetString(uint8[],
                                                                                               int32,
                                                                                               int32)
    IL_000f:  call       object Game.WebManager::JsonFromString(string)
    IL_0014:  ret
  } // end of method WebManager::JsonFromBytes

  .method private hidebysig static class [System.Threading.Tasks]System.Threading.Tasks.Task 
          VerifyResponse(class [System.Net.Http]System.Net.Http.HttpResponseMessage message) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 25 47 61 6D 65 2E 57 65 62 4D 61 6E 61 67   // ..%Game.WebManag
                                                                                                                                                   65 72 2B 3C 56 65 72 69 66 79 52 65 73 70 6F 6E   // er+<VerifyRespon
                                                                                                                                                   73 65 3E 64 5F 5F 31 31 00 00 )                   // se>d__11..
    // 代码大小       57 (0x39)
    .maxstack  2
    .locals init (valuetype Game.WebManager/'<VerifyResponse>d__11' V_0,
             valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.0
    IL_0003:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<VerifyResponse>d__11'::message
    IL_0008:  ldloca.s   V_0
    IL_000a:  call       valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000f:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__11'::'<>t__builder'
    IL_0014:  ldloca.s   V_0
    IL_0016:  ldc.i4.m1
    IL_0017:  stfld      int32 Game.WebManager/'<VerifyResponse>d__11'::'<>1__state'
    IL_001c:  ldloc.0
    IL_001d:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__11'::'<>t__builder'
    IL_0022:  stloc.1
    IL_0023:  ldloca.s   V_1
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype Game.WebManager/'<VerifyResponse>d__11'>(!!0&)
    IL_002c:  ldloca.s   V_0
    IL_002e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__11'::'<>t__builder'
    IL_0033:  call       instance class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_0038:  ret
  } // end of method WebManager::VerifyResponse

} // end of class Game.WebManager