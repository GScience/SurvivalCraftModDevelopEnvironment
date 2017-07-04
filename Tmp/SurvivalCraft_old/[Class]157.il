.class public auto ansi beforefieldinit Game.GrassBlock
       extends Game.CubeBlock
{
  .field public static literal int32 Index = int32(0x00000008)
  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.4
    IL_0002:  bne.un.s   IL_0006

    IL_0004:  ldc.i4.0
    IL_0005:  ret

    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.5
    IL_0008:  bne.un.s   IL_000c

    IL_000a:  ldc.i4.2
    IL_000b:  ret

    IL_000c:  ldarg.2
    IL_000d:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0012:  brtrue.s   IL_0016

    IL_0014:  ldc.i4.3
    IL_0015:  ret

    IL_0016:  ldc.i4.s   68
    IL_0018:  ret
  } // end of method GrassBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.3
    IL_0001:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0006:  ldarg.s    environmentData
    IL_0008:  ldfld      int32 Game.DrawBlockEnvironmentData::Temperature
    IL_000d:  ldarg.s    environmentData
    IL_000f:  ldfld      int32 Game.DrawBlockEnvironmentData::Humidity
    IL_0014:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_0019:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_001e:  stloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldarg.2
    IL_0021:  ldarg.s    size
    IL_0023:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0028:  ldarg.s    matrix
    IL_002a:  ldarg.3
    IL_002b:  ldloc.0
    IL_002c:  ldarg.s    environmentData
    IL_002e:  call       void Game.BlocksManager::DrawCubeBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Color,
                                                                valuetype [Engine]Engine.Color,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0033:  ret
  } // end of method GrassBlock::DrawBlock

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       142 (0x8e)
    .maxstack  16
    .locals init (valuetype [Engine]Engine.Color V_0,
             valuetype [Engine]Engine.Color V_1,
             valuetype [Engine]Engine.Color V_2,
             valuetype [Engine]Engine.Color V_3)
    IL_0000:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0005:  ldarg.1
    IL_0006:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_000b:  ldarg.s    x
    IL_000d:  ldarg.s    z
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_0014:  stloc.0
    IL_0015:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_001a:  ldarg.1
    IL_001b:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0020:  ldarg.s    x
    IL_0022:  ldc.i4.1
    IL_0023:  add
    IL_0024:  ldarg.s    z
    IL_0026:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_002b:  stloc.1
    IL_002c:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0031:  ldarg.1
    IL_0032:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0037:  ldarg.s    x
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  ldarg.s    z
    IL_003d:  ldc.i4.1
    IL_003e:  add
    IL_003f:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_0044:  stloc.2
    IL_0045:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_004a:  ldarg.1
    IL_004b:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0050:  ldarg.s    x
    IL_0052:  ldarg.s    z
    IL_0054:  ldc.i4.1
    IL_0055:  add
    IL_0056:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_005b:  stloc.3
    IL_005c:  ldarg.1
    IL_005d:  ldarg.0
    IL_005e:  ldarg.3
    IL_005f:  ldarg.s    x
    IL_0061:  ldarg.s    y
    IL_0063:  ldarg.s    z
    IL_0065:  ldc.r4     1.
    IL_006a:  ldc.r4     1.
    IL_006f:  ldc.r4     1.
    IL_0074:  ldc.r4     1.
    IL_0079:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_007e:  ldloc.0
    IL_007f:  ldloc.1
    IL_0080:  ldloc.2
    IL_0081:  ldloc.3
    IL_0082:  ldarg.2
    IL_0083:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0088:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         float32,
                                                                                         float32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_008d:  ret
  } // end of method GrassBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldarg.s    strength
    IL_0004:  ldarg.0
    IL_0005:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_000a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_000f:  ldc.i4.2
    IL_0010:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0015:  ret
  } // end of method GrassBlock::CreateDebrisParticleSystem

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CubeBlock::.ctor()
    IL_0006:  ret
  } // end of method GrassBlock::.ctor

} // end of class Game.GrassBlock