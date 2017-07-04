.class public auto ansi beforefieldinit Game.OakLeavesBlock
       extends Game.LeavesBlock
{
  .field public static literal int32 Index = int32(0x0000000C)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::OakLeavesColorsMap
    IL_0006:  call       instance void Game.LeavesBlock::.ctor(class Game.BlockColorsMap)
    IL_000b:  ret
  } // end of method OakLeavesBlock::.ctor

} // end of class Game.OakLeavesBlock