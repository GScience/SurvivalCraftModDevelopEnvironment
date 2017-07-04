.class public auto ansi beforefieldinit Game.WorldInfo
       extends [System.Runtime]System.Object
{
  .field public string DirectoryName
  .field public int64 Size
  .field public valuetype [System.Runtime]System.DateTime LastSaveTime
  .field public string SerializationVersion
  .field public class Game.WorldSettings WorldSettings
  .field public class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerInfo> PlayerInfos
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       51 (0x33)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string Game.WorldInfo::DirectoryName
    IL_000b:  ldarg.0
    IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0011:  stfld      string Game.WorldInfo::SerializationVersion
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.WorldSettings::.ctor()
    IL_001c:  stfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerInfo>::.ctor()
    IL_0027:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerInfo> Game.WorldInfo::PlayerInfos
    IL_002c:  ldarg.0
    IL_002d:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0032:  ret
  } // end of method WorldInfo::.ctor

} // end of class Game.WorldInfo