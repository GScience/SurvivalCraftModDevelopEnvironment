.class public auto ansi beforefieldinit Game.SpruceLeavesBlock
       extends Game.LeavesBlock
{
  .field public static literal int32 Index = int32(0x0000000E)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::SpruceLeavesColorsMap
    IL_0006:  call       instance void Game.LeavesBlock::.ctor(class Game.BlockColorsMap)
    IL_000b:  ret
  } // end of method SpruceLeavesBlock::.ctor

} // end of class Game.SpruceLeavesBlock