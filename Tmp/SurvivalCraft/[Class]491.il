.class public auto ansi beforefieldinit Game.UserInfo
       extends [System.Runtime]System.Object
{
  .field public initonly string UniqueId
  .field public initonly string DisplayName
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string uniqueId,
                               string displayName) cil managed
  {
    // ด๚ย๋ด๓ะก       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      string Game.UserInfo::UniqueId
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      string Game.UserInfo::DisplayName
    IL_0014:  ret
  } // end of method UserInfo::.ctor

} // end of class Game.UserInfo