.class public auto ansi beforefieldinit Game.TallSpruceLeavesBlock
       extends Game.LeavesBlock
{
  .field public static literal int32 Index = int32(0x000000E1)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::TallSpruceLeavesColorsMap
    IL_0006:  call       instance void Game.LeavesBlock::.ctor(class Game.BlockColorsMap)
    IL_000b:  ret
  } // end of method TallSpruceLeavesBlock::.ctor

} // end of class Game.TallSpruceLeavesBlock