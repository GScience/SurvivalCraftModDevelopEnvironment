.class public auto ansi beforefieldinit Game.RottenMeatBlock
       extends Game.FoodBlock
{
  .field public static literal int32 Index = int32(0x000000F0)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/Meat"
    IL_0006:  ldc.r4     -6.25e-002
    IL_000b:  ldc.r4     0.0
    IL_0010:  ldc.r4     0.0
    IL_0015:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_001a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_001f:  ldc.i4     0xf0
    IL_0024:  call       instance void Game.FoodBlock::.ctor(string,
                                                             valuetype [Engine]Engine.Matrix,
                                                             valuetype [Engine]Engine.Color,
                                                             int32)
    IL_0029:  ret
  } // end of method RottenMeatBlock::.ctor

} // end of class Game.RottenMeatBlock