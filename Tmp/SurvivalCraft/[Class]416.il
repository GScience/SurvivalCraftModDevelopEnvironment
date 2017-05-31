.class public auto ansi beforefieldinit Game.DebugMenuItemAttribute
       extends Game.DebugItemAttribute
{
  .custom instance void [System.Runtime]System.Diagnostics.ConditionalAttribute::.ctor(string) = ( 01 00 05 44 45 42 55 47 00 00 )                   // ...DEBUG..
  .field public float64 Step
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.DebugItemAttribute::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.r8     1.
    IL_0010:  stfld      float64 Game.DebugMenuItemAttribute::Step
    IL_0015:  ret
  } // end of method DebugMenuItemAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(float64 step) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.DebugItemAttribute::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      float64 Game.DebugMenuItemAttribute::Step
    IL_000d:  ret
  } // end of method DebugMenuItemAttribute::.ctor

} // end of class Game.DebugMenuItemAttribute