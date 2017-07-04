.class public auto ansi beforefieldinit Game.ComponentCreature
       extends [EntitySystem]GameEntitySystem.Component
{
  .field private class Game.SubsystemPlayerStats m_subsystemPlayerStats
  .field private class Game.ComponentBody '<ComponentBody>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentHealth '<ComponentHealth>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentSpawn '<ComponentSpawn>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentCreatureModel '<ComponentCreatureModel>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentCreatureSounds '<ComponentCreatureSounds>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentLocomotion '<ComponentLocomotion>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<ConstantSpawn>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.CreatureCategory '<Category>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<DisplayName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string[] m_killVerbs
  .method public hidebysig specialname instance class Game.ComponentBody 
          get_ComponentBody() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBody Game.ComponentCreature::'<ComponentBody>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreature::get_ComponentBody

  .method private hidebysig specialname instance void 
          set_ComponentBody(class Game.ComponentBody 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentBody Game.ComponentCreature::'<ComponentBody>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreature::set_ComponentBody

  .method public hidebysig specialname instance class Game.ComponentHealth 
          get_ComponentHealth() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentHealth Game.ComponentCreature::'<ComponentHealth>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreature::get_ComponentHealth

  .method private hidebysig specialname instance void 
          set_ComponentHealth(class Game.ComponentHealth 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentHealth Game.ComponentCreature::'<ComponentHealth>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreature::set_ComponentHealth

  .method public hidebysig specialname instance class Game.ComponentSpawn 
          get_ComponentSpawn() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentSpawn Game.ComponentCreature::'<ComponentSpawn>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreature::get_ComponentSpawn

  .method private hidebysig specialname instance void 
          set_ComponentSpawn(class Game.ComponentSpawn 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentSpawn Game.ComponentCreature::'<ComponentSpawn>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreature::set_ComponentSpawn

  .method public hidebysig specialname instance class Game.ComponentCreatureModel 
          get_ComponentCreatureModel() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreatureModel Game.ComponentCreature::'<ComponentCreatureModel>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreature::get_ComponentCreatureModel

  .method private hidebysig specialname instance void 
          set_ComponentCreatureModel(class Game.ComponentCreatureModel 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentCreatureModel Game.ComponentCreature::'<ComponentCreatureModel>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreature::set_ComponentCreatureModel

  .method public hidebysig specialname instance class Game.ComponentCreatureSounds 
          get_ComponentCreatureSounds() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreatureSounds Game.ComponentCreature::'<ComponentCreatureSounds>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreature::get_ComponentCreatureSounds

  .method private hidebysig specialname instance void 
          set_ComponentCreatureSounds(class Game.ComponentCreatureSounds 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentCreatureSounds Game.ComponentCreature::'<ComponentCreatureSounds>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreature::set_ComponentCreatureSounds

  .method public hidebysig specialname instance class Game.ComponentLocomotion 
          get_ComponentLocomotion() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentLocomotion Game.ComponentCreature::'<ComponentLocomotion>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreature::get_ComponentLocomotion

  .method private hidebysig specialname instance void 
          set_ComponentLocomotion(class Game.ComponentLocomotion 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentLocomotion Game.ComponentCreature::'<ComponentLocomotion>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreature::set_ComponentLocomotion

  .method public hidebysig specialname instance class Game.PlayerStats 
          get_PlayerStats() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  2
    .locals init (class Game.ComponentPlayer V_0)
    IL_0000:  ldarg.0
    IL_0001:  isinst     Game.ComponentPlayer
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0021

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.SubsystemPlayerStats Game.ComponentCreature::m_subsystemPlayerStats
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0016:  callvirt   instance int32 Game.PlayerData::get_PlayerIndex()
    IL_001b:  callvirt   instance class Game.PlayerStats Game.SubsystemPlayerStats::GetPlayerStats(int32)
    IL_0020:  ret

    IL_0021:  ldnull
    IL_0022:  ret
  } // end of method ComponentCreature::get_PlayerStats

  .method public hidebysig specialname instance bool 
          get_ConstantSpawn() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentCreature::'<ConstantSpawn>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreature::get_ConstantSpawn

  .method public hidebysig specialname instance void 
          set_ConstantSpawn(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentCreature::'<ConstantSpawn>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreature::set_ConstantSpawn

  .method public hidebysig specialname instance valuetype Game.CreatureCategory 
          get_Category() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.CreatureCategory Game.ComponentCreature::'<Category>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreature::get_Category

  .method private hidebysig specialname instance void 
          set_Category(valuetype Game.CreatureCategory 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.CreatureCategory Game.ComponentCreature::'<Category>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreature::set_Category

  .method public hidebysig specialname instance string 
          get_DisplayName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentCreature::'<DisplayName>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreature::get_DisplayName

  .method private hidebysig specialname instance void 
          set_DisplayName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.ComponentCreature::'<DisplayName>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreature::set_DisplayName

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<string> 
          get_KillVerbs() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string[] Game.ComponentCreature::m_killVerbs
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000b:  ret
  } // end of method ComponentCreature::get_KillVerbs

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       247 (0xf7)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_000d:  call       instance void Game.ComponentCreature::set_ComponentBody(class Game.ComponentBody)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>(bool)
    IL_001f:  call       instance void Game.ComponentCreature::set_ComponentHealth(class Game.ComponentHealth)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSpawn>(bool)
    IL_0031:  call       instance void Game.ComponentCreature::set_ComponentSpawn(class Game.ComponentSpawn)
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreatureSounds>(bool)
    IL_0043:  call       instance void Game.ComponentCreature::set_ComponentCreatureSounds(class Game.ComponentCreatureSounds)
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreatureModel>(bool)
    IL_0055:  call       instance void Game.ComponentCreature::set_ComponentCreatureModel(class Game.ComponentCreatureModel)
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentLocomotion>(bool)
    IL_0067:  call       instance void Game.ComponentCreature::set_ComponentLocomotion(class Game.ComponentLocomotion)
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayerStats>(bool)
    IL_0079:  stfld      class Game.SubsystemPlayerStats Game.ComponentCreature::m_subsystemPlayerStats
    IL_007e:  ldarg.0
    IL_007f:  ldarg.1
    IL_0080:  ldstr      "ConstantSpawn"
    IL_0085:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_008a:  call       instance void Game.ComponentCreature::set_ConstantSpawn(bool)
    IL_008f:  ldarg.0
    IL_0090:  ldarg.1
    IL_0091:  ldstr      "Category"
    IL_0096:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.CreatureCategory>(string)
    IL_009b:  call       instance void Game.ComponentCreature::set_Category(valuetype Game.CreatureCategory)
    IL_00a0:  ldarg.0
    IL_00a1:  ldarg.1
    IL_00a2:  ldstr      "DisplayName"
    IL_00a7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_00ac:  call       instance void Game.ComponentCreature::set_DisplayName(string)
    IL_00b1:  ldarg.0
    IL_00b2:  ldc.i4.s   44
    IL_00b4:  ldarg.1
    IL_00b5:  ldstr      "KillVerbs"
    IL_00ba:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_00bf:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<string>(char,
                                                                                                                 string)
    IL_00c4:  stfld      string[] Game.ComponentCreature::m_killVerbs
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      string[] Game.ComponentCreature::m_killVerbs
    IL_00cf:  ldlen
    IL_00d0:  brtrue.s   IL_00dd

    IL_00d2:  ldstr      "Must have at least one KillVerb"
    IL_00d7:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00dc:  throw

    IL_00dd:  ldarg.0
    IL_00de:  call       instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_00e3:  conv.i8
    IL_00e4:  call       bool [Engine]Engine.MathUtils::IsPowerOf2(int64)
    IL_00e9:  brtrue.s   IL_00f6

    IL_00eb:  ldstr      "A single category must be assigned for creature."
    IL_00f0:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00f5:  throw

    IL_00f6:  ret
  } // end of method ComponentCreature::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "ConstantSpawn"
    IL_0006:  ldarg.0
    IL_0007:  call       instance bool Game.ComponentCreature::get_ConstantSpawn()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0011:  ret
  } // end of method ComponentCreature::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentCreature::.ctor

  .property instance class Game.ComponentBody
          ComponentBody()
  {
    .get instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    .set instance void Game.ComponentCreature::set_ComponentBody(class Game.ComponentBody)
  } // end of property ComponentCreature::ComponentBody
  .property instance class Game.ComponentHealth
          ComponentHealth()
  {
    .get instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    .set instance void Game.ComponentCreature::set_ComponentHealth(class Game.ComponentHealth)
  } // end of property ComponentCreature::ComponentHealth
  .property instance class Game.ComponentSpawn
          ComponentSpawn()
  {
    .get instance class Game.ComponentSpawn Game.ComponentCreature::get_ComponentSpawn()
    .set instance void Game.ComponentCreature::set_ComponentSpawn(class Game.ComponentSpawn)
  } // end of property ComponentCreature::ComponentSpawn
  .property instance class Game.ComponentCreatureModel
          ComponentCreatureModel()
  {
    .get instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    .set instance void Game.ComponentCreature::set_ComponentCreatureModel(class Game.ComponentCreatureModel)
  } // end of property ComponentCreature::ComponentCreatureModel
  .property instance class Game.ComponentCreatureSounds
          ComponentCreatureSounds()
  {
    .get instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    .set instance void Game.ComponentCreature::set_ComponentCreatureSounds(class Game.ComponentCreatureSounds)
  } // end of property ComponentCreature::ComponentCreatureSounds
  .property instance class Game.ComponentLocomotion
          ComponentLocomotion()
  {
    .get instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    .set instance void Game.ComponentCreature::set_ComponentLocomotion(class Game.ComponentLocomotion)
  } // end of property ComponentCreature::ComponentLocomotion
  .property instance class Game.PlayerStats
          PlayerStats()
  {
    .get instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
  } // end of property ComponentCreature::PlayerStats
  .property instance bool ConstantSpawn()
  {
    .get instance bool Game.ComponentCreature::get_ConstantSpawn()
    .set instance void Game.ComponentCreature::set_ConstantSpawn(bool)
  } // end of property ComponentCreature::ConstantSpawn
  .property instance valuetype Game.CreatureCategory
          Category()
  {
    .get instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    .set instance void Game.ComponentCreature::set_Category(valuetype Game.CreatureCategory)
  } // end of property ComponentCreature::Category
  .property instance string DisplayName()
  {
    .get instance string Game.ComponentCreature::get_DisplayName()
    .set instance void Game.ComponentCreature::set_DisplayName(string)
  } // end of property ComponentCreature::DisplayName
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<string>
          KillVerbs()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<string> Game.ComponentCreature::get_KillVerbs()
  } // end of property ComponentCreature::KillVerbs
} // end of class Game.ComponentCreature