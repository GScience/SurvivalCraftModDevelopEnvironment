.class public auto ansi beforefieldinit Game.MagmaBlock
       extends Game.FluidBlock
{
  .field public static literal int32 Index = int32(0x0000005C)
  .field public static int32 MaxLevel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     int32 Game.MagmaBlock::MaxLevel
    IL_0006:  call       instance void Game.FluidBlock::.ctor(int32)
    IL_000b:  ret
  } // end of method MagmaBlock::.ctor

  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.FluidBlock::GetIsTop(int32)
    IL_000b:  brfalse.s  IL_0015

    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.5
    IL_000f:  ceq
    IL_0011:  ldc.i4.0
    IL_0012:  ceq
    IL_0014:  ret

    IL_0015:  ldc.i4.0
    IL_0016:  ret
  } // end of method MagmaBlock::IsFaceTransparent

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  9
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    x
    IL_0005:  ldarg.s    y
    IL_0007:  ldarg.s    z
    IL_0009:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_000e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0013:  ldarg.2
    IL_0014:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0019:  call       instance void Game.FluidBlock::GenerateFluidTerrainVertices(class Game.BlockGeometryGenerator,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Color,
                                                                                     valuetype [Engine]Engine.Color,
                                                                                     class Game.TerrainGeometrySubset[])
    IL_001e:  ret
  } // end of method MagmaBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance bool 
          ShouldAvoid(int32 'value') cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method MagmaBlock::ShouldAvoid

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.4
    IL_0001:  stsfld     int32 Game.MagmaBlock::MaxLevel
    IL_0006:  ret
  } // end of method MagmaBlock::.cctor

} // end of class Game.MagmaBlock