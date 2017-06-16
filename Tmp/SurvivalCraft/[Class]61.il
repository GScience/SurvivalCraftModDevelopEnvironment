.class public auto ansi beforefieldinit Game.ComponentLocomotion
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemInput m_subsystemInput
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentVitalStats m_componentVitalStats
  .field private class Game.ComponentClothing m_componentClothing
  .field private class Game.ComponentMount m_componentMount
  .field private class Game.ComponentRider m_componentRider
  .field private class Game.Random m_random
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_walkOrder
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_flyOrder
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_swimOrder
  .field private valuetype [Engine]Engine.Vector2 m_turnOrder
  .field private valuetype [Engine]Engine.Vector2 m_lookOrder
  .field private float32 m_jumpOrder
  .field private float32 m_walkSpeedWhenTurning
  .field private float64 m_ladderActivationTime
  .field private float32 m_swimBurstRemaining
  .field private valuetype [Engine]Engine.Vector2 m_lookAngles
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_lastPosition
  .field private bool m_walking
  .field private bool m_falling
  .field private bool m_climbing
  .field private bool m_jumping
  .field private bool m_swimming
  .field private bool m_flying
  .field private float32 '<AccelerationFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<WalkSpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<LadderSpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<JumpSpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<FlySpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<CreativeFlySpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<SwimSpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<TurnSpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<LookSpeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<InAirWalkFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<int32> '<LadderValue>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> '<LastWalkOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<LastJumpOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> '<LastFlyOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> '<LastSwimOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<LastTurnOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsCreativeFlyEnabled>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float32 
          get_AccelerationFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<AccelerationFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_AccelerationFactor

  .method private hidebysig specialname instance void 
          set_AccelerationFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<AccelerationFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_AccelerationFactor

  .method public hidebysig specialname instance float32 
          get_WalkSpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<WalkSpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_WalkSpeed

  .method private hidebysig specialname instance void 
          set_WalkSpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<WalkSpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_WalkSpeed

  .method public hidebysig specialname instance float32 
          get_LadderSpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<LadderSpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_LadderSpeed

  .method private hidebysig specialname instance void 
          set_LadderSpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<LadderSpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_LadderSpeed

  .method public hidebysig specialname instance float32 
          get_JumpSpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<JumpSpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_JumpSpeed

  .method private hidebysig specialname instance void 
          set_JumpSpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<JumpSpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_JumpSpeed

  .method public hidebysig specialname instance float32 
          get_FlySpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<FlySpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_FlySpeed

  .method private hidebysig specialname instance void 
          set_FlySpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<FlySpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_FlySpeed

  .method public hidebysig specialname instance float32 
          get_CreativeFlySpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<CreativeFlySpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_CreativeFlySpeed

  .method private hidebysig specialname instance void 
          set_CreativeFlySpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<CreativeFlySpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_CreativeFlySpeed

  .method public hidebysig specialname instance float32 
          get_SwimSpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<SwimSpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_SwimSpeed

  .method private hidebysig specialname instance void 
          set_SwimSpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<SwimSpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_SwimSpeed

  .method public hidebysig specialname instance float32 
          get_TurnSpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<TurnSpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_TurnSpeed

  .method private hidebysig specialname instance void 
          set_TurnSpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<TurnSpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_TurnSpeed

  .method public hidebysig specialname instance float32 
          get_LookSpeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<LookSpeed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_LookSpeed

  .method private hidebysig specialname instance void 
          set_LookSpeed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<LookSpeed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_LookSpeed

  .method public hidebysig specialname instance float32 
          get_InAirWalkFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<InAirWalkFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_InAirWalkFactor

  .method private hidebysig specialname instance void 
          set_InAirWalkFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<InAirWalkFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_InAirWalkFactor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_LookAngles() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::m_lookAngles
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_LookAngles

  .method private hidebysig specialname instance void 
          set_LookAngles(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  4
    IL_0000:  ldarga.s   'value'
    IL_0002:  ldarg.1
    IL_0003:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0008:  ldc.r4     140.
    IL_000d:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0012:  neg
    IL_0013:  ldc.r4     140.
    IL_0018:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_001d:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0022:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0027:  ldarga.s   'value'
    IL_0029:  ldarg.1
    IL_002a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002f:  ldc.r4     82.
    IL_0034:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0039:  neg
    IL_003a:  ldc.r4     82.
    IL_003f:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0044:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0049:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_004e:  ldarg.0
    IL_004f:  ldarg.1
    IL_0050:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::m_lookAngles
    IL_0055:  ret
  } // end of method ComponentLocomotion::set_LookAngles

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<int32> 
          get_LadderValue() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::'<LadderValue>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_LadderValue

  .method private hidebysig specialname instance void 
          set_LadderValue(valuetype [System.Runtime]System.Nullable`1<int32> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::'<LadderValue>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_LadderValue

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 
          get_WalkOrder() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::m_walkOrder
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_WalkOrder

  .method public hidebysig specialname instance void 
          set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 'value') cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  3
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector2 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::m_walkOrder
    IL_0007:  ldarg.0
    IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::m_walkOrder
    IL_000d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0012:  brfalse.s  IL_0051

    IL_0014:  ldarg.0
    IL_0015:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::m_walkOrder
    IL_001a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_001f:  stloc.1
    IL_0020:  ldloca.s   V_1
    IL_0022:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_0027:  stloc.0
    IL_0028:  ldloc.0
    IL_0029:  ldc.r4     1.
    IL_002e:  ble.un.s   IL_0051

    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::m_walkOrder
    IL_0037:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_003c:  ldloc.0
    IL_003d:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0042:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0047:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_004c:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::m_walkOrder
    IL_0051:  ret
  } // end of method ComponentLocomotion::set_WalkOrder

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          get_FlyOrder() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_flyOrder
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_FlyOrder

  .method public hidebysig specialname instance void 
          set_FlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 'value') cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  3
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_flyOrder
    IL_0007:  ldarg.0
    IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_flyOrder
    IL_000d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0012:  brfalse.s  IL_0051

    IL_0014:  ldarg.0
    IL_0015:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_flyOrder
    IL_001a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_001f:  stloc.1
    IL_0020:  ldloca.s   V_1
    IL_0022:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0027:  stloc.0
    IL_0028:  ldloc.0
    IL_0029:  ldc.r4     1.
    IL_002e:  ble.un.s   IL_0051

    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_flyOrder
    IL_0037:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_003c:  ldloc.0
    IL_003d:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0042:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0047:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_004c:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_flyOrder
    IL_0051:  ret
  } // end of method ComponentLocomotion::set_FlyOrder

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          get_SwimOrder() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_swimOrder
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_SwimOrder

  .method public hidebysig specialname instance void 
          set_SwimOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 'value') cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  3
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_swimOrder
    IL_0007:  ldarg.0
    IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_swimOrder
    IL_000d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0012:  brfalse.s  IL_0051

    IL_0014:  ldarg.0
    IL_0015:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_swimOrder
    IL_001a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_001f:  stloc.1
    IL_0020:  ldloca.s   V_1
    IL_0022:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0027:  stloc.0
    IL_0028:  ldloc.0
    IL_0029:  ldc.r4     1.
    IL_002e:  ble.un.s   IL_0051

    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_swimOrder
    IL_0037:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_003c:  ldloc.0
    IL_003d:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0042:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0047:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_004c:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_swimOrder
    IL_0051:  ret
  } // end of method ComponentLocomotion::set_SwimOrder

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_TurnOrder() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::m_turnOrder
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_TurnOrder

  .method public hidebysig specialname instance void 
          set_TurnOrder(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::m_turnOrder
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_TurnOrder

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_LookOrder() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::m_lookOrder
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_LookOrder

  .method public hidebysig specialname instance void 
          set_LookOrder(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::m_lookOrder
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_LookOrder

  .method public hidebysig specialname instance float32 
          get_JumpOrder() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::m_jumpOrder
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_JumpOrder

  .method public hidebysig specialname instance void 
          set_JumpOrder(float32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0007:  stfld      float32 Game.ComponentLocomotion::m_jumpOrder
    IL_000c:  ret
  } // end of method ComponentLocomotion::set_JumpOrder

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 
          get_LastWalkOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::'<LastWalkOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_LastWalkOrder

  .method private hidebysig specialname instance void 
          set_LastWalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::'<LastWalkOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_LastWalkOrder

  .method public hidebysig specialname instance float32 
          get_LastJumpOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLocomotion::'<LastJumpOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_LastJumpOrder

  .method private hidebysig specialname instance void 
          set_LastJumpOrder(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLocomotion::'<LastJumpOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_LastJumpOrder

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          get_LastFlyOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::'<LastFlyOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_LastFlyOrder

  .method private hidebysig specialname instance void 
          set_LastFlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::'<LastFlyOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_LastFlyOrder

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          get_LastSwimOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::'<LastSwimOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_LastSwimOrder

  .method private hidebysig specialname instance void 
          set_LastSwimOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::'<LastSwimOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_LastSwimOrder

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_LastTurnOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::'<LastTurnOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_LastTurnOrder

  .method private hidebysig specialname instance void 
          set_LastTurnOrder(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::'<LastTurnOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_LastTurnOrder

  .method public hidebysig specialname instance bool 
          get_IsCreativeFlyEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentLocomotion::'<IsCreativeFlyEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLocomotion::get_IsCreativeFlyEnabled

  .method public hidebysig specialname instance void 
          set_IsCreativeFlyEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentLocomotion::'<IsCreativeFlyEnabled>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLocomotion::set_IsCreativeFlyEnabled

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentLocomotion::get_UpdateOrder

  .method public hidebysig newslot virtual 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       1422 (0x58e)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             class Game.PlayerStats V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class Game.Block V_7,
             valuetype [Engine]Engine.Quaternion V_8,
             float32 V_9,
             float32 V_10,
             valuetype [System.Runtime]System.Nullable`1<int32> V_11,
             int32 V_12,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_13,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_14)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.ComponentLocomotion::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0010:  brfalse.s  IL_0019

    IL_0012:  ldarg.0
    IL_0013:  ldc.i4.0
    IL_0014:  call       instance void Game.ComponentLocomotion::set_IsCreativeFlyEnabled(bool)
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_001f:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0024:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0029:  ldc.r4     0.0
    IL_002e:  ble.un     IL_04b2

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0039:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_003e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0043:  stloc.0
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_004a:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_004f:  stloc.1
    IL_0050:  ldloc.1
    IL_0051:  brfalse    IL_01fd

    IL_0056:  ldarg.0
    IL_0057:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_lastPosition
    IL_005c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0061:  brtrue.s   IL_006a

    IL_0063:  ldc.r4     0.0
    IL_0068:  br.s       IL_007b

    IL_006a:  ldloc.0
    IL_006b:  ldarg.0
    IL_006c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_lastPosition
    IL_0071:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0076:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_007b:  stloc.s    V_10
    IL_007d:  ldloc.s    V_10
    IL_007f:  ldc.r4     100.
    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.SubsystemTime Game.ComponentLocomotion::m_subsystemTime
    IL_008a:  callvirt   instance float32 Game.SubsystemTime::get_PreviousGameTimeDelta()
    IL_008f:  mul
    IL_0090:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0095:  stloc.s    V_10
    IL_0097:  ldloc.1
    IL_0098:  dup
    IL_0099:  ldfld      float64 Game.PlayerStats::DistanceTravelled
    IL_009e:  ldloc.s    V_10
    IL_00a0:  conv.r8
    IL_00a1:  add
    IL_00a2:  stfld      float64 Game.PlayerStats::DistanceTravelled
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.ComponentRider Game.ComponentLocomotion::m_componentRider
    IL_00ad:  brfalse.s  IL_00d1

    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.ComponentRider Game.ComponentLocomotion::m_componentRider
    IL_00b5:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_00ba:  brfalse.s  IL_00d1

    IL_00bc:  ldloc.1
    IL_00bd:  dup
    IL_00be:  ldfld      float64 Game.PlayerStats::DistanceRidden
    IL_00c3:  ldloc.s    V_10
    IL_00c5:  conv.r8
    IL_00c6:  add
    IL_00c7:  stfld      float64 Game.PlayerStats::DistanceRidden
    IL_00cc:  br         IL_018a

    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      bool Game.ComponentLocomotion::m_walking
    IL_00d7:  brfalse.s  IL_00f0

    IL_00d9:  ldloc.1
    IL_00da:  dup
    IL_00db:  ldfld      float64 Game.PlayerStats::DistanceWalked
    IL_00e0:  ldloc.s    V_10
    IL_00e2:  conv.r8
    IL_00e3:  add
    IL_00e4:  stfld      float64 Game.PlayerStats::DistanceWalked
    IL_00e9:  ldarg.0
    IL_00ea:  ldc.i4.0
    IL_00eb:  stfld      bool Game.ComponentLocomotion::m_walking
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      bool Game.ComponentLocomotion::m_falling
    IL_00f6:  brfalse.s  IL_010f

    IL_00f8:  ldloc.1
    IL_00f9:  dup
    IL_00fa:  ldfld      float64 Game.PlayerStats::DistanceFallen
    IL_00ff:  ldloc.s    V_10
    IL_0101:  conv.r8
    IL_0102:  add
    IL_0103:  stfld      float64 Game.PlayerStats::DistanceFallen
    IL_0108:  ldarg.0
    IL_0109:  ldc.i4.0
    IL_010a:  stfld      bool Game.ComponentLocomotion::m_falling
    IL_010f:  ldarg.0
    IL_0110:  ldfld      bool Game.ComponentLocomotion::m_climbing
    IL_0115:  brfalse.s  IL_012e

    IL_0117:  ldloc.1
    IL_0118:  dup
    IL_0119:  ldfld      float64 Game.PlayerStats::DistanceClimbed
    IL_011e:  ldloc.s    V_10
    IL_0120:  conv.r8
    IL_0121:  add
    IL_0122:  stfld      float64 Game.PlayerStats::DistanceClimbed
    IL_0127:  ldarg.0
    IL_0128:  ldc.i4.0
    IL_0129:  stfld      bool Game.ComponentLocomotion::m_climbing
    IL_012e:  ldarg.0
    IL_012f:  ldfld      bool Game.ComponentLocomotion::m_jumping
    IL_0134:  brfalse.s  IL_014c

    IL_0136:  ldloc.1
    IL_0137:  dup
    IL_0138:  ldfld      int64 Game.PlayerStats::Jumps
    IL_013d:  ldc.i4.1
    IL_013e:  conv.i8
    IL_013f:  add
    IL_0140:  stfld      int64 Game.PlayerStats::Jumps
    IL_0145:  ldarg.0
    IL_0146:  ldc.i4.0
    IL_0147:  stfld      bool Game.ComponentLocomotion::m_jumping
    IL_014c:  ldarg.0
    IL_014d:  ldfld      bool Game.ComponentLocomotion::m_swimming
    IL_0152:  brfalse.s  IL_016b

    IL_0154:  ldloc.1
    IL_0155:  dup
    IL_0156:  ldfld      float64 Game.PlayerStats::DistanceSwam
    IL_015b:  ldloc.s    V_10
    IL_015d:  conv.r8
    IL_015e:  add
    IL_015f:  stfld      float64 Game.PlayerStats::DistanceSwam
    IL_0164:  ldarg.0
    IL_0165:  ldc.i4.0
    IL_0166:  stfld      bool Game.ComponentLocomotion::m_swimming
    IL_016b:  ldarg.0
    IL_016c:  ldfld      bool Game.ComponentLocomotion::m_flying
    IL_0171:  brfalse.s  IL_018a

    IL_0173:  ldloc.1
    IL_0174:  dup
    IL_0175:  ldfld      float64 Game.PlayerStats::DistanceFlown
    IL_017a:  ldloc.s    V_10
    IL_017c:  conv.r8
    IL_017d:  add
    IL_017e:  stfld      float64 Game.PlayerStats::DistanceFlown
    IL_0183:  ldarg.0
    IL_0184:  ldc.i4.0
    IL_0185:  stfld      bool Game.ComponentLocomotion::m_flying
    IL_018a:  ldloc.1
    IL_018b:  ldloc.1
    IL_018c:  ldfld      float64 Game.PlayerStats::DeepestDive
    IL_0191:  ldarg.0
    IL_0192:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0197:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_019c:  callvirt   instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_01a1:  conv.r8
    IL_01a2:  call       float64 [Engine]Engine.MathUtils::Max(float64,
                                                               float64)
    IL_01a7:  stfld      float64 Game.PlayerStats::DeepestDive
    IL_01ac:  ldloc.1
    IL_01ad:  ldloc.1
    IL_01ae:  ldfld      float64 Game.PlayerStats::LowestAltitude
    IL_01b3:  ldloc.0
    IL_01b4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01b9:  conv.r8
    IL_01ba:  call       float64 [Engine]Engine.MathUtils::Min(float64,
                                                               float64)
    IL_01bf:  stfld      float64 Game.PlayerStats::LowestAltitude
    IL_01c4:  ldloc.1
    IL_01c5:  ldloc.1
    IL_01c6:  ldfld      float64 Game.PlayerStats::HighestAltitude
    IL_01cb:  ldloc.0
    IL_01cc:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01d1:  conv.r8
    IL_01d2:  call       float64 [Engine]Engine.MathUtils::Max(float64,
                                                               float64)
    IL_01d7:  stfld      float64 Game.PlayerStats::HighestAltitude
    IL_01dc:  ldloc.1
    IL_01dd:  ldarg.0
    IL_01de:  ldfld      class Game.SubsystemGameInfo Game.ComponentLocomotion::m_subsystemGameInfo
    IL_01e3:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_01e8:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_01ed:  ldloc.1
    IL_01ee:  ldfld      valuetype Game.GameMode Game.PlayerStats::EasiestModeUsed
    IL_01f3:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_01f8:  stfld      valuetype Game.GameMode Game.PlayerStats::EasiestModeUsed
    IL_01fd:  ldarg.0
    IL_01fe:  ldloc.0
    IL_01ff:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0204:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::m_lastPosition
    IL_0209:  ldarg.0
    IL_020a:  ldc.r4     0.1
    IL_020f:  ldarg.0
    IL_0210:  ldfld      float32 Game.ComponentLocomotion::m_swimBurstRemaining
    IL_0215:  mul
    IL_0216:  ldarg.1
    IL_0217:  add
    IL_0218:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_021d:  stfld      float32 Game.ComponentLocomotion::m_swimBurstRemaining
    IL_0222:  ldloc.0
    IL_0223:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0228:  conv.i4
    IL_0229:  stloc.2
    IL_022a:  ldloc.0
    IL_022b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0230:  ldc.r4     0.2
    IL_0235:  add
    IL_0236:  conv.i4
    IL_0237:  stloc.3
    IL_0238:  ldloc.0
    IL_0239:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_023e:  conv.i4
    IL_023f:  stloc.s    V_4
    IL_0241:  ldarg.0
    IL_0242:  ldfld      class Game.SubsystemTerrain Game.ComponentLocomotion::m_subsystemTerrain
    IL_0247:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_024c:  ldloc.2
    IL_024d:  ldloc.3
    IL_024e:  ldloc.s    V_4
    IL_0250:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0255:  stloc.s    V_5
    IL_0257:  ldloc.s    V_5
    IL_0259:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_025e:  stloc.s    V_6
    IL_0260:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0265:  ldloc.s    V_6
    IL_0267:  ldelem.ref
    IL_0268:  stloc.s    V_7
    IL_026a:  ldarg.0
    IL_026b:  call       instance float32 Game.ComponentLocomotion::get_LadderSpeed()
    IL_0270:  ldc.r4     0.0
    IL_0275:  ble.un     IL_03ba

    IL_027a:  ldarg.0
    IL_027b:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::get_LadderValue()
    IL_0280:  stloc.s    V_11
    IL_0282:  ldloca.s   V_11
    IL_0284:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0289:  brtrue     IL_03ba

    IL_028e:  ldloc.s    V_7
    IL_0290:  isinst     Game.LadderBlock
    IL_0295:  brfalse    IL_03ba

    IL_029a:  ldarg.0
    IL_029b:  ldfld      class Game.SubsystemTime Game.ComponentLocomotion::m_subsystemTime
    IL_02a0:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_02a5:  ldarg.0
    IL_02a6:  ldfld      float64 Game.ComponentLocomotion::m_ladderActivationTime
    IL_02ab:  blt.un     IL_03ba

    IL_02b0:  ldarg.0
    IL_02b1:  call       instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_02b6:  brtrue     IL_03ba

    IL_02bb:  ldarg.0
    IL_02bc:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_02c1:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02c6:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_02cb:  brtrue     IL_03ba

    IL_02d0:  ldloc.s    V_5
    IL_02d2:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_02d7:  call       int32 Game.LadderBlock::GetFace(int32)
    IL_02dc:  stloc.s    V_12
    IL_02de:  ldloc.s    V_12
    IL_02e0:  brtrue.s   IL_02fe

    IL_02e2:  ldarg.0
    IL_02e3:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_02e8:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02ed:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_02f2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02f7:  ldc.r4     0.0
    IL_02fc:  bgt.s      IL_037c

    IL_02fe:  ldloc.s    V_12
    IL_0300:  ldc.i4.1
    IL_0301:  bne.un.s   IL_031f

    IL_0303:  ldarg.0
    IL_0304:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0309:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_030e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0313:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0318:  ldc.r4     0.0
    IL_031d:  bgt.s      IL_037c

    IL_031f:  ldloc.s    V_12
    IL_0321:  ldc.i4.2
    IL_0322:  bne.un.s   IL_0340

    IL_0324:  ldarg.0
    IL_0325:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_032a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_032f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0334:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0339:  ldc.r4     0.0
    IL_033e:  blt.s      IL_037c

    IL_0340:  ldloc.s    V_12
    IL_0342:  ldc.i4.3
    IL_0343:  bne.un.s   IL_0361

    IL_0345:  ldarg.0
    IL_0346:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_034b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0350:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0355:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_035a:  ldc.r4     0.0
    IL_035f:  blt.s      IL_037c

    IL_0361:  ldarg.0
    IL_0362:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0367:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_036c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0371:  stloc.s    V_11
    IL_0373:  ldloca.s   V_11
    IL_0375:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_037a:  brtrue.s   IL_03ba

    IL_037c:  ldarg.0
    IL_037d:  ldloc.s    V_5
    IL_037f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0384:  call       instance void Game.ComponentLocomotion::set_LadderValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0389:  ldarg.0
    IL_038a:  ldarg.0
    IL_038b:  ldfld      class Game.SubsystemTime Game.ComponentLocomotion::m_subsystemTime
    IL_0390:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0395:  ldc.r8     0.20000000298023224
    IL_039e:  add
    IL_039f:  stfld      float64 Game.ComponentLocomotion::m_ladderActivationTime
    IL_03a4:  ldarg.0
    IL_03a5:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_03aa:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_03af:  ldc.r4     1.
    IL_03b4:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_03b9:  pop
    IL_03ba:  ldarg.0
    IL_03bb:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::get_LadderValue()
    IL_03c0:  stloc.s    V_11
    IL_03c2:  ldloca.s   V_11
    IL_03c4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_03c9:  brfalse.s  IL_03d6

    IL_03cb:  ldarg.0
    IL_03cc:  ldarg.1
    IL_03cd:  ldloc.s    V_5
    IL_03cf:  call       instance void Game.ComponentLocomotion::LadderMovement(float32,
                                                                                int32)
    IL_03d4:  br.s       IL_03dd

    IL_03d6:  ldarg.0
    IL_03d7:  ldarg.1
    IL_03d8:  call       instance void Game.ComponentLocomotion::NormalMovement(float32)
    IL_03dd:  ldarg.0
    IL_03de:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_03e3:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03e8:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_03ed:  stloc.s    V_8
    IL_03ef:  ldc.r4     2.
    IL_03f4:  ldloc.s    V_8
    IL_03f6:  ldfld      float32 [Engine]Engine.Quaternion::Y
    IL_03fb:  mul
    IL_03fc:  ldloc.s    V_8
    IL_03fe:  ldfld      float32 [Engine]Engine.Quaternion::W
    IL_0403:  mul
    IL_0404:  ldc.r4     2.
    IL_0409:  ldloc.s    V_8
    IL_040b:  ldfld      float32 [Engine]Engine.Quaternion::X
    IL_0410:  mul
    IL_0411:  ldloc.s    V_8
    IL_0413:  ldfld      float32 [Engine]Engine.Quaternion::Z
    IL_0418:  mul
    IL_0419:  sub
    IL_041a:  ldc.r4     1.
    IL_041f:  ldc.r4     2.
    IL_0424:  ldloc.s    V_8
    IL_0426:  ldfld      float32 [Engine]Engine.Quaternion::Y
    IL_042b:  mul
    IL_042c:  ldloc.s    V_8
    IL_042e:  ldfld      float32 [Engine]Engine.Quaternion::Y
    IL_0433:  mul
    IL_0434:  sub
    IL_0435:  ldc.r4     2.
    IL_043a:  ldloc.s    V_8
    IL_043c:  ldfld      float32 [Engine]Engine.Quaternion::Z
    IL_0441:  mul
    IL_0442:  ldloc.s    V_8
    IL_0444:  ldfld      float32 [Engine]Engine.Quaternion::Z
    IL_0449:  mul
    IL_044a:  sub
    IL_044b:  call       float32 [Engine]Engine.MathUtils::Atan2(float32,
                                                                 float32)
    IL_0450:  stloc.s    V_9
    IL_0452:  ldloc.s    V_9
    IL_0454:  ldarg.0
    IL_0455:  call       instance float32 Game.ComponentLocomotion::get_TurnSpeed()
    IL_045a:  neg
    IL_045b:  ldarg.0
    IL_045c:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    IL_0461:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0466:  mul
    IL_0467:  ldarg.1
    IL_0468:  mul
    IL_0469:  add
    IL_046a:  stloc.s    V_9
    IL_046c:  ldarg.0
    IL_046d:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0472:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0477:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_047c:  ldloc.s    V_9
    IL_047e:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0483:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0488:  ldarg.0
    IL_0489:  ldarg.0
    IL_048a:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_048f:  ldarg.0
    IL_0490:  call       instance float32 Game.ComponentLocomotion::get_LookSpeed()
    IL_0495:  ldarg.0
    IL_0496:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookOrder()
    IL_049b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_04a0:  ldarg.1
    IL_04a1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_04a6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_04ab:  call       instance void Game.ComponentLocomotion::set_LookAngles(valuetype [Engine]Engine.Vector2)
    IL_04b0:  br.s       IL_04e5

    IL_04b2:  ldarg.0
    IL_04b3:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_04b8:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04bd:  ldc.i4.1
    IL_04be:  callvirt   instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_04c3:  ldarg.0
    IL_04c4:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_04c9:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04ce:  ldc.i4.1
    IL_04cf:  callvirt   instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
    IL_04d4:  ldarg.0
    IL_04d5:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_04da:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04df:  ldc.i4.1
    IL_04e0:  callvirt   instance void Game.ComponentBody::set_IsWaterDragEnabled(bool)
    IL_04e5:  ldarg.0
    IL_04e6:  ldarg.0
    IL_04e7:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_04ec:  call       instance void Game.ComponentLocomotion::set_LastWalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_04f1:  ldarg.0
    IL_04f2:  ldarg.0
    IL_04f3:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    IL_04f8:  call       instance void Game.ComponentLocomotion::set_LastFlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_04fd:  ldarg.0
    IL_04fe:  ldarg.0
    IL_04ff:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_SwimOrder()
    IL_0504:  call       instance void Game.ComponentLocomotion::set_LastSwimOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0509:  ldarg.0
    IL_050a:  ldarg.0
    IL_050b:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    IL_0510:  call       instance void Game.ComponentLocomotion::set_LastTurnOrder(valuetype [Engine]Engine.Vector2)
    IL_0515:  ldarg.0
    IL_0516:  ldarg.0
    IL_0517:  call       instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_051c:  call       instance void Game.ComponentLocomotion::set_LastJumpOrder(float32)
    IL_0521:  ldarg.0
    IL_0522:  ldloca.s   V_13
    IL_0524:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_052a:  ldloc.s    V_13
    IL_052c:  call       instance void Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0531:  ldarg.0
    IL_0532:  ldloca.s   V_14
    IL_0534:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_053a:  ldloc.s    V_14
    IL_053c:  call       instance void Game.ComponentLocomotion::set_FlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0541:  ldarg.0
    IL_0542:  ldloca.s   V_14
    IL_0544:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_054a:  ldloc.s    V_14
    IL_054c:  call       instance void Game.ComponentLocomotion::set_SwimOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0551:  ldarg.0
    IL_0552:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0557:  call       instance void Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
    IL_055c:  ldarg.0
    IL_055d:  ldc.r4     10.
    IL_0562:  ldarg.0
    IL_0563:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0568:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_056d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0572:  ldarg.0
    IL_0573:  call       instance float32 Game.ComponentLocomotion::get_LookSpeed()
    IL_0578:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_057d:  call       instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_0582:  ldarg.0
    IL_0583:  ldc.r4     0.0
    IL_0588:  call       instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_058d:  ret
  } // end of method ComponentLocomotion::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       496 (0x1f0)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentLocomotion::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInput>(bool)
    IL_001f:  stfld      class Game.SubsystemInput Game.ComponentLocomotion::m_subsystemInput
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_0031:  stfld      class Game.SubsystemNoise Game.ComponentLocomotion::m_subsystemNoise
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0043:  stfld      class Game.SubsystemTerrain Game.ComponentLocomotion::m_subsystemTerrain
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0055:  stfld      class Game.SubsystemGameInfo Game.ComponentLocomotion::m_subsystemGameInfo
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0067:  stfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0073:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentVitalStats>()
    IL_0078:  stfld      class Game.ComponentVitalStats Game.ComponentLocomotion::m_componentVitalStats
    IL_007d:  ldarg.0
    IL_007e:  ldarg.0
    IL_007f:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0084:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentClothing>()
    IL_0089:  stfld      class Game.ComponentClothing Game.ComponentLocomotion::m_componentClothing
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0095:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMount>()
    IL_009a:  stfld      class Game.ComponentMount Game.ComponentLocomotion::m_componentMount
    IL_009f:  ldarg.0
    IL_00a0:  ldarg.0
    IL_00a1:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a6:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>()
    IL_00ab:  stfld      class Game.ComponentRider Game.ComponentLocomotion::m_componentRider
    IL_00b0:  ldarg.0
    IL_00b1:  ldarg.1
    IL_00b2:  ldstr      "IsCreativeFlyEnabled"
    IL_00b7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_00bc:  call       instance void Game.ComponentLocomotion::set_IsCreativeFlyEnabled(bool)
    IL_00c1:  ldarg.0
    IL_00c2:  ldarg.1
    IL_00c3:  ldstr      "AccelerationFactor"
    IL_00c8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00cd:  call       instance void Game.ComponentLocomotion::set_AccelerationFactor(float32)
    IL_00d2:  ldarg.0
    IL_00d3:  ldarg.1
    IL_00d4:  ldstr      "WalkSpeed"
    IL_00d9:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00de:  call       instance void Game.ComponentLocomotion::set_WalkSpeed(float32)
    IL_00e3:  ldarg.0
    IL_00e4:  ldarg.1
    IL_00e5:  ldstr      "LadderSpeed"
    IL_00ea:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00ef:  call       instance void Game.ComponentLocomotion::set_LadderSpeed(float32)
    IL_00f4:  ldarg.0
    IL_00f5:  ldarg.1
    IL_00f6:  ldstr      "JumpSpeed"
    IL_00fb:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0100:  call       instance void Game.ComponentLocomotion::set_JumpSpeed(float32)
    IL_0105:  ldarg.0
    IL_0106:  ldarg.1
    IL_0107:  ldstr      "CreativeFlySpeed"
    IL_010c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0111:  call       instance void Game.ComponentLocomotion::set_CreativeFlySpeed(float32)
    IL_0116:  ldarg.0
    IL_0117:  ldarg.1
    IL_0118:  ldstr      "FlySpeed"
    IL_011d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0122:  call       instance void Game.ComponentLocomotion::set_FlySpeed(float32)
    IL_0127:  ldarg.0
    IL_0128:  ldarg.1
    IL_0129:  ldstr      "SwimSpeed"
    IL_012e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0133:  call       instance void Game.ComponentLocomotion::set_SwimSpeed(float32)
    IL_0138:  ldarg.0
    IL_0139:  ldarg.1
    IL_013a:  ldstr      "TurnSpeed"
    IL_013f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0144:  call       instance void Game.ComponentLocomotion::set_TurnSpeed(float32)
    IL_0149:  ldarg.0
    IL_014a:  ldarg.1
    IL_014b:  ldstr      "LookSpeed"
    IL_0150:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0155:  call       instance void Game.ComponentLocomotion::set_LookSpeed(float32)
    IL_015a:  ldarg.0
    IL_015b:  ldarg.1
    IL_015c:  ldstr      "InAirWalkFactor"
    IL_0161:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0166:  call       instance void Game.ComponentLocomotion::set_InAirWalkFactor(float32)
    IL_016b:  ldarg.0
    IL_016c:  ldarg.1
    IL_016d:  ldstr      "WalkSpeedWhenTurning"
    IL_0172:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0177:  stfld      float32 Game.ComponentLocomotion::m_walkSpeedWhenTurning
    IL_017c:  ldarg.0
    IL_017d:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0182:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0187:  brtrue.s   IL_01ef

    IL_0189:  ldarg.0
    IL_018a:  ldarg.0
    IL_018b:  call       instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_0190:  ldarg.0
    IL_0191:  ldfld      class Game.Random Game.ComponentLocomotion::m_random
    IL_0196:  ldc.r4     0.85000002
    IL_019b:  ldc.r4     1.
    IL_01a0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01a5:  mul
    IL_01a6:  call       instance void Game.ComponentLocomotion::set_WalkSpeed(float32)
    IL_01ab:  ldarg.0
    IL_01ac:  ldarg.0
    IL_01ad:  call       instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_01b2:  ldarg.0
    IL_01b3:  ldfld      class Game.Random Game.ComponentLocomotion::m_random
    IL_01b8:  ldc.r4     0.85000002
    IL_01bd:  ldc.r4     1.
    IL_01c2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01c7:  mul
    IL_01c8:  call       instance void Game.ComponentLocomotion::set_FlySpeed(float32)
    IL_01cd:  ldarg.0
    IL_01ce:  ldarg.0
    IL_01cf:  call       instance float32 Game.ComponentLocomotion::get_SwimSpeed()
    IL_01d4:  ldarg.0
    IL_01d5:  ldfld      class Game.Random Game.ComponentLocomotion::m_random
    IL_01da:  ldc.r4     0.85000002
    IL_01df:  ldc.r4     1.
    IL_01e4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e9:  mul
    IL_01ea:  call       instance void Game.ComponentLocomotion::set_SwimSpeed(float32)
    IL_01ef:  ret
  } // end of method ComponentLocomotion::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "IsCreativeFlyEnabled"
    IL_0006:  ldarg.0
    IL_0007:  call       instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0011:  ret
  } // end of method ComponentLocomotion::Save

  .method private hidebysig instance void 
          NormalMovement(float32 dt) cil managed
  {
    // 代码大小       2014 (0x7de)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             float32 V_8,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             float32 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             float32 V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             class Game.ComponentRider V_16,
             class Game.ComponentClothing V_17,
             valuetype [System.Runtime]System.Nullable`1<int32> V_18,
             valuetype [Engine]Engine.Vector3 V_19,
             valuetype [Engine]Engine.Vector3 V_20,
             valuetype [Engine]Engine.Vector3 V_21,
             valuetype [Engine]Engine.Vector3 V_22,
             float32 V_23,
             float32 V_24)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0017:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001c:  ldc.i4.1
    IL_001d:  callvirt   instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0028:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_002d:  ldc.i4.1
    IL_002e:  callvirt   instance void Game.ComponentBody::set_IsWaterDragEnabled(bool)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0039:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_003e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0043:  stloc.0
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_004a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_004f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0054:  stloc.3
    IL_0055:  ldloca.s   V_3
    IL_0057:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_005c:  stloc.1
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0063:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0068:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_006d:  stloc.3
    IL_006e:  ldloca.s   V_3
    IL_0070:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0075:  ldloc.1
    IL_0076:  ldarg.0
    IL_0077:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_007c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0081:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0086:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Quaternion)
    IL_008b:  stloc.2
    IL_008c:  ldarg.0
    IL_008d:  call       instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_0092:  ldc.r4     0.0
    IL_0097:  ble.un     IL_04f2

    IL_009c:  ldarg.0
    IL_009d:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_00a2:  stloc.s    V_4
    IL_00a4:  ldloca.s   V_4
    IL_00a6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00ab:  brfalse    IL_04f2

    IL_00b0:  ldarg.0
    IL_00b1:  call       instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_00b6:  brfalse    IL_021c

    IL_00bb:  ldloca.s   V_5
    IL_00bd:  ldarg.0
    IL_00be:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_00c3:  stloc.s    V_4
    IL_00c5:  ldloca.s   V_4
    IL_00c7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00cc:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00d1:  ldc.r4     0.0
    IL_00d6:  ldarg.0
    IL_00d7:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_00dc:  stloc.s    V_4
    IL_00de:  ldloca.s   V_4
    IL_00e0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00e5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ea:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00ef:  ldarg.0
    IL_00f0:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    IL_00f5:  stloc.s    V_9
    IL_00f7:  ldloca.s   V_9
    IL_00f9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00fe:  brfalse.s  IL_0118

    IL_0100:  ldloc.s    V_5
    IL_0102:  ldarg.0
    IL_0103:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    IL_0108:  stloc.s    V_9
    IL_010a:  ldloca.s   V_9
    IL_010c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0111:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0116:  stloc.s    V_5
    IL_0118:  call       bool Game.SettingsManager::get_HorizontalCreativeFlight()
    IL_011d:  brfalse.s  IL_014f

    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.SubsystemInput Game.ComponentLocomotion::m_subsystemInput
    IL_0125:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_012a:  brfalse.s  IL_014f

    IL_012c:  ldloc.2
    IL_012d:  ldc.r4     1.
    IL_0132:  ldc.r4     0.0
    IL_0137:  ldc.r4     1.
    IL_013c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0141:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0146:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_014b:  stloc.s    V_6
    IL_014d:  br.s       IL_016b

    IL_014f:  ldloc.2
    IL_0150:  ldc.r4     0.1
    IL_0155:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_015a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0164:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0169:  stloc.s    V_6
    IL_016b:  ldarg.0
    IL_016c:  call       instance float32 Game.ComponentLocomotion::get_CreativeFlySpeed()
    IL_0171:  ldloc.1
    IL_0172:  ldloc.s    V_5
    IL_0174:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0179:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_017e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0183:  ldloc.s    V_5
    IL_0185:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_018a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_018f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0194:  ldloc.s    V_6
    IL_0196:  ldloc.s    V_5
    IL_0198:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_019d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01a2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ac:  stloc.s    V_7
    IL_01ae:  ldloc.s    V_5
    IL_01b0:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_01b5:  call       bool [Engine]Engine.Vector3::op_Equality(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_01ba:  brtrue.s   IL_01c3

    IL_01bc:  ldc.r4     3.
    IL_01c1:  br.s       IL_01c8

    IL_01c3:  ldc.r4     6.
    IL_01c8:  stloc.s    V_8
    IL_01ca:  ldloc.0
    IL_01cb:  ldarg.0
    IL_01cc:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_01d1:  ldloc.s    V_8
    IL_01d3:  mul
    IL_01d4:  ldarg.1
    IL_01d5:  mul
    IL_01d6:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01db:  ldloc.s    V_7
    IL_01dd:  ldloc.0
    IL_01de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01e3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01e8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ed:  stloc.0
    IL_01ee:  ldarg.0
    IL_01ef:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_01f4:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01f9:  ldc.i4.0
    IL_01fa:  callvirt   instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_01ff:  ldarg.0
    IL_0200:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0205:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_020a:  ldc.i4.0
    IL_020b:  callvirt   instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
    IL_0210:  ldarg.0
    IL_0211:  ldc.i4.1
    IL_0212:  stfld      bool Game.ComponentLocomotion::m_flying
    IL_0217:  br         IL_04f2

    IL_021c:  ldarg.0
    IL_021d:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_0222:  stloc.s    V_4
    IL_0224:  ldloca.s   V_4
    IL_0226:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_022b:  stloc.s    V_10
    IL_022d:  ldarg.0
    IL_022e:  ldfld      float32 Game.ComponentLocomotion::m_walkSpeedWhenTurning
    IL_0233:  ldc.r4     0.0
    IL_0238:  ble.un.s   IL_028f

    IL_023a:  ldarg.0
    IL_023b:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    IL_0240:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0245:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_024a:  ldc.r4     2.e-002
    IL_024f:  ble.un.s   IL_028f

    IL_0251:  ldloca.s   V_10
    IL_0253:  ldloc.s    V_10
    IL_0255:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_025a:  ldc.r4     0.0
    IL_025f:  ldarg.0
    IL_0260:  ldfld      float32 Game.ComponentLocomotion::m_walkSpeedWhenTurning
    IL_0265:  ldc.r4     2.
    IL_026a:  ldarg.0
    IL_026b:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    IL_0270:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0275:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_027a:  mul
    IL_027b:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0280:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0285:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_028a:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_028f:  ldarg.0
    IL_0290:  call       instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_0295:  stloc.s    V_11
    IL_0297:  ldarg.0
    IL_0298:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_029d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02a2:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_02a7:  ldc.r4     0.2
    IL_02ac:  ble.un.s   IL_02b8

    IL_02ae:  ldloc.s    V_11
    IL_02b0:  ldc.r4     0.66000003
    IL_02b5:  mul
    IL_02b6:  stloc.s    V_11
    IL_02b8:  ldarg.0
    IL_02b9:  ldfld      class Game.ComponentVitalStats Game.ComponentLocomotion::m_componentVitalStats
    IL_02be:  brfalse.s  IL_02d0

    IL_02c0:  ldloc.s    V_11
    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      class Game.ComponentVitalStats Game.ComponentLocomotion::m_componentVitalStats
    IL_02c8:  callvirt   instance float32 Game.ComponentVitalStats::get_PerformanceFactor()
    IL_02cd:  mul
    IL_02ce:  stloc.s    V_11
    IL_02d0:  ldarg.0
    IL_02d1:  ldfld      class Game.ComponentClothing Game.ComponentLocomotion::m_componentClothing
    IL_02d6:  brfalse.s  IL_02e8

    IL_02d8:  ldloc.s    V_11
    IL_02da:  ldarg.0
    IL_02db:  ldfld      class Game.ComponentClothing Game.ComponentLocomotion::m_componentClothing
    IL_02e0:  callvirt   instance float32 Game.ComponentClothing::get_MovementSpeedFactor()
    IL_02e5:  mul
    IL_02e6:  stloc.s    V_11
    IL_02e8:  ldarg.0
    IL_02e9:  ldfld      class Game.ComponentMount Game.ComponentLocomotion::m_componentMount
    IL_02ee:  brfalse.s  IL_031f

    IL_02f0:  ldarg.0
    IL_02f1:  ldfld      class Game.ComponentMount Game.ComponentLocomotion::m_componentMount
    IL_02f6:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_02fb:  stloc.s    V_16
    IL_02fd:  ldloc.s    V_16
    IL_02ff:  brfalse.s  IL_031f

    IL_0301:  ldloc.s    V_16
    IL_0303:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0308:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentClothing>()
    IL_030d:  stloc.s    V_17
    IL_030f:  ldloc.s    V_17
    IL_0311:  brfalse.s  IL_031f

    IL_0313:  ldloc.s    V_11
    IL_0315:  ldloc.s    V_17
    IL_0317:  callvirt   instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
    IL_031c:  mul
    IL_031d:  stloc.s    V_11
    IL_031f:  ldloc.s    V_10
    IL_0321:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0326:  ldloc.1
    IL_0327:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_032c:  ldc.r4     0.0
    IL_0331:  ldloc.1
    IL_0332:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0337:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_033c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0341:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0346:  ldloc.s    V_10
    IL_0348:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_034d:  ldloc.2
    IL_034e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0353:  ldc.r4     0.0
    IL_0358:  ldloc.2
    IL_0359:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_035e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0363:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0368:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_036d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0372:  stloc.s    V_12
    IL_0374:  ldloc.s    V_11
    IL_0376:  ldloc.s    V_12
    IL_0378:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_037d:  ldarg.0
    IL_037e:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0383:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0388:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_StandingOnVelocity()
    IL_038d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0392:  stloc.s    V_13
    IL_0394:  ldarg.0
    IL_0395:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_039a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_039f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_03a4:  stloc.s    V_18
    IL_03a6:  ldloca.s   V_18
    IL_03a8:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_03ad:  brfalse.s  IL_03f7

    IL_03af:  ldarg.1
    IL_03b0:  ldc.r4     6.
    IL_03b5:  mul
    IL_03b6:  ldarg.0
    IL_03b7:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_03bc:  mul
    IL_03bd:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03c2:  ldarg.0
    IL_03c3:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_03c8:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03cd:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_03d2:  stloc.s    V_18
    IL_03d4:  ldloca.s   V_18
    IL_03d6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_03db:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_03e0:  ldelem.ref
    IL_03e1:  ldfld      float32 Game.Block::FrictionFactor
    IL_03e6:  mul
    IL_03e7:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_03ec:  stloc.s    V_14
    IL_03ee:  ldarg.0
    IL_03ef:  ldc.i4.1
    IL_03f0:  stfld      bool Game.ComponentLocomotion::m_walking
    IL_03f5:  br.s       IL_043a

    IL_03f7:  ldarg.1
    IL_03f8:  ldc.r4     6.
    IL_03fd:  mul
    IL_03fe:  ldarg.0
    IL_03ff:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_0404:  mul
    IL_0405:  ldarg.0
    IL_0406:  call       instance float32 Game.ComponentLocomotion::get_InAirWalkFactor()
    IL_040b:  mul
    IL_040c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0411:  stloc.s    V_14
    IL_0413:  ldarg.0
    IL_0414:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0419:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_041e:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0423:  ldc.r4     0.0
    IL_0428:  ble.un.s   IL_0433

    IL_042a:  ldarg.0
    IL_042b:  ldc.i4.1
    IL_042c:  stfld      bool Game.ComponentLocomotion::m_swimming
    IL_0431:  br.s       IL_043a

    IL_0433:  ldarg.0
    IL_0434:  ldc.i4.1
    IL_0435:  stfld      bool Game.ComponentLocomotion::m_falling
    IL_043a:  ldloca.s   V_0
    IL_043c:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0441:  dup
    IL_0442:  ldind.r4
    IL_0443:  ldloc.s    V_14
    IL_0445:  ldloc.s    V_13
    IL_0447:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_044c:  ldloc.0
    IL_044d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0452:  sub
    IL_0453:  mul
    IL_0454:  add
    IL_0455:  stind.r4
    IL_0456:  ldloca.s   V_0
    IL_0458:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_045d:  dup
    IL_045e:  ldind.r4
    IL_045f:  ldloc.s    V_14
    IL_0461:  ldloc.s    V_13
    IL_0463:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0468:  ldloc.0
    IL_0469:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_046e:  sub
    IL_046f:  mul
    IL_0470:  add
    IL_0471:  stind.r4
    IL_0472:  ldloc.s    V_10
    IL_0474:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0479:  ldloc.1
    IL_047a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_047f:  ldloc.s    V_10
    IL_0481:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0486:  ldloc.2
    IL_0487:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_048c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0491:  stloc.s    V_15
    IL_0493:  ldarg.0
    IL_0494:  ldfld      class Game.ComponentVitalStats Game.ComponentLocomotion::m_componentVitalStats
    IL_0499:  brfalse.s  IL_04af

    IL_049b:  ldloc.s    V_15
    IL_049d:  ldarg.0
    IL_049e:  ldfld      class Game.ComponentVitalStats Game.ComponentLocomotion::m_componentVitalStats
    IL_04a3:  callvirt   instance float32 Game.ComponentVitalStats::get_PerformanceFactor()
    IL_04a8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_04ad:  stloc.s    V_15
    IL_04af:  ldloca.s   V_0
    IL_04b1:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_04b6:  dup
    IL_04b7:  ldind.r4
    IL_04b8:  ldc.r4     10.
    IL_04bd:  ldarg.0
    IL_04be:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_04c3:  mul
    IL_04c4:  ldloc.s    V_15
    IL_04c6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_04cb:  mul
    IL_04cc:  ldarg.0
    IL_04cd:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_04d2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04d7:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_04dc:  mul
    IL_04dd:  ldarg.1
    IL_04de:  mul
    IL_04df:  add
    IL_04e0:  stind.r4
    IL_04e1:  ldarg.0
    IL_04e2:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_04e7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04ec:  ldc.i4.0
    IL_04ed:  callvirt   instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
    IL_04f2:  ldarg.0
    IL_04f3:  call       instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_04f8:  ldc.r4     0.0
    IL_04fd:  ble.un.s   IL_056f

    IL_04ff:  ldarg.0
    IL_0500:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    IL_0505:  stloc.s    V_9
    IL_0507:  ldloca.s   V_9
    IL_0509:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_050e:  brfalse.s  IL_056f

    IL_0510:  ldarg.0
    IL_0511:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    IL_0516:  stloc.s    V_9
    IL_0518:  ldloca.s   V_9
    IL_051a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_051f:  stloc.s    V_19
    IL_0521:  ldarg.0
    IL_0522:  call       instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_0527:  ldloc.s    V_19
    IL_0529:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_052e:  stloc.s    V_20
    IL_0530:  ldloc.0
    IL_0531:  ldc.r4     2.
    IL_0536:  ldarg.0
    IL_0537:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_053c:  mul
    IL_053d:  ldarg.1
    IL_053e:  mul
    IL_053f:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0544:  ldloc.s    V_20
    IL_0546:  ldloc.0
    IL_0547:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_054c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0551:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0556:  stloc.0
    IL_0557:  ldarg.0
    IL_0558:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_055d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0562:  ldc.i4.0
    IL_0563:  callvirt   instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_0568:  ldarg.0
    IL_0569:  ldc.i4.1
    IL_056a:  stfld      bool Game.ComponentLocomotion::m_flying
    IL_056f:  ldarg.0
    IL_0570:  call       instance float32 Game.ComponentLocomotion::get_SwimSpeed()
    IL_0575:  ldc.r4     0.0
    IL_057a:  ble.un     IL_069b

    IL_057f:  ldarg.0
    IL_0580:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_SwimOrder()
    IL_0585:  stloc.s    V_9
    IL_0587:  ldloca.s   V_9
    IL_0589:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_058e:  brfalse    IL_069b

    IL_0593:  ldarg.0
    IL_0594:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0599:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_059e:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_05a3:  ldc.r4     0.5
    IL_05a8:  ble.un     IL_069b

    IL_05ad:  ldarg.0
    IL_05ae:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_SwimOrder()
    IL_05b3:  stloc.s    V_9
    IL_05b5:  ldloca.s   V_9
    IL_05b7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_05bc:  stloc.s    V_21
    IL_05be:  ldarg.0
    IL_05bf:  call       instance float32 Game.ComponentLocomotion::get_SwimSpeed()
    IL_05c4:  ldloc.s    V_21
    IL_05c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_05cb:  stloc.s    V_22
    IL_05cd:  ldc.r4     2.
    IL_05d2:  stloc.s    V_23
    IL_05d4:  ldloca.s   V_21
    IL_05d6:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_05db:  ldc.r4     0.99000001
    IL_05e0:  blt.un.s   IL_0628

    IL_05e2:  ldloc.s    V_22
    IL_05e4:  ldc.r4     1.
    IL_05e9:  ldc.r4     2.
    IL_05ee:  ldarg.0
    IL_05ef:  ldfld      float32 Game.ComponentLocomotion::m_swimBurstRemaining
    IL_05f4:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_05f9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_05fe:  stloc.s    V_22
    IL_0600:  ldloc.s    V_23
    IL_0602:  ldc.r4     1.
    IL_0607:  ldc.r4     4.
    IL_060c:  ldarg.0
    IL_060d:  ldfld      float32 Game.ComponentLocomotion::m_swimBurstRemaining
    IL_0612:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0617:  mul
    IL_0618:  stloc.s    V_23
    IL_061a:  ldarg.0
    IL_061b:  ldarg.0
    IL_061c:  ldfld      float32 Game.ComponentLocomotion::m_swimBurstRemaining
    IL_0621:  ldarg.1
    IL_0622:  sub
    IL_0623:  stfld      float32 Game.ComponentLocomotion::m_swimBurstRemaining
    IL_0628:  ldloc.0
    IL_0629:  ldloc.s    V_23
    IL_062b:  ldarg.0
    IL_062c:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_0631:  mul
    IL_0632:  ldarg.1
    IL_0633:  mul
    IL_0634:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0639:  ldloc.s    V_22
    IL_063b:  ldloc.0
    IL_063c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0641:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0646:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_064b:  stloc.0
    IL_064c:  ldarg.0
    IL_064d:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0652:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0657:  ldloc.s    V_21
    IL_0659:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_065e:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0663:  ldc.r4     7.e-002
    IL_0668:  cgt.un
    IL_066a:  ldc.i4.0
    IL_066b:  ceq
    IL_066d:  callvirt   instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_0672:  ldarg.0
    IL_0673:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0678:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_067d:  ldc.i4.0
    IL_067e:  callvirt   instance void Game.ComponentBody::set_IsWaterDragEnabled(bool)
    IL_0683:  ldarg.0
    IL_0684:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0689:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_068e:  ldc.i4.0
    IL_068f:  callvirt   instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
    IL_0694:  ldarg.0
    IL_0695:  ldc.i4.1
    IL_0696:  stfld      bool Game.ComponentLocomotion::m_swimming
    IL_069b:  ldarg.0
    IL_069c:  call       instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_06a1:  ldc.r4     0.0
    IL_06a6:  ble.un     IL_0775

    IL_06ab:  ldarg.0
    IL_06ac:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_06b1:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_06b6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_06bb:  stloc.s    V_18
    IL_06bd:  ldloca.s   V_18
    IL_06bf:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_06c4:  brtrue.s   IL_06e0

    IL_06c6:  ldarg.0
    IL_06c7:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_06cc:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_06d1:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_06d6:  ldc.r4     0.5
    IL_06db:  ble.un     IL_0775

    IL_06e0:  ldarg.0
    IL_06e1:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_06e6:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_06eb:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_06f0:  brtrue     IL_0775

    IL_06f5:  ldarg.0
    IL_06f6:  call       instance float32 Game.ComponentLocomotion::get_JumpSpeed()
    IL_06fb:  stloc.s    V_24
    IL_06fd:  ldarg.0
    IL_06fe:  ldfld      class Game.ComponentVitalStats Game.ComponentLocomotion::m_componentVitalStats
    IL_0703:  brfalse.s  IL_0715

    IL_0705:  ldloc.s    V_24
    IL_0707:  ldarg.0
    IL_0708:  ldfld      class Game.ComponentVitalStats Game.ComponentLocomotion::m_componentVitalStats
    IL_070d:  callvirt   instance float32 Game.ComponentVitalStats::get_PerformanceFactor()
    IL_0712:  mul
    IL_0713:  stloc.s    V_24
    IL_0715:  ldloca.s   V_0
    IL_0717:  ldloc.0
    IL_0718:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_071d:  ldarg.0
    IL_071e:  call       instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_0723:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0728:  ldloc.s    V_24
    IL_072a:  mul
    IL_072b:  add
    IL_072c:  ldloc.s    V_24
    IL_072e:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0733:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0738:  ldarg.0
    IL_0739:  ldc.i4.1
    IL_073a:  stfld      bool Game.ComponentLocomotion::m_jumping
    IL_073f:  ldarg.0
    IL_0740:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0745:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_074a:  ldc.r4     2.
    IL_074f:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_0754:  pop
    IL_0755:  ldarg.0
    IL_0756:  ldfld      class Game.SubsystemNoise Game.ComponentLocomotion::m_subsystemNoise
    IL_075b:  ldarg.0
    IL_075c:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0761:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0766:  ldc.r4     0.25
    IL_076b:  ldc.r4     10.
    IL_0770:  callvirt   instance void Game.SubsystemNoise::MakeNoise(class Game.ComponentBody,
                                                                      float32,
                                                                      float32)
    IL_0775:  ldarg.0
    IL_0776:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_077b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0780:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0785:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_078a:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_078f:  ldc.r4     3.
    IL_0794:  ble.un.s   IL_07cc

    IL_0796:  ldarg.0
    IL_0797:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_079c:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_07a1:  ldc.r4     2.
    IL_07a6:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_07ab:  pop
    IL_07ac:  ldarg.0
    IL_07ad:  ldfld      class Game.SubsystemNoise Game.ComponentLocomotion::m_subsystemNoise
    IL_07b2:  ldarg.0
    IL_07b3:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_07b8:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_07bd:  ldc.r4     0.25
    IL_07c2:  ldc.r4     10.
    IL_07c7:  callvirt   instance void Game.SubsystemNoise::MakeNoise(class Game.ComponentBody,
                                                                      float32,
                                                                      float32)
    IL_07cc:  ldarg.0
    IL_07cd:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_07d2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_07d7:  ldloc.0
    IL_07d8:  callvirt   instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_07dd:  ret
  } // end of method ComponentLocomotion::NormalMovement

  .method private hidebysig instance void 
          LadderMovement(float32 dt,
                         int32 'value') cil managed
  {
    // 代码大小       612 (0x264)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             float32 V_5,
             valuetype [System.Runtime]System.Nullable`1<int32> V_6,
             valuetype [Engine]Engine.Matrix V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  ldc.i4.0
    IL_000c:  callvirt   instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0017:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0021:  stloc.0
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0028:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_002d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0032:  stloc.1
    IL_0033:  ldarg.2
    IL_0034:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0039:  stloc.2
    IL_003a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_003f:  ldloc.2
    IL_0040:  ldelem.ref
    IL_0041:  isinst     Game.LadderBlock
    IL_0046:  brfalse    IL_0157

    IL_004b:  ldarg.0
    IL_004c:  ldarg.2
    IL_004d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0052:  call       instance void Game.ComponentLocomotion::set_LadderValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0057:  ldarg.0
    IL_0058:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_005d:  stloc.3
    IL_005e:  ldloca.s   V_3
    IL_0060:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0065:  brfalse    IL_00fc

    IL_006a:  ldarg.0
    IL_006b:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_0070:  stloc.3
    IL_0071:  ldloca.s   V_3
    IL_0073:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0078:  stloc.s    V_4
    IL_007a:  ldarg.0
    IL_007b:  call       instance float32 Game.ComponentLocomotion::get_LadderSpeed()
    IL_0080:  ldloc.s    V_4
    IL_0082:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0087:  mul
    IL_0088:  stloc.s    V_5
    IL_008a:  ldloca.s   V_1
    IL_008c:  ldc.r4     5.
    IL_0091:  ldloc.0
    IL_0092:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0097:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_009c:  ldc.r4     0.5
    IL_00a1:  add
    IL_00a2:  ldloc.0
    IL_00a3:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00a8:  sub
    IL_00a9:  mul
    IL_00aa:  stfld      float32 [Engine]Engine.Vector3::X
    IL_00af:  ldloca.s   V_1
    IL_00b1:  ldc.r4     5.
    IL_00b6:  ldloc.0
    IL_00b7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00bc:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00c1:  ldc.r4     0.5
    IL_00c6:  add
    IL_00c7:  ldloc.0
    IL_00c8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00cd:  sub
    IL_00ce:  mul
    IL_00cf:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_00d4:  ldloca.s   V_1
    IL_00d6:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_00db:  dup
    IL_00dc:  ldind.r4
    IL_00dd:  ldc.r4     20.
    IL_00e2:  ldarg.1
    IL_00e3:  mul
    IL_00e4:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00e9:  ldloc.s    V_5
    IL_00eb:  ldloc.1
    IL_00ec:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00f1:  sub
    IL_00f2:  mul
    IL_00f3:  add
    IL_00f4:  stind.r4
    IL_00f5:  ldarg.0
    IL_00f6:  ldc.i4.1
    IL_00f7:  stfld      bool Game.ComponentLocomotion::m_climbing
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0102:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0107:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_010c:  stloc.s    V_6
    IL_010e:  ldloca.s   V_6
    IL_0110:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0115:  brfalse.s  IL_0182

    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.SubsystemTime Game.ComponentLocomotion::m_subsystemTime
    IL_011d:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0122:  ldarg.0
    IL_0123:  ldfld      float64 Game.ComponentLocomotion::m_ladderActivationTime
    IL_0128:  blt.un.s   IL_0182

    IL_012a:  ldarg.0
    IL_012b:  ldloca.s   V_6
    IL_012d:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0133:  ldloc.s    V_6
    IL_0135:  call       instance void Game.ComponentLocomotion::set_LadderValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_013a:  ldarg.0
    IL_013b:  ldarg.0
    IL_013c:  ldfld      class Game.SubsystemTime Game.ComponentLocomotion::m_subsystemTime
    IL_0141:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0146:  ldc.r8     0.20000000298023224
    IL_014f:  add
    IL_0150:  stfld      float64 Game.ComponentLocomotion::m_ladderActivationTime
    IL_0155:  br.s       IL_0182

    IL_0157:  ldarg.0
    IL_0158:  ldloca.s   V_6
    IL_015a:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0160:  ldloc.s    V_6
    IL_0162:  call       instance void Game.ComponentLocomotion::set_LadderValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0167:  ldarg.0
    IL_0168:  ldarg.0
    IL_0169:  ldfld      class Game.SubsystemTime Game.ComponentLocomotion::m_subsystemTime
    IL_016e:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0173:  ldc.r8     0.20000000298023224
    IL_017c:  add
    IL_017d:  stfld      float64 Game.ComponentLocomotion::m_ladderActivationTime
    IL_0182:  ldarg.0
    IL_0183:  call       instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_0188:  ldc.r4     0.0
    IL_018d:  ble.un.s   IL_0202

    IL_018f:  ldarg.0
    IL_0190:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0195:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_019a:  ldc.r4     2.
    IL_019f:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_01a4:  pop
    IL_01a5:  ldloc.1
    IL_01a6:  ldarg.0
    IL_01a7:  call       instance float32 Game.ComponentLocomotion::get_JumpSpeed()
    IL_01ac:  ldarg.0
    IL_01ad:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_01b2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01b7:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_01bc:  stloc.s    V_7
    IL_01be:  ldloca.s   V_7
    IL_01c0:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_01c5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ca:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01cf:  stloc.1
    IL_01d0:  ldarg.0
    IL_01d1:  ldarg.0
    IL_01d2:  ldfld      class Game.SubsystemTime Game.ComponentLocomotion::m_subsystemTime
    IL_01d7:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01dc:  ldc.r8     0.33000001311302185
    IL_01e5:  add
    IL_01e6:  stfld      float64 Game.ComponentLocomotion::m_ladderActivationTime
    IL_01eb:  ldarg.0
    IL_01ec:  ldloca.s   V_6
    IL_01ee:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_01f4:  ldloc.s    V_6
    IL_01f6:  call       instance void Game.ComponentLocomotion::set_LadderValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_01fb:  ldarg.0
    IL_01fc:  ldc.i4.1
    IL_01fd:  stfld      bool Game.ComponentLocomotion::m_jumping
    IL_0202:  ldarg.0
    IL_0203:  call       instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_0208:  brfalse.s  IL_0230

    IL_020a:  ldarg.0
    IL_020b:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0210:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0215:  ldc.r4     1.
    IL_021a:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_021f:  pop
    IL_0220:  ldarg.0
    IL_0221:  ldloca.s   V_6
    IL_0223:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0229:  ldloc.s    V_6
    IL_022b:  call       instance void Game.ComponentLocomotion::set_LadderValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0230:  ldarg.0
    IL_0231:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0236:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_023b:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0240:  brfalse.s  IL_0252

    IL_0242:  ldarg.0
    IL_0243:  ldloca.s   V_6
    IL_0245:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_024b:  ldloc.s    V_6
    IL_024d:  call       instance void Game.ComponentLocomotion::set_LadderValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0252:  ldarg.0
    IL_0253:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0258:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_025d:  ldloc.1
    IL_025e:  callvirt   instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_0263:  ret
  } // end of method ComponentLocomotion::LadderMovement

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentLocomotion::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentLocomotion::.ctor

  .property instance float32 AccelerationFactor()
  {
    .get instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    .set instance void Game.ComponentLocomotion::set_AccelerationFactor(float32)
  } // end of property ComponentLocomotion::AccelerationFactor
  .property instance float32 WalkSpeed()
  {
    .get instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    .set instance void Game.ComponentLocomotion::set_WalkSpeed(float32)
  } // end of property ComponentLocomotion::WalkSpeed
  .property instance float32 LadderSpeed()
  {
    .get instance float32 Game.ComponentLocomotion::get_LadderSpeed()
    .set instance void Game.ComponentLocomotion::set_LadderSpeed(float32)
  } // end of property ComponentLocomotion::LadderSpeed
  .property instance float32 JumpSpeed()
  {
    .get instance float32 Game.ComponentLocomotion::get_JumpSpeed()
    .set instance void Game.ComponentLocomotion::set_JumpSpeed(float32)
  } // end of property ComponentLocomotion::JumpSpeed
  .property instance float32 FlySpeed()
  {
    .get instance float32 Game.ComponentLocomotion::get_FlySpeed()
    .set instance void Game.ComponentLocomotion::set_FlySpeed(float32)
  } // end of property ComponentLocomotion::FlySpeed
  .property instance float32 CreativeFlySpeed()
  {
    .get instance float32 Game.ComponentLocomotion::get_CreativeFlySpeed()
    .set instance void Game.ComponentLocomotion::set_CreativeFlySpeed(float32)
  } // end of property ComponentLocomotion::CreativeFlySpeed
  .property instance float32 SwimSpeed()
  {
    .get instance float32 Game.ComponentLocomotion::get_SwimSpeed()
    .set instance void Game.ComponentLocomotion::set_SwimSpeed(float32)
  } // end of property ComponentLocomotion::SwimSpeed
  .property instance float32 TurnSpeed()
  {
    .get instance float32 Game.ComponentLocomotion::get_TurnSpeed()
    .set instance void Game.ComponentLocomotion::set_TurnSpeed(float32)
  } // end of property ComponentLocomotion::TurnSpeed
  .property instance float32 LookSpeed()
  {
    .get instance float32 Game.ComponentLocomotion::get_LookSpeed()
    .set instance void Game.ComponentLocomotion::set_LookSpeed(float32)
  } // end of property ComponentLocomotion::LookSpeed
  .property instance float32 InAirWalkFactor()
  {
    .get instance float32 Game.ComponentLocomotion::get_InAirWalkFactor()
    .set instance void Game.ComponentLocomotion::set_InAirWalkFactor(float32)
  } // end of property ComponentLocomotion::InAirWalkFactor
  .property instance valuetype [Engine]Engine.Vector2
          LookAngles()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    .set instance void Game.ComponentLocomotion::set_LookAngles(valuetype [Engine]Engine.Vector2)
  } // end of property ComponentLocomotion::LookAngles
  .property instance valuetype [System.Runtime]System.Nullable`1<int32>
          LadderValue()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::get_LadderValue()
    .set instance void Game.ComponentLocomotion::set_LadderValue(valuetype [System.Runtime]System.Nullable`1<int32>)
  } // end of property ComponentLocomotion::LadderValue
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
          WalkOrder()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    .set instance void Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
  } // end of property ComponentLocomotion::WalkOrder
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
          FlyOrder()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    .set instance void Game.ComponentLocomotion::set_FlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
  } // end of property ComponentLocomotion::FlyOrder
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
          SwimOrder()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_SwimOrder()
    .set instance void Game.ComponentLocomotion::set_SwimOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
  } // end of property ComponentLocomotion::SwimOrder
  .property instance valuetype [Engine]Engine.Vector2
          TurnOrder()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    .set instance void Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
  } // end of property ComponentLocomotion::TurnOrder
  .property instance valuetype [Engine]Engine.Vector2
          LookOrder()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookOrder()
    .set instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
  } // end of property ComponentLocomotion::LookOrder
  .property instance float32 JumpOrder()
  {
    .get instance float32 Game.ComponentLocomotion::get_JumpOrder()
    .set instance void Game.ComponentLocomotion::set_JumpOrder(float32)
  } // end of property ComponentLocomotion::JumpOrder
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
          LastWalkOrder()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    .set instance void Game.ComponentLocomotion::set_LastWalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
  } // end of property ComponentLocomotion::LastWalkOrder
  .property instance float32 LastJumpOrder()
  {
    .get instance float32 Game.ComponentLocomotion::get_LastJumpOrder()
    .set instance void Game.ComponentLocomotion::set_LastJumpOrder(float32)
  } // end of property ComponentLocomotion::LastJumpOrder
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
          LastFlyOrder()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastFlyOrder()
    .set instance void Game.ComponentLocomotion::set_LastFlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
  } // end of property ComponentLocomotion::LastFlyOrder
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
          LastSwimOrder()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastSwimOrder()
    .set instance void Game.ComponentLocomotion::set_LastSwimOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
  } // end of property ComponentLocomotion::LastSwimOrder
  .property instance valuetype [Engine]Engine.Vector2
          LastTurnOrder()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LastTurnOrder()
    .set instance void Game.ComponentLocomotion::set_LastTurnOrder(valuetype [Engine]Engine.Vector2)
  } // end of property ComponentLocomotion::LastTurnOrder
  .property instance bool IsCreativeFlyEnabled()
  {
    .get instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    .set instance void Game.ComponentLocomotion::set_IsCreativeFlyEnabled(bool)
  } // end of property ComponentLocomotion::IsCreativeFlyEnabled
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentLocomotion::get_UpdateOrder()
  } // end of property ComponentLocomotion::UpdateOrder
} // end of class Game.ComponentLocomotion