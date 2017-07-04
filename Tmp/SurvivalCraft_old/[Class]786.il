.class interface public abstract auto ansi Game.ITerrainContentsGenerator
{
  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_OceanLevel() cil managed
  {
  } // end of method ITerrainContentsGenerator::get_OceanLevel

  .method public hidebysig newslot abstract virtual 
          instance valuetype [Engine]Engine.Vector3 
          FindCoarseSpawnPosition() cil managed
  {
  } // end of method ITerrainContentsGenerator::FindCoarseSpawnPosition

  .method public hidebysig newslot abstract virtual 
          instance float32  CalculateOceanShoreDistance(float32 x,
                                                        float32 z) cil managed
  {
  } // end of method ITerrainContentsGenerator::CalculateOceanShoreDistance

  .method public hidebysig newslot abstract virtual 
          instance float32  CalculateHeight(float32 x,
                                            float32 z) cil managed
  {
  } // end of method ITerrainContentsGenerator::CalculateHeight

  .method public hidebysig newslot abstract virtual 
          instance int32  CalculateTemperature(float32 x,
                                               float32 z) cil managed
  {
  } // end of method ITerrainContentsGenerator::CalculateTemperature

  .method public hidebysig newslot abstract virtual 
          instance int32  CalculateHumidity(float32 x,
                                            float32 z) cil managed
  {
  } // end of method ITerrainContentsGenerator::CalculateHumidity

  .method public hidebysig newslot abstract virtual 
          instance float32  CalculateMountainRangeFactor(float32 x,
                                                         float32 z) cil managed
  {
  } // end of method ITerrainContentsGenerator::CalculateMountainRangeFactor

  .method public hidebysig newslot abstract virtual 
          instance void  GenerateChunkContentsPass1(class Game.TerrainChunk chunk) cil managed
  {
  } // end of method ITerrainContentsGenerator::GenerateChunkContentsPass1

  .method public hidebysig newslot abstract virtual 
          instance void  GenerateChunkContentsPass2(class Game.TerrainChunk chunk) cil managed
  {
  } // end of method ITerrainContentsGenerator::GenerateChunkContentsPass2

  .method public hidebysig newslot abstract virtual 
          instance void  GenerateChunkContentsPass3(class Game.TerrainChunk chunk) cil managed
  {
  } // end of method ITerrainContentsGenerator::GenerateChunkContentsPass3

  .method public hidebysig newslot abstract virtual 
          instance void  GenerateChunkContentsPass4(class Game.TerrainChunk chunk) cil managed
  {
  } // end of method ITerrainContentsGenerator::GenerateChunkContentsPass4

  .property instance int32 OceanLevel()
  {
    .get instance int32 Game.ITerrainContentsGenerator::get_OceanLevel()
  } // end of property ITerrainContentsGenerator::OceanLevel
} // end of class Game.ITerrainContentsGenerator