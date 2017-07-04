.class public auto ansi beforefieldinit Game.DropboxExternalContentProvider
       extends [System.Runtime]System.Object
       implements Game.IExternalContentProvider,
                  [System.Runtime]System.IDisposable
{
  .class auto ansi nested private beforefieldinit LoginProcessData
         extends [System.Runtime]System.Object
  {
    .field public bool IsTokenFlow
    .field public class [System.Runtime]System.Action Success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Failure
    .field public class Game.CancellableProgress Progress
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

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass19_0'
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
    } // end of method '<>c__DisplayClass19_0'::.ctor

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
        IL_000d:  ldfld      class [System.Runtime]System.Action`1<class Game.ExternalContentEntry> Game.DropboxExternalContentProvider/'<>c__DisplayClass19_0'::success
        IL_0012:  ldloc.0
        IL_0013:  call       class Game.ExternalContentEntry Game.DropboxExternalContentProvider::JsonObjectToEntry(class SimpleJson.JsonObject)
        IL_0018:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ExternalContentEntry>::Invoke(!0)
        IL_001d:  leave.s    IL_002e

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_001f:  stloc.1
        IL_0020:  ldarg.0
        IL_0021:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass19_0'::failure
        IL_0026:  ldloc.1
        IL_0027:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
        IL_002c:  leave.s    IL_002e

      }  // end handler
      IL_002e:  ret
    } // end of method '<>c__DisplayClass19_0'::'<List>b__0'

    .method assembly hidebysig instance void 
            '<List>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass19_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass19_0'::'<List>b__1'

  } // end of class '<>c__DisplayClass19_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass20_0'
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
    } // end of method '<>c__DisplayClass20_0'::.ctor

    .method assembly hidebysig instance void 
            '<Download>b__0'(uint8[] result) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::success
      IL_0006:  ldarg.1
      IL_0007:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(uint8[])
      IL_000c:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream>::Invoke(!0)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass20_0'::'<Download>b__0'

    .method assembly hidebysig instance void 
            '<Download>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass20_0'::'<Download>b__1'

  } // end of class '<>c__DisplayClass20_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass21_0'
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
    } // end of method '<>c__DisplayClass21_0'::.ctor

    .method assembly hidebysig instance void 
            '<Upload>b__0'(uint8[] result) cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<string> Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::success
      IL_0006:  ldnull
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass21_0'::'<Upload>b__0'

    .method assembly hidebysig instance void 
            '<Upload>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass21_0'::'<Upload>b__1'

  } // end of class '<>c__DisplayClass21_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass22_0'
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
    } // end of method '<>c__DisplayClass22_0'::.ctor

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
        IL_000d:  ldfld      class [System.Runtime]System.Action`1<string> Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::success
        IL_0012:  ldloc.0
        IL_0013:  call       string Game.DropboxExternalContentProvider::JsonObjectToLinkAddress(class SimpleJson.JsonObject)
        IL_0018:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
        IL_001d:  leave.s    IL_002e

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_001f:  stloc.1
        IL_0020:  ldarg.0
        IL_0021:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::failure
        IL_0026:  ldloc.1
        IL_0027:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
        IL_002c:  leave.s    IL_002e

      }  // end handler
      IL_002e:  ret
    } // end of method '<>c__DisplayClass22_0'::'<Link>b__0'

    .method assembly hidebysig instance void 
            '<Link>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass22_0'::'<Link>b__1'

  } // end of class '<>c__DisplayClass22_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass24_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.DropboxExternalContentProvider/LoginProcessData loginProcessData
    .field public class Game.DropboxExternalContentProvider '<>4__this'
    .field public class [System.Runtime]System.Action`1<uint8[]> '<>9__1'
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> '<>9__2'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass24_0'::.ctor

    .method assembly hidebysig instance void 
            '<WindowActivated>b__0'(string s) cil managed
    {
      // 代码大小       209 (0xd1)
      .maxstack  9
      .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_0,
               class [System.Runtime]System.Action`1<uint8[]> V_1,
               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> V_2,
               class [System.Runtime]System.Exception V_3)
      IL_0000:  ldarg.1
      IL_0001:  brfalse    IL_00be

      .try
      {
        IL_0006:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
        IL_000b:  stloc.0
        IL_000c:  ldloc.0
        IL_000d:  ldstr      "code"
        IL_0012:  ldarg.1
        IL_0013:  callvirt   instance string [System.Runtime]System.String::Trim()
        IL_0018:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                                 !1)
        IL_001d:  ldloc.0
        IL_001e:  ldstr      "client_id"
        IL_0023:  ldstr      "1unnzwkb8igx70k"
        IL_0028:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                                 !1)
        IL_002d:  ldloc.0
        IL_002e:  ldstr      "client_secret"
        IL_0033:  ldstr      "3i5u3j3141php7u"
        IL_0038:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                                 !1)
        IL_003d:  ldloc.0
        IL_003e:  ldstr      "grant_type"
        IL_0043:  ldstr      "authorization_code"
        IL_0048:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                                 !1)
        IL_004d:  ldstr      "https://api.dropboxapi.com/oauth2/token"
        IL_0052:  ldloc.0
        IL_0053:  ldnull
        IL_0054:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor()
        IL_0059:  ldarg.0
        IL_005a:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::loginProcessData
        IL_005f:  ldfld      class Game.CancellableProgress Game.DropboxExternalContentProvider/LoginProcessData::Progress
        IL_0064:  ldarg.0
        IL_0065:  ldfld      class [System.Runtime]System.Action`1<uint8[]> Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<>9__1'
        IL_006a:  dup
        IL_006b:  brtrue.s   IL_0083

        IL_006d:  pop
        IL_006e:  ldarg.0
        IL_006f:  ldarg.0
        IL_0070:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<WindowActivated>b__1'(uint8[])
        IL_0076:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                                 native int)
        IL_007b:  dup
        IL_007c:  stloc.1
        IL_007d:  stfld      class [System.Runtime]System.Action`1<uint8[]> Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<>9__1'
        IL_0082:  ldloc.1
        IL_0083:  ldarg.0
        IL_0084:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<>9__2'
        IL_0089:  dup
        IL_008a:  brtrue.s   IL_00a2

        IL_008c:  pop
        IL_008d:  ldarg.0
        IL_008e:  ldarg.0
        IL_008f:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<WindowActivated>b__2'(class [System.Runtime]System.Exception)
        IL_0095:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                                native int)
        IL_009a:  dup
        IL_009b:  stloc.2
        IL_009c:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<>9__2'
        IL_00a1:  ldloc.2
        IL_00a2:  call       void Game.WebManager::Post(string,
                                                        class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                        class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                        class [System.IO]System.IO.Stream,
                                                        class Game.CancellableProgress,
                                                        class [System.Runtime]System.Action`1<uint8[]>,
                                                        class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
        IL_00a7:  leave.s    IL_00d0

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_00a9:  stloc.3
        IL_00aa:  ldarg.0
        IL_00ab:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::loginProcessData
        IL_00b0:  ldarg.0
        IL_00b1:  ldfld      class Game.DropboxExternalContentProvider Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<>4__this'
        IL_00b6:  ldloc.3
        IL_00b7:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                      class [System.Runtime]System.Exception)
        IL_00bc:  leave.s    IL_00d0

      }  // end handler
      IL_00be:  ldarg.0
      IL_00bf:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::loginProcessData
      IL_00c4:  ldarg.0
      IL_00c5:  ldfld      class Game.DropboxExternalContentProvider Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<>4__this'
      IL_00ca:  ldnull
      IL_00cb:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                    class [System.Runtime]System.Exception)
      IL_00d0:  ret
    } // end of method '<>c__DisplayClass24_0'::'<WindowActivated>b__0'

    .method assembly hidebysig instance void 
            '<WindowActivated>b__1'(uint8[] result) cil managed
    {
      // 代码大小       49 (0x31)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       object Game.WebManager::JsonFromBytes(uint8[])
      IL_0006:  castclass  class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>
      IL_000b:  ldstr      "access_token"
      IL_0010:  callvirt   instance !1 class [System.Runtime]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
      IL_0015:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_001a:  call       void Game.SettingsManager::set_DropboxAccessToken(string)
      IL_001f:  ldarg.0
      IL_0020:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::loginProcessData
      IL_0025:  ldarg.0
      IL_0026:  ldfld      class Game.DropboxExternalContentProvider Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<>4__this'
      IL_002b:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Succeed(class Game.DropboxExternalContentProvider)
      IL_0030:  ret
    } // end of method '<>c__DisplayClass24_0'::'<WindowActivated>b__1'

    .method assembly hidebysig instance void 
            '<WindowActivated>b__2'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::loginProcessData
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class Game.DropboxExternalContentProvider Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<>4__this'
      IL_000c:  ldarg.1
      IL_000d:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                    class [System.Runtime]System.Exception)
      IL_0012:  ret
    } // end of method '<>c__DisplayClass24_0'::'<WindowActivated>b__2'

  } // end of class '<>c__DisplayClass24_0'

  .field private static literal string m_appKey = "1unnzwkb8igx70k"
  .field private static literal string m_appSecret = "3i5u3j3141php7u"
  .field private static literal string m_redirectUri = "com.candyrufusgames.survivalcraft2://redirect"
  .field private class Game.DropboxExternalContentProvider/LoginProcessData m_loginProcessData
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldftn      instance void Game.DropboxExternalContentProvider::HandleUri(class [System.Runtime]System.Uri)
    IL_000d:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Uri>::.ctor(object,
                                                                                                                      native int)
    IL_0012:  call       void [Engine]Engine.Window::add_HandleUri(class [System.Runtime]System.Action`1<class [System.Runtime]System.Uri>)
    IL_0017:  ldarg.0
    IL_0018:  ldftn      instance void Game.DropboxExternalContentProvider::WindowActivated()
    IL_001e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0023:  call       void [Engine]Engine.Window::add_Activated(class [System.Runtime]System.Action)
    IL_0028:  ret
  } // end of method DropboxExternalContentProvider::.ctor

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.DropboxExternalContentProvider::HandleUri(class [System.Runtime]System.Uri)
    IL_0007:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Uri>::.ctor(object,
                                                                                                                      native int)
    IL_000c:  call       void [Engine]Engine.Window::remove_HandleUri(class [System.Runtime]System.Action`1<class [System.Runtime]System.Uri>)
    IL_0011:  ldarg.0
    IL_0012:  ldftn      instance void Game.DropboxExternalContentProvider::WindowActivated()
    IL_0018:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_001d:  call       void [Engine]Engine.Window::remove_Activated(class [System.Runtime]System.Action)
    IL_0022:  ret
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
          instance bool  get_SupportsListing() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method DropboxExternalContentProvider::get_SupportsListing

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
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  call       string Game.SettingsManager::get_DropboxAccessToken()
    IL_0005:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  ret
  } // end of method DropboxExternalContentProvider::get_IsLoggedIn

  .method public hidebysig newslot virtual final 
          instance void  Login(class Game.CancellableProgress progress,
                               class [System.Runtime]System.Action success,
                               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       129 (0x81)
    .maxstack  3
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0006:  brtrue.s   IL_0069

      IL_0008:  call       bool Game.WebManager::IsInternetConnectionAvailable()
      IL_000d:  brtrue.s   IL_001a

      IL_000f:  ldstr      "Internet connection is unavailable."
      IL_0014:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0019:  throw

      IL_001a:  ldarg.0
      IL_001b:  call       instance void Game.DropboxExternalContentProvider::Logout()
      IL_0020:  ldarg.1
      IL_0021:  ldarg.0
      IL_0022:  ldftn      instance void Game.DropboxExternalContentProvider::'<Login>b__17_0'()
      IL_0028:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_002d:  callvirt   instance void Game.CancellableProgress::add_Cancelled(class [System.Runtime]System.Action)
      IL_0032:  ldarg.0
      IL_0033:  newobj     instance void Game.DropboxExternalContentProvider/LoginProcessData::.ctor()
      IL_0038:  stfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_003d:  ldarg.0
      IL_003e:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0043:  ldarg.1
      IL_0044:  stfld      class Game.CancellableProgress Game.DropboxExternalContentProvider/LoginProcessData::Progress
      IL_0049:  ldarg.0
      IL_004a:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_004f:  ldarg.2
      IL_0050:  stfld      class [System.Runtime]System.Action Game.DropboxExternalContentProvider/LoginProcessData::Success
      IL_0055:  ldarg.0
      IL_0056:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_005b:  ldarg.3
      IL_005c:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/LoginProcessData::Failure
      IL_0061:  ldarg.0
      IL_0062:  call       instance void Game.DropboxExternalContentProvider::LoginLaunchBrowser()
      IL_0067:  br.s       IL_0074

      IL_0069:  ldstr      "Login already in progress."
      IL_006e:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0073:  throw

      IL_0074:  leave.s    IL_0080

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0076:  stloc.0
      IL_0077:  ldarg.3
      IL_0078:  ldloc.0
      IL_0079:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_007e:  leave.s    IL_0080

    }  // end handler
    IL_0080:  ret
  } // end of method DropboxExternalContentProvider::Login

  .method public hidebysig newslot virtual final 
          instance void  Logout() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0005:  call       void Game.SettingsManager::set_DropboxAccessToken(string)
    IL_000a:  ret
  } // end of method DropboxExternalContentProvider::Logout

  .method public hidebysig newslot virtual final 
          instance void  List(string path,
                              class Game.CancellableProgress progress,
                              class [System.Runtime]System.Action`1<class Game.ExternalContentEntry> success,
                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       246 (0xf6)
    .maxstack  8
    .locals init (class Game.DropboxExternalContentProvider/'<>c__DisplayClass19_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             class SimpleJson.JsonObject V_2,
             class [System.IO]System.IO.MemoryStream V_3,
             class [System.Runtime]System.Exception V_4)
    IL_0000:  newobj     instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass19_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      class [System.Runtime]System.Action`1<class Game.ExternalContentEntry> Game.DropboxExternalContentProvider/'<>c__DisplayClass19_0'::success
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    failure
    IL_0010:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass19_0'::failure
    .try
    {
      IL_0015:  ldarg.0
      IL_0016:  call       instance void Game.DropboxExternalContentProvider::VerifyLoggedIn()
      IL_001b:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0020:  stloc.1
      IL_0021:  ldloc.1
      IL_0022:  ldstr      "Authorization"
      IL_0027:  ldstr      "Bearer "
      IL_002c:  call       string Game.SettingsManager::get_DropboxAccessToken()
      IL_0031:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0036:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_003b:  ldloc.1
      IL_003c:  ldstr      "Content-Type"
      IL_0041:  ldstr      "application/json"
      IL_0046:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_004b:  newobj     instance void SimpleJson.JsonObject::.ctor()
      IL_0050:  stloc.2
      IL_0051:  ldloc.2
      IL_0052:  ldstr      "path"
      IL_0057:  ldarg.1
      IL_0058:  call       string Game.DropboxExternalContentProvider::NormalizePath(string)
      IL_005d:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0062:  ldloc.2
      IL_0063:  ldstr      "recursive"
      IL_0068:  ldc.i4.0
      IL_0069:  box        [System.Runtime]System.Boolean
      IL_006e:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0073:  ldloc.2
      IL_0074:  ldstr      "include_media_info"
      IL_0079:  ldc.i4.0
      IL_007a:  box        [System.Runtime]System.Boolean
      IL_007f:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0084:  ldloc.2
      IL_0085:  ldstr      "include_deleted"
      IL_008a:  ldc.i4.0
      IL_008b:  box        [System.Runtime]System.Boolean
      IL_0090:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0095:  ldloc.2
      IL_0096:  ldstr      "include_has_explicit_shared_members"
      IL_009b:  ldc.i4.0
      IL_009c:  box        [System.Runtime]System.Boolean
      IL_00a1:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_00a6:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
      IL_00ab:  ldloc.2
      IL_00ac:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_00b1:  callvirt   instance uint8[] [System.Text.Encoding]System.Text.Encoding::GetBytes(string)
      IL_00b6:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(uint8[])
      IL_00bb:  stloc.3
      IL_00bc:  ldstr      "https://api.dropboxapi.com/2/files/list_folder"
      IL_00c1:  ldnull
      IL_00c2:  ldloc.1
      IL_00c3:  ldloc.3
      IL_00c4:  ldarg.2
      IL_00c5:  ldloc.0
      IL_00c6:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass19_0'::'<List>b__0'(uint8[])
      IL_00cc:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_00d1:  ldloc.0
      IL_00d2:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass19_0'::'<List>b__1'(class [System.Runtime]System.Exception)
      IL_00d8:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_00dd:  call       void Game.WebManager::Post(string,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.IO]System.IO.Stream,
                                                      class Game.CancellableProgress,
                                                      class [System.Runtime]System.Action`1<uint8[]>,
                                                      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_00e2:  leave.s    IL_00f5

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00e4:  stloc.s    V_4
      IL_00e6:  ldloc.0
      IL_00e7:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass19_0'::failure
      IL_00ec:  ldloc.s    V_4
      IL_00ee:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_00f3:  leave.s    IL_00f5

    }  // end handler
    IL_00f5:  ret
  } // end of method DropboxExternalContentProvider::List

  .method public hidebysig newslot virtual final 
          instance void  Download(string path,
                                  class Game.CancellableProgress progress,
                                  class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream> success,
                                  class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       154 (0x9a)
    .maxstack  7
    .locals init (class Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0' V_0,
             class SimpleJson.JsonObject V_1,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_2,
             class [System.Runtime]System.Exception V_3)
    IL_0000:  newobj     instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::success
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    failure
    IL_0010:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::failure
    .try
    {
      IL_0015:  ldarg.0
      IL_0016:  call       instance void Game.DropboxExternalContentProvider::VerifyLoggedIn()
      IL_001b:  newobj     instance void SimpleJson.JsonObject::.ctor()
      IL_0020:  stloc.1
      IL_0021:  ldloc.1
      IL_0022:  ldstr      "path"
      IL_0027:  ldarg.1
      IL_0028:  call       string Game.DropboxExternalContentProvider::NormalizePath(string)
      IL_002d:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0032:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0037:  stloc.2
      IL_0038:  ldloc.2
      IL_0039:  ldstr      "Authorization"
      IL_003e:  ldstr      "Bearer "
      IL_0043:  call       string Game.SettingsManager::get_DropboxAccessToken()
      IL_0048:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_004d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0052:  ldloc.2
      IL_0053:  ldstr      "Dropbox-API-Arg"
      IL_0058:  ldloc.1
      IL_0059:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_005e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0063:  ldstr      "https://content.dropboxapi.com/2/files/download"
      IL_0068:  ldnull
      IL_0069:  ldloc.2
      IL_006a:  ldarg.2
      IL_006b:  ldloc.0
      IL_006c:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::'<Download>b__0'(uint8[])
      IL_0072:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_0077:  ldloc.0
      IL_0078:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::'<Download>b__1'(class [System.Runtime]System.Exception)
      IL_007e:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0083:  call       void Game.WebManager::Get(string,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                     class Game.CancellableProgress,
                                                     class [System.Runtime]System.Action`1<uint8[]>,
                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0088:  leave.s    IL_0099

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_008a:  stloc.3
      IL_008b:  ldloc.0
      IL_008c:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass20_0'::failure
      IL_0091:  ldloc.3
      IL_0092:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_0097:  leave.s    IL_0099

    }  // end handler
    IL_0099:  ret
  } // end of method DropboxExternalContentProvider::Download

  .method public hidebysig newslot virtual final 
          instance void  Upload(string path,
                                class [System.IO]System.IO.Stream 'stream',
                                class Game.CancellableProgress progress,
                                class [System.Runtime]System.Action`1<string> success,
                                class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       222 (0xde)
    .maxstack  8
    .locals init (class Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0' V_0,
             class SimpleJson.JsonObject V_1,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_2,
             class [System.Runtime]System.Exception V_3)
    IL_0000:  newobj     instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.s    success
    IL_0009:  stfld      class [System.Runtime]System.Action`1<string> Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::success
    IL_000e:  ldloc.0
    IL_000f:  ldarg.s    failure
    IL_0011:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::failure
    .try
    {
      IL_0016:  ldarg.0
      IL_0017:  call       instance void Game.DropboxExternalContentProvider::VerifyLoggedIn()
      IL_001c:  newobj     instance void SimpleJson.JsonObject::.ctor()
      IL_0021:  stloc.1
      IL_0022:  ldloc.1
      IL_0023:  ldstr      "path"
      IL_0028:  ldarg.1
      IL_0029:  call       string Game.DropboxExternalContentProvider::NormalizePath(string)
      IL_002e:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0033:  ldloc.1
      IL_0034:  ldstr      "mode"
      IL_0039:  ldstr      "add"
      IL_003e:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0043:  ldloc.1
      IL_0044:  ldstr      "autorename"
      IL_0049:  ldc.i4.1
      IL_004a:  box        [System.Runtime]System.Boolean
      IL_004f:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0054:  ldloc.1
      IL_0055:  ldstr      "mute"
      IL_005a:  ldc.i4.0
      IL_005b:  box        [System.Runtime]System.Boolean
      IL_0060:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0065:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_006a:  stloc.2
      IL_006b:  ldloc.2
      IL_006c:  ldstr      "Authorization"
      IL_0071:  ldstr      "Bearer "
      IL_0076:  call       string Game.SettingsManager::get_DropboxAccessToken()
      IL_007b:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0080:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0085:  ldloc.2
      IL_0086:  ldstr      "Content-Type"
      IL_008b:  ldstr      "application/octet-stream"
      IL_0090:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0095:  ldloc.2
      IL_0096:  ldstr      "Dropbox-API-Arg"
      IL_009b:  ldloc.1
      IL_009c:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_00a1:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_00a6:  ldstr      "https://content.dropboxapi.com/2/files/upload"
      IL_00ab:  ldnull
      IL_00ac:  ldloc.2
      IL_00ad:  ldarg.2
      IL_00ae:  ldarg.3
      IL_00af:  ldloc.0
      IL_00b0:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::'<Upload>b__0'(uint8[])
      IL_00b6:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_00bb:  ldloc.0
      IL_00bc:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::'<Upload>b__1'(class [System.Runtime]System.Exception)
      IL_00c2:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_00c7:  call       void Game.WebManager::Post(string,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.IO]System.IO.Stream,
                                                      class Game.CancellableProgress,
                                                      class [System.Runtime]System.Action`1<uint8[]>,
                                                      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_00cc:  leave.s    IL_00dd

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00ce:  stloc.3
      IL_00cf:  ldloc.0
      IL_00d0:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass21_0'::failure
      IL_00d5:  ldloc.3
      IL_00d6:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_00db:  leave.s    IL_00dd

    }  // end handler
    IL_00dd:  ret
  } // end of method DropboxExternalContentProvider::Upload

  .method public hidebysig newslot virtual final 
          instance void  Link(string path,
                              class Game.CancellableProgress progress,
                              class [System.Runtime]System.Action`1<string> success,
                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       195 (0xc3)
    .maxstack  8
    .locals init (class Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             class SimpleJson.JsonObject V_2,
             class [System.IO]System.IO.MemoryStream V_3,
             class [System.Runtime]System.Exception V_4)
    IL_0000:  newobj     instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      class [System.Runtime]System.Action`1<string> Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::success
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    failure
    IL_0010:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::failure
    .try
    {
      IL_0015:  ldarg.0
      IL_0016:  call       instance void Game.DropboxExternalContentProvider::VerifyLoggedIn()
      IL_001b:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0020:  stloc.1
      IL_0021:  ldloc.1
      IL_0022:  ldstr      "Authorization"
      IL_0027:  ldstr      "Bearer "
      IL_002c:  call       string Game.SettingsManager::get_DropboxAccessToken()
      IL_0031:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0036:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_003b:  ldloc.1
      IL_003c:  ldstr      "Content-Type"
      IL_0041:  ldstr      "application/json"
      IL_0046:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_004b:  newobj     instance void SimpleJson.JsonObject::.ctor()
      IL_0050:  stloc.2
      IL_0051:  ldloc.2
      IL_0052:  ldstr      "path"
      IL_0057:  ldarg.1
      IL_0058:  call       string Game.DropboxExternalContentProvider::NormalizePath(string)
      IL_005d:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0062:  ldloc.2
      IL_0063:  ldstr      "short_url"
      IL_0068:  ldc.i4.0
      IL_0069:  box        [System.Runtime]System.Boolean
      IL_006e:  callvirt   instance void SimpleJson.JsonObject::Add(string,
                                                                    object)
      IL_0073:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
      IL_0078:  ldloc.2
      IL_0079:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_007e:  callvirt   instance uint8[] [System.Text.Encoding]System.Text.Encoding::GetBytes(string)
      IL_0083:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(uint8[])
      IL_0088:  stloc.3
      IL_0089:  ldstr      "https://api.dropboxapi.com/2/sharing/create_shared"
      + "_link"
      IL_008e:  ldnull
      IL_008f:  ldloc.1
      IL_0090:  ldloc.3
      IL_0091:  ldarg.2
      IL_0092:  ldloc.0
      IL_0093:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::'<Link>b__0'(uint8[])
      IL_0099:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_009e:  ldloc.0
      IL_009f:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::'<Link>b__1'(class [System.Runtime]System.Exception)
      IL_00a5:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_00aa:  call       void Game.WebManager::Post(string,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.IO]System.IO.Stream,
                                                      class Game.CancellableProgress,
                                                      class [System.Runtime]System.Action`1<uint8[]>,
                                                      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_00af:  leave.s    IL_00c2

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00b1:  stloc.s    V_4
      IL_00b3:  ldloc.0
      IL_00b4:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.DropboxExternalContentProvider/'<>c__DisplayClass22_0'::failure
      IL_00b9:  ldloc.s    V_4
      IL_00bb:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_00c0:  leave.s    IL_00c2

    }  // end handler
    IL_00c2:  ret
  } // end of method DropboxExternalContentProvider::Link

  .method private hidebysig instance void 
          LoginLaunchBrowser() cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_0,
             class [System.Runtime]System.Exception V_1)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0006:  ldc.i4.1
      IL_0007:  stfld      bool Game.DropboxExternalContentProvider/LoginProcessData::IsTokenFlow
      IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0011:  stloc.0
      IL_0012:  ldloc.0
      IL_0013:  ldstr      "response_type"
      IL_0018:  ldstr      "token"
      IL_001d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0022:  ldloc.0
      IL_0023:  ldstr      "client_id"
      IL_0028:  ldstr      "1unnzwkb8igx70k"
      IL_002d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0032:  ldloc.0
      IL_0033:  ldstr      "redirect_uri"
      IL_0038:  ldstr      "com.candyrufusgames.survivalcraft2://redirect"
      IL_003d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0042:  ldstr      "https://www.dropbox.com/oauth2/authorize\?"
      IL_0047:  ldloc.0
      IL_0048:  call       string Game.WebManager::UrlParametersToString(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
      IL_004d:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0052:  call       void Game.WebBrowserManager::LaunchBrowser(string)
      IL_0057:  leave.s    IL_0069

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0059:  stloc.1
      IL_005a:  ldarg.0
      IL_005b:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
      IL_0060:  ldarg.0
      IL_0061:  ldloc.1
      IL_0062:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                    class [System.Runtime]System.Exception)
      IL_0067:  leave.s    IL_0069

    }  // end handler
    IL_0069:  ret
  } // end of method DropboxExternalContentProvider::LoginLaunchBrowser

  .method private hidebysig instance void 
          WindowActivated() cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  5
    .locals init (class Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0' V_0,
             class Game.TextBoxDialog V_1)
    IL_0000:  newobj     instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.DropboxExternalContentProvider Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<>4__this'
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_0013:  brtrue.s   IL_0016

    IL_0015:  ret

    IL_0016:  ldloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_001d:  stfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::loginProcessData
    IL_0022:  ldarg.0
    IL_0023:  ldnull
    IL_0024:  stfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_0029:  ldloc.0
    IL_002a:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::loginProcessData
    IL_002f:  ldfld      bool Game.DropboxExternalContentProvider/LoginProcessData::IsTokenFlow
    IL_0034:  brtrue.s   IL_005e

    IL_0036:  ldstr      "Enter Dropbox authorization code"
    IL_003b:  ldstr      ""
    IL_0040:  ldc.i4     0x100
    IL_0045:  ldloc.0
    IL_0046:  ldftn      instance void Game.DropboxExternalContentProvider/'<>c__DisplayClass24_0'::'<WindowActivated>b__0'(string)
    IL_004c:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0051:  newobj     instance void Game.TextBoxDialog::.ctor(string,
                                                                 string,
                                                                 int32,
                                                                 class [System.Runtime]System.Action`1<string>)
    IL_0056:  stloc.1
    IL_0057:  ldnull
    IL_0058:  ldloc.1
    IL_0059:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_005e:  ret
  } // end of method DropboxExternalContentProvider::WindowActivated

  .method private hidebysig instance void 
          HandleUri(class [System.Runtime]System.Uri uri) cil managed
  {
    // 代码大小       175 (0xaf)
    .maxstack  5
    .locals init (class Game.DropboxExternalContentProvider/LoginProcessData V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_000f:  stloc.0
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_0017:  ldloc.0
    IL_0018:  ldfld      bool Game.DropboxExternalContentProvider/LoginProcessData::IsTokenFlow
    IL_001d:  brfalse    IL_00ae

    .try
    {
      IL_0022:  ldarg.1
      IL_0023:  ldnull
      IL_0024:  call       bool [System.Runtime]System.Uri::op_Inequality(class [System.Runtime]System.Uri,
                                                                          class [System.Runtime]System.Uri)
      IL_0029:  brfalse.s  IL_0098

      IL_002b:  ldarg.1
      IL_002c:  callvirt   instance string [System.Runtime]System.Uri::get_Fragment()
      IL_0031:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0036:  brtrue.s   IL_0098

      IL_0038:  ldarg.1
      IL_0039:  callvirt   instance string [System.Runtime]System.Uri::get_Fragment()
      IL_003e:  ldc.i4.1
      IL_003f:  newarr     [System.Runtime]System.Char
      IL_0044:  dup
      IL_0045:  ldc.i4.0
      IL_0046:  ldc.i4.s   35
      IL_0048:  stelem.i2
      IL_0049:  callvirt   instance string [System.Runtime]System.String::TrimStart(char[])
      IL_004e:  call       class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.WebManager::UrlParametersFromString(string)
      IL_0053:  stloc.1
      IL_0054:  ldloc.1
      IL_0055:  ldstr      "access_token"
      IL_005a:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::ContainsKey(!0)
      IL_005f:  brfalse.s  IL_007a

      IL_0061:  ldloc.1
      IL_0062:  ldstr      "access_token"
      IL_0067:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Item(!0)
      IL_006c:  call       void Game.SettingsManager::set_DropboxAccessToken(string)
      IL_0071:  ldloc.0
      IL_0072:  ldarg.0
      IL_0073:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Succeed(class Game.DropboxExternalContentProvider)
      IL_0078:  leave.s    IL_00ae

      IL_007a:  ldloc.1
      IL_007b:  ldstr      "error"
      IL_0080:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::ContainsKey(!0)
      IL_0085:  brfalse.s  IL_0098

      IL_0087:  ldloc.1
      IL_0088:  ldstr      "error"
      IL_008d:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::get_Item(!0)
      IL_0092:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
      IL_0097:  throw

      IL_0098:  ldstr      "Could not retrieve Dropbox access token."
      IL_009d:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
      IL_00a2:  throw

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00a3:  stloc.2
      IL_00a4:  ldloc.0
      IL_00a5:  ldarg.0
      IL_00a6:  ldloc.2
      IL_00a7:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                    class [System.Runtime]System.Exception)
      IL_00ac:  leave.s    IL_00ae

    }  // end handler
    IL_00ae:  ret
  } // end of method DropboxExternalContentProvider::HandleUri

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
    // 代码大小       292 (0x124)
    .maxstack  4
    .locals init (class Game.ExternalContentEntry V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<object> V_1,
             class SimpleJson.JsonObject V_2,
             class Game.ExternalContentEntry V_3)
    IL_0000:  newobj     instance void Game.ExternalContentEntry::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldstr      "entries"
    IL_000c:  callvirt   instance bool SimpleJson.JsonObject::ContainsKey(string)
    IL_0011:  brfalse    IL_0122

    IL_0016:  ldarg.0
    IL_0017:  ldstr      "entries"
    IL_001c:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
    IL_0021:  castclass  SimpleJson.JsonArray
    IL_0026:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<object>::GetEnumerator()
    IL_002b:  stloc.1
    .try
    {
      IL_002c:  br         IL_0106

      IL_0031:  ldloca.s   V_1
      IL_0033:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<object>::get_Current()
      IL_0038:  castclass  SimpleJson.JsonObject
      IL_003d:  stloc.2
      IL_003e:  newobj     instance void Game.ExternalContentEntry::.ctor()
      IL_0043:  stloc.3
      IL_0044:  ldloc.3
      IL_0045:  ldloc.2
      IL_0046:  ldstr      "path_display"
      IL_004b:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
      IL_0050:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0055:  stfld      string Game.ExternalContentEntry::Path
      IL_005a:  ldloc.3
      IL_005b:  ldloc.2
      IL_005c:  ldstr      ".tag"
      IL_0061:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
      IL_0066:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_006b:  ldstr      "folder"
      IL_0070:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0075:  brtrue.s   IL_0089

      IL_0077:  ldloc.3
      IL_0078:  ldfld      string Game.ExternalContentEntry::Path
      IL_007d:  call       string [Engine]Engine.Storage::GetExtension(string)
      IL_0082:  call       valuetype Game.ExternalContentType Game.ExternalContentManager::ExtensionToType(string)
      IL_0087:  br.s       IL_008a

      IL_0089:  ldc.i4.1
      IL_008a:  stfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
      IL_008f:  ldloc.3
      IL_0090:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
      IL_0095:  ldc.i4.1
      IL_0096:  beq.s      IL_00fa

      IL_0098:  ldloc.3
      IL_0099:  ldloc.2
      IL_009a:  ldstr      "server_modified"
      IL_009f:  callvirt   instance bool SimpleJson.JsonObject::ContainsKey(string)
      IL_00a4:  brtrue.s   IL_00b4

      IL_00a6:  ldc.i4     0x7d0
      IL_00ab:  ldc.i4.1
      IL_00ac:  ldc.i4.1
      IL_00ad:  newobj     instance void [System.Runtime]System.DateTime::.ctor(int32,
                                                                                int32,
                                                                                int32)
      IL_00b2:  br.s       IL_00ce

      IL_00b4:  ldloc.2
      IL_00b5:  ldstr      "server_modified"
      IL_00ba:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
      IL_00bf:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_00c4:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_00c9:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::Parse(string,
                                                                                                            class [System.Runtime]System.IFormatProvider)
      IL_00ce:  stfld      valuetype [System.Runtime]System.DateTime Game.ExternalContentEntry::Time
      IL_00d3:  ldloc.3
      IL_00d4:  ldloc.2
      IL_00d5:  ldstr      "size"
      IL_00da:  callvirt   instance bool SimpleJson.JsonObject::ContainsKey(string)
      IL_00df:  brtrue.s   IL_00e5

      IL_00e1:  ldc.i4.0
      IL_00e2:  conv.i8
      IL_00e3:  br.s       IL_00f5

      IL_00e5:  ldloc.2
      IL_00e6:  ldstr      "size"
      IL_00eb:  callvirt   instance object SimpleJson.JsonObject::get_Item(string)
      IL_00f0:  unbox.any  [System.Runtime]System.Int64
      IL_00f5:  stfld      int64 Game.ExternalContentEntry::Size
      IL_00fa:  ldloc.0
      IL_00fb:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry> Game.ExternalContentEntry::ChildEntries
      IL_0100:  ldloc.3
      IL_0101:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry>::Add(!0)
      IL_0106:  ldloca.s   V_1
      IL_0108:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<object>::MoveNext()
      IL_010d:  brtrue     IL_0031

      IL_0112:  leave.s    IL_0122

    }  // end .try
    finally
    {
      IL_0114:  ldloca.s   V_1
      IL_0116:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<object>
      IL_011c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0121:  endfinally
    }  // end handler
    IL_0122:  ldloc.0
    IL_0123:  ret
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
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "/"
    IL_0006:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_000b:  brfalse.s  IL_0013

    IL_000d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0019:  ldc.i4.0
    IL_001a:  ble.s      IL_0033

    IL_001c:  ldarg.0
    IL_001d:  ldc.i4.0
    IL_001e:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0023:  ldc.i4.s   47
    IL_0025:  beq.s      IL_0033

    IL_0027:  ldstr      "/"
    IL_002c:  ldarg.0
    IL_002d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0032:  ret

    IL_0033:  ldarg.0
    IL_0034:  ret
  } // end of method DropboxExternalContentProvider::NormalizePath

  .method private hidebysig instance void 
          '<Login>b__17_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_0006:  brfalse.s  IL_001c

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_000e:  ldarg.0
    IL_000f:  ldnull
    IL_0010:  stfld      class Game.DropboxExternalContentProvider/LoginProcessData Game.DropboxExternalContentProvider::m_loginProcessData
    IL_0015:  ldarg.0
    IL_0016:  ldnull
    IL_0017:  callvirt   instance void Game.DropboxExternalContentProvider/LoginProcessData::Fail(class Game.DropboxExternalContentProvider,
                                                                                                  class [System.Runtime]System.Exception)
    IL_001c:  ret
  } // end of method DropboxExternalContentProvider::'<Login>b__17_0'

  .property instance string DisplayName()
  {
    .get instance string Game.DropboxExternalContentProvider::get_DisplayName()
  } // end of property DropboxExternalContentProvider::DisplayName
  .property instance bool SupportsListing()
  {
    .get instance bool Game.DropboxExternalContentProvider::get_SupportsListing()
  } // end of property DropboxExternalContentProvider::SupportsListing
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