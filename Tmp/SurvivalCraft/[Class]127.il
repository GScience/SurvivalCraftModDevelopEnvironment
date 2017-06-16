.class public abstract auto ansi beforefieldinit Game.AlphaTestCubeBlock
       extends Game.CubeBlock
{
  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    x
    IL_0005:  ldarg.s    y
    IL_0007:  ldarg.s    z
    IL_0009:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_000e:  ldarg.2
    IL_000f:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::AlphaTestSubsetsByFace
    IL_0014:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_0019:  ret
  } // end of method AlphaTestCubeBlock::GenerateTerrainVertices

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CubeBlock::.ctor()
    IL_0006:  ret
  } // end of method AlphaTestCubeBlock::.ctor

} // end of class Game.AlphaTestCubeBlock