.class public auto ansi beforefieldinit Game.FloatListDebugMenuItemAttribute
       extends Game.DebugMenuItemAttribute
{
  .custom instance void [System.Runtime]System.Diagnostics.ConditionalAttribute::.ctor(string) = ( 01 00 05 44 45 42 55 47 00 00 )                   // ...DEBUG..
  .field public float32[] Items
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(float32[] items,
                               int32 precision,
                               string unit) cil managed
  {
    // ´úÂë´óÐ¡       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r8     0.0
    IL_000a:  call       instance void Game.DebugMenuItemAttribute::.ctor(float64)
    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  stfld      float32[] Game.FloatListDebugMenuItemAttribute::Items
    IL_0016:  ldarg.0
    IL_0017:  ldarg.2
    IL_0018:  stfld      int32 Game.DebugItemAttribute::Precision
    IL_001d:  ldarg.0
    IL_001e:  ldarg.3
    IL_001f:  stfld      string Game.DebugItemAttribute::Unit
    IL_0024:  ret
  } // end of method FloatListDebugMenuItemAttribute::.ctor

} // end of class Game.FloatListDebugMenuItemAttribute