.class public auto ansi beforefieldinit Game.GermaniumChunkBlock
       extends Game.ChunkBlock
{
  .field public static literal int32 Index = int32(0x00000095)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       73 (0x49)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     3.
    IL_0006:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_000b:  ldc.r4     2.
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0015:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_001a:  ldc.r4     0.875
    IL_001f:  ldc.r4     0.25
    IL_0024:  ldc.r4     0.0
    IL_0029:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_002e:  ldc.i4     0xff
    IL_0033:  ldc.i4     0xff
    IL_0038:  ldc.i4     0xff
    IL_003d:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0042:  ldc.i4.0
    IL_0043:  call       instance void Game.ChunkBlock::.ctor(valuetype [Engine]Engine.Matrix,
                                                              valuetype [Engine]Engine.Matrix,
                                                              valuetype [Engine]Engine.Color,
                                                              bool)
    IL_0048:  ret
  } // end of method GermaniumChunkBlock::.ctor

} // end of class Game.GermaniumChunkBlock