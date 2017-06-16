.class public abstract auto ansi sealed beforefieldinit Game.ScreenCaptureManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string filename
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_0'::.ctor

  } // end of class '<>c__DisplayClass3_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .class auto ansi sealed nested private beforefieldinit '<<Capture>b__0>d'
           extends [System.Runtime]System.ValueType
           implements [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine
    {
      .field public int32 '<>1__state'
      .field public valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
      .field public class Game.ScreenCaptureManager/'<>c__DisplayClass3_1' '<>4__this'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [Windows]Windows.Storage.StorageFolder> '<>u__1'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> '<>u__2'
      .method private hidebysig newslot virtual final 
              instance void  MoveNext() cil managed
      {
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
        // 代码大小       383 (0x17f)
        .maxstack  5
        .locals init (int32 V_0,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [Windows]Windows.Storage.StorageFolder> V_1,
                 class [System.IO]System.IO.Stream V_2,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> V_3,
                 class [System.Runtime]System.Exception V_4,
                 class [System.Runtime]System.Exception V_5)
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>1__state'
        IL_0006:  stloc.0
        .try
        {
          IL_0007:  ldloc.0
          IL_0008:  brfalse.s  IL_000e

          IL_000a:  ldloc.0
          IL_000b:  ldc.i4.1
          IL_000c:  pop
          IL_000d:  pop
          IL_000e:  nop
          .try
          {
            IL_000f:  ldloc.0
            IL_0010:  brfalse.s  IL_005b

            IL_0012:  ldloc.0
            IL_0013:  ldc.i4.1
            IL_0014:  beq        IL_00ce

            IL_0019:  call       class [Windows]Windows.Storage.StorageFolder [Windows]Windows.Storage.KnownFolders::get_PicturesLibrary()
            IL_001e:  ldstr      "Survivalcraft"
            IL_0023:  ldc.i4.3
            IL_0024:  callvirt   instance class [Windows]Windows.Foundation.IAsyncOperation`1<class [Windows]Windows.Storage.StorageFolder> [Windows]Windows.Storage.StorageFolder::CreateFolderAsync(string,
                                                                                                                                                                                                      valuetype [Windows]Windows.Storage.CreationCollisionOption)
            IL_0029:  call       valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!!0> [System.Runtime.WindowsRuntime]System.WindowsRuntimeSystemExtensions::GetAwaiter<class [Windows]Windows.Storage.StorageFolder>(class [Windows]Windows.Foundation.IAsyncOperation`1<!!0>)
            IL_002e:  stloc.1
            IL_002f:  ldloca.s   V_1
            IL_0031:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [Windows]Windows.Storage.StorageFolder>::get_IsCompleted()
            IL_0036:  brtrue.s   IL_0077

            IL_0038:  ldarg.0
            IL_0039:  ldc.i4.0
            IL_003a:  dup
            IL_003b:  stloc.0
            IL_003c:  stfld      int32 Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>1__state'
            IL_0041:  ldarg.0
            IL_0042:  ldloc.1
            IL_0043:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [Windows]Windows.Storage.StorageFolder> Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>u__1'
            IL_0048:  ldarg.0
            IL_0049:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>t__builder'
            IL_004e:  ldloca.s   V_1
            IL_0050:  ldarg.0
            IL_0051:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [Windows]Windows.Storage.StorageFolder>,valuetype Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                                   !!1&)
            IL_0056:  leave      IL_017e

            IL_005b:  ldarg.0
            IL_005c:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [Windows]Windows.Storage.StorageFolder> Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>u__1'
            IL_0061:  stloc.1
            IL_0062:  ldarg.0
            IL_0063:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [Windows]Windows.Storage.StorageFolder> Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>u__1'
            IL_0068:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [Windows]Windows.Storage.StorageFolder>
            IL_006e:  ldarg.0
            IL_006f:  ldc.i4.m1
            IL_0070:  dup
            IL_0071:  stloc.0
            IL_0072:  stfld      int32 Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>1__state'
            IL_0077:  ldloca.s   V_1
            IL_0079:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [Windows]Windows.Storage.StorageFolder>::GetResult()
            IL_007e:  ldloca.s   V_1
            IL_0080:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [Windows]Windows.Storage.StorageFolder>
            IL_0086:  ldarg.0
            IL_0087:  ldfld      class Game.ScreenCaptureManager/'<>c__DisplayClass3_1' Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>4__this'
            IL_008c:  ldfld      class Game.ScreenCaptureManager/'<>c__DisplayClass3_0' Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::'CS$<>8__locals1'
            IL_0091:  ldfld      string Game.ScreenCaptureManager/'<>c__DisplayClass3_0'::filename
            IL_0096:  ldc.i4.0
            IL_0097:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.IO]System.IO.Stream> [System.Runtime.WindowsRuntime]System.IO.WindowsRuntimeStorageExtensions::OpenStreamForWriteAsync(class [Windows]Windows.Storage.IStorageFolder,
                                                                                                                                                                                                                                  string,
                                                                                                                                                                                                                                  valuetype [Windows]Windows.Storage.CreationCollisionOption)
            IL_009c:  callvirt   instance valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!0> class [System.Threading.Tasks]System.Threading.Tasks.Task`1<class [System.IO]System.IO.Stream>::GetAwaiter()
            IL_00a1:  stloc.3
            IL_00a2:  ldloca.s   V_3
            IL_00a4:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>::get_IsCompleted()
            IL_00a9:  brtrue.s   IL_00ea

            IL_00ab:  ldarg.0
            IL_00ac:  ldc.i4.1
            IL_00ad:  dup
            IL_00ae:  stloc.0
            IL_00af:  stfld      int32 Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>1__state'
            IL_00b4:  ldarg.0
            IL_00b5:  ldloc.3
            IL_00b6:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>u__2'
            IL_00bb:  ldarg.0
            IL_00bc:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>t__builder'
            IL_00c1:  ldloca.s   V_3
            IL_00c3:  ldarg.0
            IL_00c4:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>,valuetype Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                                                        !!1&)
            IL_00c9:  leave      IL_017e

            IL_00ce:  ldarg.0
            IL_00cf:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>u__2'
            IL_00d4:  stloc.3
            IL_00d5:  ldarg.0
            IL_00d6:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream> Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>u__2'
            IL_00db:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>
            IL_00e1:  ldarg.0
            IL_00e2:  ldc.i4.m1
            IL_00e3:  dup
            IL_00e4:  stloc.0
            IL_00e5:  stfld      int32 Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>1__state'
            IL_00ea:  ldloca.s   V_3
            IL_00ec:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>::GetResult()
            IL_00f1:  ldloca.s   V_3
            IL_00f3:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<class [System.IO]System.IO.Stream>
            IL_00f9:  stloc.2
            .try
            {
              IL_00fa:  ldarg.0
              IL_00fb:  ldfld      class Game.ScreenCaptureManager/'<>c__DisplayClass3_1' Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>4__this'
              IL_0100:  ldfld      class [Engine]Engine.Media.Image Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::image
              IL_0105:  ldloc.2
              IL_0106:  ldc.i4.2
              IL_0107:  ldc.i4.0
              IL_0108:  call       void [Engine]Engine.Media.Image::Save(class [Engine]Engine.Media.Image,
                                                                         class [System.IO]System.IO.Stream,
                                                                         valuetype [Engine]Engine.Media.ImageFileFormat,
                                                                         bool)
              IL_010d:  leave.s    IL_011d

            }  // end .try
            finally
            {
              IL_010f:  ldloc.0
              IL_0110:  ldc.i4.0
              IL_0111:  bge.s      IL_011c

              IL_0113:  ldloc.2
              IL_0114:  brfalse.s  IL_011c

              IL_0116:  ldloc.2
              IL_0117:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
              IL_011c:  endfinally
            }  // end handler
            IL_011d:  leave.s    IL_0150

          }  // end .try
          catch [System.Runtime]System.Exception 
          {
            IL_011f:  stloc.s    V_4
            IL_0121:  ldstr      "Saving image {0} failed. Reason: {1}"
            IL_0126:  ldc.i4.2
            IL_0127:  newarr     [System.Runtime]System.Object
            IL_012c:  dup
            IL_012d:  ldc.i4.0
            IL_012e:  ldarg.0
            IL_012f:  ldfld      class Game.ScreenCaptureManager/'<>c__DisplayClass3_1' Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>4__this'
            IL_0134:  ldfld      class Game.ScreenCaptureManager/'<>c__DisplayClass3_0' Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::'CS$<>8__locals1'
            IL_0139:  ldfld      string Game.ScreenCaptureManager/'<>c__DisplayClass3_0'::filename
            IL_013e:  stelem.ref
            IL_013f:  dup
            IL_0140:  ldc.i4.1
            IL_0141:  ldloc.s    V_4
            IL_0143:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
            IL_0148:  stelem.ref
            IL_0149:  call       void [Engine]Engine.Log::Warning(string,
                                                                  object[])
            IL_014e:  leave.s    IL_0150

          }  // end handler
          IL_0150:  leave.s    IL_016b

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_0152:  stloc.s    V_5
          IL_0154:  ldarg.0
          IL_0155:  ldc.i4.s   -2
          IL_0157:  stfld      int32 Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>1__state'
          IL_015c:  ldarg.0
          IL_015d:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>t__builder'
          IL_0162:  ldloc.s    V_5
          IL_0164:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
          IL_0169:  leave.s    IL_017e

        }  // end handler
        IL_016b:  ldarg.0
        IL_016c:  ldc.i4.s   -2
        IL_016e:  stfld      int32 Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>1__state'
        IL_0173:  ldarg.0
        IL_0174:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>t__builder'
        IL_0179:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
        IL_017e:  ret
      } // end of method '<<Capture>b__0>d'::MoveNext

      .method private hidebysig newslot virtual final 
              instance void  SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
      {
        .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
        // 代码大小       13 (0xd)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>t__builder'
        IL_0006:  ldarg.1
        IL_0007:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine)
        IL_000c:  ret
      } // end of method '<<Capture>b__0>d'::SetStateMachine

    } // end of class '<<Capture>b__0>d'

    .field public class [Engine]Engine.Media.Image image
    .field public class Game.ScreenCaptureManager/'<>c__DisplayClass3_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_1'::.ctor

    .method assembly hidebysig instance class [System.Threading.Tasks]System.Threading.Tasks.Task 
            '<Capture>b__0'() cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 3F 47 61 6D 65 2E 53 63 72 65 65 6E 43 61   // ..?Game.ScreenCa
                                                                                                                                                     70 74 75 72 65 4D 61 6E 61 67 65 72 2B 3C 3E 63   // ptureManager+<>c
                                                                                                                                                     5F 5F 44 69 73 70 6C 61 79 43 6C 61 73 73 33 5F   // __DisplayClass3_
                                                                                                                                                     31 2B 3C 3C 43 61 70 74 75 72 65 3E 62 5F 5F 30   // 1+<<Capture>b__0
                                                                                                                                                     3E 64 00 00 )                                     // >d..
      // 代码大小       57 (0x39)
      .maxstack  2
      .locals init (valuetype Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d' V_0,
               valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder V_1)
      IL_0000:  ldloca.s   V_0
      IL_0002:  ldarg.0
      IL_0003:  stfld      class Game.ScreenCaptureManager/'<>c__DisplayClass3_1' Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>4__this'
      IL_0008:  ldloca.s   V_0
      IL_000a:  call       valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
      IL_000f:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>t__builder'
      IL_0014:  ldloca.s   V_0
      IL_0016:  ldc.i4.m1
      IL_0017:  stfld      int32 Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>1__state'
      IL_001c:  ldloc.0
      IL_001d:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>t__builder'
      IL_0022:  stloc.1
      IL_0023:  ldloca.s   V_1
      IL_0025:  ldloca.s   V_0
      IL_0027:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'>(!!0&)
      IL_002c:  ldloca.s   V_0
      IL_002e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ScreenCaptureManager/'<>c__DisplayClass3_1'/'<<Capture>b__0>d'::'<>t__builder'
      IL_0033:  call       instance class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
      IL_0038:  ret
    } // end of method '<>c__DisplayClass3_1'::'<Capture>b__0'

  } // end of class '<>c__DisplayClass3_1'

  .field private static bool m_captureRequested
  .method public hidebysig static void  Run() cil managed
  {
    // 代码大小       314 (0x13a)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.DateTime V_2,
             valuetype Game.ScreenshotSize V_3,
             float32 V_4,
             class [System.Runtime]System.Exception V_5)
    IL_0000:  ldsfld     bool Game.ScreenCaptureManager::m_captureRequested
    IL_0005:  brfalse    IL_0139

    IL_000a:  ldc.i4.0
    IL_000b:  stsfld     bool Game.ScreenCaptureManager::m_captureRequested
    .try
    {
      IL_0010:  call       valuetype Game.ScreenshotSize Game.SettingsManager::get_ScreenshotSize()
      IL_0015:  stloc.3
      IL_0016:  ldloc.3
      IL_0017:  brfalse.s  IL_001f

      IL_0019:  ldloc.3
      IL_001a:  ldc.i4.1
      IL_001b:  beq.s      IL_0074

      IL_001d:  br.s       IL_0082

      IL_001f:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
      IL_0024:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0029:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
      IL_002e:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0033:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_0038:  stloc.0
      IL_0039:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
      IL_003e:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0043:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
      IL_0048:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_004d:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32)
      IL_0052:  stloc.1
      IL_0053:  ldloc.0
      IL_0054:  conv.r4
      IL_0055:  ldloc.1
      IL_0056:  conv.r4
      IL_0057:  div
      IL_0058:  stloc.s    V_4
      IL_005a:  ldloc.0
      IL_005b:  ldc.i4     0x800
      IL_0060:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32)
      IL_0065:  stloc.0
      IL_0066:  ldloc.0
      IL_0067:  conv.r4
      IL_0068:  ldloc.s    V_4
      IL_006a:  div
      IL_006b:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_0070:  conv.i4
      IL_0071:  stloc.1
      IL_0072:  br.s       IL_008e

      IL_0074:  ldc.i4     0x780
      IL_0079:  stloc.0
      IL_007a:  ldc.i4     0x438
      IL_007f:  stloc.1
      IL_0080:  br.s       IL_008e

      IL_0082:  ldc.i4     0x780
      IL_0087:  stloc.0
      IL_0088:  ldc.i4     0x438
      IL_008d:  stloc.1
      IL_008e:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
      IL_0093:  stloc.2
      IL_0094:  ldloc.0
      IL_0095:  ldloc.1
      IL_0096:  ldstr      "Survivalcraft {0:D4}-{1:D2}-{2:D2} {3:D2}-{4:D2}-{"
      + "5:D2}.jpg"
      IL_009b:  ldc.i4.6
      IL_009c:  newarr     [System.Runtime]System.Object
      IL_00a1:  dup
      IL_00a2:  ldc.i4.0
      IL_00a3:  ldloca.s   V_2
      IL_00a5:  call       instance int32 [System.Runtime]System.DateTime::get_Year()
      IL_00aa:  box        [System.Runtime]System.Int32
      IL_00af:  stelem.ref
      IL_00b0:  dup
      IL_00b1:  ldc.i4.1
      IL_00b2:  ldloca.s   V_2
      IL_00b4:  call       instance int32 [System.Runtime]System.DateTime::get_Month()
      IL_00b9:  box        [System.Runtime]System.Int32
      IL_00be:  stelem.ref
      IL_00bf:  dup
      IL_00c0:  ldc.i4.2
      IL_00c1:  ldloca.s   V_2
      IL_00c3:  call       instance int32 [System.Runtime]System.DateTime::get_Day()
      IL_00c8:  box        [System.Runtime]System.Int32
      IL_00cd:  stelem.ref
      IL_00ce:  dup
      IL_00cf:  ldc.i4.3
      IL_00d0:  ldloca.s   V_2
      IL_00d2:  call       instance int32 [System.Runtime]System.DateTime::get_Hour()
      IL_00d7:  box        [System.Runtime]System.Int32
      IL_00dc:  stelem.ref
      IL_00dd:  dup
      IL_00de:  ldc.i4.4
      IL_00df:  ldloca.s   V_2
      IL_00e1:  call       instance int32 [System.Runtime]System.DateTime::get_Minute()
      IL_00e6:  box        [System.Runtime]System.Int32
      IL_00eb:  stelem.ref
      IL_00ec:  dup
      IL_00ed:  ldc.i4.5
      IL_00ee:  ldloca.s   V_2
      IL_00f0:  call       instance int32 [System.Runtime]System.DateTime::get_Second()
      IL_00f5:  box        [System.Runtime]System.Int32
      IL_00fa:  stelem.ref
      IL_00fb:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0100:  call       void Game.ScreenCaptureManager::Capture(int32,
                                                                   int32,
                                                                   string)
      IL_0105:  call       void [System.Runtime]System.GC::Collect()
      IL_010a:  call       void [System.Runtime]System.GC::WaitForPendingFinalizers()
      IL_010f:  call       void [System.Runtime]System.GC::Collect()
      IL_0114:  leave.s    IL_0139

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0116:  stloc.s    V_5
      IL_0118:  ldstr      "Error capturing screen. Reason: {0}"
      IL_011d:  ldc.i4.1
      IL_011e:  newarr     [System.Runtime]System.Object
      IL_0123:  dup
      IL_0124:  ldc.i4.0
      IL_0125:  ldloc.s    V_5
      IL_0127:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_012c:  stelem.ref
      IL_012d:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0132:  call       void [Engine]Engine.Log::Error(string)
      IL_0137:  leave.s    IL_0139

    }  // end handler
    IL_0139:  ret
  } // end of method ScreenCaptureManager::Run

  .method public hidebysig static void  CapturePhoto() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  stsfld     bool Game.ScreenCaptureManager::m_captureRequested
    IL_0006:  ret
  } // end of method ScreenCaptureManager::CapturePhoto

  .method private hidebysig static void  Capture(int32 width,
                                                 int32 height,
                                                 string filename) cil managed
  {
    // 代码大小       477 (0x1dd)
    .maxstack  9
    .locals init (class Game.ScreenCaptureManager/'<>c__DisplayClass3_0' V_0,
             class [Engine]Engine.Graphics.RenderTarget2D V_1,
             class Game.ScreenCaptureManager/'<>c__DisplayClass3_1' V_2,
             class [Engine]Engine.Graphics.RenderTarget2D V_3,
             bool V_4,
             bool V_5,
             class [Engine]Engine.Graphics.Texture2D V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8)
    IL_0000:  newobj     instance void Game.ScreenCaptureManager/'<>c__DisplayClass3_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      string Game.ScreenCaptureManager/'<>c__DisplayClass3_0'::filename
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldc.i4.0
    IL_0010:  ldc.i4.2
    IL_0011:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_0016:  stloc.1
    .try
    {
      IL_0017:  newobj     instance void Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::.ctor()
      IL_001c:  stloc.2
      IL_001d:  ldloc.2
      IL_001e:  ldloc.0
      IL_001f:  stfld      class Game.ScreenCaptureManager/'<>c__DisplayClass3_0' Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::'CS$<>8__locals1'
      IL_0024:  call       class [Engine]Engine.Graphics.RenderTarget2D [Engine]Engine.Graphics.Display::get_RenderTarget()
      IL_0029:  stloc.3
      IL_002a:  ldc.i4.1
      IL_002b:  stloc.s    V_4
      IL_002d:  ldc.i4.1
      IL_002e:  stloc.s    V_5
      .try
      {
        IL_0030:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_0035:  brfalse.s  IL_008e

        IL_0037:  call       bool Game.SettingsManager::get_ShowGuiInScreenshots()
        IL_003c:  brtrue.s   IL_006b

        IL_003e:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_0043:  ldc.i4.1
        IL_0044:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
        IL_0049:  callvirt   instance class Game.ContainerWidget Game.SubsystemGui::get_ControlsContainerWidget()
        IL_004e:  callvirt   instance bool Game.Widget::get_IsVisible()
        IL_0053:  stloc.s    V_4
        IL_0055:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_005a:  ldc.i4.1
        IL_005b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
        IL_0060:  callvirt   instance class Game.ContainerWidget Game.SubsystemGui::get_ControlsContainerWidget()
        IL_0065:  ldc.i4.0
        IL_0066:  callvirt   instance void Game.Widget::set_IsVisible(bool)
        IL_006b:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_0070:  ldc.i4.1
        IL_0071:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemScaler>(bool)
        IL_0076:  callvirt   instance bool Game.SubsystemScaler::get_IsScalerEnabled()
        IL_007b:  stloc.s    V_5
        IL_007d:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_0082:  ldc.i4.1
        IL_0083:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemScaler>(bool)
        IL_0088:  ldc.i4.0
        IL_0089:  callvirt   instance void Game.SubsystemScaler::set_IsScalerEnabled(bool)
        IL_008e:  ldloc.1
        IL_008f:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
        IL_0094:  call       void Game.FrontendManager::Draw()
        IL_0099:  call       bool Game.SettingsManager::get_ShowLogoInScreenshots()
        IL_009e:  brfalse    IL_0133

        IL_00a3:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
        IL_00a8:  ldstr      "Textures/Gui/ScreenCaptureOverlay"
        IL_00ad:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
        IL_00b2:  stloc.s    V_6
        IL_00b4:  ldloca.s   V_7
        IL_00b6:  ldarg.0
        IL_00b7:  ldloc.s    V_6
        IL_00b9:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
        IL_00be:  sub
        IL_00bf:  ldc.i4.2
        IL_00c0:  div
        IL_00c1:  conv.r4
        IL_00c2:  ldc.r4     0.0
        IL_00c7:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_00cc:  ldloc.s    V_7
        IL_00ce:  ldloc.s    V_6
        IL_00d0:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
        IL_00d5:  conv.r4
        IL_00d6:  ldloc.s    V_6
        IL_00d8:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
        IL_00dd:  conv.r4
        IL_00de:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_00e3:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                  valuetype [Engine]Engine.Vector2)
        IL_00e8:  stloc.s    V_8
        IL_00ea:  dup
        IL_00eb:  ldloc.s    V_6
        IL_00ed:  ldc.i4.0
        IL_00ee:  ldc.i4.0
        IL_00ef:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
        IL_00f4:  ldnull
        IL_00f5:  ldnull
        IL_00f6:  ldnull
        IL_00f7:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                                bool,
                                                                                                                                                int32,
                                                                                                                                                class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                                class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                                class [Engine]Engine.Graphics.BlendState,
                                                                                                                                                class [Engine]Engine.Graphics.SamplerState)
        IL_00fc:  ldloc.s    V_7
        IL_00fe:  ldloc.s    V_8
        IL_0100:  ldc.r4     0.0
        IL_0105:  ldc.r4     0.0
        IL_010a:  ldc.r4     0.0
        IL_010f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_0114:  ldc.r4     1.
        IL_0119:  ldc.r4     1.
        IL_011e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_0123:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
        IL_0128:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
        IL_012d:  ldc.i4.1
        IL_012e:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
        IL_0133:  leave.s    IL_016c

      }  // end .try
      finally
      {
        IL_0135:  ldloc.3
        IL_0136:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
        IL_013b:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_0140:  brfalse.s  IL_016b

        IL_0142:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_0147:  ldc.i4.1
        IL_0148:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
        IL_014d:  callvirt   instance class Game.ContainerWidget Game.SubsystemGui::get_ControlsContainerWidget()
        IL_0152:  ldloc.s    V_4
        IL_0154:  callvirt   instance void Game.Widget::set_IsVisible(bool)
        IL_0159:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_015e:  ldc.i4.1
        IL_015f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemScaler>(bool)
        IL_0164:  ldloc.s    V_5
        IL_0166:  callvirt   instance void Game.SubsystemScaler::set_IsScalerEnabled(bool)
        IL_016b:  endfinally
      }  // end handler
      IL_016c:  ldloc.2
      IL_016d:  ldfld      class Game.ScreenCaptureManager/'<>c__DisplayClass3_0' Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::'CS$<>8__locals1'
      IL_0172:  ldfld      string Game.ScreenCaptureManager/'<>c__DisplayClass3_0'::filename
      IL_0177:  call       string [Engine]Engine.Storage::GetExtension(string)
      IL_017c:  call       valuetype [Engine]Engine.Media.ImageFileFormat [Engine]Engine.Media.Image::ExtensionToFileFormat(string)
      IL_0181:  pop
      IL_0182:  ldloc.2
      IL_0183:  ldloc.1
      IL_0184:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
      IL_0189:  ldloc.1
      IL_018a:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
      IL_018f:  newobj     instance void [Engine]Engine.Media.Image::.ctor(int32,
                                                                           int32)
      IL_0194:  stfld      class [Engine]Engine.Media.Image Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::image
      IL_0199:  ldloc.1
      IL_019a:  ldloc.2
      IL_019b:  ldfld      class [Engine]Engine.Media.Image Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::image
      IL_01a0:  ldfld      valuetype [Engine]Engine.Color[] [Engine]Engine.Media.Image::Pixels
      IL_01a5:  ldc.i4.0
      IL_01a6:  ldc.i4.0
      IL_01a7:  ldc.i4.0
      IL_01a8:  ldloc.1
      IL_01a9:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
      IL_01ae:  ldloc.1
      IL_01af:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
      IL_01b4:  newobj     instance void [Engine]Engine.Rectangle::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32)
      IL_01b9:  callvirt   instance void [Engine]Engine.Graphics.RenderTarget2D::GetData<valuetype [Engine]Engine.Color>(!!0[],
                                                                                                                         int32,
                                                                                                                         valuetype [Engine]Engine.Rectangle)
      IL_01be:  ldloc.2
      IL_01bf:  ldftn      instance class [System.Threading.Tasks]System.Threading.Tasks.Task Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::'<Capture>b__0'()
      IL_01c5:  newobj     instance void class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>::.ctor(object,
                                                                                                                                               native int)
      IL_01ca:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>)
      IL_01cf:  pop
      IL_01d0:  leave.s    IL_01dc

    }  // end .try
    finally
    {
      IL_01d2:  ldloc.1
      IL_01d3:  brfalse.s  IL_01db

      IL_01d5:  ldloc.1
      IL_01d6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01db:  endfinally
    }  // end handler
    IL_01dc:  ret
  } // end of method ScreenCaptureManager::Capture

} // end of class Game.ScreenCaptureManager