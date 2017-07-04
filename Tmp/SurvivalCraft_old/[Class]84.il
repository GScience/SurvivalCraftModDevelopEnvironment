.class public auto ansi beforefieldinit Game.ComponentFishModel
       extends Game.ComponentCreatureModel
{
  .field private class [Engine]Engine.Graphics.ModelBone m_bodyBone
  .field private class [Engine]Engine.Graphics.ModelBone m_tail1Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_tail2Bone
  .field private class [Engine]Engine.Graphics.ModelBone m_jawBone
  .field private float32 m_swimAnimationSpeed
  .field private bool m_hasVerticalTail
  .field private float32 m_bitingPhase
  .field private valuetype [Engine]Engine.Vector2 m_tailTurn
  .field private float32 m_digInDepth
  .field private float32 m_digInTailPhase
  .field private valuetype [System.Runtime]System.Nullable`1<float32> '<BendOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<DigInOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<float32> 
          get_BendOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentFishModel::'<BendOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentFishModel::get_BendOrder

  .method public hidebysig specialname instance void 
          set_BendOrder(valuetype [System.Runtime]System.Nullable`1<float32> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentFishModel::'<BendOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentFishModel::set_BendOrder

  .method public hidebysig specialname instance float32 
          get_DigInOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFishModel::'<DigInOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentFishModel::get_DigInOrder

  .method public hidebysig specialname instance void 
          set_DigInOrder(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentFishModel::'<DigInOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentFishModel::set_DigInOrder

  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       738 (0x2e2)
    .maxstack  5
    .locals init (float32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [System.Runtime]System.Nullable`1<float32> V_4,
             float32 V_5,
             float32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_000b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastSwimOrder()
    IL_0010:  stloc.1
    IL_0011:  ldloca.s   V_1
    IL_0013:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0018:  brfalse.s  IL_0095

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0020:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0025:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastSwimOrder()
    IL_002a:  stloc.1
    IL_002b:  ldloca.s   V_1
    IL_002d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0032:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0037:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
    IL_003c:  brfalse.s  IL_0095

    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0044:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0049:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastSwimOrder()
    IL_004e:  stloc.1
    IL_004f:  ldloca.s   V_1
    IL_0051:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0056:  stloc.3
    IL_0057:  ldloca.s   V_3
    IL_0059:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_005e:  ldc.r4     0.99000001
    IL_0063:  bgt.s      IL_006c

    IL_0065:  ldc.r4     1.
    IL_006a:  br.s       IL_0071

    IL_006c:  ldc.r4     1.75
    IL_0071:  stloc.2
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0079:  ldarg.0
    IL_007a:  ldfld      float32 Game.ComponentFishModel::m_swimAnimationSpeed
    IL_007f:  ldloc.2
    IL_0080:  mul
    IL_0081:  ldarg.1
    IL_0082:  mul
    IL_0083:  add
    IL_0084:  ldc.r4     1000.
    IL_0089:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_008e:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_0093:  br.s       IL_00ba

    IL_0095:  ldarg.0
    IL_0096:  ldarg.0
    IL_0097:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_009c:  ldc.r4     0.15000001
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      float32 Game.ComponentFishModel::m_swimAnimationSpeed
    IL_00a7:  mul
    IL_00a8:  ldarg.1
    IL_00a9:  mul
    IL_00aa:  add
    IL_00ab:  ldc.r4     1000.
    IL_00b0:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_00b5:  call       instance void Game.ComponentCreatureModel::set_MovementAnimationPhase(float32)
    IL_00ba:  ldarg.0
    IL_00bb:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentFishModel::get_BendOrder()
    IL_00c0:  stloc.s    V_4
    IL_00c2:  ldloca.s   V_4
    IL_00c4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_00c9:  brfalse.s  IL_012b

    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      bool Game.ComponentFishModel::m_hasVerticalTail
    IL_00d1:  brfalse.s  IL_00ff

    IL_00d3:  ldarg.0
    IL_00d4:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_00d9:  ldc.r4     0.0
    IL_00de:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00e3:  ldarg.0
    IL_00e4:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_00e9:  ldarg.0
    IL_00ea:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentFishModel::get_BendOrder()
    IL_00ef:  stloc.s    V_4
    IL_00f1:  ldloca.s   V_4
    IL_00f3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00f8:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00fd:  br.s       IL_017a

    IL_00ff:  ldarg.0
    IL_0100:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_0105:  ldarg.0
    IL_0106:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentFishModel::get_BendOrder()
    IL_010b:  stloc.s    V_4
    IL_010d:  ldloca.s   V_4
    IL_010f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0114:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0119:  ldarg.0
    IL_011a:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_011f:  ldc.r4     0.0
    IL_0124:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0129:  br.s       IL_017a

    IL_012b:  ldarg.0
    IL_012c:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_0131:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0136:  dup
    IL_0137:  ldind.r4
    IL_0138:  ldc.r4     2.
    IL_013d:  ldarg.0
    IL_013e:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0143:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0148:  callvirt   instance float32 Game.ComponentLocomotion::get_TurnSpeed()
    IL_014d:  mul
    IL_014e:  ldarg.1
    IL_014f:  mul
    IL_0150:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0155:  ldarg.0
    IL_0156:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_015b:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0160:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LastTurnOrder()
    IL_0165:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_016a:  neg
    IL_016b:  ldarg.0
    IL_016c:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_0171:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0176:  sub
    IL_0177:  mul
    IL_0178:  add
    IL_0179:  stind.r4
    IL_017a:  ldarg.0
    IL_017b:  call       instance float32 Game.ComponentFishModel::get_DigInOrder()
    IL_0180:  ldarg.0
    IL_0181:  ldfld      float32 Game.ComponentFishModel::m_digInDepth
    IL_0186:  ble.un.s   IL_01cf

    IL_0188:  ldarg.0
    IL_0189:  call       instance float32 Game.ComponentFishModel::get_DigInOrder()
    IL_018e:  ldarg.0
    IL_018f:  ldfld      float32 Game.ComponentFishModel::m_digInDepth
    IL_0194:  sub
    IL_0195:  ldc.r4     1.5
    IL_019a:  ldarg.1
    IL_019b:  mul
    IL_019c:  ldc.r4     1.
    IL_01a1:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_01a6:  mul
    IL_01a7:  stloc.s    V_5
    IL_01a9:  ldarg.0
    IL_01aa:  ldarg.0
    IL_01ab:  ldfld      float32 Game.ComponentFishModel::m_digInDepth
    IL_01b0:  ldloc.s    V_5
    IL_01b2:  add
    IL_01b3:  stfld      float32 Game.ComponentFishModel::m_digInDepth
    IL_01b8:  ldarg.0
    IL_01b9:  ldarg.0
    IL_01ba:  ldfld      float32 Game.ComponentFishModel::m_digInTailPhase
    IL_01bf:  ldc.r4     20.
    IL_01c4:  ldloc.s    V_5
    IL_01c6:  mul
    IL_01c7:  add
    IL_01c8:  stfld      float32 Game.ComponentFishModel::m_digInTailPhase
    IL_01cd:  br.s       IL_0209

    IL_01cf:  ldarg.0
    IL_01d0:  call       instance float32 Game.ComponentFishModel::get_DigInOrder()
    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      float32 Game.ComponentFishModel::m_digInDepth
    IL_01db:  bge.un.s   IL_0209

    IL_01dd:  ldarg.0
    IL_01de:  ldarg.0
    IL_01df:  ldfld      float32 Game.ComponentFishModel::m_digInDepth
    IL_01e4:  ldarg.0
    IL_01e5:  call       instance float32 Game.ComponentFishModel::get_DigInOrder()
    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      float32 Game.ComponentFishModel::m_digInDepth
    IL_01f0:  sub
    IL_01f1:  ldc.r4     5.
    IL_01f6:  ldarg.1
    IL_01f7:  mul
    IL_01f8:  ldc.r4     1.
    IL_01fd:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0202:  mul
    IL_0203:  add
    IL_0204:  stfld      float32 Game.ComponentFishModel::m_digInDepth
    IL_0209:  ldc.r4     0.75
    IL_020e:  ldarg.0
    IL_020f:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0214:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0219:  callvirt   instance float32 Game.ComponentLocomotion::get_TurnSpeed()
    IL_021e:  mul
    IL_021f:  stloc.0
    IL_0220:  ldarg.0
    IL_0221:  ldc.i4.0
    IL_0222:  call       instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
    IL_0227:  ldarg.0
    IL_0228:  call       instance bool Game.ComponentCreatureModel::get_AttackOrder()
    IL_022d:  brtrue.s   IL_0237

    IL_022f:  ldarg.0
    IL_0230:  call       instance bool Game.ComponentCreatureModel::get_FeedOrder()
    IL_0235:  brfalse.s  IL_0280

    IL_0237:  ldarg.0
    IL_0238:  ldfld      float32 Game.ComponentFishModel::m_bitingPhase
    IL_023d:  stloc.s    V_6
    IL_023f:  ldarg.0
    IL_0240:  ldarg.0
    IL_0241:  ldfld      float32 Game.ComponentFishModel::m_bitingPhase
    IL_0246:  ldloc.0
    IL_0247:  ldarg.1
    IL_0248:  mul
    IL_0249:  add
    IL_024a:  ldc.r4     1.
    IL_024f:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0254:  stfld      float32 Game.ComponentFishModel::m_bitingPhase
    IL_0259:  ldarg.0
    IL_025a:  call       instance bool Game.ComponentCreatureModel::get_AttackOrder()
    IL_025f:  brfalse.s  IL_02b1

    IL_0261:  ldloc.s    V_6
    IL_0263:  ldc.r4     0.5
    IL_0268:  bge.un.s   IL_02b1

    IL_026a:  ldarg.0
    IL_026b:  ldfld      float32 Game.ComponentFishModel::m_bitingPhase
    IL_0270:  ldc.r4     0.5
    IL_0275:  blt.un.s   IL_02b1

    IL_0277:  ldarg.0
    IL_0278:  ldc.i4.1
    IL_0279:  call       instance void Game.ComponentCreatureModel::set_IsAttackHitMoment(bool)
    IL_027e:  br.s       IL_02b1

    IL_0280:  ldarg.0
    IL_0281:  ldfld      float32 Game.ComponentFishModel::m_bitingPhase
    IL_0286:  ldc.r4     0.0
    IL_028b:  beq.s      IL_02b1

    IL_028d:  ldarg.0
    IL_028e:  ldarg.0
    IL_028f:  ldfld      float32 Game.ComponentFishModel::m_bitingPhase
    IL_0294:  ldloc.0
    IL_0295:  ldarg.1
    IL_0296:  mul
    IL_0297:  add
    IL_0298:  ldc.r4     1.
    IL_029d:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02a2:  ldc.r4     1.
    IL_02a7:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_02ac:  stfld      float32 Game.ComponentFishModel::m_bitingPhase
    IL_02b1:  ldarg.0
    IL_02b2:  ldc.i4.0
    IL_02b3:  call       instance void Game.ComponentCreatureModel::set_AttackOrder(bool)
    IL_02b8:  ldarg.0
    IL_02b9:  ldc.i4.0
    IL_02ba:  call       instance void Game.ComponentCreatureModel::set_FeedOrder(bool)
    IL_02bf:  ldarg.0
    IL_02c0:  ldloca.s   V_4
    IL_02c2:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_02c8:  ldloc.s    V_4
    IL_02ca:  call       instance void Game.ComponentFishModel::set_BendOrder(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_02cf:  ldarg.0
    IL_02d0:  ldc.r4     0.0
    IL_02d5:  call       instance void Game.ComponentFishModel::set_DigInOrder(float32)
    IL_02da:  ldarg.0
    IL_02db:  ldarg.1
    IL_02dc:  call       instance void Game.ComponentCreatureModel::Update(float32)
    IL_02e1:  ret
  } // end of method ComponentFishModel::Update

  .method public hidebysig virtual instance void 
          Animate() cil managed
  {
    // 代码大小       1206 (0x4b6)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Quaternion V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Matrix V_7,
             valuetype [Engine]Engine.Matrix V_8,
             float32 V_9,
             valuetype [Engine]Engine.Vector3 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_0010:  stloc.1
    IL_0011:  ldloca.s   V_1
    IL_0013:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Quaternion::ToYawPitchRoll()
    IL_0018:  stloc.0
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_001f:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0024:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0029:  ldc.r4     0.0
    IL_002e:  ble.un     IL_03b1

    IL_0033:  ldarg.0
    IL_0034:  ldfld      bool Game.ComponentFishModel::m_hasVerticalTail
    IL_0039:  brfalse    IL_0163

    IL_003e:  ldc.r4     25.
    IL_0043:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0048:  ldc.r4     0.5
    IL_004d:  ldc.r4     6.2831855
    IL_0052:  ldarg.0
    IL_0053:  ldfld      float32 Game.ComponentFishModel::m_digInTailPhase
    IL_0058:  mul
    IL_0059:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_005e:  mul
    IL_005f:  ldarg.0
    IL_0060:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_0065:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_006a:  sub
    IL_006b:  ldc.r4     -1.
    IL_0070:  ldc.r4     1.
    IL_0075:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_007a:  mul
    IL_007b:  stloc.2
    IL_007c:  ldc.r4     30.
    IL_0081:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0086:  ldc.r4     0.5
    IL_008b:  ldc.r4     2.
    IL_0090:  ldc.r4     3.1415927
    IL_0095:  ldarg.0
    IL_0096:  ldfld      float32 Game.ComponentFishModel::m_digInTailPhase
    IL_009b:  ldc.r4     0.25
    IL_00a0:  sub
    IL_00a1:  ldc.r4     0.0
    IL_00a6:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00ab:  mul
    IL_00ac:  mul
    IL_00ad:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00b2:  mul
    IL_00b3:  ldarg.0
    IL_00b4:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_00b9:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00be:  sub
    IL_00bf:  ldc.r4     -1.
    IL_00c4:  ldc.r4     1.
    IL_00c9:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00ce:  mul
    IL_00cf:  stloc.3
    IL_00d0:  ldc.r4     25.
    IL_00d5:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00da:  ldc.r4     0.5
    IL_00df:  ldc.r4     6.2831855
    IL_00e4:  ldarg.0
    IL_00e5:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_00ea:  mul
    IL_00eb:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00f0:  mul
    IL_00f1:  ldarg.0
    IL_00f2:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_00f7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00fc:  sub
    IL_00fd:  ldc.r4     -1.
    IL_0102:  ldc.r4     1.
    IL_0107:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_010c:  mul
    IL_010d:  stloc.s    V_4
    IL_010f:  ldc.r4     30.
    IL_0114:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0119:  ldc.r4     0.5
    IL_011e:  ldc.r4     6.2831855
    IL_0123:  ldarg.0
    IL_0124:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_0129:  ldc.r4     0.25
    IL_012e:  sub
    IL_012f:  ldc.r4     0.0
    IL_0134:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0139:  mul
    IL_013a:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_013f:  mul
    IL_0140:  ldarg.0
    IL_0141:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_0146:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_014b:  sub
    IL_014c:  ldc.r4     -1.
    IL_0151:  ldc.r4     1.
    IL_0156:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_015b:  mul
    IL_015c:  stloc.s    V_5
    IL_015e:  br         IL_0253

    IL_0163:  ldc.r4     25.
    IL_0168:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_016d:  ldc.r4     0.5
    IL_0172:  ldc.r4     6.2831855
    IL_0177:  ldarg.0
    IL_0178:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_017d:  ldarg.0
    IL_017e:  ldfld      float32 Game.ComponentFishModel::m_digInTailPhase
    IL_0183:  add
    IL_0184:  mul
    IL_0185:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_018a:  mul
    IL_018b:  ldarg.0
    IL_018c:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_0191:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0196:  sub
    IL_0197:  ldc.r4     -1.
    IL_019c:  ldc.r4     1.
    IL_01a1:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_01a6:  mul
    IL_01a7:  stloc.2
    IL_01a8:  ldc.r4     30.
    IL_01ad:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_01b2:  ldc.r4     0.5
    IL_01b7:  ldc.r4     2.
    IL_01bc:  ldc.r4     3.1415927
    IL_01c1:  ldarg.0
    IL_01c2:  call       instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
    IL_01c7:  ldarg.0
    IL_01c8:  ldfld      float32 Game.ComponentFishModel::m_digInTailPhase
    IL_01cd:  add
    IL_01ce:  ldc.r4     0.25
    IL_01d3:  sub
    IL_01d4:  ldc.r4     0.0
    IL_01d9:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_01de:  mul
    IL_01df:  mul
    IL_01e0:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01e5:  mul
    IL_01e6:  ldarg.0
    IL_01e7:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_01ec:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01f1:  sub
    IL_01f2:  ldc.r4     -1.
    IL_01f7:  ldc.r4     1.
    IL_01fc:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0201:  mul
    IL_0202:  stloc.3
    IL_0203:  ldc.r4     25.
    IL_0208:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_020d:  ldarg.0
    IL_020e:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_0213:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0218:  neg
    IL_0219:  ldc.r4     -1.
    IL_021e:  ldc.r4     1.
    IL_0223:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0228:  mul
    IL_0229:  stloc.s    V_4
    IL_022b:  ldc.r4     30.
    IL_0230:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0235:  ldarg.0
    IL_0236:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFishModel::m_tailTurn
    IL_023b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0240:  neg
    IL_0241:  ldc.r4     -1.
    IL_0246:  ldc.r4     1.
    IL_024b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0250:  mul
    IL_0251:  stloc.s    V_5
    IL_0253:  ldc.r4     0.0
    IL_0258:  stloc.s    V_6
    IL_025a:  ldarg.0
    IL_025b:  ldfld      float32 Game.ComponentFishModel::m_bitingPhase
    IL_0260:  ldc.r4     0.0
    IL_0265:  ble.un.s   IL_0286

    IL_0267:  ldc.r4     30.
    IL_026c:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0271:  neg
    IL_0272:  ldc.r4     3.1415927
    IL_0277:  ldarg.0
    IL_0278:  ldfld      float32 Game.ComponentFishModel::m_bitingPhase
    IL_027d:  mul
    IL_027e:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0283:  mul
    IL_0284:  stloc.s    V_6
    IL_0286:  ldarg.0
    IL_0287:  ldarg.0
    IL_0288:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_bodyBone
    IL_028d:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0292:  ldloc.0
    IL_0293:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0298:  ldc.r4     0.0
    IL_029d:  ldc.r4     0.0
    IL_02a2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_02a7:  ldarg.0
    IL_02a8:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_02ad:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02b2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_02b7:  ldc.r4     0.0
    IL_02bc:  ldarg.0
    IL_02bd:  ldfld      float32 Game.ComponentFishModel::m_digInDepth
    IL_02c2:  neg
    IL_02c3:  ldc.r4     0.0
    IL_02c8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02cd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02d2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_02d7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02dc:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_02e1:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_02e6:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_02eb:  stloc.s    V_7
    IL_02ed:  ldloc.2
    IL_02ee:  ldc.r4     0.0
    IL_02f3:  beq.s      IL_0304

    IL_02f5:  ldloc.s    V_7
    IL_02f7:  ldloc.2
    IL_02f8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_02fd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0302:  stloc.s    V_7
    IL_0304:  ldloc.s    V_4
    IL_0306:  ldc.r4     0.0
    IL_030b:  beq.s      IL_031d

    IL_030d:  ldloc.s    V_7
    IL_030f:  ldloc.s    V_4
    IL_0311:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0316:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_031b:  stloc.s    V_7
    IL_031d:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0322:  stloc.s    V_8
    IL_0324:  ldloc.3
    IL_0325:  ldc.r4     0.0
    IL_032a:  beq.s      IL_033b

    IL_032c:  ldloc.s    V_8
    IL_032e:  ldloc.3
    IL_032f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0334:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0339:  stloc.s    V_8
    IL_033b:  ldloc.s    V_5
    IL_033d:  ldc.r4     0.0
    IL_0342:  beq.s      IL_0354

    IL_0344:  ldloc.s    V_8
    IL_0346:  ldloc.s    V_5
    IL_0348:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_034d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0352:  stloc.s    V_8
    IL_0354:  ldarg.0
    IL_0355:  ldarg.0
    IL_0356:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_tail1Bone
    IL_035b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0360:  ldloc.s    V_7
    IL_0362:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0367:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_036c:  ldarg.0
    IL_036d:  ldarg.0
    IL_036e:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_tail2Bone
    IL_0373:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0378:  ldloc.s    V_8
    IL_037a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_037f:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0384:  ldarg.0
    IL_0385:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_jawBone
    IL_038a:  brfalse    IL_04af

    IL_038f:  ldarg.0
    IL_0390:  ldarg.0
    IL_0391:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_jawBone
    IL_0396:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_039b:  ldloc.s    V_6
    IL_039d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_03a2:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_03a7:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_03ac:  br         IL_04af

    IL_03b1:  ldarg.0
    IL_03b2:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_03b7:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03bc:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_03c1:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_03c6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03cb:  ldarg.0
    IL_03cc:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_03d1:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03d6:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_03db:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_03e0:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03e5:  sub
    IL_03e6:  stloc.s    V_9
    IL_03e8:  ldarg.0
    IL_03e9:  ldfld      class Game.ComponentCreature Game.ComponentCreatureModel::m_componentCreature
    IL_03ee:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_03f3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_03f8:  ldc.r4     1.
    IL_03fd:  ldloc.s    V_9
    IL_03ff:  mul
    IL_0400:  ldarg.0
    IL_0401:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_0406:  mul
    IL_0407:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_040c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0411:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0416:  stloc.s    V_10
    IL_0418:  ldarg.0
    IL_0419:  ldarg.0
    IL_041a:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_bodyBone
    IL_041f:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0424:  ldloc.0
    IL_0425:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_042a:  ldc.r4     0.0
    IL_042f:  ldc.r4     3.1415927
    IL_0434:  ldarg.0
    IL_0435:  call       instance float32 Game.ComponentCreatureModel::get_DeathPhase()
    IL_043a:  mul
    IL_043b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_0440:  ldloc.s    V_10
    IL_0442:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0447:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_044c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0451:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0456:  ldarg.0
    IL_0457:  ldarg.0
    IL_0458:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_tail1Bone
    IL_045d:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0462:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0467:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_046c:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0471:  ldarg.0
    IL_0472:  ldarg.0
    IL_0473:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_tail2Bone
    IL_0478:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_047d:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0482:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0487:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_048c:  ldarg.0
    IL_048d:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_jawBone
    IL_0492:  brfalse.s  IL_04af

    IL_0494:  ldarg.0
    IL_0495:  ldarg.0
    IL_0496:  ldfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_jawBone
    IL_049b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_04a0:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_04a5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_04aa:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_04af:  ldarg.0
    IL_04b0:  call       instance void Game.ComponentCreatureModel::Animate()
    IL_04b5:  ret
  } // end of method ComponentFishModel::Animate

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentCreatureModel::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                         class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldstr      "HasVerticalTail"
    IL_000f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0014:  stfld      bool Game.ComponentFishModel::m_hasVerticalTail
    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  ldstr      "SwimAnimationSpeed"
    IL_0020:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0025:  stfld      float32 Game.ComponentFishModel::m_swimAnimationSpeed
    IL_002a:  ret
  } // end of method ComponentFishModel::Load

  .method family hidebysig virtual instance void 
          SetModel(class [Engine]Engine.Graphics.Model model) cil managed
  {
    // 代码大小       137 (0x89)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.ComponentModel::SetModel(class [Engine]Engine.Graphics.Model)
    IL_0007:  ldarg.0
    IL_0008:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_000d:  brfalse.s  IL_006c

    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0016:  ldstr      "Body"
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0021:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_bodyBone
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_002d:  ldstr      "Tail1"
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0038:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_tail1Bone
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0044:  ldstr      "Tail2"
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_004f:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_tail2Bone
    IL_0054:  ldarg.0
    IL_0055:  ldarg.0
    IL_0056:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_005b:  ldstr      "Jaw"
    IL_0060:  ldc.i4.0
    IL_0061:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0066:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_jawBone
    IL_006b:  ret

    IL_006c:  ldarg.0
    IL_006d:  ldnull
    IL_006e:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_bodyBone
    IL_0073:  ldarg.0
    IL_0074:  ldnull
    IL_0075:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_tail1Bone
    IL_007a:  ldarg.0
    IL_007b:  ldnull
    IL_007c:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_tail2Bone
    IL_0081:  ldarg.0
    IL_0082:  ldnull
    IL_0083:  stfld      class [Engine]Engine.Graphics.ModelBone Game.ComponentFishModel::m_jawBone
    IL_0088:  ret
  } // end of method ComponentFishModel::SetModel

  .method family hidebysig virtual instance valuetype [Engine]Engine.Vector3 
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
    IL_0028:  ldc.r4     1.
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
  } // end of method ComponentFishModel::CalculateEyePosition

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentCreatureModel::.ctor()
    IL_0006:  ret
  } // end of method ComponentFishModel::.ctor

  .property instance valuetype [System.Runtime]System.Nullable`1<float32>
          BendOrder()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentFishModel::get_BendOrder()
    .set instance void Game.ComponentFishModel::set_BendOrder(valuetype [System.Runtime]System.Nullable`1<float32>)
  } // end of property ComponentFishModel::BendOrder
  .property instance float32 DigInOrder()
  {
    .get instance float32 Game.ComponentFishModel::get_DigInOrder()
    .set instance void Game.ComponentFishModel::set_DigInOrder(float32)
  } // end of property ComponentFishModel::DigInOrder
} // end of class Game.ComponentFishModel