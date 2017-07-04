.class public auto ansi beforefieldinit Game.ComponentBirdModel
       extends Game.ComponentCreatureModel
{
  .field private bool m_hasWings
  .field private class [Engine]Engine.Graphics.ModelBone m_bodyBone
  .field private class [Engine]Engine.Graphics.ModelBone m_neckBone
  .field private class [Engine]Engine.Graphics.ModelBone m_headBone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg1Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_leg2Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_wing1Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_wing2Bone
  .field private float32 m_flyAnimationSpeed
  .field private float32 m_walkAnimationSpeed
  .field private float32 m_peckAnimationSpeed
  .field private float32 m_walkBobHeight
  .field private float32 m_peckPhase
  .field private float32 '<FlyPhase>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float32 
          get_FlyPhase() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBirdModel::'<FlyPhase>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBirdModel::get_FlyPhase

  .method private hidebysig specialname instance void 
          set_FlyPhase(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBirdModel::'<FlyPhase>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBirdModel::set_FlyPhase

  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       660 (0x294)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             float32 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector3 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0016:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0020:  stloc.3
    IL_0021:  ldloca.s   V_3
    IL_0023:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0028:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_002d:  stloc.0
    IL_002e:  ldloc.0
    IL_002f:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0034:  ldc.r4     0.1
    IL_0039:  ble.un.s   IL_0054

    IL_003b:  ldarg.0
    IL_003c:  ldarg.0
    IL_003d:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0042:  ldloc.0
    IL_0043:  ldarg.1
    IL_0044:  mul
    IL_0045:  ldarg.0
    IL_0046:  ldfld      float32 Game.ComponentBirdModel::m_walkAnimationSpeed
    IL_004b:  mul
    IL_004c:  add
    IL_004d:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_0052:  br.s       IL_00b9

    IL_0054:  ldarg.0
    IL_0055:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_005a:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_005f:  stloc.s    V_4
    IL_0061:  ldarg.0
    IL_0062:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0067:  ldloc.s    V_4
    IL_0069:  beq.s      IL_00b9

    IL_006b:  ldarg.0
    IL_006c:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0071:  ldloc.s    V_4
    IL_0073:  sub
    IL_0074:  ldc.r4     0.5
    IL_0079:  ble.un.s   IL_009e

    IL_007b:  ldarg.0
    IL_007c:  ldarg.0
    IL_007d:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0082:  ldc.r4     2.
    IL_0087:  ldarg.1
    IL_0088:  mul
    IL_0089:  add
    IL_008a:  ldloc.s    V_4
    IL_008c:  ldc.r4     1.
    IL_0091:  add
    IL_0092:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0097:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_009c:  br.s       IL_00b9

    IL_009e:  ldarg.0
    IL_009f:  ldarg.0
    IL_00a0:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_00a5:  ldc.r4     2.
    IL_00aa:  ldarg.1
    IL_00ab:  mul
    IL_00ac:  sub
    IL_00ad:  ldloc.s    V_4
    IL_00af:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00b4:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_00b9:  ldc.r4     0.0
    IL_00be:  stloc.1
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      float32 Game.ComponentBirdModel::m_walkBobHeight
    IL_00c5:  neg
    IL_00c6:  ldc.r4     6.2831855
    IL_00cb:  ldarg.0
    IL_00cc:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_00d1:  mul
    IL_00d2:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00d7:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_00dc:  mul
    IL_00dd:  stloc.1
    IL_00de:  ldc.r4     12.
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.SubsystemTime Game.ComponentCreatureModel::m_subsystemTime
    IL_00e9:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00ee:  mul
    IL_00ef:  ldc.r4     1.
    IL_00f4:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00f9:  stloc.2
    IL_00fa:  ldarg.0
    IL_00fb:  ldarg.0
    IL_00fc:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_0101:  ldloc.2
    IL_0102:  ldloc.1
    IL_0103:  ldarg.0
    IL_0104:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_0109:  sub
    IL_010a:  mul
    IL_010b:  add
    IL_010c:  call       instance void Game.ComponentCreatureModel::set_Bob(float32)
    IL_0111:  ldarg.0
    IL_0112:  ldfld      bool Game.ComponentBirdModel::m_hasWings
    IL_0117:  brfalse    IL_0211

    IL_011c:  ldarg.0
    IL_011d:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0122:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0127:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastFlyOrder()
    IL_012c:  stloc.s    V_5
    IL_012e:  ldloca.s   V_5
    IL_0130:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0135:  brfalse    IL_01e5

    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0140:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0145:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastFlyOrder()
    IL_014a:  stloc.s    V_5
    IL_014c:  ldloca.s   V_5
    IL_014e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0153:  stloc.s    V_7
    IL_0155:  ldloca.s   V_7
    IL_0157:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_015c:  ldc.r4     0.99000001
    IL_0161:  bgt.s      IL_016a

    IL_0163:  ldc.r4     1.
    IL_0168:  br.s       IL_016f

    IL_016a:  ldc.r4     1.5
    IL_016f:  stloc.s    V_6
    IL_0171:  ldarg.0
    IL_0172:  ldarg.0
    IL_0173:  call       instance float32 Game.ComponentBirdModel::get_FlyPhase()
    IL_0178:  ldarg.0
    IL_0179:  ldfld      float32 Game.ComponentBirdModel::m_flyAnimationSpeed
    IL_017e:  ldloc.s    V_6
    IL_0180:  mul
    IL_0181:  ldarg.1
    IL_0182:  mul
    IL_0183:  add
    IL_0184:  ldc.r4     1.
    IL_0189:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_018e:  call       instance void Game.ComponentBirdModel::set_FlyPhase(float32)
    IL_0193:  ldarg.0
    IL_0194:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0199:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_019e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastFlyOrder()
    IL_01a3:  stloc.s    V_5
    IL_01a5:  ldloca.s   V_5
    IL_01a7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_01ac:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01b1:  ldc.r4     -0.1
    IL_01b6:  bge.un.s   IL_0211

    IL_01b8:  ldarg.0
    IL_01b9:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_01be:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01c3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_01c8:  stloc.s    V_7
    IL_01ca:  ldloca.s   V_7
    IL_01cc:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_01d1:  ldc.r4     4.
    IL_01d6:  ble.un.s   IL_0211

    IL_01d8:  ldarg.0
    IL_01d9:  ldc.r4     0.72000003
    IL_01de:  call       instance void Game.ComponentBirdModel::set_FlyPhase(float32)
    IL_01e3:  br.s       IL_0211

    IL_01e5:  ldarg.0
    IL_01e6:  call       instance float32 Game.ComponentBirdModel::get_FlyPhase()
    IL_01eb:  ldc.r4     1.
    IL_01f0:  beq.s      IL_0211

    IL_01f2:  ldarg.0
    IL_01f3:  ldarg.0
    IL_01f4:  call       instance float32 Game.ComponentBirdModel::get_FlyPhase()
    IL_01f9:  ldarg.0
    IL_01fa:  ldfld      float32 Game.ComponentBirdModel::m_flyAnimationSpeed
    IL_01ff:  ldarg.1
    IL_0200:  mul
    IL_0201:  add
    IL_0202:  ldc.r4     1.
    IL_0207:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_020c:  call       instance void Game.ComponentBirdModel::set_FlyPhase(float32)
    IL_0211:  ldarg.0
    IL_0212:  call       instance bool Game.ComponentCreatureModel::get_FeedOrder()
    IL_0217:  brfalse.s  IL_024f

    IL_0219:  ldarg.0
    IL_021a:  ldarg.0
    IL_021b:  ldfld      float32 Game.ComponentBirdModel::m_peckPhase
    IL_0220:  ldarg.0
    IL_0221:  ldfld      float32 Game.ComponentBirdModel::m_peckAnimationSpeed
    IL_0226:  ldarg.1
    IL_0227:  mul
    IL_0228:  add
    IL_0229:  stfld      float32 Game.ComponentBirdModel::m_peckPhase
    IL_022e:  ldarg.0
    IL_022f:  ldfld      float32 Game.ComponentBirdModel::m_peckPhase
    IL_0234:  ldc.r4     0.75
    IL_0239:  ble.un.s   IL_0285

    IL_023b:  ldarg.0
    IL_023c:  ldarg.0
    IL_023d:  ldfld      float32 Game.ComponentBirdModel::m_peckPhase
    IL_0242:  ldc.r4     0.5
    IL_0247:  sub
    IL_0248:  stfld      float32 Game.ComponentBirdModel::m_peckPhase
    IL_024d:  br.s       IL_0285

    IL_024f:  ldarg.0
    IL_0250:  ldfld      float32 Game.ComponentBirdModel::m_peckPhase
    IL_0255:  ldc.r4     0.0
    IL_025a:  beq.s      IL_0285

    IL_025c:  ldarg.0
    IL_025d:  ldarg.0
    IL_025e:  ldfld      float32 Game.ComponentBirdModel::m_peckPhase
    IL_0263:  ldarg.0
    IL_0264:  ldfld      float32 Game.ComponentBirdModel::m_peckAnimationSpeed
    IL_0269:  ldarg.1
    IL_026a:  mul
    IL_026b:  add
    IL_026c:  ldc.r4     1.
    IL_0271:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0276:  ldc.r4     1.
    IL_027b:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0280:  stfld      float32 Game.ComponentBirdModel::m_peckPhase
    IL_0285:  ldarg.0
    IL_0286:  ldc.i4.0
    IL_0287:  call       instance void Game.ComponentCreatureModel::set_FeedOrder(bool)
    IL_028c:  ldarg.0
    IL_028d:  ldarg.1
    IL_028e:  call       instance void Game.ComponentCreatureModel::Update(float32)
    IL_0293:  ret
  } // end of method ComponentBirdModel::Update

  .method public hidebysig virtual instance void 
          Animate() cil managed
  {
    // 代码大小       1240 (0x4d8)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [System.Runtime]System.Nullable`1<int32> V_4,
             valuetype [Engine]Engine.Quaternion V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype [Engine]Engine.Matrix V_14)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      bool Game.ComponentBirdModel::m_hasWings
    IL_000c:  brfalse.s  IL_0063

    IL_000e:  ldloc.0
    IL_000f:  ldc.r4     1.2
    IL_0014:  ldc.r4     6.2831855
    IL_0019:  ldarg.0
    IL_001a:  call       instance float32 Game.ComponentBirdModel::get_FlyPhase()
    IL_001f:  ldc.r4     0.75
    IL_0024:  add
    IL_0025:  mul
    IL_0026:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_002b:  mul
    IL_002c:  add
    IL_002d:  stloc.0
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0034:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0039:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_003e:  stloc.s    V_4
    IL_0040:  ldloca.s   V_4
    IL_0042:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0047:  brfalse.s  IL_0063

    IL_0049:  ldloc.0
    IL_004a:  ldc.r4     0.30000001
    IL_004f:  ldc.r4     6.2831855
    IL_0054:  ldarg.0
    IL_0055:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_005a:  mul
    IL_005b:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0060:  mul
    IL_0061:  add
    IL_0062:  stloc.0
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0069:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0073:  stloc.s    V_4
    IL_0075:  ldloca.s   V_4
    IL_0077:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_007c:  brtrue.s   IL_00ac

    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0084:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0089:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_008e:  ldc.r4     0.0
    IL_0093:  bgt.s      IL_00ac

    IL_0095:  ldarg.0
    IL_0096:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_009b:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_00a0:  callvirt   instance float32 Game.ComponentLocomotion::get_FlySpeed()
    IL_00a5:  ldc.r4     0.0
    IL_00aa:  bne.un.s   IL_00c9

    IL_00ac:  ldc.r4     0.60000002
    IL_00b1:  ldc.r4     6.2831855
    IL_00b6:  ldarg.0
    IL_00b7:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_00bc:  mul
    IL_00bd:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00c2:  mul
    IL_00c3:  stloc.1
    IL_00c4:  ldloc.1
    IL_00c5:  neg
    IL_00c6:  stloc.2
    IL_00c7:  br.s       IL_00d7

    IL_00c9:  ldc.r4     60.
    IL_00ce:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00d3:  neg
    IL_00d4:  dup
    IL_00d5:  stloc.2
    IL_00d6:  stloc.1
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00dd:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00e2:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_00e7:  stloc.s    V_5
    IL_00e9:  ldloca.s   V_5
    IL_00eb:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Quaternion::ToYawPitchRoll()
    IL_00f0:  stloc.3
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_00f7:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_00fc:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0101:  ldc.r4     0.0
    IL_0106:  ble.un     IL_0338

    IL_010b:  ldarg.0
    IL_010c:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0111:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0116:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_011b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0120:  ldc.r4     2.
    IL_0125:  div
    IL_0126:  stloc.s    V_6
    IL_0128:  ldarg.0
    IL_0129:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_012e:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0133:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0138:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_013d:  ldc.r4     2.
    IL_0142:  div
    IL_0143:  stloc.s    V_7
    IL_0145:  ldc.r4     0.0
    IL_014a:  stloc.s    V_8
    IL_014c:  ldc.r4     0.0
    IL_0151:  stloc.s    V_9
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0159:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_015e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0163:  stloc.s    V_4
    IL_0165:  ldloca.s   V_4
    IL_0167:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_016c:  brtrue.s   IL_0185

    IL_016e:  ldarg.0
    IL_016f:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0174:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0179:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_017e:  ldc.r4     0.0
    IL_0183:  ble.un.s   IL_01a9

    IL_0185:  ldc.r4     0.5
    IL_018a:  ldc.r4     6.2831855
    IL_018f:  ldarg.0
    IL_0190:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0195:  mul
    IL_0196:  ldc.r4     2.
    IL_019b:  div
    IL_019c:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01a1:  mul
    IL_01a2:  stloc.s    V_8
    IL_01a4:  ldloc.s    V_8
    IL_01a6:  neg
    IL_01a7:  stloc.s    V_9
    IL_01a9:  ldc.r4     6.2831855
    IL_01ae:  ldarg.0
    IL_01af:  ldfld      float32 Game.ComponentBirdModel::m_peckPhase
    IL_01b4:  mul
    IL_01b5:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_01ba:  stloc.s    V_10
    IL_01bc:  ldloc.s    V_8
    IL_01be:  ldc.r4     1.25
    IL_01c3:  ldc.r4     1.
    IL_01c8:  ldloc.s    V_10
    IL_01ca:  ldc.r4     0.0
    IL_01cf:  bge.s      IL_01db

    IL_01d1:  ldc.r4     -0.5
    IL_01d6:  ldloc.s    V_10
    IL_01d8:  mul
    IL_01d9:  br.s       IL_01dd

    IL_01db:  ldloc.s    V_10
    IL_01dd:  sub
    IL_01de:  mul
    IL_01df:  sub
    IL_01e0:  stloc.s    V_8
    IL_01e2:  ldloc.s    V_8
    IL_01e4:  ldarg.0
    IL_01e5:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_01ea:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_01ef:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_01f4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01f9:  add
    IL_01fa:  stloc.s    V_8
    IL_01fc:  ldarg.0
    IL_01fd:  ldarg.0
    IL_01fe:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_bodyBone
    IL_0203:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0208:  ldloc.3
    IL_0209:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_020e:  ldc.r4     0.0
    IL_0213:  ldc.r4     0.0
    IL_0218:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_021d:  ldarg.0
    IL_021e:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0223:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0228:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_022d:  ldc.r4     0.0
    IL_0232:  ldarg.0
    IL_0233:  call       instance float32 Game.ComponentCreatureModel::get_Bob()
    IL_0238:  ldc.r4     0.0
    IL_023d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0242:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0247:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_024c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0251:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0256:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_025b:  ldarg.0
    IL_025c:  ldarg.0
    IL_025d:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_neckBone
    IL_0262:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0267:  ldloc.s    V_7
    IL_0269:  ldloc.s    V_8
    IL_026b:  ldc.r4     0.0
    IL_0270:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_0275:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_027a:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_027f:  ldarg.0
    IL_0280:  ldarg.0
    IL_0281:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_headBone
    IL_0286:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_028b:  ldloc.s    V_6
    IL_028d:  ldloc.s    V_9
    IL_028f:  ldloc.3
    IL_0290:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0295:  ldc.r4     -0.78539819
    IL_029a:  ldc.r4     0.78539819
    IL_029f:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_02a4:  add
    IL_02a5:  ldloc.3
    IL_02a6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02ab:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_02b0:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_02b5:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_02ba:  ldarg.0
    IL_02bb:  ldfld      bool Game.ComponentBirdModel::m_hasWings
    IL_02c0:  brfalse.s  IL_02fb

    IL_02c2:  ldarg.0
    IL_02c3:  ldarg.0
    IL_02c4:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_wing1Bone
    IL_02c9:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_02ce:  ldloc.0
    IL_02cf:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_02d4:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_02d9:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_02de:  ldarg.0
    IL_02df:  ldarg.0
    IL_02e0:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_wing2Bone
    IL_02e5:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_02ea:  ldloc.0
    IL_02eb:  neg
    IL_02ec:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_02f1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_02f6:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_02fb:  ldarg.0
    IL_02fc:  ldarg.0
    IL_02fd:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_leg1Bone
    IL_0302:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0307:  ldloc.1
    IL_0308:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_030d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0312:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0317:  ldarg.0
    IL_0318:  ldarg.0
    IL_0319:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_leg2Bone
    IL_031e:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0323:  ldloc.2
    IL_0324:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0329:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_032e:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0333:  br         IL_04d1

    IL_0338:  ldc.r4     1.
    IL_033d:  ldarg.0
    IL_033e:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_0343:  sub
    IL_0344:  stloc.s    V_11
    IL_0346:  ldarg.0
    IL_0347:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_034c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0351:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0356:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_035b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0360:  ldarg.0
    IL_0361:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0366:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_036b:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0370:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0375:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_037a:  sub
    IL_037b:  stloc.s    V_12
    IL_037d:  ldarg.0
    IL_037e:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0383:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0388:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_038d:  ldc.r4     0.5
    IL_0392:  ldloc.s    V_12
    IL_0394:  mul
    IL_0395:  ldarg.0
    IL_0396:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_039b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03a0:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_03a5:  stloc.s    V_14
    IL_03a7:  ldloca.s   V_14
    IL_03a9:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_03ae:  ldc.r4     1.
    IL_03b3:  ldc.r4     0.0
    IL_03b8:  ldc.r4     1.
    IL_03bd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03c2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_03cc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03d1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_03d6:  stloc.s    V_13
    IL_03d8:  ldarg.0
    IL_03d9:  ldarg.0
    IL_03da:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_bodyBone
    IL_03df:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_03e4:  ldloc.3
    IL_03e5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03ea:  ldc.r4     1.5707964
    IL_03ef:  ldarg.0
    IL_03f0:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_03f5:  mul
    IL_03f6:  ldc.r4     0.0
    IL_03fb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_0400:  ldloc.s    V_13
    IL_0402:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0407:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_040c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0411:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0416:  ldarg.0
    IL_0417:  ldarg.0
    IL_0418:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_neckBone
    IL_041d:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0422:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0427:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_042c:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0431:  ldarg.0
    IL_0432:  ldarg.0
    IL_0433:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_headBone
    IL_0438:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_043d:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0442:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0447:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_044c:  ldarg.0
    IL_044d:  ldfld      bool Game.ComponentBirdModel::m_hasWings
    IL_0452:  brfalse.s  IL_0493

    IL_0454:  ldarg.0
    IL_0455:  ldarg.0
    IL_0456:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_wing1Bone
    IL_045b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0460:  ldloc.0
    IL_0461:  ldloc.s    V_11
    IL_0463:  mul
    IL_0464:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0469:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_046e:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0473:  ldarg.0
    IL_0474:  ldarg.0
    IL_0475:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_wing2Bone
    IL_047a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_047f:  ldloc.0
    IL_0480:  neg
    IL_0481:  ldloc.s    V_11
    IL_0483:  mul
    IL_0484:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0489:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_048e:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0493:  ldarg.0
    IL_0494:  ldarg.0
    IL_0495:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_leg1Bone
    IL_049a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_049f:  ldloc.1
    IL_04a0:  ldloc.s    V_11
    IL_04a2:  mul
    IL_04a3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_04a8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_04ad:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_04b2:  ldarg.0
    IL_04b3:  ldarg.0
    IL_04b4:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_leg2Bone
    IL_04b9:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_04be:  ldloc.2
    IL_04bf:  ldloc.s    V_11
    IL_04c1:  mul
    IL_04c2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_04c7:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_04cc:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_04d1:  ldarg.0
    IL_04d2:  call       instance void Game.ComponentCreatureModel::Animate()
    IL_04d7:  ret
  } // end of method ComponentBirdModel::Animate

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentCreatureModel::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                         class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldstr      "FlyAnimationSpeed"
    IL_000f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0014:  stfld      float32 Game.ComponentBirdModel::m_flyAnimationSpeed
    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  ldstr      "WalkAnimationSpeed"
    IL_0020:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0025:  stfld      float32 Game.ComponentBirdModel::m_walkAnimationSpeed
    IL_002a:  ldarg.0
    IL_002b:  ldarg.1
    IL_002c:  ldstr      "PeckAnimationSpeed"
    IL_0031:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0036:  stfld      float32 Game.ComponentBirdModel::m_peckAnimationSpeed
    IL_003b:  ldarg.0
    IL_003c:  ldarg.1
    IL_003d:  ldstr      "WalkBobHeight"
    IL_0042:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0047:  stfld      float32 Game.ComponentBirdModel::m_walkBobHeight
    IL_004c:  ret
  } // end of method ComponentBirdModel::Load

  .method family hidebysig virtual instance void 
          SetModel(class [Engine]Engine.Graphics.Model model) cil managed
  {
    // 代码大小       257 (0x101)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.ComponentModel::SetModel(class [Engine]Engine.Graphics.Model)
    IL_0007:  ldarg.0
    IL_0008:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_000d:  brfalse    IL_00b5

    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0019:  ldstr      "Body"
    IL_001e:  ldc.i4.1
    IL_001f:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0024:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_bodyBone
    IL_0029:  ldarg.0
    IL_002a:  ldarg.0
    IL_002b:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0030:  ldstr      "Neck"
    IL_0035:  ldc.i4.1
    IL_0036:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_003b:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_neckBone
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0047:  ldstr      "Head"
    IL_004c:  ldc.i4.1
    IL_004d:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0052:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_headBone
    IL_0057:  ldarg.0
    IL_0058:  ldarg.0
    IL_0059:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_005e:  ldstr      "Leg1"
    IL_0063:  ldc.i4.1
    IL_0064:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0069:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_leg1Bone
    IL_006e:  ldarg.0
    IL_006f:  ldarg.0
    IL_0070:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0075:  ldstr      "Leg2"
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0080:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_leg2Bone
    IL_0085:  ldarg.0
    IL_0086:  ldarg.0
    IL_0087:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_008c:  ldstr      "Wing1"
    IL_0091:  ldc.i4.0
    IL_0092:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0097:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_wing1Bone
    IL_009c:  ldarg.0
    IL_009d:  ldarg.0
    IL_009e:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_00a3:  ldstr      "Wing2"
    IL_00a8:  ldc.i4.0
    IL_00a9:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_00ae:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_wing2Bone
    IL_00b3:  br.s       IL_00e6

    IL_00b5:  ldarg.0
    IL_00b6:  ldnull
    IL_00b7:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_bodyBone
    IL_00bc:  ldarg.0
    IL_00bd:  ldnull
    IL_00be:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_neckBone
    IL_00c3:  ldarg.0
    IL_00c4:  ldnull
    IL_00c5:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_headBone
    IL_00ca:  ldarg.0
    IL_00cb:  ldnull
    IL_00cc:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_leg1Bone
    IL_00d1:  ldarg.0
    IL_00d2:  ldnull
    IL_00d3:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_leg2Bone
    IL_00d8:  ldarg.0
    IL_00d9:  ldnull
    IL_00da:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_wing1Bone
    IL_00df:  ldarg.0
    IL_00e0:  ldnull
    IL_00e1:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_wing2Bone
    IL_00e6:  ldarg.0
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_wing1Bone
    IL_00ed:  brfalse.s  IL_00fa

    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentBirdModel::m_wing2Bone
    IL_00f5:  ldnull
    IL_00f6:  cgt.un
    IL_00f8:  br.s       IL_00fb

    IL_00fa:  ldc.i4.0
    IL_00fb:  stfld      bool Game.ComponentBirdModel::m_hasWings
    IL_0100:  ret
  } // end of method ComponentBirdModel::SetModel

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentCreatureModel::.ctor()
    IL_0006:  ret
  } // end of method ComponentBirdModel::.ctor

  .property instance float32 FlyPhase()
  {
    .get instance float32 Game.ComponentBirdModel::get_FlyPhase()
    .set instance void Game.ComponentBirdModel::set_FlyPhase(float32)
  } // end of property ComponentBirdModel::FlyPhase
} // end of class Game.ComponentBirdModel