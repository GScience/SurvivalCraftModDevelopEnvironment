.class public abstract auto ansi sealed Game.UserManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass6_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string uniqueId
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
            '<GetUser>b__0'(class Game.UserInfo u) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.UserInfo::UniqueId
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.UserManager/'<>c__DisplayClass6_0'::uniqueId
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass6_0'::'<GetUser>b__0'

  } // end of class '<>c__DisplayClass6_0'

  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.UserInfo> m_users
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       112 (0x70)
    .maxstack  3
    .locals init (string V_0,
             string V_1,
             valuetype [System.Runtime]System.Guid V_2)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.UserInfo>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.UserInfo> Game.UserManager::m_users
    .try
    {
      IL_000a:  ldstr      "data:/UserId.dat"
      IL_000f:  stloc.1
      IL_0010:  ldloc.1
      IL_0011:  call       bool [Engine]Engine.Storage::FileExists(string)
      IL_0016:  brtrue.s   IL_0035

      IL_0018:  call       valuetype [System.Runtime]System.Guid [System.Runtime]System.Guid::NewGuid()
      IL_001d:  stloc.2
      IL_001e:  ldloca.s   V_2
      IL_0020:  constrained. [System.Runtime]System.Guid
      IL_0026:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_002b:  stloc.0
      IL_002c:  ldloc.1
      IL_002d:  ldloc.0
      IL_002e:  call       void [Engine]Engine.Storage::WriteAllText(string,
                                                                     string)
      IL_0033:  br.s       IL_003c

      IL_0035:  ldloc.1
      IL_0036:  call       string [Engine]Engine.Storage::ReadAllText(string)
      IL_003b:  stloc.0
      IL_003c:  leave.s    IL_0055

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_003e:  pop
      IL_003f:  call       valuetype [System.Runtime]System.Guid [System.Runtime]System.Guid::NewGuid()
      IL_0044:  stloc.2
      IL_0045:  ldloca.s   V_2
      IL_0047:  constrained. [System.Runtime]System.Guid
      IL_004d:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0052:  stloc.0
      IL_0053:  leave.s    IL_0055

    }  // end handler
    IL_0055:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.UserInfo> Game.UserManager::m_users
    IL_005a:  ldloc.0
    IL_005b:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0060:  ldstr      "Windows User"
    IL_0065:  newobj     instance void Game.UserInfo::.ctor(string,
                                                            string)
    IL_006a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.UserInfo>::Add(!0)
    IL_006f:  ret
  } // end of method UserManager::.cctor

  .method public hidebysig specialname static 
          class Game.UserInfo  get_ActiveUser() cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  call       string Game.SettingsManager::get_UserId()
    IL_0005:  call       class Game.UserInfo Game.UserManager::GetUser(string)
    IL_000a:  dup
    IL_000b:  brtrue.s   IL_0018

    IL_000d:  pop
    IL_000e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.UserInfo> Game.UserManager::GetUsers()
    IL_0013:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.UserInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0018:  ret
  } // end of method UserManager::get_ActiveUser

  .method public hidebysig specialname static 
          void  set_ActiveUser(class Game.UserInfo 'value') cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_000a

    IL_0003:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0008:  br.s       IL_0010

    IL_000a:  ldarg.0
    IL_000b:  ldfld      string Game.UserInfo::UniqueId
    IL_0010:  call       void Game.SettingsManager::set_UserId(string)
    IL_0015:  ret
  } // end of method UserManager::set_ActiveUser

  .method public hidebysig static class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.UserInfo> 
          GetUsers() cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.UserInfo> Game.UserManager::m_users
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.UserInfo>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000a:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.UserInfo>
    IL_000f:  ret
  } // end of method UserManager::GetUsers

  .method public hidebysig static class Game.UserInfo 
          GetUser(string uniqueId) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  3
    .locals init (class Game.UserManager/'<>c__DisplayClass6_0' V_0)
    IL_0000:  newobj     instance void Game.UserManager/'<>c__DisplayClass6_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      string Game.UserManager/'<>c__DisplayClass6_0'::uniqueId
    IL_000d:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.UserInfo> Game.UserManager::GetUsers()
    IL_0012:  ldloc.0
    IL_0013:  ldftn      instance bool Game.UserManager/'<>c__DisplayClass6_0'::'<GetUser>b__0'(class Game.UserInfo)
    IL_0019:  newobj     instance void class [System.Runtime]System.Func`2<class Game.UserInfo,bool>::.ctor(object,
                                                                                                            native int)
    IL_001e:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.UserInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                      class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0023:  ret
  } // end of method UserManager::GetUser

  .property class Game.UserInfo ActiveUser()
  {
    .get class Game.UserInfo Game.UserManager::get_ActiveUser()
    .set void Game.UserManager::set_ActiveUser(class Game.UserInfo)
  } // end of property UserManager::ActiveUser
} // end of class Game.UserManager