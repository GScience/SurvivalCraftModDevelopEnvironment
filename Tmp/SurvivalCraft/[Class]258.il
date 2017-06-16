.class public auto ansi beforefieldinit Game.StoneFenceBlock
       extends Game.FenceBlock
{
  .field public static literal int32 Index = int32(0x000000CA)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Models/StoneFence"
    IL_0006:  ldc.i4.0
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   24
    IL_000a:  ldc.i4     0xd4
    IL_000f:  ldc.i4     0xd4
    IL_0014:  ldc.i4     0xd4
    IL_0019:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_001e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0023:  call       instance void Game.FenceBlock::.ctor(string,
                                                              bool,
                                                              bool,
                                                              int32,
                                                              valuetype [Engine]Engine.Color,
                                                              valuetype [Engine]Engine.Color)
    IL_0028:  ret
  } // end of method StoneFenceBlock::.ctor

  .method public hidebysig virtual instance bool 
          ShouldConnectTo(int32 'value') cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  ldfld      bool Game.Block::IsTransparent
    IL_0013:  brfalse.s  IL_001d

    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  call       instance bool Game.FenceBlock::ShouldConnectTo(int32)
    IL_001c:  ret

    IL_001d:  ldc.i4.1
    IL_001e:  ret
  } // end of method StoneFenceBlock::ShouldConnectTo

} // end of class Game.StoneFenceBlock