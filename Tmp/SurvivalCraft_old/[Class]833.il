.class private auto ansi beforefieldinit Game.MatrixUtils
       extends [System.Runtime]System.Object
{
  .method public hidebysig static valuetype [Engine]Engine.Matrix 
          CreateScaleTranslation(float32 sx,
                                 float32 sy,
                                 float32 tx,
                                 float32 ty) cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  16
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     0.0
    IL_0010:  ldc.r4     0.0
    IL_0015:  ldarg.1
    IL_0016:  ldc.r4     0.0
    IL_001b:  ldc.r4     0.0
    IL_0020:  ldc.r4     0.0
    IL_0025:  ldc.r4     0.0
    IL_002a:  ldc.r4     1.
    IL_002f:  ldc.r4     0.0
    IL_0034:  ldarg.2
    IL_0035:  ldarg.3
    IL_0036:  ldc.r4     0.0
    IL_003b:  ldc.r4     1.
    IL_0040:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_0045:  ret
  } // end of method MatrixUtils::CreateScaleTranslation

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method MatrixUtils::.ctor

} // end of class Game.MatrixUtils