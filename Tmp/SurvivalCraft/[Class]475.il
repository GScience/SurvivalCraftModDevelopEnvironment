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
    // 代码大小       304 (0x130)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.DateTime V_2,
             valuetype Game.ScreenshotSize V_3,
             float32 V_4,
             class [System.Runtime]System.Exception V_5)
    IL_0000:  ldsfld     bool Game.ScreenCaptureManager::m_captureRequested
    IL_0005:  brfalse    IL_012f

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
      IL_010a:  leave.s    IL_012f

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_010c:  stloc.s    V_5
      IL_010e:  ldstr      "Error capturing screen. Reason: {0}"
      IL_0113:  ldc.i4.1
      IL_0114:  newarr     [System.Runtime]System.Object
      IL_0119:  dup
      IL_011a:  ldc.i4.0
      IL_011b:  ldloc.s    V_5
      IL_011d:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0122:  stelem.ref
      IL_0123:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0128:  call       void [Engine]Engine.Log::Error(string)
      IL_012d:  leave.s    IL_012f

    }  // end handler
    IL_012f:  ret
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
    // 代码大小       555 (0x22b)
    .maxstack  9
    .locals init (class Game.ScreenCaptureManager/'<>c__DisplayClass3_0' V_0,
             class [Engine]Engine.Graphics.RenderTarget2D V_1,
             class Game.ScreenCaptureManager/'<>c__DisplayClass3_1' V_2,
             class [Engine]Engine.Graphics.RenderTarget2D V_3,
             class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentGui,bool> V_4,
             valuetype Game.ResolutionMode V_5,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer> V_6,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> V_7,
             class Game.ComponentPlayer V_8,
             class [Engine]Engine.Graphics.Texture2D V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.ComponentGui,bool> V_12,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.ComponentGui,bool> V_13)
    IL_0000:  newobj     instance void Game.ScreenCaptureManager/'<>c__DisplayClass3_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      string Game.ScreenCaptureManager/'<>c__DisplayClass3_0'::filename
    IL_000d:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0012:  brtrue.s   IL_0015

    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  ldc.i4.0
    IL_0018:  ldc.i4.2
    IL_0019:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_001e:  stloc.1
    .try
    {
      IL_001f:  newobj     instance void Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::.ctor()
      IL_0024:  stloc.2
      IL_0025:  ldloc.2
      IL_0026:  ldloc.0
      IL_0027:  stfld      class Game.ScreenCaptureManager/'<>c__DisplayClass3_0' Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::'CS$<>8__locals1'
      IL_002c:  call       class [Engine]Engine.Graphics.RenderTarget2D [Engine]Engine.Graphics.Display::get_RenderTarget()
      IL_0031:  stloc.3
      IL_0032:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentGui,bool>::.ctor()
      IL_0037:  stloc.s    V_4
      IL_0039:  ldc.i4.2
      IL_003a:  stloc.s    V_5
      .try
      {
        IL_003c:  call       bool Game.SettingsManager::get_ShowGuiInScreenshots()
        IL_0041:  brtrue.s   IL_00b3

        IL_0043:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
        IL_0048:  ldc.i4.1
        IL_0049:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
        IL_004e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> Game.SubsystemPlayers::get_ComponentPlayers()
        IL_0053:  stloc.s    V_7
        IL_0055:  ldloca.s   V_7
        IL_0057:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>::GetEnumerator()
        IL_005c:  stloc.s    V_6
        .try
        {
          IL_005e:  br.s       IL_009a

          IL_0060:  ldloca.s   V_6
          IL_0062:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::get_Current()
          IL_0067:  stloc.s    V_8
          IL_0069:  ldloc.s    V_4
          IL_006b:  ldloc.s    V_8
          IL_006d:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
          IL_0072:  ldloc.s    V_8
          IL_0074:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
          IL_0079:  callvirt   instance class Game.ContainerWidget Game.ComponentGui::get_ControlsContainerWidget()
          IL_007e:  callvirt   instance bool Game.Widget::get_IsVisible()
          IL_0083:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentGui,bool>::set_Item(!0,
                                                                                                                                                       !1)
          IL_0088:  ldloc.s    V_8
          IL_008a:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
          IL_008f:  callvirt   instance class Game.ContainerWidget Game.ComponentGui::get_ControlsContainerWidget()
          IL_0094:  ldc.i4.0
          IL_0095:  callvirt   instance void Game.Widget::set_IsVisible(bool)
          IL_009a:  ldloca.s   V_6
          IL_009c:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::MoveNext()
          IL_00a1:  brtrue.s   IL_0060

          IL_00a3:  leave.s    IL_00b3

        }  // end .try
        finally
        {
          IL_00a5:  ldloca.s   V_6
          IL_00a7:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>
          IL_00ad:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_00b2:  endfinally
        }  // end handler
        IL_00b3:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
        IL_00b8:  stloc.s    V_5
        IL_00ba:  ldc.i4.2
        IL_00bb:  call       void Game.SettingsManager::set_ResolutionMode(valuetype Game.ResolutionMode)
        IL_00c0:  ldloc.1
        IL_00c1:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
        IL_00c6:  call       void Game.WidgetsManager::Draw()
        IL_00cb:  call       bool Game.SettingsManager::get_ShowLogoInScreenshots()
        IL_00d0:  brfalse    IL_0165

        IL_00d5:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
        IL_00da:  ldstr      "Textures/Gui/ScreenCaptureOverlay"
        IL_00df:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
        IL_00e4:  stloc.s    V_9
        IL_00e6:  ldloca.s   V_10
        IL_00e8:  ldarg.0
        IL_00e9:  ldloc.s    V_9
        IL_00eb:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
        IL_00f0:  sub
        IL_00f1:  ldc.i4.2
        IL_00f2:  div
        IL_00f3:  conv.r4
        IL_00f4:  ldc.r4     0.0
        IL_00f9:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_00fe:  ldloc.s    V_10
        IL_0100:  ldloc.s    V_9
        IL_0102:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
        IL_0107:  conv.r4
        IL_0108:  ldloc.s    V_9
        IL_010a:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
        IL_010f:  conv.r4
        IL_0110:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_0115:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                  valuetype [Engine]Engine.Vector2)
        IL_011a:  stloc.s    V_11
        IL_011c:  dup
        IL_011d:  ldloc.s    V_9
        IL_011f:  ldc.i4.0
        IL_0120:  ldc.i4.0
        IL_0121:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
        IL_0126:  ldnull
        IL_0127:  ldnull
        IL_0128:  ldnull
        IL_0129:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                                bool,
                                                                                                                                                int32,
                                                                                                                                                class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                                class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                                class [Engine]Engine.Graphics.BlendState,
                                                                                                                                                class [Engine]Engine.Graphics.SamplerState)
        IL_012e:  ldloc.s    V_10
        IL_0130:  ldloc.s    V_11
        IL_0132:  ldc.r4     0.0
        IL_0137:  ldc.r4     0.0
        IL_013c:  ldc.r4     0.0
        IL_0141:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_0146:  ldc.r4     1.
        IL_014b:  ldc.r4     1.
        IL_0150:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_0155:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
        IL_015a:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
        IL_015f:  ldc.i4.1
        IL_0160:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
        IL_0165:  leave.s    IL_01ba

      }  // end .try
      finally
      {
        IL_0167:  ldloc.3
        IL_0168:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
        IL_016d:  ldloc.s    V_4
        IL_016f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentGui,bool>::GetEnumerator()
        IL_0174:  stloc.s    V_12
        .try
        {
          IL_0176:  br.s       IL_0199

          IL_0178:  ldloca.s   V_12
          IL_017a:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.ComponentGui,bool>::get_Current()
          IL_017f:  stloc.s    V_13
          IL_0181:  ldloca.s   V_13
          IL_0183:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.ComponentGui,bool>::get_Key()
          IL_0188:  callvirt   instance class Game.ContainerWidget Game.ComponentGui::get_ControlsContainerWidget()
          IL_018d:  ldloca.s   V_13
          IL_018f:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.ComponentGui,bool>::get_Value()
          IL_0194:  callvirt   instance void Game.Widget::set_IsVisible(bool)
          IL_0199:  ldloca.s   V_12
          IL_019b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.ComponentGui,bool>::MoveNext()
          IL_01a0:  brtrue.s   IL_0178

          IL_01a2:  leave.s    IL_01b2

        }  // end .try
        finally
        {
          IL_01a4:  ldloca.s   V_12
          IL_01a6:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.ComponentGui,bool>
          IL_01ac:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_01b1:  endfinally
        }  // end handler
        IL_01b2:  ldloc.s    V_5
        IL_01b4:  call       void Game.SettingsManager::set_ResolutionMode(valuetype Game.ResolutionMode)
        IL_01b9:  endfinally
      }  // end handler
      IL_01ba:  ldloc.2
      IL_01bb:  ldfld      class Game.ScreenCaptureManager/'<>c__DisplayClass3_0' Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::'CS$<>8__locals1'
      IL_01c0:  ldfld      string Game.ScreenCaptureManager/'<>c__DisplayClass3_0'::filename
      IL_01c5:  call       string [Engine]Engine.Storage::GetExtension(string)
      IL_01ca:  call       valuetype [Engine]Engine.Media.ImageFileFormat [Engine]Engine.Media.Image::DetermineFileFormat(string)
      IL_01cf:  pop
      IL_01d0:  ldloc.2
      IL_01d1:  ldloc.1
      IL_01d2:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
      IL_01d7:  ldloc.1
      IL_01d8:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
      IL_01dd:  newobj     instance void [Engine]Engine.Media.Image::.ctor(int32,
                                                                           int32)
      IL_01e2:  stfld      class [Engine]Engine.Media.Image Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::image
      IL_01e7:  ldloc.1
      IL_01e8:  ldloc.2
      IL_01e9:  ldfld      class [Engine]Engine.Media.Image Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::image
      IL_01ee:  ldfld      valuetype [Engine]Engine.Color[] [Engine]Engine.Media.Image::Pixels
      IL_01f3:  ldc.i4.0
      IL_01f4:  ldc.i4.0
      IL_01f5:  ldc.i4.0
      IL_01f6:  ldloc.1
      IL_01f7:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
      IL_01fc:  ldloc.1
      IL_01fd:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
      IL_0202:  newobj     instance void [Engine]Engine.Rectangle::.ctor(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32)
      IL_0207:  callvirt   instance void [Engine]Engine.Graphics.RenderTarget2D::GetData<valuetype [Engine]Engine.Color>(!!0[],
                                                                                                                         int32,
                                                                                                                         valuetype [Engine]Engine.Rectangle)
      IL_020c:  ldloc.2
      IL_020d:  ldftn      instance class [System.Threading.Tasks]System.Threading.Tasks.Task Game.ScreenCaptureManager/'<>c__DisplayClass3_1'::'<Capture>b__0'()
      IL_0213:  newobj     instance void class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>::.ctor(object,
                                                                                                                                               native int)
      IL_0218:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>)
      IL_021d:  pop
      IL_021e:  leave.s    IL_022a

    }  // end .try
    finally
    {
      IL_0220:  ldloc.1
      IL_0221:  brfalse.s  IL_0229

      IL_0223:  ldloc.1
      IL_0224:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0229:  endfinally
    }  // end handler
    IL_022a:  ret
  } // end of method ScreenCaptureManager::Capture

} // end of class Game.ScreenCaptureManager