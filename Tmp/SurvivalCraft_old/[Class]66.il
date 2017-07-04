.class public auto ansi beforefieldinit Game.ComponentLocomotion
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class Game.ComponentLevel m_componentLevel
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
  .field private bool m_lookAutoLevelX
  .field private bool m_lookAutoLevelY
  .field private float64 m_shoesWarningTime
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
    // 代码大小       1485 (0x5cd)
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
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0010:  brfalse.s  IL_0019

    IL_0012:  ldarg.0
    IL_0013:  ldc.i4.0
    IL_0014:  call       instance void Game.ComponentLocomotion::set_IsCreativeFlyEnabled(bool)
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_001f:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0024:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0029:  ldc.r4     0.0
    IL_002e:  ble.un     IL_04be

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
    IL_007f:  ldc.r4     25.
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
    IL_01e3:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_01e8:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
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
    IL_0228:  call       int32 Game.Terrain::ToCell(float32)
    IL_022d:  stloc.2
    IL_022e:  ldloc.0
    IL_022f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0234:  ldc.r4     0.2
    IL_0239:  add
    IL_023a:  call       int32 Game.Terrain::ToCell(float32)
    IL_023f:  stloc.3
    IL_0240:  ldloc.0
    IL_0241:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0246:  call       int32 Game.Terrain::ToCell(float32)
    IL_024b:  stloc.s    V_4
    IL_024d:  ldarg.0
    IL_024e:  ldfld      class Game.SubsystemTerrain Game.ComponentLocomotion::m_subsystemTerrain
    IL_0253:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0258:  ldloc.2
    IL_0259:  ldloc.3
    IL_025a:  ldloc.s    V_4
    IL_025c:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0261:  stloc.s    V_5
    IL_0263:  ldloc.s    V_5
    IL_0265:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_026a:  stloc.s    V_6
    IL_026c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0271:  ldloc.s    V_6
    IL_0273:  ldelem.ref
    IL_0274:  stloc.s    V_7
    IL_0276:  ldarg.0
    IL_0277:  call       instance float32 Game.ComponentLocomotion::get_LadderSpeed()
    IL_027c:  ldc.r4     0.0
    IL_0281:  ble.un     IL_03c6

    IL_0286:  ldarg.0
    IL_0287:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::get_LadderValue()
    IL_028c:  stloc.s    V_11
    IL_028e:  ldloca.s   V_11
    IL_0290:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0295:  brtrue     IL_03c6

    IL_029a:  ldloc.s    V_7
    IL_029c:  isinst     Game.LadderBlock
    IL_02a1:  brfalse    IL_03c6

    IL_02a6:  ldarg.0
    IL_02a7:  ldfld      class Game.SubsystemTime Game.ComponentLocomotion::m_subsystemTime
    IL_02ac:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_02b1:  ldarg.0
    IL_02b2:  ldfld      float64 Game.ComponentLocomotion::m_ladderActivationTime
    IL_02b7:  blt.un     IL_03c6

    IL_02bc:  ldarg.0
    IL_02bd:  call       instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_02c2:  brtrue     IL_03c6

    IL_02c7:  ldarg.0
    IL_02c8:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_02cd:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02d2:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_02d7:  brtrue     IL_03c6

    IL_02dc:  ldloc.s    V_5
    IL_02de:  call       int32 Game.Terrain::ExtractData(int32)
    IL_02e3:  call       int32 Game.LadderBlock::GetFace(int32)
    IL_02e8:  stloc.s    V_12
    IL_02ea:  ldloc.s    V_12
    IL_02ec:  brtrue.s   IL_030a

    IL_02ee:  ldarg.0
    IL_02ef:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_02f4:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02f9:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_02fe:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0303:  ldc.r4     0.0
    IL_0308:  bgt.s      IL_0388

    IL_030a:  ldloc.s    V_12
    IL_030c:  ldc.i4.1
    IL_030d:  bne.un.s   IL_032b

    IL_030f:  ldarg.0
    IL_0310:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0315:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_031a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_031f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0324:  ldc.r4     0.0
    IL_0329:  bgt.s      IL_0388

    IL_032b:  ldloc.s    V_12
    IL_032d:  ldc.i4.2
    IL_032e:  bne.un.s   IL_034c

    IL_0330:  ldarg.0
    IL_0331:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0336:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_033b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0340:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0345:  ldc.r4     0.0
    IL_034a:  blt.s      IL_0388

    IL_034c:  ldloc.s    V_12
    IL_034e:  ldc.i4.3
    IL_034f:  bne.un.s   IL_036d

    IL_0351:  ldarg.0
    IL_0352:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0357:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_035c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0361:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0366:  ldc.r4     0.0
    IL_036b:  blt.s      IL_0388

    IL_036d:  ldarg.0
    IL_036e:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0373:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0378:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_037d:  stloc.s    V_11
    IL_037f:  ldloca.s   V_11
    IL_0381:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0386:  brtrue.s   IL_03c6

    IL_0388:  ldarg.0
    IL_0389:  ldloc.s    V_5
    IL_038b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0390:  call       instance void Game.ComponentLocomotion::set_LadderValue(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0395:  ldarg.0
    IL_0396:  ldarg.0
    IL_0397:  ldfld      class Game.SubsystemTime Game.ComponentLocomotion::m_subsystemTime
    IL_039c:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_03a1:  ldc.r8     0.20000000298023224
    IL_03aa:  add
    IL_03ab:  stfld      float64 Game.ComponentLocomotion::m_ladderActivationTime
    IL_03b0:  ldarg.0
    IL_03b1:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_03b6:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_03bb:  ldc.r4     1.
    IL_03c0:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_03c5:  pop
    IL_03c6:  ldarg.0
    IL_03c7:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::get_LadderValue()
    IL_03cc:  stloc.s    V_11
    IL_03ce:  ldloca.s   V_11
    IL_03d0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_03d5:  brfalse.s  IL_03e2

    IL_03d7:  ldarg.0
    IL_03d8:  ldarg.1
    IL_03d9:  ldloc.s    V_5
    IL_03db:  call       instance void Game.ComponentLocomotion::LadderMovement(float32,
                                                                                int32)
    IL_03e0:  br.s       IL_03e9

    IL_03e2:  ldarg.0
    IL_03e3:  ldarg.1
    IL_03e4:  call       instance void Game.ComponentLocomotion::NormalMovement(float32)
    IL_03e9:  ldarg.0
    IL_03ea:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_03ef:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03f4:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_03f9:  stloc.s    V_8
    IL_03fb:  ldc.r4     2.
    IL_0400:  ldloc.s    V_8
    IL_0402:  ldfld      float32 [Engine]Engine.Quaternion::Y
    IL_0407:  mul
    IL_0408:  ldloc.s    V_8
    IL_040a:  ldfld      float32 [Engine]Engine.Quaternion::W
    IL_040f:  mul
    IL_0410:  ldc.r4     2.
    IL_0415:  ldloc.s    V_8
    IL_0417:  ldfld      float32 [Engine]Engine.Quaternion::X
    IL_041c:  mul
    IL_041d:  ldloc.s    V_8
    IL_041f:  ldfld      float32 [Engine]Engine.Quaternion::Z
    IL_0424:  mul
    IL_0425:  sub
    IL_0426:  ldc.r4     1.
    IL_042b:  ldc.r4     2.
    IL_0430:  ldloc.s    V_8
    IL_0432:  ldfld      float32 [Engine]Engine.Quaternion::Y
    IL_0437:  mul
    IL_0438:  ldloc.s    V_8
    IL_043a:  ldfld      float32 [Engine]Engine.Quaternion::Y
    IL_043f:  mul
    IL_0440:  sub
    IL_0441:  ldc.r4     2.
    IL_0446:  ldloc.s    V_8
    IL_0448:  ldfld      float32 [Engine]Engine.Quaternion::Z
    IL_044d:  mul
    IL_044e:  ldloc.s    V_8
    IL_0450:  ldfld      float32 [Engine]Engine.Quaternion::Z
    IL_0455:  mul
    IL_0456:  sub
    IL_0457:  call       float32 [Engine]Engine.MathUtils::Atan2(float32,
                                                                 float32)
    IL_045c:  stloc.s    V_9
    IL_045e:  ldloc.s    V_9
    IL_0460:  ldarg.0
    IL_0461:  call       instance float32 Game.ComponentLocomotion::get_TurnSpeed()
    IL_0466:  neg
    IL_0467:  ldarg.0
    IL_0468:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    IL_046d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0472:  mul
    IL_0473:  ldarg.1
    IL_0474:  mul
    IL_0475:  add
    IL_0476:  stloc.s    V_9
    IL_0478:  ldarg.0
    IL_0479:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_047e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0483:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0488:  ldloc.s    V_9
    IL_048a:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_048f:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0494:  ldarg.0
    IL_0495:  ldarg.0
    IL_0496:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_049b:  ldarg.0
    IL_049c:  call       instance float32 Game.ComponentLocomotion::get_LookSpeed()
    IL_04a1:  ldarg.0
    IL_04a2:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookOrder()
    IL_04a7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_04ac:  ldarg.1
    IL_04ad:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_04b2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_04b7:  call       instance void Game.ComponentLocomotion::set_LookAngles(valuetype [Engine]Engine.Vector2)
    IL_04bc:  br.s       IL_04f1

    IL_04be:  ldarg.0
    IL_04bf:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_04c4:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04c9:  ldc.i4.1
    IL_04ca:  callvirt   instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_04cf:  ldarg.0
    IL_04d0:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_04d5:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04da:  ldc.i4.1
    IL_04db:  callvirt   instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
    IL_04e0:  ldarg.0
    IL_04e1:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_04e6:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04eb:  ldc.i4.1
    IL_04ec:  callvirt   instance void Game.ComponentBody::set_IsWaterDragEnabled(bool)
    IL_04f1:  ldarg.0
    IL_04f2:  ldarg.0
    IL_04f3:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_04f8:  call       instance void Game.ComponentLocomotion::set_LastWalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_04fd:  ldarg.0
    IL_04fe:  ldarg.0
    IL_04ff:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    IL_0504:  call       instance void Game.ComponentLocomotion::set_LastFlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0509:  ldarg.0
    IL_050a:  ldarg.0
    IL_050b:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_SwimOrder()
    IL_0510:  call       instance void Game.ComponentLocomotion::set_LastSwimOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0515:  ldarg.0
    IL_0516:  ldarg.0
    IL_0517:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    IL_051c:  call       instance void Game.ComponentLocomotion::set_LastTurnOrder(valuetype [Engine]Engine.Vector2)
    IL_0521:  ldarg.0
    IL_0522:  ldarg.0
    IL_0523:  call       instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_0528:  call       instance void Game.ComponentLocomotion::set_LastJumpOrder(float32)
    IL_052d:  ldarg.0
    IL_052e:  ldloca.s   V_13
    IL_0530:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0536:  ldloc.s    V_13
    IL_0538:  call       instance void Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_053d:  ldarg.0
    IL_053e:  ldloca.s   V_14
    IL_0540:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0546:  ldloc.s    V_14
    IL_0548:  call       instance void Game.ComponentLocomotion::set_FlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_054d:  ldarg.0
    IL_054e:  ldloca.s   V_14
    IL_0550:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0556:  ldloc.s    V_14
    IL_0558:  call       instance void Game.ComponentLocomotion::set_SwimOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_055d:  ldarg.0
    IL_055e:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0563:  call       instance void Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
    IL_0568:  ldarg.0
    IL_0569:  ldc.r4     0.0
    IL_056e:  call       instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_0573:  ldarg.0
    IL_0574:  ldarg.0
    IL_0575:  ldfld      bool Game.ComponentLocomotion::m_lookAutoLevelX
    IL_057a:  brtrue.s   IL_0583

    IL_057c:  ldc.r4     0.0
    IL_0581:  br.s       IL_059b

    IL_0583:  ldc.r4     -10.
    IL_0588:  ldarg.0
    IL_0589:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_058e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0593:  mul
    IL_0594:  ldarg.0
    IL_0595:  call       instance float32 Game.ComponentLocomotion::get_LookSpeed()
    IL_059a:  div
    IL_059b:  ldarg.0
    IL_059c:  ldfld      bool Game.ComponentLocomotion::m_lookAutoLevelY
    IL_05a1:  brtrue.s   IL_05aa

    IL_05a3:  ldc.r4     0.0
    IL_05a8:  br.s       IL_05c2

    IL_05aa:  ldc.r4     -10.
    IL_05af:  ldarg.0
    IL_05b0:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_05b5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_05ba:  mul
    IL_05bb:  ldarg.0
    IL_05bc:  call       instance float32 Game.ComponentLocomotion::get_LookSpeed()
    IL_05c1:  div
    IL_05c2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05c7:  call       instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_05cc:  ret
  } // end of method ComponentLocomotion::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       529 (0x211)
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
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_001f:  stfld      class Game.SubsystemNoise Game.ComponentLocomotion::m_subsystemNoise
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0031:  stfld      class Game.SubsystemTerrain Game.ComponentLocomotion::m_subsystemTerrain
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0043:  stfld      class Game.SubsystemGameInfo Game.ComponentLocomotion::m_subsystemGameInfo
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0055:  stfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0066:  stfld      class Game.ComponentPlayer Game.ComponentLocomotion::m_componentPlayer
    IL_006b:  ldarg.0
    IL_006c:  ldarg.0
    IL_006d:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0072:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentLevel>()
    IL_0077:  stfld      class Game.ComponentLevel Game.ComponentLocomotion::m_componentLevel
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0083:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentClothing>()
    IL_0088:  stfld      class Game.ComponentClothing Game.ComponentLocomotion::m_componentClothing
    IL_008d:  ldarg.0
    IL_008e:  ldarg.0
    IL_008f:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0094:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMount>()
    IL_0099:  stfld      class Game.ComponentMount Game.ComponentLocomotion::m_componentMount
    IL_009e:  ldarg.0
    IL_009f:  ldarg.0
    IL_00a0:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a5:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>()
    IL_00aa:  stfld      class Game.ComponentRider Game.ComponentLocomotion::m_componentRider
    IL_00af:  ldarg.0
    IL_00b0:  ldarg.1
    IL_00b1:  ldstr      "IsCreativeFlyEnabled"
    IL_00b6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_00bb:  call       instance void Game.ComponentLocomotion::set_IsCreativeFlyEnabled(bool)
    IL_00c0:  ldarg.0
    IL_00c1:  ldarg.1
    IL_00c2:  ldstr      "AccelerationFactor"
    IL_00c7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00cc:  call       instance void Game.ComponentLocomotion::set_AccelerationFactor(float32)
    IL_00d1:  ldarg.0
    IL_00d2:  ldarg.1
    IL_00d3:  ldstr      "WalkSpeed"
    IL_00d8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00dd:  call       instance void Game.ComponentLocomotion::set_WalkSpeed(float32)
    IL_00e2:  ldarg.0
    IL_00e3:  ldarg.1
    IL_00e4:  ldstr      "LadderSpeed"
    IL_00e9:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00ee:  call       instance void Game.ComponentLocomotion::set_LadderSpeed(float32)
    IL_00f3:  ldarg.0
    IL_00f4:  ldarg.1
    IL_00f5:  ldstr      "JumpSpeed"
    IL_00fa:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00ff:  call       instance void Game.ComponentLocomotion::set_JumpSpeed(float32)
    IL_0104:  ldarg.0
    IL_0105:  ldarg.1
    IL_0106:  ldstr      "CreativeFlySpeed"
    IL_010b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0110:  call       instance void Game.ComponentLocomotion::set_CreativeFlySpeed(float32)
    IL_0115:  ldarg.0
    IL_0116:  ldarg.1
    IL_0117:  ldstr      "FlySpeed"
    IL_011c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0121:  call       instance void Game.ComponentLocomotion::set_FlySpeed(float32)
    IL_0126:  ldarg.0
    IL_0127:  ldarg.1
    IL_0128:  ldstr      "SwimSpeed"
    IL_012d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0132:  call       instance void Game.ComponentLocomotion::set_SwimSpeed(float32)
    IL_0137:  ldarg.0
    IL_0138:  ldarg.1
    IL_0139:  ldstr      "TurnSpeed"
    IL_013e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0143:  call       instance void Game.ComponentLocomotion::set_TurnSpeed(float32)
    IL_0148:  ldarg.0
    IL_0149:  ldarg.1
    IL_014a:  ldstr      "LookSpeed"
    IL_014f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0154:  call       instance void Game.ComponentLocomotion::set_LookSpeed(float32)
    IL_0159:  ldarg.0
    IL_015a:  ldarg.1
    IL_015b:  ldstr      "InAirWalkFactor"
    IL_0160:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0165:  call       instance void Game.ComponentLocomotion::set_InAirWalkFactor(float32)
    IL_016a:  ldarg.0
    IL_016b:  ldarg.1
    IL_016c:  ldstr      "WalkSpeedWhenTurning"
    IL_0171:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0176:  stfld      float32 Game.ComponentLocomotion::m_walkSpeedWhenTurning
    IL_017b:  ldarg.0
    IL_017c:  ldarg.1
    IL_017d:  ldstr      "LookAutoLevelX"
    IL_0182:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0187:  stfld      bool Game.ComponentLocomotion::m_lookAutoLevelX
    IL_018c:  ldarg.0
    IL_018d:  ldarg.1
    IL_018e:  ldstr      "LookAutoLevelY"
    IL_0193:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0198:  stfld      bool Game.ComponentLocomotion::m_lookAutoLevelY
    IL_019d:  ldarg.0
    IL_019e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01a3:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_01a8:  brtrue.s   IL_0210

    IL_01aa:  ldarg.0
    IL_01ab:  ldarg.0
    IL_01ac:  call       instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      class Game.Random Game.ComponentLocomotion::m_random
    IL_01b7:  ldc.r4     0.85000002
    IL_01bc:  ldc.r4     1.
    IL_01c1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01c6:  mul
    IL_01c7:  call       instance void Game.ComponentLocomotion::set_WalkSpeed(float32)
    IL_01cc:  ldarg.0
    IL_01cd:  ldarg.0
    IL_01ce:  call       instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      class Game.Random Game.ComponentLocomotion::m_random
    IL_01d9:  ldc.r4     0.85000002
    IL_01de:  ldc.r4     1.
    IL_01e3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e8:  mul
    IL_01e9:  call       instance void Game.ComponentLocomotion::set_FlySpeed(float32)
    IL_01ee:  ldarg.0
    IL_01ef:  ldarg.0
    IL_01f0:  call       instance float32 Game.ComponentLocomotion::get_SwimSpeed()
    IL_01f5:  ldarg.0
    IL_01f6:  ldfld      class Game.Random Game.ComponentLocomotion::m_random
    IL_01fb:  ldc.r4     0.85000002
    IL_0200:  ldc.r4     1.
    IL_0205:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_020a:  mul
    IL_020b:  call       instance void Game.ComponentLocomotion::set_SwimSpeed(float32)
    IL_0210:  ret
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
    // 代码大小       2346 (0x92a)
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
             bool V_19,
             int32 V_20,
             valuetype [Engine]Engine.Vector2 V_21,
             valuetype [Engine]Engine.Vector3 V_22,
             valuetype [Engine]Engine.Vector3 V_23,
             valuetype [Engine]Engine.Vector3 V_24,
             valuetype [Engine]Engine.Vector3 V_25,
             float32 V_26,
             float32 V_27)
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
    IL_0097:  ble.un     IL_062c

    IL_009c:  ldarg.0
    IL_009d:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_00a2:  stloc.s    V_4
    IL_00a4:  ldloca.s   V_4
    IL_00a6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00ab:  brfalse    IL_062c

    IL_00b0:  ldarg.0
    IL_00b1:  call       instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_00b6:  brfalse    IL_0229

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
    IL_011d:  brfalse.s  IL_015c

    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.ComponentPlayer Game.ComponentLocomotion::m_componentPlayer
    IL_0125:  brfalse.s  IL_015c

    IL_0127:  ldarg.0
    IL_0128:  ldfld      class Game.ComponentPlayer Game.ComponentLocomotion::m_componentPlayer
    IL_012d:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0132:  callvirt   instance bool Game.ComponentInput::get_IsControlledByTouch()
    IL_0137:  brtrue.s   IL_015c

    IL_0139:  ldloc.2
    IL_013a:  ldc.r4     1.
    IL_013f:  ldc.r4     0.0
    IL_0144:  ldc.r4     1.
    IL_0149:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0153:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0158:  stloc.s    V_6
    IL_015a:  br.s       IL_0178

    IL_015c:  ldloc.2
    IL_015d:  ldc.r4     0.1
    IL_0162:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0167:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_016c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0171:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0176:  stloc.s    V_6
    IL_0178:  ldarg.0
    IL_0179:  call       instance float32 Game.ComponentLocomotion::get_CreativeFlySpeed()
    IL_017e:  ldloc.1
    IL_017f:  ldloc.s    V_5
    IL_0181:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0186:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_018b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0190:  ldloc.s    V_5
    IL_0192:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0197:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_019c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a1:  ldloc.s    V_6
    IL_01a3:  ldloc.s    V_5
    IL_01a5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01aa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01af:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b9:  stloc.s    V_7
    IL_01bb:  ldloc.s    V_5
    IL_01bd:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_01c2:  call       bool [Engine]Engine.Vector3::op_Equality(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_01c7:  brtrue.s   IL_01d0

    IL_01c9:  ldc.r4     3.
    IL_01ce:  br.s       IL_01d5

    IL_01d0:  ldc.r4     6.
    IL_01d5:  stloc.s    V_8
    IL_01d7:  ldloc.0
    IL_01d8:  ldarg.0
    IL_01d9:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_01de:  ldloc.s    V_8
    IL_01e0:  mul
    IL_01e1:  ldarg.1
    IL_01e2:  mul
    IL_01e3:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01e8:  ldloc.s    V_7
    IL_01ea:  ldloc.0
    IL_01eb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01f0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01f5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01fa:  stloc.0
    IL_01fb:  ldarg.0
    IL_01fc:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0201:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0206:  ldc.i4.0
    IL_0207:  callvirt   instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_020c:  ldarg.0
    IL_020d:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0212:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0217:  ldc.i4.0
    IL_0218:  callvirt   instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
    IL_021d:  ldarg.0
    IL_021e:  ldc.i4.1
    IL_021f:  stfld      bool Game.ComponentLocomotion::m_flying
    IL_0224:  br         IL_062c

    IL_0229:  ldarg.0
    IL_022a:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_022f:  stloc.s    V_4
    IL_0231:  ldloca.s   V_4
    IL_0233:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0238:  stloc.s    V_10
    IL_023a:  ldarg.0
    IL_023b:  ldfld      float32 Game.ComponentLocomotion::m_walkSpeedWhenTurning
    IL_0240:  ldc.r4     0.0
    IL_0245:  ble.un.s   IL_029c

    IL_0247:  ldarg.0
    IL_0248:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    IL_024d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0252:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0257:  ldc.r4     2.e-002
    IL_025c:  ble.un.s   IL_029c

    IL_025e:  ldloca.s   V_10
    IL_0260:  ldloc.s    V_10
    IL_0262:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0267:  ldc.r4     0.0
    IL_026c:  ldarg.0
    IL_026d:  ldfld      float32 Game.ComponentLocomotion::m_walkSpeedWhenTurning
    IL_0272:  ldc.r4     2.
    IL_0277:  ldarg.0
    IL_0278:  call       instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_TurnOrder()
    IL_027d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0282:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0287:  mul
    IL_0288:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_028d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0292:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0297:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_029c:  ldarg.0
    IL_029d:  call       instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_02a2:  stloc.s    V_11
    IL_02a4:  ldarg.0
    IL_02a5:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_02aa:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02af:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_02b4:  ldc.r4     0.2
    IL_02b9:  ble.un.s   IL_02c5

    IL_02bb:  ldloc.s    V_11
    IL_02bd:  ldc.r4     0.66000003
    IL_02c2:  mul
    IL_02c3:  stloc.s    V_11
    IL_02c5:  ldloc.s    V_10
    IL_02c7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02cc:  ldc.r4     0.0
    IL_02d1:  bge.un.s   IL_02dd

    IL_02d3:  ldloc.s    V_11
    IL_02d5:  ldc.r4     0.75
    IL_02da:  mul
    IL_02db:  stloc.s    V_11
    IL_02dd:  ldarg.0
    IL_02de:  ldfld      class Game.ComponentLevel Game.ComponentLocomotion::m_componentLevel
    IL_02e3:  brfalse.s  IL_02f5

    IL_02e5:  ldloc.s    V_11
    IL_02e7:  ldarg.0
    IL_02e8:  ldfld      class Game.ComponentLevel Game.ComponentLocomotion::m_componentLevel
    IL_02ed:  callvirt   instance float32 Game.ComponentLevel::get_SpeedFactor()
    IL_02f2:  mul
    IL_02f3:  stloc.s    V_11
    IL_02f5:  ldarg.0
    IL_02f6:  ldfld      class Game.ComponentMount Game.ComponentLocomotion::m_componentMount
    IL_02fb:  brfalse.s  IL_032c

    IL_02fd:  ldarg.0
    IL_02fe:  ldfld      class Game.ComponentMount Game.ComponentLocomotion::m_componentMount
    IL_0303:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0308:  stloc.s    V_16
    IL_030a:  ldloc.s    V_16
    IL_030c:  brfalse.s  IL_032c

    IL_030e:  ldloc.s    V_16
    IL_0310:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0315:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentClothing>()
    IL_031a:  stloc.s    V_17
    IL_031c:  ldloc.s    V_17
    IL_031e:  brfalse.s  IL_032c

    IL_0320:  ldloc.s    V_11
    IL_0322:  ldloc.s    V_17
    IL_0324:  callvirt   instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
    IL_0329:  mul
    IL_032a:  stloc.s    V_11
    IL_032c:  ldloc.s    V_10
    IL_032e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0333:  ldloc.1
    IL_0334:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0339:  ldc.r4     0.0
    IL_033e:  ldloc.1
    IL_033f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0344:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0349:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_034e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0353:  ldloc.s    V_10
    IL_0355:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_035a:  ldloc.2
    IL_035b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0360:  ldc.r4     0.0
    IL_0365:  ldloc.2
    IL_0366:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_036b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0370:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0375:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_037a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_037f:  stloc.s    V_12
    IL_0381:  ldloc.s    V_11
    IL_0383:  ldloc.s    V_12
    IL_0385:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_038a:  ldarg.0
    IL_038b:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0390:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0395:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_StandingOnVelocity()
    IL_039a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_039f:  stloc.s    V_13
    IL_03a1:  ldarg.0
    IL_03a2:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_03a7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03ac:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_03b1:  stloc.s    V_18
    IL_03b3:  ldloca.s   V_18
    IL_03b5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_03ba:  brfalse.s  IL_0404

    IL_03bc:  ldarg.1
    IL_03bd:  ldc.r4     6.
    IL_03c2:  mul
    IL_03c3:  ldarg.0
    IL_03c4:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_03c9:  mul
    IL_03ca:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03cf:  ldarg.0
    IL_03d0:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_03d5:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03da:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_03df:  stloc.s    V_18
    IL_03e1:  ldloca.s   V_18
    IL_03e3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_03e8:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_03ed:  ldelem.ref
    IL_03ee:  ldfld      float32 Game.Block::FrictionFactor
    IL_03f3:  mul
    IL_03f4:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_03f9:  stloc.s    V_14
    IL_03fb:  ldarg.0
    IL_03fc:  ldc.i4.1
    IL_03fd:  stfld      bool Game.ComponentLocomotion::m_walking
    IL_0402:  br.s       IL_0447

    IL_0404:  ldarg.1
    IL_0405:  ldc.r4     6.
    IL_040a:  mul
    IL_040b:  ldarg.0
    IL_040c:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_0411:  mul
    IL_0412:  ldarg.0
    IL_0413:  call       instance float32 Game.ComponentLocomotion::get_InAirWalkFactor()
    IL_0418:  mul
    IL_0419:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_041e:  stloc.s    V_14
    IL_0420:  ldarg.0
    IL_0421:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0426:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_042b:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0430:  ldc.r4     0.0
    IL_0435:  ble.un.s   IL_0440

    IL_0437:  ldarg.0
    IL_0438:  ldc.i4.1
    IL_0439:  stfld      bool Game.ComponentLocomotion::m_swimming
    IL_043e:  br.s       IL_0447

    IL_0440:  ldarg.0
    IL_0441:  ldc.i4.1
    IL_0442:  stfld      bool Game.ComponentLocomotion::m_falling
    IL_0447:  ldloca.s   V_0
    IL_0449:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_044e:  dup
    IL_044f:  ldind.r4
    IL_0450:  ldloc.s    V_14
    IL_0452:  ldloc.s    V_13
    IL_0454:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0459:  ldloc.0
    IL_045a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_045f:  sub
    IL_0460:  mul
    IL_0461:  add
    IL_0462:  stind.r4
    IL_0463:  ldloca.s   V_0
    IL_0465:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_046a:  dup
    IL_046b:  ldind.r4
    IL_046c:  ldloc.s    V_14
    IL_046e:  ldloc.s    V_13
    IL_0470:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0475:  ldloc.0
    IL_0476:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_047b:  sub
    IL_047c:  mul
    IL_047d:  add
    IL_047e:  stind.r4
    IL_047f:  ldloc.s    V_10
    IL_0481:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0486:  ldloc.1
    IL_0487:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_048c:  ldloc.s    V_10
    IL_048e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0493:  ldloc.2
    IL_0494:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0499:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_049e:  stloc.s    V_15
    IL_04a0:  ldarg.0
    IL_04a1:  ldfld      class Game.ComponentLevel Game.ComponentLocomotion::m_componentLevel
    IL_04a6:  brfalse.s  IL_04bc

    IL_04a8:  ldloc.s    V_15
    IL_04aa:  ldarg.0
    IL_04ab:  ldfld      class Game.ComponentLevel Game.ComponentLocomotion::m_componentLevel
    IL_04b0:  callvirt   instance float32 Game.ComponentLevel::get_SpeedFactor()
    IL_04b5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_04ba:  stloc.s    V_15
    IL_04bc:  ldloca.s   V_0
    IL_04be:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_04c3:  dup
    IL_04c4:  ldind.r4
    IL_04c5:  ldc.r4     10.
    IL_04ca:  ldarg.0
    IL_04cb:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_04d0:  mul
    IL_04d1:  ldloc.s    V_15
    IL_04d3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_04d8:  mul
    IL_04d9:  ldarg.0
    IL_04da:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_04df:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04e4:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_04e9:  mul
    IL_04ea:  ldarg.1
    IL_04eb:  mul
    IL_04ec:  add
    IL_04ed:  stind.r4
    IL_04ee:  ldarg.0
    IL_04ef:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_04f4:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04f9:  ldc.i4.0
    IL_04fa:  callvirt   instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
    IL_04ff:  ldarg.0
    IL_0500:  ldfld      class Game.ComponentPlayer Game.ComponentLocomotion::m_componentPlayer
    IL_0505:  brfalse    IL_062c

    IL_050a:  ldc.r8     10.
    IL_0513:  ldc.r8     0.0
    IL_051c:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0521:  brfalse    IL_062c

    IL_0526:  ldarg.0
    IL_0527:  ldfld      float64 Game.ComponentLocomotion::m_shoesWarningTime
    IL_052c:  ldc.r8     0.0
    IL_0535:  beq.s      IL_0551

    IL_0537:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_053c:  ldarg.0
    IL_053d:  ldfld      float64 Game.ComponentLocomotion::m_shoesWarningTime
    IL_0542:  sub
    IL_0543:  ldc.r8     300.
    IL_054c:  ble.un     IL_062c

    IL_0551:  ldarg.0
    IL_0552:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0557:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_055c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0561:  stloc.s    V_18
    IL_0563:  ldloca.s   V_18
    IL_0565:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_056a:  brfalse    IL_062c

    IL_056f:  ldarg.0
    IL_0570:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0575:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_057a:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_057f:  ldc.r4     0.1
    IL_0584:  bge.un     IL_062c

    IL_0589:  ldc.i4.0
    IL_058a:  stloc.s    V_19
    IL_058c:  ldarg.0
    IL_058d:  ldfld      class Game.ComponentPlayer Game.ComponentLocomotion::m_componentPlayer
    IL_0592:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_0597:  ldc.i4.3
    IL_0598:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_059d:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
    IL_05a2:  call       !!0 [System.Linq]System.Linq.Enumerable::LastOrDefault<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_05a7:  stloc.s    V_20
    IL_05a9:  ldloc.s    V_20
    IL_05ab:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_05b0:  ldc.i4     0xcb
    IL_05b5:  bne.un.s   IL_05d1

    IL_05b7:  ldloc.s    V_20
    IL_05b9:  call       int32 Game.Terrain::ExtractData(int32)
    IL_05be:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_05c3:  ldfld      float32 Game.ClothingData::MovementSpeedFactor
    IL_05c8:  ldc.r4     1.
    IL_05cd:  cgt
    IL_05cf:  stloc.s    V_19
    IL_05d1:  ldloc.s    V_19
    IL_05d3:  brtrue.s   IL_062c

    IL_05d5:  ldloca.s   V_13
    IL_05d7:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_05dc:  ldloca.s   V_0
    IL_05de:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_05e3:  div
    IL_05e4:  ldc.r4     0.99000001
    IL_05e9:  ble.un.s   IL_062c

    IL_05eb:  ldarg.0
    IL_05ec:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_WalkOrder()
    IL_05f1:  stloc.s    V_4
    IL_05f3:  ldloca.s   V_4
    IL_05f5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_05fa:  stloc.s    V_21
    IL_05fc:  ldloca.s   V_21
    IL_05fe:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_0603:  ldc.r4     0.99000001
    IL_0608:  ble.un.s   IL_062c

    IL_060a:  ldarg.0
    IL_060b:  ldfld      class Game.ComponentPlayer Game.ComponentLocomotion::m_componentPlayer
    IL_0610:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0615:  ldstr      "Running barefoot is slow, wear shoes"
    IL_061a:  ldc.i4.1
    IL_061b:  ldc.i4.1
    IL_061c:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0621:  ldarg.0
    IL_0622:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0627:  stfld      float64 Game.ComponentLocomotion::m_shoesWarningTime
    IL_062c:  ldarg.0
    IL_062d:  call       instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_0632:  ldc.r4     0.0
    IL_0637:  ble.un.s   IL_06a9

    IL_0639:  ldarg.0
    IL_063a:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    IL_063f:  stloc.s    V_9
    IL_0641:  ldloca.s   V_9
    IL_0643:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0648:  brfalse.s  IL_06a9

    IL_064a:  ldarg.0
    IL_064b:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_FlyOrder()
    IL_0650:  stloc.s    V_9
    IL_0652:  ldloca.s   V_9
    IL_0654:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0659:  stloc.s    V_22
    IL_065b:  ldarg.0
    IL_065c:  call       instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_0661:  ldloc.s    V_22
    IL_0663:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0668:  stloc.s    V_23
    IL_066a:  ldloc.0
    IL_066b:  ldc.r4     2.
    IL_0670:  ldarg.0
    IL_0671:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_0676:  mul
    IL_0677:  ldarg.1
    IL_0678:  mul
    IL_0679:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_067e:  ldloc.s    V_23
    IL_0680:  ldloc.0
    IL_0681:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0686:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_068b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0690:  stloc.0
    IL_0691:  ldarg.0
    IL_0692:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0697:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_069c:  ldc.i4.0
    IL_069d:  callvirt   instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_06a2:  ldarg.0
    IL_06a3:  ldc.i4.1
    IL_06a4:  stfld      bool Game.ComponentLocomotion::m_flying
    IL_06a9:  ldarg.0
    IL_06aa:  call       instance float32 Game.ComponentLocomotion::get_SwimSpeed()
    IL_06af:  ldc.r4     0.0
    IL_06b4:  ble.un     IL_07d5

    IL_06b9:  ldarg.0
    IL_06ba:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_SwimOrder()
    IL_06bf:  stloc.s    V_9
    IL_06c1:  ldloca.s   V_9
    IL_06c3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_06c8:  brfalse    IL_07d5

    IL_06cd:  ldarg.0
    IL_06ce:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_06d3:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_06d8:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_06dd:  ldc.r4     0.5
    IL_06e2:  ble.un     IL_07d5

    IL_06e7:  ldarg.0
    IL_06e8:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_SwimOrder()
    IL_06ed:  stloc.s    V_9
    IL_06ef:  ldloca.s   V_9
    IL_06f1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_06f6:  stloc.s    V_24
    IL_06f8:  ldarg.0
    IL_06f9:  call       instance float32 Game.ComponentLocomotion::get_SwimSpeed()
    IL_06fe:  ldloc.s    V_24
    IL_0700:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0705:  stloc.s    V_25
    IL_0707:  ldc.r4     2.
    IL_070c:  stloc.s    V_26
    IL_070e:  ldloca.s   V_24
    IL_0710:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0715:  ldc.r4     0.99000001
    IL_071a:  blt.un.s   IL_0762

    IL_071c:  ldloc.s    V_25
    IL_071e:  ldc.r4     1.
    IL_0723:  ldc.r4     2.
    IL_0728:  ldarg.0
    IL_0729:  ldfld      float32 Game.ComponentLocomotion::m_swimBurstRemaining
    IL_072e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0733:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0738:  stloc.s    V_25
    IL_073a:  ldloc.s    V_26
    IL_073c:  ldc.r4     1.
    IL_0741:  ldc.r4     4.
    IL_0746:  ldarg.0
    IL_0747:  ldfld      float32 Game.ComponentLocomotion::m_swimBurstRemaining
    IL_074c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0751:  mul
    IL_0752:  stloc.s    V_26
    IL_0754:  ldarg.0
    IL_0755:  ldarg.0
    IL_0756:  ldfld      float32 Game.ComponentLocomotion::m_swimBurstRemaining
    IL_075b:  ldarg.1
    IL_075c:  sub
    IL_075d:  stfld      float32 Game.ComponentLocomotion::m_swimBurstRemaining
    IL_0762:  ldloc.0
    IL_0763:  ldloc.s    V_26
    IL_0765:  ldarg.0
    IL_0766:  call       instance float32 Game.ComponentLocomotion::get_AccelerationFactor()
    IL_076b:  mul
    IL_076c:  ldarg.1
    IL_076d:  mul
    IL_076e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0773:  ldloc.s    V_25
    IL_0775:  ldloc.0
    IL_0776:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_077b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0780:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0785:  stloc.0
    IL_0786:  ldarg.0
    IL_0787:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_078c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0791:  ldloc.s    V_24
    IL_0793:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0798:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_079d:  ldc.r4     7.e-002
    IL_07a2:  cgt.un
    IL_07a4:  ldc.i4.0
    IL_07a5:  ceq
    IL_07a7:  callvirt   instance void Game.ComponentBody::set_IsGravityEnabled(bool)
    IL_07ac:  ldarg.0
    IL_07ad:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_07b2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_07b7:  ldc.i4.0
    IL_07b8:  callvirt   instance void Game.ComponentBody::set_IsWaterDragEnabled(bool)
    IL_07bd:  ldarg.0
    IL_07be:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_07c3:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_07c8:  ldc.i4.0
    IL_07c9:  callvirt   instance void Game.ComponentBody::set_IsGroundDragEnabled(bool)
    IL_07ce:  ldarg.0
    IL_07cf:  ldc.i4.1
    IL_07d0:  stfld      bool Game.ComponentLocomotion::m_swimming
    IL_07d5:  ldarg.0
    IL_07d6:  call       instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_07db:  ldc.r4     0.0
    IL_07e0:  ble.un     IL_08c1

    IL_07e5:  ldarg.0
    IL_07e6:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_07eb:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_07f0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_07f5:  stloc.s    V_18
    IL_07f7:  ldloca.s   V_18
    IL_07f9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_07fe:  brtrue.s   IL_081a

    IL_0800:  ldarg.0
    IL_0801:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0806:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_080b:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0810:  ldc.r4     0.5
    IL_0815:  ble.un     IL_08c1

    IL_081a:  ldarg.0
    IL_081b:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0820:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0825:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_082a:  brtrue     IL_08c1

    IL_082f:  ldarg.0
    IL_0830:  call       instance float32 Game.ComponentLocomotion::get_JumpSpeed()
    IL_0835:  stloc.s    V_27
    IL_0837:  ldarg.0
    IL_0838:  ldfld      class Game.ComponentLevel Game.ComponentLocomotion::m_componentLevel
    IL_083d:  brfalse.s  IL_0861

    IL_083f:  ldloc.s    V_27
    IL_0841:  ldc.r4     0.25
    IL_0846:  ldarg.0
    IL_0847:  ldfld      class Game.ComponentLevel Game.ComponentLocomotion::m_componentLevel
    IL_084c:  callvirt   instance float32 Game.ComponentLevel::get_SpeedFactor()
    IL_0851:  ldc.r4     1.
    IL_0856:  sub
    IL_0857:  mul
    IL_0858:  ldc.r4     1.
    IL_085d:  add
    IL_085e:  mul
    IL_085f:  stloc.s    V_27
    IL_0861:  ldloca.s   V_0
    IL_0863:  ldloc.0
    IL_0864:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0869:  ldarg.0
    IL_086a:  call       instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_086f:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0874:  ldloc.s    V_27
    IL_0876:  mul
    IL_0877:  add
    IL_0878:  ldloc.s    V_27
    IL_087a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_087f:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0884:  ldarg.0
    IL_0885:  ldc.i4.1
    IL_0886:  stfld      bool Game.ComponentLocomotion::m_jumping
    IL_088b:  ldarg.0
    IL_088c:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0891:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0896:  ldc.r4     2.
    IL_089b:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_08a0:  pop
    IL_08a1:  ldarg.0
    IL_08a2:  ldfld      class Game.SubsystemNoise Game.ComponentLocomotion::m_subsystemNoise
    IL_08a7:  ldarg.0
    IL_08a8:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_08ad:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_08b2:  ldc.r4     0.25
    IL_08b7:  ldc.r4     10.
    IL_08bc:  callvirt   instance void Game.SubsystemNoise::MakeNoise(class Game.ComponentBody,
                                                                      float32,
                                                                      float32)
    IL_08c1:  ldarg.0
    IL_08c2:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_08c7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_08cc:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_08d1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_08d6:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_08db:  ldc.r4     3.
    IL_08e0:  ble.un.s   IL_0918

    IL_08e2:  ldarg.0
    IL_08e3:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_08e8:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_08ed:  ldc.r4     2.
    IL_08f2:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_08f7:  pop
    IL_08f8:  ldarg.0
    IL_08f9:  ldfld      class Game.SubsystemNoise Game.ComponentLocomotion::m_subsystemNoise
    IL_08fe:  ldarg.0
    IL_08ff:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_0904:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0909:  ldc.r4     0.25
    IL_090e:  ldc.r4     10.
    IL_0913:  callvirt   instance void Game.SubsystemNoise::MakeNoise(class Game.ComponentBody,
                                                                      float32,
                                                                      float32)
    IL_0918:  ldarg.0
    IL_0919:  ldfld      class Game.ComponentCreature Game.ComponentLocomotion::m_componentCreature
    IL_091e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0923:  ldloc.0
    IL_0924:  callvirt   instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_0929:  ret
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
    IL_0034:  call       int32 Game.Terrain::ExtractContents(int32)
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