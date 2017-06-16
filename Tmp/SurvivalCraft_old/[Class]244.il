.class public auto ansi beforefieldinit Game.IronLadderBlock
       extends Game.LadderBlock
{
  .field public static literal int32 Index = int32(0x000000D5)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/IronLadder"
    IL_0006:  ldc.r4     9.375e-002
    IL_000b:  call       instance void Game.LadderBlock::.ctor(string,
                                                               float32)
    IL_0010:  ret
  } // end of method IronLadderBlock::.ctor

} // end of class Game.IronLadderBlock