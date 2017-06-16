.class public auto ansi beforefieldinit Game.ComponentCreatureModel
       extends Game.ComponentModel
       implements Game.IUpdateable
{
  .field family class Game.SubsystemTime m_subsystemTime
  .field family class Game.SubsystemSky m_subsystemSky
  .field family class Game.SubsystemGameInfo m_subsystemGameInfo
  .field family class Game.ComponentCreature m_componentCreature
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_eyePosition
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion> m_eyeRotation
  .field private float32 m_injuryColorFactor
  .field private valuetype [Engine]Engine.Vector3 m_randomLookPoint
  .field private class Game.Random m_random
  .field private float32 '<Bob>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<MovementAnimationPhase>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<DeathPhase>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<DeathCauseOffset>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> '<LookAtOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<LookRandomOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<HeadShakeOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<AttackOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<FeedOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<RowLeftOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<RowRightOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<AimHandAngleOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<InHandItemOffsetOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<InHandItemRotationOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsAttackHitMoment>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float32 
          get_Bob() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentCreatureModel::'<Bob>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_Bob

  .method family hidebysig specialname instance void 
          set_Bob(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentCreatureModel::'<Bob>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_Bob

  .method public hidebysig specialname instance float32 
          get_MovementAnimationPhase() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentCreatureModel::'<MovementAnimationPhase>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_MovementAnimationPhase

  .method family hidebysig specialname instance void 
          set_MovementAnimationPhase(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentCreatureModel::'<MovementAnimationPhase>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_MovementAnimationPhase

  .method public hidebysig specialname instance float32 
          get_DeathPhase() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentCreatureModel::'<DeathPhase>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_DeathPhase

  .method private hidebysig specialname instance void 
          set_DeathPhase(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentCreatureModel::'<DeathPhase>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_DeathPhase

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_DeathCauseOffset() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::'<DeathCauseOffset>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_DeathCauseOffset

  .method private hidebysig specialname instance void 
          set_DeathCauseOffset(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::'<DeathCauseOffset>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_DeathCauseOffset

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          get_LookAtOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCreatureModel::'<LookAtOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_LookAtOrder

  .method public hidebysig specialname instance void 
          set_LookAtOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCreatureModel::'<LookAtOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_LookAtOrder

  .method public hidebysig specialname instance bool 
          get_LookRandomOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentCreatureModel::'<LookRandomOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_LookRandomOrder

  .method public hidebysig specialname instance void 
          set_LookRandomOrder(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentCreatureModel::'<LookRandomOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_LookRandomOrder

  .method public hidebysig specialname instance float32 
          get_HeadShakeOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentCreatureModel::'<HeadShakeOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_HeadShakeOrder

  .method public hidebysig specialname instance void 
          set_HeadShakeOrder(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentCreatureModel::'<HeadShakeOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_HeadShakeOrder

  .method public hidebysig specialname instance bool 
          get_AttackOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentCreatureModel::'<AttackOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_AttackOrder

  .method public hidebysig specialname instance void 
          set_AttackOrder(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentCreatureModel::'<AttackOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_AttackOrder

  .method public hidebysig specialname instance bool 
          get_FeedOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentCreatureModel::'<FeedOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_FeedOrder

  .method public hidebysig specialname instance void 
          set_FeedOrder(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentCreatureModel::'<FeedOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_FeedOrder

  .method public hidebysig specialname instance bool 
          get_RowLeftOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentCreatureModel::'<RowLeftOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_RowLeftOrder

  .method public hidebysig specialname instance void 
          set_RowLeftOrder(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentCreatureModel::'<RowLeftOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_RowLeftOrder

  .method public hidebysig specialname instance bool 
          get_RowRightOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentCreatureModel::'<RowRightOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_RowRightOrder

  .method public hidebysig specialname instance void 
          set_RowRightOrder(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentCreatureModel::'<RowRightOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_RowRightOrder

  .method public hidebysig specialname instance float32 
          get_AimHandAngleOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentCreatureModel::'<AimHandAngleOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_AimHandAngleOrder

  .method public hidebysig specialname instance void 
          set_AimHandAngleOrder(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentCreatureModel::'<AimHandAngleOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_AimHandAngleOrder

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_InHandItemOffsetOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::'<InHandItemOffsetOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_InHandItemOffsetOrder

  .method public hidebysig specialname instance void 
          set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::'<InHandItemOffsetOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_InHandItemOffsetOrder

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_InHandItemRotationOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::'<InHandItemRotationOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_InHandItemRotationOrder

  .method public hidebysig specialname instance void 
          set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::'<InHandItemRotationOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_InHandItemRotationOrder

  .method public hidebysig specialname instance bool 
          get_IsAttackHitMoment() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentCreatureModel::'<IsAttackHitMoment>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreatureModel::get_IsAttackHitMoment

  .method family hidebysig specialname instance void 
          set_IsAttackHitMoment(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentCreatureModel::'<IsAttackHitMoment>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreatureModel::set_IsAttackHitMoment

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_EyePosition() cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCreatureModel::m_eyePosition
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000b:  brtrue.s   IL_001e

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::CalculateEyePosition()
    IL_0014:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0019:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCreatureModel::m_eyePosition
    IL_001e:  ldarg.0
    IL_001f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCreatureModel::m_eyePosition
    IL_0024:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0029:  ret
  } // end of method ComponentCreatureModel::get_EyePosition

  .method public hidebysig specialname instance valuetype [Engine]Engine.Quaternion 
          get_EyeRotation() cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion> Game.ComponentCreatureModel::m_eyeRotation
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion>::get_HasValue()
    IL_000b:  brtrue.s   IL_001e

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::CalculateEyeRotation()
    IL_0014:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion>::.ctor(!0)
    IL_0019:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion> Game.ComponentCreatureModel::m_eyeRotation
    IL_001e:  ldarg.0
    IL_001f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion> Game.ComponentCreatureModel::m_eyeRotation
    IL_0024:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion>::get_Value()
    IL_0029:  ret
  } // end of method ComponentCreatureModel::get_EyeRotation

  .method public hidebysig virtual instance void 
          PrepareForDrawing(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       384 (0x180)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0,
             valuetype [System.Runtime]System.Nullable`1<float32> V_1,
             bool V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0007:  callvirt   instance class Game.ComponentSpawn Game.ComponentCreature::get_ComponentSpawn()
    IL_000c:  callvirt   instance float32 Game.ComponentSpawn::get_SpawnDuration()
    IL_0011:  ldc.r4     0.0
    IL_0016:  bgt.s      IL_001f

    IL_0018:  ldc.r4     1.
    IL_001d:  br.s       IL_0053

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SubsystemGameInfo Game.ComponentCreatureModel::m_subsystemGameInfo
    IL_0025:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0030:  callvirt   instance class Game.ComponentSpawn Game.ComponentCreature::get_ComponentSpawn()
    IL_0035:  callvirt   instance float64 Game.ComponentSpawn::get_SpawnTime()
    IL_003a:  sub
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0041:  callvirt   instance class Game.ComponentSpawn Game.ComponentCreature::get_ComponentSpawn()
    IL_0046:  callvirt   instance float32 Game.ComponentSpawn::get_SpawnDuration()
    IL_004b:  conv.r8
    IL_004c:  div
    IL_004d:  call       float64 [Engine]Engine.MathUtils::Saturate(float64)
    IL_0052:  conv.r4
    IL_0053:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0058:  call       instance void Game.ComponentModel::set_Opacity(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0063:  callvirt   instance class Game.ComponentSpawn Game.ComponentCreature::get_ComponentSpawn()
    IL_0068:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    IL_006d:  stloc.0
    IL_006e:  ldloca.s   V_0
    IL_0070:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0075:  brfalse.s  IL_00db

    IL_0077:  ldarg.0
    IL_0078:  ldarg.0
    IL_0079:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
    IL_007e:  stloc.1
    IL_007f:  ldloca.s   V_1
    IL_0081:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0086:  ldc.r8     1.
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class Game.SubsystemGameInfo Game.ComponentCreatureModel::m_subsystemGameInfo
    IL_0095:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00a0:  callvirt   instance class Game.ComponentSpawn Game.ComponentCreature::get_ComponentSpawn()
    IL_00a5:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    IL_00aa:  stloc.0
    IL_00ab:  ldloca.s   V_0
    IL_00ad:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_00b2:  sub
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00b9:  callvirt   instance class Game.ComponentSpawn Game.ComponentCreature::get_ComponentSpawn()
    IL_00be:  callvirt   instance float32 Game.ComponentSpawn::get_DespawnDuration()
    IL_00c3:  conv.r8
    IL_00c4:  div
    IL_00c5:  sub
    IL_00c6:  call       float64 [Engine]Engine.MathUtils::Saturate(float64)
    IL_00cb:  conv.r4
    IL_00cc:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00d1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_00d6:  call       instance void Game.ComponentModel::set_Opacity(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_00db:  ldarg.0
    IL_00dc:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::One
    IL_00e1:  ldc.r4     1.
    IL_00e6:  ldc.r4     0.0
    IL_00eb:  ldc.r4     0.0
    IL_00f0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      float32 Game.ComponentCreatureModel::m_injuryColorFactor
    IL_00fb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_0100:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0105:  call       instance void Game.ComponentModel::set_DiffuseColor(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_010a:  ldarg.0
    IL_010b:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
    IL_0110:  stloc.1
    IL_0111:  ldloca.s   V_1
    IL_0113:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0118:  brfalse.s  IL_0171

    IL_011a:  ldarg.0
    IL_011b:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
    IL_0120:  stloc.1
    IL_0121:  ldloca.s   V_1
    IL_0123:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0128:  ldc.r4     1.
    IL_012d:  bge.un.s   IL_0171

    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0135:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_013a:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_013f:  ldc.r4     1.
    IL_0144:  clt.un
    IL_0146:  ldc.i4.0
    IL_0147:  ceq
    IL_0149:  ldarg.0
    IL_014a:  ldfld      class Game.SubsystemSky Game.ComponentCreatureModel::m_subsystemSky
    IL_014f:  callvirt   instance float32 Game.SubsystemSky::get_UnderWaterDepth()
    IL_0154:  ldc.r4     0.0
    IL_0159:  cgt
    IL_015b:  stloc.2
    IL_015c:  ldloc.2
    IL_015d:  bne.un.s   IL_0168

    IL_015f:  ldarg.0
    IL_0160:  ldc.i4.3
    IL_0161:  callvirt   instance void Game.ComponentModel::set_RenderingMode(valuetype Game.ModelRenderingMode)
    IL_0166:  br.s       IL_0178

    IL_0168:  ldarg.0
    IL_0169:  ldc.i4.2
    IL_016a:  callvirt   instance void Game.ComponentModel::set_RenderingMode(valuetype Game.ModelRenderingMode)
    IL_016f:  br.s       IL_0178

    IL_0171:  ldarg.0
    IL_0172:  ldc.i4.0
    IL_0173:  callvirt   instance void Game.ComponentModel::set_RenderingMode(valuetype Game.ModelRenderingMode)
    IL_0178:  ldarg.0
    IL_0179:  ldarg.1
    IL_017a:  call       instance void Game.ComponentModel::PrepareForDrawing(class Game.SubsystemDrawing)
    IL_017f:  ret
  } // end of method ComponentCreatureModel::PrepareForDrawing

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       109 (0x6d)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentModel::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                 class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0015:  stfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0021:  ldc.i4.1
    IL_0022:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0027:  stfld      class Game.SubsystemSky Game.ComponentCreatureModel::m_subsystemSky
    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0039:  stfld      class Game.SubsystemGameInfo Game.ComponentCreatureModel::m_subsystemGameInfo
    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_004b:  stfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0056:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_005b:  ldarg.0
    IL_005c:  ldftn      instance void Game.ComponentCreatureModel::'<Load>b__74_0'(class Game.ComponentCreature)
    IL_0062:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentCreature>::.ctor(object,
                                                                                                                  native int)
    IL_0067:  callvirt   instance void Game.ComponentHealth::add_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature>)
    IL_006c:  ret
  } // end of method ComponentCreatureModel::Load

  .method family hidebysig virtual instance void 
          OnEntityAdded() cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  ldarg.0
    IL_000c:  ldftn      instance void Game.ComponentCreatureModel::'<OnEntityAdded>b__75_0'(class Game.ComponentFrame)
    IL_0012:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentFrame>::.ctor(object,
                                                                                                               native int)
    IL_0017:  callvirt   instance void Game.ComponentFrame::add_PositionChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame>)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0022:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0027:  ldarg.0
    IL_0028:  ldftn      instance void Game.ComponentCreatureModel::'<OnEntityAdded>b__75_1'(class Game.ComponentFrame)
    IL_002e:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentFrame>::.ctor(object,
                                                                                                               native int)
    IL_0033:  callvirt   instance void Game.ComponentFrame::add_RotationChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame>)
    IL_0038:  ret
  } // end of method ComponentCreatureModel::OnEntityAdded

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  2
    .locals init (class Game.ComponentBody V_0,
             class Game.ComponentCreatureModel V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_ParentBody()
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  brfalse.s  IL_002c

    IL_0014:  ldloc.0
    IL_0015:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreatureModel>()
    IL_001f:  stloc.1
    IL_0020:  ldloc.1
    IL_0021:  brfalse.s  IL_002c

    IL_0023:  ldloc.1
    IL_0024:  callvirt   instance int32 Game.ComponentCreatureModel::get_UpdateOrder()
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  ret

    IL_002c:  ldc.i4.s   10
    IL_002e:  ret
  } // end of method ComponentCreatureModel::get_UpdateOrder

  .method public hidebysig newslot virtual 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       793 (0x319)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             float32 V_8,
             float32 V_9,
             valuetype [Engine]Engine.Matrix V_10,
             float32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ComponentCreatureModel::get_LookRandomOrder()
    IL_0006:  brfalse    IL_0113

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0011:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0016:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::m_randomLookPoint
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0028:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_002d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0032:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0037:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_003c:  stloc.1
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.Random Game.ComponentCreatureModel::m_random
    IL_0043:  ldc.r4     0.0
    IL_0048:  ldc.r4     1.
    IL_004d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0052:  ldc.r4     0.25
    IL_0057:  ldarg.1
    IL_0058:  mul
    IL_0059:  blt.s      IL_0072

    IL_005b:  ldloca.s   V_0
    IL_005d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0062:  ldloc.1
    IL_0063:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0068:  ldc.r4     0.2
    IL_006d:  bge.un     IL_0102

    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.Random Game.ComponentCreatureModel::m_random
    IL_0078:  ldc.r4     -5.
    IL_007d:  ldc.r4     5.
    IL_0082:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0087:  stloc.2
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.Random Game.ComponentCreatureModel::m_random
    IL_008e:  ldc.r4     -1.
    IL_0093:  ldc.r4     1.
    IL_0098:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_009d:  stloc.3
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class Game.Random Game.ComponentCreatureModel::m_random
    IL_00a4:  ldc.r4     3.
    IL_00a9:  ldc.r4     8.
    IL_00ae:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00b3:  stloc.s    V_4
    IL_00b5:  ldarg.0
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00bc:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00c1:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_00c6:  ldloc.s    V_4
    IL_00c8:  ldloca.s   V_0
    IL_00ca:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00cf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d9:  ldloc.3
    IL_00da:  ldloca.s   V_0
    IL_00dc:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_00e1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00eb:  ldloc.2
    IL_00ec:  ldloca.s   V_0
    IL_00ee:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_00f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fd:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::m_randomLookPoint
    IL_0102:  ldarg.0
    IL_0103:  ldarg.0
    IL_0104:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::m_randomLookPoint
    IL_0109:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_010e:  call       instance void Game.ComponentCreatureModel::set_LookAtOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0113:  ldarg.0
    IL_0114:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCreatureModel::get_LookAtOrder()
    IL_0119:  stloc.s    V_5
    IL_011b:  ldloca.s   V_5
    IL_011d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0122:  brfalse    IL_01dc

    IL_0127:  ldarg.0
    IL_0128:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_012d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0132:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0137:  stloc.s    V_10
    IL_0139:  ldloca.s   V_10
    IL_013b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0140:  stloc.s    V_6
    IL_0142:  ldarg.0
    IL_0143:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCreatureModel::get_LookAtOrder()
    IL_0148:  stloc.s    V_5
    IL_014a:  ldloca.s   V_5
    IL_014c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0157:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_015c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0161:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0166:  stloc.s    V_7
    IL_0168:  ldloc.s    V_6
    IL_016a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_016f:  ldloc.s    V_6
    IL_0171:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0176:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_017b:  ldloc.s    V_7
    IL_017d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0182:  ldloc.s    V_7
    IL_0184:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0189:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_018e:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_0193:  stloc.s    V_8
    IL_0195:  ldc.r4     0.99000001
    IL_019a:  ldloc.s    V_7
    IL_019c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_01a1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01a6:  mul
    IL_01a7:  call       float32 [Engine]Engine.MathUtils::Asin(float32)
    IL_01ac:  stloc.s    V_9
    IL_01ae:  ldarg.0
    IL_01af:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_01b4:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_01b9:  ldloc.s    V_8
    IL_01bb:  ldloc.s    V_9
    IL_01bd:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01c2:  ldarg.0
    IL_01c3:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_01c8:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_01cd:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_01d2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_01d7:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_01dc:  ldarg.0
    IL_01dd:  call       instance float32 Game.ComponentCreatureModel::get_HeadShakeOrder()
    IL_01e2:  ldc.r4     0.0
    IL_01e7:  ble.un     IL_0279

    IL_01ec:  ldarg.0
    IL_01ed:  ldarg.0
    IL_01ee:  call       instance float32 Game.ComponentCreatureModel::get_HeadShakeOrder()
    IL_01f3:  ldarg.1
    IL_01f4:  sub
    IL_01f5:  ldc.r4     0.0
    IL_01fa:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_01ff:  call       instance void Game.ComponentCreatureModel::set_HeadShakeOrder(float32)
    IL_0204:  ldc.r4     1.
    IL_0209:  ldc.r4     4.
    IL_020e:  ldarg.0
    IL_020f:  call       instance float32 Game.ComponentCreatureModel::get_HeadShakeOrder()
    IL_0214:  mul
    IL_0215:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_021a:  mul
    IL_021b:  stloc.s    V_11
    IL_021d:  ldarg.0
    IL_021e:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0223:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0228:  ldloc.s    V_11
    IL_022a:  ldc.r8     16.
    IL_0233:  ldarg.0
    IL_0234:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0239:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_023e:  mul
    IL_023f:  ldc.r4     9.9999998e-003
    IL_0244:  ldarg.0
    IL_0245:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_024a:  conv.r4
    IL_024b:  mul
    IL_024c:  conv.r8
    IL_024d:  add
    IL_024e:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_0253:  conv.r4
    IL_0254:  mul
    IL_0255:  ldc.r4     0.0
    IL_025a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_025f:  ldarg.0
    IL_0260:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0265:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_026a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_026f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0274:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_0279:  ldarg.0
    IL_027a:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_027f:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0284:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0289:  ldc.r4     0.0
    IL_028e:  bne.un.s   IL_02ae

    IL_0290:  ldarg.0
    IL_0291:  ldarg.0
    IL_0292:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_0297:  ldc.r4     3.
    IL_029c:  ldarg.1
    IL_029d:  mul
    IL_029e:  add
    IL_029f:  ldc.r4     1.
    IL_02a4:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02a9:  call       instance void Game.ComponentCreatureModel::set_DeathPhase(float32)
    IL_02ae:  ldarg.0
    IL_02af:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02b4:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_02b9:  callvirt   instance float32 Game.ComponentHealth::get_HealthChange()
    IL_02be:  ldc.r4     0.0
    IL_02c3:  bge.un.s   IL_02d0

    IL_02c5:  ldarg.0
    IL_02c6:  ldc.r4     1.
    IL_02cb:  stfld      float32 Game.ComponentCreatureModel::m_injuryColorFactor
    IL_02d0:  ldarg.0
    IL_02d1:  ldarg.0
    IL_02d2:  ldfld      float32 Game.ComponentCreatureModel::m_injuryColorFactor
    IL_02d7:  ldc.r4     4.
    IL_02dc:  ldarg.1
    IL_02dd:  mul
    IL_02de:  sub
    IL_02df:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_02e4:  stfld      float32 Game.ComponentCreatureModel::m_injuryColorFactor
    IL_02e9:  ldarg.0
    IL_02ea:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCreatureModel::m_eyePosition
    IL_02ef:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_02f5:  ldarg.0
    IL_02f6:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion> Game.ComponentCreatureModel::m_eyeRotation
    IL_02fb:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion>
    IL_0301:  ldarg.0
    IL_0302:  ldc.i4.0
    IL_0303:  call       instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_0308:  ldarg.0
    IL_0309:  ldloca.s   V_5
    IL_030b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0311:  ldloc.s    V_5
    IL_0313:  call       instance void Game.ComponentCreatureModel::set_LookAtOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0318:  ret
  } // end of method ComponentCreatureModel::Update

  .method family hidebysig newslot virtual 
          instance valuetype [Engine]Engine.Vector3 
          CalculateEyePosition() cil managed
  {
    // 代码大小       130 (0x82)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Matrix V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0017:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0021:  ldloca.s   V_0
    IL_0023:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0028:  ldc.r4     0.94999999
    IL_002d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0038:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_003d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0042:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0047:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_004c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0051:  ldloca.s   V_0
    IL_0053:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0058:  ldc.r4     0.44999999
    IL_005d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0068:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0072:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0077:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_007c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0081:  ret
  } // end of method ComponentCreatureModel::CalculateEyePosition

  .method family hidebysig newslot virtual 
          instance valuetype [Engine]Engine.Quaternion 
          CalculateEyeRotation() cil managed
  {
    // 代码大小       75 (0x4b)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0016:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_001b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0020:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0025:  neg
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_002c:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0031:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0036:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_003b:  ldc.r4     0.0
    IL_0040:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromYawPitchRoll(float32,
                                                                                                               float32,
                                                                                                               float32)
    IL_0045:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::op_Multiply(valuetype [Engine]Engine.Quaternion,
                                                                                                    valuetype [Engine]Engine.Quaternion)
    IL_004a:  ret
  } // end of method ComponentCreatureModel::CalculateEyeRotation

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentCreatureModel::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.ComponentModel::.ctor()
    IL_0011:  ret
  } // end of method ComponentCreatureModel::.ctor

  .method private hidebysig instance void 
          '<Load>b__74_0'(class Game.ComponentCreature attacker) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       91 (0x5b)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.BoundingBox V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_0006:  ldc.r4     0.0
    IL_000b:  bne.un.s   IL_005a

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0013:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0018:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_001d:  ldc.r4     0.0
    IL_0022:  bne.un.s   IL_005a

    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_002b:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0030:  stloc.0
    IL_0031:  ldloca.s   V_0
    IL_0033:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_003e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0043:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0048:  stloc.0
    IL_0049:  ldloca.s   V_0
    IL_004b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_0050:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0055:  call       instance void Game.ComponentCreatureModel::set_DeathCauseOffset(valuetype [Engine]Engine.Vector3)
    IL_005a:  ret
  } // end of method ComponentCreatureModel::'<Load>b__74_0'

  .method private hidebysig instance void 
          '<OnEntityAdded>b__75_0'(class Game.ComponentFrame '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCreatureModel::m_eyePosition
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_000c:  ret
  } // end of method ComponentCreatureModel::'<OnEntityAdded>b__75_0'

  .method private hidebysig instance void 
          '<OnEntityAdded>b__75_1'(class Game.ComponentFrame '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion> Game.ComponentCreatureModel::m_eyeRotation
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Quaternion>
    IL_000c:  ret
  } // end of method ComponentCreatureModel::'<OnEntityAdded>b__75_1'

  .property instance float32 Bob()
  {
    .get instance float32 Game.ComponentCreatureModel::get_Bob()
    .set instance void Game.ComponentCreatureModel::set_Bob(float32)
  } // end of property ComponentCreatureModel::Bob
  .property instance float32 MovementAnimationPhase()
  {
    .get instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    .set instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
  } // end of property ComponentCreatureModel::MovementAnimationPhase
  .property instance float32 DeathPhase()
  {
    .get instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    .set instance void Game.ComponentCreatureModel::set_DeathPhase(float32)
  } // end of property ComponentCreatureModel::DeathPhase
  .property instance valuetype [Engine]Engine.Vector3
          DeathCauseOffset()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_DeathCauseOffset()
    .set instance void Game.ComponentCreatureModel::set_DeathCauseOffset(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentCreatureModel::DeathCauseOffset
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
          LookAtOrder()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentCreatureModel::get_LookAtOrder()
    .set instance void Game.ComponentCreatureModel::set_LookAtOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
  } // end of property ComponentCreatureModel::LookAtOrder
  .property instance bool LookRandomOrder()
  {
    .get instance bool Game.ComponentCreatureModel::get_LookRandomOrder()
    .set instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
  } // end of property ComponentCreatureModel::LookRandomOrder
  .property instance float32 HeadShakeOrder()
  {
    .get instance float32 Game.ComponentCreatureModel::get_HeadShakeOrder()
    .set instance void Game.ComponentCreatureModel::set_HeadShakeOrder(float32)
  } // end of property ComponentCreatureModel::HeadShakeOrder
  .property instance bool AttackOrder()
  {
    .get instance bool Game.ComponentCreatureModel::get_AttackOrder()
    .set instance void Game.ComponentCreatureModel::set_AttackOrder(bool)
  } // end of property ComponentCreatureModel::AttackOrder
  .property instance bool FeedOrder()
  {
    .get instance bool Game.ComponentCreatureModel::get_FeedOrder()
    .set instance void Game.ComponentCreatureModel::set_FeedOrder(bool)
  } // end of property ComponentCreatureModel::FeedOrder
  .property instance bool RowLeftOrder()
  {
    .get instance bool Game.ComponentCreatureModel::get_RowLeftOrder()
    .set instance void Game.ComponentCreatureModel::set_RowLeftOrder(bool)
  } // end of property ComponentCreatureModel::RowLeftOrder
  .property instance bool RowRightOrder()
  {
    .get instance bool Game.ComponentCreatureModel::get_RowRightOrder()
    .set instance void Game.ComponentCreatureModel::set_RowRightOrder(bool)
  } // end of property ComponentCreatureModel::RowRightOrder
  .property instance float32 AimHandAngleOrder()
  {
    .get instance float32 Game.ComponentCreatureModel::get_AimHandAngleOrder()
    .set instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
  } // end of property ComponentCreatureModel::AimHandAngleOrder
  .property instance valuetype [Engine]Engine.Vector3
          InHandItemOffsetOrder()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_InHandItemOffsetOrder()
    .set instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentCreatureModel::InHandItemOffsetOrder
  .property instance valuetype [Engine]Engine.Vector3
          InHandItemRotationOrder()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_InHandItemRotationOrder()
    .set instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentCreatureModel::InHandItemRotationOrder
  .property instance bool IsAttackHitMoment()
  {
    .get instance bool Game.ComponentCreatureModel::get_IsAttackHitMoment()
    .set instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
  } // end of property ComponentCreatureModel::IsAttackHitMoment
  .property instance valuetype [Engine]Engine.Vector3
          EyePosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
  } // end of property ComponentCreatureModel::EyePosition
  .property instance valuetype [Engine]Engine.Quaternion
          EyeRotation()
  {
    .get instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
  } // end of property ComponentCreatureModel::EyeRotation
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentCreatureModel::get_UpdateOrder()
  } // end of property ComponentCreatureModel::UpdateOrder
} // end of class Game.ComponentCreatureModel