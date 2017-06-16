.class public auto ansi beforefieldinit Game.TallGrassBlock
       extends Game.CrossBlock
{
  .field public static literal int32 Index = int32(0x00000013)
  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       bool Game.TallGrassBlock::GetIsSmall(int32)
    IL_000d:  brtrue.s   IL_0037

    IL_000f:  ldarg.s    dropValues
    IL_0011:  ldloca.s   V_1
    IL_0013:  initobj    Game.BlockDropValue
    IL_0019:  ldloca.s   V_1
    IL_001b:  ldc.i4.s   19
    IL_001d:  ldc.i4.0
    IL_001e:  ldloc.0
    IL_001f:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0024:  stfld      int32 Game.BlockDropValue::Value
    IL_0029:  ldloca.s   V_1
    IL_002b:  ldc.i4.1
    IL_002c:  stfld      int32 Game.BlockDropValue::Count
    IL_0031:  ldloc.1
    IL_0032:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0037:  ldarg.s    showDebris
    IL_0039:  ldc.i4.1
    IL_003a:  stind.i1
    IL_003b:  ret
  } // end of method TallGrassBlock::GetDropValues

  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       bool Game.TallGrassBlock::GetIsSmall(int32)
    IL_000b:  brtrue.s   IL_0010

    IL_000d:  ldc.i4.s   85
    IL_000f:  ret

    IL_0010:  ldc.i4.s   84
    IL_0012:  ret
  } // end of method TallGrassBlock::GetFaceTextureSlot

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
    IL_0005:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
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
  } // end of method TallGrassBlock::DrawBlock

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  10
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    x
    IL_0005:  ldarg.s    y
    IL_0007:  ldarg.s    z
    IL_0009:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_000e:  ldarg.1
    IL_000f:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0014:  ldarg.s    x
    IL_0016:  ldarg.s    z
    IL_0018:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.TerrainData,
                                                                                             int32,
                                                                                             int32)
    IL_001d:  ldarg.0
    IL_001e:  ldc.i4.0
    IL_001f:  ldarg.3
    IL_0020:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0025:  ldarg.2
    IL_0026:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_002b:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCrossfaceVertices(class Game.Block,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              int32,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              int32,
                                                                                              class Game.TerrainGeometrySubset)
    IL_0030:  ret
  } // end of method TallGrassBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance int32 
          GetShadowStrength(int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       bool Game.TallGrassBlock::GetIsSmall(int32)
    IL_000b:  brtrue.s   IL_0014

    IL_000d:  ldarg.0
    IL_000e:  ldfld      int32 Game.Block::DefaultShadowStrength
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      int32 Game.Block::DefaultShadowStrength
    IL_001a:  ldc.i4.2
    IL_001b:  div
    IL_001c:  ret
  } // end of method TallGrassBlock::GetShadowStrength

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain terrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  conv.i4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0018:  conv.i4
    IL_0019:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.TerrainData,
                                                                                             int32,
                                                                                             int32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldarg.2
    IL_0021:  ldarg.s    strength
    IL_0023:  ldarg.0
    IL_0024:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0029:  ldloc.0
    IL_002a:  ldarg.0
    IL_002b:  ldc.i4.4
    IL_002c:  ldarg.3
    IL_002d:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0032:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0037:  ret
  } // end of method TallGrassBlock::CreateDebrisParticleSystem

  .method public hidebysig static bool  GetIsSmall(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method TallGrassBlock::GetIsSmall

  .method public hidebysig static int32  SetIsSmall(int32 data,
                                                    bool isSmall) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -9
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.8
    IL_000a:  or
    IL_000b:  ret
  } // end of method TallGrassBlock::SetIsSmall

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CrossBlock::.ctor()
    IL_0006:  ret
  } // end of method TallGrassBlock::.ctor

} // end of class Game.TallGrassBlock