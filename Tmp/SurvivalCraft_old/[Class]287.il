.class public auto ansi beforefieldinit Game.WoodenAttachedSignBlock
       extends Game.AttachedSignBlock
{
  .field public static literal int32 Index = int32(0x00000062)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/WoodenSign"
    IL_0006:  ldc.i4.s   23
    IL_0008:  ldc.i4.s   97
    IL_000a:  call       instance void Game.AttachedSignBlock::.ctor(string,
                                                                     int32,
                                                                     int32)
    IL_000f:  ret
  } // end of method WoodenAttachedSignBlock::.ctor

} // end of class Game.WoodenAttachedSignBlock