.class public auto ansi beforefieldinit Game.CookedFishBlock
       extends Game.FoodBlock
{
  .field public static literal int32 Index = int32(0x000000A2)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/Fish"
    IL_0006:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_000b:  ldc.i4     0xa0
    IL_0010:  ldc.i4.s   80
    IL_0012:  ldc.i4.s   40
    IL_0014:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0019:  ldc.i4     0xf1
    IL_001e:  call       instance void Game.FoodBlock::.ctor(string,
                                                             valuetype [Engine]Engine.Matrix,
                                                             valuetype [Engine]Engine.Color,
                                                             int32)
    IL_0023:  ret
  } // end of method CookedFishBlock::.ctor

} // end of class Game.CookedFishBlock