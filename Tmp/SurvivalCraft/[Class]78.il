.class public auto ansi beforefieldinit Game.ComponentSpawn
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class [System.Runtime]System.Action`1<class Game.ComponentSpawn> Despawned
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentFrame '<ComponentFrame>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentCreature '<ComponentCreature>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<AutoDespawn>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float64 '<SpawnTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<float64> '<DespawnTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<SpawnDuration>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<DespawnDuration>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance void 
          add_Despawned(class [System.Runtime]System.Action`1<class Game.ComponentSpawn> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ComponentSpawn> V_0,
             class [System.Runtime]System.Action`1<class Game.ComponentSpawn> V_1,
             class [System.Runtime]System.Action`1<class Game.ComponentSpawn> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentSpawn> Game.ComponentSpawn::Despawned
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ComponentSpawn>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ComponentSpawn> Game.ComponentSpawn::Despawned
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ComponentSpawn>>(!!0&,
                                                                                                                                                               !!0,
                                                                                                                                                               !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ComponentSpawn::add_Despawned

  .method public hidebysig specialname instance void 
          remove_Despawned(class [System.Runtime]System.Action`1<class Game.ComponentSpawn> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ComponentSpawn> V_0,
             class [System.Runtime]System.Action`1<class Game.ComponentSpawn> V_1,
             class [System.Runtime]System.Action`1<class Game.ComponentSpawn> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentSpawn> Game.ComponentSpawn::Despawned
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ComponentSpawn>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ComponentSpawn> Game.ComponentSpawn::Despawned
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ComponentSpawn>>(!!0&,
                                                                                                                                                               !!0,
                                                                                                                                                               !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ComponentSpawn::remove_Despawned

  .method public hidebysig specialname instance class Game.ComponentFrame 
          get_ComponentFrame() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentFrame Game.ComponentSpawn::'<ComponentFrame>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSpawn::get_ComponentFrame

  .method private hidebysig specialname instance void 
          set_ComponentFrame(class Game.ComponentFrame 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentFrame Game.ComponentSpawn::'<ComponentFrame>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSpawn::set_ComponentFrame

  .method public hidebysig specialname instance class Game.ComponentCreature 
          get_ComponentCreature() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentSpawn::'<ComponentCreature>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSpawn::get_ComponentCreature

  .method private hidebysig specialname instance void 
          set_ComponentCreature(class Game.ComponentCreature 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentCreature Game.ComponentSpawn::'<ComponentCreature>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSpawn::set_ComponentCreature

  .method public hidebysig specialname instance bool 
          get_AutoDespawn() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentSpawn::'<AutoDespawn>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSpawn::get_AutoDespawn

  .method private hidebysig specialname instance void 
          set_AutoDespawn(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentSpawn::'<AutoDespawn>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSpawn::set_AutoDespawn

  .method public hidebysig specialname instance bool 
          get_IsDespawning() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  1
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_000e:  ret
  } // end of method ComponentSpawn::get_IsDespawning

  .method public hidebysig specialname instance float64 
          get_SpawnTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.ComponentSpawn::'<SpawnTime>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSpawn::get_SpawnTime

  .method private hidebysig specialname instance void 
          set_SpawnTime(float64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float64 Game.ComponentSpawn::'<SpawnTime>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSpawn::set_SpawnTime

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<float64> 
          get_DespawnTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::'<DespawnTime>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSpawn::get_DespawnTime

  .method private hidebysig specialname instance void 
          set_DespawnTime(valuetype [System.Runtime]System.Nullable`1<float64> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::'<DespawnTime>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSpawn::set_DespawnTime

  .method public hidebysig specialname instance float32 
          get_SpawnDuration() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSpawn::'<SpawnDuration>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSpawn::get_SpawnDuration

  .method public hidebysig specialname instance void 
          set_SpawnDuration(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentSpawn::'<SpawnDuration>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSpawn::set_SpawnDuration

  .method public hidebysig specialname instance float32 
          get_DespawnDuration() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSpawn::'<DespawnDuration>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentSpawn::get_DespawnDuration

  .method public hidebysig specialname instance void 
          set_DespawnDuration(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentSpawn::'<DespawnDuration>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentSpawn::set_DespawnDuration

  .method public hidebysig instance void 
          Despawn() cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_000e:  brtrue.s   IL_0026

    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.SubsystemGameInfo Game.ComponentSpawn::m_subsystemGameInfo
    IL_0017:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_001c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0021:  call       instance void Game.ComponentSpawn::set_DespawnTime(valuetype [System.Runtime]System.Nullable`1<float64>)
    IL_0026:  ret
  } // end of method ComponentSpawn::Despawn

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       184 (0xb8)
    .maxstack  3
    .locals init (float64 V_0,
             float64 V_1,
             valuetype [System.Runtime]System.Nullable`1<float64> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentSpawn::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFrame>(bool)
    IL_001f:  call       instance void Game.ComponentSpawn::set_ComponentFrame(class Game.ComponentFrame)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_0030:  call       instance void Game.ComponentSpawn::set_ComponentCreature(class Game.ComponentCreature)
    IL_0035:  ldarg.0
    IL_0036:  ldarg.1
    IL_0037:  ldstr      "AutoDespawn"
    IL_003c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0041:  call       instance void Game.ComponentSpawn::set_AutoDespawn(bool)
    IL_0046:  ldarg.1
    IL_0047:  ldstr      "SpawnTime"
    IL_004c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_0051:  stloc.0
    IL_0052:  ldarg.1
    IL_0053:  ldstr      "DespawnTime"
    IL_0058:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_005d:  stloc.1
    IL_005e:  ldarg.0
    IL_005f:  ldc.r4     2.
    IL_0064:  call       instance void Game.ComponentSpawn::set_SpawnDuration(float32)
    IL_0069:  ldarg.0
    IL_006a:  ldc.r4     2.
    IL_006f:  call       instance void Game.ComponentSpawn::set_DespawnDuration(float32)
    IL_0074:  ldarg.0
    IL_0075:  ldloc.0
    IL_0076:  ldc.r8     0.0
    IL_007f:  blt.s      IL_0084

    IL_0081:  ldloc.0
    IL_0082:  br.s       IL_008f

    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.SubsystemGameInfo Game.ComponentSpawn::m_subsystemGameInfo
    IL_008a:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_008f:  call       instance void Game.ComponentSpawn::set_SpawnTime(float64)
    IL_0094:  ldarg.0
    IL_0095:  ldloc.1
    IL_0096:  ldc.r8     0.0
    IL_009f:  bge.s      IL_00ac

    IL_00a1:  ldloca.s   V_2
    IL_00a3:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_00a9:  ldloc.2
    IL_00aa:  br.s       IL_00b2

    IL_00ac:  ldloc.1
    IL_00ad:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00b2:  call       instance void Game.ComponentSpawn::set_DespawnTime(valuetype [System.Runtime]System.Nullable`1<float64>)
    IL_00b7:  ret
  } // end of method ComponentSpawn::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "SpawnTime"
    IL_0006:  ldarg.0
    IL_0007:  call       instance float64 Game.ComponentSpawn::get_SpawnTime()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0011:  ldarg.0
    IL_0012:  call       instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    IL_0017:  stloc.0
    IL_0018:  ldloca.s   V_0
    IL_001a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_001f:  brfalse.s  IL_003a

    IL_0021:  ldarg.1
    IL_0022:  ldstr      "DespawnTime"
    IL_0027:  ldarg.0
    IL_0028:  call       instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    IL_002d:  stloc.0
    IL_002e:  ldloca.s   V_0
    IL_0030:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0035:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_003a:  ret
  } // end of method ComponentSpawn::Save

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentSpawn::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       90 (0x5a)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_000e:  brfalse.s  IL_0059

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemGameInfo Game.ComponentSpawn::m_subsystemGameInfo
    IL_0016:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_001b:  ldarg.0
    IL_001c:  call       instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    IL_0021:  stloc.0
    IL_0022:  ldloca.s   V_0
    IL_0024:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0029:  ldarg.0
    IL_002a:  call       instance float32 Game.ComponentSpawn::get_DespawnDuration()
    IL_002f:  conv.r8
    IL_0030:  add
    IL_0031:  blt.un.s   IL_0059

    IL_0033:  ldarg.0
    IL_0034:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0039:  ldarg.0
    IL_003a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003f:  ldc.i4.1
    IL_0040:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity,
                                                                                            bool)
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentSpawn> Game.ComponentSpawn::Despawned
    IL_004b:  brfalse.s  IL_0059

    IL_004d:  ldarg.0
    IL_004e:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentSpawn> Game.ComponentSpawn::Despawned
    IL_0053:  ldarg.0
    IL_0054:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ComponentSpawn>::Invoke(!0)
    IL_0059:  ret
  } // end of method ComponentSpawn::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentSpawn::.ctor

  .event class [System.Runtime]System.Action`1<class Game.ComponentSpawn> Despawned
  {
    .addon instance void Game.ComponentSpawn::add_Despawned(class [System.Runtime]System.Action`1<class Game.ComponentSpawn>)
    .removeon instance void Game.ComponentSpawn::remove_Despawned(class [System.Runtime]System.Action`1<class Game.ComponentSpawn>)
  } // end of event ComponentSpawn::Despawned
  .property instance class Game.ComponentFrame
          ComponentFrame()
  {
    .get instance class Game.ComponentFrame Game.ComponentSpawn::get_ComponentFrame()
    .set instance void Game.ComponentSpawn::set_ComponentFrame(class Game.ComponentFrame)
  } // end of property ComponentSpawn::ComponentFrame
  .property instance class Game.ComponentCreature
          ComponentCreature()
  {
    .get instance class Game.ComponentCreature Game.ComponentSpawn::get_ComponentCreature()
    .set instance void Game.ComponentSpawn::set_ComponentCreature(class Game.ComponentCreature)
  } // end of property ComponentSpawn::ComponentCreature
  .property instance bool AutoDespawn()
  {
    .get instance bool Game.ComponentSpawn::get_AutoDespawn()
    .set instance void Game.ComponentSpawn::set_AutoDespawn(bool)
  } // end of property ComponentSpawn::AutoDespawn
  .property instance bool IsDespawning()
  {
    .get instance bool Game.ComponentSpawn::get_IsDespawning()
  } // end of property ComponentSpawn::IsDespawning
  .property instance float64 SpawnTime()
  {
    .get instance float64 Game.ComponentSpawn::get_SpawnTime()
    .set instance void Game.ComponentSpawn::set_SpawnTime(float64)
  } // end of property ComponentSpawn::SpawnTime
  .property instance valuetype [System.Runtime]System.Nullable`1<float64>
          DespawnTime()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    .set instance void Game.ComponentSpawn::set_DespawnTime(valuetype [System.Runtime]System.Nullable`1<float64>)
  } // end of property ComponentSpawn::DespawnTime
  .property instance float32 SpawnDuration()
  {
    .get instance float32 Game.ComponentSpawn::get_SpawnDuration()
    .set instance void Game.ComponentSpawn::set_SpawnDuration(float32)
  } // end of property ComponentSpawn::SpawnDuration
  .property instance float32 DespawnDuration()
  {
    .get instance float32 Game.ComponentSpawn::get_DespawnDuration()
    .set instance void Game.ComponentSpawn::set_DespawnDuration(float32)
  } // end of property ComponentSpawn::DespawnDuration
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentSpawn::get_UpdateOrder()
  } // end of property ComponentSpawn::UpdateOrder
} // end of class Game.ComponentSpawn