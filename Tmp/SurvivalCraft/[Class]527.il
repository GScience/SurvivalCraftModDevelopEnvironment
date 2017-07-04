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
        // 代码大小       393 (0x189)
        .maxstack  5
        .locals init (int32 V_0,
                 valuetype [System.Threading.Tasks]System.Threading.CancellationToken V_1,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter V_2,
                 class [System.Runtime]System.Exception V_3)
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
        IL_0006:  stloc.0
        .try
        {
          IL_0007:  ldloc.0
          IL_0008:  brfalse    IL_0111

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
          IL_006f:  ldfld      valuetype [System.Threading.Tasks]System.Threading.CancellationToken Game.CancellableProgress::CancellationToken
          IL_0074:  stloc.1
          IL_0075:  ldloca.s   V_1
          IL_0077:  call       instance bool [System.Threading.Tasks]System.Threading.CancellationToken::get_IsCancellationRequested()
          IL_007c:  brfalse.s  IL_0089

          IL_007e:  ldstr      "Operation cancelled."
          IL_0083:  newobj     instance void [System.Threading.Tasks]System.OperationCanceledException::.ctor(string)
          IL_0088:  throw

          IL_0089:  ldarg.0
          IL_008a:  ldarg.0
          IL_008b:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>4__this'
          IL_0090:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/ProgressHttpContent::m_sourceStream
          IL_0095:  ldarg.0
          IL_0096:  ldfld      uint8[] Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<buffer>5__1'
          IL_009b:  ldc.i4.0
          IL_009c:  ldarg.0
          IL_009d:  ldfld      uint8[] Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<buffer>5__1'
          IL_00a2:  ldlen
          IL_00a3:  conv.i4
          IL_00a4:  callvirt   instance int32 [System.IO]System.IO.Stream::Read(uint8[],
                                                                                int32,
                                                                                int32)
          IL_00a9:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_00ae:  ldarg.0
          IL_00af:  ldfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_00b4:  ldc.i4.0
          IL_00b5:  ble        IL_0150

          IL_00ba:  ldarg.0
          IL_00bb:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::targetStream
          IL_00c0:  ldarg.0
          IL_00c1:  ldfld      uint8[] Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<buffer>5__1'
          IL_00c6:  ldc.i4.0
          IL_00c7:  ldarg.0
          IL_00c8:  ldfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_00cd:  ldarg.0
          IL_00ce:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>4__this'
          IL_00d3:  ldfld      class Game.CancellableProgress Game.WebManager/ProgressHttpContent::m_progress
          IL_00d8:  ldfld      valuetype [System.Threading.Tasks]System.Threading.CancellationToken Game.CancellableProgress::CancellationToken
          IL_00dd:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task [System.IO]System.IO.Stream::WriteAsync(uint8[],
                                                                                                                                          int32,
                                                                                                                                          int32,
                                                                                                                                          valuetype [System.Threading.Tasks]System.Threading.CancellationToken)
          IL_00e2:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter [System.Threading.Tasks]System.Threading.Tasks.Task::GetAwaiter()
          IL_00e7:  stloc.2
          IL_00e8:  ldloca.s   V_2
          IL_00ea:  call       instance bool [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
          IL_00ef:  brtrue.s   IL_012d

          IL_00f1:  ldarg.0
          IL_00f2:  ldc.i4.0
          IL_00f3:  dup
          IL_00f4:  stloc.0
          IL_00f5:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
          IL_00fa:  ldarg.0
          IL_00fb:  ldloc.2
          IL_00fc:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>u__1'
          IL_0101:  ldarg.0
          IL_0102:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>t__builder'
          IL_0107:  ldloca.s   V_2
          IL_0109:  ldarg.0
          IL_010a:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter,valuetype Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'>(!!0&,
                                                                                                                                                                                                                                                                                                                !!1&)
          IL_010f:  leave.s    IL_0188

          IL_0111:  ldarg.0
          IL_0112:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>u__1'
          IL_0117:  stloc.2
          IL_0118:  ldarg.0
          IL_0119:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>u__1'
          IL_011e:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
          IL_0124:  ldarg.0
          IL_0125:  ldc.i4.m1
          IL_0126:  dup
          IL_0127:  stloc.0
          IL_0128:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
          IL_012d:  ldloca.s   V_2
          IL_012f:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
          IL_0134:  ldloca.s   V_2
          IL_0136:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
          IL_013c:  ldarg.0
          IL_013d:  ldarg.0
          IL_013e:  ldfld      int64 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<written>5__2'
          IL_0143:  ldarg.0
          IL_0144:  ldfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_0149:  conv.i8
          IL_014a:  add
          IL_014b:  stfld      int64 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<written>5__2'
          IL_0150:  ldarg.0
          IL_0151:  ldfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<read>5__3'
          IL_0156:  ldc.i4.0
          IL_0157:  bgt        IL_002c

          IL_015c:  leave.s    IL_0175

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_015e:  stloc.3
          IL_015f:  ldarg.0
          IL_0160:  ldc.i4.s   -2
          IL_0162:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
          IL_0167:  ldarg.0
          IL_0168:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>t__builder'
          IL_016d:  ldloc.3
          IL_016e:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
          IL_0173:  leave.s    IL_0188

        }  // end handler
        IL_0175:  ldarg.0
        IL_0176:  ldc.i4.s   -2
        IL_0178:  stfld      int32 Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>1__state'
        IL_017d:  ldarg.0
        IL_017e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/ProgressHttpContent/'<SerializeToStreamAsync>d__4'::'<>t__builder'
        IL_0183:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
        IL_0188:  ret
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
        // 代码大小       1360 (0x550)
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
                                    IL_01c5,
                                    IL_023a,
                                    IL_02e8,
                                    IL_031e)
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
              IL_0187:  ldfld      valuetype [System.Threading.Tasks]System.Threading.CancellationToken Game.CancellableProgress::CancellationToken
              IL_018c:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(class [System.Runtime]System.Uri,
                                                                                                                                                                                                                          valuetype [System.Net.Http]System.Net.Http.HttpCompletionOption,
                                                                                                                                                                                                                          valuetype [System.Threading.Tasks]System.Threading.CancellationToken)
              IL_0191:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::GetAwaiter()
              IL_0196:  stloc.s    V_6
              IL_0198:  ldloca.s   V_6
              IL_019a:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::get_IsCompleted()
              IL_019f:  brtrue.s   IL_01e2

              IL_01a1:  ldarg.0
              IL_01a2:  ldc.i4.0
              IL_01a3:  dup
              IL_01a4:  stloc.0
              IL_01a5:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_01aa:  ldarg.0
              IL_01ab:  ldloc.s    V_6
              IL_01ad:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__1'
              IL_01b2:  ldarg.0
              IL_01b3:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
              IL_01b8:  ldloca.s   V_6
              IL_01ba:  ldarg.0
              IL_01bb:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>,valuetype Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                     !!1&)
              IL_01c0:  leave      IL_054f

              IL_01c5:  ldarg.0
              IL_01c6:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__1'
              IL_01cb:  stloc.s    V_6
              IL_01cd:  ldarg.0
              IL_01ce:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__1'
              IL_01d3:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>
              IL_01d9:  ldarg.0
              IL_01da:  ldc.i4.m1
              IL_01db:  dup
              IL_01dc:  stloc.0
              IL_01dd:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_01e2:  ldloca.s   V_6
              IL_01e4:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::GetResult()
              IL_01e9:  ldloca.s   V_6
              IL_01eb:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>
              IL_01f1:  stloc.s    V_5
              IL_01f3:  ldarg.0
              IL_01f4:  ldloc.s    V_5
              IL_01f6:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseMessage>5__1'
              IL_01fb:  ldarg.0
              IL_01fc:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseMessage>5__1'
              IL_0201:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task Game.WebManager::VerifyResponse(class [System.Net.Http]System.Net.Http.HttpResponseMessage)
              IL_0206:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter [System.Threading.Tasks]System.Threading.Tasks.Task::GetAwaiter()
              IL_020b:  stloc.s    V_7
              IL_020d:  ldloca.s   V_7
              IL_020f:  call       instance bool [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
              IL_0214:  brtrue.s   IL_0257

              IL_0216:  ldarg.0
              IL_0217:  ldc.i4.1
              IL_0218:  dup
              IL_0219:  stloc.0
              IL_021a:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_021f:  ldarg.0
              IL_0220:  ldloc.s    V_7
              IL_0222:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__2'
              IL_0227:  ldarg.0
              IL_0228:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
              IL_022d:  ldloca.s   V_7
              IL_022f:  ldarg.0
              IL_0230:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter,valuetype Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                       !!1&)
              IL_0235:  leave      IL_054f

              IL_023a:  ldarg.0
              IL_023b:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__2'
              IL_0240:  stloc.s    V_7
              IL_0242:  ldarg.0
              IL_0243:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__2'
              IL_0248:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
              IL_024e:  ldarg.0
              IL_024f:  ldc.i4.m1
              IL_0250:  dup
              IL_0251:  stloc.0
              IL_0252:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_0257:  ldloca.s   V_7
              IL_0259:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
              IL_025e:  ldloca.s   V_7
              IL_0260:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
              IL_0266:  ldarg.0
              IL_0267:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseMessage>5__1'
              IL_026c:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
              IL_0271:  callvirt   instance class [System.Net.Http]System.Net.Http.Headers.HttpContentHeaders [System.Net.Http]System.Net.Http.HttpContent::get_Headers()
              IL_0276:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int64> [System.Net.Http]System.Net.Http.Headers.HttpContentHeaders::get_ContentLength()
              IL_027b:  stloc.2
              IL_027c:  ldarg.0
              IL_027d:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
              IL_0282:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass2_0'::progress
              IL_0287:  ldloc.2
              IL_0288:  stloc.s    V_8
              IL_028a:  ldloca.s   V_8
              IL_028c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int64>::get_HasValue()
              IL_0291:  brtrue.s   IL_0297

              IL_0293:  ldc.i4.0
              IL_0294:  conv.i8
              IL_0295:  br.s       IL_029e

              IL_0297:  ldloca.s   V_8
              IL_0299:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int64>::GetValueOrDefault()
              IL_029e:  conv.r4
              IL_029f:  stfld      float32 Game.Progress::Total
              IL_02a4:  ldarg.0
              IL_02a5:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseMessage>5__1'
              IL_02aa:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
              IL_02af:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.IO]System.IO.Stream> [System.Net.Http]System.Net.Http.HttpContent::ReadAsStreamAsync()
              IL_02b4:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.IO]System.IO.Stream>::GetAwaiter()
              IL_02b9:  stloc.s    V_10
              IL_02bb:  ldloca.s   V_10
              IL_02bd:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>::get_IsCompleted()
              IL_02c2:  brtrue.s   IL_0305

              IL_02c4:  ldarg.0
              IL_02c5:  ldc.i4.2
              IL_02c6:  dup
              IL_02c7:  stloc.0
              IL_02c8:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_02cd:  ldarg.0
              IL_02ce:  ldloc.s    V_10
              IL_02d0:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__3'
              IL_02d5:  ldarg.0
              IL_02d6:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
              IL_02db:  ldloca.s   V_10
              IL_02dd:  ldarg.0
              IL_02de:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>,valuetype Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                                            !!1&)
              IL_02e3:  leave      IL_054f

              IL_02e8:  ldarg.0
              IL_02e9:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__3'
              IL_02ee:  stloc.s    V_10
              IL_02f0:  ldarg.0
              IL_02f1:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__3'
              IL_02f6:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>
              IL_02fc:  ldarg.0
              IL_02fd:  ldc.i4.m1
              IL_02fe:  dup
              IL_02ff:  stloc.0
              IL_0300:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
              IL_0305:  ldloca.s   V_10
              IL_0307:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>::GetResult()
              IL_030c:  ldloca.s   V_10
              IL_030e:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>
              IL_0314:  stloc.s    V_9
              IL_0316:  ldarg.0
              IL_0317:  ldloc.s    V_9
              IL_0319:  stfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseStream>5__2'
              IL_031e:  nop
              .try
              {
                IL_031f:  ldloc.0
                IL_0320:  ldc.i4.3
                IL_0321:  beq.s      IL_034f

                IL_0323:  ldarg.0
                IL_0324:  newobj     instance void Game.WebManager/'<>c__DisplayClass2_1'::.ctor()
                IL_0329:  stfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                IL_032e:  ldarg.0
                IL_032f:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                IL_0334:  ldarg.0
                IL_0335:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
                IL_033a:  stfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
                IL_033f:  ldarg.0
                IL_0340:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                IL_0345:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor()
                IL_034a:  stfld      class [System.IO]System.IO.MemoryStream Game.WebManager/'<>c__DisplayClass2_1'::targetStream
                IL_034f:  nop
                .try
                {
                  IL_0350:  ldloc.0
                  IL_0351:  ldc.i4.3
                  IL_0352:  beq.s      IL_03cd

                  IL_0354:  ldc.i4.0
                  IL_0355:  stloc.s    V_11
                  IL_0357:  ldarg.0
                  IL_0358:  ldc.i4.0
                  IL_0359:  conv.i8
                  IL_035a:  stfld      int64 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<written>5__5'
                  IL_035f:  ldarg.0
                  IL_0360:  ldc.i4     0x400
                  IL_0365:  newarr     [System.Runtime]System.Byte
                  IL_036a:  stfld      uint8[] Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<buffer>5__3'
                  IL_036f:  ldarg.0
                  IL_0370:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseStream>5__2'
                  IL_0375:  ldarg.0
                  IL_0376:  ldfld      uint8[] Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<buffer>5__3'
                  IL_037b:  ldc.i4.0
                  IL_037c:  ldarg.0
                  IL_037d:  ldfld      uint8[] Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<buffer>5__3'
                  IL_0382:  ldlen
                  IL_0383:  conv.i4
                  IL_0384:  ldarg.0
                  IL_0385:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
                  IL_038a:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass2_0'::progress
                  IL_038f:  ldfld      valuetype [System.Threading.Tasks]System.Threading.CancellationToken Game.CancellableProgress::CancellationToken
                  IL_0394:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<int32> [System.IO]System.IO.Stream::ReadAsync(uint8[],
                                                                                                                                                          int32,
                                                                                                                                                          int32,
                                                                                                                                                          valuetype [System.Threading.Tasks]System.Threading.CancellationToken)
                  IL_0399:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<int32>::GetAwaiter()
                  IL_039e:  stloc.s    V_12
                  IL_03a0:  ldloca.s   V_12
                  IL_03a2:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32>::get_IsCompleted()
                  IL_03a7:  brtrue.s   IL_03ea

                  IL_03a9:  ldarg.0
                  IL_03aa:  ldc.i4.3
                  IL_03ab:  dup
                  IL_03ac:  stloc.0
                  IL_03ad:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
                  IL_03b2:  ldarg.0
                  IL_03b3:  ldloc.s    V_12
                  IL_03b5:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__4'
                  IL_03ba:  ldarg.0
                  IL_03bb:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
                  IL_03c0:  ldloca.s   V_12
                  IL_03c2:  ldarg.0
                  IL_03c3:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32>,valuetype Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                    !!1&)
                  IL_03c8:  leave      IL_054f

                  IL_03cd:  ldarg.0
                  IL_03ce:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__4'
                  IL_03d3:  stloc.s    V_12
                  IL_03d5:  ldarg.0
                  IL_03d6:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32> Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>u__4'
                  IL_03db:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32>
                  IL_03e1:  ldarg.0
                  IL_03e2:  ldc.i4.m1
                  IL_03e3:  dup
                  IL_03e4:  stloc.0
                  IL_03e5:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
                  IL_03ea:  ldloca.s   V_12
                  IL_03ec:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32>::GetResult()
                  IL_03f1:  ldloca.s   V_12
                  IL_03f3:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<int32>
                  IL_03f9:  stloc.s    V_11
                  IL_03fb:  ldloc.s    V_11
                  IL_03fd:  ldc.i4.0
                  IL_03fe:  ble.s      IL_0440

                  IL_0400:  ldarg.0
                  IL_0401:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                  IL_0406:  ldfld      class [System.IO]System.IO.MemoryStream Game.WebManager/'<>c__DisplayClass2_1'::targetStream
                  IL_040b:  ldarg.0
                  IL_040c:  ldfld      uint8[] Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<buffer>5__3'
                  IL_0411:  ldc.i4.0
                  IL_0412:  ldloc.s    V_11
                  IL_0414:  callvirt   instance void [System.IO]System.IO.Stream::Write(uint8[],
                                                                                        int32,
                                                                                        int32)
                  IL_0419:  ldarg.0
                  IL_041a:  ldarg.0
                  IL_041b:  ldfld      int64 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<written>5__5'
                  IL_0420:  ldloc.s    V_11
                  IL_0422:  conv.i8
                  IL_0423:  add
                  IL_0424:  stfld      int64 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<written>5__5'
                  IL_0429:  ldarg.0
                  IL_042a:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
                  IL_042f:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass2_0'::progress
                  IL_0434:  ldarg.0
                  IL_0435:  ldfld      int64 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<written>5__5'
                  IL_043a:  conv.r4
                  IL_043b:  stfld      float32 Game.Progress::Completed
                  IL_0440:  ldloc.s    V_11
                  IL_0442:  ldc.i4.0
                  IL_0443:  bgt        IL_036f

                  IL_0448:  ldarg.0
                  IL_0449:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                  IL_044e:  ldftn      instance void Game.WebManager/'<>c__DisplayClass2_1'::'<Get>b__1'()
                  IL_0454:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                          native int)
                  IL_0459:  ldc.i4.0
                  IL_045a:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                                bool)
                  IL_045f:  ldarg.0
                  IL_0460:  ldnull
                  IL_0461:  stfld      uint8[] Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<buffer>5__3'
                  IL_0466:  leave.s    IL_048a

                }  // end .try
                finally
                {
                  IL_0468:  ldloc.0
                  IL_0469:  ldc.i4.0
                  IL_046a:  bge.s      IL_0489

                  IL_046c:  ldarg.0
                  IL_046d:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                  IL_0472:  ldfld      class [System.IO]System.IO.MemoryStream Game.WebManager/'<>c__DisplayClass2_1'::targetStream
                  IL_0477:  brfalse.s  IL_0489

                  IL_0479:  ldarg.0
                  IL_047a:  ldfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                  IL_047f:  ldfld      class [System.IO]System.IO.MemoryStream Game.WebManager/'<>c__DisplayClass2_1'::targetStream
                  IL_0484:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
                  IL_0489:  endfinally
                }  // end handler
                IL_048a:  ldarg.0
                IL_048b:  ldnull
                IL_048c:  stfld      class Game.WebManager/'<>c__DisplayClass2_1' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>8__4'
                IL_0491:  leave.s    IL_04ab

              }  // end .try
              finally
              {
                IL_0493:  ldloc.0
                IL_0494:  ldc.i4.0
                IL_0495:  bge.s      IL_04aa

                IL_0497:  ldarg.0
                IL_0498:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseStream>5__2'
                IL_049d:  brfalse.s  IL_04aa

                IL_049f:  ldarg.0
                IL_04a0:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseStream>5__2'
                IL_04a5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
                IL_04aa:  endfinally
              }  // end handler
              IL_04ab:  ldarg.0
              IL_04ac:  ldnull
              IL_04ad:  stfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseStream>5__2'
              IL_04b2:  ldarg.0
              IL_04b3:  ldnull
              IL_04b4:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<responseMessage>5__1'
              IL_04b9:  leave.s    IL_04d3

            }  // end .try
            finally
            {
              IL_04bb:  ldloc.0
              IL_04bc:  ldc.i4.0
              IL_04bd:  bge.s      IL_04d2

              IL_04bf:  ldarg.0
              IL_04c0:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<client>5__6'
              IL_04c5:  brfalse.s  IL_04d2

              IL_04c7:  ldarg.0
              IL_04c8:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<client>5__6'
              IL_04cd:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
              IL_04d2:  endfinally
            }  // end handler
            IL_04d3:  ldarg.0
            IL_04d4:  ldnull
            IL_04d5:  stfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<client>5__6'
            IL_04da:  leave.s    IL_0521

          }  // end .try
          catch [System.Runtime]System.Exception 
          {
            IL_04dc:  newobj     instance void Game.WebManager/'<>c__DisplayClass2_2'::.ctor()
            IL_04e1:  stloc.s    V_13
            IL_04e3:  ldloc.s    V_13
            IL_04e5:  ldarg.0
            IL_04e6:  ldfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>4__this'
            IL_04eb:  stfld      class Game.WebManager/'<>c__DisplayClass2_0' Game.WebManager/'<>c__DisplayClass2_2'::'CS$<>8__locals2'
            IL_04f0:  stloc.s    V_14
            IL_04f2:  ldloc.s    V_13
            IL_04f4:  ldloc.s    V_14
            IL_04f6:  stfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass2_2'::e
            IL_04fb:  ldloc.s    V_13
            IL_04fd:  ldfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass2_2'::e
            IL_0502:  call       string Game.ExceptionManager::MakeFullErrorMessage(class [System.Runtime]System.Exception)
            IL_0507:  call       void [Engine]Engine.Log::Error(string)
            IL_050c:  ldloc.s    V_13
            IL_050e:  ldftn      instance void Game.WebManager/'<>c__DisplayClass2_2'::'<Get>b__2'()
            IL_0514:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                    native int)
            IL_0519:  ldc.i4.0
            IL_051a:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                          bool)
            IL_051f:  leave.s    IL_0521

          }  // end handler
          IL_0521:  leave.s    IL_053c

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_0523:  stloc.s    V_14
          IL_0525:  ldarg.0
          IL_0526:  ldc.i4.s   -2
          IL_0528:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
          IL_052d:  ldarg.0
          IL_052e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
          IL_0533:  ldloc.s    V_14
          IL_0535:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
          IL_053a:  leave.s    IL_054f

        }  // end handler
        IL_053c:  ldarg.0
        IL_053d:  ldc.i4.s   -2
        IL_053f:  stfld      int32 Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>1__state'
        IL_0544:  ldarg.0
        IL_0545:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass2_0'/'<<Get>b__0>d'::'<>t__builder'
        IL_054a:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
        IL_054f:  ret
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

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass12_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .class auto ansi sealed nested private beforefieldinit '<<PutOrPost>b__0>d'
           extends [System.Runtime]System.ValueType
           implements [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine
    {
      .field public int32 '<>1__state'
      .field public valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
      .field public class Game.WebManager/'<>c__DisplayClass12_0' '<>4__this'
      .field private class [System.Net.Http]System.Net.Http.HttpClient '<client>5__1'
      .field private class [System.Runtime]System.Uri '<uri>5__2'
      .field private class Game.WebManager/ProgressHttpContent '<content>5__3'
      .field private class Game.WebManager/'<>c__DisplayClass12_1' '<>8__4'
      .field private class [System.Net.Http]System.Net.Http.HttpResponseMessage '<responseMessage>5__5'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> '<>u__1'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter '<>u__2'
      .field private class Game.WebManager/'<>c__DisplayClass12_1' '<>7__wrap1'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]> '<>u__3'
      .method private hidebysig newslot virtual final 
              instance void  MoveNext() cil managed
      {
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
        // 代码大小       1257 (0x4e9)
        .maxstack  6
        .locals init (int32 V_0,
                 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
                 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string> V_2,
                 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string> V_3,
                 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string> V_4,
                 class [System.Net.Http]System.Net.Http.HttpResponseMessage V_5,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> V_6,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter V_7,
                 uint8[] V_8,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]> V_9,
                 class Game.WebManager/'<>c__DisplayClass12_2' V_10,
                 class [System.Runtime]System.Exception V_11)
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
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
                                  IL_0051,
                                  IL_0051,
                                  IL_0051,
                                  IL_0051)
            IL_0034:  call       bool Game.WebManager::IsInternetConnectionAvailable()
            IL_0039:  brtrue.s   IL_0046

            IL_003b:  ldstr      "Internet connection is unavailable."
            IL_0040:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
            IL_0045:  throw

            IL_0046:  ldarg.0
            IL_0047:  newobj     instance void [System.Net.Http]System.Net.Http.HttpClient::.ctor()
            IL_004c:  stfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<client>5__1'
            IL_0051:  nop
            .try
            {
              IL_0052:  ldloc.0
              IL_0053:  switch     ( 
                                    IL_024a,
                                    IL_02e0,
                                    IL_0355,
                                    IL_03dd)
              IL_0068:  ldarg.0
              IL_0069:  newobj     instance void Game.WebManager/'<>c__DisplayClass12_1'::.ctor()
              IL_006e:  stfld      class Game.WebManager/'<>c__DisplayClass12_1' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>8__4'
              IL_0073:  ldarg.0
              IL_0074:  ldfld      class Game.WebManager/'<>c__DisplayClass12_1' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>8__4'
              IL_0079:  ldarg.0
              IL_007a:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_007f:  stfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_1'::'CS$<>8__locals1'
              IL_0084:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
              IL_0089:  stloc.1
              IL_008a:  ldarg.0
              IL_008b:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_0090:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass12_0'::headers
              IL_0095:  brfalse.s  IL_0103

              IL_0097:  ldarg.0
              IL_0098:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_009d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass12_0'::headers
              IL_00a2:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::GetEnumerator()
              IL_00a7:  stloc.2
              .try
              {
                IL_00a8:  br.s       IL_00e6

                IL_00aa:  ldloca.s   V_2
                IL_00ac:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::get_Current()
                IL_00b1:  stloc.3
                IL_00b2:  ldarg.0
                IL_00b3:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<client>5__1'
                IL_00b8:  callvirt   instance class [System.Net.Http]System.Net.Http.Headers.HttpRequestHeaders [System.Net.Http]System.Net.Http.HttpClient::get_DefaultRequestHeaders()
                IL_00bd:  ldloca.s   V_3
                IL_00bf:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Key()
                IL_00c4:  ldloca.s   V_3
                IL_00c6:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Value()
                IL_00cb:  callvirt   instance bool [System.Net.Http]System.Net.Http.Headers.HttpHeaders::TryAddWithoutValidation(string,
                                                                                                                                 string)
                IL_00d0:  brtrue.s   IL_00e6

                IL_00d2:  ldloc.1
                IL_00d3:  ldloca.s   V_3
                IL_00d5:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Key()
                IL_00da:  ldloca.s   V_3
                IL_00dc:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Value()
                IL_00e1:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                                         !1)
                IL_00e6:  ldloca.s   V_2
                IL_00e8:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::MoveNext()
                IL_00ed:  brtrue.s   IL_00aa

                IL_00ef:  leave.s    IL_0103

              }  // end .try
              finally
              {
                IL_00f1:  ldloc.0
                IL_00f2:  ldc.i4.0
                IL_00f3:  bge.s      IL_0102

                IL_00f5:  ldloca.s   V_2
                IL_00f7:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>
                IL_00fd:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
                IL_0102:  endfinally
              }  // end handler
              IL_0103:  ldarg.0
              IL_0104:  ldarg.0
              IL_0105:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_010a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass12_0'::parameters
              IL_010f:  brfalse.s  IL_0124

              IL_0111:  ldarg.0
              IL_0112:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_0117:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass12_0'::parameters
              IL_011c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Count()
              IL_0121:  ldc.i4.0
              IL_0122:  bgt.s      IL_0136

              IL_0124:  ldarg.0
              IL_0125:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_012a:  ldfld      string Game.WebManager/'<>c__DisplayClass12_0'::address
              IL_012f:  newobj     instance void [System.Runtime]System.Uri::.ctor(string)
              IL_0134:  br.s       IL_016c

              IL_0136:  ldstr      "{0}\?{1}"
              IL_013b:  ldc.i4.2
              IL_013c:  newarr     [System.Runtime]System.Object
              IL_0141:  dup
              IL_0142:  ldc.i4.0
              IL_0143:  ldarg.0
              IL_0144:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_0149:  ldfld      string Game.WebManager/'<>c__DisplayClass12_0'::address
              IL_014e:  stelem.ref
              IL_014f:  dup
              IL_0150:  ldc.i4.1
              IL_0151:  ldarg.0
              IL_0152:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_0157:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass12_0'::parameters
              IL_015c:  call       string Game.WebManager::UrlParametersToString(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
              IL_0161:  stelem.ref
              IL_0162:  call       string [System.Runtime]System.String::Format(string,
                                                                                object[])
              IL_0167:  newobj     instance void [System.Runtime]System.Uri::.ctor(string)
              IL_016c:  stfld      class [System.Runtime]System.Uri Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<uri>5__2'
              IL_0171:  ldarg.0
              IL_0172:  ldarg.0
              IL_0173:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_0178:  ldfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass12_0'::data
              IL_017d:  ldarg.0
              IL_017e:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_0183:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass12_0'::progress
              IL_0188:  newobj     instance void Game.WebManager/ProgressHttpContent::.ctor(class [System.IO]System.IO.Stream,
                                                                                            class Game.CancellableProgress)
              IL_018d:  stfld      class Game.WebManager/ProgressHttpContent Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<content>5__3'
              IL_0192:  ldloc.1
              IL_0193:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::GetEnumerator()
              IL_0198:  stloc.2
              .try
              {
                IL_0199:  br.s       IL_01c2

                IL_019b:  ldloca.s   V_2
                IL_019d:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::get_Current()
                IL_01a2:  stloc.s    V_4
                IL_01a4:  ldarg.0
                IL_01a5:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<content>5__3'
                IL_01aa:  callvirt   instance class [System.Net.Http]System.Net.Http.Headers.HttpContentHeaders [System.Net.Http]System.Net.Http.HttpContent::get_Headers()
                IL_01af:  ldloca.s   V_4
                IL_01b1:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Key()
                IL_01b6:  ldloca.s   V_4
                IL_01b8:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Value()
                IL_01bd:  callvirt   instance void [System.Net.Http]System.Net.Http.Headers.HttpHeaders::Add(string,
                                                                                                             string)
                IL_01c2:  ldloca.s   V_2
                IL_01c4:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::MoveNext()
                IL_01c9:  brtrue.s   IL_019b

                IL_01cb:  leave.s    IL_01df

              }  // end .try
              finally
              {
                IL_01cd:  ldloc.0
                IL_01ce:  ldc.i4.0
                IL_01cf:  bge.s      IL_01de

                IL_01d1:  ldloca.s   V_2
                IL_01d3:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>
                IL_01d9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
                IL_01de:  endfinally
              }  // end handler
              IL_01df:  ldarg.0
              IL_01e0:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_01e5:  ldfld      bool Game.WebManager/'<>c__DisplayClass12_0'::isPost
              IL_01ea:  brfalse    IL_0285

              IL_01ef:  ldarg.0
              IL_01f0:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<client>5__1'
              IL_01f5:  ldarg.0
              IL_01f6:  ldfld      class [System.Runtime]System.Uri Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<uri>5__2'
              IL_01fb:  ldarg.0
              IL_01fc:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<content>5__3'
              IL_0201:  ldarg.0
              IL_0202:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_0207:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass12_0'::progress
              IL_020c:  ldfld      valuetype [System.Threading.Tasks]System.Threading.CancellationToken Game.CancellableProgress::CancellationToken
              IL_0211:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::PostAsync(class [System.Runtime]System.Uri,
                                                                                                                                                                                                                           class [System.Net.Http]System.Net.Http.HttpContent,
                                                                                                                                                                                                                           valuetype [System.Threading.Tasks]System.Threading.CancellationToken)
              IL_0216:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::GetAwaiter()
              IL_021b:  stloc.s    V_6
              IL_021d:  ldloca.s   V_6
              IL_021f:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::get_IsCompleted()
              IL_0224:  brtrue.s   IL_0267

              IL_0226:  ldarg.0
              IL_0227:  ldc.i4.0
              IL_0228:  dup
              IL_0229:  stloc.0
              IL_022a:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
              IL_022f:  ldarg.0
              IL_0230:  ldloc.s    V_6
              IL_0232:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__1'
              IL_0237:  ldarg.0
              IL_0238:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>t__builder'
              IL_023d:  ldloca.s   V_6
              IL_023f:  ldarg.0
              IL_0240:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>,valuetype Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                            !!1&)
              IL_0245:  leave      IL_04e8

              IL_024a:  ldarg.0
              IL_024b:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__1'
              IL_0250:  stloc.s    V_6
              IL_0252:  ldarg.0
              IL_0253:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__1'
              IL_0258:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>
              IL_025e:  ldarg.0
              IL_025f:  ldc.i4.m1
              IL_0260:  dup
              IL_0261:  stloc.0
              IL_0262:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
              IL_0267:  ldloca.s   V_6
              IL_0269:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::GetResult()
              IL_026e:  ldloca.s   V_6
              IL_0270:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>
              IL_0276:  stloc.s    V_5
              IL_0278:  ldarg.0
              IL_0279:  ldloc.s    V_5
              IL_027b:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<responseMessage>5__5'
              IL_0280:  br         IL_0316

              IL_0285:  ldarg.0
              IL_0286:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<client>5__1'
              IL_028b:  ldarg.0
              IL_028c:  ldfld      class [System.Runtime]System.Uri Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<uri>5__2'
              IL_0291:  ldarg.0
              IL_0292:  ldfld      class Game.WebManager/ProgressHttpContent Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<content>5__3'
              IL_0297:  ldarg.0
              IL_0298:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
              IL_029d:  ldfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass12_0'::progress
              IL_02a2:  ldfld      valuetype [System.Threading.Tasks]System.Threading.CancellationToken Game.CancellableProgress::CancellationToken
              IL_02a7:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::PutAsync(class [System.Runtime]System.Uri,
                                                                                                                                                                                                                          class [System.Net.Http]System.Net.Http.HttpContent,
                                                                                                                                                                                                                          valuetype [System.Threading.Tasks]System.Threading.CancellationToken)
              IL_02ac:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::GetAwaiter()
              IL_02b1:  stloc.s    V_6
              IL_02b3:  ldloca.s   V_6
              IL_02b5:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::get_IsCompleted()
              IL_02ba:  brtrue.s   IL_02fd

              IL_02bc:  ldarg.0
              IL_02bd:  ldc.i4.1
              IL_02be:  dup
              IL_02bf:  stloc.0
              IL_02c0:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
              IL_02c5:  ldarg.0
              IL_02c6:  ldloc.s    V_6
              IL_02c8:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__1'
              IL_02cd:  ldarg.0
              IL_02ce:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>t__builder'
              IL_02d3:  ldloca.s   V_6
              IL_02d5:  ldarg.0
              IL_02d6:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>,valuetype Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                            !!1&)
              IL_02db:  leave      IL_04e8

              IL_02e0:  ldarg.0
              IL_02e1:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__1'
              IL_02e6:  stloc.s    V_6
              IL_02e8:  ldarg.0
              IL_02e9:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__1'
              IL_02ee:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>
              IL_02f4:  ldarg.0
              IL_02f5:  ldc.i4.m1
              IL_02f6:  dup
              IL_02f7:  stloc.0
              IL_02f8:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
              IL_02fd:  ldloca.s   V_6
              IL_02ff:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::GetResult()
              IL_0304:  ldloca.s   V_6
              IL_0306:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>
              IL_030c:  stloc.s    V_5
              IL_030e:  ldarg.0
              IL_030f:  ldloc.s    V_5
              IL_0311:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<responseMessage>5__5'
              IL_0316:  ldarg.0
              IL_0317:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<responseMessage>5__5'
              IL_031c:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task Game.WebManager::VerifyResponse(class [System.Net.Http]System.Net.Http.HttpResponseMessage)
              IL_0321:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter [System.Threading.Tasks]System.Threading.Tasks.Task::GetAwaiter()
              IL_0326:  stloc.s    V_7
              IL_0328:  ldloca.s   V_7
              IL_032a:  call       instance bool [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
              IL_032f:  brtrue.s   IL_0372

              IL_0331:  ldarg.0
              IL_0332:  ldc.i4.2
              IL_0333:  dup
              IL_0334:  stloc.0
              IL_0335:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
              IL_033a:  ldarg.0
              IL_033b:  ldloc.s    V_7
              IL_033d:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__2'
              IL_0342:  ldarg.0
              IL_0343:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>t__builder'
              IL_0348:  ldloca.s   V_7
              IL_034a:  ldarg.0
              IL_034b:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter,valuetype Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                              !!1&)
              IL_0350:  leave      IL_04e8

              IL_0355:  ldarg.0
              IL_0356:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__2'
              IL_035b:  stloc.s    V_7
              IL_035d:  ldarg.0
              IL_035e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__2'
              IL_0363:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
              IL_0369:  ldarg.0
              IL_036a:  ldc.i4.m1
              IL_036b:  dup
              IL_036c:  stloc.0
              IL_036d:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
              IL_0372:  ldloca.s   V_7
              IL_0374:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
              IL_0379:  ldloca.s   V_7
              IL_037b:  initobj    [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter
              IL_0381:  ldarg.0
              IL_0382:  ldarg.0
              IL_0383:  ldfld      class Game.WebManager/'<>c__DisplayClass12_1' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>8__4'
              IL_0388:  stfld      class Game.WebManager/'<>c__DisplayClass12_1' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>7__wrap1'
              IL_038d:  ldarg.0
              IL_038e:  ldfld      class Game.WebManager/'<>c__DisplayClass12_1' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>7__wrap1'
              IL_0393:  ldfld      uint8[] Game.WebManager/'<>c__DisplayClass12_1'::responseData
              IL_0398:  pop
              IL_0399:  ldarg.0
              IL_039a:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<responseMessage>5__5'
              IL_039f:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
              IL_03a4:  callvirt   instance class [System.Threading.Tasks]System.Threading.Tasks.Task`1<uint8[]> [System.Net.Http]System.Net.Http.HttpContent::ReadAsByteArrayAsync()
              IL_03a9:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<uint8[]>::GetAwaiter()
              IL_03ae:  stloc.s    V_9
              IL_03b0:  ldloca.s   V_9
              IL_03b2:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]>::get_IsCompleted()
              IL_03b7:  brtrue.s   IL_03fa

              IL_03b9:  ldarg.0
              IL_03ba:  ldc.i4.3
              IL_03bb:  dup
              IL_03bc:  stloc.0
              IL_03bd:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
              IL_03c2:  ldarg.0
              IL_03c3:  ldloc.s    V_9
              IL_03c5:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]> Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__3'
              IL_03ca:  ldarg.0
              IL_03cb:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>t__builder'
              IL_03d0:  ldloca.s   V_9
              IL_03d2:  ldarg.0
              IL_03d3:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]>,valuetype Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                         !!1&)
              IL_03d8:  leave      IL_04e8

              IL_03dd:  ldarg.0
              IL_03de:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]> Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__3'
              IL_03e3:  stloc.s    V_9
              IL_03e5:  ldarg.0
              IL_03e6:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]> Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>u__3'
              IL_03eb:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]>
              IL_03f1:  ldarg.0
              IL_03f2:  ldc.i4.m1
              IL_03f3:  dup
              IL_03f4:  stloc.0
              IL_03f5:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
              IL_03fa:  ldloca.s   V_9
              IL_03fc:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]>::GetResult()
              IL_0401:  ldloca.s   V_9
              IL_0403:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<uint8[]>
              IL_0409:  stloc.s    V_8
              IL_040b:  ldarg.0
              IL_040c:  ldfld      class Game.WebManager/'<>c__DisplayClass12_1' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>7__wrap1'
              IL_0411:  ldloc.s    V_8
              IL_0413:  stfld      uint8[] Game.WebManager/'<>c__DisplayClass12_1'::responseData
              IL_0418:  ldarg.0
              IL_0419:  ldnull
              IL_041a:  stfld      class Game.WebManager/'<>c__DisplayClass12_1' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>7__wrap1'
              IL_041f:  ldarg.0
              IL_0420:  ldfld      class Game.WebManager/'<>c__DisplayClass12_1' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>8__4'
              IL_0425:  ldftn      instance void Game.WebManager/'<>c__DisplayClass12_1'::'<PutOrPost>b__1'()
              IL_042b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                      native int)
              IL_0430:  ldc.i4.0
              IL_0431:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                            bool)
              IL_0436:  ldarg.0
              IL_0437:  ldnull
              IL_0438:  stfld      class Game.WebManager/'<>c__DisplayClass12_1' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>8__4'
              IL_043d:  ldarg.0
              IL_043e:  ldnull
              IL_043f:  stfld      class [System.Runtime]System.Uri Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<uri>5__2'
              IL_0444:  ldarg.0
              IL_0445:  ldnull
              IL_0446:  stfld      class Game.WebManager/ProgressHttpContent Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<content>5__3'
              IL_044b:  ldarg.0
              IL_044c:  ldnull
              IL_044d:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<responseMessage>5__5'
              IL_0452:  leave.s    IL_046c

            }  // end .try
            finally
            {
              IL_0454:  ldloc.0
              IL_0455:  ldc.i4.0
              IL_0456:  bge.s      IL_046b

              IL_0458:  ldarg.0
              IL_0459:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<client>5__1'
              IL_045e:  brfalse.s  IL_046b

              IL_0460:  ldarg.0
              IL_0461:  ldfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<client>5__1'
              IL_0466:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
              IL_046b:  endfinally
            }  // end handler
            IL_046c:  ldarg.0
            IL_046d:  ldnull
            IL_046e:  stfld      class [System.Net.Http]System.Net.Http.HttpClient Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<client>5__1'
            IL_0473:  leave.s    IL_04ba

          }  // end .try
          catch [System.Runtime]System.Exception 
          {
            IL_0475:  newobj     instance void Game.WebManager/'<>c__DisplayClass12_2'::.ctor()
            IL_047a:  stloc.s    V_10
            IL_047c:  ldloc.s    V_10
            IL_047e:  ldarg.0
            IL_047f:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
            IL_0484:  stfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_2'::'CS$<>8__locals2'
            IL_0489:  stloc.s    V_11
            IL_048b:  ldloc.s    V_10
            IL_048d:  ldloc.s    V_11
            IL_048f:  stfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass12_2'::e
            IL_0494:  ldloc.s    V_10
            IL_0496:  ldfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass12_2'::e
            IL_049b:  call       string Game.ExceptionManager::MakeFullErrorMessage(class [System.Runtime]System.Exception)
            IL_04a0:  call       void [Engine]Engine.Log::Error(string)
            IL_04a5:  ldloc.s    V_10
            IL_04a7:  ldftn      instance void Game.WebManager/'<>c__DisplayClass12_2'::'<PutOrPost>b__2'()
            IL_04ad:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                    native int)
            IL_04b2:  ldc.i4.0
            IL_04b3:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                          bool)
            IL_04b8:  leave.s    IL_04ba

          }  // end handler
          IL_04ba:  leave.s    IL_04d5

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_04bc:  stloc.s    V_11
          IL_04be:  ldarg.0
          IL_04bf:  ldc.i4.s   -2
          IL_04c1:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
          IL_04c6:  ldarg.0
          IL_04c7:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>t__builder'
          IL_04cc:  ldloc.s    V_11
          IL_04ce:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
          IL_04d3:  leave.s    IL_04e8

        }  // end handler
        IL_04d5:  ldarg.0
        IL_04d6:  ldc.i4.s   -2
        IL_04d8:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
        IL_04dd:  ldarg.0
        IL_04de:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>t__builder'
        IL_04e3:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
        IL_04e8:  ret
      } // end of method '<<PutOrPost>b__0>d'::MoveNext

      .method private hidebysig newslot virtual final 
              instance void  SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
      {
        .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
        // 代码大小       13 (0xd)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>t__builder'
        IL_0006:  ldarg.1
        IL_0007:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine)
        IL_000c:  ret
      } // end of method '<<PutOrPost>b__0>d'::SetStateMachine

    } // end of class '<<PutOrPost>b__0>d'

    .field public class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> headers
    .field public class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> parameters
    .field public string address
    .field public class [System.IO]System.IO.Stream data
    .field public class Game.CancellableProgress progress
    .field public bool isPost
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
    } // end of method '<>c__DisplayClass12_0'::.ctor

    .method assembly hidebysig instance class [System.Threading.Tasks]System.Threading.Tasks.Task 
            '<PutOrPost>b__0'() cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 38 47 61 6D 65 2E 57 65 62 4D 61 6E 61 67   // ..8Game.WebManag
                                                                                                                                                     65 72 2B 3C 3E 63 5F 5F 44 69 73 70 6C 61 79 43   // er+<>c__DisplayC
                                                                                                                                                     6C 61 73 73 31 32 5F 30 2B 3C 3C 50 75 74 4F 72   // lass12_0+<<PutOr
                                                                                                                                                     50 6F 73 74 3E 62 5F 5F 30 3E 64 00 00 )          // Post>b__0>d..
      // 代码大小       57 (0x39)
      .maxstack  2
      .locals init (valuetype Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d' V_0,
               valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder V_1)
      IL_0000:  ldloca.s   V_0
      IL_0002:  ldarg.0
      IL_0003:  stfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>4__this'
      IL_0008:  ldloca.s   V_0
      IL_000a:  call       valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
      IL_000f:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>t__builder'
      IL_0014:  ldloca.s   V_0
      IL_0016:  ldc.i4.m1
      IL_0017:  stfld      int32 Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>1__state'
      IL_001c:  ldloc.0
      IL_001d:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>t__builder'
      IL_0022:  stloc.1
      IL_0023:  ldloca.s   V_1
      IL_0025:  ldloca.s   V_0
      IL_0027:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'>(!!0&)
      IL_002c:  ldloca.s   V_0
      IL_002e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<>c__DisplayClass12_0'/'<<PutOrPost>b__0>d'::'<>t__builder'
      IL_0033:  call       instance class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
      IL_0038:  ret
    } // end of method '<>c__DisplayClass12_0'::'<PutOrPost>b__0'

  } // end of class '<>c__DisplayClass12_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass12_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public uint8[] responseData
    .field public class Game.WebManager/'<>c__DisplayClass12_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass12_1'::.ctor

    .method assembly hidebysig instance void 
            '<PutOrPost>b__1'() cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_1'::'CS$<>8__locals1'
      IL_0006:  ldfld      class [System.Runtime]System.Action`1<uint8[]> Game.WebManager/'<>c__DisplayClass12_0'::success
      IL_000b:  ldarg.0
      IL_000c:  ldfld      uint8[] Game.WebManager/'<>c__DisplayClass12_1'::responseData
      IL_0011:  callvirt   instance void class [System.Runtime]System.Action`1<uint8[]>::Invoke(!0)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass12_1'::'<PutOrPost>b__1'

  } // end of class '<>c__DisplayClass12_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass12_2'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Exception e
    .field public class Game.WebManager/'<>c__DisplayClass12_0' 'CS$<>8__locals2'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass12_2'::.ctor

    .method assembly hidebysig instance void 
            '<PutOrPost>b__2'() cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.WebManager/'<>c__DisplayClass12_0' Game.WebManager/'<>c__DisplayClass12_2'::'CS$<>8__locals2'
      IL_0006:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.WebManager/'<>c__DisplayClass12_0'::failure
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class [System.Runtime]System.Exception Game.WebManager/'<>c__DisplayClass12_2'::e
      IL_0011:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass12_2'::'<PutOrPost>b__2'

  } // end of class '<>c__DisplayClass12_2'

  .class auto ansi sealed nested private beforefieldinit '<VerifyResponse>d__13'
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
      IL_0001:  ldfld      int32 Game.WebManager/'<VerifyResponse>d__13'::'<>1__state'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_0025

        IL_000a:  ldarg.0
        IL_000b:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<VerifyResponse>d__13'::message
        IL_0010:  callvirt   instance bool [System.Net.Http]System.Net.Http.HttpResponseMessage::get_IsSuccessStatusCode()
        IL_0015:  brtrue     IL_00f1

        IL_001a:  ldarg.0
        IL_001b:  ldsfld     string [System.Runtime]System.String::Empty
        IL_0020:  stfld      string Game.WebManager/'<VerifyResponse>d__13'::'<responseText>5__1'
        IL_0025:  nop
        .try
        {
          IL_0026:  ldloc.0
          IL_0027:  brfalse.s  IL_006b

          IL_0029:  ldarg.0
          IL_002a:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<VerifyResponse>d__13'::message
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
          IL_004c:  stfld      int32 Game.WebManager/'<VerifyResponse>d__13'::'<>1__state'
          IL_0051:  ldarg.0
          IL_0052:  ldloc.2
          IL_0053:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> Game.WebManager/'<VerifyResponse>d__13'::'<>u__1'
          IL_0058:  ldarg.0
          IL_0059:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__13'::'<>t__builder'
          IL_005e:  ldloca.s   V_2
          IL_0060:  ldarg.0
          IL_0061:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>,valuetype Game.WebManager/'<VerifyResponse>d__13'>(!!0&,
                                                                                                                                                                                                                                                                                               !!1&)
          IL_0066:  leave      IL_011f

          IL_006b:  ldarg.0
          IL_006c:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> Game.WebManager/'<VerifyResponse>d__13'::'<>u__1'
          IL_0071:  stloc.2
          IL_0072:  ldarg.0
          IL_0073:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> Game.WebManager/'<VerifyResponse>d__13'::'<>u__1'
          IL_0078:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>
          IL_007e:  ldarg.0
          IL_007f:  ldc.i4.m1
          IL_0080:  dup
          IL_0081:  stloc.0
          IL_0082:  stfld      int32 Game.WebManager/'<VerifyResponse>d__13'::'<>1__state'
          IL_0087:  ldloca.s   V_2
          IL_0089:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>::GetResult()
          IL_008e:  ldloca.s   V_2
          IL_0090:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>
          IL_0096:  stloc.1
          IL_0097:  ldarg.0
          IL_0098:  ldloc.1
          IL_0099:  stfld      string Game.WebManager/'<VerifyResponse>d__13'::'<responseText>5__1'
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
        IL_00b1:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<VerifyResponse>d__13'::message
        IL_00b6:  callvirt   instance valuetype [System.Net.Primitives]System.Net.HttpStatusCode [System.Net.Http]System.Net.Http.HttpResponseMessage::get_StatusCode()
        IL_00bb:  stloc.3
        IL_00bc:  ldloca.s   V_3
        IL_00be:  constrained. [System.Net.Primitives]System.Net.HttpStatusCode
        IL_00c4:  callvirt   instance string [System.Runtime]System.Object::ToString()
        IL_00c9:  stelem.ref
        IL_00ca:  dup
        IL_00cb:  ldc.i4.1
        IL_00cc:  ldarg.0
        IL_00cd:  ldfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<VerifyResponse>d__13'::message
        IL_00d2:  callvirt   instance valuetype [System.Net.Primitives]System.Net.HttpStatusCode [System.Net.Http]System.Net.Http.HttpResponseMessage::get_StatusCode()
        IL_00d7:  box        [System.Runtime]System.Int32
        IL_00dc:  stelem.ref
        IL_00dd:  dup
        IL_00de:  ldc.i4.2
        IL_00df:  ldarg.0
        IL_00e0:  ldfld      string Game.WebManager/'<VerifyResponse>d__13'::'<responseText>5__1'
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
        IL_00f8:  stfld      int32 Game.WebManager/'<VerifyResponse>d__13'::'<>1__state'
        IL_00fd:  ldarg.0
        IL_00fe:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__13'::'<>t__builder'
        IL_0103:  ldloc.s    V_4
        IL_0105:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_010a:  leave.s    IL_011f

      }  // end handler
      IL_010c:  ldarg.0
      IL_010d:  ldc.i4.s   -2
      IL_010f:  stfld      int32 Game.WebManager/'<VerifyResponse>d__13'::'<>1__state'
      IL_0114:  ldarg.0
      IL_0115:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__13'::'<>t__builder'
      IL_011a:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_011f:  ret
    } // end of method '<VerifyResponse>d__13'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__13'::'<>t__builder'
      IL_0006:  ldarg.1
      IL_0007:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine)
      IL_000c:  ret
    } // end of method '<VerifyResponse>d__13'::SetStateMachine

  } // end of class '<VerifyResponse>d__13'

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

  .method public hidebysig static void  Put(string address,
                                            class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> parameters,
                                            class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> headers,
                                            class [System.IO]System.IO.Stream data,
                                            class Game.CancellableProgress progress,
                                            class [System.Runtime]System.Action`1<uint8[]> success,
                                            class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  ldarg.s    progress
    IL_0007:  ldarg.s    success
    IL_0009:  ldarg.s    failure
    IL_000b:  call       void Game.WebManager::PutOrPost(bool,
                                                         string,
                                                         class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                         class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                         class [System.IO]System.IO.Stream,
                                                         class Game.CancellableProgress,
                                                         class [System.Runtime]System.Action`1<uint8[]>,
                                                         class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_0010:  ret
  } // end of method WebManager::Put

  .method public hidebysig static void  Post(string address,
                                             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> parameters,
                                             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> headers,
                                             class [System.IO]System.IO.Stream data,
                                             class Game.CancellableProgress progress,
                                             class [System.Runtime]System.Action`1<uint8[]> success,
                                             class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  ldarg.s    progress
    IL_0007:  ldarg.s    success
    IL_0009:  ldarg.s    failure
    IL_000b:  call       void Game.WebManager::PutOrPost(bool,
                                                         string,
                                                         class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                         class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                         class [System.IO]System.IO.Stream,
                                                         class Game.CancellableProgress,
                                                         class [System.Runtime]System.Action`1<uint8[]>,
                                                         class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_0010:  ret
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

  .method private hidebysig static void  PutOrPost(bool isPost,
                                                   string address,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> parameters,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> headers,
                                                   class [System.IO]System.IO.Stream data,
                                                   class Game.CancellableProgress progress,
                                                   class [System.Runtime]System.Action`1<uint8[]> success,
                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  3
    IL_0000:  newobj     instance void Game.WebManager/'<>c__DisplayClass12_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.3
    IL_0007:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass12_0'::headers
    IL_000c:  dup
    IL_000d:  ldarg.2
    IL_000e:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager/'<>c__DisplayClass12_0'::parameters
    IL_0013:  dup
    IL_0014:  ldarg.1
    IL_0015:  stfld      string Game.WebManager/'<>c__DisplayClass12_0'::address
    IL_001a:  dup
    IL_001b:  ldarg.s    data
    IL_001d:  stfld      class [System.IO]System.IO.Stream Game.WebManager/'<>c__DisplayClass12_0'::data
    IL_0022:  dup
    IL_0023:  ldarg.s    progress
    IL_0025:  stfld      class Game.CancellableProgress Game.WebManager/'<>c__DisplayClass12_0'::progress
    IL_002a:  dup
    IL_002b:  ldarg.0
    IL_002c:  stfld      bool Game.WebManager/'<>c__DisplayClass12_0'::isPost
    IL_0031:  dup
    IL_0032:  ldarg.s    success
    IL_0034:  stfld      class [System.Runtime]System.Action`1<uint8[]> Game.WebManager/'<>c__DisplayClass12_0'::success
    IL_0039:  dup
    IL_003a:  ldarg.s    failure
    IL_003c:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.WebManager/'<>c__DisplayClass12_0'::failure
    IL_0041:  ldftn      instance class [System.Threading.Tasks]System.Threading.Tasks.Task Game.WebManager/'<>c__DisplayClass12_0'::'<PutOrPost>b__0'()
    IL_0047:  newobj     instance void class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>::.ctor(object,
                                                                                                                                             native int)
    IL_004c:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>)
    IL_0051:  pop
    IL_0052:  ret
  } // end of method WebManager::PutOrPost

  .method private hidebysig static class [System.Threading.Tasks]System.Threading.Tasks.Task 
          VerifyResponse(class [System.Net.Http]System.Net.Http.HttpResponseMessage message) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 25 47 61 6D 65 2E 57 65 62 4D 61 6E 61 67   // ..%Game.WebManag
                                                                                                                                                   65 72 2B 3C 56 65 72 69 66 79 52 65 73 70 6F 6E   // er+<VerifyRespon
                                                                                                                                                   73 65 3E 64 5F 5F 31 33 00 00 )                   // se>d__13..
    // 代码大小       57 (0x39)
    .maxstack  2
    .locals init (valuetype Game.WebManager/'<VerifyResponse>d__13' V_0,
             valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.0
    IL_0003:  stfld      class [System.Net.Http]System.Net.Http.HttpResponseMessage Game.WebManager/'<VerifyResponse>d__13'::message
    IL_0008:  ldloca.s   V_0
    IL_000a:  call       valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_000f:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__13'::'<>t__builder'
    IL_0014:  ldloca.s   V_0
    IL_0016:  ldc.i4.m1
    IL_0017:  stfld      int32 Game.WebManager/'<VerifyResponse>d__13'::'<>1__state'
    IL_001c:  ldloc.0
    IL_001d:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__13'::'<>t__builder'
    IL_0022:  stloc.1
    IL_0023:  ldloca.s   V_1
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype Game.WebManager/'<VerifyResponse>d__13'>(!!0&)
    IL_002c:  ldloca.s   V_0
    IL_002e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.WebManager/'<VerifyResponse>d__13'::'<>t__builder'
    IL_0033:  call       instance class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_0038:  ret
  } // end of method WebManager::VerifyResponse

} // end of class Game.WebManager