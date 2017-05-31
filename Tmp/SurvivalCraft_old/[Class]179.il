.class public auto ansi beforefieldinit Game.SeagrassBlock
       extends Game.WaterPlantBlock
{
  .field public static literal int32 Index = int32(0x000000E9)
  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  bge.s      IL_0007

    IL_0004:  ldc.i4.s   105
    IL_0006:  ret

    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  call       instance int32 Game.FluidBlock::GetFaceTextureSlot(int32,
                                                                            int32)
    IL_000f:  ret
  } // end of method SeagrassBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    matrix
    IL_0005:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::SeagrassColorsMap
    IL_000a:  ldarg.s    environmentData
    IL_000c:  ldfld      int32 Game.DrawBlockEnvironmentData::Temperature
    IL_0011:  ldarg.s    environmentData
    IL_0013:  ldfld      int32 Game.DrawBlockEnvironmentData::Humidity
    IL_0018:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_001d:  ldarg.s    environmentData
    IL_001f:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Color,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0024:  ret
  } // end of method SeagrassBlock::DrawBlock

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
    IL_0000:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::SeagrassColorsMap
    IL_0005:  ldarg.1
    IL_0006:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_000b:  ldarg.s    x
    IL_000d:  ldarg.s    z
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.TerrainData,
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
  } // end of method SeagrassBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain terrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldc.r4     0.75
    IL_0007:  ldarg.s    strength
    IL_0009:  mul
    IL_000a:  ldarg.0
    IL_000b:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0010:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::SeagrassColorsMap
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_001b:  ldarg.2
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0021:  conv.i4
    IL_0022:  ldarg.2
    IL_0023:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0028:  conv.i4
    IL_0029:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.TerrainData,
                                                                                             int32,
                                                                                             int32)
    IL_002e:  ldc.i4.s   104
    IL_0030:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0035:  ret
  } // end of method SeagrassBlock::CreateDebrisParticleSystem

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.WaterPlantBlock::.ctor()
    IL_0006:  ret
  } // end of method SeagrassBlock::.ctor

} // end of class Game.SeagrassBlock