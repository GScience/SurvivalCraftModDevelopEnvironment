.class public auto ansi beforefieldinit Game.IronDoorBlock
       extends Game.DoorBlock
{
  .field public static literal int32 Index = int32(0x00000039)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/IronDoor"
    IL_0006:  ldc.r4     6.25e-002
    IL_000b:  call       instance void Game.DoorBlock::.ctor(string,
                                                             float32)
    IL_0010:  ret
  } // end of method IronDoorBlock::.ctor

} // end of class Game.IronDoorBlock