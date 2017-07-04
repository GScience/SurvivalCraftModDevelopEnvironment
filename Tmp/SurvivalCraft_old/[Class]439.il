.class public abstract auto ansi sealed beforefieldinit Game.ClipboardManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass1_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .class auto ansi sealed nested private beforefieldinit '<<get_ClipboardString>b__0>d'
           extends [System.Runtime]System.ValueType
           implements [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine
    {
      .field public int32 '<>1__state'
      .field public valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
      .field public class Game.ClipboardManager/'<>c__DisplayClass1_0' '<>4__this'
      .field private class Game.ClipboardManager/'<>c__DisplayClass1_0' '<>7__wrap1'
      .field private valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> '<>u__1'
      .method private hidebysig newslot virtual final 
              instance void  MoveNext() cil managed
      {
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
        // 代码大小       237 (0xed)
        .maxstack  5
        .locals init (int32 V_0,
                 string V_1,
                 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> V_2,
                 class [System.Runtime]System.Exception V_3,
                 class [System.Runtime]System.Exception V_4)
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>1__state'
        IL_0006:  stloc.0
        .try
        {
          IL_0007:  ldloc.0
          IL_0008:  pop
          IL_0009:  nop
          .try
          {
            IL_000a:  ldloc.0
            IL_000b:  brfalse.s  IL_0061

            IL_000d:  call       class [Windows]Windows.ApplicationModel.DataTransfer.DataPackageView [Windows]Windows.ApplicationModel.DataTransfer.Clipboard::GetContent()
            IL_0012:  ldarg.0
            IL_0013:  ldarg.0
            IL_0014:  ldfld      class Game.ClipboardManager/'<>c__DisplayClass1_0' Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>4__this'
            IL_0019:  stfld      class Game.ClipboardManager/'<>c__DisplayClass1_0' Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>7__wrap1'
            IL_001e:  ldarg.0
            IL_001f:  ldfld      class Game.ClipboardManager/'<>c__DisplayClass1_0' Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>7__wrap1'
            IL_0024:  ldfld      string Game.ClipboardManager/'<>c__DisplayClass1_0'::result
            IL_0029:  pop
            IL_002a:  callvirt   instance class [Windows]Windows.Foundation.IAsyncOperation`1<string> [Windows]Windows.ApplicationModel.DataTransfer.DataPackageView::GetTextAsync()
            IL_002f:  call       valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<!!0> [System.Runtime.WindowsRuntime]System.WindowsRuntimeSystemExtensions::GetAwaiter<string>(class [Windows]Windows.Foundation.IAsyncOperation`1<!!0>)
            IL_0034:  stloc.2
            IL_0035:  ldloca.s   V_2
            IL_0037:  call       instance bool valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>::get_IsCompleted()
            IL_003c:  brtrue.s   IL_007d

            IL_003e:  ldarg.0
            IL_003f:  ldc.i4.0
            IL_0040:  dup
            IL_0041:  stloc.0
            IL_0042:  stfld      int32 Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>1__state'
            IL_0047:  ldarg.0
            IL_0048:  ldloc.2
            IL_0049:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>u__1'
            IL_004e:  ldarg.0
            IL_004f:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>t__builder'
            IL_0054:  ldloca.s   V_2
            IL_0056:  ldarg.0
            IL_0057:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>,valuetype Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'>(!!0&,
                                                                                                                                                                                                                                                                                                                                     !!1&)
            IL_005c:  leave      IL_00ec

            IL_0061:  ldarg.0
            IL_0062:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>u__1'
            IL_0067:  stloc.2
            IL_0068:  ldarg.0
            IL_0069:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string> Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>u__1'
            IL_006e:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>
            IL_0074:  ldarg.0
            IL_0075:  ldc.i4.m1
            IL_0076:  dup
            IL_0077:  stloc.0
            IL_0078:  stfld      int32 Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>1__state'
            IL_007d:  ldloca.s   V_2
            IL_007f:  call       instance !0 valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>::GetResult()
            IL_0084:  ldloca.s   V_2
            IL_0086:  initobj    valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.TaskAwaiter`1<string>
            IL_008c:  stloc.1
            IL_008d:  ldarg.0
            IL_008e:  ldfld      class Game.ClipboardManager/'<>c__DisplayClass1_0' Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>7__wrap1'
            IL_0093:  ldloc.1
            IL_0094:  stfld      string Game.ClipboardManager/'<>c__DisplayClass1_0'::result
            IL_0099:  ldarg.0
            IL_009a:  ldnull
            IL_009b:  stfld      class Game.ClipboardManager/'<>c__DisplayClass1_0' Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>7__wrap1'
            IL_00a0:  leave.s    IL_00be

          }  // end .try
          catch [System.Runtime]System.Exception 
          {
            IL_00a2:  stloc.3
            IL_00a3:  ldstr      "Failed to retrieve text from clipboard. Reason: {0}"
            IL_00a8:  ldc.i4.1
            IL_00a9:  newarr     [System.Runtime]System.Object
            IL_00ae:  dup
            IL_00af:  ldc.i4.0
            IL_00b0:  ldloc.3
            IL_00b1:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
            IL_00b6:  stelem.ref
            IL_00b7:  call       void [Engine]Engine.Log::Error(string,
                                                                object[])
            IL_00bc:  leave.s    IL_00be

          }  // end handler
          IL_00be:  leave.s    IL_00d9

        }  // end .try
        catch [System.Runtime]System.Exception 
        {
          IL_00c0:  stloc.s    V_4
          IL_00c2:  ldarg.0
          IL_00c3:  ldc.i4.s   -2
          IL_00c5:  stfld      int32 Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>1__state'
          IL_00ca:  ldarg.0
          IL_00cb:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>t__builder'
          IL_00d0:  ldloc.s    V_4
          IL_00d2:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
          IL_00d7:  leave.s    IL_00ec

        }  // end handler
        IL_00d9:  ldarg.0
        IL_00da:  ldc.i4.s   -2
        IL_00dc:  stfld      int32 Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>1__state'
        IL_00e1:  ldarg.0
        IL_00e2:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>t__builder'
        IL_00e7:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
        IL_00ec:  ret
      } // end of method '<<get_ClipboardString>b__0>d'::MoveNext

      .method private hidebysig newslot virtual final 
              instance void  SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
      {
        .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
        .override [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
        // 代码大小       13 (0xd)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>t__builder'
        IL_0006:  ldarg.1
        IL_0007:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [System.Threading.Tasks]System.Runtime.CompilerServices.IAsyncStateMachine)
        IL_000c:  ret
      } // end of method '<<get_ClipboardString>b__0>d'::SetStateMachine

    } // end of class '<<get_ClipboardString>b__0>d'

    .field public string result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass1_0'::.ctor

    .method assembly hidebysig instance class [System.Threading.Tasks]System.Threading.Tasks.Task 
            '<get_ClipboardString>b__0'() cil managed
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 47 47 61 6D 65 2E 43 6C 69 70 62 6F 61 72   // ..GGame.Clipboar
                                                                                                                                                     64 4D 61 6E 61 67 65 72 2B 3C 3E 63 5F 5F 44 69   // dManager+<>c__Di
                                                                                                                                                     73 70 6C 61 79 43 6C 61 73 73 31 5F 30 2B 3C 3C   // splayClass1_0+<<
                                                                                                                                                     67 65 74 5F 43 6C 69 70 62 6F 61 72 64 53 74 72   // get_ClipboardStr
                                                                                                                                                     69 6E 67 3E 62 5F 5F 30 3E 64 00 00 )             // ing>b__0>d..
      // 代码大小       57 (0x39)
      .maxstack  2
      .locals init (valuetype Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d' V_0,
               valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder V_1)
      IL_0000:  ldloca.s   V_0
      IL_0002:  ldarg.0
      IL_0003:  stfld      class Game.ClipboardManager/'<>c__DisplayClass1_0' Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>4__this'
      IL_0008:  ldloca.s   V_0
      IL_000a:  call       valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
      IL_000f:  stfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>t__builder'
      IL_0014:  ldloca.s   V_0
      IL_0016:  ldc.i4.m1
      IL_0017:  stfld      int32 Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>1__state'
      IL_001c:  ldloc.0
      IL_001d:  ldfld      valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>t__builder'
      IL_0022:  stloc.1
      IL_0023:  ldloca.s   V_1
      IL_0025:  ldloca.s   V_0
      IL_0027:  call       instance void [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'>(!!0&)
      IL_002c:  ldloca.s   V_0
      IL_002e:  ldflda     valuetype [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder Game.ClipboardManager/'<>c__DisplayClass1_0'/'<<get_ClipboardString>b__0>d'::'<>t__builder'
      IL_0033:  call       instance class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
      IL_0038:  ret
    } // end of method '<>c__DisplayClass1_0'::'<get_ClipboardString>b__0'

  } // end of class '<>c__DisplayClass1_0'

  .method public hidebysig specialname static 
          string  get_ClipboardString() cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  newobj     instance void Game.ClipboardManager/'<>c__DisplayClass1_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000b:  stfld      string Game.ClipboardManager/'<>c__DisplayClass1_0'::result
    IL_0010:  dup
    IL_0011:  ldftn      instance class [System.Threading.Tasks]System.Threading.Tasks.Task Game.ClipboardManager/'<>c__DisplayClass1_0'::'<get_ClipboardString>b__0'()
    IL_0017:  newobj     instance void class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>::.ctor(object,
                                                                                                                                             native int)
    IL_001c:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Func`1<class [System.Threading.Tasks]System.Threading.Tasks.Task>)
    IL_0021:  callvirt   instance void [System.Threading.Tasks]System.Threading.Tasks.Task::Wait()
    IL_0026:  ldfld      string Game.ClipboardManager/'<>c__DisplayClass1_0'::result
    IL_002b:  ret
  } // end of method ClipboardManager::get_ClipboardString

  .method public hidebysig specialname static 
          void  set_ClipboardString(string 'value') cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  5
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  newobj     instance void [Windows]Windows.ApplicationModel.DataTransfer.DataPackage::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  callvirt   instance void [Windows]Windows.ApplicationModel.DataTransfer.DataPackage::SetText(string)
      IL_000c:  call       void [Windows]Windows.ApplicationModel.DataTransfer.Clipboard::SetContent(class [Windows]Windows.ApplicationModel.DataTransfer.DataPackage)
      IL_0011:  leave.s    IL_002f

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0013:  stloc.0
      IL_0014:  ldstr      "Failed to put text to clipboard. Reason: {0}"
      IL_0019:  ldc.i4.1
      IL_001a:  newarr     [System.Runtime]System.Object
      IL_001f:  dup
      IL_0020:  ldc.i4.0
      IL_0021:  ldloc.0
      IL_0022:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0027:  stelem.ref
      IL_0028:  call       void [Engine]Engine.Log::Error(string,
                                                          object[])
      IL_002d:  leave.s    IL_002f

    }  // end handler
    IL_002f:  ret
  } // end of method ClipboardManager::set_ClipboardString

  .property string ClipboardString()
  {
    .get string Game.ClipboardManager::get_ClipboardString()
    .set void Game.ClipboardManager::set_ClipboardString(string)
  } // end of property ClipboardManager::ClipboardString
} // end of class Game.ClipboardManager