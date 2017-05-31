.class public auto ansi beforefieldinit Game.SubsystemPlayerStats
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private initonly class Game.PlayerStats '<PlayerStats>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.PlayerStats 
          get_PlayerStats() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.PlayerStats Game.SubsystemPlayerStats::'<PlayerStats>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemPlayerStats::get_PlayerStats

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  2
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "PlayerStats"
    IL_0006:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  call       instance class Game.PlayerStats Game.SubsystemPlayerStats::get_PlayerStats()
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance void Game.PlayerStats::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0018:  ret
  } // end of method SubsystemPlayerStats::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0)
    IL_0000:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "PlayerStats"
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0012:  ldarg.0
    IL_0013:  call       instance class Game.PlayerStats Game.SubsystemPlayerStats::get_PlayerStats()
    IL_0018:  ldloc.0
    IL_0019:  callvirt   instance void Game.PlayerStats::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_001e:  ret
  } // end of method SubsystemPlayerStats::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.PlayerStats::.ctor()
    IL_0006:  stfld      class Game.PlayerStats Game.SubsystemPlayerStats::'<PlayerStats>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemPlayerStats::.ctor

  .property instance class Game.PlayerStats
          PlayerStats()
  {
    .get instance class Game.PlayerStats Game.SubsystemPlayerStats::get_PlayerStats()
  } // end of property SubsystemPlayerStats::PlayerStats
} // end of class Game.SubsystemPlayerStats