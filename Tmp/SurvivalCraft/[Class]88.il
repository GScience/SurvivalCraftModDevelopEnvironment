.class public auto ansi beforefieldinit Game.ComponentHumanModel
       extends Game.ComponentCreatureModel
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemModelsRenderer m_subsystemModelsRenderer
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.ComponentMiner m_componentMiner
  .field private class Game.ComponentRider m_componentRider
  .field private class Game.ComponentSleep m_componentSleep
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class Game.Random m_random
  .field private class Game.DrawBlockEnvironmentData m_drawBlockEnvironmentData
  .field private class [Engine]Engine.Graphics.ModelBone m_bodyBone
  .field private class [Engine]Engine.Graphics.ModelBone m_headBone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg1Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg2Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_hand1Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_hand2Bone
  .field private float32 m_sneakFactor
  .field private float32 m_lieDownFactorEye
  .field private float32 m_lieDownFactorModel
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
    // 代码大小       1778 (0x6f2)
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
    IL_0056:  brfalse.s  IL_0065

    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.ComponentSleep Game.ComponentHumanModel::m_componentSleep
    IL_005e:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0063:  brtrue.s   IL_007c

    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_006b:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0070:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0075:  ldc.r4     0.0
    IL_007a:  bgt.un.s   IL_00ba

    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactorEye
    IL_0083:  ldc.r4     1.
    IL_0088:  ldarg.1
    IL_0089:  mul
    IL_008a:  add
    IL_008b:  ldc.r4     1.
    IL_0090:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0095:  stfld      float32 Game.ComponentHumanModel::m_lieDownFactorEye
    IL_009a:  ldarg.0
    IL_009b:  ldarg.0
    IL_009c:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactorModel
    IL_00a1:  ldc.r4     3.
    IL_00a6:  ldarg.1
    IL_00a7:  mul
    IL_00a8:  add
    IL_00a9:  ldc.r4     1.
    IL_00ae:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00b3:  stfld      float32 Game.ComponentHumanModel::m_lieDownFactorModel
    IL_00b8:  br.s       IL_00f6

    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactorEye
    IL_00c1:  ldc.r4     1.
    IL_00c6:  ldarg.1
    IL_00c7:  mul
    IL_00c8:  sub
    IL_00c9:  ldc.r4     0.0
    IL_00ce:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00d3:  stfld      float32 Game.ComponentHumanModel::m_lieDownFactorEye
    IL_00d8:  ldarg.0
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactorModel
    IL_00df:  ldc.r4     3.
    IL_00e4:  ldarg.1
    IL_00e5:  mul
    IL_00e6:  sub
    IL_00e7:  ldc.r4     0.0
    IL_00ec:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00f1:  stfld      float32 Game.ComponentHumanModel::m_lieDownFactorModel
    IL_00f6:  ldc.i4.1
    IL_00f7:  stloc.0
    IL_00f8:  ldc.i4.1
    IL_00f9:  stloc.1
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_0100:  stloc.2
    IL_0101:  ldarg.0
    IL_0102:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0107:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_010c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::get_LadderValue()
    IL_0111:  stloc.s    V_7
    IL_0113:  ldloca.s   V_7
    IL_0115:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_011a:  brfalse.s  IL_0158

    IL_011c:  ldarg.0
    IL_011d:  ldarg.0
    IL_011e:  ldfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_0123:  ldc.r4     1.5
    IL_0128:  ldarg.0
    IL_0129:  ldfld      float32 Game.ComponentHumanModel::m_walkAnimationSpeed
    IL_012e:  mul
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0135:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_013a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_013f:  stloc.s    V_8
    IL_0141:  ldloca.s   V_8
    IL_0143:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0148:  mul
    IL_0149:  ldarg.1
    IL_014a:  mul
    IL_014b:  add
    IL_014c:  stfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_0151:  ldc.i4.0
    IL_0152:  stloc.1
    IL_0153:  br         IL_021e

    IL_0158:  ldarg.0
    IL_0159:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_015e:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0163:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_0168:  brtrue     IL_021e

    IL_016d:  ldarg.0
    IL_016e:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0173:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0178:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_017d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0182:  ldarg.0
    IL_0183:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0188:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_018d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0192:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0197:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_019c:  ldarg.0
    IL_019d:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_01a2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01a7:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_StandingOnVelocity()
    IL_01ac:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_01b7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01bc:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_StandingOnVelocity()
    IL_01c1:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01c6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01cb:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_01d0:  stloc.s    V_9
    IL_01d2:  ldloca.s   V_9
    IL_01d4:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_01d9:  stloc.s    V_10
    IL_01db:  ldloc.s    V_10
    IL_01dd:  ldc.r4     0.5
    IL_01e2:  ble.un.s   IL_021e

    IL_01e4:  ldarg.0
    IL_01e5:  ldarg.0
    IL_01e6:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01eb:  ldloc.s    V_10
    IL_01ed:  ldarg.1
    IL_01ee:  mul
    IL_01ef:  ldarg.0
    IL_01f0:  ldfld      float32 Game.ComponentHumanModel::m_walkAnimationSpeed
    IL_01f5:  mul
    IL_01f6:  add
    IL_01f7:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_01fc:  ldarg.0
    IL_01fd:  ldarg.0
    IL_01fe:  ldfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_0203:  ldc.r4     1.
    IL_0208:  ldarg.0
    IL_0209:  ldfld      float32 Game.ComponentHumanModel::m_walkAnimationSpeed
    IL_020e:  mul
    IL_020f:  ldloc.s    V_10
    IL_0211:  mul
    IL_0212:  ldarg.1
    IL_0213:  mul
    IL_0214:  add
    IL_0215:  stfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_021a:  ldc.i4.0
    IL_021b:  stloc.0
    IL_021c:  ldc.i4.0
    IL_021d:  stloc.1
    IL_021e:  ldloc.0
    IL_021f:  brfalse.s  IL_0286

    IL_0221:  ldarg.0
    IL_0222:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0227:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_022c:  stloc.s    V_11
    IL_022e:  ldarg.0
    IL_022f:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0234:  ldloc.s    V_11
    IL_0236:  beq.s      IL_0286

    IL_0238:  ldarg.0
    IL_0239:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_023e:  ldloc.s    V_11
    IL_0240:  sub
    IL_0241:  ldc.r4     0.5
    IL_0246:  ble.un.s   IL_026b

    IL_0248:  ldarg.0
    IL_0249:  ldarg.0
    IL_024a:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_024f:  ldc.r4     2.
    IL_0254:  ldarg.1
    IL_0255:  mul
    IL_0256:  add
    IL_0257:  ldloc.s    V_11
    IL_0259:  ldc.r4     1.
    IL_025e:  add
    IL_025f:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0264:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_0269:  br.s       IL_0286

    IL_026b:  ldarg.0
    IL_026c:  ldarg.0
    IL_026d:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0272:  ldc.r4     2.
    IL_0277:  ldarg.1
    IL_0278:  mul
    IL_0279:  sub
    IL_027a:  ldloc.s    V_11
    IL_027c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0281:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_0286:  ldloc.1
    IL_0287:  brfalse.s  IL_0294

    IL_0289:  ldarg.0
    IL_028a:  ldc.r4     0.0
    IL_028f:  stfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_0294:  ldc.r4     0.0
    IL_0299:  stloc.3
    IL_029a:  ldarg.0
    IL_029b:  ldfld      class Game.ComponentRider Game.ComponentHumanModel::m_componentRider
    IL_02a0:  brtrue.s   IL_02a5

    IL_02a2:  ldnull
    IL_02a3:  br.s       IL_02b0

    IL_02a5:  ldarg.0
    IL_02a6:  ldfld      class Game.ComponentRider Game.ComponentHumanModel::m_componentRider
    IL_02ab:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_02b0:  stloc.s    V_4
    IL_02b2:  ldloc.s    V_4
    IL_02b4:  brfalse.s  IL_02ec

    IL_02b6:  ldloc.s    V_4
    IL_02b8:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_02bd:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreatureModel>()
    IL_02c2:  stloc.s    V_12
    IL_02c4:  ldloc.s    V_12
    IL_02c6:  brfalse.s  IL_02dc

    IL_02c8:  ldarg.0
    IL_02c9:  ldloc.s    V_12
    IL_02cb:  callvirt   instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_02d0:  call       instance void Game.ComponentCreatureModel::set_Bob(float32)
    IL_02d5:  ldarg.0
    IL_02d6:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_02db:  stloc.3
    IL_02dc:  ldarg.0
    IL_02dd:  ldc.r4     0.0
    IL_02e2:  stfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_02e7:  br         IL_03d9

    IL_02ec:  ldc.r4     6.2831855
    IL_02f1:  ldarg.0
    IL_02f2:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_02f7:  mul
    IL_02f8:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_02fd:  stloc.s    V_13
    IL_02ff:  ldarg.0
    IL_0300:  ldfld      float32 Game.ComponentHumanModel::m_walkBobHeight
    IL_0305:  ldloc.s    V_13
    IL_0307:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_030c:  mul
    IL_030d:  stloc.3
    IL_030e:  ldc.r4     0.0
    IL_0313:  stloc.s    V_14
    IL_0315:  ldarg.0
    IL_0316:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_031b:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0320:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_0325:  stloc.s    V_15
    IL_0327:  ldloca.s   V_15
    IL_0329:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_032e:  brfalse.s  IL_0396

    IL_0330:  ldarg.0
    IL_0331:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0336:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_033b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_0340:  stloc.s    V_15
    IL_0342:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0347:  stloc.s    V_16
    IL_0349:  ldloca.s   V_15
    IL_034b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0350:  brtrue.s   IL_0355

    IL_0352:  ldc.i4.1
    IL_0353:  br.s       IL_036f

    IL_0355:  ldloca.s   V_15
    IL_0357:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_035c:  brtrue.s   IL_0361

    IL_035e:  ldc.i4.0
    IL_035f:  br.s       IL_036f

    IL_0361:  ldloca.s   V_15
    IL_0363:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::GetValueOrDefault()
    IL_0368:  ldloc.s    V_16
    IL_036a:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_036f:  brfalse.s  IL_0396

    IL_0371:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::UnitY
    IL_0376:  ldarg.0
    IL_0377:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_037c:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0381:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_0386:  stloc.s    V_15
    IL_0388:  ldloca.s   V_15
    IL_038a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_038f:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_0394:  stloc.s    V_14
    IL_0396:  ldarg.0
    IL_0397:  ldarg.0
    IL_0398:  ldfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_039d:  ldloc.s    V_14
    IL_039f:  ldarg.0
    IL_03a0:  ldfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_03a5:  sub
    IL_03a6:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_03ab:  ldc.r4     8.
    IL_03b0:  ldarg.0
    IL_03b1:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_03b6:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_03bb:  mul
    IL_03bc:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_03c1:  mul
    IL_03c2:  add
    IL_03c3:  stfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_03c8:  ldarg.0
    IL_03c9:  ldarg.0
    IL_03ca:  ldfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_03cf:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_03d4:  stfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_03d9:  ldc.r4     12.
    IL_03de:  ldarg.0
    IL_03df:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_03e4:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_03e9:  mul
    IL_03ea:  ldc.r4     1.
    IL_03ef:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_03f4:  stloc.s    V_5
    IL_03f6:  ldarg.0
    IL_03f7:  ldarg.0
    IL_03f8:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_03fd:  ldloc.s    V_5
    IL_03ff:  ldloc.3
    IL_0400:  ldarg.0
    IL_0401:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_0406:  sub
    IL_0407:  mul
    IL_0408:  add
    IL_0409:  call       instance void Game.ComponentCreatureModel::set_Bob(float32)
    IL_040e:  ldarg.0
    IL_040f:  ldc.i4.0
    IL_0410:  call       instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
    IL_0415:  ldarg.0
    IL_0416:  call       instance bool Game.ComponentCreatureModel::get_AttackOrder()
    IL_041b:  brfalse.s  IL_0493

    IL_041d:  ldarg.0
    IL_041e:  ldarg.0
    IL_041f:  ldfld      float32 Game.ComponentHumanModel::m_punchFactor
    IL_0424:  ldc.r4     4.
    IL_0429:  ldarg.1
    IL_042a:  mul
    IL_042b:  add
    IL_042c:  ldc.r4     1.
    IL_0431:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0436:  stfld      float32 Game.ComponentHumanModel::m_punchFactor
    IL_043b:  ldarg.0
    IL_043c:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_0441:  ldarg.0
    IL_0442:  ldarg.0
    IL_0443:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_0448:  ldarg.1
    IL_0449:  ldc.r4     2.
    IL_044e:  mul
    IL_044f:  add
    IL_0450:  ldc.r4     1.
    IL_0455:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_045a:  stfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_045f:  ldc.r4     0.5
    IL_0464:  bge.un     IL_0521

    IL_0469:  ldarg.0
    IL_046a:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_046f:  ldc.r4     0.5
    IL_0474:  blt.un     IL_0521

    IL_0479:  ldarg.0
    IL_047a:  ldc.i4.1
    IL_047b:  call       instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
    IL_0480:  ldarg.0
    IL_0481:  ldarg.0
    IL_0482:  ldfld      int32 Game.ComponentHumanModel::m_punchCounter
    IL_0487:  ldc.i4.1
    IL_0488:  add
    IL_0489:  stfld      int32 Game.ComponentHumanModel::m_punchCounter
    IL_048e:  br         IL_0521

    IL_0493:  ldarg.0
    IL_0494:  ldarg.0
    IL_0495:  ldfld      float32 Game.ComponentHumanModel::m_punchFactor
    IL_049a:  ldc.r4     4.
    IL_049f:  ldarg.1
    IL_04a0:  mul
    IL_04a1:  sub
    IL_04a2:  ldc.r4     0.0
    IL_04a7:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_04ac:  stfld      float32 Game.ComponentHumanModel::m_punchFactor
    IL_04b1:  ldarg.0
    IL_04b2:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_04b7:  ldc.r4     0.0
    IL_04bc:  beq.s      IL_0521

    IL_04be:  ldarg.0
    IL_04bf:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_04c4:  ldc.r4     0.5
    IL_04c9:  ble.un.s   IL_04f5

    IL_04cb:  ldarg.0
    IL_04cc:  ldarg.0
    IL_04cd:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_04d2:  ldarg.1
    IL_04d3:  ldc.r4     2.
    IL_04d8:  mul
    IL_04d9:  add
    IL_04da:  ldc.r4     1.
    IL_04df:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_04e4:  ldc.r4     1.
    IL_04e9:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_04ee:  stfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_04f3:  br.s       IL_0521

    IL_04f5:  ldarg.0
    IL_04f6:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_04fb:  ldc.r4     0.0
    IL_0500:  ble.un.s   IL_0521

    IL_0502:  ldarg.0
    IL_0503:  ldarg.0
    IL_0504:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_0509:  ldarg.1
    IL_050a:  ldarg.0
    IL_050b:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_0510:  mul
    IL_0511:  sub
    IL_0512:  ldc.r4     0.0
    IL_0517:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_051c:  stfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_0521:  ldarg.0
    IL_0522:  ldarg.0
    IL_0523:  call       instance bool Game.ComponentCreatureModel::get_RowLeftOrder()
    IL_0528:  stfld      bool Game.ComponentHumanModel::m_rowLeft
    IL_052d:  ldarg.0
    IL_052e:  ldarg.0
    IL_052f:  call       instance bool Game.ComponentCreatureModel::get_RowRightOrder()
    IL_0534:  stfld      bool Game.ComponentHumanModel::m_rowRight
    IL_0539:  ldarg.0
    IL_053a:  ldfld      bool Game.ComponentHumanModel::m_rowLeft
    IL_053f:  brtrue.s   IL_054c

    IL_0541:  ldarg.0
    IL_0542:  ldfld      bool Game.ComponentHumanModel::m_rowRight
    IL_0547:  brfalse    IL_05fc

    IL_054c:  ldloc.s    V_4
    IL_054e:  brfalse    IL_05fc

    IL_0553:  ldloc.s    V_4
    IL_0555:  callvirt   instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    IL_055a:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_055f:  ldc.r4     0.0
    IL_0564:  ble.un     IL_05fc

    IL_0569:  ldc.r8     1.1000000238418579
    IL_0572:  ldarg.0
    IL_0573:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0578:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_057d:  mul
    IL_057e:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
    IL_0583:  ldc.r8     1.1000000238418579
    IL_058c:  ldarg.0
    IL_058d:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0592:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0597:  ldarg.0
    IL_0598:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_059d:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_05a2:  conv.r8
    IL_05a3:  sub
    IL_05a4:  mul
    IL_05a5:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
    IL_05aa:  beq.s      IL_05fc

    IL_05ac:  ldarg.0
    IL_05ad:  ldfld      class Game.SubsystemAudio Game.ComponentHumanModel::m_subsystemAudio
    IL_05b2:  ldstr      "Audio/Rowing"
    IL_05b7:  ldarg.0
    IL_05b8:  ldfld      class Game.Random Game.ComponentHumanModel::m_random
    IL_05bd:  ldc.r4     0.40000001
    IL_05c2:  ldc.r4     0.60000002
    IL_05c7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05cc:  ldarg.0
    IL_05cd:  ldfld      class Game.Random Game.ComponentHumanModel::m_random
    IL_05d2:  ldc.r4     -0.30000001
    IL_05d7:  ldc.r4     0.2
    IL_05dc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05e1:  ldarg.0
    IL_05e2:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_05e7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_05ec:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_05f1:  ldc.r4     3.
    IL_05f6:  ldc.i4.1
    IL_05f7:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_05fc:  ldarg.0
    IL_05fd:  ldfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_0602:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0607:  stloc.s    V_6
    IL_0609:  ldarg.0
    IL_060a:  ldfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_060f:  ldloc.s    V_6
    IL_0611:  ble.un.s   IL_066c

    IL_0613:  ldloc.2
    IL_0614:  ldloc.s    V_6
    IL_0616:  bgt.un.s   IL_066c

    IL_0618:  ldarg.0
    IL_0619:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_061e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0623:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_0628:  brtrue.s   IL_064a

    IL_062a:  ldarg.0
    IL_062b:  ldfld      class Game.SubsystemNoise Game.ComponentHumanModel::m_subsystemNoise
    IL_0630:  ldarg.0
    IL_0631:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0636:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_063b:  ldc.r4     0.25
    IL_0640:  ldc.r4     8.
    IL_0645:  callvirt   instance void Game.SubsystemNoise::MakeNoise(class Game.ComponentBody,
                                                                      float32,
                                                                      float32)
    IL_064a:  ldarg.0
    IL_064b:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0650:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0655:  ldc.r4     1.
    IL_065a:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_065f:  brtrue.s   IL_066c

    IL_0661:  ldarg.0
    IL_0662:  ldc.r4     0.0
    IL_0667:  stfld      float32 Game.ComponentHumanModel::m_footstepsPhase
    IL_066c:  ldarg.0
    IL_066d:  ldarg.0
    IL_066e:  call       instance float32 Game.ComponentCreatureModel::get_AimHandAngleOrder()
    IL_0673:  stfld      float32 Game.ComponentHumanModel::m_aimHandAngle
    IL_0678:  ldarg.0
    IL_0679:  ldarg.0
    IL_067a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemOffset
    IL_067f:  ldarg.0
    IL_0680:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_InHandItemOffsetOrder()
    IL_0685:  ldc.r4     10.
    IL_068a:  ldarg.1
    IL_068b:  mul
    IL_068c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_0691:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemOffset
    IL_0696:  ldarg.0
    IL_0697:  ldarg.0
    IL_0698:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemRotation
    IL_069d:  ldarg.0
    IL_069e:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_InHandItemRotationOrder()
    IL_06a3:  ldc.r4     10.
    IL_06a8:  ldarg.1
    IL_06a9:  mul
    IL_06aa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_06af:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemRotation
    IL_06b4:  ldarg.0
    IL_06b5:  ldc.i4.0
    IL_06b6:  call       instance void Game.ComponentCreatureModel::set_AttackOrder(bool)
    IL_06bb:  ldarg.0
    IL_06bc:  ldc.i4.0
    IL_06bd:  call       instance void Game.ComponentCreatureModel::set_RowLeftOrder(bool)
    IL_06c2:  ldarg.0
    IL_06c3:  ldc.i4.0
    IL_06c4:  call       instance void Game.ComponentCreatureModel::set_RowRightOrder(bool)
    IL_06c9:  ldarg.0
    IL_06ca:  ldc.r4     0.0
    IL_06cf:  call       instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
    IL_06d4:  ldarg.0
    IL_06d5:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_06da:  call       instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_06df:  ldarg.0
    IL_06e0:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_06e5:  call       instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_06ea:  ldarg.0
    IL_06eb:  ldarg.1
    IL_06ec:  call       instance void Game.ComponentCreatureModel::Update(float32)
    IL_06f1:  ret
  } // end of method ComponentHumanModel::Update

  .method public hidebysig virtual instance void 
          Animate() cil managed
  {
    // 代码大小       2653 (0xa5d)
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
             float32 V_37,
             valuetype [Engine]Engine.Vector3 V_38,
             valuetype [Engine]Engine.Matrix V_39)
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
    IL_002b:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactorModel
    IL_0030:  ldc.r4     0.0
    IL_0035:  bne.un     IL_0849

    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.ComponentRider Game.ComponentHumanModel::m_componentRider
    IL_0040:  brtrue.s   IL_0045

    IL_0042:  ldnull
    IL_0043:  br.s       IL_0050

    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.ComponentRider Game.ComponentHumanModel::m_componentRider
    IL_004b:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_0050:  stloc.3
    IL_0051:  ldc.r4     6.2831855
    IL_0056:  ldarg.0
    IL_0057:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_005c:  mul
    IL_005d:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0062:  stloc.s    V_4
    IL_0064:  ldloca.s   V_0
    IL_0066:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_006b:  dup
    IL_006c:  ldind.r4
    IL_006d:  ldarg.0
    IL_006e:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_0073:  add
    IL_0074:  stind.r4
    IL_0075:  ldloca.s   V_1
    IL_0077:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_007c:  dup
    IL_007d:  ldind.r4
    IL_007e:  ldarg.0
    IL_007f:  ldfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_0084:  add
    IL_0085:  stind.r4
    IL_0086:  ldc.r8     0.75
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class Game.SubsystemGameInfo Game.ComponentCreatureModel::m_subsystemGameInfo
    IL_0095:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_009a:  mul
    IL_009b:  ldarg.0
    IL_009c:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_00a1:  ldc.i4     0xffff
    IL_00a6:  and
    IL_00a7:  conv.r8
    IL_00a8:  add
    IL_00a9:  ldc.r8     10000.
    IL_00b2:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00b7:  conv.r4
    IL_00b8:  stloc.s    V_5
    IL_00ba:  ldc.r4     -0.30000001
    IL_00bf:  ldc.r4     0.30000001
    IL_00c4:  ldc.r4     1.02
    IL_00c9:  ldloc.s    V_5
    IL_00cb:  mul
    IL_00cc:  ldc.r4     100.
    IL_00d1:  sub
    IL_00d2:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_00d7:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00e2:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_00e7:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_00ec:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00f1:  add
    IL_00f2:  ldc.r4     1.
    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00fd:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0102:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LastTurnOrder()
    IL_0107:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_010c:  mul
    IL_010d:  add
    IL_010e:  ldarg.0
    IL_010f:  ldfld      float32 Game.ComponentHumanModel::m_headingOffset
    IL_0114:  add
    IL_0115:  ldc.r4     80.
    IL_011a:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_011f:  neg
    IL_0120:  ldc.r4     80.
    IL_0125:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_012a:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_012f:  stloc.s    V_6
    IL_0131:  ldc.r4     -0.30000001
    IL_0136:  ldc.r4     0.30000001
    IL_013b:  ldc.r4     0.95999998
    IL_0140:  ldloc.s    V_5
    IL_0142:  mul
    IL_0143:  ldc.r4     200.
    IL_0148:  sub
    IL_0149:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_014e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0159:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_015e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0163:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0168:  add
    IL_0169:  ldc.r4     45.
    IL_016e:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0173:  neg
    IL_0174:  ldc.r4     45.
    IL_0179:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_017e:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0183:  stloc.s    V_7
    IL_0185:  ldc.r4     0.0
    IL_018a:  stloc.s    V_8
    IL_018c:  ldc.r4     0.0
    IL_0191:  stloc.s    V_9
    IL_0193:  ldc.r4     0.0
    IL_0198:  stloc.s    V_10
    IL_019a:  ldc.r4     0.0
    IL_019f:  stloc.s    V_11
    IL_01a1:  ldc.r4     0.0
    IL_01a6:  stloc.s    V_12
    IL_01a8:  ldc.r4     0.0
    IL_01ad:  stloc.s    V_13
    IL_01af:  ldc.r4     0.0
    IL_01b4:  stloc.s    V_14
    IL_01b6:  ldc.r4     0.0
    IL_01bb:  stloc.s    V_15
    IL_01bd:  ldloc.3
    IL_01be:  brfalse    IL_0270

    IL_01c3:  ldloc.3
    IL_01c4:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01c9:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Entity::get_ValuesDictionary()
    IL_01ce:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
    IL_01d3:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
    IL_01d8:  ldstr      "Boat"
    IL_01dd:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_01e2:  brfalse.s  IL_0241

    IL_01e4:  ldloca.s   V_0
    IL_01e6:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_01eb:  dup
    IL_01ec:  ldind.r4
    IL_01ed:  ldc.r4     0.2
    IL_01f2:  sub
    IL_01f3:  stind.r4
    IL_01f4:  ldloca.s   V_1
    IL_01f6:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_01fb:  dup
    IL_01fc:  ldind.r4
    IL_01fd:  ldc.r4     3.1415927
    IL_0202:  add
    IL_0203:  stind.r4
    IL_0204:  ldc.r4     0.40000001
    IL_0209:  stloc.s    V_12
    IL_020b:  ldc.r4     0.40000001
    IL_0210:  stloc.s    V_14
    IL_0212:  ldc.r4     0.2
    IL_0217:  stloc.s    V_13
    IL_0219:  ldc.r4     -0.2
    IL_021e:  stloc.s    V_15
    IL_0220:  ldc.r4     1.1
    IL_0225:  stloc.s    V_8
    IL_0227:  ldc.r4     1.1
    IL_022c:  stloc.s    V_10
    IL_022e:  ldc.r4     0.2
    IL_0233:  stloc.s    V_9
    IL_0235:  ldc.r4     -0.2
    IL_023a:  stloc.s    V_11
    IL_023c:  br         IL_037b

    IL_0241:  ldc.r4     0.5
    IL_0246:  stloc.s    V_12
    IL_0248:  ldc.r4     0.5
    IL_024d:  stloc.s    V_14
    IL_024f:  ldc.r4     0.15000001
    IL_0254:  stloc.s    V_13
    IL_0256:  ldc.r4     -0.15000001
    IL_025b:  stloc.s    V_15
    IL_025d:  ldc.r4     0.55000001
    IL_0262:  stloc.s    V_9
    IL_0264:  ldc.r4     -0.55000001
    IL_0269:  stloc.s    V_11
    IL_026b:  br         IL_037b

    IL_0270:  ldarg.0
    IL_0271:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0276:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_027b:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_0280:  brfalse    IL_034a

    IL_0285:  ldarg.0
    IL_0286:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_028b:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0290:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_0295:  stloc.s    V_31
    IL_0297:  ldloca.s   V_31
    IL_0299:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_029e:  brtrue.s   IL_02a7

    IL_02a0:  ldc.r4     0.0
    IL_02a5:  br.s       IL_02ef

    IL_02a7:  ldc.r4     0.1
    IL_02ac:  ldarg.0
    IL_02ad:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02b2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02b7:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_02bc:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02c1:  mul
    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02c8:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02cd:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_02d2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02d7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02dc:  stloc.s    V_32
    IL_02de:  ldloca.s   V_32
    IL_02e0:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_02e5:  ldc.r4     0.5
    IL_02ea:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02ef:  stloc.s    V_30
    IL_02f1:  ldc.r4     -0.1
    IL_02f6:  ldloc.s    V_30
    IL_02f8:  sub
    IL_02f9:  stloc.s    V_8
    IL_02fb:  ldloc.s    V_8
    IL_02fd:  stloc.s    V_10
    IL_02ff:  ldc.r4     0.0
    IL_0304:  ldc.r4     0.25
    IL_0309:  ldc.r4     1.0700001
    IL_030e:  ldloc.s    V_5
    IL_0310:  mul
    IL_0311:  ldc.r4     400.
    IL_0316:  add
    IL_0317:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_031c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0321:  stloc.s    V_9
    IL_0323:  ldc.r4     0.0
    IL_0328:  ldc.r4     0.25
    IL_032d:  ldc.r4     0.93000001
    IL_0332:  ldloc.s    V_5
    IL_0334:  mul
    IL_0335:  ldc.r4     500.
    IL_033a:  add
    IL_033b:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0340:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0345:  neg
    IL_0346:  stloc.s    V_11
    IL_0348:  br.s       IL_037b

    IL_034a:  ldarg.0
    IL_034b:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0350:  ldc.r4     0.0
    IL_0355:  beq.s      IL_037b

    IL_0357:  ldc.r4     -0.5
    IL_035c:  ldloc.s    V_4
    IL_035e:  mul
    IL_035f:  stloc.s    V_12
    IL_0361:  ldc.r4     0.5
    IL_0366:  ldloc.s    V_4
    IL_0368:  mul
    IL_0369:  stloc.s    V_14
    IL_036b:  ldarg.0
    IL_036c:  ldfld      float32 Game.ComponentHumanModel::m_walkLegsAngle
    IL_0371:  ldloc.s    V_4
    IL_0373:  mul
    IL_0374:  stloc.s    V_8
    IL_0376:  ldloc.s    V_8
    IL_0378:  neg
    IL_0379:  stloc.s    V_10
    IL_037b:  ldc.r4     0.0
    IL_0380:  stloc.s    V_16
    IL_0382:  ldarg.0
    IL_0383:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0388:  brfalse.s  IL_03d0

    IL_038a:  ldarg.0
    IL_038b:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0390:  callvirt   instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_0395:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_039a:  ldc.r4     3.1415927
    IL_039f:  mul
    IL_03a0:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_03a5:  stloc.s    V_33
    IL_03a7:  ldarg.0
    IL_03a8:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_03ad:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_03b2:  brfalse.s  IL_03c6

    IL_03b4:  ldc.r4     0.30000001
    IL_03b9:  ldc.r4     1.
    IL_03be:  ldloc.s    V_33
    IL_03c0:  mul
    IL_03c1:  add
    IL_03c2:  stloc.s    V_16
    IL_03c4:  br.s       IL_03d0

    IL_03c6:  ldc.r4     1.
    IL_03cb:  ldloc.s    V_33
    IL_03cd:  mul
    IL_03ce:  stloc.s    V_16
    IL_03d0:  ldarg.0
    IL_03d1:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_03d6:  ldc.r4     0.0
    IL_03db:  bne.un.s   IL_03e4

    IL_03dd:  ldc.r4     0.0
    IL_03e2:  br.s       IL_040b

    IL_03e4:  ldc.r4     90.
    IL_03e9:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_03ee:  neg
    IL_03ef:  ldc.r4     6.2831855
    IL_03f4:  ldarg.0
    IL_03f5:  ldfld      float32 Game.ComponentHumanModel::m_punchPhase
    IL_03fa:  ldc.r4     4.
    IL_03ff:  call       float32 [Engine]Engine.MathUtils::Sigmoid(float32,
                                                                   float32)
    IL_0404:  mul
    IL_0405:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_040a:  mul
    IL_040b:  stloc.s    V_17
    IL_040d:  ldarg.0
    IL_040e:  ldfld      int32 Game.ComponentHumanModel::m_punchCounter
    IL_0413:  ldc.i4.1
    IL_0414:  and
    IL_0415:  brfalse.s  IL_041e

    IL_0417:  ldc.r4     0.0
    IL_041c:  br.s       IL_0420

    IL_041e:  ldloc.s    V_17
    IL_0420:  stloc.s    V_18
    IL_0422:  ldarg.0
    IL_0423:  ldfld      int32 Game.ComponentHumanModel::m_punchCounter
    IL_0428:  ldc.i4.1
    IL_0429:  and
    IL_042a:  brtrue.s   IL_0433

    IL_042c:  ldc.r4     0.0
    IL_0431:  br.s       IL_0435

    IL_0433:  ldloc.s    V_17
    IL_0435:  stloc.s    V_19
    IL_0437:  ldc.r4     0.0
    IL_043c:  stloc.s    V_20
    IL_043e:  ldc.r4     0.0
    IL_0443:  stloc.s    V_21
    IL_0445:  ldc.r4     0.0
    IL_044a:  stloc.s    V_22
    IL_044c:  ldc.r4     0.0
    IL_0451:  stloc.s    V_23
    IL_0453:  ldarg.0
    IL_0454:  ldfld      bool Game.ComponentHumanModel::m_rowLeft
    IL_0459:  brtrue.s   IL_0463

    IL_045b:  ldarg.0
    IL_045c:  ldfld      bool Game.ComponentHumanModel::m_rowRight
    IL_0461:  brfalse.s  IL_04da

    IL_0463:  ldc.r4     0.60000002
    IL_0468:  ldc.r8     6.9115042686462402
    IL_0471:  ldarg.0
    IL_0472:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0477:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_047c:  mul
    IL_047d:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_0482:  conv.r4
    IL_0483:  mul
    IL_0484:  stloc.s    V_34
    IL_0486:  ldc.r4     0.2
    IL_048b:  ldc.r4     0.2
    IL_0490:  ldc.r8     6.9115042686462402
    IL_0499:  ldarg.0
    IL_049a:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_049f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_04a4:  ldc.r8     0.5
    IL_04ad:  add
    IL_04ae:  mul
    IL_04af:  call       float64 [Engine]Engine.MathUtils::Cos(float64)
    IL_04b4:  conv.r4
    IL_04b5:  mul
    IL_04b6:  add
    IL_04b7:  stloc.s    V_35
    IL_04b9:  ldarg.0
    IL_04ba:  ldfld      bool Game.ComponentHumanModel::m_rowLeft
    IL_04bf:  brfalse.s  IL_04c9

    IL_04c1:  ldloc.s    V_34
    IL_04c3:  stloc.s    V_20
    IL_04c5:  ldloc.s    V_35
    IL_04c7:  stloc.s    V_21
    IL_04c9:  ldarg.0
    IL_04ca:  ldfld      bool Game.ComponentHumanModel::m_rowRight
    IL_04cf:  brfalse.s  IL_04da

    IL_04d1:  ldloc.s    V_34
    IL_04d3:  stloc.s    V_22
    IL_04d5:  ldloc.s    V_35
    IL_04d7:  neg
    IL_04d8:  stloc.s    V_23
    IL_04da:  ldc.r4     0.0
    IL_04df:  stloc.s    V_24
    IL_04e1:  ldc.r4     0.0
    IL_04e6:  stloc.s    V_25
    IL_04e8:  ldc.r4     0.0
    IL_04ed:  stloc.s    V_26
    IL_04ef:  ldc.r4     0.0
    IL_04f4:  stloc.s    V_27
    IL_04f6:  ldarg.0
    IL_04f7:  ldfld      float32 Game.ComponentHumanModel::m_aimHandAngle
    IL_04fc:  ldc.r4     0.0
    IL_0501:  beq.s      IL_0526

    IL_0503:  ldc.r4     1.5
    IL_0508:  stloc.s    V_24
    IL_050a:  ldc.r4     -0.69999999
    IL_050f:  stloc.s    V_25
    IL_0511:  ldarg.0
    IL_0512:  ldfld      float32 Game.ComponentHumanModel::m_aimHandAngle
    IL_0517:  ldc.r4     1.
    IL_051c:  mul
    IL_051d:  stloc.s    V_26
    IL_051f:  ldc.r4     0.0
    IL_0524:  stloc.s    V_27
    IL_0526:  ldarg.0
    IL_0527:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_052c:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0531:  callvirt   instance bool Game.ComponentLocomotion::get_IsCreativeFlyEnabled()
    IL_0536:  brtrue.s   IL_053b

    IL_0538:  ldc.i4.1
    IL_0539:  br.s       IL_053c

    IL_053b:  ldc.i4.4
    IL_053c:  conv.r4
    IL_053d:  stloc.s    V_28
    IL_053f:  ldloc.s    V_12
    IL_0541:  ldc.r4     -0.1
    IL_0546:  ldc.r4     0.1
    IL_054b:  ldloc.s    V_5
    IL_054d:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0552:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0557:  ldloc.s    V_18
    IL_0559:  add
    IL_055a:  ldloc.s    V_20
    IL_055c:  add
    IL_055d:  ldloc.s    V_24
    IL_055f:  add
    IL_0560:  add
    IL_0561:  stloc.s    V_12
    IL_0563:  ldloc.s    V_13
    IL_0565:  ldc.r4     0.0
    IL_056a:  ldloc.s    V_28
    IL_056c:  ldc.r4     0.15000001
    IL_0571:  mul
    IL_0572:  ldc.r4     1.1
    IL_0577:  ldloc.s    V_5
    IL_0579:  mul
    IL_057a:  ldc.r4     100.
    IL_057f:  add
    IL_0580:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0585:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_058a:  ldloc.s    V_21
    IL_058c:  add
    IL_058d:  ldloc.s    V_25
    IL_058f:  add
    IL_0590:  add
    IL_0591:  stloc.s    V_13
    IL_0593:  ldloc.s    V_14
    IL_0595:  ldloc.s    V_16
    IL_0597:  ldc.r4     -0.1
    IL_059c:  ldc.r4     0.1
    IL_05a1:  ldc.r4     0.89999998
    IL_05a6:  ldloc.s    V_5
    IL_05a8:  mul
    IL_05a9:  ldc.r4     200.
    IL_05ae:  add
    IL_05af:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_05b4:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_05b9:  add
    IL_05ba:  ldloc.s    V_19
    IL_05bc:  add
    IL_05bd:  ldloc.s    V_22
    IL_05bf:  add
    IL_05c0:  ldloc.s    V_26
    IL_05c2:  add
    IL_05c3:  add
    IL_05c4:  stloc.s    V_14
    IL_05c6:  ldloc.s    V_15
    IL_05c8:  ldc.r4     0.0
    IL_05cd:  ldloc.s    V_28
    IL_05cf:  ldc.r4     0.15000001
    IL_05d4:  mul
    IL_05d5:  ldc.r4     1.05
    IL_05da:  ldloc.s    V_5
    IL_05dc:  mul
    IL_05dd:  ldc.r4     300.
    IL_05e2:  add
    IL_05e3:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_05e8:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_05ed:  neg
    IL_05ee:  ldloc.s    V_23
    IL_05f0:  add
    IL_05f1:  ldloc.s    V_27
    IL_05f3:  add
    IL_05f4:  add
    IL_05f5:  stloc.s    V_15
    IL_05f7:  ldc.r4     12.
    IL_05fc:  ldarg.0
    IL_05fd:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0602:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0607:  mul
    IL_0608:  ldc.r4     1.
    IL_060d:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0612:  stloc.s    V_29
    IL_0614:  ldarg.0
    IL_0615:  ldarg.0
    IL_0616:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_headAngles
    IL_061b:  ldloc.s    V_29
    IL_061d:  ldloc.s    V_6
    IL_061f:  ldloc.s    V_7
    IL_0621:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0626:  ldarg.0
    IL_0627:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_headAngles
    IL_062c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0631:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0636:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_063b:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_headAngles
    IL_0640:  ldarg.0
    IL_0641:  ldarg.0
    IL_0642:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_0647:  ldloc.s    V_29
    IL_0649:  ldloc.s    V_12
    IL_064b:  ldloc.s    V_13
    IL_064d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0652:  ldarg.0
    IL_0653:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_0658:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_065d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0662:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0667:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_066c:  ldarg.0
    IL_066d:  ldarg.0
    IL_066e:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_0673:  ldloc.s    V_29
    IL_0675:  ldloc.s    V_14
    IL_0677:  ldloc.s    V_15
    IL_0679:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_067e:  ldarg.0
    IL_067f:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_0684:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0689:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_068e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0693:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_0698:  ldarg.0
    IL_0699:  ldarg.0
    IL_069a:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_069f:  ldloc.s    V_29
    IL_06a1:  ldloc.s    V_8
    IL_06a3:  ldloc.s    V_9
    IL_06a5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06aa:  ldarg.0
    IL_06ab:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_06b0:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_06b5:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06ba:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06bf:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_06c4:  ldarg.0
    IL_06c5:  ldarg.0
    IL_06c6:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_06cb:  ldloc.s    V_29
    IL_06cd:  ldloc.s    V_10
    IL_06cf:  ldloc.s    V_11
    IL_06d1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06d6:  ldarg.0
    IL_06d7:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_06dc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_06e1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06e6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06eb:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_06f0:  ldarg.0
    IL_06f1:  ldarg.0
    IL_06f2:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_bodyBone
    IL_06f7:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_06fc:  ldloc.1
    IL_06fd:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0702:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0707:  ldloc.0
    IL_0708:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_070d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0712:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0717:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_071c:  ldarg.0
    IL_071d:  ldarg.0
    IL_071e:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_headBone
    IL_0723:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0728:  ldarg.0
    IL_0729:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_headAngles
    IL_072e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0733:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0738:  ldarg.0
    IL_0739:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_headAngles
    IL_073e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0743:  neg
    IL_0744:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0749:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_074e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0753:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0758:  ldarg.0
    IL_0759:  ldarg.0
    IL_075a:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand1Bone
    IL_075f:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0764:  ldarg.0
    IL_0765:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_076a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_076f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0774:  ldarg.0
    IL_0775:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_077a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_077f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0784:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0789:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_078e:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0793:  ldarg.0
    IL_0794:  ldarg.0
    IL_0795:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand2Bone
    IL_079a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_079f:  ldarg.0
    IL_07a0:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_07a5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_07aa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_07af:  ldarg.0
    IL_07b0:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_07b5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_07ba:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_07bf:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_07c4:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_07c9:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_07ce:  ldarg.0
    IL_07cf:  ldarg.0
    IL_07d0:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg1Bone
    IL_07d5:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_07da:  ldarg.0
    IL_07db:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_07e0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_07e5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_07ea:  ldarg.0
    IL_07eb:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_07f0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_07f5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_07fa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_07ff:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0804:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0809:  ldarg.0
    IL_080a:  ldarg.0
    IL_080b:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg2Bone
    IL_0810:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0815:  ldarg.0
    IL_0816:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_081b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0820:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0825:  ldarg.0
    IL_0826:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_082b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0830:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0835:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_083a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_083f:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0844:  br         IL_0a56

    IL_0849:  ldarg.0
    IL_084a:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_084f:  ldarg.0
    IL_0850:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactorModel
    IL_0855:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_085a:  stloc.s    V_36
    IL_085c:  ldc.r4     1.
    IL_0861:  ldloc.s    V_36
    IL_0863:  sub
    IL_0864:  stloc.s    V_37
    IL_0866:  ldloc.0
    IL_0867:  ldloc.s    V_36
    IL_0869:  ldc.r4     0.5
    IL_086e:  mul
    IL_086f:  ldarg.0
    IL_0870:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0875:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_087a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_087f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0884:  mul
    IL_0885:  ldarg.0
    IL_0886:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_088b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0890:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0895:  stloc.s    V_39
    IL_0897:  ldloca.s   V_39
    IL_0899:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_089e:  ldc.r4     1.
    IL_08a3:  ldc.r4     0.0
    IL_08a8:  ldc.r4     1.
    IL_08ad:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_08b2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_08bc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08c1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08c6:  ldloc.s    V_36
    IL_08c8:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_08cd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08d2:  ldarg.0
    IL_08d3:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_08d8:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_08dd:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_08e2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_08e7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_08ec:  ldc.r4     0.1
    IL_08f1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_08f6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08fb:  stloc.s    V_38
    IL_08fd:  ldarg.0
    IL_08fe:  ldarg.0
    IL_08ff:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_bodyBone
    IL_0904:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0909:  ldloc.1
    IL_090a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_090f:  ldc.r4     1.5707964
    IL_0914:  ldloc.s    V_36
    IL_0916:  mul
    IL_0917:  ldc.r4     0.0
    IL_091c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_0921:  ldloc.s    V_38
    IL_0923:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0928:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_092d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0932:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0937:  ldarg.0
    IL_0938:  ldarg.0
    IL_0939:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_headBone
    IL_093e:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0943:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0948:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_094d:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0952:  ldarg.0
    IL_0953:  ldarg.0
    IL_0954:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand1Bone
    IL_0959:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_095e:  ldarg.0
    IL_095f:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_0964:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0969:  ldloc.s    V_37
    IL_096b:  mul
    IL_096c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0971:  ldarg.0
    IL_0972:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles1
    IL_0977:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_097c:  ldloc.s    V_37
    IL_097e:  mul
    IL_097f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0984:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0989:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_098e:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0993:  ldarg.0
    IL_0994:  ldarg.0
    IL_0995:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand2Bone
    IL_099a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_099f:  ldarg.0
    IL_09a0:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_09a5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_09aa:  ldloc.s    V_37
    IL_09ac:  mul
    IL_09ad:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_09b2:  ldarg.0
    IL_09b3:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_handAngles2
    IL_09b8:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_09bd:  ldloc.s    V_37
    IL_09bf:  mul
    IL_09c0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_09c5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_09ca:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_09cf:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_09d4:  ldarg.0
    IL_09d5:  ldarg.0
    IL_09d6:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg1Bone
    IL_09db:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_09e0:  ldarg.0
    IL_09e1:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_09e6:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_09eb:  ldloc.s    V_37
    IL_09ed:  mul
    IL_09ee:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_09f3:  ldarg.0
    IL_09f4:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles1
    IL_09f9:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_09fe:  ldloc.s    V_37
    IL_0a00:  mul
    IL_0a01:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0a06:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0a0b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0a10:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0a15:  ldarg.0
    IL_0a16:  ldarg.0
    IL_0a17:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_leg2Bone
    IL_0a1c:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0a21:  ldarg.0
    IL_0a22:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_0a27:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0a2c:  ldloc.s    V_37
    IL_0a2e:  mul
    IL_0a2f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0a34:  ldarg.0
    IL_0a35:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentHumanModel::m_legAngles2
    IL_0a3a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0a3f:  ldloc.s    V_37
    IL_0a41:  mul
    IL_0a42:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0a47:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0a4c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0a51:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0a56:  ldarg.0
    IL_0a57:  call       instance void Game.ComponentCreatureModel::Animate()
    IL_0a5c:  ret
  } // end of method ComponentHumanModel::Animate

  .method public hidebysig virtual instance void 
          DrawExtras(class Game.Camera camera) cil managed
  {
    // 代码大小       991 (0x3df)
    .maxstack  7
    .locals init (int32 V_0,
             class Game.Block V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Matrix V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Color V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             class [Engine]Engine.Media.BitmapFont V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_000b:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0010:  ldc.r4     0.0
    IL_0015:  ble.un     IL_0284

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0020:  brfalse    IL_0284

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_002b:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0030:  brfalse    IL_0284

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_003b:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0040:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0045:  stloc.0
    IL_0046:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_004b:  ldloc.0
    IL_004c:  ldelem.ref
    IL_004d:  stloc.1
    IL_004e:  ldarg.0
    IL_004f:  call       instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransformsForCamera()
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentHumanModel::m_hand2Bone
    IL_005a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_005f:  ldelem     [Engine]Engine.Matrix
    IL_0064:  stloc.2
    IL_0065:  ldloc.2
    IL_0066:  ldarg.1
    IL_0067:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_InvertedViewMatrix()
    IL_006c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0071:  stloc.2
    IL_0072:  ldloca.s   V_2
    IL_0074:  ldloca.s   V_2
    IL_0076:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_007b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0080:  call       instance void [Engine]Engine.Matrix::set_Right(valuetype [Engine]Engine.Vector3)
    IL_0085:  ldloca.s   V_2
    IL_0087:  ldloca.s   V_2
    IL_0089:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_008e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0093:  call       instance void [Engine]Engine.Matrix::set_Up(valuetype [Engine]Engine.Vector3)
    IL_0098:  ldloca.s   V_2
    IL_009a:  ldloca.s   V_2
    IL_009c:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00a1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00a6:  call       instance void [Engine]Engine.Matrix::set_Forward(valuetype [Engine]Engine.Vector3)
    IL_00ab:  ldloc.1
    IL_00ac:  ldflda     valuetype [Engine]Engine.Vector3 Game.Block::InHandRotation
    IL_00b1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00b6:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00bb:  ldarg.0
    IL_00bc:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemRotation
    IL_00c1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00c6:  add
    IL_00c7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00cc:  ldloc.1
    IL_00cd:  ldflda     valuetype [Engine]Engine.Vector3 Game.Block::InHandRotation
    IL_00d2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00d7:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00dc:  ldarg.0
    IL_00dd:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemRotation
    IL_00e2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00e7:  add
    IL_00e8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_00ed:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f2:  ldloc.1
    IL_00f3:  ldflda     valuetype [Engine]Engine.Vector3 Game.Block::InHandRotation
    IL_00f8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00fd:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0102:  ldarg.0
    IL_0103:  ldflda     valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemRotation
    IL_0108:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_010d:  add
    IL_010e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0113:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0118:  ldloc.1
    IL_0119:  ldfld      valuetype [Engine]Engine.Vector3 Game.Block::InHandOffset
    IL_011e:  ldarg.0
    IL_011f:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentHumanModel::m_inHandItemOffset
    IL_0124:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0129:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_012e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0133:  ldc.r4     5.0000001e-002
    IL_0138:  ldc.r4     5.0000001e-002
    IL_013d:  ldc.r4     -0.56
    IL_0142:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_014d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0152:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0157:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_015c:  ldc.r4     1.77
    IL_0161:  div
    IL_0162:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0167:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_016c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0171:  ldloc.2
    IL_0172:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0177:  stloc.3
    IL_0178:  ldloca.s   V_3
    IL_017a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_017f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0184:  call       int32 Game.Terrain::ToCell(float32)
    IL_0189:  stloc.s    V_4
    IL_018b:  ldloca.s   V_3
    IL_018d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0192:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0197:  call       int32 Game.Terrain::ToCell(float32)
    IL_019c:  stloc.s    V_5
    IL_019e:  ldloca.s   V_3
    IL_01a0:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_01a5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01aa:  call       int32 Game.Terrain::ToCell(float32)
    IL_01af:  stloc.s    V_6
    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_01b7:  ldloc.3
    IL_01b8:  stfld      valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
    IL_01bd:  ldarg.0
    IL_01be:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_01c3:  ldarg.0
    IL_01c4:  ldfld      class Game.SubsystemTerrain Game.ComponentHumanModel::m_subsystemTerrain
    IL_01c9:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01ce:  ldloc.s    V_4
    IL_01d0:  ldloc.s    V_6
    IL_01d2:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_01d7:  stfld      int32 Game.DrawBlockEnvironmentData::Humidity
    IL_01dc:  ldarg.0
    IL_01dd:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_01e2:  ldarg.0
    IL_01e3:  ldfld      class Game.SubsystemTerrain Game.ComponentHumanModel::m_subsystemTerrain
    IL_01e8:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01ed:  ldloc.s    V_4
    IL_01ef:  ldloc.s    V_6
    IL_01f1:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_01f6:  stfld      int32 Game.DrawBlockEnvironmentData::Temperature
    IL_01fb:  ldarg.0
    IL_01fc:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_0201:  ldarg.0
    IL_0202:  ldfld      class Game.SubsystemTerrain Game.ComponentHumanModel::m_subsystemTerrain
    IL_0207:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_020c:  ldloc.s    V_4
    IL_020e:  ldloc.s    V_5
    IL_0210:  ldloc.s    V_6
    IL_0212:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0217:  stfld      int32 Game.DrawBlockEnvironmentData::Light
    IL_021c:  ldarg.0
    IL_021d:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_0222:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0227:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_022c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0231:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0236:  ldarg.0
    IL_0237:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_023c:  ldarg.0
    IL_023d:  ldfld      class Game.SubsystemTerrain Game.ComponentHumanModel::m_subsystemTerrain
    IL_0242:  stfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0247:  ldloc.3
    IL_0248:  ldarg.1
    IL_0249:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_024e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0253:  stloc.s    V_7
    IL_0255:  ldloc.1
    IL_0256:  ldarg.0
    IL_0257:  ldfld      class Game.SubsystemModelsRenderer Game.ComponentHumanModel::m_subsystemModelsRenderer
    IL_025c:  callvirt   instance class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::get_PrimitivesRenderer()
    IL_0261:  ldarg.0
    IL_0262:  ldfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0267:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_026c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0271:  ldloc.1
    IL_0272:  ldfld      float32 Game.Block::InHandScale
    IL_0277:  ldloca.s   V_7
    IL_0279:  ldarg.0
    IL_027a:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentHumanModel::m_drawBlockEnvironmentData
    IL_027f:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                             int32,
                                                             valuetype [Engine]Engine.Color,
                                                             float32,
                                                             valuetype [Engine]Engine.Matrix&,
                                                             class Game.DrawBlockEnvironmentData)
    IL_0284:  ldarg.0
    IL_0285:  ldfld      class Game.ComponentPlayer Game.ComponentHumanModel::m_componentPlayer
    IL_028a:  brfalse    IL_03d7

    IL_028f:  ldarg.1
    IL_0290:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0295:  callvirt   instance class Game.PlayerData Game.View::get_PlayerData()
    IL_029a:  ldarg.0
    IL_029b:  ldfld      class Game.ComponentPlayer Game.ComponentHumanModel::m_componentPlayer
    IL_02a0:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_02a5:  beq        IL_03d7

    IL_02aa:  ldarg.0
    IL_02ab:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02b0:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02b5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_02ba:  ldc.r4     1.02
    IL_02bf:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_02c4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02c9:  ldarg.0
    IL_02ca:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02cf:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02d4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_02d9:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_02e3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02e8:  ldarg.1
    IL_02e9:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_02ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02f3:  stloc.s    V_8
    IL_02f5:  ldloc.s    V_8
    IL_02f7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02fc:  ldc.r4     0.0
    IL_0301:  bge.un     IL_03d7

    IL_0306:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_030b:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0310:  ldloca.s   V_8
    IL_0312:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0317:  ldc.r4     4.
    IL_031c:  sub
    IL_031d:  ldc.r4     3.
    IL_0322:  div
    IL_0323:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0328:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_032d:  stloc.s    V_9
    IL_032f:  ldloca.s   V_9
    IL_0331:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0336:  ldc.i4.8
    IL_0337:  ble        IL_03d7

    IL_033c:  ldc.r4     4.9999999e-003
    IL_0341:  ldarg.1
    IL_0342:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0347:  ldarg.1
    IL_0348:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewUp()
    IL_034d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0352:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0357:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_035c:  ldarg.1
    IL_035d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_0362:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0367:  stloc.s    V_10
    IL_0369:  ldc.r4     -4.9999999e-003
    IL_036e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0373:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0378:  ldarg.1
    IL_0379:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_037e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0383:  stloc.s    V_11
    IL_0385:  ldstr      "Fonts/Pericles32"
    IL_038a:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_038f:  stloc.s    V_12
    IL_0391:  ldarg.0
    IL_0392:  ldfld      class Game.SubsystemModelsRenderer Game.ComponentHumanModel::m_subsystemModelsRenderer
    IL_0397:  callvirt   instance class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::get_PrimitivesRenderer()
    IL_039c:  ldloc.s    V_12
    IL_039e:  ldc.i4.1
    IL_039f:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_03a4:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNoneScissor
    IL_03a9:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_03ae:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_03b3:  callvirt   instance class [Engine]Engine.Graphics.FontBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_03b8:  ldarg.0
    IL_03b9:  ldfld      class Game.ComponentPlayer Game.ComponentHumanModel::m_componentPlayer
    IL_03be:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_03c3:  callvirt   instance string Game.PlayerData::get_Name()
    IL_03c8:  ldloc.s    V_8
    IL_03ca:  ldloc.s    V_10
    IL_03cc:  ldloc.s    V_11
    IL_03ce:  ldloc.s    V_9
    IL_03d0:  ldc.i4.s   9
    IL_03d2:  callvirt   instance void [Engine]Engine.Graphics.FontBatch3D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor)
    IL_03d7:  ldarg.0
    IL_03d8:  ldarg.1
    IL_03d9:  call       instance void Game.ComponentModel::DrawExtras(class Game.Camera)
    IL_03de:  ret
  } // end of method ComponentHumanModel::DrawExtras

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       200 (0xc8)
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
    IL_0046:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_004b:  stfld      class Game.SubsystemAudio Game.ComponentHumanModel::m_subsystemAudio
    IL_0050:  ldarg.0
    IL_0051:  ldarg.0
    IL_0052:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0057:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMiner>()
    IL_005c:  stfld      class Game.ComponentMiner Game.ComponentHumanModel::m_componentMiner
    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0068:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>()
    IL_006d:  stfld      class Game.ComponentRider Game.ComponentHumanModel::m_componentRider
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0079:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSleep>()
    IL_007e:  stfld      class Game.ComponentSleep Game.ComponentHumanModel::m_componentSleep
    IL_0083:  ldarg.0
    IL_0084:  ldarg.0
    IL_0085:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_008a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_008f:  stfld      class Game.ComponentPlayer Game.ComponentHumanModel::m_componentPlayer
    IL_0094:  ldarg.0
    IL_0095:  ldarg.1
    IL_0096:  ldstr      "WalkAnimationSpeed"
    IL_009b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00a0:  stfld      float32 Game.ComponentHumanModel::m_walkAnimationSpeed
    IL_00a5:  ldarg.0
    IL_00a6:  ldarg.1
    IL_00a7:  ldstr      "WalkBobHeight"
    IL_00ac:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00b1:  stfld      float32 Game.ComponentHumanModel::m_walkBobHeight
    IL_00b6:  ldarg.0
    IL_00b7:  ldarg.1
    IL_00b8:  ldstr      "WalkLegsAngle"
    IL_00bd:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00c2:  stfld      float32 Game.ComponentHumanModel::m_walkLegsAngle
    IL_00c7:  ret
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
    // 代码大小       184 (0xb8)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Matrix V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactorEye
    IL_0006:  ldc.r4     1.
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Sigmoid(float32,
                                                                   float32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      float32 Game.ComponentHumanModel::m_sneakFactor
    IL_0017:  ldc.r4     4.
    IL_001c:  call       float32 [Engine]Engine.MathUtils::Sigmoid(float32,
                                                                   float32)
    IL_0021:  stloc.1
    IL_0022:  ldc.r4     0.875
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_002d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0032:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0037:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_003c:  mul
    IL_003d:  stloc.2
    IL_003e:  ldloc.2
    IL_003f:  ldc.r4     0.44999999
    IL_0044:  ldloc.2
    IL_0045:  mul
    IL_0046:  ldloc.1
    IL_0047:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_004c:  ldc.r4     0.2
    IL_0051:  ldloc.2
    IL_0052:  mul
    IL_0053:  ldloc.0
    IL_0054:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0059:  stloc.3
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0060:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0065:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_006a:  stloc.s    V_4
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0072:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0077:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_007c:  ldloca.s   V_4
    IL_007e:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0083:  ldloc.3
    IL_0084:  ldc.r4     2.
    IL_0089:  ldarg.0
    IL_008a:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_008f:  mul
    IL_0090:  add
    IL_0091:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0096:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_009b:  ldloca.s   V_4
    IL_009d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00a2:  ldc.r4     -0.2
    IL_00a7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00ac:  ldloc.1
    IL_00ad:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00b2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b7:  ret
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
    IL_0007:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactorEye
    IL_000c:  ldc.r4     0.0
    IL_0011:  beq.s      IL_0047

    IL_0013:  ldloc.0
    IL_0014:  ldc.r4     80.
    IL_0019:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      float32 Game.ComponentHumanModel::m_lieDownFactorEye
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