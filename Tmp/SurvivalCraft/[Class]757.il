.class public auto ansi beforefieldinit Game.SpawnChunk
       extends [System.Runtime]System.Object
{
  .field public valuetype [Engine]Engine.Point2 Point
  .field public bool IsSpawned
  .field public valuetype [System.Runtime]System.Nullable`1<float64> LastVisitedTime
  .field public class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> SpawnsData
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ret
  } // end of method SpawnChunk::.ctor

} // end of class Game.SpawnChunk