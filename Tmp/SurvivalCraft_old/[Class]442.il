.class public auto ansi beforefieldinit Game.CancellableProgress
       extends Game.Progress
{
  .field public class [System.Threading.Tasks]System.Threading.CancellationTokenSource CancellationTokenSource
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [System.Threading.Tasks]System.Threading.CancellationTokenSource::.ctor()
    IL_0006:  stfld      class [System.Threading.Tasks]System.Threading.CancellationTokenSource Game.CancellableProgress::CancellationTokenSource
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Progress::.ctor()
    IL_0011:  ret
  } // end of method CancellableProgress::.ctor

} // end of class Game.CancellableProgress