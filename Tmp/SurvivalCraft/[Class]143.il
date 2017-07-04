.class public abstract auto ansi beforefieldinit Game.FlatBlock
       extends Game.Block
{
  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method FlatBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldarg.s    size
    IL_0004:  ldarg.s    matrix
    IL_0006:  ldnull
    IL_0007:  ldarg.3
    IL_0008:  ldc.i4.0
    IL_0009:  ldarg.s    environmentData
    IL_000b:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                bool,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0010:  ret
  } // end of method FlatBlock::DrawBlock

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Block::.ctor()
    IL_0006:  ret
  } // end of method FlatBlock::.ctor

} // end of class Game.FlatBlock