.class public auto ansi beforefieldinit Game.IronAttachedSignBlock
       extends Game.AttachedSignBlock
{
  .field public static literal int32 Index = int32(0x000000D3)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/IronSign"
    IL_0006:  ldc.i4.s   63
    IL_0008:  ldc.i4     0xd2
    IL_000d:  call       instance void Game.AttachedSignBlock::.ctor(string,
                                                                     int32,
                                                                     int32)
    IL_0012:  ret
  } // end of method IronAttachedSignBlock::.ctor

} // end of class Game.IronAttachedSignBlock