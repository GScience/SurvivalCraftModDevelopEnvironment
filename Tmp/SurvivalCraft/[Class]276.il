.class public auto ansi beforefieldinit Game.IronFenceBlock
       extends Game.FenceBlock
{
  .field public static literal int32 Index = int32(0x000000C1)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       47 (0x2f)
    .maxstack  9
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/IronFence"
    IL_0006:  ldc.i4.1
    IL_0007:  ldc.i4.1
    IL_0008:  ldc.i4.s   58
    IL_000a:  ldc.i4     0xc0
    IL_000f:  ldc.i4     0xc0
    IL_0014:  ldc.i4     0xc0
    IL_0019:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_001e:  ldc.i4.s   80
    IL_0020:  ldc.i4.s   80
    IL_0022:  ldc.i4.s   80
    IL_0024:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0029:  call       instance void Game.FenceBlock::.ctor(string,
                                                              bool,
                                                              bool,
                                                              int32,
                                                              valuetype [Engine]Engine.Color,
                                                              valuetype [Engine]Engine.Color)
    IL_002e:  ret
  } // end of method IronFenceBlock::.ctor

} // end of class Game.IronFenceBlock