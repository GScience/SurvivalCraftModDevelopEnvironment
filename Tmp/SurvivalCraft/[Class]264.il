.class public abstract auto ansi beforefieldinit Game.SignBlock
       extends Game.Block
{
  .method public hidebysig newslot abstract virtual 
          instance class Game.BlockMesh  GetSignSurfaceBlockMesh(int32 data) cil managed
  {
  } // end of method SignBlock::GetSignSurfaceBlockMesh

  .method public hidebysig newslot abstract virtual 
          instance valuetype [Engine]Engine.Vector3 
          GetSignSurfaceNormal(int32 data) cil managed
  {
  } // end of method SignBlock::GetSignSurfaceNormal

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Block::.ctor()
    IL_0006:  ret
  } // end of method SignBlock::.ctor

} // end of class Game.SignBlock