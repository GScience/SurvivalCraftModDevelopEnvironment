.class public auto ansi beforefieldinit Game.DoughBlock
       extends Game.FoodBlock
{
  .field public static literal int32 Index = int32(0x000000B0)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       57 (0x39)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/Bread"
    IL_0006:  ldc.r4     0.5625
    IL_000b:  ldc.r4     -0.875
    IL_0010:  ldc.r4     0.0
    IL_0015:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_001a:  ldc.i4     0xf1
    IL_001f:  ldc.i4     0xe7
    IL_0024:  ldc.i4     0xd6
    IL_0029:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_002e:  ldc.i4     0xf7
    IL_0033:  call       instance void Game.FoodBlock::.ctor(string,
                                                             valuetype [Engine]Engine.Matrix,
                                                             valuetype [Engine]Engine.Color,
                                                             int32)
    IL_0038:  ret
  } // end of method DoughBlock::.ctor

} // end of class Game.DoughBlock