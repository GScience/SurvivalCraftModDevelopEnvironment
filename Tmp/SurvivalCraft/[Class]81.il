.class public auto ansi beforefieldinit Game.ComponentFourLeggedModel
       extends Game.ComponentCreatureModel
{
  .class auto ansi sealed nested private Gait
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.ComponentFourLeggedModel/Gait Walk = int32(0x00000000)
    .field public static literal valuetype Game.ComponentFourLeggedModel/Gait Trot = int32(0x00000001)
    .field public static literal valuetype Game.ComponentFourLeggedModel/Gait Canter = int32(0x00000002)
  } // end of class Gait

  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemSoundMaterials m_subsystemSoundMaterials
  .field private class [Engine]Engine.Graphics.ModelBone m_bodyBone
  .field private class [Engine]Engine.Graphics.ModelBone m_neckBone
  .field private class [Engine]Engine.Graphics.ModelBone m_headBone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg1Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg2Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg3Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg4Bone
  .field private class Game.Random m_random
  .field private float32 m_walkAnimationSpeed
  .field private float32 m_canterLegsAngleFactor
  .field private float32 m_walkFrontLegsAngle
  .field private float32 m_walkHindLegsAngle
  .field private float32 m_walkBobHeight
  .field private bool m_moveLegWhenFeeding
  .field private bool m_canCanter
  .field private bool m_canTrot
  .field private bool m_useCanterSound
  .field private valuetype Game.ComponentFourLeggedModel/Gait m_gait
  .field private float32 m_feedFactor
  .field private float32 m_buttFactor
  .field private float32 m_buttPhase
  .field private float32 m_footstepsPhase
  .field private float32 m_legAngle1
  .field private float32 m_legAngle2
  .field private float32 m_legAngle3
  .field private float32 m_legAngle4
  .field private float32 m_headAngleY
  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       1110 (0x456)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Matrix V_4,
             float32 V_5,
             string V_6,
             float32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_000d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0012:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_001d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0022:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0027:  stloc.s    V_4
    IL_0029:  ldloca.s   V_4
    IL_002b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0030:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0035:  stloc.1
    IL_0036:  ldarg.0
    IL_0037:  ldfld      bool Game.ComponentFourLeggedModel::m_canCanter
    IL_003c:  brfalse.s  IL_009d

    IL_003e:  ldloc.1
    IL_003f:  ldc.r4     0.69999999
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_004a:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_004f:  callvirt   instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_0054:  mul
    IL_0055:  ble.un.s   IL_009d

    IL_0057:  ldarg.0
    IL_0058:  ldc.i4.2
    IL_0059:  stfld      valuetype Game.ComponentFourLeggedModel/Gait Game.ComponentFourLeggedModel::m_gait
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0065:  ldloc.1
    IL_0066:  ldarg.1
    IL_0067:  mul
    IL_0068:  ldc.r4     0.69999999
    IL_006d:  mul
    IL_006e:  ldarg.0
    IL_006f:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkAnimationSpeed
    IL_0074:  mul
    IL_0075:  add
    IL_0076:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_007b:  ldarg.0
    IL_007c:  ldarg.0
    IL_007d:  ldfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_0082:  ldc.r4     0.69999999
    IL_0087:  ldarg.0
    IL_0088:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkAnimationSpeed
    IL_008d:  mul
    IL_008e:  ldloc.1
    IL_008f:  mul
    IL_0090:  ldarg.1
    IL_0091:  mul
    IL_0092:  add
    IL_0093:  stfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_0098:  br         IL_0162

    IL_009d:  ldarg.0
    IL_009e:  ldfld      bool Game.ComponentFourLeggedModel::m_canTrot
    IL_00a3:  brfalse.s  IL_00fb

    IL_00a5:  ldloc.1
    IL_00a6:  ldc.r4     0.5
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00b1:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_00b6:  callvirt   instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_00bb:  mul
    IL_00bc:  ble.un.s   IL_00fb

    IL_00be:  ldarg.0
    IL_00bf:  ldc.i4.1
    IL_00c0:  stfld      valuetype Game.ComponentFourLeggedModel/Gait Game.ComponentFourLeggedModel::m_gait
    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.0
    IL_00c7:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_00cc:  ldloc.1
    IL_00cd:  ldarg.1
    IL_00ce:  mul
    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkAnimationSpeed
    IL_00d5:  mul
    IL_00d6:  add
    IL_00d7:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_00dc:  ldarg.0
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_00e3:  ldc.r4     1.25
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkAnimationSpeed
    IL_00ee:  mul
    IL_00ef:  ldloc.1
    IL_00f0:  mul
    IL_00f1:  ldarg.1
    IL_00f2:  mul
    IL_00f3:  add
    IL_00f4:  stfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_00f9:  br.s       IL_0162

    IL_00fb:  ldloc.1
    IL_00fc:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0101:  ldc.r4     0.2
    IL_0106:  ble.un.s   IL_0145

    IL_0108:  ldarg.0
    IL_0109:  ldc.i4.0
    IL_010a:  stfld      valuetype Game.ComponentFourLeggedModel/Gait Game.ComponentFourLeggedModel::m_gait
    IL_010f:  ldarg.0
    IL_0110:  ldarg.0
    IL_0111:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0116:  ldloc.1
    IL_0117:  ldarg.1
    IL_0118:  mul
    IL_0119:  ldarg.0
    IL_011a:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkAnimationSpeed
    IL_011f:  mul
    IL_0120:  add
    IL_0121:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_0126:  ldarg.0
    IL_0127:  ldarg.0
    IL_0128:  ldfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_012d:  ldc.r4     1.25
    IL_0132:  ldarg.0
    IL_0133:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkAnimationSpeed
    IL_0138:  mul
    IL_0139:  ldloc.1
    IL_013a:  mul
    IL_013b:  ldarg.1
    IL_013c:  mul
    IL_013d:  add
    IL_013e:  stfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_0143:  br.s       IL_0162

    IL_0145:  ldarg.0
    IL_0146:  ldc.i4.0
    IL_0147:  stfld      valuetype Game.ComponentFourLeggedModel/Gait Game.ComponentFourLeggedModel::m_gait
    IL_014c:  ldarg.0
    IL_014d:  ldc.r4     0.0
    IL_0152:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_0157:  ldarg.0
    IL_0158:  ldc.r4     0.0
    IL_015d:  stfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_0162:  ldc.r4     0.0
    IL_0167:  stloc.2
    IL_0168:  ldarg.0
    IL_0169:  ldfld      valuetype Game.ComponentFourLeggedModel/Gait Game.ComponentFourLeggedModel::m_gait
    IL_016e:  ldc.i4.2
    IL_016f:  bne.un.s   IL_0193

    IL_0171:  ldarg.0
    IL_0172:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkBobHeight
    IL_0177:  neg
    IL_0178:  ldc.r4     1.5
    IL_017d:  mul
    IL_017e:  ldc.r4     6.2831855
    IL_0183:  ldarg.0
    IL_0184:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0189:  mul
    IL_018a:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_018f:  mul
    IL_0190:  stloc.2
    IL_0191:  br.s       IL_01e9

    IL_0193:  ldarg.0
    IL_0194:  ldfld      valuetype Game.ComponentFourLeggedModel/Gait Game.ComponentFourLeggedModel::m_gait
    IL_0199:  ldc.i4.1
    IL_019a:  bne.un.s   IL_01c2

    IL_019c:  ldarg.0
    IL_019d:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkBobHeight
    IL_01a2:  ldc.r4     1.5
    IL_01a7:  mul
    IL_01a8:  ldc.r4     6.2831855
    IL_01ad:  ldarg.0
    IL_01ae:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01b3:  mul
    IL_01b4:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01b9:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_01be:  mul
    IL_01bf:  stloc.2
    IL_01c0:  br.s       IL_01e9

    IL_01c2:  ldarg.0
    IL_01c3:  ldfld      valuetype Game.ComponentFourLeggedModel/Gait Game.ComponentFourLeggedModel::m_gait
    IL_01c8:  brtrue.s   IL_01e9

    IL_01ca:  ldarg.0
    IL_01cb:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkBobHeight
    IL_01d0:  neg
    IL_01d1:  ldc.r4     6.2831855
    IL_01d6:  ldarg.0
    IL_01d7:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01dc:  mul
    IL_01dd:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01e2:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_01e7:  mul
    IL_01e8:  stloc.2
    IL_01e9:  ldc.r4     12.
    IL_01ee:  ldarg.0
    IL_01ef:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_01f4:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_01f9:  mul
    IL_01fa:  ldc.r4     1.
    IL_01ff:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0204:  stloc.3
    IL_0205:  ldarg.0
    IL_0206:  ldarg.0
    IL_0207:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_020c:  ldloc.3
    IL_020d:  ldloc.2
    IL_020e:  ldarg.0
    IL_020f:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_0214:  sub
    IL_0215:  mul
    IL_0216:  add
    IL_0217:  call       instance void Game.ComponentCreatureModel::set_Bob(float32)
    IL_021c:  ldarg.0
    IL_021d:  ldfld      valuetype Game.ComponentFourLeggedModel/Gait Game.ComponentFourLeggedModel::m_gait
    IL_0222:  ldc.i4.2
    IL_0223:  bne.un     IL_02c4

    IL_0228:  ldarg.0
    IL_0229:  ldfld      bool Game.ComponentFourLeggedModel::m_useCanterSound
    IL_022e:  brfalse    IL_02c4

    IL_0233:  ldarg.0
    IL_0234:  ldfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_0239:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_023e:  stloc.s    V_5
    IL_0240:  ldarg.0
    IL_0241:  ldfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_0246:  ldloc.s    V_5
    IL_0248:  ble.un     IL_02f6

    IL_024d:  ldloc.0
    IL_024e:  ldloc.s    V_5
    IL_0250:  bgt.un     IL_02f6

    IL_0255:  ldarg.0
    IL_0256:  ldfld      class Game.SubsystemSoundMaterials Game.ComponentFourLeggedModel::m_subsystemSoundMaterials
    IL_025b:  ldarg.0
    IL_025c:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0261:  callvirt   instance string Game.SubsystemSoundMaterials::GetFootstepSoundMaterialName(class Game.ComponentCreature)
    IL_0266:  stloc.s    V_6
    IL_0268:  ldloc.s    V_6
    IL_026a:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_026f:  brtrue     IL_02f6

    IL_0274:  ldloc.s    V_6
    IL_0276:  ldstr      "Water"
    IL_027b:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0280:  brfalse.s  IL_02f6

    IL_0282:  ldarg.0
    IL_0283:  ldfld      class Game.SubsystemAudio Game.ComponentFourLeggedModel::m_subsystemAudio
    IL_0288:  ldstr      "Audio/Footsteps/CanterDirt"
    IL_028d:  ldc.r4     0.75
    IL_0292:  ldarg.0
    IL_0293:  ldfld      class Game.Random Game.ComponentFourLeggedModel::m_random
    IL_0298:  ldc.r4     -0.25
    IL_029d:  ldc.r4     0.0
    IL_02a2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02a7:  ldarg.0
    IL_02a8:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02ad:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02b2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_02b7:  ldc.r4     3.
    IL_02bc:  ldc.i4.1
    IL_02bd:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_02c2:  br.s       IL_02f6

    IL_02c4:  ldarg.0
    IL_02c5:  ldfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_02ca:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_02cf:  stloc.s    V_7
    IL_02d1:  ldarg.0
    IL_02d2:  ldfld      float32 Game.ComponentFourLeggedModel::m_footstepsPhase
    IL_02d7:  ldloc.s    V_7
    IL_02d9:  ble.un.s   IL_02f6

    IL_02db:  ldloc.0
    IL_02dc:  ldloc.s    V_7
    IL_02de:  bgt.un.s   IL_02f6

    IL_02e0:  ldarg.0
    IL_02e1:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02e6:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_02eb:  ldc.r4     1.
    IL_02f0:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_02f5:  pop
    IL_02f6:  ldarg.0
    IL_02f7:  call       instance bool Game.ComponentCreatureModel::get_FeedOrder()
    IL_02fc:  brfalse.s  IL_031e

    IL_02fe:  ldarg.0
    IL_02ff:  ldarg.0
    IL_0300:  ldfld      float32 Game.ComponentFourLeggedModel::m_feedFactor
    IL_0305:  ldc.r4     2.
    IL_030a:  ldarg.1
    IL_030b:  mul
    IL_030c:  add
    IL_030d:  ldc.r4     1.
    IL_0312:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0317:  stfld      float32 Game.ComponentFourLeggedModel::m_feedFactor
    IL_031c:  br.s       IL_033c

    IL_031e:  ldarg.0
    IL_031f:  ldarg.0
    IL_0320:  ldfld      float32 Game.ComponentFourLeggedModel::m_feedFactor
    IL_0325:  ldc.r4     2.
    IL_032a:  ldarg.1
    IL_032b:  mul
    IL_032c:  sub
    IL_032d:  ldc.r4     0.0
    IL_0332:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0337:  stfld      float32 Game.ComponentFourLeggedModel::m_feedFactor
    IL_033c:  ldarg.0
    IL_033d:  ldc.i4.0
    IL_033e:  call       instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
    IL_0343:  ldarg.0
    IL_0344:  call       instance bool Game.ComponentCreatureModel::get_AttackOrder()
    IL_0349:  brfalse.s  IL_03b3

    IL_034b:  ldarg.0
    IL_034c:  ldarg.0
    IL_034d:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttFactor
    IL_0352:  ldc.r4     4.
    IL_0357:  ldarg.1
    IL_0358:  mul
    IL_0359:  add
    IL_035a:  ldc.r4     1.
    IL_035f:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0364:  stfld      float32 Game.ComponentFourLeggedModel::m_buttFactor
    IL_0369:  ldarg.0
    IL_036a:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_036f:  ldarg.0
    IL_0370:  ldarg.0
    IL_0371:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_0376:  ldarg.1
    IL_0377:  ldc.r4     2.
    IL_037c:  mul
    IL_037d:  add
    IL_037e:  ldc.r4     1.
    IL_0383:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0388:  stfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_038d:  ldc.r4     0.5
    IL_0392:  bge.un     IL_0440

    IL_0397:  ldarg.0
    IL_0398:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_039d:  ldc.r4     0.5
    IL_03a2:  blt.un     IL_0440

    IL_03a7:  ldarg.0
    IL_03a8:  ldc.i4.1
    IL_03a9:  call       instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
    IL_03ae:  br         IL_0440

    IL_03b3:  ldarg.0
    IL_03b4:  ldarg.0
    IL_03b5:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttFactor
    IL_03ba:  ldc.r4     4.
    IL_03bf:  ldarg.1
    IL_03c0:  mul
    IL_03c1:  sub
    IL_03c2:  ldc.r4     0.0
    IL_03c7:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_03cc:  stfld      float32 Game.ComponentFourLeggedModel::m_buttFactor
    IL_03d1:  ldarg.0
    IL_03d2:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_03d7:  ldc.r4     0.0
    IL_03dc:  beq.s      IL_0440

    IL_03de:  ldarg.0
    IL_03df:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_03e4:  ldc.r4     0.5
    IL_03e9:  ble.un.s   IL_0415

    IL_03eb:  ldarg.0
    IL_03ec:  ldarg.0
    IL_03ed:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_03f2:  ldarg.1
    IL_03f3:  ldc.r4     2.
    IL_03f8:  mul
    IL_03f9:  add
    IL_03fa:  ldc.r4     1.
    IL_03ff:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0404:  ldc.r4     1.
    IL_0409:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_040e:  stfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_0413:  br.s       IL_0440

    IL_0415:  ldarg.0
    IL_0416:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_041b:  ldc.r4     0.0
    IL_0420:  ble.un.s   IL_0440

    IL_0422:  ldarg.0
    IL_0423:  ldarg.0
    IL_0424:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_0429:  ldarg.1
    IL_042a:  ldc.r4     2.
    IL_042f:  mul
    IL_0430:  sub
    IL_0431:  ldc.r4     0.0
    IL_0436:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_043b:  stfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_0440:  ldarg.0
    IL_0441:  ldc.i4.0
    IL_0442:  call       instance void Game.ComponentCreatureModel::set_FeedOrder(bool)
    IL_0447:  ldarg.0
    IL_0448:  ldc.i4.0
    IL_0449:  call       instance void Game.ComponentCreatureModel::set_AttackOrder(bool)
    IL_044e:  ldarg.0
    IL_044f:  ldarg.1
    IL_0450:  call       instance void Game.ComponentCreatureModel::Update(float32)
    IL_0455:  ret
  } // end of method ComponentFourLeggedModel::Update

  .method public hidebysig virtual instance void 
          PrepareForDrawing(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       2184 (0x888)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Quaternion V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             valuetype [System.Runtime]System.Nullable`1<int32> V_11,
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
             valuetype [Engine]Engine.Vector2 V_25,
             float32 V_26,
             float32 V_27,
             valuetype [Engine]Engine.Vector2 V_28,
             float32 V_29,
             float32 V_30,
             float32 V_31,
             valuetype [Engine]Engine.Matrix V_32)
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
    IL_003f:  ble.un     IL_06a1

    IL_0044:  ldc.r4     0.0
    IL_0049:  stloc.3
    IL_004a:  ldc.r4     0.0
    IL_004f:  stloc.s    V_4
    IL_0051:  ldc.r4     0.0
    IL_0056:  stloc.s    V_5
    IL_0058:  ldc.r4     0.0
    IL_005d:  stloc.s    V_6
    IL_005f:  ldc.r4     0.0
    IL_0064:  stloc.s    V_7
    IL_0066:  ldarg.0
    IL_0067:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_006c:  ldc.r4     0.0
    IL_0071:  beq        IL_02f0

    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_007c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0081:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0086:  stloc.s    V_11
    IL_0088:  ldloca.s   V_11
    IL_008a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_008f:  brtrue.s   IL_00ab

    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0097:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_009c:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_00a1:  ldc.r4     0.0
    IL_00a6:  ble.un     IL_02f0

    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      valuetype Game.ComponentFourLeggedModel/Gait Game.ComponentFourLeggedModel::m_gait
    IL_00b1:  ldc.i4.2
    IL_00b2:  bne.un     IL_0185

    IL_00b7:  ldc.r4     6.2831855
    IL_00bc:  ldarg.0
    IL_00bd:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_00c2:  ldc.r4     0.0
    IL_00c7:  add
    IL_00c8:  mul
    IL_00c9:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00ce:  stloc.s    V_12
    IL_00d0:  ldc.r4     6.2831855
    IL_00d5:  ldarg.0
    IL_00d6:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_00db:  ldc.r4     0.25
    IL_00e0:  add
    IL_00e1:  mul
    IL_00e2:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00e7:  stloc.s    V_13
    IL_00e9:  ldc.r4     6.2831855
    IL_00ee:  ldarg.0
    IL_00ef:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_00f4:  ldc.r4     0.15000001
    IL_00f9:  add
    IL_00fa:  mul
    IL_00fb:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0100:  stloc.s    V_14
    IL_0102:  ldc.r4     6.2831855
    IL_0107:  ldarg.0
    IL_0108:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_010d:  ldc.r4     0.40000001
    IL_0112:  add
    IL_0113:  mul
    IL_0114:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0119:  stloc.s    V_15
    IL_011b:  ldarg.0
    IL_011c:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkFrontLegsAngle
    IL_0121:  ldarg.0
    IL_0122:  ldfld      float32 Game.ComponentFourLeggedModel::m_canterLegsAngleFactor
    IL_0127:  mul
    IL_0128:  ldloc.s    V_12
    IL_012a:  mul
    IL_012b:  stloc.3
    IL_012c:  ldarg.0
    IL_012d:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkFrontLegsAngle
    IL_0132:  ldarg.0
    IL_0133:  ldfld      float32 Game.ComponentFourLeggedModel::m_canterLegsAngleFactor
    IL_0138:  mul
    IL_0139:  ldloc.s    V_13
    IL_013b:  mul
    IL_013c:  stloc.s    V_4
    IL_013e:  ldarg.0
    IL_013f:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkHindLegsAngle
    IL_0144:  ldarg.0
    IL_0145:  ldfld      float32 Game.ComponentFourLeggedModel::m_canterLegsAngleFactor
    IL_014a:  mul
    IL_014b:  ldloc.s    V_14
    IL_014d:  mul
    IL_014e:  stloc.s    V_5
    IL_0150:  ldarg.0
    IL_0151:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkHindLegsAngle
    IL_0156:  ldarg.0
    IL_0157:  ldfld      float32 Game.ComponentFourLeggedModel::m_canterLegsAngleFactor
    IL_015c:  mul
    IL_015d:  ldloc.s    V_15
    IL_015f:  mul
    IL_0160:  stloc.s    V_6
    IL_0162:  ldc.r4     8.
    IL_0167:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_016c:  ldc.r4     6.2831855
    IL_0171:  ldarg.0
    IL_0172:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0177:  mul
    IL_0178:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_017d:  mul
    IL_017e:  stloc.s    V_7
    IL_0180:  br         IL_02f0

    IL_0185:  ldarg.0
    IL_0186:  ldfld      valuetype Game.ComponentFourLeggedModel/Gait Game.ComponentFourLeggedModel::m_gait
    IL_018b:  ldc.i4.1
    IL_018c:  bne.un     IL_0243

    IL_0191:  ldc.r4     6.2831855
    IL_0196:  ldarg.0
    IL_0197:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_019c:  ldc.r4     0.0
    IL_01a1:  add
    IL_01a2:  mul
    IL_01a3:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01a8:  stloc.s    V_16
    IL_01aa:  ldc.r4     6.2831855
    IL_01af:  ldarg.0
    IL_01b0:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01b5:  ldc.r4     0.5
    IL_01ba:  add
    IL_01bb:  mul
    IL_01bc:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01c1:  stloc.s    V_17
    IL_01c3:  ldc.r4     6.2831855
    IL_01c8:  ldarg.0
    IL_01c9:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01ce:  ldc.r4     0.5
    IL_01d3:  add
    IL_01d4:  mul
    IL_01d5:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01da:  stloc.s    V_18
    IL_01dc:  ldc.r4     6.2831855
    IL_01e1:  ldarg.0
    IL_01e2:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01e7:  ldc.r4     0.0
    IL_01ec:  add
    IL_01ed:  mul
    IL_01ee:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01f3:  stloc.s    V_19
    IL_01f5:  ldarg.0
    IL_01f6:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkFrontLegsAngle
    IL_01fb:  ldloc.s    V_16
    IL_01fd:  mul
    IL_01fe:  stloc.3
    IL_01ff:  ldarg.0
    IL_0200:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkFrontLegsAngle
    IL_0205:  ldloc.s    V_17
    IL_0207:  mul
    IL_0208:  stloc.s    V_4
    IL_020a:  ldarg.0
    IL_020b:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkHindLegsAngle
    IL_0210:  ldloc.s    V_18
    IL_0212:  mul
    IL_0213:  stloc.s    V_5
    IL_0215:  ldarg.0
    IL_0216:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkHindLegsAngle
    IL_021b:  ldloc.s    V_19
    IL_021d:  mul
    IL_021e:  stloc.s    V_6
    IL_0220:  ldc.r4     3.
    IL_0225:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_022a:  ldc.r4     12.566371
    IL_022f:  ldarg.0
    IL_0230:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0235:  mul
    IL_0236:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_023b:  mul
    IL_023c:  stloc.s    V_7
    IL_023e:  br         IL_02f0

    IL_0243:  ldc.r4     6.2831855
    IL_0248:  ldarg.0
    IL_0249:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_024e:  ldc.r4     0.0
    IL_0253:  add
    IL_0254:  mul
    IL_0255:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_025a:  stloc.s    V_20
    IL_025c:  ldc.r4     6.2831855
    IL_0261:  ldarg.0
    IL_0262:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0267:  ldc.r4     0.5
    IL_026c:  add
    IL_026d:  mul
    IL_026e:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0273:  stloc.s    V_21
    IL_0275:  ldc.r4     6.2831855
    IL_027a:  ldarg.0
    IL_027b:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0280:  ldc.r4     0.25
    IL_0285:  add
    IL_0286:  mul
    IL_0287:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_028c:  stloc.s    V_22
    IL_028e:  ldc.r4     6.2831855
    IL_0293:  ldarg.0
    IL_0294:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0299:  ldc.r4     0.75
    IL_029e:  add
    IL_029f:  mul
    IL_02a0:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_02a5:  stloc.s    V_23
    IL_02a7:  ldarg.0
    IL_02a8:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkFrontLegsAngle
    IL_02ad:  ldloc.s    V_20
    IL_02af:  mul
    IL_02b0:  stloc.3
    IL_02b1:  ldarg.0
    IL_02b2:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkFrontLegsAngle
    IL_02b7:  ldloc.s    V_21
    IL_02b9:  mul
    IL_02ba:  stloc.s    V_4
    IL_02bc:  ldarg.0
    IL_02bd:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkHindLegsAngle
    IL_02c2:  ldloc.s    V_22
    IL_02c4:  mul
    IL_02c5:  stloc.s    V_5
    IL_02c7:  ldarg.0
    IL_02c8:  ldfld      float32 Game.ComponentFourLeggedModel::m_walkHindLegsAngle
    IL_02cd:  ldloc.s    V_23
    IL_02cf:  mul
    IL_02d0:  stloc.s    V_6
    IL_02d2:  ldc.r4     3.
    IL_02d7:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_02dc:  ldc.r4     12.566371
    IL_02e1:  ldarg.0
    IL_02e2:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_02e7:  mul
    IL_02e8:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_02ed:  mul
    IL_02ee:  stloc.s    V_7
    IL_02f0:  ldc.r4     12.
    IL_02f5:  ldarg.0
    IL_02f6:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_02fb:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0300:  mul
    IL_0301:  ldc.r4     1.
    IL_0306:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_030b:  stloc.s    V_8
    IL_030d:  ldarg.0
    IL_030e:  ldarg.0
    IL_030f:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle1
    IL_0314:  ldloc.s    V_8
    IL_0316:  ldloc.3
    IL_0317:  ldarg.0
    IL_0318:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle1
    IL_031d:  sub
    IL_031e:  mul
    IL_031f:  add
    IL_0320:  stfld      float32 Game.ComponentFourLeggedModel::m_legAngle1
    IL_0325:  ldarg.0
    IL_0326:  ldarg.0
    IL_0327:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle2
    IL_032c:  ldloc.s    V_8
    IL_032e:  ldloc.s    V_4
    IL_0330:  ldarg.0
    IL_0331:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle2
    IL_0336:  sub
    IL_0337:  mul
    IL_0338:  add
    IL_0339:  stfld      float32 Game.ComponentFourLeggedModel::m_legAngle2
    IL_033e:  ldarg.0
    IL_033f:  ldarg.0
    IL_0340:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle3
    IL_0345:  ldloc.s    V_8
    IL_0347:  ldloc.s    V_5
    IL_0349:  ldarg.0
    IL_034a:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle3
    IL_034f:  sub
    IL_0350:  mul
    IL_0351:  add
    IL_0352:  stfld      float32 Game.ComponentFourLeggedModel::m_legAngle3
    IL_0357:  ldarg.0
    IL_0358:  ldarg.0
    IL_0359:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle4
    IL_035e:  ldloc.s    V_8
    IL_0360:  ldloc.s    V_6
    IL_0362:  ldarg.0
    IL_0363:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle4
    IL_0368:  sub
    IL_0369:  mul
    IL_036a:  add
    IL_036b:  stfld      float32 Game.ComponentFourLeggedModel::m_legAngle4
    IL_0370:  ldarg.0
    IL_0371:  ldarg.0
    IL_0372:  ldfld      float32 Game.ComponentFourLeggedModel::m_headAngleY
    IL_0377:  ldloc.s    V_8
    IL_0379:  ldloc.s    V_7
    IL_037b:  ldarg.0
    IL_037c:  ldfld      float32 Game.ComponentFourLeggedModel::m_headAngleY
    IL_0381:  sub
    IL_0382:  mul
    IL_0383:  add
    IL_0384:  stfld      float32 Game.ComponentFourLeggedModel::m_headAngleY
    IL_0389:  ldarg.0
    IL_038a:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_038f:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0394:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0399:  stloc.s    V_9
    IL_039b:  ldloca.s   V_9
    IL_039d:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_03a2:  dup
    IL_03a3:  ldind.r4
    IL_03a4:  ldarg.0
    IL_03a5:  ldfld      float32 Game.ComponentFourLeggedModel::m_headAngleY
    IL_03aa:  add
    IL_03ab:  stind.r4
    IL_03ac:  ldloca.s   V_9
    IL_03ae:  ldloc.s    V_9
    IL_03b0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03b5:  ldc.r4     65.
    IL_03ba:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_03bf:  neg
    IL_03c0:  ldc.r4     65.
    IL_03c5:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_03ca:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_03cf:  stfld      float32 [Engine]Engine.Vector2::X
    IL_03d4:  ldloca.s   V_9
    IL_03d6:  ldloc.s    V_9
    IL_03d8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_03dd:  ldc.r4     55.
    IL_03e2:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_03e7:  neg
    IL_03e8:  ldc.r4     55.
    IL_03ed:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_03f2:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_03f7:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_03fc:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0401:  stloc.s    V_10
    IL_0403:  ldarg.0
    IL_0404:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_neckBone
    IL_0409:  brfalse.s  IL_0427

    IL_040b:  ldc.r4     0.60000002
    IL_0410:  ldloc.s    V_9
    IL_0412:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0417:  stloc.s    V_10
    IL_0419:  ldc.r4     0.40000001
    IL_041e:  ldloc.s    V_9
    IL_0420:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0425:  stloc.s    V_9
    IL_0427:  ldarg.0
    IL_0428:  ldfld      float32 Game.ComponentFourLeggedModel::m_feedFactor
    IL_042d:  ldc.r4     0.0
    IL_0432:  ble.un     IL_050f

    IL_0437:  ldc.r4     25.
    IL_043c:  ldc.r4     45.
    IL_0441:  ldarg.0
    IL_0442:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0447:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_044c:  conv.r4
    IL_044d:  ldc.r4     3.
    IL_0452:  ldc.i4.2
    IL_0453:  ldc.r4     2.
    IL_0458:  ldc.r4     0.75
    IL_045d:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0462:  mul
    IL_0463:  add
    IL_0464:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0469:  neg
    IL_046a:  stloc.s    V_24
    IL_046c:  ldloca.s   V_25
    IL_046e:  ldc.r4     0.0
    IL_0473:  ldloc.s    V_24
    IL_0475:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_047a:  ldloc.s    V_9
    IL_047c:  ldloc.s    V_25
    IL_047e:  ldarg.0
    IL_047f:  ldfld      float32 Game.ComponentFourLeggedModel::m_feedFactor
    IL_0484:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Lerp(valuetype [Engine]Engine.Vector2,
                                                                                       valuetype [Engine]Engine.Vector2,
                                                                                       float32)
    IL_0489:  stloc.s    V_9
    IL_048b:  ldarg.0
    IL_048c:  ldfld      bool Game.ComponentFourLeggedModel::m_moveLegWhenFeeding
    IL_0491:  brfalse.s  IL_050f

    IL_0493:  ldc.r4     20.
    IL_0498:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_049d:  ldarg.0
    IL_049e:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_04a3:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_04a8:  conv.r4
    IL_04a9:  ldc.r4     1.
    IL_04ae:  ldc.i4.1
    IL_04af:  ldc.r4     1.
    IL_04b4:  ldc.r4     1.
    IL_04b9:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_04be:  ldc.r4     0.5
    IL_04c3:  sub
    IL_04c4:  ldc.r4     0.33000001
    IL_04c9:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_04ce:  ldc.r4     0.5
    IL_04d3:  div
    IL_04d4:  ldc.r4     25.
    IL_04d9:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_04de:  mul
    IL_04df:  ldc.r8     17.
    IL_04e8:  ldarg.0
    IL_04e9:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_04ee:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_04f3:  mul
    IL_04f4:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_04f9:  conv.r4
    IL_04fa:  mul
    IL_04fb:  add
    IL_04fc:  stloc.s    V_26
    IL_04fe:  ldloc.s    V_4
    IL_0500:  ldloc.s    V_26
    IL_0502:  ldarg.0
    IL_0503:  ldfld      float32 Game.ComponentFourLeggedModel::m_feedFactor
    IL_0508:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_050d:  stloc.s    V_4
    IL_050f:  ldarg.0
    IL_0510:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttFactor
    IL_0515:  ldc.r4     0.0
    IL_051a:  beq.s      IL_0564

    IL_051c:  ldc.r4     40.
    IL_0521:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0526:  neg
    IL_0527:  ldc.r4     6.2831855
    IL_052c:  ldarg.0
    IL_052d:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttPhase
    IL_0532:  ldc.r4     4.
    IL_0537:  call       float32 [Engine]Engine.MathUtils::Sigmoid(float32,
                                                                   float32)
    IL_053c:  mul
    IL_053d:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0542:  mul
    IL_0543:  stloc.s    V_27
    IL_0545:  ldloca.s   V_28
    IL_0547:  ldc.r4     0.0
    IL_054c:  ldloc.s    V_27
    IL_054e:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0553:  ldloc.s    V_9
    IL_0555:  ldloc.s    V_28
    IL_0557:  ldarg.0
    IL_0558:  ldfld      float32 Game.ComponentFourLeggedModel::m_buttFactor
    IL_055d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Lerp(valuetype [Engine]Engine.Vector2,
                                                                                       valuetype [Engine]Engine.Vector2,
                                                                                       float32)
    IL_0562:  stloc.s    V_9
    IL_0564:  ldarg.0
    IL_0565:  ldarg.0
    IL_0566:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_bodyBone
    IL_056b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0570:  ldloc.1
    IL_0571:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0576:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_057b:  ldloc.0
    IL_057c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0581:  ldloc.0
    IL_0582:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0587:  ldarg.0
    IL_0588:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_058d:  add
    IL_058e:  ldloc.0
    IL_058f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0594:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0599:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_059e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_05a3:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_05a8:  ldarg.0
    IL_05a9:  ldarg.0
    IL_05aa:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_headBone
    IL_05af:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_05b4:  ldloc.s    V_9
    IL_05b6:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_05bb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_05c0:  ldloc.s    V_9
    IL_05c2:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_05c7:  neg
    IL_05c8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_05cd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_05d2:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_05d7:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_05dc:  ldarg.0
    IL_05dd:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_neckBone
    IL_05e2:  brfalse.s  IL_0618

    IL_05e4:  ldarg.0
    IL_05e5:  ldarg.0
    IL_05e6:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_neckBone
    IL_05eb:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_05f0:  ldloc.s    V_10
    IL_05f2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_05f7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_05fc:  ldloc.s    V_10
    IL_05fe:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0603:  neg
    IL_0604:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0609:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_060e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0613:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0618:  ldarg.0
    IL_0619:  ldarg.0
    IL_061a:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg1Bone
    IL_061f:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0624:  ldarg.0
    IL_0625:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle1
    IL_062a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_062f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0634:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0639:  ldarg.0
    IL_063a:  ldarg.0
    IL_063b:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg2Bone
    IL_0640:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0645:  ldarg.0
    IL_0646:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle2
    IL_064b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0650:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0655:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_065a:  ldarg.0
    IL_065b:  ldarg.0
    IL_065c:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg3Bone
    IL_0661:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0666:  ldarg.0
    IL_0667:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle3
    IL_066c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0671:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0676:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_067b:  ldarg.0
    IL_067c:  ldarg.0
    IL_067d:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg4Bone
    IL_0682:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0687:  ldarg.0
    IL_0688:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle4
    IL_068d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0692:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0697:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_069c:  br         IL_0880

    IL_06a1:  ldc.r4     1.
    IL_06a6:  ldarg.0
    IL_06a7:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_06ac:  sub
    IL_06ad:  stloc.s    V_29
    IL_06af:  ldarg.0
    IL_06b0:  ldfld      class Game.ComponentFrame Game.ComponentModel::m_componentFrame
    IL_06b5:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_06ba:  stloc.s    V_32
    IL_06bc:  ldloca.s   V_32
    IL_06be:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_06c3:  ldarg.0
    IL_06c4:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_DeathCauseOffset()
    IL_06c9:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_06ce:  ldc.r4     0.0
    IL_06d3:  bgt.s      IL_06d8

    IL_06d5:  ldc.i4.m1
    IL_06d6:  br.s       IL_06d9

    IL_06d8:  ldc.i4.1
    IL_06d9:  conv.r4
    IL_06da:  stloc.s    V_30
    IL_06dc:  ldarg.0
    IL_06dd:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_06e2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_06e7:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_06ec:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_06f1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_06f6:  ldarg.0
    IL_06f7:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_06fc:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0701:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0706:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_070b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0710:  sub
    IL_0711:  stloc.s    V_31
    IL_0713:  ldarg.0
    IL_0714:  ldarg.0
    IL_0715:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_bodyBone
    IL_071a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_071f:  ldc.r4     -0.5
    IL_0724:  ldloc.s    V_31
    IL_0726:  mul
    IL_0727:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_072c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0731:  ldarg.0
    IL_0732:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_0737:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_073c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0741:  ldloc.1
    IL_0742:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0747:  ldc.r4     0.0
    IL_074c:  ldc.r4     1.5707964
    IL_0751:  ldarg.0
    IL_0752:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_0757:  mul
    IL_0758:  ldloc.s    V_30
    IL_075a:  mul
    IL_075b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_0760:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0765:  ldc.r4     0.2
    IL_076a:  ldloc.s    V_31
    IL_076c:  mul
    IL_076d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0772:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0777:  ldarg.0
    IL_0778:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_077d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0782:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0787:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_078c:  ldloc.0
    IL_078d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0792:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0797:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_079c:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_07a1:  ldarg.0
    IL_07a2:  ldarg.0
    IL_07a3:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_headBone
    IL_07a8:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_07ad:  ldc.r4     50.
    IL_07b2:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_07b7:  ldarg.0
    IL_07b8:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_07bd:  mul
    IL_07be:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_07c3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_07c8:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_07cd:  ldarg.0
    IL_07ce:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_neckBone
    IL_07d3:  brfalse.s  IL_07f0

    IL_07d5:  ldarg.0
    IL_07d6:  ldarg.0
    IL_07d7:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_neckBone
    IL_07dc:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_07e1:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_07e6:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_07eb:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_07f0:  ldarg.0
    IL_07f1:  ldarg.0
    IL_07f2:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg1Bone
    IL_07f7:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_07fc:  ldarg.0
    IL_07fd:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle1
    IL_0802:  ldloc.s    V_29
    IL_0804:  mul
    IL_0805:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_080a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_080f:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0814:  ldarg.0
    IL_0815:  ldarg.0
    IL_0816:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg2Bone
    IL_081b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0820:  ldarg.0
    IL_0821:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle2
    IL_0826:  ldloc.s    V_29
    IL_0828:  mul
    IL_0829:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_082e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0833:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0838:  ldarg.0
    IL_0839:  ldarg.0
    IL_083a:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg3Bone
    IL_083f:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0844:  ldarg.0
    IL_0845:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle3
    IL_084a:  ldloc.s    V_29
    IL_084c:  mul
    IL_084d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0852:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0857:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_085c:  ldarg.0
    IL_085d:  ldarg.0
    IL_085e:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg4Bone
    IL_0863:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0868:  ldarg.0
    IL_0869:  ldfld      float32 Game.ComponentFourLeggedModel::m_legAngle4
    IL_086e:  ldloc.s    V_29
    IL_0870:  mul
    IL_0871:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0876:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_087b:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0880:  ldarg.0
    IL_0881:  ldarg.1
    IL_0882:  call       instance void Game.ComponentCreatureModel::PrepareForDrawing(class Game.SubsystemDrawing)
    IL_0887:  ret
  } // end of method ComponentFourLeggedModel::PrepareForDrawing

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       198 (0xc6)
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
    IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0015:  stfld      class Game.SubsystemAudio Game.ComponentFourLeggedModel::m_subsystemAudio
    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0021:  ldc.i4.1
    IL_0022:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSoundMaterials>(bool)
    IL_0027:  stfld      class Game.SubsystemSoundMaterials Game.ComponentFourLeggedModel::m_subsystemSoundMaterials
    IL_002c:  ldarg.0
    IL_002d:  ldarg.1
    IL_002e:  ldstr      "WalkAnimationSpeed"
    IL_0033:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0038:  stfld      float32 Game.ComponentFourLeggedModel::m_walkAnimationSpeed
    IL_003d:  ldarg.0
    IL_003e:  ldarg.1
    IL_003f:  ldstr      "WalkFrontLegsAngle"
    IL_0044:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0049:  stfld      float32 Game.ComponentFourLeggedModel::m_walkFrontLegsAngle
    IL_004e:  ldarg.0
    IL_004f:  ldarg.1
    IL_0050:  ldstr      "WalkHindLegsAngle"
    IL_0055:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_005a:  stfld      float32 Game.ComponentFourLeggedModel::m_walkHindLegsAngle
    IL_005f:  ldarg.0
    IL_0060:  ldarg.1
    IL_0061:  ldstr      "CanterLegsAngleFactor"
    IL_0066:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_006b:  stfld      float32 Game.ComponentFourLeggedModel::m_canterLegsAngleFactor
    IL_0070:  ldarg.0
    IL_0071:  ldarg.1
    IL_0072:  ldstr      "WalkBobHeight"
    IL_0077:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_007c:  stfld      float32 Game.ComponentFourLeggedModel::m_walkBobHeight
    IL_0081:  ldarg.0
    IL_0082:  ldarg.1
    IL_0083:  ldstr      "MoveLegWhenFeeding"
    IL_0088:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_008d:  stfld      bool Game.ComponentFourLeggedModel::m_moveLegWhenFeeding
    IL_0092:  ldarg.0
    IL_0093:  ldarg.1
    IL_0094:  ldstr      "CanCanter"
    IL_0099:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_009e:  stfld      bool Game.ComponentFourLeggedModel::m_canCanter
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.1
    IL_00a5:  ldstr      "CanTrot"
    IL_00aa:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_00af:  stfld      bool Game.ComponentFourLeggedModel::m_canTrot
    IL_00b4:  ldarg.0
    IL_00b5:  ldarg.1
    IL_00b6:  ldstr      "UseCanterSound"
    IL_00bb:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_00c0:  stfld      bool Game.ComponentFourLeggedModel::m_useCanterSound
    IL_00c5:  ret
  } // end of method ComponentFourLeggedModel::Load

  .method family hidebysig virtual instance void 
          SetModel(class [Engine]Engine.Graphics.Model model) cil managed
  {
    // 代码大小       230 (0xe6)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.ComponentModel::SetModel(class [Engine]Engine.Graphics.Model)
    IL_0007:  ldarg.0
    IL_0008:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_000d:  brfalse    IL_00b4

    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0019:  ldstr      "Body"
    IL_001e:  ldc.i4.1
    IL_001f:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0024:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_bodyBone
    IL_0029:  ldarg.0
    IL_002a:  ldarg.0
    IL_002b:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0030:  ldstr      "Neck"
    IL_0035:  ldc.i4.0
    IL_0036:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_003b:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_neckBone
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0047:  ldstr      "Head"
    IL_004c:  ldc.i4.1
    IL_004d:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0052:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_headBone
    IL_0057:  ldarg.0
    IL_0058:  ldarg.0
    IL_0059:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_005e:  ldstr      "Leg1"
    IL_0063:  ldc.i4.1
    IL_0064:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0069:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg1Bone
    IL_006e:  ldarg.0
    IL_006f:  ldarg.0
    IL_0070:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0075:  ldstr      "Leg2"
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0080:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg2Bone
    IL_0085:  ldarg.0
    IL_0086:  ldarg.0
    IL_0087:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_008c:  ldstr      "Leg3"
    IL_0091:  ldc.i4.1
    IL_0092:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0097:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg3Bone
    IL_009c:  ldarg.0
    IL_009d:  ldarg.0
    IL_009e:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_00a3:  ldstr      "Leg4"
    IL_00a8:  ldc.i4.1
    IL_00a9:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_00ae:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg4Bone
    IL_00b3:  ret

    IL_00b4:  ldarg.0
    IL_00b5:  ldnull
    IL_00b6:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_bodyBone
    IL_00bb:  ldarg.0
    IL_00bc:  ldnull
    IL_00bd:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_neckBone
    IL_00c2:  ldarg.0
    IL_00c3:  ldnull
    IL_00c4:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_headBone
    IL_00c9:  ldarg.0
    IL_00ca:  ldnull
    IL_00cb:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg1Bone
    IL_00d0:  ldarg.0
    IL_00d1:  ldnull
    IL_00d2:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg2Bone
    IL_00d7:  ldarg.0
    IL_00d8:  ldnull
    IL_00d9:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg3Bone
    IL_00de:  ldarg.0
    IL_00df:  ldnull
    IL_00e0:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFourLeggedModel::m_leg4Bone
    IL_00e5:  ret
  } // end of method ComponentFourLeggedModel::SetModel

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentFourLeggedModel::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.ComponentCreatureModel::.ctor()
    IL_0011:  ret
  } // end of method ComponentFourLeggedModel::.ctor

} // end of class Game.ComponentFourLeggedModel