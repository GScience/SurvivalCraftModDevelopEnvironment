.class public auto ansi beforefieldinit Game.SmallGunpowderKegBlock
       extends Game.GunpowderKegBlock
{
  .field public static literal int32 Index = int32(0x00000069)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/SmallGunpowderKeg"
    IL_0006:  ldc.i4.0
    IL_0007:  call       instance void Game.GunpowderKegBlock::.ctor(string,
                                                                     bool)
    IL_000c:  ret
  } // end of method SmallGunpowderKegBlock::.ctor

} // end of class Game.SmallGunpowderKegBlock