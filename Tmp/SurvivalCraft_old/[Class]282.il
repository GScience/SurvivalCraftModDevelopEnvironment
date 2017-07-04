.class public auto ansi beforefieldinit Game.IronFenceGateBlock
       extends Game.FenceGateBlock
{
  .field public static literal int32 Index = int32(0x000000C2)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       52 (0x34)
    .maxstack  10
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/IronFenceGate"
    IL_0006:  ldc.r4     4.4300001e-002
    IL_000b:  ldc.i4.1
    IL_000c:  ldc.i4.1
    IL_000d:  ldc.i4.s   58
    IL_000f:  ldc.i4     0xc0
    IL_0014:  ldc.i4     0xc0
    IL_0019:  ldc.i4     0xc0
    IL_001e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0023:  ldc.i4.s   80
    IL_0025:  ldc.i4.s   80
    IL_0027:  ldc.i4.s   80
    IL_0029:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_002e:  call       instance void Game.FenceGateBlock::.ctor(string,
                                                                  float32,
                                                                  bool,
                                                                  bool,
                                                                  int32,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_0033:  ret
  } // end of method IronFenceGateBlock::.ctor

} // end of class Game.IronFenceGateBlock