.class public abstract auto ansi sealed beforefieldinit Game.ExternalContentManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass6_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string extension
    .field public class [System.Runtime]System.Func`2<string,bool> '<>9__0'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass6_0'::.ctor

    .method assembly hidebysig instance bool 
            '<ExtensionToType>b__0'(string e) cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.0
      IL_0002:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass6_0'::extension
      IL_0007:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass6_0'::'<ExtensionToType>b__0'

  } // end of class '<>c__DisplayClass6_0'

  .class auto ansi sealed nested private beforefieldinit '<GetEntryTypeExtensions>d__7'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private string '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field private valuetype Game.ExternalContentType 'type'
    .field public valuetype Game.ExternalContentType '<>3__type'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetEntryTypeExtensions>d__7'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetEntryTypeExtensions>d__7'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       225 (0xe1)
      .maxstack  2
      .locals init (int32 V_0,
               valuetype Game.ExternalContentType V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  switch     ( 
                            IL_0027,
                            IL_0066,
                            IL_0083,
                            IL_009e,
                            IL_00bb,
                            IL_00d8)
      IL_0025:  ldc.i4.0
      IL_0026:  ret

      IL_0027:  ldarg.0
      IL_0028:  ldc.i4.m1
      IL_0029:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_002e:  ldarg.0
      IL_002f:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'type'
      IL_0034:  stloc.1
      IL_0035:  ldloc.1
      IL_0036:  ldc.i4.2
      IL_0037:  sub
      IL_0038:  switch     ( 
                            IL_0052,
                            IL_006f,
                            IL_00a7,
                            IL_00c4)
      IL_004d:  br         IL_00df

      IL_0052:  ldarg.0
      IL_0053:  ldstr      ".scworld"
      IL_0058:  stfld      string Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>2__current'
      IL_005d:  ldarg.0
      IL_005e:  ldc.i4.1
      IL_005f:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_0064:  ldc.i4.1
      IL_0065:  ret

      IL_0066:  ldarg.0
      IL_0067:  ldc.i4.m1
      IL_0068:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_006d:  br.s       IL_00df

      IL_006f:  ldarg.0
      IL_0070:  ldstr      ".scbtex"
      IL_0075:  stfld      string Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>2__current'
      IL_007a:  ldarg.0
      IL_007b:  ldc.i4.2
      IL_007c:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_0081:  ldc.i4.1
      IL_0082:  ret

      IL_0083:  ldarg.0
      IL_0084:  ldc.i4.m1
      IL_0085:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_008a:  ldarg.0
      IL_008b:  ldstr      ".png"
      IL_0090:  stfld      string Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>2__current'
      IL_0095:  ldarg.0
      IL_0096:  ldc.i4.3
      IL_0097:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_009c:  ldc.i4.1
      IL_009d:  ret

      IL_009e:  ldarg.0
      IL_009f:  ldc.i4.m1
      IL_00a0:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_00a5:  br.s       IL_00df

      IL_00a7:  ldarg.0
      IL_00a8:  ldstr      ".scskin"
      IL_00ad:  stfld      string Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>2__current'
      IL_00b2:  ldarg.0
      IL_00b3:  ldc.i4.4
      IL_00b4:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_00b9:  ldc.i4.1
      IL_00ba:  ret

      IL_00bb:  ldarg.0
      IL_00bc:  ldc.i4.m1
      IL_00bd:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_00c2:  br.s       IL_00df

      IL_00c4:  ldarg.0
      IL_00c5:  ldstr      ".scfpack"
      IL_00ca:  stfld      string Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>2__current'
      IL_00cf:  ldarg.0
      IL_00d0:  ldc.i4.5
      IL_00d1:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_00d6:  ldc.i4.1
      IL_00d7:  ret

      IL_00d8:  ldarg.0
      IL_00d9:  ldc.i4.m1
      IL_00da:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_00df:  ldc.i4.0
      IL_00e0:  ret
    } // end of method '<GetEntryTypeExtensions>d__7'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance string  'System.Collections.Generic.IEnumerator<System.String>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      string Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetEntryTypeExtensions>d__7'::'System.Collections.Generic.IEnumerator<System.String>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetEntryTypeExtensions>d__7'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      string Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetEntryTypeExtensions>d__7'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<string> 
            'System.Collections.Generic.IEnumerable<System.String>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>3__type'
      IL_0030:  stfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'type'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetEntryTypeExtensions>d__7'::'System.Collections.Generic.IEnumerable<System.String>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<string> Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'System.Collections.Generic.IEnumerable<System.String>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetEntryTypeExtensions>d__7'::System.Collections.IEnumerable.GetEnumerator

    .property instance string 'System.Collections.Generic.IEnumerator<System.String>.Current'()
    {
      .get instance string Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'System.Collections.Generic.IEnumerator<System.String>.get_Current'()
    } // end of property '<GetEntryTypeExtensions>d__7'::'System.Collections.Generic.IEnumerator<System.String>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetEntryTypeExtensions>d__7'::System.Collections.IEnumerator.Current
  } // end of class '<GetEntryTypeExtensions>d__7'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass14_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action`1<string> success
    .field public class [System.IO]System.IO.Stream 'stream'
    .field public valuetype Game.ExternalContentType 'type'
    .field public string name
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass14_0'::.ctor

    .method assembly hidebysig instance void 
            '<ImportExternalContent>b__0'() cil managed
    {
      // 代码大小       52 (0x34)
      .maxstack  4
      .locals init (class [System.Runtime]System.Exception V_0)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      class [System.Runtime]System.Action`1<string> Game.ExternalContentManager/'<>c__DisplayClass14_0'::success
        IL_0006:  ldarg.0
        IL_0007:  ldfld      class [System.IO]System.IO.Stream Game.ExternalContentManager/'<>c__DisplayClass14_0'::'stream'
        IL_000c:  ldarg.0
        IL_000d:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<>c__DisplayClass14_0'::'type'
        IL_0012:  ldarg.0
        IL_0013:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass14_0'::name
        IL_0018:  call       string Game.ExternalContentManager::ImportExternalContentSync(class [System.IO]System.IO.Stream,
                                                                                           valuetype Game.ExternalContentType,
                                                                                           string)
        IL_001d:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
        IL_0022:  leave.s    IL_0033

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0024:  stloc.0
        IL_0025:  ldarg.0
        IL_0026:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.ExternalContentManager/'<>c__DisplayClass14_0'::failure
        IL_002b:  ldloc.0
        IL_002c:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
        IL_0031:  leave.s    IL_0033

      }  // end handler
      IL_0033:  ret
    } // end of method '<>c__DisplayClass14_0'::'<ImportExternalContent>b__0'

  } // end of class '<>c__DisplayClass14_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass16_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.IExternalContentProvider provider
    .field public class [System.Runtime]System.Action 'handler'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass16_0'::.ctor

    .method assembly hidebysig instance void 
            '<ShowLoginUiIfNeeded>b__0'() cil managed
    {
      // 代码大小       89 (0x59)
      .maxstack  5
      .locals init (class Game.ExternalContentManager/'<>c__DisplayClass16_1' V_0)
      IL_0000:  newobj     instance void Game.ExternalContentManager/'<>c__DisplayClass16_1'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.ExternalContentManager/'<>c__DisplayClass16_0' Game.ExternalContentManager/'<>c__DisplayClass16_1'::'CS$<>8__locals2'
      IL_000d:  ldloc.0
      IL_000e:  ldstr      "Logging in"
      IL_0013:  ldc.i4.1
      IL_0014:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                           bool)
      IL_0019:  stfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass16_1'::busyDialog
      IL_001e:  ldnull
      IL_001f:  ldloc.0
      IL_0020:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass16_1'::busyDialog
      IL_0025:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.IExternalContentProvider Game.ExternalContentManager/'<>c__DisplayClass16_0'::provider
      IL_0030:  ldloc.0
      IL_0031:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass16_1'::busyDialog
      IL_0036:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
      IL_003b:  ldloc.0
      IL_003c:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass16_1'::'<ShowLoginUiIfNeeded>b__1'()
      IL_0042:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0047:  ldloc.0
      IL_0048:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass16_1'::'<ShowLoginUiIfNeeded>b__2'(class [System.Runtime]System.Exception)
      IL_004e:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0053:  callvirt   instance void Game.IExternalContentProvider::Login(class Game.CancellableProgress,
                                                                              class [System.Runtime]System.Action,
                                                                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0058:  ret
    } // end of method '<>c__DisplayClass16_0'::'<ShowLoginUiIfNeeded>b__0'

  } // end of class '<>c__DisplayClass16_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass16_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .field public class Game.ExternalContentManager/'<>c__DisplayClass16_0' 'CS$<>8__locals2'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass16_1'::.ctor

    .method assembly hidebysig instance void 
            '<ShowLoginUiIfNeeded>b__1'() cil managed
    {
      // 代码大小       33 (0x21)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass16_1'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass16_0' Game.ExternalContentManager/'<>c__DisplayClass16_1'::'CS$<>8__locals2'
      IL_0011:  ldfld      class [System.Runtime]System.Action Game.ExternalContentManager/'<>c__DisplayClass16_0'::'handler'
      IL_0016:  dup
      IL_0017:  brtrue.s   IL_001b

      IL_0019:  pop
      IL_001a:  ret

      IL_001b:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0020:  ret
    } // end of method '<>c__DisplayClass16_1'::'<ShowLoginUiIfNeeded>b__1'

    .method assembly hidebysig instance void 
            '<ShowLoginUiIfNeeded>b__2'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       44 (0x2c)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass16_1'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.1
      IL_000c:  brfalse.s  IL_002b

      IL_000e:  ldnull
      IL_000f:  ldstr      "Error"
      IL_0014:  ldarg.1
      IL_0015:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_001a:  ldstr      "OK"
      IL_001f:  ldnull
      IL_0020:  ldnull
      IL_0021:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0026:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_002b:  ret
    } // end of method '<>c__DisplayClass16_1'::'<ShowLoginUiIfNeeded>b__2'

  } // end of class '<>c__DisplayClass16_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass16_2'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action loginAction
    .field public class Game.ExternalContentManager/'<>c__DisplayClass16_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass16_2'::.ctor

    .method assembly hidebysig instance void 
            '<ShowLoginUiIfNeeded>b__3'(valuetype Game.MessageDialogButton b) cil managed
    {
      // 代码大小       15 (0xf)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_000e

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class [System.Runtime]System.Action Game.ExternalContentManager/'<>c__DisplayClass16_2'::loginAction
      IL_0009:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_000e:  ret
    } // end of method '<>c__DisplayClass16_2'::'<ShowLoginUiIfNeeded>b__3'

  } // end of class '<>c__DisplayClass16_2'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.IO]System.IO.Stream 'stream'
    .field public bool needsDelete
    .field public string sourcePath
    .field public class [System.Runtime]System.Action cleanup
    .field public class Game.ExternalContentManager/'<>c__DisplayClass17_2' 'CS$<>8__locals3'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass17_0'::.ctor

    .method assembly hidebysig instance void 
            '<ShowUploadUi>b__3'() cil managed
    {
      // 代码大小       44 (0x2c)
      .maxstack  1
      IL_0000:  ldarg.0
      IL_0001:  ldflda     class [System.IO]System.IO.Stream Game.ExternalContentManager/'<>c__DisplayClass17_0'::'stream'
      IL_0006:  call       void [Engine]Engine.Utilities::Dispose<class [System.IO]System.IO.Stream>(!!0&)
      IL_000b:  ldarg.0
      IL_000c:  ldfld      bool Game.ExternalContentManager/'<>c__DisplayClass17_0'::needsDelete
      IL_0011:  brfalse.s  IL_002b

      IL_0013:  ldarg.0
      IL_0014:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
      IL_0019:  brfalse.s  IL_002b

      .try
      {
        IL_001b:  ldarg.0
        IL_001c:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_0021:  call       void [Engine]Engine.Storage::DeleteFile(string)
        IL_0026:  leave.s    IL_002b

      }  // end .try
      catch [System.Runtime]System.Object 
      {
        IL_0028:  pop
        IL_0029:  leave.s    IL_002b

      }  // end handler
      IL_002b:  ret
    } // end of method '<>c__DisplayClass17_0'::'<ShowUploadUi>b__3'

    .method assembly hidebysig instance void 
            '<ShowUploadUi>b__4'(string link) cil managed
    {
      // 代码大小       109 (0x6d)
      .maxstack  7
      .locals init (int64 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.IO]System.IO.Stream Game.ExternalContentManager/'<>c__DisplayClass17_0'::'stream'
      IL_0006:  callvirt   instance int64 [System.IO]System.IO.Stream::get_Length()
      IL_000b:  stloc.0
      IL_000c:  ldarg.0
      IL_000d:  ldfld      class [System.Runtime]System.Action Game.ExternalContentManager/'<>c__DisplayClass17_0'::cleanup
      IL_0012:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0017:  ldarg.0
      IL_0018:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_2' Game.ExternalContentManager/'<>c__DisplayClass17_0'::'CS$<>8__locals3'
      IL_001d:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass17_2'::busyDialog
      IL_0022:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_0027:  ldarg.1
      IL_0028:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_002d:  brfalse.s  IL_0060

      IL_002f:  ldnull
      IL_0030:  ldstr      "Success"
      IL_0035:  ldstr      "{0} uploaded."
      IL_003a:  ldc.i4.1
      IL_003b:  newarr     [System.Runtime]System.Object
      IL_0040:  dup
      IL_0041:  ldc.i4.0
      IL_0042:  ldloc.0
      IL_0043:  call       string Game.DataSizeFormatter::Format(int64)
      IL_0048:  stelem.ref
      IL_0049:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_004e:  ldstr      "OK"
      IL_0053:  ldnull
      IL_0054:  ldnull
      IL_0055:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_005a:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_005f:  ret

      IL_0060:  ldnull
      IL_0061:  ldarg.1
      IL_0062:  newobj     instance void Game.ExternalContentLinkDialog::.ctor(string)
      IL_0067:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_006c:  ret
    } // end of method '<>c__DisplayClass17_0'::'<ShowUploadUi>b__4'

    .method assembly hidebysig instance void 
            '<ShowUploadUi>b__5'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       57 (0x39)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action Game.ExternalContentManager/'<>c__DisplayClass17_0'::cleanup
      IL_0006:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_2' Game.ExternalContentManager/'<>c__DisplayClass17_0'::'CS$<>8__locals3'
      IL_0011:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass17_2'::busyDialog
      IL_0016:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_001b:  ldnull
      IL_001c:  ldstr      "Error"
      IL_0021:  ldarg.1
      IL_0022:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0027:  ldstr      "OK"
      IL_002c:  ldnull
      IL_002d:  ldnull
      IL_002e:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0033:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0038:  ret
    } // end of method '<>c__DisplayClass17_0'::'<ShowUploadUi>b__5'

  } // end of class '<>c__DisplayClass17_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype Game.ExternalContentType 'type'
    .field public string name
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass17_1'::.ctor

    .method assembly hidebysig instance void 
            '<ShowUploadUi>b__0'(class Game.IExternalContentProvider provider) cil managed
    {
      // 代码大小       89 (0x59)
      .maxstack  6
      .locals init (class Game.ExternalContentManager/'<>c__DisplayClass17_3' V_0,
               class [System.Runtime]System.Exception V_1)
      IL_0000:  newobj     instance void Game.ExternalContentManager/'<>c__DisplayClass17_3'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.ExternalContentManager/'<>c__DisplayClass17_1' Game.ExternalContentManager/'<>c__DisplayClass17_3'::'CS$<>8__locals1'
      IL_000d:  ldloc.0
      IL_000e:  ldarg.1
      IL_000f:  stfld      class Game.IExternalContentProvider Game.ExternalContentManager/'<>c__DisplayClass17_3'::provider
      .try
      {
        IL_0014:  ldloc.0
        IL_0015:  ldfld      class Game.IExternalContentProvider Game.ExternalContentManager/'<>c__DisplayClass17_3'::provider
        IL_001a:  brtrue.s   IL_001e

        IL_001c:  leave.s    IL_0058

        IL_001e:  ldloc.0
        IL_001f:  ldfld      class Game.IExternalContentProvider Game.ExternalContentManager/'<>c__DisplayClass17_3'::provider
        IL_0024:  ldc.i4.1
        IL_0025:  ldloc.0
        IL_0026:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass17_3'::'<ShowUploadUi>b__1'()
        IL_002c:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                native int)
        IL_0031:  call       void Game.ExternalContentManager::ShowLoginUiIfNeeded(class Game.IExternalContentProvider,
                                                                                   bool,
                                                                                   class [System.Runtime]System.Action)
        IL_0036:  leave.s    IL_0058

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0038:  stloc.1
        IL_0039:  ldnull
        IL_003a:  ldstr      "Error"
        IL_003f:  ldloc.1
        IL_0040:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_0045:  ldstr      "OK"
        IL_004a:  ldnull
        IL_004b:  ldnull
        IL_004c:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                     string,
                                                                     string,
                                                                     string,
                                                                     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
        IL_0051:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                  class Game.Dialog)
        IL_0056:  leave.s    IL_0058

      }  // end handler
      IL_0058:  ret
    } // end of method '<>c__DisplayClass17_1'::'<ShowUploadUi>b__0'

  } // end of class '<>c__DisplayClass17_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_2'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .field public class Game.ExternalContentManager/'<>c__DisplayClass17_3' 'CS$<>8__locals2'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass17_2'::.ctor

    .method assembly hidebysig instance void 
            '<ShowUploadUi>b__2'() cil managed
    {
      // 代码大小       616 (0x268)
      .maxstack  7
      .locals init (class Game.ExternalContentManager/'<>c__DisplayClass17_0' V_0,
               string V_1,
               string V_2,
               class [System.IO]System.IO.Stream V_3,
               class [System.Runtime]System.Exception V_4)
      IL_0000:  newobj     instance void Game.ExternalContentManager/'<>c__DisplayClass17_0'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.ExternalContentManager/'<>c__DisplayClass17_2' Game.ExternalContentManager/'<>c__DisplayClass17_0'::'CS$<>8__locals3'
      IL_000d:  ldloc.0
      IL_000e:  ldc.i4.0
      IL_000f:  stfld      bool Game.ExternalContentManager/'<>c__DisplayClass17_0'::needsDelete
      IL_0014:  ldloc.0
      IL_0015:  ldnull
      IL_0016:  stfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
      IL_001b:  ldloc.0
      IL_001c:  ldnull
      IL_001d:  stfld      class [System.IO]System.IO.Stream Game.ExternalContentManager/'<>c__DisplayClass17_0'::'stream'
      IL_0022:  ldloc.0
      IL_0023:  ldloc.0
      IL_0024:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass17_0'::'<ShowUploadUi>b__3'()
      IL_002a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_002f:  stfld      class [System.Runtime]System.Action Game.ExternalContentManager/'<>c__DisplayClass17_0'::cleanup
      .try
      {
        IL_0034:  ldarg.0
        IL_0035:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
        IL_003a:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_1' Game.ExternalContentManager/'<>c__DisplayClass17_3'::'CS$<>8__locals1'
        IL_003f:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<>c__DisplayClass17_1'::'type'
        IL_0044:  ldc.i4.3
        IL_0045:  bne.un.s   IL_0086

        IL_0047:  ldloc.0
        IL_0048:  ldarg.0
        IL_0049:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
        IL_004e:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_1' Game.ExternalContentManager/'<>c__DisplayClass17_3'::'CS$<>8__locals1'
        IL_0053:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_1'::name
        IL_0058:  call       string Game.BlocksTexturesManager::GetFileName(string)
        IL_005d:  stfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_0062:  ldloc.0
        IL_0063:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_0068:  brtrue.s   IL_0075

        IL_006a:  ldstr      "Cannot upload this item."
        IL_006f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
        IL_0074:  throw

        IL_0075:  ldloc.0
        IL_0076:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_007b:  call       string [Engine]Engine.Storage::GetFileName(string)
        IL_0080:  stloc.1
        IL_0081:  br         IL_01d1

        IL_0086:  ldarg.0
        IL_0087:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
        IL_008c:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_1' Game.ExternalContentManager/'<>c__DisplayClass17_3'::'CS$<>8__locals1'
        IL_0091:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<>c__DisplayClass17_1'::'type'
        IL_0096:  ldc.i4.4
        IL_0097:  bne.un.s   IL_00d8

        IL_0099:  ldloc.0
        IL_009a:  ldarg.0
        IL_009b:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
        IL_00a0:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_1' Game.ExternalContentManager/'<>c__DisplayClass17_3'::'CS$<>8__locals1'
        IL_00a5:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_1'::name
        IL_00aa:  call       string Game.CharacterSkinsManager::GetFileName(string)
        IL_00af:  stfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_00b4:  ldloc.0
        IL_00b5:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_00ba:  brtrue.s   IL_00c7

        IL_00bc:  ldstr      "Cannot upload this item."
        IL_00c1:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
        IL_00c6:  throw

        IL_00c7:  ldloc.0
        IL_00c8:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_00cd:  call       string [Engine]Engine.Storage::GetFileName(string)
        IL_00d2:  stloc.1
        IL_00d3:  br         IL_01d1

        IL_00d8:  ldarg.0
        IL_00d9:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
        IL_00de:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_1' Game.ExternalContentManager/'<>c__DisplayClass17_3'::'CS$<>8__locals1'
        IL_00e3:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<>c__DisplayClass17_1'::'type'
        IL_00e8:  ldc.i4.5
        IL_00e9:  bne.un.s   IL_012a

        IL_00eb:  ldloc.0
        IL_00ec:  ldarg.0
        IL_00ed:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
        IL_00f2:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_1' Game.ExternalContentManager/'<>c__DisplayClass17_3'::'CS$<>8__locals1'
        IL_00f7:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_1'::name
        IL_00fc:  call       string Game.FurniturePacksManager::GetFileName(string)
        IL_0101:  stfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_0106:  ldloc.0
        IL_0107:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_010c:  brtrue.s   IL_0119

        IL_010e:  ldstr      "Cannot upload this item."
        IL_0113:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
        IL_0118:  throw

        IL_0119:  ldloc.0
        IL_011a:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_011f:  call       string [Engine]Engine.Storage::GetFileName(string)
        IL_0124:  stloc.1
        IL_0125:  br         IL_01d1

        IL_012a:  ldarg.0
        IL_012b:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
        IL_0130:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_1' Game.ExternalContentManager/'<>c__DisplayClass17_3'::'CS$<>8__locals1'
        IL_0135:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<>c__DisplayClass17_1'::'type'
        IL_013a:  ldc.i4.2
        IL_013b:  bne.un     IL_01c6

        IL_0140:  ldarg.0
        IL_0141:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass17_2'::busyDialog
        IL_0146:  ldstr      "Compressing world"
        IL_014b:  callvirt   instance void Game.CancellableBusyDialog::set_LargeMessage(string)
        IL_0150:  ldloc.0
        IL_0151:  ldstr      "data:/WorldUpload.tmp"
        IL_0156:  stfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_015b:  ldloc.0
        IL_015c:  ldc.i4.1
        IL_015d:  stfld      bool Game.ExternalContentManager/'<>c__DisplayClass17_0'::needsDelete
        IL_0162:  ldarg.0
        IL_0163:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
        IL_0168:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_1' Game.ExternalContentManager/'<>c__DisplayClass17_3'::'CS$<>8__locals1'
        IL_016d:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_1'::name
        IL_0172:  call       class Game.WorldInfo Game.WorldsManager::GetWorldInfo(string)
        IL_0177:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
        IL_017c:  ldfld      string Game.WorldSettings::Name
        IL_0181:  stloc.2
        IL_0182:  ldstr      "{0}.scworld"
        IL_0187:  ldc.i4.1
        IL_0188:  newarr     [System.Runtime]System.Object
        IL_018d:  dup
        IL_018e:  ldc.i4.0
        IL_018f:  ldloc.2
        IL_0190:  stelem.ref
        IL_0191:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_0196:  stloc.1
        IL_0197:  ldloc.0
        IL_0198:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_019d:  ldc.i4.2
        IL_019e:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                valuetype [Engine]Engine.OpenFileMode)
        IL_01a3:  stloc.3
        .try
        {
          IL_01a4:  ldarg.0
          IL_01a5:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
          IL_01aa:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_1' Game.ExternalContentManager/'<>c__DisplayClass17_3'::'CS$<>8__locals1'
          IL_01af:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_1'::name
          IL_01b4:  ldloc.3
          IL_01b5:  call       void Game.WorldsManager::ExportWorld(string,
                                                                    class [System.IO]System.IO.Stream)
          IL_01ba:  leave.s    IL_01d1

        }  // end .try
        finally
        {
          IL_01bc:  ldloc.3
          IL_01bd:  brfalse.s  IL_01c5

          IL_01bf:  ldloc.3
          IL_01c0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_01c5:  endfinally
        }  // end handler
        IL_01c6:  ldstr      "Unsupported content type."
        IL_01cb:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
        IL_01d0:  throw

        IL_01d1:  ldarg.0
        IL_01d2:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass17_2'::busyDialog
        IL_01d7:  ldstr      "Uploading"
        IL_01dc:  callvirt   instance void Game.CancellableBusyDialog::set_LargeMessage(string)
        IL_01e1:  ldloc.0
        IL_01e2:  ldloc.0
        IL_01e3:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass17_0'::sourcePath
        IL_01e8:  ldc.i4.0
        IL_01e9:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                valuetype [Engine]Engine.OpenFileMode)
        IL_01ee:  stfld      class [System.IO]System.IO.Stream Game.ExternalContentManager/'<>c__DisplayClass17_0'::'stream'
        IL_01f3:  ldarg.0
        IL_01f4:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
        IL_01f9:  ldfld      class Game.IExternalContentProvider Game.ExternalContentManager/'<>c__DisplayClass17_3'::provider
        IL_01fe:  ldloc.1
        IL_01ff:  ldloc.0
        IL_0200:  ldfld      class [System.IO]System.IO.Stream Game.ExternalContentManager/'<>c__DisplayClass17_0'::'stream'
        IL_0205:  ldarg.0
        IL_0206:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass17_2'::busyDialog
        IL_020b:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
        IL_0210:  ldloc.0
        IL_0211:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass17_0'::'<ShowUploadUi>b__4'(string)
        IL_0217:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                                native int)
        IL_021c:  ldloc.0
        IL_021d:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass17_0'::'<ShowUploadUi>b__5'(class [System.Runtime]System.Exception)
        IL_0223:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                                native int)
        IL_0228:  callvirt   instance void Game.IExternalContentProvider::Upload(string,
                                                                                 class [System.IO]System.IO.Stream,
                                                                                 class Game.CancellableProgress,
                                                                                 class [System.Runtime]System.Action`1<string>,
                                                                                 class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
        IL_022d:  leave.s    IL_0267

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_022f:  stloc.s    V_4
        IL_0231:  ldloc.0
        IL_0232:  ldfld      class [System.Runtime]System.Action Game.ExternalContentManager/'<>c__DisplayClass17_0'::cleanup
        IL_0237:  callvirt   instance void [System.Runtime]System.Action::Invoke()
        IL_023c:  ldarg.0
        IL_023d:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass17_2'::busyDialog
        IL_0242:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
        IL_0247:  ldnull
        IL_0248:  ldstr      "Error"
        IL_024d:  ldloc.s    V_4
        IL_024f:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_0254:  ldstr      "OK"
        IL_0259:  ldnull
        IL_025a:  ldnull
        IL_025b:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                     string,
                                                                     string,
                                                                     string,
                                                                     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
        IL_0260:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                  class Game.Dialog)
        IL_0265:  leave.s    IL_0267

      }  // end handler
      IL_0267:  ret
    } // end of method '<>c__DisplayClass17_2'::'<ShowUploadUi>b__2'

  } // end of class '<>c__DisplayClass17_2'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_3'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.IExternalContentProvider provider
    .field public class Game.ExternalContentManager/'<>c__DisplayClass17_1' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass17_3'::.ctor

    .method assembly hidebysig instance void 
            '<ShowUploadUi>b__1'() cil managed
    {
      // 代码大小       61 (0x3d)
      .maxstack  3
      .locals init (class Game.ExternalContentManager/'<>c__DisplayClass17_2' V_0)
      IL_0000:  newobj     instance void Game.ExternalContentManager/'<>c__DisplayClass17_2'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.ExternalContentManager/'<>c__DisplayClass17_3' Game.ExternalContentManager/'<>c__DisplayClass17_2'::'CS$<>8__locals2'
      IL_000d:  ldloc.0
      IL_000e:  ldstr      "Uploading"
      IL_0013:  ldc.i4.0
      IL_0014:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                           bool)
      IL_0019:  stfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass17_2'::busyDialog
      IL_001e:  ldnull
      IL_001f:  ldloc.0
      IL_0020:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentManager/'<>c__DisplayClass17_2'::busyDialog
      IL_0025:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_002a:  ldloc.0
      IL_002b:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass17_2'::'<ShowUploadUi>b__2'()
      IL_0031:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0036:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
      IL_003b:  pop
      IL_003c:  ret
    } // end of method '<>c__DisplayClass17_3'::'<ShowUploadUi>b__1'

  } // end of class '<>c__DisplayClass17_3'

  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider> m_providers
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider> Game.ExternalContentManager::m_providers
    IL_000a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider> Game.ExternalContentManager::m_providers
    IL_000f:  newobj     instance void Game.DropboxExternalContentProvider::.ctor()
    IL_0014:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider>::Add(!0)
    IL_0019:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider> Game.ExternalContentManager::m_providers
    IL_001e:  newobj     instance void Game.TransferShExternalContentProvider::.ctor()
    IL_0023:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider>::Add(!0)
    IL_0028:  ret
  } // end of method ExternalContentManager::Initialize

  .method public hidebysig specialname static 
          class Game.IExternalContentProvider 
          get_DefaultProvider() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> V_0)
    IL_0000:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> Game.ExternalContentManager::get_Providers()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider>::get_Count()
    IL_000d:  ldc.i4.0
    IL_000e:  bgt.s      IL_0012

    IL_0010:  ldnull
    IL_0011:  ret

    IL_0012:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> Game.ExternalContentManager::get_Providers()
    IL_0017:  stloc.0
    IL_0018:  ldloca.s   V_0
    IL_001a:  ldc.i4.0
    IL_001b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider>::get_Item(int32)
    IL_0020:  ret
  } // end of method ExternalContentManager::get_DefaultProvider

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> 
          get_Providers() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider> Game.ExternalContentManager::m_providers
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000a:  ret
  } // end of method ExternalContentManager::get_Providers

  .method public hidebysig static valuetype Game.ExternalContentType 
          ExtensionToType(string extension) cil managed
  {
    // 代码大小       149 (0x95)
    .maxstack  4
    .locals init (class Game.ExternalContentManager/'<>c__DisplayClass6_0' V_0,
             class [System.Runtime]System.Collections.IEnumerator V_1,
             valuetype Game.ExternalContentType V_2,
             class [System.Runtime]System.Func`2<string,bool> V_3,
             valuetype Game.ExternalContentType V_4,
             class [System.Runtime]System.IDisposable V_5)
    IL_0000:  newobj     instance void Game.ExternalContentManager/'<>c__DisplayClass6_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      string Game.ExternalContentManager/'<>c__DisplayClass6_0'::extension
    IL_000d:  ldloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass6_0'::extension
    IL_0014:  callvirt   instance string [System.Runtime]System.String::ToLower()
    IL_0019:  stfld      string Game.ExternalContentManager/'<>c__DisplayClass6_0'::extension
    IL_001e:  ldtoken    Game.ExternalContentType
    IL_0023:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0028:  call       class [System.Runtime]System.Array [System.Runtime]System.Enum::GetValues(class [System.Runtime]System.Type)
    IL_002d:  callvirt   instance class [System.Runtime]System.Collections.IEnumerator [System.Runtime]System.Array::GetEnumerator()
    IL_0032:  stloc.1
    .try
    {
      IL_0033:  br.s       IL_0072

      IL_0035:  ldloc.1
      IL_0036:  callvirt   instance object [System.Runtime]System.Collections.IEnumerator::get_Current()
      IL_003b:  unbox.any  Game.ExternalContentType
      IL_0040:  stloc.2
      IL_0041:  ldloc.2
      IL_0042:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> Game.ExternalContentManager::GetEntryTypeExtensions(valuetype Game.ExternalContentType)
      IL_0047:  ldloc.0
      IL_0048:  ldfld      class [System.Runtime]System.Func`2<string,bool> Game.ExternalContentManager/'<>c__DisplayClass6_0'::'<>9__0'
      IL_004d:  dup
      IL_004e:  brtrue.s   IL_0066

      IL_0050:  pop
      IL_0051:  ldloc.0
      IL_0052:  ldloc.0
      IL_0053:  ldftn      instance bool Game.ExternalContentManager/'<>c__DisplayClass6_0'::'<ExtensionToType>b__0'(string)
      IL_0059:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                                 native int)
      IL_005e:  dup
      IL_005f:  stloc.3
      IL_0060:  stfld      class [System.Runtime]System.Func`2<string,bool> Game.ExternalContentManager/'<>c__DisplayClass6_0'::'<>9__0'
      IL_0065:  ldloc.3
      IL_0066:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                           class [System.Runtime]System.Func`2<!!0,bool>)
      IL_006b:  brfalse.s  IL_0072

      IL_006d:  ldloc.2
      IL_006e:  stloc.s    V_4
      IL_0070:  leave.s    IL_0092

      IL_0072:  ldloc.1
      IL_0073:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0078:  brtrue.s   IL_0035

      IL_007a:  leave.s    IL_0090

    }  // end .try
    finally
    {
      IL_007c:  ldloc.1
      IL_007d:  isinst     [System.Runtime]System.IDisposable
      IL_0082:  stloc.s    V_5
      IL_0084:  ldloc.s    V_5
      IL_0086:  brfalse.s  IL_008f

      IL_0088:  ldloc.s    V_5
      IL_008a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008f:  endfinally
    }  // end handler
    IL_0090:  ldc.i4.0
    IL_0091:  ret

    IL_0092:  ldloc.s    V_4
    IL_0094:  ret
  } // end of method ExternalContentManager::ExtensionToType

  .method public hidebysig static class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> 
          GetEntryTypeExtensions(valuetype Game.ExternalContentType 'type') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 38 47 61 6D 65 2E 45 78 74 65 72 6E 61 6C   // ..8Game.External
                                                                                                                                                      43 6F 6E 74 65 6E 74 4D 61 6E 61 67 65 72 2B 3C   // ContentManager+<
                                                                                                                                                      47 65 74 45 6E 74 72 79 54 79 70 65 45 78 74 65   // GetEntryTypeExte
                                                                                                                                                      6E 73 69 6F 6E 73 3E 64 5F 5F 37 00 00 )          // nsions>d__7..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<GetEntryTypeExtensions>d__7'::'<>3__type'
    IL_000e:  ret
  } // end of method ExternalContentManager::GetEntryTypeExtensions

  .method public hidebysig static class Game.Subtexture 
          GetEntryTypeIcon(valuetype Game.ExternalContentType 'type') cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_001e,
                          IL_0029,
                          IL_0034,
                          IL_003f,
                          IL_004a)
    IL_001c:  br.s       IL_0055

    IL_001e:  ldstr      "Textures/Atlas/FolderIcon"
    IL_0023:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0028:  ret

    IL_0029:  ldstr      "Textures/Atlas/WorldIcon"
    IL_002e:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0033:  ret

    IL_0034:  ldstr      "Textures/Atlas/TexturePackIcon"
    IL_0039:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_003e:  ret

    IL_003f:  ldstr      "Textures/Atlas/CharacterSkinIcon"
    IL_0044:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0049:  ret

    IL_004a:  ldstr      "Textures/Atlas/FurnitureIcon"
    IL_004f:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0054:  ret

    IL_0055:  ldstr      "Textures/Atlas/QuestionMarkIcon"
    IL_005a:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_005f:  ret
  } // end of method ExternalContentManager::GetEntryTypeIcon

  .method public hidebysig static string 
          GetEntryTypeDescription(valuetype Game.ExternalContentType 'type') cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_001e,
                          IL_0024,
                          IL_002a,
                          IL_0030,
                          IL_0036)
    IL_001c:  br.s       IL_003c

    IL_001e:  ldstr      "Directory"
    IL_0023:  ret

    IL_0024:  ldstr      "World"
    IL_0029:  ret

    IL_002a:  ldstr      "Blocks Texture"
    IL_002f:  ret

    IL_0030:  ldstr      "Character Skin"
    IL_0035:  ret

    IL_0036:  ldstr      "Furniture Pack"
    IL_003b:  ret

    IL_003c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0041:  ret
  } // end of method ExternalContentManager::GetEntryTypeDescription

  .method public hidebysig static bool  IsEntryTypeDownloadSupported(valuetype Game.ExternalContentType 'type') cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_001a,
                          IL_001c,
                          IL_001e,
                          IL_0020)
    IL_0018:  br.s       IL_0022

    IL_001a:  ldc.i4.1
    IL_001b:  ret

    IL_001c:  ldc.i4.1
    IL_001d:  ret

    IL_001e:  ldc.i4.1
    IL_001f:  ret

    IL_0020:  ldc.i4.1
    IL_0021:  ret

    IL_0022:  ldc.i4.0
    IL_0023:  ret
  } // end of method ExternalContentManager::IsEntryTypeDownloadSupported

  .method public hidebysig static bool  DoesEntryTypeRequireName(valuetype Game.ExternalContentType 'type') cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_0016,
                          IL_0018,
                          IL_001a)
    IL_0014:  br.s       IL_001c

    IL_0016:  ldc.i4.1
    IL_0017:  ret

    IL_0018:  ldc.i4.1
    IL_0019:  ret

    IL_001a:  ldc.i4.1
    IL_001b:  ret

    IL_001c:  ldc.i4.0
    IL_001d:  ret
  } // end of method ExternalContentManager::DoesEntryTypeRequireName

  .method public hidebysig static class [System.Runtime]System.Exception 
          VerifyExternalContentName(string name) cil managed
  {
    // 代码大小       170 (0xaa)
    .maxstack  3
    .locals init (string V_0,
             int32 V_1,
             char V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brfalse.s  IL_0013

    IL_0008:  ldstr      "Name empty."
    IL_000d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0019:  ldc.i4.s   50
    IL_001b:  ble.s      IL_0028

    IL_001d:  ldstr      "Name too long. Maximum 50 characters allowed."
    IL_0022:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0027:  ret

    IL_0028:  ldarg.0
    IL_0029:  ldc.i4.0
    IL_002a:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_002f:  ldc.i4.s   32
    IL_0031:  beq.s      IL_0045

    IL_0033:  ldarg.0
    IL_0034:  ldarg.0
    IL_0035:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_003a:  ldc.i4.1
    IL_003b:  sub
    IL_003c:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0041:  ldc.i4.s   32
    IL_0043:  bne.un.s   IL_0050

    IL_0045:  ldstr      "Name cannot start or end with a space."
    IL_004a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_004f:  ret

    IL_0050:  ldarg.0
    IL_0051:  stloc.0
    IL_0052:  ldc.i4.0
    IL_0053:  stloc.1
    IL_0054:  br.s       IL_009f

    IL_0056:  ldloc.0
    IL_0057:  ldloc.1
    IL_0058:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_005d:  stloc.2
    IL_005e:  ldloc.2
    IL_005f:  ldc.i4.s   65
    IL_0061:  blt.s      IL_0068

    IL_0063:  ldloc.2
    IL_0064:  ldc.i4.s   90
    IL_0066:  ble.s      IL_009b

    IL_0068:  ldloc.2
    IL_0069:  ldc.i4.s   97
    IL_006b:  blt.s      IL_0072

    IL_006d:  ldloc.2
    IL_006e:  ldc.i4.s   122
    IL_0070:  ble.s      IL_009b

    IL_0072:  ldloc.2
    IL_0073:  ldc.i4.s   48
    IL_0075:  blt.s      IL_007c

    IL_0077:  ldloc.2
    IL_0078:  ldc.i4.s   57
    IL_007a:  ble.s      IL_009b

    IL_007c:  ldloc.2
    IL_007d:  ldc.i4.s   45
    IL_007f:  beq.s      IL_009b

    IL_0081:  ldloc.2
    IL_0082:  ldc.i4.s   46
    IL_0084:  beq.s      IL_009b

    IL_0086:  ldloc.2
    IL_0087:  ldc.i4.s   95
    IL_0089:  beq.s      IL_009b

    IL_008b:  ldloc.2
    IL_008c:  ldc.i4.s   32
    IL_008e:  beq.s      IL_009b

    IL_0090:  ldstr      "Name contains invalid characters. Only latin lette"
    + "rs, digits, dashes, dots, underscores and spaces are allowed."
    IL_0095:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_009a:  ret

    IL_009b:  ldloc.1
    IL_009c:  ldc.i4.1
    IL_009d:  add
    IL_009e:  stloc.1
    IL_009f:  ldloc.1
    IL_00a0:  ldloc.0
    IL_00a1:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_00a6:  blt.s      IL_0056

    IL_00a8:  ldnull
    IL_00a9:  ret
  } // end of method ExternalContentManager::VerifyExternalContentName

  .method public hidebysig static void  DeleteExternalContent(valuetype Game.ExternalContentType 'type',
                                                              string name) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_001a,
                          IL_0021,
                          IL_0028,
                          IL_002f)
    IL_0018:  br.s       IL_0036

    IL_001a:  ldarg.1
    IL_001b:  call       void Game.WorldsManager::DeleteWorld(string)
    IL_0020:  ret

    IL_0021:  ldarg.1
    IL_0022:  call       void Game.BlocksTexturesManager::DeleteBlocksTexture(string)
    IL_0027:  ret

    IL_0028:  ldarg.1
    IL_0029:  call       void Game.CharacterSkinsManager::DeleteCharacterSkin(string)
    IL_002e:  ret

    IL_002f:  ldarg.1
    IL_0030:  call       void Game.FurniturePacksManager::DeleteFurniturePack(string)
    IL_0035:  ret

    IL_0036:  ldstr      "Unsupported external content type."
    IL_003b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0040:  throw
  } // end of method ExternalContentManager::DeleteExternalContent

  .method public hidebysig static void  ImportExternalContent(class [System.IO]System.IO.Stream 'stream',
                                                              valuetype Game.ExternalContentType 'type',
                                                              string name,
                                                              class [System.Runtime]System.Action`1<string> success,
                                                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  8
    IL_0000:  newobj     instance void Game.ExternalContentManager/'<>c__DisplayClass14_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.3
    IL_0007:  stfld      class [System.Runtime]System.Action`1<string> Game.ExternalContentManager/'<>c__DisplayClass14_0'::success
    IL_000c:  dup
    IL_000d:  ldarg.0
    IL_000e:  stfld      class [System.IO]System.IO.Stream Game.ExternalContentManager/'<>c__DisplayClass14_0'::'stream'
    IL_0013:  dup
    IL_0014:  ldarg.1
    IL_0015:  stfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<>c__DisplayClass14_0'::'type'
    IL_001a:  dup
    IL_001b:  ldarg.2
    IL_001c:  stfld      string Game.ExternalContentManager/'<>c__DisplayClass14_0'::name
    IL_0021:  dup
    IL_0022:  ldarg.s    failure
    IL_0024:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.ExternalContentManager/'<>c__DisplayClass14_0'::failure
    IL_0029:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass14_0'::'<ImportExternalContent>b__0'()
    IL_002f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0034:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_0039:  pop
    IL_003a:  ret
  } // end of method ExternalContentManager::ImportExternalContent

  .method public hidebysig static string 
          ImportExternalContentSync(class [System.IO]System.IO.Stream 'stream',
                                    valuetype Game.ExternalContentType 'type',
                                    string name) cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  2
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.2
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_001a,
                          IL_0021,
                          IL_0029,
                          IL_0031)
    IL_0018:  br.s       IL_0039

    IL_001a:  ldarg.0
    IL_001b:  call       string Game.WorldsManager::ImportWorld(class [System.IO]System.IO.Stream)
    IL_0020:  ret

    IL_0021:  ldarg.2
    IL_0022:  ldarg.0
    IL_0023:  call       string Game.BlocksTexturesManager::ImportBlocksTexture(string,
                                                                                class [System.IO]System.IO.Stream)
    IL_0028:  ret

    IL_0029:  ldarg.2
    IL_002a:  ldarg.0
    IL_002b:  call       string Game.CharacterSkinsManager::ImportCharacterSkin(string,
                                                                                class [System.IO]System.IO.Stream)
    IL_0030:  ret

    IL_0031:  ldarg.2
    IL_0032:  ldarg.0
    IL_0033:  call       string Game.FurniturePacksManager::ImportFurniturePack(string,
                                                                                class [System.IO]System.IO.Stream)
    IL_0038:  ret

    IL_0039:  ldstr      "Unsupported external content type."
    IL_003e:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0043:  throw
  } // end of method ExternalContentManager::ImportExternalContentSync

  .method public hidebysig static void  ShowLoginUiIfNeeded(class Game.IExternalContentProvider provider,
                                                            bool showWarningDialog,
                                                            class [System.Runtime]System.Action 'handler') cil managed
  {
    // 代码大小       191 (0xbf)
    .maxstack  7
    .locals init (class Game.ExternalContentManager/'<>c__DisplayClass16_0' V_0,
             class Game.ExternalContentManager/'<>c__DisplayClass16_2' V_1)
    IL_0000:  newobj     instance void Game.ExternalContentManager/'<>c__DisplayClass16_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.IExternalContentProvider Game.ExternalContentManager/'<>c__DisplayClass16_0'::provider
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      class [System.Runtime]System.Action Game.ExternalContentManager/'<>c__DisplayClass16_0'::'handler'
    IL_0014:  ldloc.0
    IL_0015:  ldfld      class Game.IExternalContentProvider Game.ExternalContentManager/'<>c__DisplayClass16_0'::provider
    IL_001a:  callvirt   instance bool Game.IExternalContentProvider::get_RequiresLogin()
    IL_001f:  brfalse    IL_00ae

    IL_0024:  ldloc.0
    IL_0025:  ldfld      class Game.IExternalContentProvider Game.ExternalContentManager/'<>c__DisplayClass16_0'::provider
    IL_002a:  callvirt   instance bool Game.IExternalContentProvider::get_IsLoggedIn()
    IL_002f:  brtrue.s   IL_00ae

    IL_0031:  newobj     instance void Game.ExternalContentManager/'<>c__DisplayClass16_2'::.ctor()
    IL_0036:  stloc.1
    IL_0037:  ldloc.1
    IL_0038:  ldloc.0
    IL_0039:  stfld      class Game.ExternalContentManager/'<>c__DisplayClass16_0' Game.ExternalContentManager/'<>c__DisplayClass16_2'::'CS$<>8__locals1'
    IL_003e:  ldloc.1
    IL_003f:  ldloc.1
    IL_0040:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass16_0' Game.ExternalContentManager/'<>c__DisplayClass16_2'::'CS$<>8__locals1'
    IL_0045:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass16_0'::'<ShowLoginUiIfNeeded>b__0'()
    IL_004b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0050:  stfld      class [System.Runtime]System.Action Game.ExternalContentManager/'<>c__DisplayClass16_2'::loginAction
    IL_0055:  ldarg.1
    IL_0056:  brfalse.s  IL_00a2

    IL_0058:  ldnull
    IL_0059:  ldstr      "Login Required"
    IL_005e:  ldstr      "Do you want to login to {0}\?"
    IL_0063:  ldc.i4.1
    IL_0064:  newarr     [System.Runtime]System.Object
    IL_0069:  dup
    IL_006a:  ldc.i4.0
    IL_006b:  ldloc.1
    IL_006c:  ldfld      class Game.ExternalContentManager/'<>c__DisplayClass16_0' Game.ExternalContentManager/'<>c__DisplayClass16_2'::'CS$<>8__locals1'
    IL_0071:  ldfld      class Game.IExternalContentProvider Game.ExternalContentManager/'<>c__DisplayClass16_0'::provider
    IL_0076:  callvirt   instance string Game.IExternalContentProvider::get_DisplayName()
    IL_007b:  stelem.ref
    IL_007c:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0081:  ldstr      "Login"
    IL_0086:  ldstr      "Cancel"
    IL_008b:  ldloc.1
    IL_008c:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass16_2'::'<ShowLoginUiIfNeeded>b__3'(valuetype Game.MessageDialogButton)
    IL_0092:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_0097:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_009c:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_00a1:  ret

    IL_00a2:  ldloc.1
    IL_00a3:  ldfld      class [System.Runtime]System.Action Game.ExternalContentManager/'<>c__DisplayClass16_2'::loginAction
    IL_00a8:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_00ad:  ret

    IL_00ae:  ldloc.0
    IL_00af:  ldfld      class [System.Runtime]System.Action Game.ExternalContentManager/'<>c__DisplayClass16_0'::'handler'
    IL_00b4:  dup
    IL_00b5:  brtrue.s   IL_00b9

    IL_00b7:  pop
    IL_00b8:  ret

    IL_00b9:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_00be:  ret
  } // end of method ExternalContentManager::ShowLoginUiIfNeeded

  .method public hidebysig static void  ShowUploadUi(valuetype Game.ExternalContentType 'type',
                                                     string name) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  5
    .locals init (class Game.ExternalContentManager/'<>c__DisplayClass17_1' V_0)
    IL_0000:  newobj     instance void Game.ExternalContentManager/'<>c__DisplayClass17_1'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<>c__DisplayClass17_1'::'type'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      string Game.ExternalContentManager/'<>c__DisplayClass17_1'::name
    IL_0014:  ldnull
    IL_0015:  ldstr      "Select Upload Destination"
    IL_001a:  ldc.i4.0
    IL_001b:  ldloc.0
    IL_001c:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass17_1'::'<ShowUploadUi>b__0'(class Game.IExternalContentProvider)
    IL_0022:  newobj     instance void class [System.Runtime]System.Action`1<class Game.IExternalContentProvider>::.ctor(object,
                                                                                                                         native int)
    IL_0027:  newobj     instance void Game.SelectExternalContentProviderDialog::.ctor(string,
                                                                                       bool,
                                                                                       class [System.Runtime]System.Action`1<class Game.IExternalContentProvider>)
    IL_002c:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0031:  ret
  } // end of method ExternalContentManager::ShowUploadUi

  .property class Game.IExternalContentProvider
          DefaultProvider()
  {
    .get class Game.IExternalContentProvider Game.ExternalContentManager::get_DefaultProvider()
  } // end of property ExternalContentManager::DefaultProvider
  .property valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider>
          Providers()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> Game.ExternalContentManager::get_Providers()
  } // end of property ExternalContentManager::Providers
} // end of class Game.ExternalContentManager