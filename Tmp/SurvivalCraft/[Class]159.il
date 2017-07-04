.class public auto ansi beforefieldinit Game.WaterBlock
       extends Game.FluidBlock
{
  .field public static literal int32 Index = int32(0x00000012)
  .field public static int32 MaxLevel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     int32 Game.WaterBlock::MaxLevel
    IL_0006:  call       instance void Game.FluidBlock::.ctor(int32)
    IL_000b:  ret
  } // end of method WaterBlock::.ctor

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Color V_0,
             valuetype [Engine]Engine.Color V_1)
    IL_0000:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::WaterColorsMap
    IL_0005:  ldarg.1
    IL_0006:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_000b:  ldarg.s    x
    IL_000d:  ldarg.s    z
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_0014:  dup
    IL_0015:  stloc.0
    IL_0016:  ldloca.s   V_0
    IL_0018:  ldc.i4     0xff
    IL_001d:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0022:  stloc.1
    IL_0023:  ldloca.s   V_1
    IL_0025:  ldc.i4.0
    IL_0026:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  ldarg.3
    IL_002e:  ldarg.s    x
    IL_0030:  ldarg.s    y
    IL_0032:  ldarg.s    z
    IL_0034:  ldloc.0
    IL_0035:  ldloc.1
    IL_0036:  ldarg.2
    IL_0037:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::TransparentSubsetsByFace
    IL_003c:  call       instance void Game.FluidBlock::GenerateFluidTerrainVertices(class Game.BlockGeometryGenerator,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Color,
                                                                                     valuetype [Engine]Engine.Color,
                                                                                     class Game.TerrainGeometrySubset[])
    IL_0041:  ret
  } // end of method WaterBlock::GenerateTerrainVertices

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.7
    IL_0001:  stsfld     int32 Game.WaterBlock::MaxLevel
    IL_0006:  ret
  } // end of method WaterBlock::.cctor

} // end of class Game.WaterBlock