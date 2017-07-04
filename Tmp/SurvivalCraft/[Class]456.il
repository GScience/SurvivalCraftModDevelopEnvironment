.class public auto ansi beforefieldinit Game.ExternalContentEntry
       extends [System.Runtime]System.Object
{
  .field public valuetype Game.ExternalContentType Type
  .field public string Path
  .field public int64 Size
  .field public valuetype [System.Runtime]System.DateTime Time
  .field public class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry> ChildEntries
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry> Game.ExternalContentEntry::ChildEntries
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ret
  } // end of method ExternalContentEntry::.ctor

} // end of class Game.ExternalContentEntry