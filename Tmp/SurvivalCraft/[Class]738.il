.class public auto ansi beforefieldinit Game.PathfindingResult
       extends [System.Runtime]System.Object
{
  .field public bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) IsCompleted
  .field public bool IsInProgress
  .field public float32 PathCost
  .field public int32 PositionsChecked
  .field public class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Path
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.PathfindingResult::Path
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ret
  } // end of method PathfindingResult::.ctor

} // end of class Game.PathfindingResult