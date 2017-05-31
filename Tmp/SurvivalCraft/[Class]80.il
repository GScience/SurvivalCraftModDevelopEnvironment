.class public auto ansi beforefieldinit Game.ComponentFlightlessBirdModel
       extends Game.ComponentCreatureModel
{
  .field private class [Engine]Engine.Graphics.ModelBone m_bodyBone
  .field private class [Engine]Engine.Graphics.ModelBone m_neckBone
  .field private class [Engine]Engine.Graphics.ModelBone m_headBone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg1Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg2Bone
  .field private float32 m_walkAnimationSpeed
  .field private float32 m_walkLegsAngle
  .field private float32 m_walkBobHeight
  .field private float32 m_feedFactor
  .field private float32 m_footstepsPhase
  .field private float32 m_kickFactor
  .field private float32 m_kickPhase
  .field private float32 m_legAngle1
  .field private float32 m_legAngle2
  .field private float32 m_headAngleY
  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       633 (0x279)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Matrix V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_footstepsPhase
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_000d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0012:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_001d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0022:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0027:  stloc.s    V_5
    IL_0029:  ldloca.s   V_5
    IL_002b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0030:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0035:  stloc.1
    IL_0036:  ldloc.1
    IL_0037:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_003c:  ldc.r4     0.2
    IL_0041:  ble.un.s   IL_0079

    IL_0043:  ldarg.0
    IL_0044:  ldarg.0
    IL_0045:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_004a:  ldloc.1
    IL_004b:  ldarg.1
    IL_004c:  mul
    IL_004d:  ldarg.0
    IL_004e:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_walkAnimationSpeed
    IL_0053:  mul
    IL_0054:  add
    IL_0055:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_footstepsPhase
    IL_0061:  ldc.r4     1.25
    IL_0066:  ldarg.0
    IL_0067:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_walkAnimationSpeed
    IL_006c:  mul
    IL_006d:  ldloc.1
    IL_006e:  mul
    IL_006f:  ldarg.1
    IL_0070:  mul
    IL_0071:  add
    IL_0072:  stfld      float32 Game.ComponentFlightlessBirdModel::m_footstepsPhase
    IL_0077:  br.s       IL_008f

    IL_0079:  ldarg.0
    IL_007a:  ldc.r4     0.0
    IL_007f:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_0084:  ldarg.0
    IL_0085:  ldc.r4     0.0
    IL_008a:  stfld      float32 Game.ComponentFlightlessBirdModel::m_footstepsPhase
    IL_008f:  ldc.r4     0.0
    IL_0094:  stloc.2
    IL_0095:  ldarg.0
    IL_0096:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_walkBobHeight
    IL_009b:  neg
    IL_009c:  ldc.r4     6.2831855
    IL_00a1:  ldarg.0
    IL_00a2:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_00a7:  mul
    IL_00a8:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00ad:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_00b2:  mul
    IL_00b3:  stloc.2
    IL_00b4:  ldc.r4     12.
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_00bf:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00c4:  mul
    IL_00c5:  ldc.r4     1.
    IL_00ca:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00cf:  stloc.3
    IL_00d0:  ldarg.0
    IL_00d1:  ldarg.0
    IL_00d2:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_00d7:  ldloc.3
    IL_00d8:  ldloc.2
    IL_00d9:  ldarg.0
    IL_00da:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_00df:  sub
    IL_00e0:  mul
    IL_00e1:  add
    IL_00e2:  call       instance void Game.ComponentCreatureModel::set_Bob(float32)
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_footstepsPhase
    IL_00ed:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00f2:  stloc.s    V_4
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_footstepsPhase
    IL_00fa:  ldloc.s    V_4
    IL_00fc:  ble.un.s   IL_0119

    IL_00fe:  ldloc.0
    IL_00ff:  ldloc.s    V_4
    IL_0101:  bgt.un.s   IL_0119

    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0109:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_010e:  ldc.r4     1.
    IL_0113:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_0118:  pop
    IL_0119:  ldarg.0
    IL_011a:  call       instance bool Game.ComponentCreatureModel::get_FeedOrder()
    IL_011f:  brfalse.s  IL_0141

    IL_0121:  ldarg.0
    IL_0122:  ldarg.0
    IL_0123:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_feedFactor
    IL_0128:  ldc.r4     2.
    IL_012d:  ldarg.1
    IL_012e:  mul
    IL_012f:  add
    IL_0130:  ldc.r4     1.
    IL_0135:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_013a:  stfld      float32 Game.ComponentFlightlessBirdModel::m_feedFactor
    IL_013f:  br.s       IL_015f

    IL_0141:  ldarg.0
    IL_0142:  ldarg.0
    IL_0143:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_feedFactor
    IL_0148:  ldc.r4     2.
    IL_014d:  ldarg.1
    IL_014e:  mul
    IL_014f:  sub
    IL_0150:  ldc.r4     0.0
    IL_0155:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_015a:  stfld      float32 Game.ComponentFlightlessBirdModel::m_feedFactor
    IL_015f:  ldarg.0
    IL_0160:  ldc.i4.0
    IL_0161:  call       instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
    IL_0166:  ldarg.0
    IL_0167:  call       instance bool Game.ComponentCreatureModel::get_AttackOrder()
    IL_016c:  brfalse.s  IL_01d6

    IL_016e:  ldarg.0
    IL_016f:  ldarg.0
    IL_0170:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickFactor
    IL_0175:  ldc.r4     6.
    IL_017a:  ldarg.1
    IL_017b:  mul
    IL_017c:  add
    IL_017d:  ldc.r4     1.
    IL_0182:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0187:  stfld      float32 Game.ComponentFlightlessBirdModel::m_kickFactor
    IL_018c:  ldarg.0
    IL_018d:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_0192:  ldarg.0
    IL_0193:  ldarg.0
    IL_0194:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_0199:  ldarg.1
    IL_019a:  ldc.r4     2.
    IL_019f:  mul
    IL_01a0:  add
    IL_01a1:  ldc.r4     1.
    IL_01a6:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_01ab:  stfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_01b0:  ldc.r4     0.5
    IL_01b5:  bge.un     IL_0263

    IL_01ba:  ldarg.0
    IL_01bb:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_01c0:  ldc.r4     0.5
    IL_01c5:  blt.un     IL_0263

    IL_01ca:  ldarg.0
    IL_01cb:  ldc.i4.1
    IL_01cc:  call       instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
    IL_01d1:  br         IL_0263

    IL_01d6:  ldarg.0
    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickFactor
    IL_01dd:  ldc.r4     6.
    IL_01e2:  ldarg.1
    IL_01e3:  mul
    IL_01e4:  sub
    IL_01e5:  ldc.r4     0.0
    IL_01ea:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_01ef:  stfld      float32 Game.ComponentFlightlessBirdModel::m_kickFactor
    IL_01f4:  ldarg.0
    IL_01f5:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_01fa:  ldc.r4     0.0
    IL_01ff:  beq.s      IL_0263

    IL_0201:  ldarg.0
    IL_0202:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_0207:  ldc.r4     0.5
    IL_020c:  ble.un.s   IL_0238

    IL_020e:  ldarg.0
    IL_020f:  ldarg.0
    IL_0210:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_0215:  ldarg.1
    IL_0216:  ldc.r4     2.
    IL_021b:  mul
    IL_021c:  add
    IL_021d:  ldc.r4     1.
    IL_0222:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0227:  ldc.r4     1.
    IL_022c:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0231:  stfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_0236:  br.s       IL_0263

    IL_0238:  ldarg.0
    IL_0239:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_023e:  ldc.r4     0.0
    IL_0243:  ble.un.s   IL_0263

    IL_0245:  ldarg.0
    IL_0246:  ldarg.0
    IL_0247:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_024c:  ldarg.1
    IL_024d:  ldc.r4     2.
    IL_0252:  mul
    IL_0253:  sub
    IL_0254:  ldc.r4     0.0
    IL_0259:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_025e:  stfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_0263:  ldarg.0
    IL_0264:  ldc.i4.0
    IL_0265:  call       instance void Game.ComponentCreatureModel::set_FeedOrder(bool)
    IL_026a:  ldarg.0
    IL_026b:  ldc.i4.0
    IL_026c:  call       instance void Game.ComponentCreatureModel::set_AttackOrder(bool)
    IL_0271:  ldarg.0
    IL_0272:  ldarg.1
    IL_0273:  call       instance void Game.ComponentCreatureModel::Update(float32)
    IL_0278:  ret
  } // end of method ComponentFlightlessBirdModel::Update

  .method public hidebysig virtual instance void 
          PrepareForDrawing(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       1411 (0x583)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Quaternion V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             valuetype [System.Runtime]System.Nullable`1<int32> V_9,
             float32 V_10,
             float32 V_11,
             valuetype [Engine]Engine.Matrix V_12,
             float32 V_13,
             float32 V_14,
             valuetype [Engine]Engine.Vector2 V_15,
             float32 V_16,
             float32 V_17,
             float32 V_18)
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
    IL_003f:  ble.un     IL_03fd

    IL_0044:  ldc.r4     0.0
    IL_0049:  stloc.3
    IL_004a:  ldc.r4     0.0
    IL_004f:  stloc.s    V_4
    IL_0051:  ldc.r4     0.0
    IL_0056:  stloc.s    V_5
    IL_0058:  ldarg.0
    IL_0059:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_005e:  ldc.r4     0.0
    IL_0063:  beq        IL_0158

    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_006e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0073:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0078:  stloc.s    V_9
    IL_007a:  ldloca.s   V_9
    IL_007c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0081:  brtrue.s   IL_009d

    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0089:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_008e:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0093:  ldc.r4     0.0
    IL_0098:  ble.un     IL_0158

    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00a3:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00a8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00b3:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00b8:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_00bd:  stloc.s    V_12
    IL_00bf:  ldloca.s   V_12
    IL_00c1:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00c6:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_00cb:  ldc.r4     0.75
    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00d6:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_00db:  callvirt   instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_00e0:  mul
    IL_00e1:  bgt.s      IL_00eb

    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_walkLegsAngle
    IL_00e9:  br.s       IL_00f7

    IL_00eb:  ldc.r4     1.5
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_walkLegsAngle
    IL_00f6:  mul
    IL_00f7:  ldc.r4     6.2831855
    IL_00fc:  ldarg.0
    IL_00fd:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0102:  ldc.r4     0.0
    IL_0107:  add
    IL_0108:  mul
    IL_0109:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_010e:  stloc.s    V_10
    IL_0110:  ldc.r4     6.2831855
    IL_0115:  ldarg.0
    IL_0116:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_011b:  ldc.r4     0.5
    IL_0120:  add
    IL_0121:  mul
    IL_0122:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0127:  stloc.s    V_11
    IL_0129:  dup
    IL_012a:  ldloc.s    V_10
    IL_012c:  mul
    IL_012d:  ldarg.0
    IL_012e:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_0133:  add
    IL_0134:  stloc.3
    IL_0135:  ldloc.s    V_11
    IL_0137:  mul
    IL_0138:  stloc.s    V_4
    IL_013a:  ldc.r4     5.
    IL_013f:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0144:  ldc.r4     12.566371
    IL_0149:  ldarg.0
    IL_014a:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_014f:  mul
    IL_0150:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0155:  mul
    IL_0156:  stloc.s    V_5
    IL_0158:  ldarg.0
    IL_0159:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickFactor
    IL_015e:  ldc.r4     0.0
    IL_0163:  beq.s      IL_019c

    IL_0165:  ldc.r4     60.
    IL_016a:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_016f:  ldc.r4     3.1415927
    IL_0174:  ldarg.0
    IL_0175:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickPhase
    IL_017a:  ldc.r4     5.
    IL_017f:  call       float32 [Engine]Engine.MathUtils::Sigmoid(float32,
                                                                   float32)
    IL_0184:  mul
    IL_0185:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_018a:  mul
    IL_018b:  stloc.s    V_13
    IL_018d:  ldloc.3
    IL_018e:  ldloc.s    V_13
    IL_0190:  ldarg.0
    IL_0191:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_kickFactor
    IL_0196:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_019b:  stloc.3
    IL_019c:  ldc.r4     12.
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_01a7:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_01ac:  mul
    IL_01ad:  ldc.r4     1.
    IL_01b2:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_01b7:  stloc.s    V_6
    IL_01b9:  ldarg.0
    IL_01ba:  ldarg.0
    IL_01bb:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_legAngle1
    IL_01c0:  ldloc.s    V_6
    IL_01c2:  ldloc.3
    IL_01c3:  ldarg.0
    IL_01c4:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_legAngle1
    IL_01c9:  sub
    IL_01ca:  mul
    IL_01cb:  add
    IL_01cc:  stfld      float32 Game.ComponentFlightlessBirdModel::m_legAngle1
    IL_01d1:  ldarg.0
    IL_01d2:  ldarg.0
    IL_01d3:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_legAngle2
    IL_01d8:  ldloc.s    V_6
    IL_01da:  ldloc.s    V_4
    IL_01dc:  ldarg.0
    IL_01dd:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_legAngle2
    IL_01e2:  sub
    IL_01e3:  mul
    IL_01e4:  add
    IL_01e5:  stfld      float32 Game.ComponentFlightlessBirdModel::m_legAngle2
    IL_01ea:  ldarg.0
    IL_01eb:  ldarg.0
    IL_01ec:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_headAngleY
    IL_01f1:  ldloc.s    V_6
    IL_01f3:  ldloc.s    V_5
    IL_01f5:  ldarg.0
    IL_01f6:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_headAngleY
    IL_01fb:  sub
    IL_01fc:  mul
    IL_01fd:  add
    IL_01fe:  stfld      float32 Game.ComponentFlightlessBirdModel::m_headAngleY
    IL_0203:  ldarg.0
    IL_0204:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0209:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_020e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0213:  stloc.s    V_7
    IL_0215:  ldloca.s   V_7
    IL_0217:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_021c:  dup
    IL_021d:  ldind.r4
    IL_021e:  ldarg.0
    IL_021f:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_headAngleY
    IL_0224:  add
    IL_0225:  stind.r4
    IL_0226:  ldarg.0
    IL_0227:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_feedFactor
    IL_022c:  ldc.r4     0.0
    IL_0231:  ble.un.s   IL_0287

    IL_0233:  ldc.r4     35.
    IL_0238:  ldc.r4     55.
    IL_023d:  ldarg.0
    IL_023e:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_0243:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0248:  conv.r4
    IL_0249:  ldc.r4     3.
    IL_024e:  ldc.i4.2
    IL_024f:  ldc.r4     2.
    IL_0254:  ldc.r4     0.75
    IL_0259:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_025e:  mul
    IL_025f:  add
    IL_0260:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0265:  neg
    IL_0266:  stloc.s    V_14
    IL_0268:  ldloca.s   V_15
    IL_026a:  ldc.r4     0.0
    IL_026f:  ldloc.s    V_14
    IL_0271:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0276:  ldloc.s    V_7
    IL_0278:  ldloc.s    V_15
    IL_027a:  ldarg.0
    IL_027b:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_feedFactor
    IL_0280:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Lerp(valuetype [Engine]Engine.Vector2,
                                                                                       valuetype [Engine]Engine.Vector2,
                                                                                       float32)
    IL_0285:  stloc.s    V_7
    IL_0287:  ldloca.s   V_7
    IL_0289:  ldloc.s    V_7
    IL_028b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0290:  ldc.r4     90.
    IL_0295:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_029a:  neg
    IL_029b:  ldc.r4     90.
    IL_02a0:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_02a5:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_02aa:  stfld      float32 [Engine]Engine.Vector2::X
    IL_02af:  ldloca.s   V_7
    IL_02b1:  ldloc.s    V_7
    IL_02b3:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02b8:  ldc.r4     90.
    IL_02bd:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_02c2:  neg
    IL_02c3:  ldc.r4     50.
    IL_02c8:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_02cd:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_02d2:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_02d7:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_02dc:  stloc.s    V_8
    IL_02de:  ldarg.0
    IL_02df:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_neckBone
    IL_02e4:  brfalse.s  IL_0302

    IL_02e6:  ldc.r4     0.40000001
    IL_02eb:  ldloc.s    V_7
    IL_02ed:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_02f2:  stloc.s    V_8
    IL_02f4:  ldc.r4     0.60000002
    IL_02f9:  ldloc.s    V_7
    IL_02fb:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0300:  stloc.s    V_7
    IL_0302:  ldarg.0
    IL_0303:  ldarg.0
    IL_0304:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_bodyBone
    IL_0309:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_030e:  ldloc.1
    IL_030f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0314:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0319:  ldloc.0
    IL_031a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_031f:  ldloc.0
    IL_0320:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0325:  ldarg.0
    IL_0326:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_032b:  add
    IL_032c:  ldloc.0
    IL_032d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0332:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0337:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_033c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0341:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0346:  ldarg.0
    IL_0347:  ldarg.0
    IL_0348:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_headBone
    IL_034d:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0352:  ldloc.s    V_7
    IL_0354:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0359:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_035e:  ldloc.s    V_7
    IL_0360:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0365:  neg
    IL_0366:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_036b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0370:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0375:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_037a:  ldarg.0
    IL_037b:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_neckBone
    IL_0380:  brfalse.s  IL_03b6

    IL_0382:  ldarg.0
    IL_0383:  ldarg.0
    IL_0384:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_neckBone
    IL_0389:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_038e:  ldloc.s    V_8
    IL_0390:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0395:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_039a:  ldloc.s    V_8
    IL_039c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03a1:  neg
    IL_03a2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_03a7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03ac:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_03b1:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_03b6:  ldarg.0
    IL_03b7:  ldarg.0
    IL_03b8:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_leg1Bone
    IL_03bd:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_03c2:  ldarg.0
    IL_03c3:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_legAngle1
    IL_03c8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_03cd:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_03d2:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_03d7:  ldarg.0
    IL_03d8:  ldarg.0
    IL_03d9:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_leg2Bone
    IL_03de:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_03e3:  ldarg.0
    IL_03e4:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_legAngle2
    IL_03e9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_03ee:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_03f3:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_03f8:  br         IL_057b

    IL_03fd:  ldc.r4     1.
    IL_0402:  ldarg.0
    IL_0403:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_0408:  sub
    IL_0409:  stloc.s    V_16
    IL_040b:  ldarg.0
    IL_040c:  ldfld      class Game.ComponentFrame Game.ComponentModel::m_componentFrame
    IL_0411:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0416:  stloc.s    V_12
    IL_0418:  ldloca.s   V_12
    IL_041a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_041f:  ldarg.0
    IL_0420:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_DeathCauseOffset()
    IL_0425:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_042a:  ldc.r4     0.0
    IL_042f:  bgt.s      IL_0434

    IL_0431:  ldc.i4.m1
    IL_0432:  br.s       IL_0435

    IL_0434:  ldc.i4.1
    IL_0435:  conv.r4
    IL_0436:  stloc.s    V_17
    IL_0438:  ldarg.0
    IL_0439:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_043e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0443:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0448:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_044d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0452:  ldarg.0
    IL_0453:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0458:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_045d:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0462:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0467:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_046c:  sub
    IL_046d:  stloc.s    V_18
    IL_046f:  ldarg.0
    IL_0470:  ldarg.0
    IL_0471:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_bodyBone
    IL_0476:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_047b:  ldc.r4     -0.5
    IL_0480:  ldloc.s    V_18
    IL_0482:  mul
    IL_0483:  ldarg.0
    IL_0484:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_0489:  mul
    IL_048a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_048f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0494:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0499:  ldloc.1
    IL_049a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_049f:  ldc.r4     0.0
    IL_04a4:  ldc.r4     1.5707964
    IL_04a9:  ldarg.0
    IL_04aa:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_04af:  mul
    IL_04b0:  ldloc.s    V_17
    IL_04b2:  mul
    IL_04b3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_04b8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_04bd:  ldc.r4     0.2
    IL_04c2:  ldloc.s    V_18
    IL_04c4:  mul
    IL_04c5:  ldarg.0
    IL_04c6:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_04cb:  mul
    IL_04cc:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_04d1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_04d6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_04db:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_04e0:  ldloc.0
    IL_04e1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_04e6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_04eb:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_04f0:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_04f5:  ldarg.0
    IL_04f6:  ldarg.0
    IL_04f7:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_headBone
    IL_04fc:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0501:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0506:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_050b:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0510:  ldarg.0
    IL_0511:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_neckBone
    IL_0516:  brfalse.s  IL_0533

    IL_0518:  ldarg.0
    IL_0519:  ldarg.0
    IL_051a:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_neckBone
    IL_051f:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0524:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0529:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_052e:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0533:  ldarg.0
    IL_0534:  ldarg.0
    IL_0535:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_leg1Bone
    IL_053a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_053f:  ldarg.0
    IL_0540:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_legAngle1
    IL_0545:  ldloc.s    V_16
    IL_0547:  mul
    IL_0548:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_054d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0552:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0557:  ldarg.0
    IL_0558:  ldarg.0
    IL_0559:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_leg2Bone
    IL_055e:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0563:  ldarg.0
    IL_0564:  ldfld      float32 Game.ComponentFlightlessBirdModel::m_legAngle2
    IL_0569:  ldloc.s    V_16
    IL_056b:  mul
    IL_056c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0571:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0576:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_057b:  ldarg.0
    IL_057c:  ldarg.1
    IL_057d:  call       instance void Game.ComponentCreatureModel::PrepareForDrawing(class Game.SubsystemDrawing)
    IL_0582:  ret
  } // end of method ComponentFlightlessBirdModel::PrepareForDrawing

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentCreatureModel::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                         class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldstr      "WalkAnimationSpeed"
    IL_000f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0014:  stfld      float32 Game.ComponentFlightlessBirdModel::m_walkAnimationSpeed
    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  ldstr      "WalkLegsAngle"
    IL_0020:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0025:  stfld      float32 Game.ComponentFlightlessBirdModel::m_walkLegsAngle
    IL_002a:  ldarg.0
    IL_002b:  ldarg.1
    IL_002c:  ldstr      "WalkBobHeight"
    IL_0031:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0036:  stfld      float32 Game.ComponentFlightlessBirdModel::m_walkBobHeight
    IL_003b:  ret
  } // end of method ComponentFlightlessBirdModel::Load

  .method family hidebysig virtual instance void 
          SetModel(class [Engine]Engine.Graphics.Model model) cil managed
  {
    // 代码大小       167 (0xa7)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.ComponentModel::SetModel(class [Engine]Engine.Graphics.Model)
    IL_0007:  ldarg.0
    IL_0008:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_000d:  brfalse.s  IL_0083

    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0016:  ldstr      "Body"
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0021:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_bodyBone
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_002d:  ldstr      "Neck"
    IL_0032:  ldc.i4.0
    IL_0033:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0038:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_neckBone
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0044:  ldstr      "Head"
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_004f:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_headBone
    IL_0054:  ldarg.0
    IL_0055:  ldarg.0
    IL_0056:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_005b:  ldstr      "Leg1"
    IL_0060:  ldc.i4.1
    IL_0061:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0066:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_leg1Bone
    IL_006b:  ldarg.0
    IL_006c:  ldarg.0
    IL_006d:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0072:  ldstr      "Leg2"
    IL_0077:  ldc.i4.1
    IL_0078:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_007d:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_leg2Bone
    IL_0082:  ret

    IL_0083:  ldarg.0
    IL_0084:  ldnull
    IL_0085:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_bodyBone
    IL_008a:  ldarg.0
    IL_008b:  ldnull
    IL_008c:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_neckBone
    IL_0091:  ldarg.0
    IL_0092:  ldnull
    IL_0093:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_headBone
    IL_0098:  ldarg.0
    IL_0099:  ldnull
    IL_009a:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_leg1Bone
    IL_009f:  ldarg.0
    IL_00a0:  ldnull
    IL_00a1:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFlightlessBirdModel::m_leg2Bone
    IL_00a6:  ret
  } // end of method ComponentFlightlessBirdModel::SetModel

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentCreatureModel::.ctor()
    IL_0006:  ret
  } // end of method ComponentFlightlessBirdModel::.ctor

} // end of class Game.ComponentFlightlessBirdModel