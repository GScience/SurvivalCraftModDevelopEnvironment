.class public auto ansi beforefieldinit Game.ComponentHumanModel
       extends Game.ComponentCreatureModel
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemModelsRenderer m_subsystemModelsRenderer
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.SubsystemCamera m_subsystemCamera
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.ComponentMiner m_componentMiner
  .field private class Game.ComponentRider m_componentRider
  .field private class Game.ComponentSleep m_componentSleep
  .field private class Game.Random m_random
  .field private class Game.DrawBlockEnvironmentData m_drawBlockEnvironmentData
  .field private class [Engine]Engine.Graphics.ModelBone m_bodyBone
  .field private class [Engine]Engine.Graphics.ModelBone m_headBone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg1Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg2Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_hand1Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_hand2Bone
  .field private float32 m_sneakFactor
  .field private float32 m_lieDownFactor
  .field private float32 m_walkAnimationSpeed
  .field private float32 m_walkLegsAngle
  .field private float32 m_walkBobHeight
  .field private float32 m_headingOffset
  .field private float32 m_punchFactor
  .field private float32 m_punchPhase
  .field private int32 m_punchCounter
  .field private float32 m_footstepsPhase
  .field private bool m_rowLeft
  .field private bool m_rowRight
  .field private float32 m_aimHandAngle
  .field private valuetype [Engine]Engine.Vector3 m_inHandItemOffset
  .field private valuetype [Engine]Engine.Vector3 m_inHandItemRotation
  .field private valuetype [Engine]Engine.Vector2 m_headAngles
  .field private valuetype [Engine]Engine.Vector2 m_handAngles1
  .field private valuetype [Engine]Engine.Vector2 m_handAngles2
  .field private valuetype [Engine]Engine.Vector2 m_legAngles1
  .field private valuetype [Engine]Engine.Vector2 m_legAngles2
  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       1679 (0x68f)
    .maxstack  7
    .locals init (bool V_0,
             bool V_1,
             float32 V_2,
             float32 V_3,
             class Game.ComponentMount V_4,
             float32 V_5,
             float32 V_6,
             valuetype [System.Runtime]System.Nullable`1<int32> V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             float32 V_10,
             float32 V_11,
             class Game.ComponentCreatureModel V_12,
             float32 V_13,
             float32 V_14,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_15,
             valuetype [Engine]Engine.Vector2 V_16)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_0010:  brfalse.s  IL_0032

    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      float32 Game.ComponentHumanModel::m_sneakFactor
    IL_0019:  ldc.r4     2.
    IL_001e:  ldarg.1
    IL_001f:  mul
    IL_0020:  add
    IL_0021:  ldc.r4     1.
    IL_0026:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_002b:  stfld      float32 Game.ComponentHumanModel::m_sneakFactor
    IL_0030:  br.s       IL_0050

    IL_0032:  ldarg.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      float32 Game.ComponentHumanModel::m_sneakFactor
    IL_0039:  ldc.r4     2.
    IL_003e:  ldarg.1
    IL_003f:  mul
    IL_0040:  sub
    IL_0041:  ldc.r4     0.0
    IL_0046:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_004b:  stfld      float32 Game.ComponentHumanModel::m_sneakFactor
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.ComponentSleep Game.ComponentHumanModel::m_componentSleep
    IL_0056:  brfalse.s  IL_0085

    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.ComponentSleep Game.ComponentHumanModel::m_componentSleep
    IL_005e:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0063:  brfalse.s  IL_0085

    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactor
    IL_006c:  ldc.r4     0.89999998
    IL_0071:  ldarg.1
    IL_0072:  mul
    IL_0073:  add
    IL_0074:  ldc.r4     1.
    IL_0079:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_007e:  stfld      float32 Game.ComponentHumanModel::m_lieDownFactor
    IL_0083:  br.s       IL_00a3

    IL_0085:  ldarg.0
    IL_0086:  ldarg.0
    IL_0087:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactor
    IL_008c:  ldc.r4     0.89999998
    IL_0091:  ldarg.1
    IL_0092:  mul
    IL_0093:  sub
    IL_0094:  ldc.r4     0.0
    IL_0099:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_009e:  stfld      float32 Game.ComponentHumanModel::m_lieDownFactor
    IL_00a3:  ldc.i4.1
    IL_00a4:  stloc.0
    IL_00a5:  ldc.i4.1
    IL_00a6:  stloc.1
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_00ad:  stloc.2
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00b4:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_00b9:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::get_LadderValue()
    IL_00be:  stloc.s    V_7
    IL_00c0:  ldloca.s   V_7
    IL_00c2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_00c7:  brfalse.s  IL_0105

    IL_00c9:  ldarg.0
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_00d0:  ldc.r4     1.5
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      float32 Game.ComponentHumanModel::m_walkAnimationSpeed
    IL_00db:  mul
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00e2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00e7:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_00ec:  stloc.s    V_8
    IL_00ee:  ldloca.s   V_8
    IL_00f0:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_00f5:  mul
    IL_00f6:  ldarg.1
    IL_00f7:  mul
    IL_00f8:  add
    IL_00f9:  stfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_00fe:  ldc.i4.0
    IL_00ff:  stloc.1
    IL_0100:  br         IL_01cb

    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_010b:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0110:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_0115:  brtrue     IL_01cb

    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0120:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0125:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_012a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0135:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_013a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_013f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0144:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0149:  ldarg.0
    IL_014a:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_014f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0154:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_StandingOnVelocity()
    IL_0159:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_015e:  ldarg.0
    IL_015f:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0164:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0169:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_StandingOnVelocity()
    IL_016e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0173:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0178:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_017d:  stloc.s    V_9
    IL_017f:  ldloca.s   V_9
    IL_0181:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_0186:  stloc.s    V_10
    IL_0188:  ldloc.s    V_10
    IL_018a:  ldc.r4     0.5
    IL_018f:  ble.un.s   IL_01cb

    IL_0191:  ldarg.0
    IL_0192:  ldarg.0
    IL_0193:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0198:  ldloc.s    V_10
    IL_019a:  ldarg.1
    IL_019b:  mul
    IL_019c:  ldarg.0
    IL_019d:  ldfld      float32 Game.ComponentHumanModel::m_walkAnimationSpeed
    IL_01a2:  mul
    IL_01a3:  add
    IL_01a4:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_01a9:  ldarg.0
    IL_01aa:  ldarg.0
    IL_01ab:  ldfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_01b0:  ldc.r4     1.
    IL_01b5:  ldarg.0
    IL_01b6:  ldfld      float32 Game.ComponentHumanModel::m_walkAnimationSpeed
    IL_01bb:  mul
    IL_01bc:  ldloc.s    V_10
    IL_01be:  mul
    IL_01bf:  ldarg.1
    IL_01c0:  mul
    IL_01c1:  add
    IL_01c2:  stfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_01c7:  ldc.i4.0
    IL_01c8:  stloc.0
    IL_01c9:  ldc.i4.0
    IL_01ca:  stloc.1
    IL_01cb:  ldloc.0
    IL_01cc:  brfalse.s  IL_0233

    IL_01ce:  ldarg.0
    IL_01cf:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01d4:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_01d9:  stloc.s    V_11
    IL_01db:  ldarg.0
    IL_01dc:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01e1:  ldloc.s    V_11
    IL_01e3:  beq.s      IL_0233

    IL_01e5:  ldarg.0
    IL_01e6:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01eb:  ldloc.s    V_11
    IL_01ed:  sub
    IL_01ee:  ldc.r4     0.5
    IL_01f3:  ble.un.s   IL_0218

    IL_01f5:  ldarg.0
    IL_01f6:  ldarg.0
    IL_01f7:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01fc:  ldc.r4     2.
    IL_0201:  ldarg.1
    IL_0202:  mul
    IL_0203:  add
    IL_0204:  ldloc.s    V_11
    IL_0206:  ldc.r4     1.
    IL_020b:  add
    IL_020c:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0211:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_0216:  br.s       IL_0233

    IL_0218:  ldarg.0
    IL_0219:  ldarg.0
    IL_021a:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_021f:  ldc.r4     2.
    IL_0224:  ldarg.1
    IL_0225:  mul
    IL_0226:  sub
    IL_0227:  ldloc.s    V_11
    IL_0229:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_022e:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_0233:  ldloc.1
    IL_0234:  brfalse.s  IL_0241

    IL_0236:  ldarg.0
    IL_0237:  ldc.r4     0.0
    IL_023c:  stfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_0241:  ldc.r4     0.0
    IL_0246:  stloc.3
    IL_0247:  ldarg.0
    IL_0248:  ldfld      class Game.ComponentRider Game.ComponentHumanModel::m_componentRider
    IL_024d:  brtrue.s   IL_0252

    IL_024f:  ldnull
    IL_0250:  br.s       IL_025d

    IL_0252:  ldarg.0
    IL_0253:  ldfld      class Game.ComponentRider Game.ComponentHumanModel::m_componentRider
    IL_0258:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_025d:  stloc.s    V_4
    IL_025f:  ldloc.s    V_4
    IL_0261:  brfalse.s  IL_0299

    IL_0263:  ldloc.s    V_4
    IL_0265:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_026a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreatureModel>()
    IL_026f:  stloc.s    V_12
    IL_0271:  ldloc.s    V_12
    IL_0273:  brfalse.s  IL_0289

    IL_0275:  ldarg.0
    IL_0276:  ldloc.s    V_12
    IL_0278:  callvirt   instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_027d:  call       instance void Game.ComponentCreatureModel::set_Bob(float32)
    IL_0282:  ldarg.0
    IL_0283:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_0288:  stloc.3
    IL_0289:  ldarg.0
    IL_028a:  ldc.r4     0.0
    IL_028f:  stfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_0294:  br         IL_0376

    IL_0299:  ldc.r4     6.2831855
    IL_029e:  ldarg.0
    IL_029f:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_02a4:  mul
    IL_02a5:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_02aa:  stloc.s    V_13
    IL_02ac:  ldarg.0
    IL_02ad:  ldfld      float32 Game.ComponentHumanModel::m_walkBobHeight
    IL_02b2:  ldloc.s    V_13
    IL_02b4:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_02b9:  mul
    IL_02ba:  stloc.3
    IL_02bb:  ldarg.0
    IL_02bc:  ldfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_02c1:  stloc.s    V_14
    IL_02c3:  ldarg.0
    IL_02c4:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02c9:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_02ce:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_02d3:  stloc.s    V_15
    IL_02d5:  ldloca.s   V_15
    IL_02d7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_02dc:  brfalse.s  IL_0344

    IL_02de:  ldarg.0
    IL_02df:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02e4:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_02e9:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_02ee:  stloc.s    V_15
    IL_02f0:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_02f5:  stloc.s    V_16
    IL_02f7:  ldloca.s   V_15
    IL_02f9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_02fe:  brtrue.s   IL_0303

    IL_0300:  ldc.i4.1
    IL_0301:  br.s       IL_031d

    IL_0303:  ldloca.s   V_15
    IL_0305:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_030a:  brtrue.s   IL_030f

    IL_030c:  ldc.i4.0
    IL_030d:  br.s       IL_031d

    IL_030f:  ldloca.s   V_15
    IL_0311:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::GetValueOrDefault()
    IL_0316:  ldloc.s    V_16
    IL_0318:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_031d:  brfalse.s  IL_0344

    IL_031f:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::UnitY
    IL_0324:  ldarg.0
    IL_0325:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_032a:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_032f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_0334:  stloc.s    V_15
    IL_0336:  ldloca.s   V_15
    IL_0338:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_033d:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_0342:  stloc.s    V_14
    IL_0344:  ldarg.0
    IL_0345:  ldarg.0
    IL_0346:  ldfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_034b:  ldloc.s    V_14
    IL_034d:  ldarg.0
    IL_034e:  ldfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_0353:  sub
    IL_0354:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_0359:  ldc.r4     8.
    IL_035e:  ldarg.0
    IL_035f:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0364:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0369:  mul
    IL_036a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_036f:  mul
    IL_0370:  add
    IL_0371:  stfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_0376:  ldc.r4     12.
    IL_037b:  ldarg.0
    IL_037c:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0381:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0386:  mul
    IL_0387:  ldc.r4     1.
    IL_038c:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0391:  stloc.s    V_5
    IL_0393:  ldarg.0
    IL_0394:  ldarg.0
    IL_0395:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_039a:  ldloc.s    V_5
    IL_039c:  ldloc.3
    IL_039d:  ldarg.0
    IL_039e:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_03a3:  sub
    IL_03a4:  mul
    IL_03a5:  add
    IL_03a6:  call       instance void Game.ComponentCreatureModel::set_Bob(float32)
    IL_03ab:  ldarg.0
    IL_03ac:  ldc.i4.0
    IL_03ad:  call       instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
    IL_03b2:  ldarg.0
    IL_03b3:  call       instance bool Game.ComponentCreatureModel::get_AttackOrder()
    IL_03b8:  brfalse.s  IL_0430

    IL_03ba:  ldarg.0
    IL_03bb:  ldarg.0
    IL_03bc:  ldfld      float32 Game.ComponentHumanModel::m_punchFactor
    IL_03c1:  ldc.r4     4.
    IL_03c6:  ldarg.1
    IL_03c7:  mul
    IL_03c8:  add
    IL_03c9:  ldc.r4     1.
    IL_03ce:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_03d3:  stfld      float32 Game.ComponentHumanModel::m_punchFactor
    IL_03d8:  ldarg.0
    IL_03d9:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_03de:  ldarg.0
    IL_03df:  ldarg.0
    IL_03e0:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_03e5:  ldarg.1
    IL_03e6:  ldc.r4     2.
    IL_03eb:  mul
    IL_03ec:  add
    IL_03ed:  ldc.r4     1.
    IL_03f2:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_03f7:  stfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_03fc:  ldc.r4     0.5
    IL_0401:  bge.un     IL_04be

    IL_0406:  ldarg.0
    IL_0407:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_040c:  ldc.r4     0.5
    IL_0411:  blt.un     IL_04be

    IL_0416:  ldarg.0
    IL_0417:  ldc.i4.1
    IL_0418:  call       instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
    IL_041d:  ldarg.0
    IL_041e:  ldarg.0
    IL_041f:  ldfld      int32 Game.ComponentHumanModel::m_punchCounter
    IL_0424:  ldc.i4.1
    IL_0425:  add
    IL_0426:  stfld      int32 Game.ComponentHumanModel::m_punchCounter
    IL_042b:  br         IL_04be

    IL_0430:  ldarg.0
    IL_0431:  ldarg.0
    IL_0432:  ldfld      float32 Game.ComponentHumanModel::m_punchFactor
    IL_0437:  ldc.r4     4.
    IL_043c:  ldarg.1
    IL_043d:  mul
    IL_043e:  sub
    IL_043f:  ldc.r4     0.0
    IL_0444:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0449:  stfld      float32 Game.ComponentHumanModel::m_punchFactor
    IL_044e:  ldarg.0
    IL_044f:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_0454:  ldc.r4     0.0
    IL_0459:  beq.s      IL_04be

    IL_045b:  ldarg.0
    IL_045c:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_0461:  ldc.r4     0.5
    IL_0466:  ble.un.s   IL_0492

    IL_0468:  ldarg.0
    IL_0469:  ldarg.0
    IL_046a:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_046f:  ldarg.1
    IL_0470:  ldc.r4     2.
    IL_0475:  mul
    IL_0476:  add
    IL_0477:  ldc.r4     1.
    IL_047c:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0481:  ldc.r4     1.
    IL_0486:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_048b:  stfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_0490:  br.s       IL_04be

    IL_0492:  ldarg.0
    IL_0493:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_0498:  ldc.r4     0.0
    IL_049d:  ble.un.s   IL_04be

    IL_049f:  ldarg.0
    IL_04a0:  ldarg.0
    IL_04a1:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_04a6:  ldarg.1
    IL_04a7:  ldarg.0
    IL_04a8:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_04ad:  mul
    IL_04ae:  sub
    IL_04af:  ldc.r4     0.0
    IL_04b4:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_04b9:  stfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_04be:  ldarg.0
    IL_04bf:  ldarg.0
    IL_04c0:  call       instance bool Game.ComponentCreatureModel::get_RowLeftOrder()
    IL_04c5:  stfld      bool Game.ComponentHumanModel::m_rowLeft
    IL_04ca:  ldarg.0
    IL_04cb:  ldarg.0
    IL_04cc:  call       instance bool Game.ComponentCreatureModel::get_RowRightOrder()
    IL_04d1:  stfld      bool Game.ComponentHumanModel::m_rowRight
    IL_04d6:  ldarg.0
    IL_04d7:  ldfld      bool Game.ComponentHumanModel::m_rowLeft
    IL_04dc:  brtrue.s   IL_04e9

    IL_04de:  ldarg.0
    IL_04df:  ldfld      bool Game.ComponentHumanModel::m_rowRight
    IL_04e4:  brfalse    IL_0599

    IL_04e9:  ldloc.s    V_4
    IL_04eb:  brfalse    IL_0599

    IL_04f0:  ldloc.s    V_4
    IL_04f2:  callvirt   instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    IL_04f7:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_04fc:  ldc.r4     0.0
    IL_0501:  ble.un     IL_0599

    IL_0506:  ldc.r8     1.1000000238418579
    IL_050f:  ldarg.0
    IL_0510:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0515:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_051a:  mul
    IL_051b:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
    IL_0520:  ldc.r8     1.1000000238418579
    IL_0529:  ldarg.0
    IL_052a:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_052f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0534:  ldarg.0
    IL_0535:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_053a:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_053f:  conv.r8
    IL_0540:  sub
    IL_0541:  mul
    IL_0542:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
    IL_0547:  beq.s      IL_0599

    IL_0549:  ldarg.0
    IL_054a:  ldfld      class Game.SubsystemAudio Game.ComponentHumanModel::m_subsystemAudio
    IL_054f:  ldstr      "Audio/Rowing"
    IL_0554:  ldarg.0
    IL_0555:  ldfld      class Game.Random Game.ComponentHumanModel::m_random
    IL_055a:  ldc.r4     0.40000001
    IL_055f:  ldc.r4     0.60000002
    IL_0564:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0569:  ldarg.0
    IL_056a:  ldfld      class Game.Random Game.ComponentHumanModel::m_random
    IL_056f:  ldc.r4     -0.30000001
    IL_0574:  ldc.r4     0.2
    IL_0579:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_057e:  ldarg.0
    IL_057f:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0584:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0589:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_058e:  ldc.r4     3.
    IL_0593:  ldc.i4.1
    IL_0594:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0599:  ldarg.0
    IL_059a:  ldfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_059f:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_05a4:  stloc.s    V_6
    IL_05a6:  ldarg.0
    IL_05a7:  ldfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_05ac:  ldloc.s    V_6
    IL_05ae:  ble.un.s   IL_0609

    IL_05b0:  ldloc.2
    IL_05b1:  ldloc.s    V_6
    IL_05b3:  bgt.un.s   IL_0609

    IL_05b5:  ldarg.0
    IL_05b6:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_05bb:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_05c0:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_05c5:  brtrue.s   IL_05e7

    IL_05c7:  ldarg.0
    IL_05c8:  ldfld      class Game.SubsystemNoise Game.ComponentHumanModel::m_subsystemNoise
    IL_05cd:  ldarg.0
    IL_05ce:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_05d3:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_05d8:  ldc.r4     0.25
    IL_05dd:  ldc.r4     8.
    IL_05e2:  callvirt   instance void Game.SubsystemNoise::MakeNoise(class Game.ComponentBody,
                                                                      float32,
                                                                      float32)
    IL_05e7:  ldarg.0
    IL_05e8:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_05ed:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_05f2:  ldc.r4     1.
    IL_05f7:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_05fc:  brtrue.s   IL_0609

    IL_05fe:  ldarg.0
    IL_05ff:  ldc.r4     0.0
    IL_0604:  stfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_0609:  ldarg.0
    IL_060a:  ldarg.0
    IL_060b:  call       instance float32 Game.ComponentCreatureModel::get_AimHandAngleOrder()
    IL_0610:  stfld      float32 Game.ComponentHumanModel::m_aimHandAngle
    IL_0615:  ldarg.0
    IL_0616:  ldarg.0
    IL_0617:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemOffset
    IL_061c:  ldarg.0
    IL_061d:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_InHandItemOffsetOrder()
    IL_0622:  ldc.r4     10.
    IL_0627:  ldarg.1
    IL_0628:  mul
    IL_0629:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_062e:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemOffset
    IL_0633:  ldarg.0
    IL_0634:  ldarg.0
    IL_0635:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemRotation
    IL_063a:  ldarg.0
    IL_063b:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_InHandItemRotationOrder()
    IL_0640:  ldc.r4     10.
    IL_0645:  ldarg.1
    IL_0646:  mul
    IL_0647:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_064c:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemRotation
    IL_0651:  ldarg.0
    IL_0652:  ldc.i4.0
    IL_0653:  call       instance void Game.ComponentCreatureModel::set_AttackOrder(bool)
    IL_0658:  ldarg.0
    IL_0659:  ldc.i4.0
    IL_065a:  call       instance void Game.ComponentCreatureModel::set_RowLeftOrder(bool)
    IL_065f:  ldarg.0
    IL_0660:  ldc.i4.0
    IL_0661:  call       instance void Game.ComponentCreatureModel::set_RowRightOrder(bool)
    IL_0666:  ldarg.0
    IL_0667:  ldc.r4     0.0
    IL_066c:  call       instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
    IL_0671:  ldarg.0
    IL_0672:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0677:  call       instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_067c:  ldarg.0
    IL_067d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0682:  call       instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_0687:  ldarg.0
    IL_0688:  ldarg.1
    IL_0689:  call       instance void Game.ComponentCreatureModel::Update(float32)
    IL_068e:  ret
  } // end of method ComponentHumanModel::Update

  .method public hidebysig virtual instance void 
          UpdateVisibility(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemCamera Game.ComponentHumanModel::m_subsystemCamera
    IL_0006:  ldarg.0
    IL_0007:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_000c:  callvirt   instance bool Game.SubsystemCamera::IsEntityFirstPersonTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_0011:  brfalse.s  IL_001b

    IL_0013:  ldarg.0
    IL_0014:  ldc.i4.0
    IL_0015:  call       instance void Game.ComponentModel::set_IsVisible(bool)
    IL_001a:  ret

    IL_001b:  ldarg.0
    IL_001c:  ldarg.1
    IL_001d:  call       instance void Game.ComponentModel::UpdateVisibility(class Game.SubsystemDrawing)
    IL_0022:  ret
  } // end of method ComponentHumanModel::UpdateVisibility

  .method public hidebysig virtual instance void 
          PrepareForDrawing(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       3288 (0xcd8)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Quaternion V_2,
             class Game.ComponentMount V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             float32 V_16,
             float32 V_17,
             float32 V_18,
             float32 V_19,
             float32 V_20,
             float32 V_21,
             float32 V_22,
             float32 V_23,
             float32 V_24,
             float32 V_25,
             float32 V_26,
             float32 V_27,
             float32 V_28,
             float32 V_29,
             float32 V_30,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_31,
             valuetype [Engine]Engine.Vector2 V_32,
             float32 V_33,
             float32 V_34,
             float32 V_35,
             float32 V_36,
             valuetype [Engine]Engine.Vector3 V_37,
             valuetype [Engine]Engine.Matrix V_38,
             int32 V_39,
             class Game.Block V_40,
             valuetype [Engine]Engine.Matrix V_41,
             valuetype [Engine]Engine.Matrix V_42,
             int32 V_43,
             int32 V_44,
             int32 V_45,
             valuetype [Engine]Engine.Matrix V_46)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0017:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001c:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_0021:  stloc.2
    IL_0022:  ldloca.s   V_2
    IL_0024:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Quaternion::ToYawPitchRoll()
    IL_0029:  stloc.1
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0030:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0035:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_003a:  ldc.r4     0.0
    IL_003f:  ble.un     IL_0852

    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ComponentRider Game.ComponentHumanModel::m_componentRider
    IL_004a:  brtrue.s   IL_004f

    IL_004c:  ldnull
    IL_004d:  br.s       IL_005a

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.ComponentRider Game.ComponentHumanModel::m_componentRider
    IL_0055:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_005a:  stloc.3
    IL_005b:  ldc.r4     6.2831855
    IL_0060:  ldarg.0
    IL_0061:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0066:  mul
    IL_0067:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_006c:  stloc.s    V_4
    IL_006e:  ldloca.s   V_0
    IL_0070:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0075:  dup
    IL_0076:  ldind.r4
    IL_0077:  ldarg.0
    IL_0078:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_007d:  add
    IL_007e:  stind.r4
    IL_007f:  ldloca.s   V_1
    IL_0081:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0086:  dup
    IL_0087:  ldind.r4
    IL_0088:  ldarg.0
    IL_0089:  ldfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_008e:  add
    IL_008f:  stind.r4
    IL_0090:  ldc.r8     0.75
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.SubsystemGameInfo Game.ComponentCreatureModel::m_subsystemGameInfo
    IL_009f:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_00a4:  mul
    IL_00a5:  ldarg.0
    IL_00a6:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_00ab:  ldc.i4     0xffff
    IL_00b0:  and
    IL_00b1:  conv.r8
    IL_00b2:  add
    IL_00b3:  ldc.r8     10000.
    IL_00bc:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00c1:  conv.r4
    IL_00c2:  stloc.s    V_5
    IL_00c4:  ldc.r4     -0.30000001
    IL_00c9:  ldc.r4     0.30000001
    IL_00ce:  ldc.r4     1.02
    IL_00d3:  ldloc.s    V_5
    IL_00d5:  mul
    IL_00d6:  ldc.r4     100.
    IL_00db:  sub
    IL_00dc:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_00e1:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00ec:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_00f1:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_00f6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00fb:  add
    IL_00fc:  ldc.r4     3.
    IL_0101:  ldarg.0
    IL_0102:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0107:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_010c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LastTurnOrder()
    IL_0111:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0116:  mul
    IL_0117:  add
    IL_0118:  ldc.r4     80.
    IL_011d:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0122:  neg
    IL_0123:  ldc.r4     80.
    IL_0128:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_012d:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0132:  stloc.s    V_6
    IL_0134:  ldc.r4     -0.30000001
    IL_0139:  ldc.r4     0.30000001
    IL_013e:  ldc.r4     0.95999998
    IL_0143:  ldloc.s    V_5
    IL_0145:  mul
    IL_0146:  ldc.r4     200.
    IL_014b:  sub
    IL_014c:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0151:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0156:  ldarg.0
    IL_0157:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_015c:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0161:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0166:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_016b:  add
    IL_016c:  ldc.r4     45.
    IL_0171:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0176:  neg
    IL_0177:  ldc.r4     45.
    IL_017c:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0181:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0186:  stloc.s    V_7
    IL_0188:  ldc.r4     0.0
    IL_018d:  stloc.s    V_8
    IL_018f:  ldc.r4     0.0
    IL_0194:  stloc.s    V_9
    IL_0196:  ldc.r4     0.0
    IL_019b:  stloc.s    V_10
    IL_019d:  ldc.r4     0.0
    IL_01a2:  stloc.s    V_11
    IL_01a4:  ldc.r4     0.0
    IL_01a9:  stloc.s    V_12
    IL_01ab:  ldc.r4     0.0
    IL_01b0:  stloc.s    V_13
    IL_01b2:  ldc.r4     0.0
    IL_01b7:  stloc.s    V_14
    IL_01b9:  ldc.r4     0.0
    IL_01be:  stloc.s    V_15
    IL_01c0:  ldloc.3
    IL_01c1:  brfalse    IL_0273

    IL_01c6:  ldloc.3
    IL_01c7:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01cc:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Entity::get_ValuesDictionary()
    IL_01d1:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
    IL_01d6:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
    IL_01db:  ldstr      "Boat"
    IL_01e0:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_01e5:  brfalse.s  IL_0244

    IL_01e7:  ldloca.s   V_0
    IL_01e9:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_01ee:  dup
    IL_01ef:  ldind.r4
    IL_01f0:  ldc.r4     0.2
    IL_01f5:  sub
    IL_01f6:  stind.r4
    IL_01f7:  ldloca.s   V_1
    IL_01f9:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_01fe:  dup
    IL_01ff:  ldind.r4
    IL_0200:  ldc.r4     3.1415927
    IL_0205:  add
    IL_0206:  stind.r4
    IL_0207:  ldc.r4     0.40000001
    IL_020c:  stloc.s    V_12
    IL_020e:  ldc.r4     0.40000001
    IL_0213:  stloc.s    V_14
    IL_0215:  ldc.r4     0.2
    IL_021a:  stloc.s    V_13
    IL_021c:  ldc.r4     -0.2
    IL_0221:  stloc.s    V_15
    IL_0223:  ldc.r4     1.1
    IL_0228:  stloc.s    V_8
    IL_022a:  ldc.r4     1.1
    IL_022f:  stloc.s    V_10
    IL_0231:  ldc.r4     0.2
    IL_0236:  stloc.s    V_9
    IL_0238:  ldc.r4     -0.2
    IL_023d:  stloc.s    V_11
    IL_023f:  br         IL_037e

    IL_0244:  ldc.r4     0.5
    IL_0249:  stloc.s    V_12
    IL_024b:  ldc.r4     0.5
    IL_0250:  stloc.s    V_14
    IL_0252:  ldc.r4     0.15000001
    IL_0257:  stloc.s    V_13
    IL_0259:  ldc.r4     -0.15000001
    IL_025e:  stloc.s    V_15
    IL_0260:  ldc.r4     0.55000001
    IL_0265:  stloc.s    V_9
    IL_0267:  ldc.r4     -0.55000001
    IL_026c:  stloc.s    V_11
    IL_026e:  br         IL_037e

    IL_0273:  ldarg.0
    IL_0274:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0279:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_027e:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_0283:  brfalse    IL_034d

    IL_0288:  ldarg.0
    IL_0289:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_028e:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0293:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_0298:  stloc.s    V_31
    IL_029a:  ldloca.s   V_31
    IL_029c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_02a1:  brtrue.s   IL_02aa

    IL_02a3:  ldc.r4     0.0
    IL_02a8:  br.s       IL_02f2

    IL_02aa:  ldc.r4     0.1
    IL_02af:  ldarg.0
    IL_02b0:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02b5:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02ba:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_02bf:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02c4:  mul
    IL_02c5:  ldarg.0
    IL_02c6:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02cb:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02d0:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_02d5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02da:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02df:  stloc.s    V_32
    IL_02e1:  ldloca.s   V_32
    IL_02e3:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_02e8:  ldc.r4     0.5
    IL_02ed:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02f2:  stloc.s    V_30
    IL_02f4:  ldc.r4     -0.1
    IL_02f9:  ldloc.s    V_30
    IL_02fb:  sub
    IL_02fc:  stloc.s    V_8
    IL_02fe:  ldloc.s    V_8
    IL_0300:  stloc.s    V_10
    IL_0302:  ldc.r4     0.0
    IL_0307:  ldc.r4     0.25
    IL_030c:  ldc.r4     1.0700001
    IL_0311:  ldloc.s    V_5
    IL_0313:  mul
    IL_0314:  ldc.r4     400.
    IL_0319:  add
    IL_031a:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_031f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0324:  stloc.s    V_9
    IL_0326:  ldc.r4     0.0
    IL_032b:  ldc.r4     0.25
    IL_0330:  ldc.r4     0.93000001
    IL_0335:  ldloc.s    V_5
    IL_0337:  mul
    IL_0338:  ldc.r4     500.
    IL_033d:  add
    IL_033e:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0343:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0348:  neg
    IL_0349:  stloc.s    V_11
    IL_034b:  br.s       IL_037e

    IL_034d:  ldarg.0
    IL_034e:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0353:  ldc.r4     0.0
    IL_0358:  beq.s      IL_037e

    IL_035a:  ldc.r4     -0.5
    IL_035f:  ldloc.s    V_4
    IL_0361:  mul
    IL_0362:  stloc.s    V_12
    IL_0364:  ldc.r4     0.5
    IL_0369:  ldloc.s    V_4
    IL_036b:  mul
    IL_036c:  stloc.s    V_14
    IL_036e:  ldarg.0
    IL_036f:  ldfld      float32 Game.ComponentHumanModel::m_walkLegsAngle
    IL_0374:  ldloc.s    V_4
    IL_0376:  mul
    IL_0377:  stloc.s    V_8
    IL_0379:  ldloc.s    V_8
    IL_037b:  neg
    IL_037c:  stloc.s    V_10
    IL_037e:  ldc.r4     0.0
    IL_0383:  stloc.s    V_16
    IL_0385:  ldarg.0
    IL_0386:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_038b:  brfalse.s  IL_03d3

    IL_038d:  ldarg.0
    IL_038e:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0393:  callvirt   instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_0398:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_039d:  ldc.r4     3.1415927
    IL_03a2:  mul
    IL_03a3:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_03a8:  stloc.s    V_33
    IL_03aa:  ldarg.0
    IL_03ab:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_03b0:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_03b5:  brfalse.s  IL_03c9

    IL_03b7:  ldc.r4     0.30000001
    IL_03bc:  ldc.r4     1.
    IL_03c1:  ldloc.s    V_33
    IL_03c3:  mul
    IL_03c4:  add
    IL_03c5:  stloc.s    V_16
    IL_03c7:  br.s       IL_03d3

    IL_03c9:  ldc.r4     1.
    IL_03ce:  ldloc.s    V_33
    IL_03d0:  mul
    IL_03d1:  stloc.s    V_16
    IL_03d3:  ldarg.0
    IL_03d4:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_03d9:  ldc.r4     0.0
    IL_03de:  bne.un.s   IL_03e7

    IL_03e0:  ldc.r4     0.0
    IL_03e5:  br.s       IL_040e

    IL_03e7:  ldc.r4     90.
    IL_03ec:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_03f1:  neg
    IL_03f2:  ldc.r4     6.2831855
    IL_03f7:  ldarg.0
    IL_03f8:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_03fd:  ldc.r4     4.
    IL_0402:  call       float32 [Engine]Engine.MathUtils::Sigmoid(float32,
                                                                   float32)
    IL_0407:  mul
    IL_0408:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_040d:  mul
    IL_040e:  stloc.s    V_17
    IL_0410:  ldarg.0
    IL_0411:  ldfld      int32 Game.ComponentHumanModel::m_punchCounter
    IL_0416:  ldc.i4.1
    IL_0417:  and
    IL_0418:  brfalse.s  IL_0421

    IL_041a:  ldc.r4     0.0
    IL_041f:  br.s       IL_0423

    IL_0421:  ldloc.s    V_17
    IL_0423:  stloc.s    V_18
    IL_0425:  ldarg.0
    IL_0426:  ldfld      int32 Game.ComponentHumanModel::m_punchCounter
    IL_042b:  ldc.i4.1
    IL_042c:  and
    IL_042d:  brtrue.s   IL_0436

    IL_042f:  ldc.r4     0.0
    IL_0434:  br.s       IL_0438

    IL_0436:  ldloc.s    V_17
    IL_0438:  stloc.s    V_19
    IL_043a:  ldc.r4     0.0
    IL_043f:  stloc.s    V_20
    IL_0441:  ldc.r4     0.0
    IL_0446:  stloc.s    V_21
    IL_0448:  ldc.r4     0.0
    IL_044d:  stloc.s    V_22
    IL_044f:  ldc.r4     0.0
    IL_0454:  stloc.s    V_23
    IL_0456:  ldarg.0
    IL_0457:  ldfld      bool Game.ComponentHumanModel::m_rowLeft
    IL_045c:  brtrue.s   IL_0466

    IL_045e:  ldarg.0
    IL_045f:  ldfld      bool Game.ComponentHumanModel::m_rowRight
    IL_0464:  brfalse.s  IL_04dd

    IL_0466:  ldc.r4     0.60000002
    IL_046b:  ldc.r8     6.9115042686462402
    IL_0474:  ldarg.0
    IL_0475:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_047a:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_047f:  mul
    IL_0480:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_0485:  conv.r4
    IL_0486:  mul
    IL_0487:  stloc.s    V_34
    IL_0489:  ldc.r4     0.2
    IL_048e:  ldc.r4     0.2
    IL_0493:  ldc.r8     6.9115042686462402
    IL_049c:  ldarg.0
    IL_049d:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_04a2:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_04a7:  ldc.r8     0.5
    IL_04b0:  add
    IL_04b1:  mul
    IL_04b2:  call       float64 [Engine]Engine.MathUtils::Cos(float64)
    IL_04b7:  conv.r4
    IL_04b8:  mul
    IL_04b9:  add
    IL_04ba:  stloc.s    V_35
    IL_04bc:  ldarg.0
    IL_04bd:  ldfld      bool Game.ComponentHumanModel::m_rowLeft
    IL_04c2:  brfalse.s  IL_04cc

    IL_04c4:  ldloc.s    V_34
    IL_04c6:  stloc.s    V_20
    IL_04c8:  ldloc.s    V_35
    IL_04ca:  stloc.s    V_21
    IL_04cc:  ldarg.0
    IL_04cd:  ldfld      bool Game.ComponentHumanModel::m_rowRight
    IL_04d2:  brfalse.s  IL_04dd

    IL_04d4:  ldloc.s    V_34
    IL_04d6:  stloc.s    V_22
    IL_04d8:  ldloc.s    V_35
    IL_04da:  neg
    IL_04db:  stloc.s    V_23
    IL_04dd:  ldc.r4     0.0
    IL_04e2:  stloc.s    V_24
    IL_04e4:  ldc.r4     0.0
    IL_04e9:  stloc.s    V_25
    IL_04eb:  ldc.r4     0.0
    IL_04f0:  stloc.s    V_26
    IL_04f2:  ldc.r4     0.0
    IL_04f7:  stloc.s    V_27
    IL_04f9:  ldarg.0
    IL_04fa:  ldfld      float32 Game.ComponentHumanModel::m_aimHandAngle
    IL_04ff:  ldc.r4     0.0
    IL_0504:  beq.s      IL_0529

    IL_0506:  ldc.r4     1.5
    IL_050b:  stloc.s    V_24
    IL_050d:  ldc.r4     -0.69999999
    IL_0512:  stloc.s    V_25
    IL_0514:  ldarg.0
    IL_0515:  ldfld      float32 Game.ComponentHumanModel::m_aimHandAngle
    IL_051a:  ldc.r4     1.
    IL_051f:  mul
    IL_0520:  stloc.s    V_26
    IL_0522:  ldc.r4     0.0
    IL_0527:  stloc.s    V_27
    IL_0529:  ldarg.0
    IL_052a:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_052f:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0534:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_0539:  brtrue.s   IL_053e

    IL_053b:  ldc.i4.1
    IL_053c:  br.s       IL_053f

    IL_053e:  ldc.i4.4
    IL_053f:  conv.r4
    IL_0540:  stloc.s    V_28
    IL_0542:  ldloc.s    V_12
    IL_0544:  ldc.r4     -0.1
    IL_0549:  ldc.r4     0.1
    IL_054e:  ldloc.s    V_5
    IL_0550:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0555:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_055a:  ldloc.s    V_18
    IL_055c:  add
    IL_055d:  ldloc.s    V_20
    IL_055f:  add
    IL_0560:  ldloc.s    V_24
    IL_0562:  add
    IL_0563:  add
    IL_0564:  stloc.s    V_12
    IL_0566:  ldloc.s    V_13
    IL_0568:  ldc.r4     0.0
    IL_056d:  ldloc.s    V_28
    IL_056f:  ldc.r4     0.15000001
    IL_0574:  mul
    IL_0575:  ldc.r4     1.1
    IL_057a:  ldloc.s    V_5
    IL_057c:  mul
    IL_057d:  ldc.r4     100.
    IL_0582:  add
    IL_0583:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0588:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_058d:  ldloc.s    V_21
    IL_058f:  add
    IL_0590:  ldloc.s    V_25
    IL_0592:  add
    IL_0593:  add
    IL_0594:  stloc.s    V_13
    IL_0596:  ldloc.s    V_14
    IL_0598:  ldloc.s    V_16
    IL_059a:  ldc.r4     -0.1
    IL_059f:  ldc.r4     0.1
    IL_05a4:  ldc.r4     0.89999998
    IL_05a9:  ldloc.s    V_5
    IL_05ab:  mul
    IL_05ac:  ldc.r4     200.
    IL_05b1:  add
    IL_05b2:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_05b7:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_05bc:  add
    IL_05bd:  ldloc.s    V_19
    IL_05bf:  add
    IL_05c0:  ldloc.s    V_22
    IL_05c2:  add
    IL_05c3:  ldloc.s    V_26
    IL_05c5:  add
    IL_05c6:  add
    IL_05c7:  stloc.s    V_14
    IL_05c9:  ldloc.s    V_15
    IL_05cb:  ldc.r4     0.0
    IL_05d0:  ldloc.s    V_28
    IL_05d2:  ldc.r4     0.15000001
    IL_05d7:  mul
    IL_05d8:  ldc.r4     1.05
    IL_05dd:  ldloc.s    V_5
    IL_05df:  mul
    IL_05e0:  ldc.r4     300.
    IL_05e5:  add
    IL_05e6:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_05eb:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_05f0:  neg
    IL_05f1:  ldloc.s    V_23
    IL_05f3:  add
    IL_05f4:  ldloc.s    V_27
    IL_05f6:  add
    IL_05f7:  add
    IL_05f8:  stloc.s    V_15
    IL_05fa:  ldc.r4     12.
    IL_05ff:  ldarg.0
    IL_0600:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0605:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_060a:  mul
    IL_060b:  ldc.r4     1.
    IL_0610:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0615:  stloc.s    V_29
    IL_0617:  ldarg.0
    IL_0618:  ldarg.0
    IL_0619:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_headAngles
    IL_061e:  ldc.r4     0.33000001
    IL_0623:  ldloc.s    V_29
    IL_0625:  mul
    IL_0626:  ldloc.s    V_6
    IL_0628:  ldloc.s    V_7
    IL_062a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_062f:  ldarg.0
    IL_0630:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_headAngles
    IL_0635:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_063a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_063f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0644:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_headAngles
    IL_0649:  ldarg.0
    IL_064a:  ldarg.0
    IL_064b:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_0650:  ldloc.s    V_29
    IL_0652:  ldloc.s    V_12
    IL_0654:  ldloc.s    V_13
    IL_0656:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_065b:  ldarg.0
    IL_065c:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_0661:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0666:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_066b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0670:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_0675:  ldarg.0
    IL_0676:  ldarg.0
    IL_0677:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_067c:  ldloc.s    V_29
    IL_067e:  ldloc.s    V_14
    IL_0680:  ldloc.s    V_15
    IL_0682:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0687:  ldarg.0
    IL_0688:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_068d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0692:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0697:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_069c:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_06a1:  ldarg.0
    IL_06a2:  ldarg.0
    IL_06a3:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_06a8:  ldloc.s    V_29
    IL_06aa:  ldloc.s    V_8
    IL_06ac:  ldloc.s    V_9
    IL_06ae:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06b3:  ldarg.0
    IL_06b4:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_06b9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_06be:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06c3:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06c8:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_06cd:  ldarg.0
    IL_06ce:  ldarg.0
    IL_06cf:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_06d4:  ldloc.s    V_29
    IL_06d6:  ldloc.s    V_10
    IL_06d8:  ldloc.s    V_11
    IL_06da:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06df:  ldarg.0
    IL_06e0:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_06e5:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_06ea:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06ef:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06f4:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_06f9:  ldarg.0
    IL_06fa:  ldarg.0
    IL_06fb:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_bodyBone
    IL_0700:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0705:  ldloc.1
    IL_0706:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_070b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0710:  ldloc.0
    IL_0711:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0716:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_071b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0720:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0725:  ldarg.0
    IL_0726:  ldarg.0
    IL_0727:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_headBone
    IL_072c:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0731:  ldarg.0
    IL_0732:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_headAngles
    IL_0737:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_073c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0741:  ldarg.0
    IL_0742:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_headAngles
    IL_0747:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_074c:  neg
    IL_074d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0752:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0757:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_075c:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0761:  ldarg.0
    IL_0762:  ldarg.0
    IL_0763:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand1Bone
    IL_0768:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_076d:  ldarg.0
    IL_076e:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_0773:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0778:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_077d:  ldarg.0
    IL_077e:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_0783:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0788:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_078d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0792:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0797:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_079c:  ldarg.0
    IL_079d:  ldarg.0
    IL_079e:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand2Bone
    IL_07a3:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_07a8:  ldarg.0
    IL_07a9:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_07ae:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_07b3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_07b8:  ldarg.0
    IL_07b9:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_07be:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_07c3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_07c8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_07cd:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_07d2:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_07d7:  ldarg.0
    IL_07d8:  ldarg.0
    IL_07d9:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg1Bone
    IL_07de:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_07e3:  ldarg.0
    IL_07e4:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_07e9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_07ee:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_07f3:  ldarg.0
    IL_07f4:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_07f9:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_07fe:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0803:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0808:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_080d:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0812:  ldarg.0
    IL_0813:  ldarg.0
    IL_0814:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg2Bone
    IL_0819:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_081e:  ldarg.0
    IL_081f:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_0824:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0829:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_082e:  ldarg.0
    IL_082f:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_0834:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0839:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_083e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0843:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0848:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_084d:  br         IL_0a5c

    IL_0852:  ldc.r4     1.
    IL_0857:  ldarg.0
    IL_0858:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_085d:  sub
    IL_085e:  stloc.s    V_36
    IL_0860:  ldloc.0
    IL_0861:  ldarg.0
    IL_0862:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_0867:  ldc.r4     0.5
    IL_086c:  mul
    IL_086d:  ldarg.0
    IL_086e:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0873:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0878:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_087d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0882:  mul
    IL_0883:  ldarg.0
    IL_0884:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0889:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_088e:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0893:  stloc.s    V_38
    IL_0895:  ldloca.s   V_38
    IL_0897:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_089c:  ldc.r4     1.
    IL_08a1:  ldc.r4     0.0
    IL_08a6:  ldc.r4     1.
    IL_08ab:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_08b0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08b5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_08ba:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08bf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08c4:  ldarg.0
    IL_08c5:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_08ca:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_08cf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08d4:  ldarg.0
    IL_08d5:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_08da:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_08df:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_08e4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_08e9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_08ee:  ldc.r4     0.1
    IL_08f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_08f8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08fd:  stloc.s    V_37
    IL_08ff:  ldarg.0
    IL_0900:  ldarg.0
    IL_0901:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_bodyBone
    IL_0906:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_090b:  ldloc.1
    IL_090c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0911:  ldc.r4     1.5707964
    IL_0916:  ldarg.0
    IL_0917:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_091c:  mul
    IL_091d:  ldc.r4     0.0
    IL_0922:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_0927:  ldloc.s    V_37
    IL_0929:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_092e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0933:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0938:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_093d:  ldarg.0
    IL_093e:  ldarg.0
    IL_093f:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_headBone
    IL_0944:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0949:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_094e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0953:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0958:  ldarg.0
    IL_0959:  ldarg.0
    IL_095a:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand1Bone
    IL_095f:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0964:  ldarg.0
    IL_0965:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_096a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_096f:  ldloc.s    V_36
    IL_0971:  mul
    IL_0972:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0977:  ldarg.0
    IL_0978:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_097d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0982:  ldloc.s    V_36
    IL_0984:  mul
    IL_0985:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_098a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_098f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0994:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0999:  ldarg.0
    IL_099a:  ldarg.0
    IL_099b:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand2Bone
    IL_09a0:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_09a5:  ldarg.0
    IL_09a6:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_09ab:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_09b0:  ldloc.s    V_36
    IL_09b2:  mul
    IL_09b3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_09b8:  ldarg.0
    IL_09b9:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_09be:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_09c3:  ldloc.s    V_36
    IL_09c5:  mul
    IL_09c6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_09cb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_09d0:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_09d5:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_09da:  ldarg.0
    IL_09db:  ldarg.0
    IL_09dc:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg1Bone
    IL_09e1:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_09e6:  ldarg.0
    IL_09e7:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_09ec:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_09f1:  ldloc.s    V_36
    IL_09f3:  mul
    IL_09f4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_09f9:  ldarg.0
    IL_09fa:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_09ff:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0a04:  ldloc.s    V_36
    IL_0a06:  mul
    IL_0a07:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0a0c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0a11:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0a16:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0a1b:  ldarg.0
    IL_0a1c:  ldarg.0
    IL_0a1d:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg2Bone
    IL_0a22:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0a27:  ldarg.0
    IL_0a28:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_0a2d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0a32:  ldloc.s    V_36
    IL_0a34:  mul
    IL_0a35:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0a3a:  ldarg.0
    IL_0a3b:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_0a40:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0a45:  ldloc.s    V_36
    IL_0a47:  mul
    IL_0a48:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0a4d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0a52:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0a57:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0a5c:  ldarg.0
    IL_0a5d:  ldarg.1
    IL_0a5e:  call       instance void Game.ComponentCreatureModel::PrepareForDrawing(class Game.SubsystemDrawing)
    IL_0a63:  ldarg.0
    IL_0a64:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0a69:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0a6e:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0a73:  ldc.r4     0.0
    IL_0a78:  ble.un     IL_0cd7

    IL_0a7d:  ldarg.0
    IL_0a7e:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0a83:  brfalse    IL_0cd7

    IL_0a88:  ldarg.0
    IL_0a89:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0a8e:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0a93:  brfalse    IL_0cd7

    IL_0a98:  ldarg.0
    IL_0a99:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0a9e:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0aa3:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0aa8:  stloc.s    V_39
    IL_0aaa:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0aaf:  ldloc.s    V_39
    IL_0ab1:  ldelem.ref
    IL_0ab2:  stloc.s    V_40
    IL_0ab4:  ldarg.0
    IL_0ab5:  call       instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransforms()
    IL_0aba:  ldarg.0
    IL_0abb:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand2Bone
    IL_0ac0:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0ac5:  ldelem     [Engine]Engine.Matrix
    IL_0aca:  stloc.s    V_41
    IL_0acc:  ldloc.s    V_41
    IL_0ace:  ldarg.1
    IL_0acf:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_InvertedViewMatrix()
    IL_0ad4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0ad9:  stloc.s    V_41
    IL_0adb:  ldloca.s   V_41
    IL_0add:  ldloca.s   V_41
    IL_0adf:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0ae4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0ae9:  call       instance void [Engine]Engine.Matrix::set_Right(valuetype [Engine]Engine.Vector3)
    IL_0aee:  ldloca.s   V_41
    IL_0af0:  ldloca.s   V_41
    IL_0af2:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0af7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0afc:  call       instance void [Engine]Engine.Matrix::set_Up(valuetype [Engine]Engine.Vector3)
    IL_0b01:  ldloca.s   V_41
    IL_0b03:  ldloca.s   V_41
    IL_0b05:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0b0a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0b0f:  call       instance void [Engine]Engine.Matrix::set_Forward(valuetype [Engine]Engine.Vector3)
    IL_0b14:  ldloc.s    V_40
    IL_0b16:  ldflda     valuetype [Engine]Engine.Vector3 Game.Block::InHandRotation
    IL_0b1b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0b20:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0b25:  ldarg.0
    IL_0b26:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemRotation
    IL_0b2b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0b30:  add
    IL_0b31:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0b36:  ldloc.s    V_40
    IL_0b38:  ldflda     valuetype [Engine]Engine.Vector3 Game.Block::InHandRotation
    IL_0b3d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0b42:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0b47:  ldarg.0
    IL_0b48:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemRotation
    IL_0b4d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0b52:  add
    IL_0b53:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0b58:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0b5d:  ldloc.s    V_40
    IL_0b5f:  ldflda     valuetype [Engine]Engine.Vector3 Game.Block::InHandRotation
    IL_0b64:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0b69:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0b6e:  ldarg.0
    IL_0b6f:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemRotation
    IL_0b74:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0b79:  add
    IL_0b7a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0b7f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0b84:  ldloc.s    V_40
    IL_0b86:  ldfld      valuetype [Engine]Engine.Vector3 Game.Block::InHandOffset
    IL_0b8b:  ldarg.0
    IL_0b8c:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemOffset
    IL_0b91:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0b96:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0b9b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0ba0:  ldc.r4     5.0000001e-002
    IL_0ba5:  ldc.r4     5.0000001e-002
    IL_0baa:  ldc.r4     -0.56
    IL_0baf:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0bb4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0bb9:  ldloc.s    V_41
    IL_0bbb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0bc0:  stloc.s    V_42
    IL_0bc2:  ldloca.s   V_42
    IL_0bc4:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0bc9:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0bce:  conv.i4
    IL_0bcf:  stloc.s    V_43
    IL_0bd1:  ldloca.s   V_42
    IL_0bd3:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0bd8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0bdd:  conv.i4
    IL_0bde:  stloc.s    V_44
    IL_0be0:  ldloca.s   V_42
    IL_0be2:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0be7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0bec:  conv.i4
    IL_0bed:  stloc.s    V_45
    IL_0bef:  ldarg.0
    IL_0bf0:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_0bf5:  ldloc.s    V_42
    IL_0bf7:  stfld      valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
    IL_0bfc:  ldarg.0
    IL_0bfd:  ldfld      class Game.SubsystemTerrain Game.ComponentHumanModel::m_subsystemTerrain
    IL_0c02:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0c07:  ldloc.s    V_43
    IL_0c09:  ldloc.s    V_45
    IL_0c0b:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_0c10:  brfalse.s  IL_0c50

    IL_0c12:  ldarg.0
    IL_0c13:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_0c18:  ldarg.0
    IL_0c19:  ldfld      class Game.SubsystemTerrain Game.ComponentHumanModel::m_subsystemTerrain
    IL_0c1e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0c23:  ldloc.s    V_43
    IL_0c25:  ldloc.s    V_45
    IL_0c27:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0c2c:  stfld      int32 Game.DrawBlockEnvironmentData::Humidity
    IL_0c31:  ldarg.0
    IL_0c32:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_0c37:  ldarg.0
    IL_0c38:  ldfld      class Game.SubsystemTerrain Game.ComponentHumanModel::m_subsystemTerrain
    IL_0c3d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0c42:  ldloc.s    V_43
    IL_0c44:  ldloc.s    V_45
    IL_0c46:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0c4b:  stfld      int32 Game.DrawBlockEnvironmentData::Temperature
    IL_0c50:  ldarg.0
    IL_0c51:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_0c56:  ldarg.0
    IL_0c57:  ldfld      class Game.SubsystemTerrain Game.ComponentHumanModel::m_subsystemTerrain
    IL_0c5c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0c61:  ldloc.s    V_43
    IL_0c63:  ldloc.s    V_44
    IL_0c65:  ldloc.s    V_45
    IL_0c67:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0c6c:  stfld      int32 Game.DrawBlockEnvironmentData::Light
    IL_0c71:  ldarg.0
    IL_0c72:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_0c77:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0c7c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0c81:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0c86:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0c8b:  ldarg.0
    IL_0c8c:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_0c91:  ldarg.0
    IL_0c92:  ldfld      class Game.SubsystemTerrain Game.ComponentHumanModel::m_subsystemTerrain
    IL_0c97:  stfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0c9c:  ldloc.s    V_42
    IL_0c9e:  ldarg.1
    IL_0c9f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
    IL_0ca4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0ca9:  stloc.s    V_46
    IL_0cab:  ldloc.s    V_40
    IL_0cad:  ldarg.0
    IL_0cae:  ldfld      class Game.SubsystemModelsRenderer Game.ComponentHumanModel::m_subsystemModelsRenderer
    IL_0cb3:  callvirt   instance class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::get_PrimitivesRenderer()
    IL_0cb8:  ldarg.0
    IL_0cb9:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0cbe:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0cc3:  ldloc.s    V_40
    IL_0cc5:  ldfld      float32 Game.Block::InHandScale
    IL_0cca:  ldloca.s   V_46
    IL_0ccc:  ldarg.0
    IL_0ccd:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_0cd2:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                             int32,
                                                             float32,
                                                             valuetype [Engine]Engine.Matrix&,
                                                             class Game.DrawBlockEnvironmentData)
    IL_0cd7:  ret
  } // end of method ComponentHumanModel::PrepareForDrawing

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       201 (0xc9)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentCreatureModel::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                         class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0015:  stfld      class Game.SubsystemTerrain Game.ComponentHumanModel::m_subsystemTerrain
    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0021:  ldc.i4.1
    IL_0022:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemModelsRenderer>(bool)
    IL_0027:  stfld      class Game.SubsystemModelsRenderer Game.ComponentHumanModel::m_subsystemModelsRenderer
    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_0039:  stfld      class Game.SubsystemNoise Game.ComponentHumanModel::m_subsystemNoise
    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCamera>(bool)
    IL_004b:  stfld      class Game.SubsystemCamera Game.ComponentHumanModel::m_subsystemCamera
    IL_0050:  ldarg.0
    IL_0051:  ldarg.0
    IL_0052:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0057:  ldc.i4.1
    IL_0058:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_005d:  stfld      class Game.SubsystemAudio Game.ComponentHumanModel::m_subsystemAudio
    IL_0062:  ldarg.0
    IL_0063:  ldarg.0
    IL_0064:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0069:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMiner>()
    IL_006e:  stfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0073:  ldarg.0
    IL_0074:  ldarg.0
    IL_0075:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_007a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>()
    IL_007f:  stfld      class Game.ComponentRider Game.ComponentHumanModel::m_componentRider
    IL_0084:  ldarg.0
    IL_0085:  ldarg.0
    IL_0086:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_008b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSleep>()
    IL_0090:  stfld      class Game.ComponentSleep Game.ComponentHumanModel::m_componentSleep
    IL_0095:  ldarg.0
    IL_0096:  ldarg.1
    IL_0097:  ldstr      "WalkAnimationSpeed"
    IL_009c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00a1:  stfld      float32 Game.ComponentHumanModel::m_walkAnimationSpeed
    IL_00a6:  ldarg.0
    IL_00a7:  ldarg.1
    IL_00a8:  ldstr      "WalkBobHeight"
    IL_00ad:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00b2:  stfld      float32 Game.ComponentHumanModel::m_walkBobHeight
    IL_00b7:  ldarg.0
    IL_00b8:  ldarg.1
    IL_00b9:  ldstr      "WalkLegsAngle"
    IL_00be:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00c3:  stfld      float32 Game.ComponentHumanModel::m_walkLegsAngle
    IL_00c8:  ret
  } // end of method ComponentHumanModel::Load

  .method family hidebysig virtual instance void 
          SetModel(class [Engine]Engine.Graphics.Model model) cil managed
  {
    // 代码大小       200 (0xc8)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.ComponentModel::SetModel(class [Engine]Engine.Graphics.Model)
    IL_0007:  ldarg.0
    IL_0008:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_000d:  brfalse    IL_009d

    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0019:  ldstr      "Body"
    IL_001e:  ldc.i4.1
    IL_001f:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0024:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_bodyBone
    IL_0029:  ldarg.0
    IL_002a:  ldarg.0
    IL_002b:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0030:  ldstr      "Head"
    IL_0035:  ldc.i4.1
    IL_0036:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_003b:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_headBone
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0047:  ldstr      "Leg1"
    IL_004c:  ldc.i4.1
    IL_004d:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0052:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg1Bone
    IL_0057:  ldarg.0
    IL_0058:  ldarg.0
    IL_0059:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_005e:  ldstr      "Leg2"
    IL_0063:  ldc.i4.1
    IL_0064:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0069:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg2Bone
    IL_006e:  ldarg.0
    IL_006f:  ldarg.0
    IL_0070:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0075:  ldstr      "Hand1"
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0080:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand1Bone
    IL_0085:  ldarg.0
    IL_0086:  ldarg.0
    IL_0087:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_008c:  ldstr      "Hand2"
    IL_0091:  ldc.i4.1
    IL_0092:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0097:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand2Bone
    IL_009c:  ret

    IL_009d:  ldarg.0
    IL_009e:  ldnull
    IL_009f:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_bodyBone
    IL_00a4:  ldarg.0
    IL_00a5:  ldnull
    IL_00a6:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_headBone
    IL_00ab:  ldarg.0
    IL_00ac:  ldnull
    IL_00ad:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg1Bone
    IL_00b2:  ldarg.0
    IL_00b3:  ldnull
    IL_00b4:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg2Bone
    IL_00b9:  ldarg.0
    IL_00ba:  ldnull
    IL_00bb:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand1Bone
    IL_00c0:  ldarg.0
    IL_00c1:  ldnull
    IL_00c2:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand2Bone
    IL_00c7:  ret
  } // end of method ComponentHumanModel::SetModel

  .method family hidebysig virtual instance valuetype [Engine]Engine.Vector3 
          CalculateEyePosition() cil managed
  {
    // 代码大小       224 (0xe0)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Matrix V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactor
    IL_0006:  ldc.r4     0.0
    IL_000b:  bgt.s      IL_0014

    IL_000d:  ldc.r4     0.0
    IL_0012:  br.s       IL_0024

    IL_0014:  ldarg.0
    IL_0015:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactor
    IL_001a:  ldc.r4     1.
    IL_001f:  call       float32 [Engine]Engine.MathUtils::Sigmoid(float32,
                                                                   float32)
    IL_0024:  stloc.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      float32 Game.ComponentHumanModel::m_sneakFactor
    IL_002b:  ldc.r4     0.0
    IL_0030:  bgt.s      IL_0039

    IL_0032:  ldc.r4     0.0
    IL_0037:  br.s       IL_0049

    IL_0039:  ldarg.0
    IL_003a:  ldfld      float32 Game.ComponentHumanModel::m_sneakFactor
    IL_003f:  ldc.r4     4.
    IL_0044:  call       float32 [Engine]Engine.MathUtils::Sigmoid(float32,
                                                                   float32)
    IL_0049:  stloc.1
    IL_004a:  ldc.r4     0.93000001
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0055:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_005a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_005f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0064:  mul
    IL_0065:  stloc.2
    IL_0066:  ldloc.2
    IL_0067:  ldc.r4     0.44999999
    IL_006c:  ldloc.2
    IL_006d:  mul
    IL_006e:  ldloc.1
    IL_006f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0074:  ldc.r4     0.2
    IL_0079:  ldloc.2
    IL_007a:  mul
    IL_007b:  ldloc.0
    IL_007c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0081:  stloc.3
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0088:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_008d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0092:  stloc.s    V_4
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_009a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_009f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00a4:  ldloca.s   V_4
    IL_00a6:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_00ab:  ldloc.3
    IL_00ac:  ldc.r4     2.
    IL_00b1:  ldarg.0
    IL_00b2:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_00b7:  mul
    IL_00b8:  add
    IL_00b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00be:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c3:  ldloca.s   V_4
    IL_00c5:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00ca:  ldc.r4     -0.2
    IL_00cf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00d4:  ldloc.1
    IL_00d5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00da:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00df:  ret
  } // end of method ComponentHumanModel::CalculateEyePosition

  .method family hidebysig virtual instance valuetype [Engine]Engine.Quaternion 
          CalculateEyeRotation() cil managed
  {
    // 代码大小       142 (0x8e)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactor
    IL_000c:  ldc.r4     0.0
    IL_0011:  beq.s      IL_0047

    IL_0013:  ldloc.0
    IL_0014:  ldc.r4     80.
    IL_0019:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactor
    IL_0024:  ldc.r4     0.2
    IL_0029:  sub
    IL_002a:  ldc.r4     0.0
    IL_002f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0034:  ldc.r4     0.80000001
    IL_0039:  div
    IL_003a:  ldc.r4     4.
    IL_003f:  call       float32 [Engine]Engine.MathUtils::Sigmoid(float32,
                                                                   float32)
    IL_0044:  mul
    IL_0045:  add
    IL_0046:  stloc.0
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_004d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0052:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_005d:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0062:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0067:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_006c:  neg
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0073:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0078:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_007d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0082:  ldloc.0
    IL_0083:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromYawPitchRoll(float32,
                                                                                                               float32,
                                                                                                               float32)
    IL_0088:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::op_Multiply(valuetype [Engine]Engine.Quaternion,
                                                                                                    valuetype [Engine]Engine.Quaternion)
    IL_008d:  ret
  } // end of method ComponentHumanModel::CalculateEyeRotation

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentHumanModel::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.DrawBlockEnvironmentData::.ctor()
    IL_0011:  stfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentCreatureModel::.ctor()
    IL_001c:  ret
  } // end of method ComponentHumanModel::.ctor

} // end of class Game.ComponentHumanModel