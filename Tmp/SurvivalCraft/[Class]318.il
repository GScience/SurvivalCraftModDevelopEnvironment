.class public auto ansi beforefieldinit Game.CookedBirdBlock
       extends Game.FoodBlock
{
  .field public static literal int32 Index = int32(0x0000004E)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/Bird"
    IL_0006:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_000b:  ldc.i4     0x96
    IL_0010:  ldc.i4.s   69
    IL_0012:  ldc.i4.s   15
    IL_0014:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0019:  ldc.i4     0xef
    IL_001e:  call       instance void Game.FoodBlock::.ctor(string,
                                                             valuetype [Engine]Engine.Matrix,
                                                             valuetype [Engine]Engine.Color,
                                                             int32)
    IL_0023:  ret
  } // end of method CookedBirdBlock::.ctor

} // end of class Game.CookedBirdBlock