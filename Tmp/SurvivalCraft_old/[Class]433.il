.class public auto ansi beforefieldinit Game.ExperienceBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x000000F8)
  .field private class [Engine]Engine.Graphics.Texture2D m_texture
  .method public hidebysig virtual instance void 
          Initialize() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Block::Initialize()
    IL_0006:  ldarg.0
    IL_0007:  ldstr      "Textures/Experience"
    IL_000c:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0011:  stfld      class [Engine]Engine.Graphics.Texture2D Game.ExperienceBlock::m_texture
    IL_0016:  ret
  } // end of method ExperienceBlock::Initialize

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ExperienceBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldarg.s    size
    IL_0004:  ldc.r4     0.18000001
    IL_0009:  mul
    IL_000a:  ldarg.s    matrix
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ExperienceBlock::m_texture
    IL_0012:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.s    environmentData
    IL_001a:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                bool,
                                                                class Game.DrawBlockEnvironmentData)
    IL_001f:  ret
  } // end of method ExperienceBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Block::.ctor()
    IL_0006:  ret
  } // end of method ExperienceBlock::.ctor

} // end of class Game.ExperienceBlock