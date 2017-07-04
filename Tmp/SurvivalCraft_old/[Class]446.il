.class public auto ansi beforefieldinit Game.DebugItemAttribute
       extends [System.Runtime]System.Attribute
{
  .custom instance void [System.Runtime]System.Diagnostics.ConditionalAttribute::.ctor(string) = ( 01 00 05 44 45 42 55 47 00 00 )                   // ...DEBUG..
  .field public int32 Precision
  .field public string Unit
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  stfld      int32 Game.DebugItemAttribute::Precision
    IL_0007:  ldarg.0
    IL_0008:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_000d:  ret
  } // end of method DebugItemAttribute::.ctor

} // end of class Game.DebugItemAttribute