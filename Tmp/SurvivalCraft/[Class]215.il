.class public auto ansi beforefieldinit Game.WickerLampBlock
       extends Game.AlphaTestCubeBlock
{
  .field public static literal int32 Index = int32(0x00000011)
  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.5
    IL_0002:  beq.s      IL_000b

    IL_0004:  ldarg.0
    IL_0005:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_000a:  ret

    IL_000b:  ldc.i4.4
    IL_000c:  ret
  } // end of method WickerLampBlock::GetFaceTextureSlot

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.AlphaTestCubeBlock::.ctor()
    IL_0006:  ret
  } // end of method WickerLampBlock::.ctor

} // end of class Game.WickerLampBlock