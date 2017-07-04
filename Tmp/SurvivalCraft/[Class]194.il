.class public auto ansi beforefieldinit Game.KelpBlock
       extends Game.WaterPlantBlock
{
  .field public static literal int32 Index = int32(0x000000E8)
  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  bge.s      IL_0007

    IL_0004:  ldc.i4.s   104
    IL_0006:  ret

    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  call       instance int32 Game.FluidBlock::GetFaceTextureSlot(int32,
                                                                            int32)
    IL_000f:  ret
  } // end of method KelpBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  9
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldarg.s    size
    IL_0004:  ldarg.s    matrix
    IL_0006:  ldnull
    IL_0007:  ldarg.3
    IL_0008:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::KelpColorsMap
    IL_000d:  ldarg.s    environmentData
    IL_000f:  ldfld      int32 Game.DrawBlockEnvironmentData::Temperature
    IL_0014:  ldarg.s    environmentData
    IL_0016:  ldfld      int32 Game.DrawBlockEnvironmentData::Humidity
    IL_001b:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_0020:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0025:  ldc.i4.0
    IL_0026:  ldarg.s    environmentData
    IL_0028:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                bool,
                                                                class Game.DrawBlockEnvironmentData)
    IL_002d:  ret
  } // end of method KelpBlock::DrawBlock

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  10
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::KelpColorsMap
    IL_0005:  ldarg.1
    IL_0006:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_000b:  ldarg.s    x
    IL_000d:  ldarg.s    z
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_0014:  stloc.0
    IL_0015:  ldarg.1
    IL_0016:  ldarg.0
    IL_0017:  ldarg.3
    IL_0018:  ldarg.s    x
    IL_001a:  ldarg.s    y
    IL_001c:  ldarg.s    z
    IL_001e:  ldloc.0
    IL_001f:  ldarg.0
    IL_0020:  ldc.i4.m1
    IL_0021:  ldarg.3
    IL_0022:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0027:  ldarg.2
    IL_0028:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_002d:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCrossfaceVertices(class Game.Block,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              int32,
                                                                                              class Game.TerrainGeometrySubset)
    IL_0032:  ldarg.0
    IL_0033:  ldarg.1
    IL_0034:  ldarg.2
    IL_0035:  ldarg.3
    IL_0036:  ldarg.s    x
    IL_0038:  ldarg.s    y
    IL_003a:  ldarg.s    z
    IL_003c:  call       instance void Game.WaterBlock::GenerateTerrainVertices(class Game.BlockGeometryGenerator,
                                                                                class Game.TerrainGeometrySubsets,
                                                                                int32,
                                                                                int32,
                                                                                int32,
                                                                                int32)
    IL_0041:  ret
  } // end of method KelpBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldc.r4     0.75
    IL_0007:  ldarg.s    strength
    IL_0009:  mul
    IL_000a:  ldarg.0
    IL_000b:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0010:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::KelpColorsMap
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_001b:  ldarg.2
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0021:  call       int32 Game.Terrain::ToCell(float32)
    IL_0026:  ldarg.2
    IL_0027:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_002c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0031:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_0036:  ldc.i4.s   104
    IL_0038:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_003d:  ret
  } // end of method KelpBlock::CreateDebrisParticleSystem

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.WaterPlantBlock::.ctor()
    IL_0006:  ret
  } // end of method KelpBlock::.ctor

} // end of class Game.KelpBlock