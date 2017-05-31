.class interface public abstract auto ansi Game.ITerrainContentsGenerator
{
  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Vector2 
          get_OceanCorner() cil managed
  {
  } // end of method ITerrainContentsGenerator::get_OceanCorner

  .method public hidebysig newslot abstract virtual 
          instance float32  CalculateOceanShoreX(float32 z) cil managed
  {
  } // end of method ITerrainContentsGenerator::CalculateOceanShoreX

  .method public hidebysig newslot abstract virtual 
          instance float32  CalculateOceanShoreZ(float32 x) cil managed
  {
  } // end of method ITerrainContentsGenerator::CalculateOceanShoreZ

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
          instance void  GenerateChunkContentsPass1(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
  } // end of method ITerrainContentsGenerator::GenerateChunkContentsPass1

  .method public hidebysig newslot abstract virtual 
          instance void  GenerateChunkContentsPass2(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
  } // end of method ITerrainContentsGenerator::GenerateChunkContentsPass2

  .method public hidebysig newslot abstract virtual 
          instance void  GenerateChunkContentsPass3(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
  } // end of method ITerrainContentsGenerator::GenerateChunkContentsPass3

  .method public hidebysig newslot abstract virtual 
          instance void  GenerateChunkContentsPass4(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
  } // end of method ITerrainContentsGenerator::GenerateChunkContentsPass4

  .property instance valuetype [Engine]Engine.Vector2
          OceanCorner()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.ITerrainContentsGenerator::get_OceanCorner()
  } // end of property ITerrainContentsGenerator::OceanCorner
} // end of class Game.ITerrainContentsGenerator