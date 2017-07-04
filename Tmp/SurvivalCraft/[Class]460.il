.class public auto ansi beforefieldinit Game.TransferShExternalContentProvider
       extends [System.Runtime]System.Object
       implements Game.IExternalContentProvider,
                  [System.Runtime]System.IDisposable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass15_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action`1<string> success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass15_0'::.ctor

    .method assembly hidebysig instance void 
            '<Upload>b__0'(uint8[] result) cil managed
    {
      // 代码大小       34 (0x22)
      .maxstack  4
      .locals init (string V_0)
      IL_0000:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
      IL_0005:  ldarg.1
      IL_0006:  ldc.i4.0
      IL_0007:  ldarg.1
      IL_0008:  ldlen
      IL_0009:  conv.i4
      IL_000a:  callvirt   instance string [System.Text.Encoding]System.Text.Encoding::GetString(uint8[],
                                                                                                 int32,
                                                                                                 int32)
      IL_000f:  callvirt   instance string [System.Runtime]System.String::Trim()
      IL_0014:  stloc.0
      IL_0015:  ldarg.0
      IL_0016:  ldfld      class [System.Runtime]System.Action`1<string> Game.TransferShExternalContentProvider/'<>c__DisplayClass15_0'::success
      IL_001b:  ldloc.0
      IL_001c:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
      IL_0021:  ret
    } // end of method '<>c__DisplayClass15_0'::'<Upload>b__0'

    .method assembly hidebysig instance void 
            '<Upload>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.TransferShExternalContentProvider/'<>c__DisplayClass15_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass15_0'::'<Upload>b__1'

  } // end of class '<>c__DisplayClass15_0'

  .method public hidebysig newslot specialname virtual final 
          instance string  get_DisplayName() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "transfer.sh"
    IL_0005:  ret
  } // end of method TransferShExternalContentProvider::get_DisplayName

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_SupportsListing() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method TransferShExternalContentProvider::get_SupportsListing

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_SupportsLinks() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method TransferShExternalContentProvider::get_SupportsLinks

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_RequiresLogin() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method TransferShExternalContentProvider::get_RequiresLogin

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_IsLoggedIn() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method TransferShExternalContentProvider::get_IsLoggedIn

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method TransferShExternalContentProvider::Dispose

  .method public hidebysig newslot virtual final 
          instance void  Login(class Game.CancellableProgress progress,
                               class [System.Runtime]System.Action success,
                               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.3
    IL_0001:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
    IL_0006:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
    IL_000b:  ret
  } // end of method TransferShExternalContentProvider::Login

  .method public hidebysig newslot virtual final 
          instance void  Logout() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
    IL_0005:  throw
  } // end of method TransferShExternalContentProvider::Logout

  .method public hidebysig newslot virtual final 
          instance void  List(string path,
                              class Game.CancellableProgress progress,
                              class [System.Runtime]System.Action`1<class Game.ExternalContentEntry> success,
                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.s    failure
    IL_0002:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
    IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
    IL_000c:  ret
  } // end of method TransferShExternalContentProvider::List

  .method public hidebysig newslot virtual final 
          instance void  Download(string path,
                                  class Game.CancellableProgress progress,
                                  class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream> success,
                                  class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.s    failure
    IL_0002:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
    IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
    IL_000c:  ret
  } // end of method TransferShExternalContentProvider::Download

  .method public hidebysig newslot virtual final 
          instance void  Upload(string path,
                                class [System.IO]System.IO.Stream 'stream',
                                class Game.CancellableProgress progress,
                                class [System.Runtime]System.Action`1<string> success,
                                class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  8
    .locals init (class Game.TransferShExternalContentProvider/'<>c__DisplayClass15_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  newobj     instance void Game.TransferShExternalContentProvider/'<>c__DisplayClass15_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.s    success
    IL_0009:  stfld      class [System.Runtime]System.Action`1<string> Game.TransferShExternalContentProvider/'<>c__DisplayClass15_0'::success
    IL_000e:  ldloc.0
    IL_000f:  ldarg.s    failure
    IL_0011:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.TransferShExternalContentProvider/'<>c__DisplayClass15_0'::failure
    .try
    {
      IL_0016:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_001b:  stloc.1
      IL_001c:  ldloc.1
      IL_001d:  ldstr      "Content-Type"
      IL_0022:  ldstr      "application/octet-stream"
      IL_0027:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_002c:  ldstr      "https://transfer.sh/"
      IL_0031:  ldarg.1
      IL_0032:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0037:  ldnull
      IL_0038:  ldloc.1
      IL_0039:  ldarg.2
      IL_003a:  ldarg.3
      IL_003b:  ldloc.0
      IL_003c:  ldftn      instance void Game.TransferShExternalContentProvider/'<>c__DisplayClass15_0'::'<Upload>b__0'(uint8[])
      IL_0042:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_0047:  ldloc.0
      IL_0048:  ldftn      instance void Game.TransferShExternalContentProvider/'<>c__DisplayClass15_0'::'<Upload>b__1'(class [System.Runtime]System.Exception)
      IL_004e:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0053:  call       void Game.WebManager::Put(string,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class [System.IO]System.IO.Stream,
                                                     class Game.CancellableProgress,
                                                     class [System.Runtime]System.Action`1<uint8[]>,
                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0058:  leave.s    IL_0069

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_005a:  stloc.2
      IL_005b:  ldloc.0
      IL_005c:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.TransferShExternalContentProvider/'<>c__DisplayClass15_0'::failure
      IL_0061:  ldloc.2
      IL_0062:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_0067:  leave.s    IL_0069

    }  // end handler
    IL_0069:  ret
  } // end of method TransferShExternalContentProvider::Upload

  .method public hidebysig newslot virtual final 
          instance void  Link(string path,
                              class Game.CancellableProgress progress,
                              class [System.Runtime]System.Action`1<string> success,
                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.s    failure
    IL_0002:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
    IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
    IL_000c:  ret
  } // end of method TransferShExternalContentProvider::Link

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method TransferShExternalContentProvider::.ctor

  .property instance string DisplayName()
  {
    .get instance string Game.TransferShExternalContentProvider::get_DisplayName()
  } // end of property TransferShExternalContentProvider::DisplayName
  .property instance bool SupportsListing()
  {
    .get instance bool Game.TransferShExternalContentProvider::get_SupportsListing()
  } // end of property TransferShExternalContentProvider::SupportsListing
  .property instance bool SupportsLinks()
  {
    .get instance bool Game.TransferShExternalContentProvider::get_SupportsLinks()
  } // end of property TransferShExternalContentProvider::SupportsLinks
  .property instance bool RequiresLogin()
  {
    .get instance bool Game.TransferShExternalContentProvider::get_RequiresLogin()
  } // end of property TransferShExternalContentProvider::RequiresLogin
  .property instance bool IsLoggedIn()
  {
    .get instance bool Game.TransferShExternalContentProvider::get_IsLoggedIn()
  } // end of property TransferShExternalContentProvider::IsLoggedIn
} // end of class Game.TransferShExternalContentProvider