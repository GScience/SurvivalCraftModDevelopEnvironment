.class public auto ansi beforefieldinit Game.CraftingRecipe
       extends [System.Runtime]System.Object
{
  .field public static literal int32 MaxSize = int32(0x00000003)
  .field public int32 ResultValue
  .field public int32 ResultCount
  .field public int32 RemainsValue
  .field public int32 RemainsCount
  .field public float32 RequiredHeatLevel
  .field public string[] Ingredients
  .field public string Description
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   9
    IL_0003:  newarr     [System.Runtime]System.String
    IL_0008:  stfld      string[] Game.CraftingRecipe::Ingredients
    IL_000d:  ldarg.0
    IL_000e:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0013:  ret
  } // end of method CraftingRecipe::.ctor

} // end of class Game.CraftingRecipe