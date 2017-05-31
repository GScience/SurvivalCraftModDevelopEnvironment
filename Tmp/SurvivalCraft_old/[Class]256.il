.class public auto ansi beforefieldinit Game.WoodenFenceBlock
       extends Game.FenceBlock
{
  .field public static literal int32 Index = int32(0x0000005E)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/WoodenFence"
    IL_0006:  ldc.i4.0
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   23
    IL_000a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_000f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0014:  call       instance void Game.FenceBlock::.ctor(string,
                                                              bool,
                                                              bool,
                                                              int32,
                                                              valuetype [Engine]Engine.Color,
                                                              valuetype [Engine]Engine.Color)
    IL_0019:  ret
  } // end of method WoodenFenceBlock::.ctor

} // end of class Game.WoodenFenceBlock