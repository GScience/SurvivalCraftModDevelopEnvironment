.class public auto ansi beforefieldinit Game.GunpowderBlock
       extends Game.ChunkBlock
{
  .field public static literal int32 Index = int32(0x0000006D)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       103 (0x67)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.75
    IL_0006:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_000b:  ldc.r4     4.
    IL_0010:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0015:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_001a:  ldc.r4     3.
    IL_001f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0024:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0029:  ldc.r4     1.
    IL_002e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0033:  ldc.r4     6.25e-002
    IL_0038:  ldc.r4     0.875
    IL_003d:  ldc.r4     0.0
    IL_0042:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0047:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_004c:  ldc.i4     0xff
    IL_0051:  ldc.i4     0xff
    IL_0056:  ldc.i4     0xff
    IL_005b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0060:  ldc.i4.0
    IL_0061:  call       instance void Game.ChunkBlock::.ctor(valuetype [Engine]Engine.Matrix,
                                                              valuetype [Engine]Engine.Matrix,
                                                              valuetype [Engine]Engine.Color,
                                                              bool)
    IL_0066:  ret
  } // end of method GunpowderBlock::.ctor

} // end of class Game.GunpowderBlock