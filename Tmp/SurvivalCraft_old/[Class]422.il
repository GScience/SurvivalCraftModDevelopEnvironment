.class public auto ansi beforefieldinit Game.DropboxExternalContentProvider
       extends [System.Runtime]System.Object
       implements Game.IExternalContentProvider,
                  [System.Runtime]System.IDisposable
{
  .class auto ansi nested private beforefieldinit LoginProcessData
         extends [System.Runtime]System.Object
  {
    .field public class [System.Runtime]System.Action Success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Failure
    .field public string RequestToken
    .field public string RequestSecret
    .method public hidebysig instance void 
            Succeed(class Game.DropboxExternalContentProvider provider) cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldnull
      IL_0002:  stfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class [System.Runtime]System.Action Game.DropboxExternalContentProvider/LoginProcessData::Success
      IL_000d:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0012:  ret
    } // end of method LoginProcessData::Succeed

    .method public hidebysig instance void 
            Fail(class Game.DropboxExternalContentProvider provider,
                 class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       20 (0x14)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldnull
      IL_0002:  stfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/LoginProcessData::Failure
      IL_000d:  ldarg.2
      IL_000e:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_0013:  ret
    } // end of method LoginProcessData::Fail

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method LoginProcessData::.ctor

  } // end of class LoginProcessData

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass18_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.DropboxExternalContentProvider/LoginProcessData loginProcessData
    .field public class Game.DropboxExternalContentProvider '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass18_0'::.ctor

    .method assembly hidebysig instance void 
            '<LoginUserAllowedAccess>b__0'(uint8[] result) cil managed
    {
      // 代码大小       55 (0x37)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager::UrlParametersFromBytes(uint8[])
      IL_0006:  dup
      IL_0007:  ldstr      "oauth_token"
      IL_000c:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Item(!0)
      IL_0011:  call       void Game.SettingsManager::set_DropboxToken(string)
      IL_0016:  ldstr      "oauth_token_secret"
      IL_001b:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Item(!0)
      IL_0020:  call       void Game.SettingsManager::set_DropboxSecret(string)
      IL_0025:  ldarg.0
      IL_0026:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::loginProcessData
      IL_002b:  ldarg.0
      IL_002c:  ldfld      class Game.DropboxExternalContentProvider Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::'<>4__this'
      IL_0031:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Succeed(class Game.DropboxExternalContentProvider)
      IL_0036:  ret
    } // end of method '<>c__DisplayClass18_0'::'<LoginUserAllowedAccess>b__0'

    .method assembly hidebysig instance void 
            '<LoginUserAllowedAccess>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::loginProcessData
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class Game.DropboxExternalContentProvider Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::'<>4__this'
      IL_000c:  ldarg.1
      IL_000d:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                    class [System.Runtime]System.Exception)
      IL_0012:  ret
    } // end of method '<>c__DisplayClass18_0'::'<LoginUserAllowedAccess>b__1'

  } // end of class '<>c__DisplayClass18_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass20_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action`1<class Game.ExternalContentEntry> success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass20_0'::.ctor

    .method assembly hidebysig instance void 
            '<List>b__0'(uint8[] result) cil managed
    {
      // 代码大小       47 (0x2f)
      .maxstack  2
      .locals init (class SimpleJson.JsonObject V_0,
               class [System.Runtime]System.Exception V_1)
      .try
      {
        IL_0000:  ldarg.1
        IL_0001:  call       object Game.WebManager::JsonFromBytes(uint8[])
        IL_0006:  castclass  SimpleJson.JsonObject
        IL_000b:  stloc.0
        IL_000c:  ldarg.0
        IL_000d:  ldfld      class [System.Runtime]System.Action`1<class Game.ExternalContentEntry> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::success
        IL_0012:  ldloc.0
        IL_0013:  call       class Game.ExternalContentEntry Game.DropboxExternalContentProvider::JsonObjectToEntry(class SimpleJson.JsonObject)
        IL_0018:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ExternalContentEntry>::Invoke(!0)
        IL_001d:  leave.s    IL_002e

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_001f:  stloc.1
        IL_0020:  ldarg.0
        IL_0021:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::failure
        IL_0026:  ldloc.1
        IL_0027:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
        IL_002c:  leave.s    IL_002e

      }  // end handler
      IL_002e:  ret
    } // end of method '<>c__DisplayClass20_0'::'<List>b__0'

    .method assembly hidebysig instance void 
            '<List>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass20_0'::'<List>b__1'

  } // end of class '<>c__DisplayClass20_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass21_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream> success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass21_0'::.ctor

    .method assembly hidebysig instance void 
            '<Download>b__0'(uint8[] result) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream> Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::success
      IL_0006:  ldarg.1
      IL_0007:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(uint8[])
      IL_000c:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream>::Invoke(!0)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass21_0'::'<Download>b__0'

    .method assembly hidebysig instance void 
            '<Download>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass21_0'::'<Download>b__1'

  } // end of class '<>c__DisplayClass21_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass22_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass22_0'::.ctor

    .method assembly hidebysig instance void 
            '<Upload>b__0'(uint8[] result) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::success
      IL_0006:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_000b:  ret
    } // end of method '<>c__DisplayClass22_0'::'<Upload>b__0'

    .method assembly hidebysig instance void 
            '<Upload>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass22_0'::'<Upload>b__1'

  } // end of class '<>c__DisplayClass22_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass23_0'
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
    } // end of method '<>c__DisplayClass23_0'::.ctor

    .method assembly hidebysig instance void 
            '<Link>b__0'(uint8[] result) cil managed
    {
      // 代码大小       47 (0x2f)
      .maxstack  2
      .locals init (class SimpleJson.JsonObject V_0,
               class [System.Runtime]System.Exception V_1)
      .try
      {
        IL_0000:  ldarg.1
        IL_0001:  call       object Game.WebManager::JsonFromBytes(uint8[])
        IL_0006:  castclass  SimpleJson.JsonObject
        IL_000b:  stloc.0
        IL_000c:  ldarg.0
        IL_000d:  ldfld      class [System.Runtime]System.Action`1<string> Game.DropboxExternalContentProvider/'<>c__DisplayClass23_0'::success
        IL_0012:  ldloc.0
        IL_0013:  call       string Game.DropboxExternalContentProvider::JsonObjectToLinkAddress(class SimpleJson.JsonObject)
        IL_0018:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
        IL_001d:  leave.s    IL_002e

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_001f:  stloc.1
        IL_0020:  ldarg.0
        IL_0021:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass23_0'::failure
        IL_0026:  ldloc.1
        IL_0027:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
        IL_002c:  leave.s    IL_002e

      }  // end handler
      IL_002e:  ret
    } // end of method '<>c__DisplayClass23_0'::'<Link>b__0'

    .method assembly hidebysig instance void 
            '<Link>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass23_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass23_0'::'<Link>b__1'

  } // end of class '<>c__DisplayClass23_0'

  .field private static class Game.Random m_random
  .field private static literal string m_appKey = "1unnzwkb8igx70k"
  .field private static literal string m_appSecret = "3i5u3j3141php7u"
  .field private class Game.DropboxExternalContentProvider/LoginProcessData m_loginProcessData
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldftn      instance void Game.DropboxExternalContentProvider::LoginUserAllowedAccess()
    IL_000d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0012:  call       void [Engine]Engine.Window::add_Activated(class [System.Runtime]System.Action)
    IL_0017:  ret
  } // end of method DropboxExternalContentProvider::.ctor

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.DropboxExternalContentProvider::LoginUserAllowedAccess()
    IL_0007:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_000c:  call       void [Engine]Engine.Window::remove_Activated(class [System.Runtime]System.Action)
    IL_0011:  ret
  } // end of method DropboxExternalContentProvider::Dispose

  .method public hidebysig newslot specialname virtual final 
          instance string  get_DisplayName() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "Dropbox"
    IL_0005:  ret
  } // end of method DropboxExternalContentProvider::get_DisplayName

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_SupportsLinks() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method DropboxExternalContentProvider::get_SupportsLinks

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_RequiresLogin() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method DropboxExternalContentProvider::get_RequiresLogin

  .method public hidebysig newslot specialname virtual final 
          instance bool  get_IsLoggedIn() cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  call       string Game.SettingsManager::get_DropboxToken()
    IL_0005:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000a:  brtrue.s   IL_001a

    IL_000c:  call       string Game.SettingsManager::get_DropboxSecret()
    IL_0011:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0016:  ldc.i4.0
    IL_0017:  ceq
    IL_0019:  ret

    IL_001a:  ldc.i4.0
    IL_001b:  ret
  } // end of method DropboxExternalContentProvider::get_IsLoggedIn

  .method public hidebysig newslot virtual final 
          instance void  Login(class Game.CancellableProgress progress,
                               class [System.Runtime]System.Action success,
                               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       87 (0x57)
    .maxstack  2
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0006:  brtrue.s   IL_003f

      IL_0008:  call       void Game.DropboxExternalContentProvider::VerifyInternetConnection()
      IL_000d:  ldarg.0
      IL_000e:  call       instance void Game.DropboxExternalContentProvider::Logout()
      IL_0013:  ldarg.0
      IL_0014:  newobj     instance void Game.DropboxExternalContentProvider/LoginProcessData::.ctor()
      IL_0019:  stfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_001e:  ldarg.0
      IL_001f:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0024:  ldarg.2
      IL_0025:  stfld      class [System.Runtime]System.Action Game.DropboxExternalContentProvider/LoginProcessData::Success
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0030:  ldarg.3
      IL_0031:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/LoginProcessData::Failure
      IL_0036:  ldarg.0
      IL_0037:  ldarg.1
      IL_0038:  call       instance void Game.DropboxExternalContentProvider::LoginRequestToken(class Game.CancellableProgress)
      IL_003d:  br.s       IL_004a

      IL_003f:  ldstr      "Login already in progress."
      IL_0044:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0049:  throw

      IL_004a:  leave.s    IL_0056

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_004c:  stloc.0
      IL_004d:  ldarg.3
      IL_004e:  ldloc.0
      IL_004f:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_0054:  leave.s    IL_0056

    }  // end handler
    IL_0056:  ret
  } // end of method DropboxExternalContentProvider::Login

  .method private hidebysig instance void 
          LoginRequestToken(class Game.CancellableProgress progress) cil managed
  {
    // 代码大小       158 (0x9e)
    .maxstack  7
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_0,
             class [System.Runtime]System.Exception V_1)
    .try
    {
      IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldstr      "oauth_consumer_key"
      IL_000c:  ldstr      "1unnzwkb8igx70k"
      IL_0011:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0016:  ldloc.0
      IL_0017:  ldstr      "oauth_signature_method"
      IL_001c:  ldstr      "PLAINTEXT"
      IL_0021:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0026:  ldloc.0
      IL_0027:  ldstr      "oauth_signature"
      IL_002c:  ldstr      "3i5u3j3141php7u&"
      IL_0031:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0036:  ldloc.0
      IL_0037:  ldstr      "oauth_version"
      IL_003c:  ldstr      "1.0"
      IL_0041:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0046:  ldloc.0
      IL_0047:  ldstr      "oauth_timestamp"
      IL_004c:  call       string Game.DropboxExternalContentProvider::GenerateTimestamp()
      IL_0051:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0056:  ldloc.0
      IL_0057:  ldstr      "oauth_nonce"
      IL_005c:  call       string Game.DropboxExternalContentProvider::GenerateNonce()
      IL_0061:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0066:  ldstr      "https://api.dropbox.com/1/oauth/request_token"
      IL_006b:  ldloc.0
      IL_006c:  ldnull
      IL_006d:  ldarg.1
      IL_006e:  ldarg.0
      IL_006f:  ldftn      instance void Game.DropboxExternalContentProvider::'<LoginRequestToken>b__16_0'(uint8[])
      IL_0075:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_007a:  ldarg.0
      IL_007b:  ldftn      instance void Game.DropboxExternalContentProvider::'<LoginRequestToken>b__16_1'(class [System.Runtime]System.Exception)
      IL_0081:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0086:  call       void Game.WebManager::Get(string,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class Game.CancellableProgress,
                                                     class [System.Runtime]System.Action`1<uint8[]>,
                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_008b:  leave.s    IL_009d

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_008d:  stloc.1
      IL_008e:  ldarg.0
      IL_008f:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0094:  ldarg.0
      IL_0095:  ldloc.1
      IL_0096:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                    class [System.Runtime]System.Exception)
      IL_009b:  leave.s    IL_009d

    }  // end handler
    IL_009d:  ret
  } // end of method DropboxExternalContentProvider::LoginRequestToken

  .method private hidebysig instance void 
          LoginLaunchBrowser() cil managed
  {
    // 代码大小       84 (0x54)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_0,
             class [System.Runtime]System.Exception V_1)
    .try
    {
      IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldstr      "oauth_token"
      IL_000c:  ldarg.0
      IL_000d:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0012:  ldfld      string Game.DropboxExternalContentProvider/LoginProcessData::RequestToken
      IL_0017:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_001c:  ldloc.0
      IL_001d:  ldstr      "oauth_callback"
      IL_0022:  ldstr      "survivalcraft2://"
      IL_0027:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_002c:  ldstr      "https://www.dropbox.com/1/oauth/authorize\?"
      IL_0031:  ldloc.0
      IL_0032:  call       string Game.WebManager::UrlParametersToString(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
      IL_0037:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_003c:  call       void Game.WebBrowserManager::LaunchBrowser(string)
      IL_0041:  leave.s    IL_0053

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0043:  stloc.1
      IL_0044:  ldarg.0
      IL_0045:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_004a:  ldarg.0
      IL_004b:  ldloc.1
      IL_004c:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                    class [System.Runtime]System.Exception)
      IL_0051:  leave.s    IL_0053

    }  // end handler
    IL_0053:  ret
  } // end of method DropboxExternalContentProvider::LoginLaunchBrowser

  .method private hidebysig instance void 
          LoginUserAllowedAccess() cil managed
  {
    // 代码大小       237 (0xed)
    .maxstack  7
    .locals init (class Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  newobj     instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.DropboxExternalContentProvider Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::'<>4__this'
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_0013:  brtrue.s   IL_0016

    IL_0015:  ret

    IL_0016:  ldloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_001d:  stfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::loginProcessData
    IL_0022:  ldarg.0
    IL_0023:  ldnull
    IL_0024:  stfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    .try
    {
      IL_0029:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_002e:  stloc.1
      IL_002f:  ldloc.1
      IL_0030:  ldstr      "oauth_consumer_key"
      IL_0035:  ldstr      "1unnzwkb8igx70k"
      IL_003a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_003f:  ldloc.1
      IL_0040:  ldstr      "oauth_token"
      IL_0045:  ldloc.0
      IL_0046:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::loginProcessData
      IL_004b:  ldfld      string Game.DropboxExternalContentProvider/LoginProcessData::RequestToken
      IL_0050:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0055:  ldloc.1
      IL_0056:  ldstr      "oauth_signature_method"
      IL_005b:  ldstr      "PLAINTEXT"
      IL_0060:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0065:  ldloc.1
      IL_0066:  ldstr      "oauth_signature"
      IL_006b:  ldstr      "3i5u3j3141php7u&"
      IL_0070:  ldloc.0
      IL_0071:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::loginProcessData
      IL_0076:  ldfld      string Game.DropboxExternalContentProvider/LoginProcessData::RequestSecret
      IL_007b:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0080:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0085:  ldloc.1
      IL_0086:  ldstr      "oauth_version"
      IL_008b:  ldstr      "1.0"
      IL_0090:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0095:  ldloc.1
      IL_0096:  ldstr      "oauth_timestamp"
      IL_009b:  call       string Game.DropboxExternalContentProvider::GenerateTimestamp()
      IL_00a0:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_00a5:  ldloc.1
      IL_00a6:  ldstr      "oauth_nonce"
      IL_00ab:  call       string Game.DropboxExternalContentProvider::GenerateNonce()
      IL_00b0:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_00b5:  ldstr      "https://api.dropbox.com/1/oauth/access_token"
      IL_00ba:  ldloc.1
      IL_00bb:  ldnull
      IL_00bc:  ldnull
      IL_00bd:  ldloc.0
      IL_00be:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::'<LoginUserAllowedAccess>b__0'(uint8[])
      IL_00c4:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_00c9:  ldloc.0
      IL_00ca:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::'<LoginUserAllowedAccess>b__1'(class [System.Runtime]System.Exception)
      IL_00d0:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_00d5:  call       void Game.WebManager::Get(string,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class Game.CancellableProgress,
                                                     class [System.Runtime]System.Action`1<uint8[]>,
                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_00da:  leave.s    IL_00ec

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00dc:  stloc.2
      IL_00dd:  ldloc.0
      IL_00de:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass18_0'::loginProcessData
      IL_00e3:  ldarg.0
      IL_00e4:  ldloc.2
      IL_00e5:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                    class [System.Runtime]System.Exception)
      IL_00ea:  leave.s    IL_00ec

    }  // end handler
    IL_00ec:  ret
  } // end of method DropboxExternalContentProvider::LoginUserAllowedAccess

  .method public hidebysig newslot virtual final 
          instance void  Logout() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0005:  call       void Game.SettingsManager::set_DropboxToken(string)
    IL_000a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000f:  call       void Game.SettingsManager::set_DropboxSecret(string)
    IL_0014:  ret
  } // end of method DropboxExternalContentProvider::Logout

  .method public hidebysig newslot virtual final 
          instance void  List(string path,
                              class Game.CancellableProgress progress,
                              class [System.Runtime]System.Action`1<class Game.ExternalContentEntry> success,
                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       221 (0xdd)
    .maxstack  7
    .locals init (class Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  newobj     instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      class [System.Runtime]System.Action`1<class Game.ExternalContentEntry> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::success
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    failure
    IL_0010:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::failure
    .try
    {
      IL_0015:  ldarg.0
      IL_0016:  call       instance void Game.DropboxExternalContentProvider::VerifyLoggedIn()
      IL_001b:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0020:  stloc.1
      IL_0021:  ldloc.1
      IL_0022:  ldstr      "oauth_consumer_key"
      IL_0027:  ldstr      "1unnzwkb8igx70k"
      IL_002c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0031:  ldloc.1
      IL_0032:  ldstr      "oauth_token"
      IL_0037:  call       string Game.SettingsManager::get_DropboxToken()
      IL_003c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0041:  ldloc.1
      IL_0042:  ldstr      "oauth_signature_method"
      IL_0047:  ldstr      "PLAINTEXT"
      IL_004c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0051:  ldloc.1
      IL_0052:  ldstr      "oauth_signature"
      IL_0057:  ldstr      "3i5u3j3141php7u&"
      IL_005c:  call       string Game.SettingsManager::get_DropboxSecret()
      IL_0061:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0066:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_006b:  ldloc.1
      IL_006c:  ldstr      "oauth_version"
      IL_0071:  ldstr      "1.0"
      IL_0076:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_007b:  ldloc.1
      IL_007c:  ldstr      "oauth_timestamp"
      IL_0081:  call       string Game.DropboxExternalContentProvider::GenerateTimestamp()
      IL_0086:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_008b:  ldloc.1
      IL_008c:  ldstr      "oauth_nonce"
      IL_0091:  call       string Game.DropboxExternalContentProvider::GenerateNonce()
      IL_0096:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_009b:  ldstr      "https://api.dropbox.com/1/metadata/auto/"
      IL_00a0:  ldarg.1
      IL_00a1:  call       string Game.DropboxExternalContentProvider::NormalizePath(string)
      IL_00a6:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_00ab:  ldloc.1
      IL_00ac:  ldnull
      IL_00ad:  ldarg.2
      IL_00ae:  ldloc.0
      IL_00af:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::'<List>b__0'(uint8[])
      IL_00b5:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_00ba:  ldloc.0
      IL_00bb:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::'<List>b__1'(class [System.Runtime]System.Exception)
      IL_00c1:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_00c6:  call       void Game.WebManager::Get(string,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class Game.CancellableProgress,
                                                     class [System.Runtime]System.Action`1<uint8[]>,
                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_00cb:  leave.s    IL_00dc

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00cd:  stloc.2
      IL_00ce:  ldloc.0
      IL_00cf:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::failure
      IL_00d4:  ldloc.2
      IL_00d5:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_00da:  leave.s    IL_00dc

    }  // end handler
    IL_00dc:  ret
  } // end of method DropboxExternalContentProvider::List

  .method public hidebysig newslot virtual final 
          instance void  Download(string path,
                                  class Game.CancellableProgress progress,
                                  class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream> success,
                                  class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       221 (0xdd)
    .maxstack  7
    .locals init (class Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  newobj     instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream> Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::success
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    failure
    IL_0010:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::failure
    .try
    {
      IL_0015:  ldarg.0
      IL_0016:  call       instance void Game.DropboxExternalContentProvider::VerifyLoggedIn()
      IL_001b:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0020:  stloc.1
      IL_0021:  ldloc.1
      IL_0022:  ldstr      "oauth_consumer_key"
      IL_0027:  ldstr      "1unnzwkb8igx70k"
      IL_002c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0031:  ldloc.1
      IL_0032:  ldstr      "oauth_token"
      IL_0037:  call       string Game.SettingsManager::get_DropboxToken()
      IL_003c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0041:  ldloc.1
      IL_0042:  ldstr      "oauth_signature_method"
      IL_0047:  ldstr      "PLAINTEXT"
      IL_004c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0051:  ldloc.1
      IL_0052:  ldstr      "oauth_signature"
      IL_0057:  ldstr      "3i5u3j3141php7u&"
      IL_005c:  call       string Game.SettingsManager::get_DropboxSecret()
      IL_0061:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0066:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_006b:  ldloc.1
      IL_006c:  ldstr      "oauth_version"
      IL_0071:  ldstr      "1.0"
      IL_0076:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_007b:  ldloc.1
      IL_007c:  ldstr      "oauth_timestamp"
      IL_0081:  call       string Game.DropboxExternalContentProvider::GenerateTimestamp()
      IL_0086:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_008b:  ldloc.1
      IL_008c:  ldstr      "oauth_nonce"
      IL_0091:  call       string Game.DropboxExternalContentProvider::GenerateNonce()
      IL_0096:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_009b:  ldstr      "https://api-content.dropbox.com/1/files/auto/"
      IL_00a0:  ldarg.1
      IL_00a1:  call       string Game.DropboxExternalContentProvider::NormalizePath(string)
      IL_00a6:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_00ab:  ldloc.1
      IL_00ac:  ldnull
      IL_00ad:  ldarg.2
      IL_00ae:  ldloc.0
      IL_00af:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::'<Download>b__0'(uint8[])
      IL_00b5:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_00ba:  ldloc.0
      IL_00bb:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::'<Download>b__1'(class [System.Runtime]System.Exception)
      IL_00c1:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_00c6:  call       void Game.WebManager::Get(string,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class Game.CancellableProgress,
                                                     class [System.Runtime]System.Action`1<uint8[]>,
                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_00cb:  leave.s    IL_00dc

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00cd:  stloc.2
      IL_00ce:  ldloc.0
      IL_00cf:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::failure
      IL_00d4:  ldloc.2
      IL_00d5:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_00da:  leave.s    IL_00dc

    }  // end handler
    IL_00dc:  ret
  } // end of method DropboxExternalContentProvider::Download

  .method public hidebysig newslot virtual final 
          instance void  Upload(string path,
                                class [System.IO]System.IO.Stream 'stream',
                                class Game.CancellableProgress progress,
                                class [System.Runtime]System.Action success,
                                class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       255 (0xff)
    .maxstack  8
    .locals init (class Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  newobj     instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.s    success
    IL_0009:  stfld      class [System.Runtime]System.Action Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::success
    IL_000e:  ldloc.0
    IL_000f:  ldarg.s    failure
    IL_0011:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::failure
    .try
    {
      IL_0016:  ldarg.0
      IL_0017:  call       instance void Game.DropboxExternalContentProvider::VerifyLoggedIn()
      IL_001c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0021:  stloc.1
      IL_0022:  ldloc.1
      IL_0023:  ldstr      "oauth_consumer_key"
      IL_0028:  ldstr      "1unnzwkb8igx70k"
      IL_002d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0032:  ldloc.1
      IL_0033:  ldstr      "oauth_token"
      IL_0038:  call       string Game.SettingsManager::get_DropboxToken()
      IL_003d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0042:  ldloc.1
      IL_0043:  ldstr      "oauth_signature_method"
      IL_0048:  ldstr      "PLAINTEXT"
      IL_004d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0052:  ldloc.1
      IL_0053:  ldstr      "oauth_signature"
      IL_0058:  ldstr      "3i5u3j3141php7u&"
      IL_005d:  call       string Game.SettingsManager::get_DropboxSecret()
      IL_0062:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0067:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_006c:  ldloc.1
      IL_006d:  ldstr      "oauth_version"
      IL_0072:  ldstr      "1.0"
      IL_0077:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_007c:  ldloc.1
      IL_007d:  ldstr      "oauth_timestamp"
      IL_0082:  call       string Game.DropboxExternalContentProvider::GenerateTimestamp()
      IL_0087:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_008c:  ldloc.1
      IL_008d:  ldstr      "oauth_nonce"
      IL_0092:  call       string Game.DropboxExternalContentProvider::GenerateNonce()
      IL_0097:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_009c:  ldloc.1
      IL_009d:  ldstr      "overwrite"
      IL_00a2:  ldstr      "false"
      IL_00a7:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_00ac:  ldloc.1
      IL_00ad:  ldstr      "autorename"
      IL_00b2:  ldstr      "true"
      IL_00b7:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_00bc:  ldstr      "https://api-content.dropbox.com/1/files_put/auto/"
      IL_00c1:  ldarg.1
      IL_00c2:  call       string Game.DropboxExternalContentProvider::NormalizePath(string)
      IL_00c7:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_00cc:  ldloc.1
      IL_00cd:  ldnull
      IL_00ce:  ldarg.2
      IL_00cf:  ldarg.3
      IL_00d0:  ldloc.0
      IL_00d1:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::'<Upload>b__0'(uint8[])
      IL_00d7:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_00dc:  ldloc.0
      IL_00dd:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::'<Upload>b__1'(class [System.Runtime]System.Exception)
      IL_00e3:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_00e8:  call       void Game.WebManager::Post(string,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.IO]System.IO.Stream,
                                                      class Game.CancellableProgress,
                                                      class [System.Runtime]System.Action`1<uint8[]>,
                                                      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_00ed:  leave.s    IL_00fe

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00ef:  stloc.2
      IL_00f0:  ldloc.0
      IL_00f1:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::failure
      IL_00f6:  ldloc.2
      IL_00f7:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_00fc:  leave.s    IL_00fe

    }  // end handler
    IL_00fe:  ret
  } // end of method DropboxExternalContentProvider::Upload

  .method public hidebysig newslot virtual final 
          instance void  Link(string path,
                              class Game.CancellableProgress progress,
                              class [System.Runtime]System.Action`1<string> success,
                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       243 (0xf3)
    .maxstack  8
    .locals init (class Game.DropboxExternalContentProvider/'<>c__DisplayClass23_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  newobj     instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass23_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      class [System.Runtime]System.Action`1<string> Game.DropboxExternalContentProvider/'<>c__DisplayClass23_0'::success
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    failure
    IL_0010:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass23_0'::failure
    .try
    {
      IL_0015:  ldarg.0
      IL_0016:  call       instance void Game.DropboxExternalContentProvider::VerifyLoggedIn()
      IL_001b:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0020:  stloc.1
      IL_0021:  ldloc.1
      IL_0022:  ldstr      "oauth_consumer_key"
      IL_0027:  ldstr      "1unnzwkb8igx70k"
      IL_002c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0031:  ldloc.1
      IL_0032:  ldstr      "oauth_token"
      IL_0037:  call       string Game.SettingsManager::get_DropboxToken()
      IL_003c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0041:  ldloc.1
      IL_0042:  ldstr      "oauth_signature_method"
      IL_0047:  ldstr      "PLAINTEXT"
      IL_004c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0051:  ldloc.1
      IL_0052:  ldstr      "oauth_signature"
      IL_0057:  ldstr      "3i5u3j3141php7u&"
      IL_005c:  call       string Game.SettingsManager::get_DropboxSecret()
      IL_0061:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0066:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_006b:  ldloc.1
      IL_006c:  ldstr      "oauth_version"
      IL_0071:  ldstr      "1.0"
      IL_0076:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_007b:  ldloc.1
      IL_007c:  ldstr      "oauth_timestamp"
      IL_0081:  call       string Game.DropboxExternalContentProvider::GenerateTimestamp()
      IL_0086:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_008b:  ldloc.1
      IL_008c:  ldstr      "oauth_nonce"
      IL_0091:  call       string Game.DropboxExternalContentProvider::GenerateNonce()
      IL_0096:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_009b:  ldloc.1
      IL_009c:  ldstr      "short_url"
      IL_00a1:  ldstr      "false"
      IL_00a6:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_00ab:  ldstr      "https://api.dropbox.com/1/shares/auto/"
      IL_00b0:  ldarg.1
      IL_00b1:  call       string Game.DropboxExternalContentProvider::NormalizePath(string)
      IL_00b6:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_00bb:  ldloc.1
      IL_00bc:  ldnull
      IL_00bd:  ldc.i4.0
      IL_00be:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(int32)
      IL_00c3:  ldarg.2
      IL_00c4:  ldloc.0
      IL_00c5:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass23_0'::'<Link>b__0'(uint8[])
      IL_00cb:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_00d0:  ldloc.0
      IL_00d1:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass23_0'::'<Link>b__1'(class [System.Runtime]System.Exception)
      IL_00d7:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_00dc:  call       void Game.WebManager::Post(string,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.IO]System.IO.Stream,
                                                      class Game.CancellableProgress,
                                                      class [System.Runtime]System.Action`1<uint8[]>,
                                                      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_00e1:  leave.s    IL_00f2

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00e3:  stloc.2
      IL_00e4:  ldloc.0
      IL_00e5:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass23_0'::failure
      IL_00ea:  ldloc.2
      IL_00eb:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_00f0:  leave.s    IL_00f2

    }  // end handler
    IL_00f2:  ret
  } // end of method DropboxExternalContentProvider::Link

  .method private hidebysig static void  VerifyInternetConnection() cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  call       bool Game.WebManager::IsInternetConnectionAvailable()
    IL_0005:  brtrue.s   IL_0012

    IL_0007:  ldstr      "Internet connection is unavailable."
    IL_000c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0011:  throw

    IL_0012:  ret
  } // end of method DropboxExternalContentProvider::VerifyInternetConnection

  .method private hidebysig instance void 
          VerifyLoggedIn() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.DropboxExternalContentProvider::get_IsLoggedIn()
    IL_0006:  brtrue.s   IL_0013

    IL_0008:  ldstr      "Not logged in to Dropbox in this app."
    IL_000d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0012:  throw

    IL_0013:  ret
  } // end of method DropboxExternalContentProvider::VerifyLoggedIn

  .method private hidebysig static class Game.ExternalContentEntry 
          JsonObjectToEntry(class SimpleJson.JsonObject jsonObject) cil managed
  {
    // 代码大小       325 (0x145)
    .maxstack  4
    .locals init (class Game.ExternalContentEntry V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<object> V_1,
             class SimpleJson.JsonObject V_2)
    IL_0000:  newobj     instance void Game.ExternalContentEntry::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldstr      "path"
    IL_000d:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
    IL_0012:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0017:  call       string Game.DropboxExternalContentProvider::NormalizePath(string)
    IL_001c:  stfld      string Game.ExternalContentEntry::Path
    IL_0021:  ldloc.0
    IL_0022:  ldarg.0
    IL_0023:  ldstr      "is_dir"
    IL_0028:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
    IL_002d:  unbox.any  [System.Runtime]System.Boolean
    IL_0032:  brtrue.s   IL_0046

    IL_0034:  ldloc.0
    IL_0035:  ldfld      string Game.ExternalContentEntry::Path
    IL_003a:  call       string [Engine]Engine.Storage::GetExtension(string)
    IL_003f:  call       valuetype Game.ExternalContentType Game.ExternalContentManager::ExtensionToType(string)
    IL_0044:  br.s       IL_0047

    IL_0046:  ldc.i4.1
    IL_0047:  stfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_004c:  ldloc.0
    IL_004d:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_0052:  ldc.i4.1
    IL_0053:  bne.un     IL_00e1

    IL_0058:  ldloc.0
    IL_0059:  ldarg.0
    IL_005a:  ldstr      "hash"
    IL_005f:  callvirt   instance bool SimpleJson.JsonObject::ContainsKey(string)
    IL_0064:  brtrue.s   IL_006d

    IL_0066:  ldsfld     string [System.Runtime]System.String::Empty
    IL_006b:  br.s       IL_007d

    IL_006d:  ldarg.0
    IL_006e:  ldstr      "hash"
    IL_0073:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
    IL_0078:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_007d:  stfld      string Game.ExternalContentEntry::Hash
    IL_0082:  ldarg.0
    IL_0083:  ldstr      "contents"
    IL_0088:  callvirt   instance bool SimpleJson.JsonObject::ContainsKey(string)
    IL_008d:  brfalse    IL_0143

    IL_0092:  ldarg.0
    IL_0093:  ldstr      "contents"
    IL_0098:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
    IL_009d:  castclass  SimpleJson.JsonArray
    IL_00a2:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<object>::GetEnumerator()
    IL_00a7:  stloc.1
    .try
    {
      IL_00a8:  br.s       IL_00c8

      IL_00aa:  ldloca.s   V_1
      IL_00ac:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<object>::get_Current()
      IL_00b1:  castclass  SimpleJson.JsonObject
      IL_00b6:  stloc.2
      IL_00b7:  ldloc.0
      IL_00b8:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry> Game.ExternalContentEntry::ChildEntries
      IL_00bd:  ldloc.2
      IL_00be:  call       class Game.ExternalContentEntry Game.DropboxExternalContentProvider::JsonObjectToEntry(class SimpleJson.JsonObject)
      IL_00c3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry>::Add(!0)
      IL_00c8:  ldloca.s   V_1
      IL_00ca:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<object>::MoveNext()
      IL_00cf:  brtrue.s   IL_00aa

      IL_00d1:  leave.s    IL_0143

    }  // end .try
    finally
    {
      IL_00d3:  ldloca.s   V_1
      IL_00d5:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<object>
      IL_00db:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e0:  endfinally
    }  // end handler
    IL_00e1:  ldloc.0
    IL_00e2:  ldarg.0
    IL_00e3:  ldstr      "modified"
    IL_00e8:  callvirt   instance bool SimpleJson.JsonObject::ContainsKey(string)
    IL_00ed:  brtrue.s   IL_00fd

    IL_00ef:  ldc.i4     0x7b2
    IL_00f4:  ldc.i4.1
    IL_00f5:  ldc.i4.1
    IL_00f6:  newobj     instance void [System.Runtime]System.DateTime::.ctor(int32,
                                                                              int32,
                                                                              int32)
    IL_00fb:  br.s       IL_0117

    IL_00fd:  ldarg.0
    IL_00fe:  ldstr      "modified"
    IL_0103:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
    IL_0108:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_010d:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0112:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::Parse(string,
                                                                                                          class [System.Runtime]System.IFormatProvider)
    IL_0117:  stfld      valuetype [System.Runtime]System.DateTime Game.ExternalContentEntry::Time
    IL_011c:  ldloc.0
    IL_011d:  ldarg.0
    IL_011e:  ldstr      "bytes"
    IL_0123:  callvirt   instance bool SimpleJson.JsonObject::ContainsKey(string)
    IL_0128:  brtrue.s   IL_012e

    IL_012a:  ldc.i4.0
    IL_012b:  conv.i8
    IL_012c:  br.s       IL_013e

    IL_012e:  ldarg.0
    IL_012f:  ldstr      "bytes"
    IL_0134:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
    IL_0139:  unbox.any  [System.Runtime]System.Int64
    IL_013e:  stfld      int64 Game.ExternalContentEntry::Size
    IL_0143:  ldloc.0
    IL_0144:  ret
  } // end of method DropboxExternalContentProvider::JsonObjectToEntry

  .method private hidebysig static string 
          JsonObjectToLinkAddress(class SimpleJson.JsonObject jsonObject) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "url"
    IL_0006:  callvirt   instance bool SimpleJson.JsonObject::ContainsKey(string)
    IL_000b:  brfalse.s  IL_0046

    IL_000d:  ldarg.0
    IL_000e:  ldstr      "url"
    IL_0013:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
    IL_0018:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_001d:  ldstr      "www.dropbox."
    IL_0022:  ldstr      "dl.dropbox."
    IL_0027:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_002c:  ldstr      "\?dl=0"
    IL_0031:  ldstr      ""
    IL_0036:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_003b:  ldstr      "\?dl=1"
    IL_0040:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0045:  ret

    IL_0046:  ldstr      "Share information not found."
    IL_004b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0050:  throw
  } // end of method DropboxExternalContentProvider::JsonObjectToLinkAddress

  .method private hidebysig static string 
          NormalizePath(string path) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "/"
    IL_0006:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
    IL_000b:  brfalse.s  IL_0015

    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance string [System.Runtime]System.String::Substring(int32)
    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  ret
  } // end of method DropboxExternalContentProvider::NormalizePath

  .method private hidebysig static string 
          GenerateTimestamp() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.TimeSpan V_0,
             int64 V_1)
    IL_0000:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_0005:  ldc.i4     0x7b2
    IL_000a:  ldc.i4.1
    IL_000b:  ldc.i4.1
    IL_000c:  newobj     instance void [System.Runtime]System.DateTime::.ctor(int32,
                                                                              int32,
                                                                              int32)
    IL_0011:  call       valuetype [System.Runtime]System.TimeSpan [System.Runtime]System.DateTime::op_Subtraction(valuetype [System.Runtime]System.DateTime,
                                                                                                                   valuetype [System.Runtime]System.DateTime)
    IL_0016:  stloc.0
    IL_0017:  ldloca.s   V_0
    IL_0019:  call       instance float64 [System.Runtime]System.TimeSpan::get_TotalSeconds()
    IL_001e:  conv.i8
    IL_001f:  stloc.1
    IL_0020:  ldloca.s   V_1
    IL_0022:  call       instance string [System.Runtime]System.Int64::ToString()
    IL_0027:  ret
  } // end of method DropboxExternalContentProvider::GenerateTimestamp

  .method private hidebysig static string 
          GenerateNonce() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldsfld     class Game.Random Game.DropboxExternalContentProvider::m_random
    IL_0005:  ldc.i4     0xf4240
    IL_000a:  ldc.i4     0x77359400
    IL_000f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0014:  stloc.0
    IL_0015:  ldloca.s   V_0
    IL_0017:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_001c:  ret
  } // end of method DropboxExternalContentProvider::GenerateNonce

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void Game.Random::.ctor()
    IL_0005:  stsfld     class Game.Random Game.DropboxExternalContentProvider::m_random
    IL_000a:  ret
  } // end of method DropboxExternalContentProvider::.cctor

  .method private hidebysig instance void 
          '<LoginRequestToken>b__16_0'(uint8[] result) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       58 (0x3a)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager::UrlParametersFromBytes(uint8[])
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_000d:  ldloc.0
    IL_000e:  ldstr      "oauth_token"
    IL_0013:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Item(!0)
    IL_0018:  stfld      string Game.DropboxExternalContentProvider/LoginProcessData::RequestToken
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_0023:  ldloc.0
    IL_0024:  ldstr      "oauth_token_secret"
    IL_0029:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Item(!0)
    IL_002e:  stfld      string Game.DropboxExternalContentProvider/LoginProcessData::RequestSecret
    IL_0033:  ldarg.0
    IL_0034:  call       instance void Game.DropboxExternalContentProvider::LoginLaunchBrowser()
    IL_0039:  ret
  } // end of method DropboxExternalContentProvider::'<LoginRequestToken>b__16_0'

  .method private hidebysig instance void 
          '<LoginRequestToken>b__16_1'(class [System.Runtime]System.Exception 'error') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                  class [System.Runtime]System.Exception)
    IL_000d:  ret
  } // end of method DropboxExternalContentProvider::'<LoginRequestToken>b__16_1'

  .property instance string DisplayName()
  {
    .get instance string Game.DropboxExternalContentProvider::get_DisplayName()
  } // end of property DropboxExternalContentProvider::DisplayName
  .property instance bool SupportsLinks()
  {
    .get instance bool Game.DropboxExternalContentProvider::get_SupportsLinks()
  } // end of property DropboxExternalContentProvider::SupportsLinks
  .property instance bool RequiresLogin()
  {
    .get instance bool Game.DropboxExternalContentProvider::get_RequiresLogin()
  } // end of property DropboxExternalContentProvider::RequiresLogin
  .property instance bool IsLoggedIn()
  {
    .get instance bool Game.DropboxExternalContentProvider::get_IsLoggedIn()
  } // end of property DropboxExternalContentProvider::IsLoggedIn
} // end of class Game.DropboxExternalContentProvider