.class public auto ansi beforefieldinit Game.BreadBlock
       extends Game.FoodBlock
{
  .field public static literal int32 Index = int32(0x000000B1)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/Bread"
    IL_0006:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_000b:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0010:  ldc.i4     0xf2
    IL_0015:  call       instance void Game.FoodBlock::.ctor(string,
                                                             valuetype [Engine]Engine.Matrix,
                                                             valuetype [Engine]Engine.Color,
                                                             int32)
    IL_001a:  ret
  } // end of method BreadBlock::.ctor

} // end of class Game.BreadBlock