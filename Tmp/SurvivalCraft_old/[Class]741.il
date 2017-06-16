.class public auto ansi beforefieldinit Game.Pickable
       extends Game.WorldItem
{
  .field public int32 Count
  .field public valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> FlyToPosition
  .field public valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> StuckMatrix
  .field public bool SplashGenerated
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.Pickable::SplashGenerated
    IL_0007:  ldarg.0
    IL_0008:  call       instance void Game.WorldItem::.ctor()
    IL_000d:  ret
  } // end of method Pickable::.ctor

} // end of class Game.Pickable