.class public auto ansi beforefieldinit Game.PigmentBlock
       extends Game.FlatBlock
{
  .field public static literal int32 Index = int32(0x00000082)
  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  ldarg.s    size
    IL_000b:  ldarg.s    matrix
    IL_000d:  ldnull
    IL_000e:  ldarg.3
    IL_000f:  ldarg.s    environmentData
    IL_0011:  ldloc.0
    IL_0012:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0017:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.DrawBlockEnvironmentData,
                                                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_001c:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0021:  ldc.i4.0
    IL_0022:  ldarg.s    environmentData
    IL_0024:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                bool,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0029:  ret
  } // end of method PigmentBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.FlatBlock::.ctor()
    IL_0006:  ret
  } // end of method PigmentBlock::.ctor

} // end of class Game.PigmentBlock