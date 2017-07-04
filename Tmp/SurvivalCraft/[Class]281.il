.class public auto ansi beforefieldinit Game.WoodenFenceGateBlock
       extends Game.FenceGateBlock
{
  .field public static literal int32 Index = int32(0x000000A6)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/WoodenFenceGate"
    IL_0006:  ldc.r4     6.25e-002
    IL_000b:  ldc.i4.0
    IL_000c:  ldc.i4.0
    IL_000d:  ldc.i4.s   23
    IL_000f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0014:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0019:  call       instance void Game.FenceGateBlock::.ctor(string,
                                                                  float32,
                                                                  bool,
                                                                  bool,
                                                                  int32,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_001e:  ret
  } // end of method WoodenFenceGateBlock::.ctor

} // end of class Game.WoodenFenceGateBlock