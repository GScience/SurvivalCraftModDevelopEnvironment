.class public auto ansi beforefieldinit Game.IronOreChunkBlock
       extends Game.ChunkBlock
{
  .field public static literal int32 Index = int32(0x000000F9)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       67 (0x43)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_000b:  ldc.r4     2.
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0015:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_001a:  ldc.r4     0.9375
    IL_001f:  ldc.r4     0.1875
    IL_0024:  ldc.r4     0.0
    IL_0029:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_002e:  ldc.i4     0x88
    IL_0033:  ldc.i4.s   74
    IL_0035:  ldc.i4.s   36
    IL_0037:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_003c:  ldc.i4.0
    IL_003d:  call       instance void Game.ChunkBlock::.ctor(valuetype [Engine]Engine.Matrix,
                                                              valuetype [Engine]Engine.Matrix,
                                                              valuetype [Engine]Engine.Color,
                                                              bool)
    IL_0042:  ret
  } // end of method IronOreChunkBlock::.ctor

} // end of class Game.IronOreChunkBlock