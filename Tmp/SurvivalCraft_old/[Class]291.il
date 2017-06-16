.class public auto ansi beforefieldinit Game.DoughBlock
       extends Game.FlatBlock
{
  .field public static literal int32 Index = int32(0x000000B0)
  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    matrix
    IL_0005:  ldc.i4     0xf8
    IL_000a:  ldc.i4     0xff
    IL_000f:  ldc.i4     0xe8
    IL_0014:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0019:  ldarg.s    environmentData
    IL_001b:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Color,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0020:  ret
  } // end of method DoughBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.FlatBlock::.ctor()
    IL_0006:  ret
  } // end of method DoughBlock::.ctor

} // end of class Game.DoughBlock