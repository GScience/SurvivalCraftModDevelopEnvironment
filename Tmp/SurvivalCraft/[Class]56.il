.class public auto ansi beforefieldinit Game.ComponentHealth
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemPlayer m_subsystemPlayer
  .field private class Game.SubsystemCamera m_subsystemCamera
  .field private class Game.SubsystemGui m_subsystemGui
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemScreenOverlays m_subsystemScreenOverlays
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class Game.ComponentOnFire m_componentOnFire
  .field private float32 m_lastHealth
  .field private bool m_wasStanding
  .field private float32 m_redScreenFactor
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
    // 代码大小       184 (0xb8)
    .maxstack  4
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.0
    IL_0006:  ble.un     IL_00b7

    IL_000b:  ldarg.3
    IL_000c:  brtrue.s   IL_0019

    IL_000e:  ldarg.0
    IL_000f:  call       instance bool Game.ComponentHealth::get_IsInvulnerable()
    IL_0014:  brtrue     IL_00b7

    IL_0019:  ldarg.0
    IL_001a:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_001f:  ldc.r4     0.0
    IL_0024:  ble.un.s   IL_00a0

    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_002c:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0031:  brfalse.s  IL_0073

    IL_0033:  ldarg.2
    IL_0034:  brfalse.s  IL_004f

    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_003c:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0041:  dup
    IL_0042:  ldfld      int64 Game.PlayerStats::HitsReceived
    IL_0047:  ldc.i4.1
    IL_0048:  conv.i8
    IL_0049:  add
    IL_004a:  stfld      int64 Game.PlayerStats::HitsReceived
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0055:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_005a:  dup
    IL_005b:  ldfld      float64 Game.PlayerStats::TotalHealthLost
    IL_0060:  ldarg.1
    IL_0061:  ldarg.0
    IL_0062:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0067:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_006c:  conv.r8
    IL_006d:  add
    IL_006e:  stfld      float64 Game.PlayerStats::TotalHealthLost
    IL_0073:  ldarg.0
    IL_0074:  ldarg.0
    IL_0075:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_007a:  ldarg.1
    IL_007b:  sub
    IL_007c:  ldc.r4     0.0
    IL_0081:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0086:  call       instance void Game.ComponentHealth::set_Health(float32)
    IL_008b:  ldarg.0
    IL_008c:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0091:  ldc.r4     0.0
    IL_0096:  bgt.un.s   IL_00a0

    IL_0098:  ldarg.0
    IL_0099:  ldarg.s    cause
    IL_009b:  call       instance void Game.ComponentHealth::set_CauseOfDeath(string)
    IL_00a0:  ldarg.2
    IL_00a1:  brfalse.s  IL_00b7

    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentCreature> Game.ComponentHealth::Attacked
    IL_00a9:  brfalse.s  IL_00b7

    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentCreature> Game.ComponentHealth::Attacked
    IL_00b1:  ldarg.2
    IL_00b2:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ComponentCreature>::Invoke(!0)
    IL_00b7:  ret
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
    // 代码大小       1776 (0x6f0)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             float32 V_2,
             int32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [System.Runtime]System.Nullable`1<int32> V_6,
             int32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             float32 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory> V_11,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IInventory> V_12,
             valuetype [System.Runtime]System.Nullable`1<float64> V_13,
             float64 V_14,
             float64 V_15,
             valuetype [System.Runtime]System.Nullable`1<float64> V_16,
             valuetype [System.Runtime]System.Nullable`1<float64> V_17)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0017:  ldc.r4     0.0
    IL_001c:  ble.un     IL_00a9

    IL_0021:  ldarg.0
    IL_0022:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0027:  ldc.r4     1.
    IL_002c:  bge.un.s   IL_00a9

    IL_002e:  ldc.r4     0.0
    IL_0033:  stloc.2
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_003a:  brfalse.s  IL_0090

    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_0042:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0047:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_004c:  ldc.i4.1
    IL_004d:  bne.un.s   IL_0057

    IL_004f:  ldc.r4     1.6666668e-002
    IL_0054:  stloc.2
    IL_0055:  br.s       IL_0096

    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_005d:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0062:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0067:  brfalse.s  IL_0071

    IL_0069:  ldc.r4     1.6666667e-003
    IL_006e:  stloc.2
    IL_006f:  br.s       IL_0096

    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_0077:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_007c:  callvirt   instance float32 Game.ComponentVitalStats::get_Food()
    IL_0081:  ldc.r4     0.5
    IL_0086:  ble.un.s   IL_0096

    IL_0088:  ldc.r4     1.1111111e-003
    IL_008d:  stloc.2
    IL_008e:  br.s       IL_0096

    IL_0090:  ldc.r4     1.1111111e-003
    IL_0095:  stloc.2
    IL_0096:  ldarg.0
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_009d:  callvirt   instance float32 Game.SubsystemGameInfo::get_TotalElapsedGameTimeDelta()
    IL_00a2:  ldloc.2
    IL_00a3:  mul
    IL_00a4:  call       instance void Game.ComponentHealth::Heal(float32)
    IL_00a9:  ldarg.0
    IL_00aa:  call       instance valuetype Game.BreathingMode Game.ComponentHealth::get_BreathingMode()
    IL_00af:  brtrue.s   IL_012a

    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class Game.SubsystemTerrain Game.ComponentHealth::m_subsystemTerrain
    IL_00b7:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00bc:  ldloc.0
    IL_00bd:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c2:  conv.i4
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_00c9:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00ce:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_00d3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00d8:  conv.i4
    IL_00d9:  ldloc.0
    IL_00da:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00df:  conv.i4
    IL_00e0:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00e5:  stloc.3
    IL_00e6:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00eb:  ldloc.3
    IL_00ec:  ldelem.ref
    IL_00ed:  isinst     Game.FluidBlock
    IL_00f2:  brtrue.s   IL_0101

    IL_00f4:  ldloc.0
    IL_00f5:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00fa:  ldc.r4     131.
    IL_00ff:  ble.un.s   IL_011d

    IL_0101:  ldarg.0
    IL_0102:  ldarg.0
    IL_0103:  call       instance float32 Game.ComponentHealth::get_Air()
    IL_0108:  ldarg.1
    IL_0109:  ldarg.0
    IL_010a:  call       instance float32 Game.ComponentHealth::get_AirCapacity()
    IL_010f:  div
    IL_0110:  sub
    IL_0111:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0116:  call       instance void Game.ComponentHealth::set_Air(float32)
    IL_011b:  br.s       IL_0171

    IL_011d:  ldarg.0
    IL_011e:  ldc.r4     1.
    IL_0123:  call       instance void Game.ComponentHealth::set_Air(float32)
    IL_0128:  br.s       IL_0171

    IL_012a:  ldarg.0
    IL_012b:  call       instance valuetype Game.BreathingMode Game.ComponentHealth::get_BreathingMode()
    IL_0130:  ldc.i4.1
    IL_0131:  bne.un.s   IL_0171

    IL_0133:  ldarg.0
    IL_0134:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0139:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_013e:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0143:  ldc.r4     0.25
    IL_0148:  ble.un.s   IL_0157

    IL_014a:  ldarg.0
    IL_014b:  ldc.r4     1.
    IL_0150:  call       instance void Game.ComponentHealth::set_Air(float32)
    IL_0155:  br.s       IL_0171

    IL_0157:  ldarg.0
    IL_0158:  ldarg.0
    IL_0159:  call       instance float32 Game.ComponentHealth::get_Air()
    IL_015e:  ldarg.1
    IL_015f:  ldarg.0
    IL_0160:  call       instance float32 Game.ComponentHealth::get_AirCapacity()
    IL_0165:  div
    IL_0166:  sub
    IL_0167:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_016c:  call       instance void Game.ComponentHealth::set_Air(float32)
    IL_0171:  ldarg.0
    IL_0172:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0177:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_017c:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0181:  ldc.r4     0.0
    IL_0186:  ble.un     IL_021a

    IL_018b:  ldarg.0
    IL_018c:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0191:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0196:  callvirt   instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_019b:  isinst     Game.MagmaBlock
    IL_01a0:  brfalse.s  IL_021a

    IL_01a2:  ldarg.0
    IL_01a3:  ldc.r4     2.
    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_01ae:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01b3:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_01b8:  mul
    IL_01b9:  ldarg.1
    IL_01ba:  mul
    IL_01bb:  ldnull
    IL_01bc:  ldc.i4.0
    IL_01bd:  ldstr      "Burned by magma"
    IL_01c2:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_01c7:  ldc.r4     1.1
    IL_01cc:  ldc.r4     0.1
    IL_01d1:  ldc.r8     12.
    IL_01da:  ldarg.0
    IL_01db:  ldfld      class Game.SubsystemTime Game.ComponentHealth::m_subsystemTime
    IL_01e0:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01e5:  mul
    IL_01e6:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_01eb:  conv.r4
    IL_01ec:  mul
    IL_01ed:  add
    IL_01ee:  stloc.s    V_4
    IL_01f0:  ldarg.0
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_01f7:  ldloc.s    V_4
    IL_01f9:  ldc.r4     1.5
    IL_01fe:  mul
    IL_01ff:  ldarg.0
    IL_0200:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0205:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_020a:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_020f:  mul
    IL_0210:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0215:  stfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_021a:  ldarg.0
    IL_021b:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0220:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0225:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_022a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_022f:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0234:  stloc.1
    IL_0235:  ldarg.0
    IL_0236:  ldfld      bool Game.ComponentHealth::m_wasStanding
    IL_023b:  brtrue.s   IL_02a4

    IL_023d:  ldloc.1
    IL_023e:  ldarg.0
    IL_023f:  call       instance float32 Game.ComponentHealth::get_FallResilience()
    IL_0244:  ble.un.s   IL_02a4

    IL_0246:  ldloc.1
    IL_0247:  ldarg.0
    IL_0248:  call       instance float32 Game.ComponentHealth::get_FallResilience()
    IL_024d:  sub
    IL_024e:  ldc.r4     0.0
    IL_0253:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0258:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_025d:  ldc.r4     15.
    IL_0262:  div
    IL_0263:  stloc.s    V_5
    IL_0265:  ldarg.0
    IL_0266:  ldfld      class Game.SubsystemPlayer Game.ComponentHealth::m_subsystemPlayer
    IL_026b:  ldarg.0
    IL_026c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0271:  callvirt   instance bool Game.SubsystemPlayer::IsPlayer(class [EntitySystem]GameEntitySystem.Entity)
    IL_0276:  brfalse.s  IL_0295

    IL_0278:  ldarg.0
    IL_0279:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_027e:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0283:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0288:  ldc.i4.1
    IL_0289:  bne.un.s   IL_0295

    IL_028b:  ldloc.s    V_5
    IL_028d:  ldc.r4     0.5
    IL_0292:  mul
    IL_0293:  stloc.s    V_5
    IL_0295:  ldarg.0
    IL_0296:  ldloc.s    V_5
    IL_0298:  ldnull
    IL_0299:  ldc.i4.0
    IL_029a:  ldstr      "Impact with the ground"
    IL_029f:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_02a4:  ldarg.0
    IL_02a5:  ldarg.0
    IL_02a6:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_02ab:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02b0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_02b5:  stloc.s    V_6
    IL_02b7:  ldloca.s   V_6
    IL_02b9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_02be:  brtrue.s   IL_02d5

    IL_02c0:  ldarg.0
    IL_02c1:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_02c6:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02cb:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_02d0:  ldnull
    IL_02d1:  cgt.un
    IL_02d3:  br.s       IL_02d6

    IL_02d5:  ldc.i4.1
    IL_02d6:  stfld      bool Game.ComponentHealth::m_wasStanding
    IL_02db:  ldloc.0
    IL_02dc:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02e1:  ldc.r4     0.0
    IL_02e6:  blt.s      IL_02f5

    IL_02e8:  ldloc.0
    IL_02e9:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02ee:  ldc.r4     168.
    IL_02f3:  ble.un.s   IL_0338

    IL_02f5:  ldarg.0
    IL_02f6:  ldfld      class Game.SubsystemTime Game.ComponentHealth::m_subsystemTime
    IL_02fb:  ldc.r8     2.
    IL_0304:  ldc.r8     0.0
    IL_030d:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0312:  brfalse.s  IL_0338

    IL_0314:  ldarg.0
    IL_0315:  ldc.r4     0.1
    IL_031a:  ldnull
    IL_031b:  ldc.i4.1
    IL_031c:  ldstr      "Left the world boundaries"
    IL_0321:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0326:  ldarg.0
    IL_0327:  ldfld      class Game.SubsystemGui Game.ComponentHealth::m_subsystemGui
    IL_032c:  ldstr      "Come back!"
    IL_0331:  ldc.i4.1
    IL_0332:  ldc.i4.0
    IL_0333:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0338:  ldarg.0
    IL_0339:  ldfld      class Game.SubsystemTime Game.ComponentHealth::m_subsystemTime
    IL_033e:  ldc.r8     1.
    IL_0347:  ldc.r8     0.0
    IL_0350:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0355:  dup
    IL_0356:  brfalse.s  IL_0377

    IL_0358:  ldarg.0
    IL_0359:  call       instance float32 Game.ComponentHealth::get_Air()
    IL_035e:  ldc.r4     0.0
    IL_0363:  bne.un.s   IL_0377

    IL_0365:  ldarg.0
    IL_0366:  ldc.r4     0.1
    IL_036b:  ldnull
    IL_036c:  ldc.i4.0
    IL_036d:  ldstr      "Suffocated"
    IL_0372:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0377:  dup
    IL_0378:  brfalse.s  IL_03b7

    IL_037a:  ldarg.0
    IL_037b:  ldfld      class Game.ComponentOnFire Game.ComponentHealth::m_componentOnFire
    IL_0380:  callvirt   instance bool Game.ComponentOnFire::get_IsOnFire()
    IL_0385:  brtrue.s   IL_0394

    IL_0387:  ldarg.0
    IL_0388:  ldfld      class Game.ComponentOnFire Game.ComponentHealth::m_componentOnFire
    IL_038d:  callvirt   instance bool Game.ComponentOnFire::get_TouchesFire()
    IL_0392:  brfalse.s  IL_03b7

    IL_0394:  ldarg.0
    IL_0395:  ldc.r4     1.
    IL_039a:  ldarg.0
    IL_039b:  call       instance float32 Game.ComponentHealth::get_FireResilience()
    IL_03a0:  div
    IL_03a1:  ldarg.0
    IL_03a2:  ldfld      class Game.ComponentOnFire Game.ComponentHealth::m_componentOnFire
    IL_03a7:  callvirt   instance class Game.ComponentCreature Game.ComponentOnFire::get_Attacker()
    IL_03ac:  ldc.i4.0
    IL_03ad:  ldstr      "Burned to death"
    IL_03b2:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_03b7:  brfalse.s  IL_042b

    IL_03b9:  ldarg.0
    IL_03ba:  call       instance bool Game.ComponentHealth::get_CanStrand()
    IL_03bf:  brfalse.s  IL_042b

    IL_03c1:  ldarg.0
    IL_03c2:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_03c7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03cc:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_03d1:  ldc.r4     0.25
    IL_03d6:  bge.un.s   IL_042b

    IL_03d8:  ldarg.0
    IL_03d9:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_03de:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03e3:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_03e8:  stloc.s    V_6
    IL_03ea:  ldc.i4.0
    IL_03eb:  stloc.s    V_7
    IL_03ed:  ldloca.s   V_6
    IL_03ef:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_03f4:  ldloc.s    V_7
    IL_03f6:  beq.s      IL_03fb

    IL_03f8:  ldc.i4.1
    IL_03f9:  br.s       IL_0405

    IL_03fb:  ldloca.s   V_6
    IL_03fd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0402:  ldc.i4.0
    IL_0403:  ceq
    IL_0405:  brtrue.s   IL_0419

    IL_0407:  ldarg.0
    IL_0408:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_040d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0412:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_0417:  brfalse.s  IL_042b

    IL_0419:  ldarg.0
    IL_041a:  ldc.r4     5.0000001e-002
    IL_041f:  ldnull
    IL_0420:  ldc.i4.0
    IL_0421:  ldstr      "Stranded on land"
    IL_0426:  call       instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_042b:  ldarg.0
    IL_042c:  ldarg.0
    IL_042d:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0432:  ldarg.0
    IL_0433:  ldfld      float32 Game.ComponentHealth::m_lastHealth
    IL_0438:  sub
    IL_0439:  call       instance void Game.ComponentHealth::set_HealthChange(float32)
    IL_043e:  ldarg.0
    IL_043f:  ldarg.0
    IL_0440:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0445:  stfld      float32 Game.ComponentHealth::m_lastHealth
    IL_044a:  ldarg.0
    IL_044b:  ldfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_0450:  ldc.r4     9.9999998e-003
    IL_0455:  ble.un.s   IL_0471

    IL_0457:  ldarg.0
    IL_0458:  ldarg.0
    IL_0459:  ldfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_045e:  ldc.r4     0.2
    IL_0463:  ldarg.1
    IL_0464:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0469:  mul
    IL_046a:  stfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_046f:  br.s       IL_047c

    IL_0471:  ldarg.0
    IL_0472:  ldc.r4     0.0
    IL_0477:  stfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_047c:  ldarg.0
    IL_047d:  call       instance float32 Game.ComponentHealth::get_HealthChange()
    IL_0482:  ldc.r4     0.0
    IL_0487:  bge.un.s   IL_04eb

    IL_0489:  ldarg.0
    IL_048a:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_048f:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0494:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_0499:  ldarg.0
    IL_049a:  ldarg.0
    IL_049b:  ldfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_04a0:  ldc.r4     -4.
    IL_04a5:  ldarg.0
    IL_04a6:  call       instance float32 Game.ComponentHealth::get_HealthChange()
    IL_04ab:  mul
    IL_04ac:  add
    IL_04ad:  stfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_04b2:  ldarg.0
    IL_04b3:  ldfld      class Game.SubsystemCamera Game.ComponentHealth::m_subsystemCamera
    IL_04b8:  ldarg.0
    IL_04b9:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_04be:  callvirt   instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_04c3:  brfalse.s  IL_04eb

    IL_04c5:  ldarg.0
    IL_04c6:  ldfld      class Game.SubsystemGui Game.ComponentHealth::m_subsystemGui
    IL_04cb:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_HealthBarWidget()
    IL_04d0:  ldarg.0
    IL_04d1:  call       instance float32 Game.ComponentHealth::get_HealthChange()
    IL_04d6:  neg
    IL_04d7:  ldc.r4     30.
    IL_04dc:  mul
    IL_04dd:  conv.i4
    IL_04de:  ldc.i4.0
    IL_04df:  ldc.i4.s   10
    IL_04e1:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_04e6:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_04eb:  ldarg.0
    IL_04ec:  ldfld      class Game.SubsystemCamera Game.ComponentHealth::m_subsystemCamera
    IL_04f1:  ldarg.0
    IL_04f2:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_04f7:  callvirt   instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_04fc:  brfalse.s  IL_051f

    IL_04fe:  ldarg.0
    IL_04ff:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentHealth::m_subsystemScreenOverlays
    IL_0504:  ldarg.0
    IL_0505:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentHealth::m_subsystemScreenOverlays
    IL_050a:  callvirt   instance float32 Game.SubsystemScreenOverlays::get_RedoutFactor()
    IL_050f:  ldarg.0
    IL_0510:  ldfld      float32 Game.ComponentHealth::m_redScreenFactor
    IL_0515:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_051a:  callvirt   instance void Game.SubsystemScreenOverlays::set_RedoutFactor(float32)
    IL_051f:  ldarg.0
    IL_0520:  ldfld      class Game.SubsystemCamera Game.ComponentHealth::m_subsystemCamera
    IL_0525:  ldarg.0
    IL_0526:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_052b:  callvirt   instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_0530:  brfalse.s  IL_0548

    IL_0532:  ldarg.0
    IL_0533:  ldfld      class Game.SubsystemGui Game.ComponentHealth::m_subsystemGui
    IL_0538:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_HealthBarWidget()
    IL_053d:  ldarg.0
    IL_053e:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0543:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0548:  ldarg.0
    IL_0549:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_054e:  ldc.r4     0.0
    IL_0553:  bne.un     IL_066a

    IL_0558:  ldarg.0
    IL_0559:  call       instance float32 Game.ComponentHealth::get_HealthChange()
    IL_055e:  ldc.r4     0.0
    IL_0563:  bge.un     IL_066a

    IL_0568:  ldarg.0
    IL_0569:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_056e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0573:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0578:  ldc.r4     0.0
    IL_057d:  ldarg.0
    IL_057e:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_0583:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0588:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_058d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0592:  ldc.r4     2.
    IL_0597:  div
    IL_0598:  ldc.r4     0.0
    IL_059d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_05a2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_05a7:  stloc.s    V_8
    IL_05a9:  ldarg.0
    IL_05aa:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_05af:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_05b4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_05b9:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_05be:  stloc.s    V_9
    IL_05c0:  ldarg.0
    IL_05c1:  ldfld      class Game.SubsystemParticles Game.ComponentHealth::m_subsystemParticles
    IL_05c6:  ldarg.0
    IL_05c7:  ldfld      class Game.SubsystemTerrain Game.ComponentHealth::m_subsystemTerrain
    IL_05cc:  ldloc.s    V_8
    IL_05ce:  ldloc.s    V_9
    IL_05d0:  newobj     instance void Game.KillParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32)
    IL_05d5:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_05da:  ldarg.0
    IL_05db:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_05e0:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_05e5:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_05ea:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_05ef:  ldarg.0
    IL_05f0:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_05f5:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_05fa:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_05ff:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0604:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0609:  ldc.r4     2.
    IL_060e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0613:  stloc.s    V_10
    IL_0615:  ldarg.0
    IL_0616:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_061b:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IInventory>()
    IL_0620:  stloc.s    V_12
    IL_0622:  ldloca.s   V_12
    IL_0624:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IInventory>::GetEnumerator()
    IL_0629:  stloc.s    V_11
    .try
    {
      IL_062b:  br.s       IL_063b

      IL_062d:  ldloca.s   V_11
      IL_062f:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>::get_Current()
      IL_0634:  ldloc.s    V_10
      IL_0636:  callvirt   instance void Game.IInventory::DropAllItems(valuetype [Engine]Engine.Vector3)
      IL_063b:  ldloca.s   V_11
      IL_063d:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>::MoveNext()
      IL_0642:  brtrue.s   IL_062d

      IL_0644:  leave.s    IL_0654

    }  // end .try
    finally
    {
      IL_0646:  ldloca.s   V_11
      IL_0648:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IInventory>
      IL_064e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0653:  endfinally
    }  // end handler
    IL_0654:  ldarg.0
    IL_0655:  ldarg.0
    IL_0656:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_065b:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0660:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0665:  call       instance void Game.ComponentHealth::set_DeathTime(valuetype [System.Runtime]System.Nullable`1<float64>)
    IL_066a:  ldarg.0
    IL_066b:  call       instance float32 Game.ComponentHealth::get_Health()
    IL_0670:  ldc.r4     0.0
    IL_0675:  bgt.un.s   IL_06ef

    IL_0677:  ldarg.0
    IL_0678:  call       instance float32 Game.ComponentHealth::get_CorpseDuration()
    IL_067d:  ldc.r4     0.0
    IL_0682:  ble.un.s   IL_06ef

    IL_0684:  ldarg.0
    IL_0685:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_068a:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_068f:  stloc.s    V_15
    IL_0691:  ldarg.0
    IL_0692:  call       instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentHealth::get_DeathTime()
    IL_0697:  stloc.s    V_16
    IL_0699:  ldloca.s   V_16
    IL_069b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_06a0:  brtrue.s   IL_06ae

    IL_06a2:  ldloca.s   V_17
    IL_06a4:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_06aa:  ldloc.s    V_17
    IL_06ac:  br.s       IL_06bd

    IL_06ae:  ldloc.s    V_15
    IL_06b0:  ldloca.s   V_16
    IL_06b2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_06b7:  sub
    IL_06b8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_06bd:  stloc.s    V_13
    IL_06bf:  ldarg.0
    IL_06c0:  call       instance float32 Game.ComponentHealth::get_CorpseDuration()
    IL_06c5:  conv.r8
    IL_06c6:  stloc.s    V_14
    IL_06c8:  ldloca.s   V_13
    IL_06ca:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_06cf:  ldloc.s    V_14
    IL_06d1:  bgt.s      IL_06d6

    IL_06d3:  ldc.i4.0
    IL_06d4:  br.s       IL_06dd

    IL_06d6:  ldloca.s   V_13
    IL_06d8:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_06dd:  brfalse.s  IL_06ef

    IL_06df:  ldarg.0
    IL_06e0:  ldfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_06e5:  callvirt   instance class Game.ComponentSpawn Game.ComponentCreature::get_ComponentSpawn()
    IL_06ea:  callvirt   instance void Game.ComponentSpawn::Despawn()
    IL_06ef:  ret
  } // end of method ComponentHealth::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       453 (0x1c5)
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
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.ComponentHealth::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0031:  stfld      class Game.SubsystemParticles Game.ComponentHealth::m_subsystemParticles
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0043:  stfld      class Game.SubsystemPlayer Game.ComponentHealth::m_subsystemPlayer
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCamera>(bool)
    IL_0055:  stfld      class Game.SubsystemCamera Game.ComponentHealth::m_subsystemCamera
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0067:  stfld      class Game.SubsystemGui Game.ComponentHealth::m_subsystemGui
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0079:  stfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemScreenOverlays>(bool)
    IL_008b:  stfld      class Game.SubsystemScreenOverlays Game.ComponentHealth::m_subsystemScreenOverlays
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_009d:  stfld      class Game.ComponentCreature Game.ComponentHealth::m_componentCreature
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a9:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_00ae:  stfld      class Game.ComponentPlayer Game.ComponentHealth::m_componentPlayer
    IL_00b3:  ldarg.0
    IL_00b4:  ldarg.0
    IL_00b5:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00ba:  ldc.i4.1
    IL_00bb:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOnFire>(bool)
    IL_00c0:  stfld      class Game.ComponentOnFire Game.ComponentHealth::m_componentOnFire
    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.1
    IL_00c7:  ldstr      "AttackResilience"
    IL_00cc:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00d1:  call       instance void Game.ComponentHealth::set_AttackResilience(float32)
    IL_00d6:  ldarg.0
    IL_00d7:  ldarg.1
    IL_00d8:  ldstr      "FallResilience"
    IL_00dd:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00e2:  call       instance void Game.ComponentHealth::set_FallResilience(float32)
    IL_00e7:  ldarg.0
    IL_00e8:  ldarg.1
    IL_00e9:  ldstr      "FireResilience"
    IL_00ee:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00f3:  call       instance void Game.ComponentHealth::set_FireResilience(float32)
    IL_00f8:  ldarg.0
    IL_00f9:  ldarg.1
    IL_00fa:  ldstr      "CorpseDuration"
    IL_00ff:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0104:  call       instance void Game.ComponentHealth::set_CorpseDuration(float32)
    IL_0109:  ldarg.0
    IL_010a:  ldarg.1
    IL_010b:  ldstr      "BreathingMode"
    IL_0110:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.BreathingMode>(string)
    IL_0115:  call       instance void Game.ComponentHealth::set_BreathingMode(valuetype Game.BreathingMode)
    IL_011a:  ldarg.0
    IL_011b:  ldarg.1
    IL_011c:  ldstr      "CanStrand"
    IL_0121:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0126:  call       instance void Game.ComponentHealth::set_CanStrand(bool)
    IL_012b:  ldarg.0
    IL_012c:  ldarg.1
    IL_012d:  ldstr      "Health"
    IL_0132:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0137:  call       instance void Game.ComponentHealth::set_Health(float32)
    IL_013c:  ldarg.0
    IL_013d:  ldarg.1
    IL_013e:  ldstr      "Air"
    IL_0143:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0148:  call       instance void Game.ComponentHealth::set_Air(float32)
    IL_014d:  ldarg.0
    IL_014e:  ldarg.1
    IL_014f:  ldstr      "AirCapacity"
    IL_0154:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0159:  call       instance void Game.ComponentHealth::set_AirCapacity(float32)
    IL_015e:  ldarg.1
    IL_015f:  ldstr      "DeathTime"
    IL_0164:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_0169:  stloc.0
    IL_016a:  ldarg.0
    IL_016b:  ldloc.0
    IL_016c:  ldc.r8     0.0
    IL_0175:  bge.s      IL_0182

    IL_0177:  ldloca.s   V_1
    IL_0179:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_017f:  ldloc.1
    IL_0180:  br.s       IL_0188

    IL_0182:  ldloc.0
    IL_0183:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0188:  call       instance void Game.ComponentHealth::set_DeathTime(valuetype [System.Runtime]System.Nullable`1<float64>)
    IL_018d:  ldarg.0
    IL_018e:  ldarg.1
    IL_018f:  ldstr      "CauseOfDeath"
    IL_0194:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0199:  call       instance void Game.ComponentHealth::set_CauseOfDeath(string)
    IL_019e:  ldarg.0
    IL_019f:  ldfld      class Game.SubsystemGameInfo Game.ComponentHealth::m_subsystemGameInfo
    IL_01a4:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_01a9:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_01ae:  brtrue.s   IL_01c4

    IL_01b0:  ldarg.0
    IL_01b1:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01b6:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_01bb:  brfalse.s  IL_01c4

    IL_01bd:  ldarg.0
    IL_01be:  ldc.i4.1
    IL_01bf:  call       instance void Game.ComponentHealth::set_IsInvulnerable(bool)
    IL_01c4:  ret
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
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
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