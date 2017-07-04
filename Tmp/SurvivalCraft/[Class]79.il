.class public auto ansi beforefieldinit Game.ComponentUdder
       extends [EntitySystem]GameEntitySystem.Component
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.ComponentCreature m_componentCreature
  .field private float32 m_milkRegenerationTime
  .field private float64 m_lastMilkingTime
  .method public hidebysig specialname instance bool 
          get_HasMilk() cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.ComponentUdder::m_lastMilkingTime
    IL_0006:  ldc.r8     0.0
    IL_000f:  blt.s      IL_0030

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.SubsystemGameInfo Game.ComponentUdder::m_subsystemGameInfo
    IL_0017:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_001c:  ldarg.0
    IL_001d:  ldfld      float64 Game.ComponentUdder::m_lastMilkingTime
    IL_0022:  sub
    IL_0023:  ldarg.0
    IL_0024:  ldfld      float32 Game.ComponentUdder::m_milkRegenerationTime
    IL_0029:  conv.r8
    IL_002a:  clt.un
    IL_002c:  ldc.i4.0
    IL_002d:  ceq
    IL_002f:  ret

    IL_0030:  ldc.i4.1
    IL_0031:  ret
  } // end of method ComponentUdder::get_HasMilk

  .method public hidebysig instance bool 
          Milk(class Game.ComponentMiner milker) cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  5
    .locals init (class Game.ComponentHerdBehavior V_0)
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_0029

    IL_0003:  ldarg.0
    IL_0004:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0009:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHerdBehavior>()
    IL_000e:  stloc.0
    IL_000f:  ldloc.0
    IL_0010:  brfalse.s  IL_0029

    IL_0012:  ldloc.0
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0019:  ldc.r4     20.
    IL_001e:  ldc.r4     20.
    IL_0023:  ldc.i4.1
    IL_0024:  callvirt   instance void Game.ComponentHerdBehavior::CallNearbyCreaturesHelp(class Game.ComponentCreature,
                                                                                           float32,
                                                                                           float32,
                                                                                           bool)
    IL_0029:  ldarg.0
    IL_002a:  call       instance bool Game.ComponentUdder::get_HasMilk()
    IL_002f:  brfalse.s  IL_0055

    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.ComponentCreature Game.ComponentUdder::m_componentCreature
    IL_0037:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_003c:  ldc.i4.0
    IL_003d:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_0042:  ldarg.0
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.SubsystemGameInfo Game.ComponentUdder::m_subsystemGameInfo
    IL_0049:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_004e:  stfld      float64 Game.ComponentUdder::m_lastMilkingTime
    IL_0053:  ldc.i4.1
    IL_0054:  ret

    IL_0055:  ldarg.0
    IL_0056:  ldfld      class Game.ComponentCreature Game.ComponentUdder::m_componentCreature
    IL_005b:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0060:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_0065:  ldc.i4.0
    IL_0066:  ret
  } // end of method ComponentUdder::Milk

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentUdder::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_001f:  stfld      class Game.ComponentCreature Game.ComponentUdder::m_componentCreature
    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  ldstr      "MilkRegenerationTime"
    IL_002b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0030:  stfld      float32 Game.ComponentUdder::m_milkRegenerationTime
    IL_0035:  ldarg.0
    IL_0036:  ldarg.1
    IL_0037:  ldstr      "LastMilkingTime"
    IL_003c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_0041:  stfld      float64 Game.ComponentUdder::m_lastMilkingTime
    IL_0046:  ret
  } // end of method ComponentUdder::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "LastMilkingTime"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float64 Game.ComponentUdder::m_lastMilkingTime
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0011:  ret
  } // end of method ComponentUdder::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentUdder::.ctor

  .property instance bool HasMilk()
  {
    .get instance bool Game.ComponentUdder::get_HasMilk()
  } // end of property ComponentUdder::HasMilk
} // end of class Game.ComponentUdder