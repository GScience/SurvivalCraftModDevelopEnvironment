.class public abstract auto ansi beforefieldinit Game.ComponentBehavior
       extends [EntitySystem]GameEntitySystem.Component
{
  .field private bool '<IsActive>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig newslot specialname abstract virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
  } // end of method ComponentBehavior::get_ImportanceLevel

  .method public hidebysig newslot specialname virtual 
          instance bool  get_IsActive() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentBehavior::'<IsActive>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBehavior::get_IsActive

  .method public hidebysig newslot specialname virtual 
          instance void  set_IsActive(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentBehavior::'<IsActive>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBehavior::set_IsActive

  .method public hidebysig newslot specialname virtual 
          instance string  get_DebugInfo() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0005:  ret
  } // end of method ComponentBehavior::get_DebugInfo

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentBehavior::.ctor

  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentBehavior::get_ImportanceLevel()
  } // end of property ComponentBehavior::ImportanceLevel
  .property instance bool IsActive()
  {
    .get instance bool Game.ComponentBehavior::get_IsActive()
    .set instance void Game.ComponentBehavior::set_IsActive(bool)
  } // end of property ComponentBehavior::IsActive
  .property instance string DebugInfo()
  {
    .get instance string Game.ComponentBehavior::get_DebugInfo()
  } // end of property ComponentBehavior::DebugInfo
} // end of class Game.ComponentBehavior