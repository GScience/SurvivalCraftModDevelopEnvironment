.class public abstract auto ansi beforefieldinit Game.SubsystemPollableBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .method public hidebysig newslot abstract virtual 
          instance void  OnPoll(int32 'value',
                                int32 x,
                                int32 y,
                                int32 z,
                                int32 pollPass) cil managed
  {
  } // end of method SubsystemPollableBlockBehavior::OnPoll

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemPollableBlockBehavior::.ctor

} // end of class Game.SubsystemPollableBlockBehavior