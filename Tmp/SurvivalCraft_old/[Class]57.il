.class public auto ansi beforefieldinit Game.ComponentHealth
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTimeOfDay m_subsystemTimeOfDay
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class Game.ComponentOnFire m_componentOnFire
  .field private float32 m_lastHealth
  .field private bool m_wasStanding
  .field private float32 m_redScreenFactor
  .field private class Game.Random m_random
  .field private class [System.Runtime]System.Action`1<class Game.ComponentCreature> Attacked
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<CauseOfDeath>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsInvulnerable>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Health>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<HealthChange>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.BreathingMode '<BreathingMode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Air>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<AirCapacity>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<CanStrand>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<AttackResilience>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<FallResilience>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<FireResilience>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<float64> '<DeathTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<CorpseDuration>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance void 
          add_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ComponentCreature> V_0,
             class [System.Runtime]System.Action`1<class Game.ComponentCreature> V_1,
             class [System.Runtime]System.Action`1<class Game.ComponentCreature> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentCreature> Game.ComponentHealth::Attacked
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ComponentCreature>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ComponentCreature> Game.ComponentHealth::Attacked
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ComponentCreature>>(!!0&,
                                                                                                                                                                  !!0,
                                                                                                                                                                  !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ComponentHealth::add_Attacked

  .method public hidebysig specialname instance void 
          remove_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ComponentCreature> V_0,
             class [System.Runtime]System.Action`1<class Game.ComponentCreature> V_1,
             class [System.Runtime]System.Action`1<class Game.ComponentCreature> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentCreature> Game.ComponentHealth::Attacked
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ComponentCreature>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ComponentCreature> Game.ComponentHealth::Attacked
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ComponentCreature>>(!!0&,
                                                                                                                                                                  !!0,
                                                                                                                                                                  !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ComponentHealth::remove_Attacked

  .method public hidebysig specialname instance string 
          get_CauseOfDeath() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentHealth::'<CauseOfDeath>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_CauseOfDeath

  .method private hidebysig specialname instance void 
          set_CauseOfDeath(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.ComponentHealth::'<CauseOfDeath>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_CauseOfDeath

  .method public hidebysig specialname instance bool 
          get_IsInvulnerable() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentHealth::'<IsInvulnerable>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_IsInvulnerable

  .method private hidebysig specialname instance void 
          set_IsInvulnerable(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentHealth::'<IsInvulnerable>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_IsInvulnerable

  .method public hidebysig specialname instance float32 
          get_Health() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHealth::'<Health>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_Health

  .method private hidebysig specialname instance void 
          set_Health(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentHealth::'<Health>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_Health

  .method public hidebysig specialname instance float32 
          get_HealthChange() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHealth::'<HealthChange>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_HealthChange

  .method private hidebysig specialname instance void 
          set_HealthChange(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentHealth::'<HealthChange>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_HealthChange

  .method public hidebysig specialname instance valuetype Game.BreathingMode 
          get_BreathingMode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.BreathingMode Game.ComponentHealth::'<BreathingMode>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_BreathingMode

  .method private hidebysig specialname instance void 
          set_BreathingMode(valuetype Game.BreathingMode 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.BreathingMode Game.ComponentHealth::'<BreathingMode>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_BreathingMode

  .method public hidebysig specialname instance float32 
          get_Air() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHealth::'<Air>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_Air

  .method private hidebysig specialname instance void 
          set_Air(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentHealth::'<Air>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_Air

  .method public hidebysig specialname instance float32 
          get_AirCapacity() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHealth::'<AirCapacity>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_AirCapacity

  .method public hidebysig specialname instance void 
          set_AirCapacity(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentHealth::'<AirCapacity>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_AirCapacity

  .method public hidebysig specialname instance bool 
          get_CanStrand() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentHealth::'<CanStrand>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_CanStrand

  .method public hidebysig specialname instance void 
          set_CanStrand(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentHealth::'<CanStrand>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_CanStrand

  .method public hidebysig specialname instance float32 
          get_AttackResilience() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHealth::'<AttackResilience>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_AttackResilience

  .method private hidebysig specialname instance void 
          set_AttackResilience(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentHealth::'<AttackResilience>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_AttackResilience

  .method public hidebysig specialname instance float32 
          get_FallResilience() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHealth::'<FallResilience>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_FallResilience

  .method private hidebysig specialname instance void 
          set_FallResilience(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentHealth::'<FallResilience>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_FallResilience

  .method public hidebysig specialname instance float32 
          get_FireResilience() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHealth::'<FireResilience>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_FireResilience

  .method private hidebysig specialname instance void 
          set_FireResilience(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentHealth::'<FireResilience>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_FireResilience

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<float64> 
          get_DeathTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentHealth::'<DeathTime>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_DeathTime

  .method private hidebysig specialname instance void 
          set_DeathTime(valuetype [System.Runtime]System.Nullable`1<float64> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentHealth::'<DeathTime>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_DeathTime

  .method public hidebysig specialname instance float32 
          get_CorpseDuration() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHealth::'<CorpseDuration>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentHealth::get_CorpseDuration

  .method private hidebysig specialname instance void 
          set_CorpseDuration(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentHealth::'<CorpseDuration>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentHealth::set_CorpseDuration

  .method public hidebysig instance void 
          Heal(float32 amount) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.0
    IL_0006:  ble.un.s   IL_0020

    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_000f:  ldarg.1
    IL_0010:  add
    IL_0011:  ldc.r4     1.
    IL_0016:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_001b:  call       instance void Game.ComponentHealth::set_Health(float32)
    IL_0020:  ret
  } // end of method ComponentHealth::Heal

  .method public hidebysig instance void 
          Injure(float32 amount,
                 class Game.ComponentCreature attacker,
                 bool ignoreInvulnerability,
                 string cause) cil managed
  {
    // 代码大小       590 (0x24e)
    .maxstack  7
    .locals init (valuetype Game.PlayerStats/DeathRecord V_0,
             class Game.ComponentPlayer V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_5)
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.0
    IL_0006:  ble.un     IL_024d

    IL_000b:  ldarg.3
    IL_000c:  brtrue.s   IL_0019

    IL_000e:  ldarg.0
    IL_000f:  call       instance bool Game.ComponentHealth::get_IsInvulnerable()
    IL_0014:  brtrue     IL_024d

    IL_0019:  ldarg.0
    IL_001a:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_001f:  ldc.r4     0.0
    IL_0024:  ble.un     IL_0236

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_002f:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0034:  brfalse.s  IL_0076

    IL_0036:  ldarg.2
    IL_0037:  brfalse.s  IL_0052

    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_003f:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0044:  dup
    IL_0045:  ldfld      int64 Game.PlayerStats::HitsReceived
    IL_004a:  ldc.i4.1
    IL_004b:  conv.i8
    IL_004c:  add
    IL_004d:  stfld      int64 Game.PlayerStats::HitsReceived
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0058:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_005d:  dup
    IL_005e:  ldfld      float64 Game.PlayerStats::TotalHealthLost
    IL_0063:  ldarg.1
    IL_0064:  ldarg.0
    IL_0065:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_006a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_006f:  conv.r8
    IL_0070:  add
    IL_0071:  stfld      float64 Game.PlayerStats::TotalHealthLost
    IL_0076:  ldarg.0
    IL_0077:  ldarg.0
    IL_0078:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_007d:  ldarg.1
    IL_007e:  sub
    IL_007f:  ldc.r4     0.0
    IL_0084:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0089:  call       instance void Game.ComponentHealth::set_Health(float32)
    IL_008e:  ldarg.0
    IL_008f:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0094:  ldc.r4     0.0
    IL_0099:  bgt.un     IL_0236

    IL_009e:  ldarg.0
    IL_009f:  ldarg.s    cause
    IL_00a1:  call       instance void Game.ComponentHealth::set_CauseOfDeath(string)
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_00ac:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_00b1:  brfalse.s  IL_00fe

    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_00b9:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_00be:  ldloca.s   V_0
    IL_00c0:  initobj    Game.PlayerStats/DeathRecord
    IL_00c6:  ldloca.s   V_0
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentHealth::m_subsystemTimeOfDay
    IL_00ce:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_Day()
    IL_00d3:  stfld      float64 Game.PlayerStats/DeathRecord::Day
    IL_00d8:  ldloca.s   V_0
    IL_00da:  ldarg.0
    IL_00db:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_00e0:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00e5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00ea:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerStats/DeathRecord::Location
    IL_00ef:  ldloca.s   V_0
    IL_00f1:  ldarg.s    cause
    IL_00f3:  stfld      string Game.PlayerStats/DeathRecord::Cause
    IL_00f8:  ldloc.0
    IL_00f9:  callvirt   instance void Game.PlayerStats::AddDeathRecord(valuetype Game.PlayerStats/DeathRecord)
    IL_00fe:  ldarg.2
    IL_00ff:  brfalse    IL_0236

    IL_0104:  ldarg.2
    IL_0105:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_010a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_010f:  stloc.1
    IL_0110:  ldloc.1
    IL_0111:  brfalse    IL_0236

    IL_0116:  ldarg.0
    IL_0117:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_011c:  brfalse.s  IL_0134

    IL_011e:  ldloc.1
    IL_011f:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0124:  dup
    IL_0125:  ldfld      int64 Game.PlayerStats::PlayerKills
    IL_012a:  ldc.i4.1
    IL_012b:  conv.i8
    IL_012c:  add
    IL_012d:  stfld      int64 Game.PlayerStats::PlayerKills
    IL_0132:  br.s       IL_01ac

    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_013a:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_013f:  ldc.i4.1
    IL_0140:  beq.s      IL_0150

    IL_0142:  ldarg.0
    IL_0143:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0148:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_014d:  ldc.i4.2
    IL_014e:  bne.un.s   IL_0166

    IL_0150:  ldloc.1
    IL_0151:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0156:  dup
    IL_0157:  ldfld      int64 Game.PlayerStats::LandCreatureKills
    IL_015c:  ldc.i4.1
    IL_015d:  conv.i8
    IL_015e:  add
    IL_015f:  stfld      int64 Game.PlayerStats::LandCreatureKills
    IL_0164:  br.s       IL_01ac

    IL_0166:  ldarg.0
    IL_0167:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_016c:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_0171:  ldc.i4.4
    IL_0172:  beq.s      IL_0182

    IL_0174:  ldarg.0
    IL_0175:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_017a:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_017f:  ldc.i4.8
    IL_0180:  bne.un.s   IL_0198

    IL_0182:  ldloc.1
    IL_0183:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0188:  dup
    IL_0189:  ldfld      int64 Game.PlayerStats::WaterCreatureKills
    IL_018e:  ldc.i4.1
    IL_018f:  conv.i8
    IL_0190:  add
    IL_0191:  stfld      int64 Game.PlayerStats::WaterCreatureKills
    IL_0196:  br.s       IL_01ac

    IL_0198:  ldloc.1
    IL_0199:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_019e:  dup
    IL_019f:  ldfld      int64 Game.PlayerStats::AirCreatureKills
    IL_01a4:  ldc.i4.1
    IL_01a5:  conv.i8
    IL_01a6:  add
    IL_01a7:  stfld      int64 Game.PlayerStats::AirCreatureKills
    IL_01ac:  ldarg.0
    IL_01ad:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_01b2:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_01b7:  callvirt   instance float32 Game.ComponentHealth::get_AttackResilience()
    IL_01bc:  ldc.r4     12.
    IL_01c1:  div
    IL_01c2:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_01c7:  conv.i4
    IL_01c8:  stloc.2
    IL_01c9:  ldc.i4.0
    IL_01ca:  stloc.3
    IL_01cb:  br.s       IL_0232

    IL_01cd:  ldarg.0
    IL_01ce:  ldfld      class Game.Random Game.ComponentHealth::m_random
    IL_01d3:  ldc.r4     2.5
    IL_01d8:  ldc.r4     3.5
    IL_01dd:  ldc.i4.1
    IL_01de:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_01e3:  stloc.s    V_4
    IL_01e5:  ldarg.0
    IL_01e6:  ldfld      class Game.SubsystemPickables Game.ComponentHealth::m_subsystemPickables
    IL_01eb:  ldc.i4     0xf8
    IL_01f0:  ldc.i4.1
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_01f7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01fc:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0201:  ldloc.s    V_4
    IL_0203:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0208:  ldc.r4     6.
    IL_020d:  ldloc.s    V_4
    IL_020f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0214:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0219:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_021e:  ldloca.s   V_5
    IL_0220:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0226:  ldloc.s    V_5
    IL_0228:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_022d:  pop
    IL_022e:  ldloc.3
    IL_022f:  ldc.i4.1
    IL_0230:  add
    IL_0231:  stloc.3
    IL_0232:  ldloc.3
    IL_0233:  ldloc.2
    IL_0234:  blt.s      IL_01cd

    IL_0236:  ldarg.2
    IL_0237:  brfalse.s  IL_024d

    IL_0239:  ldarg.0
    IL_023a:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentCreature> Game.ComponentHealth::Attacked
    IL_023f:  brfalse.s  IL_024d

    IL_0241:  ldarg.0
    IL_0242:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentCreature> Game.ComponentHealth::Attacked
    IL_0247:  ldarg.2
    IL_0248:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ComponentCreature>::Invoke(!0)
    IL_024d:  ret
  } // end of method ComponentHealth::Injure

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentHealth::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       1865 (0x749)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             float32 V_2,
             int32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [System.Runtime]System.Nullable`1<int32> V_6,
             float32 V_7,
             float32 V_8,
             int32 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             float32 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory> V_13,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IInventory> V_14,
             valuetype [System.Runtime]System.Nullable`1<float64> V_15,
             float64 V_16,
             float64 V_17,
             valuetype [System.Runtime]System.Nullable`1<float64> V_18,
             valuetype [System.Runtime]System.Nullable`1<float64> V_19)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0017:  ldc.r4     0.0
    IL_001c:  ble.un     IL_00c8

    IL_0021:  ldarg.0
    IL_0022:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0027:  ldc.r4     1.
    IL_002c:  bge.un     IL_00c8

    IL_0031:  ldc.r4     0.0
    IL_0036:  stloc.2
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_003d:  brfalse.s  IL_00af

    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_0045:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_004a:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_004f:  ldc.i4.1
    IL_0050:  bne.un.s   IL_005a

    IL_0052:  ldc.r4     1.6666668e-002
    IL_0057:  stloc.2
    IL_0058:  br.s       IL_00b5

    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0060:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0065:  callvirt   instance float32 Game.ComponentSleep::get_SleepFactor()
    IL_006a:  ldc.r4     1.
    IL_006f:  bne.un.s   IL_0090

    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0077:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_007c:  callvirt   instance float32 Game.ComponentVitalStats::get_Food()
    IL_0081:  ldc.r4     0.0
    IL_0086:  ble.un.s   IL_0090

    IL_0088:  ldc.r4     1.6666667e-003
    IL_008d:  stloc.2
    IL_008e:  br.s       IL_00b5

    IL_0090:  ldarg.0
    IL_0091:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0096:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_009b:  callvirt   instance float32 Game.ComponentVitalStats::get_Food()
    IL_00a0:  ldc.r4     0.5
    IL_00a5:  ble.un.s   IL_00b5

    IL_00a7:  ldc.r4     1.1111111e-003
    IL_00ac:  stloc.2
    IL_00ad:  br.s       IL_00b5

    IL_00af:  ldc.r4     1.1111111e-003
    IL_00b4:  stloc.2
    IL_00b5:  ldarg.0
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_00bc:  callvirt   instance float32 Game.SubsystemGameInfo::get_TotalElapsedGameTimeDelta()
    IL_00c1:  ldloc.2
    IL_00c2:  mul
    IL_00c3:  call       instance void Game.ComponentHealth::Heal(float32)
    IL_00c8:  ldarg.0
    IL_00c9:  call       instance valuetype Game.BreathingMode Game.ComponentHealth::get_BreathingMode()
    IL_00ce:  brtrue     IL_0158

    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.SubsystemTerrain Game.ComponentHealth::m_subsystemTerrain
    IL_00d9:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00de:  ldloc.0
    IL_00df:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00e4:  call       int32 Game.Terrain::ToCell(float32)
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_00ef:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00f4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_00f9:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00fe:  call       int32 Game.Terrain::ToCell(float32)
    IL_0103:  ldloc.0
    IL_0104:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0109:  call       int32 Game.Terrain::ToCell(float32)
    IL_010e:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0113:  stloc.3
    IL_0114:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0119:  ldloc.3
    IL_011a:  ldelem.ref
    IL_011b:  isinst     Game.FluidBlock
    IL_0120:  brtrue.s   IL_012f

    IL_0122:  ldloc.0
    IL_0123:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0128:  ldc.r4     131.
    IL_012d:  ble.un.s   IL_014b

    IL_012f:  ldarg.0
    IL_0130:  ldarg.0
    IL_0131:  call       instance float32 Game.ComponentHealth::get_Air()
    IL_0136:  ldarg.1
    IL_0137:  ldarg.0
    IL_0138:  call       instance float32 Game.ComponentHealth::get_AirCapacity()
    IL_013d:  div
    IL_013e:  sub
    IL_013f:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0144:  call       instance void Game.ComponentHealth::set_Air(float32)
    IL_0149:  br.s       IL_019f

    IL_014b:  ldarg.0
    IL_014c:  ldc.r4     1.
    IL_0151:  call       instance void Game.ComponentHealth::set_Air(float32)
    IL_0156:  br.s       IL_019f

    IL_0158:  ldarg.0
    IL_0159:  call       instance valuetype Game.BreathingMode Game.ComponentHealth::get_BreathingMode()
    IL_015e:  ldc.i4.1
    IL_015f:  bne.un.s   IL_019f

    IL_0161:  ldarg.0
    IL_0162:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0167:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_016c:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0171:  ldc.r4     0.25
    IL_0176:  ble.un.s   IL_0185

    IL_0178:  ldarg.0
    IL_0179:  ldc.r4     1.
    IL_017e:  call       instance void Game.ComponentHealth::set_Air(float32)
    IL_0183:  br.s       IL_019f

    IL_0185:  ldarg.0
    IL_0186:  ldarg.0
    IL_0187:  call       instance float32 Game.ComponentHealth::get_Air()
    IL_018c:  ldarg.1
    IL_018d:  ldarg.0
    IL_018e:  call       instance float32 Game.ComponentHealth::get_AirCapacity()
    IL_0193:  div
    IL_0194:  sub
    IL_0195:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_019a:  call       instance void Game.ComponentHealth::set_Air(float32)
    IL_019f:  ldarg.0
    IL_01a0:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_01a5:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01aa:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_01af:  ldc.r4     0.0
    IL_01b4:  ble.un     IL_0248

    IL_01b9:  ldarg.0
    IL_01ba:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_01bf:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01c4:  callvirt   instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_01c9:  isinst     Game.MagmaBlock
    IL_01ce:  brfalse.s  IL_0248

    IL_01d0:  ldarg.0
    IL_01d1:  ldc.r4     2.
    IL_01d6:  ldarg.0
    IL_01d7:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_01dc:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01e1:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_01e6:  mul
    IL_01e7:  ldarg.1
    IL_01e8:  mul
    IL_01e9:  ldnull
    IL_01ea:  ldc.i4.0
    IL_01eb:  ldstr      "Burned by magma"
    IL_01f0:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_01f5:  ldc.r4     1.1
    IL_01fa:  ldc.r4     0.1
    IL_01ff:  ldc.r8     12.
    IL_0208:  ldarg.0
    IL_0209:  ldfld      class Game.SubsystemTime Game.ComponentHealth::m_subsystemTime
    IL_020e:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0213:  mul
    IL_0214:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_0219:  conv.r4
    IL_021a:  mul
    IL_021b:  add
    IL_021c:  stloc.s    V_4
    IL_021e:  ldarg.0
    IL_021f:  ldarg.0
    IL_0220:  ldfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_0225:  ldloc.s    V_4
    IL_0227:  ldc.r4     1.5
    IL_022c:  mul
    IL_022d:  ldarg.0
    IL_022e:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0233:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0238:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_023d:  mul
    IL_023e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0243:  stfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_0248:  ldarg.0
    IL_0249:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_024e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0253:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0258:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_025d:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0262:  stloc.1
    IL_0263:  ldarg.0
    IL_0264:  ldfld      bool Game.ComponentHealth::m_wasStanding
    IL_0269:  brtrue.s   IL_02bf

    IL_026b:  ldloc.1
    IL_026c:  ldarg.0
    IL_026d:  call       instance float32 Game.ComponentHealth::get_FallResilience()
    IL_0272:  ble.un.s   IL_02bf

    IL_0274:  ldloc.1
    IL_0275:  ldarg.0
    IL_0276:  call       instance float32 Game.ComponentHealth::get_FallResilience()
    IL_027b:  sub
    IL_027c:  ldc.r4     0.0
    IL_0281:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0286:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_028b:  ldc.r4     15.
    IL_0290:  div
    IL_0291:  stloc.s    V_5
    IL_0293:  ldarg.0
    IL_0294:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0299:  brfalse.s  IL_02b0

    IL_029b:  ldloc.s    V_5
    IL_029d:  ldarg.0
    IL_029e:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_02a3:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_02a8:  callvirt   instance float32 Game.ComponentLevel::get_ResilienceFactor()
    IL_02ad:  div
    IL_02ae:  stloc.s    V_5
    IL_02b0:  ldarg.0
    IL_02b1:  ldloc.s    V_5
    IL_02b3:  ldnull
    IL_02b4:  ldc.i4.0
    IL_02b5:  ldstr      "Impact with the ground"
    IL_02ba:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_02bf:  ldarg.0
    IL_02c0:  ldarg.0
    IL_02c1:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_02c6:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02cb:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_02d0:  stloc.s    V_6
    IL_02d2:  ldloca.s   V_6
    IL_02d4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_02d9:  brtrue.s   IL_02f0

    IL_02db:  ldarg.0
    IL_02dc:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_02e1:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02e6:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_02eb:  ldnull
    IL_02ec:  cgt.un
    IL_02ee:  br.s       IL_02f1

    IL_02f0:  ldc.i4.1
    IL_02f1:  stfld      bool Game.ComponentHealth::m_wasStanding
    IL_02f6:  ldloc.0
    IL_02f7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02fc:  ldc.r4     0.0
    IL_0301:  blt.s      IL_0310

    IL_0303:  ldloc.0
    IL_0304:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0309:  ldc.r4     168.
    IL_030e:  ble.un.s   IL_035e

    IL_0310:  ldarg.0
    IL_0311:  ldfld      class Game.SubsystemTime Game.ComponentHealth::m_subsystemTime
    IL_0316:  ldc.r8     2.
    IL_031f:  ldc.r8     0.0
    IL_0328:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_032d:  brfalse.s  IL_035e

    IL_032f:  ldarg.0
    IL_0330:  ldc.r4     0.1
    IL_0335:  ldnull
    IL_0336:  ldc.i4.1
    IL_0337:  ldstr      "Left the world"
    IL_033c:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0341:  ldarg.0
    IL_0342:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0347:  dup
    IL_0348:  brtrue.s   IL_034d

    IL_034a:  pop
    IL_034b:  br.s       IL_035e

    IL_034d:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0352:  ldstr      "Come back!"
    IL_0357:  ldc.i4.1
    IL_0358:  ldc.i4.0
    IL_0359:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_035e:  ldarg.0
    IL_035f:  ldfld      class Game.SubsystemTime Game.ComponentHealth::m_subsystemTime
    IL_0364:  ldc.r8     1.
    IL_036d:  ldc.r8     0.0
    IL_0376:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_037b:  dup
    IL_037c:  brfalse.s  IL_03be

    IL_037e:  ldarg.0
    IL_037f:  call       instance float32 Game.ComponentHealth::get_Air()
    IL_0384:  ldc.r4     0.0
    IL_0389:  bne.un.s   IL_03be

    IL_038b:  ldc.r4     0.12
    IL_0390:  stloc.s    V_7
    IL_0392:  ldarg.0
    IL_0393:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0398:  brfalse.s  IL_03af

    IL_039a:  ldloc.s    V_7
    IL_039c:  ldarg.0
    IL_039d:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_03a2:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_03a7:  callvirt   instance float32 Game.ComponentLevel::get_ResilienceFactor()
    IL_03ac:  div
    IL_03ad:  stloc.s    V_7
    IL_03af:  ldarg.0
    IL_03b0:  ldloc.s    V_7
    IL_03b2:  ldnull
    IL_03b3:  ldc.i4.0
    IL_03b4:  ldstr      "Suffocated"
    IL_03b9:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_03be:  dup
    IL_03bf:  brfalse.s  IL_041f

    IL_03c1:  ldarg.0
    IL_03c2:  ldfld      class Game.ComponentOnFire Game.ComponentHealth::m_componentOnFire
    IL_03c7:  callvirt   instance bool Game.ComponentOnFire::get_IsOnFire()
    IL_03cc:  brtrue.s   IL_03db

    IL_03ce:  ldarg.0
    IL_03cf:  ldfld      class Game.ComponentOnFire Game.ComponentHealth::m_componentOnFire
    IL_03d4:  callvirt   instance bool Game.ComponentOnFire::get_TouchesFire()
    IL_03d9:  brfalse.s  IL_041f

    IL_03db:  ldc.r4     1.
    IL_03e0:  ldarg.0
    IL_03e1:  call       instance float32 Game.ComponentHealth::get_FireResilience()
    IL_03e6:  div
    IL_03e7:  stloc.s    V_8
    IL_03e9:  ldarg.0
    IL_03ea:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_03ef:  brfalse.s  IL_0406

    IL_03f1:  ldloc.s    V_8
    IL_03f3:  ldarg.0
    IL_03f4:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_03f9:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_03fe:  callvirt   instance float32 Game.ComponentLevel::get_ResilienceFactor()
    IL_0403:  div
    IL_0404:  stloc.s    V_8
    IL_0406:  ldarg.0
    IL_0407:  ldloc.s    V_8
    IL_0409:  ldarg.0
    IL_040a:  ldfld      class Game.ComponentOnFire Game.ComponentHealth::m_componentOnFire
    IL_040f:  callvirt   instance class Game.ComponentCreature Game.ComponentOnFire::get_Attacker()
    IL_0414:  ldc.i4.0
    IL_0415:  ldstr      "Burned to death"
    IL_041a:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_041f:  brfalse.s  IL_0493

    IL_0421:  ldarg.0
    IL_0422:  call       instance bool Game.ComponentHealth::get_CanStrand()
    IL_0427:  brfalse.s  IL_0493

    IL_0429:  ldarg.0
    IL_042a:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_042f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0434:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0439:  ldc.r4     0.25
    IL_043e:  bge.un.s   IL_0493

    IL_0440:  ldarg.0
    IL_0441:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0446:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_044b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0450:  stloc.s    V_6
    IL_0452:  ldc.i4.0
    IL_0453:  stloc.s    V_9
    IL_0455:  ldloca.s   V_6
    IL_0457:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_045c:  ldloc.s    V_9
    IL_045e:  beq.s      IL_0463

    IL_0460:  ldc.i4.1
    IL_0461:  br.s       IL_046d

    IL_0463:  ldloca.s   V_6
    IL_0465:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_046a:  ldc.i4.0
    IL_046b:  ceq
    IL_046d:  brtrue.s   IL_0481

    IL_046f:  ldarg.0
    IL_0470:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0475:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_047a:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_047f:  brfalse.s  IL_0493

    IL_0481:  ldarg.0
    IL_0482:  ldc.r4     5.0000001e-002
    IL_0487:  ldnull
    IL_0488:  ldc.i4.0
    IL_0489:  ldstr      "Stranded on land"
    IL_048e:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0493:  ldarg.0
    IL_0494:  ldarg.0
    IL_0495:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_049a:  ldarg.0
    IL_049b:  ldfld      float32 Game.ComponentHealth::m_lastHealth
    IL_04a0:  sub
    IL_04a1:  call       instance void Game.ComponentHealth::set_HealthChange(float32)
    IL_04a6:  ldarg.0
    IL_04a7:  ldarg.0
    IL_04a8:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_04ad:  stfld      float32 Game.ComponentHealth::m_lastHealth
    IL_04b2:  ldarg.0
    IL_04b3:  ldfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_04b8:  ldc.r4     9.9999998e-003
    IL_04bd:  ble.un.s   IL_04d9

    IL_04bf:  ldarg.0
    IL_04c0:  ldarg.0
    IL_04c1:  ldfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_04c6:  ldc.r4     0.2
    IL_04cb:  ldarg.1
    IL_04cc:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_04d1:  mul
    IL_04d2:  stfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_04d7:  br.s       IL_04e4

    IL_04d9:  ldarg.0
    IL_04da:  ldc.r4     0.0
    IL_04df:  stfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_04e4:  ldarg.0
    IL_04e5:  call       instance float32 Game.ComponentHealth::get_HealthChange()
    IL_04ea:  ldc.r4     0.0
    IL_04ef:  bge.un.s   IL_054b

    IL_04f1:  ldarg.0
    IL_04f2:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_04f7:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_04fc:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_0501:  ldarg.0
    IL_0502:  ldarg.0
    IL_0503:  ldfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_0508:  ldc.r4     -4.
    IL_050d:  ldarg.0
    IL_050e:  call       instance float32 Game.ComponentHealth::get_HealthChange()
    IL_0513:  mul
    IL_0514:  add
    IL_0515:  stfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_051a:  ldarg.0
    IL_051b:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0520:  dup
    IL_0521:  brtrue.s   IL_0526

    IL_0523:  pop
    IL_0524:  br.s       IL_054b

    IL_0526:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_052b:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_HealthBarWidget()
    IL_0530:  ldarg.0
    IL_0531:  call       instance float32 Game.ComponentHealth::get_HealthChange()
    IL_0536:  neg
    IL_0537:  ldc.r4     30.
    IL_053c:  mul
    IL_053d:  conv.i4
    IL_053e:  ldc.i4.0
    IL_053f:  ldc.i4.s   10
    IL_0541:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0546:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_054b:  ldarg.0
    IL_054c:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0551:  brfalse.s  IL_057e

    IL_0553:  ldarg.0
    IL_0554:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0559:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_055e:  ldarg.0
    IL_055f:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0564:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_0569:  callvirt   instance float32 Game.ComponentScreenOverlays::get_RedoutFactor()
    IL_056e:  ldarg.0
    IL_056f:  ldfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_0574:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0579:  callvirt   instance void Game.ComponentScreenOverlays::set_RedoutFactor(float32)
    IL_057e:  ldarg.0
    IL_057f:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0584:  brfalse.s  IL_05a1

    IL_0586:  ldarg.0
    IL_0587:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_058c:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0591:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_HealthBarWidget()
    IL_0596:  ldarg.0
    IL_0597:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_059c:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_05a1:  ldarg.0
    IL_05a2:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_05a7:  ldc.r4     0.0
    IL_05ac:  bne.un     IL_06c3

    IL_05b1:  ldarg.0
    IL_05b2:  call       instance float32 Game.ComponentHealth::get_HealthChange()
    IL_05b7:  ldc.r4     0.0
    IL_05bc:  bge.un     IL_06c3

    IL_05c1:  ldarg.0
    IL_05c2:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_05c7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_05cc:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_05d1:  ldc.r4     0.0
    IL_05d6:  ldarg.0
    IL_05d7:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_05dc:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_05e1:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_05e6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05eb:  ldc.r4     2.
    IL_05f0:  div
    IL_05f1:  ldc.r4     0.0
    IL_05f6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_05fb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0600:  stloc.s    V_10
    IL_0602:  ldarg.0
    IL_0603:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0608:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_060d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0612:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0617:  stloc.s    V_11
    IL_0619:  ldarg.0
    IL_061a:  ldfld      class Game.SubsystemParticles Game.ComponentHealth::m_subsystemParticles
    IL_061f:  ldarg.0
    IL_0620:  ldfld      class Game.SubsystemTerrain Game.ComponentHealth::m_subsystemTerrain
    IL_0625:  ldloc.s    V_10
    IL_0627:  ldloc.s    V_11
    IL_0629:  newobj     instance void Game.KillParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32)
    IL_062e:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0633:  ldarg.0
    IL_0634:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0639:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_063e:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0643:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0648:  ldarg.0
    IL_0649:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_064e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0653:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0658:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_065d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0662:  ldc.r4     2.
    IL_0667:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_066c:  stloc.s    V_12
    IL_066e:  ldarg.0
    IL_066f:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0674:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IInventory>()
    IL_0679:  stloc.s    V_14
    IL_067b:  ldloca.s   V_14
    IL_067d:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IInventory>::GetEnumerator()
    IL_0682:  stloc.s    V_13
    .try
    {
      IL_0684:  br.s       IL_0694

      IL_0686:  ldloca.s   V_13
      IL_0688:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>::get_Current()
      IL_068d:  ldloc.s    V_12
      IL_068f:  callvirt   instance void Game.IInventory::DropAllItems(valuetype [Engine]Engine.Vector3)
      IL_0694:  ldloca.s   V_13
      IL_0696:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>::MoveNext()
      IL_069b:  brtrue.s   IL_0686

      IL_069d:  leave.s    IL_06ad

    }  // end .try
    finally
    {
      IL_069f:  ldloca.s   V_13
      IL_06a1:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>
      IL_06a7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_06ac:  endfinally
    }  // end handler
    IL_06ad:  ldarg.0
    IL_06ae:  ldarg.0
    IL_06af:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_06b4:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_06b9:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_06be:  call       instance void Game.ComponentHealth::set_DeathTime(valuetype [System.Runtime]System.Nullable`1<float64>)
    IL_06c3:  ldarg.0
    IL_06c4:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_06c9:  ldc.r4     0.0
    IL_06ce:  bgt.un.s   IL_0748

    IL_06d0:  ldarg.0
    IL_06d1:  call       instance float32 Game.ComponentHealth::get_CorpseDuration()
    IL_06d6:  ldc.r4     0.0
    IL_06db:  ble.un.s   IL_0748

    IL_06dd:  ldarg.0
    IL_06de:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_06e3:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_06e8:  stloc.s    V_17
    IL_06ea:  ldarg.0
    IL_06eb:  call       instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentHealth::get_DeathTime()
    IL_06f0:  stloc.s    V_18
    IL_06f2:  ldloca.s   V_18
    IL_06f4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_06f9:  brtrue.s   IL_0707

    IL_06fb:  ldloca.s   V_19
    IL_06fd:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_0703:  ldloc.s    V_19
    IL_0705:  br.s       IL_0716

    IL_0707:  ldloc.s    V_17
    IL_0709:  ldloca.s   V_18
    IL_070b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_0710:  sub
    IL_0711:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0716:  stloc.s    V_15
    IL_0718:  ldarg.0
    IL_0719:  call       instance float32 Game.ComponentHealth::get_CorpseDuration()
    IL_071e:  conv.r8
    IL_071f:  stloc.s    V_16
    IL_0721:  ldloca.s   V_15
    IL_0723:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_0728:  ldloc.s    V_16
    IL_072a:  bgt.s      IL_072f

    IL_072c:  ldc.i4.0
    IL_072d:  br.s       IL_0736

    IL_072f:  ldloca.s   V_15
    IL_0731:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0736:  brfalse.s  IL_0748

    IL_0738:  ldarg.0
    IL_0739:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_073e:  callvirt   instance class Game.ComponentSpawn Game.ComponentCreature::get_ComponentSpawn()
    IL_0743:  callvirt   instance void Game.ComponentSpawn::Despawn()
    IL_0748:  ret
  } // end of method ComponentHealth::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       417 (0x1a1)
    .maxstack  3
    .locals init (float64 V_0,
             valuetype [System.Runtime]System.Nullable`1<float64> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentHealth::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTimeOfDay>(bool)
    IL_001f:  stfld      class Game.SubsystemTimeOfDay Game.ComponentHealth::m_subsystemTimeOfDay
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0031:  stfld      class Game.SubsystemTerrain Game.ComponentHealth::m_subsystemTerrain
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0043:  stfld      class Game.SubsystemParticles Game.ComponentHealth::m_subsystemParticles
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0055:  stfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0067:  stfld      class Game.SubsystemPickables Game.ComponentHealth::m_subsystemPickables
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0079:  stfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0085:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_008a:  stfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_008f:  ldarg.0
    IL_0090:  ldarg.0
    IL_0091:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0096:  ldc.i4.1
    IL_0097:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOnFire>(bool)
    IL_009c:  stfld      class Game.ComponentOnFire Game.ComponentHealth::m_componentOnFire
    IL_00a1:  ldarg.0
    IL_00a2:  ldarg.1
    IL_00a3:  ldstr      "AttackResilience"
    IL_00a8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00ad:  call       instance void Game.ComponentHealth::set_AttackResilience(float32)
    IL_00b2:  ldarg.0
    IL_00b3:  ldarg.1
    IL_00b4:  ldstr      "FallResilience"
    IL_00b9:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00be:  call       instance void Game.ComponentHealth::set_FallResilience(float32)
    IL_00c3:  ldarg.0
    IL_00c4:  ldarg.1
    IL_00c5:  ldstr      "FireResilience"
    IL_00ca:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00cf:  call       instance void Game.ComponentHealth::set_FireResilience(float32)
    IL_00d4:  ldarg.0
    IL_00d5:  ldarg.1
    IL_00d6:  ldstr      "CorpseDuration"
    IL_00db:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00e0:  call       instance void Game.ComponentHealth::set_CorpseDuration(float32)
    IL_00e5:  ldarg.0
    IL_00e6:  ldarg.1
    IL_00e7:  ldstr      "BreathingMode"
    IL_00ec:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.BreathingMode>(string)
    IL_00f1:  call       instance void Game.ComponentHealth::set_BreathingMode(valuetype Game.BreathingMode)
    IL_00f6:  ldarg.0
    IL_00f7:  ldarg.1
    IL_00f8:  ldstr      "CanStrand"
    IL_00fd:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0102:  call       instance void Game.ComponentHealth::set_CanStrand(bool)
    IL_0107:  ldarg.0
    IL_0108:  ldarg.1
    IL_0109:  ldstr      "Health"
    IL_010e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0113:  call       instance void Game.ComponentHealth::set_Health(float32)
    IL_0118:  ldarg.0
    IL_0119:  ldarg.1
    IL_011a:  ldstr      "Air"
    IL_011f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0124:  call       instance void Game.ComponentHealth::set_Air(float32)
    IL_0129:  ldarg.0
    IL_012a:  ldarg.1
    IL_012b:  ldstr      "AirCapacity"
    IL_0130:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0135:  call       instance void Game.ComponentHealth::set_AirCapacity(float32)
    IL_013a:  ldarg.1
    IL_013b:  ldstr      "DeathTime"
    IL_0140:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_0145:  stloc.0
    IL_0146:  ldarg.0
    IL_0147:  ldloc.0
    IL_0148:  ldc.r8     0.0
    IL_0151:  bge.s      IL_015e

    IL_0153:  ldloca.s   V_1
    IL_0155:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_015b:  ldloc.1
    IL_015c:  br.s       IL_0164

    IL_015e:  ldloc.0
    IL_015f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0164:  call       instance void Game.ComponentHealth::set_DeathTime(valuetype [System.Runtime]System.Nullable`1<float64>)
    IL_0169:  ldarg.0
    IL_016a:  ldarg.1
    IL_016b:  ldstr      "CauseOfDeath"
    IL_0170:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0175:  call       instance void Game.ComponentHealth::set_CauseOfDeath(string)
    IL_017a:  ldarg.0
    IL_017b:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_0180:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0185:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_018a:  brtrue.s   IL_01a0

    IL_018c:  ldarg.0
    IL_018d:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0192:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0197:  brfalse.s  IL_01a0

    IL_0199:  ldarg.0
    IL_019a:  ldc.i4.1
    IL_019b:  call       instance void Game.ComponentHealth::set_IsInvulnerable(bool)
    IL_01a0:  ret
  } // end of method ComponentHealth::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Health"
    IL_0006:  ldarg.0
    IL_0007:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "Air"
    IL_0017:  ldarg.0
    IL_0018:  call       instance float32 Game.ComponentHealth::get_Air()
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0022:  ldarg.0
    IL_0023:  call       instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentHealth::get_DeathTime()
    IL_0028:  stloc.0
    IL_0029:  ldloca.s   V_0
    IL_002b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0030:  brfalse.s  IL_0043

    IL_0032:  ldarg.1
    IL_0033:  ldstr      "DeathTime"
    IL_0038:  ldarg.0
    IL_0039:  call       instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentHealth::get_DeathTime()
    IL_003e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [System.Runtime]System.Nullable`1<float64>>(string,
                                                                                                                                                        !!0)
    IL_0043:  ldarg.0
    IL_0044:  call       instance string Game.ComponentHealth::get_CauseOfDeath()
    IL_0049:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_004e:  brtrue.s   IL_0061

    IL_0050:  ldarg.1
    IL_0051:  ldstr      "CauseOfDeath"
    IL_0056:  ldarg.0
    IL_0057:  call       instance string Game.ComponentHealth::get_CauseOfDeath()
    IL_005c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0061:  ret
  } // end of method ComponentHealth::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentHealth::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentHealth::.ctor

  .event class [System.Runtime]System.Action`1<class Game.ComponentCreature> Attacked
  {
    .addon instance void Game.ComponentHealth::add_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature>)
    .removeon instance void Game.ComponentHealth::remove_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature>)
  } // end of event ComponentHealth::Attacked
  .property instance string CauseOfDeath()
  {
    .get instance string Game.ComponentHealth::get_CauseOfDeath()
    .set instance void Game.ComponentHealth::set_CauseOfDeath(string)
  } // end of property ComponentHealth::CauseOfDeath
  .property instance bool IsInvulnerable()
  {
    .get instance bool Game.ComponentHealth::get_IsInvulnerable()
    .set instance void Game.ComponentHealth::set_IsInvulnerable(bool)
  } // end of property ComponentHealth::IsInvulnerable
  .property instance float32 Health()
  {
    .get instance float32 Game.ComponentHealth::get_Health()
    .set instance void Game.ComponentHealth::set_Health(float32)
  } // end of property ComponentHealth::Health
  .property instance float32 HealthChange()
  {
    .get instance float32 Game.ComponentHealth::get_HealthChange()
    .set instance void Game.ComponentHealth::set_HealthChange(float32)
  } // end of property ComponentHealth::HealthChange
  .property instance valuetype Game.BreathingMode
          BreathingMode()
  {
    .get instance valuetype Game.BreathingMode Game.ComponentHealth::get_BreathingMode()
    .set instance void Game.ComponentHealth::set_BreathingMode(valuetype Game.BreathingMode)
  } // end of property ComponentHealth::BreathingMode
  .property instance float32 Air()
  {
    .get instance float32 Game.ComponentHealth::get_Air()
    .set instance void Game.ComponentHealth::set_Air(float32)
  } // end of property ComponentHealth::Air
  .property instance float32 AirCapacity()
  {
    .get instance float32 Game.ComponentHealth::get_AirCapacity()
    .set instance void Game.ComponentHealth::set_AirCapacity(float32)
  } // end of property ComponentHealth::AirCapacity
  .property instance bool CanStrand()
  {
    .get instance bool Game.ComponentHealth::get_CanStrand()
    .set instance void Game.ComponentHealth::set_CanStrand(bool)
  } // end of property ComponentHealth::CanStrand
  .property instance float32 AttackResilience()
  {
    .get instance float32 Game.ComponentHealth::get_AttackResilience()
    .set instance void Game.ComponentHealth::set_AttackResilience(float32)
  } // end of property ComponentHealth::AttackResilience
  .property instance float32 FallResilience()
  {
    .get instance float32 Game.ComponentHealth::get_FallResilience()
    .set instance void Game.ComponentHealth::set_FallResilience(float32)
  } // end of property ComponentHealth::FallResilience
  .property instance float32 FireResilience()
  {
    .get instance float32 Game.ComponentHealth::get_FireResilience()
    .set instance void Game.ComponentHealth::set_FireResilience(float32)
  } // end of property ComponentHealth::FireResilience
  .property instance valuetype [System.Runtime]System.Nullable`1<float64>
          DeathTime()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentHealth::get_DeathTime()
    .set instance void Game.ComponentHealth::set_DeathTime(valuetype [System.Runtime]System.Nullable`1<float64>)
  } // end of property ComponentHealth::DeathTime
  .property instance float32 CorpseDuration()
  {
    .get instance float32 Game.ComponentHealth::get_CorpseDuration()
    .set instance void Game.ComponentHealth::set_CorpseDuration(float32)
  } // end of property ComponentHealth::CorpseDuration
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentHealth::get_UpdateOrder()
  } // end of property ComponentHealth::UpdateOrder
} // end of class Game.ComponentHealth