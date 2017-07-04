.class public abstract auto ansi beforefieldinit Game.LeavesBlock
       extends Game.AlphaTestCubeBlock
{
  .field private class Game.BlockColorsMap m_blockColorsMap
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.BlockColorsMap blockColorsMap) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.AlphaTestCubeBlock::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.BlockColorsMap Game.LeavesBlock::m_blockColorsMap
    IL_000d:  ret
  } // end of method LeavesBlock::.ctor

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BlockColorsMap Game.LeavesBlock::m_blockColorsMap
    IL_0006:  ldarg.1
    IL_0007:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_000c:  ldarg.s    x
    IL_000e:  ldarg.s    z
    IL_0010:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_0015:  stloc.0
    IL_0016:  ldarg.1
    IL_0017:  ldarg.0
    IL_0018:  ldarg.3
    IL_0019:  ldarg.s    x
    IL_001b:  ldarg.s    y
    IL_001d:  ldarg.s    z
    IL_001f:  ldloc.0
    IL_0020:  ldarg.2
    IL_0021:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::AlphaTestSubsetsByFace
    IL_0026:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_002b:  ret
  } // end of method LeavesBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  ldarg.3
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.BlockColorsMap Game.LeavesBlock::m_blockColorsMap
    IL_0007:  ldarg.s    environmentData
    IL_0009:  ldfld      int32 Game.DrawBlockEnvironmentData::Temperature
    IL_000e:  ldarg.s    environmentData
    IL_0010:  ldfld      int32 Game.DrawBlockEnvironmentData::Humidity
    IL_0015:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_001a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_001f:  starg.s    color
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  ldarg.s    size
    IL_0025:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_002a:  ldarg.s    matrix
    IL_002c:  ldarg.3
    IL_002d:  ldarg.3
    IL_002e:  ldarg.s    environmentData
    IL_0030:  call       void Game.BlocksManager::DrawCubeBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Color,
                                                                valuetype [Engine]Engine.Color,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0035:  ret
  } // end of method LeavesBlock::DrawBlock

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BlockColorsMap Game.LeavesBlock::m_blockColorsMap
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000c:  ldarg.2
    IL_000d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0012:  call       int32 Game.Terrain::ToCell(float32)
    IL_0017:  ldarg.2
    IL_0018:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001d:  call       int32 Game.Terrain::ToCell(float32)
    IL_0022:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_0027:  stloc.0
    IL_0028:  ldarg.1
    IL_0029:  ldarg.2
    IL_002a:  ldarg.s    strength
    IL_002c:  ldarg.0
    IL_002d:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0032:  ldloc.0
    IL_0033:  ldarg.0
    IL_0034:  ldc.i4.4
    IL_0035:  ldarg.3
    IL_0036:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_003b:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0040:  ret
  } // end of method LeavesBlock::CreateDebrisParticleSystem

} // end of class Game.LeavesBlock