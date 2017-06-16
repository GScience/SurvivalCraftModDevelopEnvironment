.class public auto ansi beforefieldinit GScience.ModAPI.Block.Block`1<([Survivalcraft]Game.Block) BlockBaseType>
       extends [System.Runtime]System.Object
{
  .field private static class GScience.ModAPI.Block.Block`1<!BlockBaseType> m_block
  .method family hidebysig static void  setContentAndAddToGame(string blockContent) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       void GScience.ModAPI.Block.BlockManager::addBlock<!BlockBaseType>(string)
    IL_0007:  nop
    IL_0008:  ret
  } // end of method Block`1::setContentAndAddToGame

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Block`1::.ctor

} // end of class GScience.ModAPI.Block.Block`1