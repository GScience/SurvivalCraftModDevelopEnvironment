.class public auto ansi beforefieldinit Game.RawBirdBlock
       extends Game.FoodBlock
{
  .field public static literal int32 Index = int32(0x0000004D)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/Bird"
    IL_0006:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_000b:  ldc.i4     0xe0
    IL_0010:  ldc.i4     0xaa
    IL_0015:  ldc.i4     0xa4
    IL_001a:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_001f:  ldc.i4     0xef
    IL_0024:  call       instance void Game.FoodBlock::.ctor(string,
                                                             valuetype [Engine]Engine.Matrix,
                                                             valuetype [Engine]Engine.Color,
                                                             int32)
    IL_0029:  ret
  } // end of method RawBirdBlock::.ctor

} // end of class Game.RawBirdBlock