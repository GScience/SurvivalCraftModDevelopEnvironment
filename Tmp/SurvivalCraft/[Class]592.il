.class public auto ansi beforefieldinit Game.SubsystemCrossbowBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemProjectiles m_subsystemProjectiles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> m_aimStartTimes
  .field private valuetype Game.ArrowBlock/ArrowType[] m_supportedArrowTypes
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemCrossbowBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnEditInventoryItem(class Game.IInventory inventory,
                              int32 slotIndex,
                              class Game.ComponentPlayer componentPlayer) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.3
    IL_0001:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0006:  ldarg.3
    IL_0007:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_000c:  callvirt   instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    IL_0011:  brfalse.s  IL_0016

    IL_0013:  ldnull
    IL_0014:  br.s       IL_001d

    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  newobj     instance void Game.CrossbowWidget::.ctor(class Game.IInventory,
                                                                  int32)
    IL_001d:  callvirt   instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_0022:  ldc.i4.1
    IL_0023:  ret
  } // end of method SubsystemCrossbowBlockBehavior::OnEditInventoryItem

  .method public hidebysig virtual instance bool 
          OnAim(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner,
                valuetype Game.AimState state) cil managed
  {
    // 代码大小       1137 (0x471)
    .maxstack  7
    .locals init (class Game.IInventory V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             float64 V_7,
             float32 V_8,
             float32 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             class Game.ComponentFirstPersonModel V_12,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_13,
             int32 V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             int32 V_17,
             valuetype [Engine]Engine.Matrix V_18,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_19)
    IL_0000:  ldarg.3
    IL_0001:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse    IL_046f

    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  blt        IL_046f

    IL_001b:  ldloc.0
    IL_001c:  ldloc.1
    IL_001d:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0022:  stloc.2
    IL_0023:  ldloc.0
    IL_0024:  ldloc.1
    IL_0025:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_002a:  stloc.3
    IL_002b:  ldloc.2
    IL_002c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0031:  stloc.s    V_4
    IL_0033:  ldloc.2
    IL_0034:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0039:  stloc.s    V_5
    IL_003b:  ldloc.s    V_4
    IL_003d:  ldc.i4     0xc8
    IL_0042:  bne.un     IL_046f

    IL_0047:  ldloc.3
    IL_0048:  ldc.i4.0
    IL_0049:  ble        IL_046f

    IL_004e:  ldloc.s    V_5
    IL_0050:  call       int32 Game.CrossbowBlock::GetDraw(int32)
    IL_0055:  stloc.s    V_6
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemCrossbowBlockBehavior::m_aimStartTimes
    IL_005d:  ldarg.3
    IL_005e:  ldloca.s   V_7
    IL_0060:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::TryGetValue(!0,
                                                                                                                                                         !1&)
    IL_0065:  brtrue.s   IL_0082

    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.SubsystemTime Game.SubsystemCrossbowBlockBehavior::m_subsystemTime
    IL_006d:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0072:  stloc.s    V_7
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemCrossbowBlockBehavior::m_aimStartTimes
    IL_007a:  ldarg.3
    IL_007b:  ldloc.s    V_7
    IL_007d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::set_Item(!0,
                                                                                                                                                      !1)
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.SubsystemTime Game.SubsystemCrossbowBlockBehavior::m_subsystemTime
    IL_0088:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_008d:  ldloc.s    V_7
    IL_008f:  sub
    IL_0090:  conv.r4
    IL_0091:  stloc.s    V_8
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.SubsystemTime Game.SubsystemCrossbowBlockBehavior::m_subsystemTime
    IL_0099:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_009e:  ldc.r8     1000.
    IL_00a7:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00ac:  conv.r4
    IL_00ad:  stloc.s    V_9
    IL_00af:  ldarg.3
    IL_00b0:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_00b5:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00ba:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_00bf:  brtrue.s   IL_00c8

    IL_00c1:  ldc.r4     2.9999999e-002
    IL_00c6:  br.s       IL_00cd

    IL_00c8:  ldc.r4     9.9999998e-003
    IL_00cd:  ldc.r4     0.15000001
    IL_00d2:  ldloc.s    V_8
    IL_00d4:  ldc.r4     2.5
    IL_00d9:  sub
    IL_00da:  conv.r4
    IL_00db:  ldc.r4     6.
    IL_00e0:  div
    IL_00e1:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00e6:  mul
    IL_00e7:  add
    IL_00e8:  ldloca.s   V_11
    IL_00ea:  initobj    [Engine]Engine.Vector3
    IL_00f0:  ldloca.s   V_11
    IL_00f2:  ldloc.s    V_9
    IL_00f4:  ldc.r4     2.
    IL_00f9:  ldc.i4.3
    IL_00fa:  ldc.r4     2.
    IL_00ff:  ldc.r4     0.5
    IL_0104:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0109:  stfld      float32 [Engine]Engine.Vector3::X
    IL_010e:  ldloca.s   V_11
    IL_0110:  ldloc.s    V_9
    IL_0112:  ldc.r4     100.
    IL_0117:  add
    IL_0118:  ldc.r4     2.
    IL_011d:  ldc.i4.3
    IL_011e:  ldc.r4     2.
    IL_0123:  ldc.r4     0.5
    IL_0128:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_012d:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0132:  ldloca.s   V_11
    IL_0134:  ldloc.s    V_9
    IL_0136:  ldc.r4     200.
    IL_013b:  add
    IL_013c:  ldc.r4     2.
    IL_0141:  ldc.i4.3
    IL_0142:  ldc.r4     2.
    IL_0147:  ldc.r4     0.5
    IL_014c:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0151:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0156:  ldloc.s    V_11
    IL_0158:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015d:  stloc.s    V_10
    IL_015f:  ldarg.2
    IL_0160:  ldloc.s    V_10
    IL_0162:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0167:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_016c:  starg.s    direction
    IL_016e:  ldarg.s    state
    IL_0170:  brtrue     IL_0251

    IL_0175:  ldloc.s    V_8
    IL_0177:  ldc.r4     10.
    IL_017c:  blt.un.s   IL_0190

    IL_017e:  ldarg.3
    IL_017f:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0184:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0189:  callvirt   instance void Game.ComponentCreatureSounds::PlayMoanSound()
    IL_018e:  ldc.i4.1
    IL_018f:  ret

    IL_0190:  ldarg.3
    IL_0191:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0196:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFirstPersonModel>()
    IL_019b:  stloc.s    V_12
    IL_019d:  ldloc.s    V_12
    IL_019f:  brfalse.s  IL_01ef

    IL_01a1:  ldarg.3
    IL_01a2:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_01a7:  dup
    IL_01a8:  brtrue.s   IL_01ad

    IL_01aa:  pop
    IL_01ab:  br.s       IL_01b9

    IL_01ad:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_01b2:  ldarg.1
    IL_01b3:  ldarg.2
    IL_01b4:  callvirt   instance void Game.ComponentGui::ShowAimingSights(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
    IL_01b9:  ldloc.s    V_12
    IL_01bb:  ldc.r4     -0.22
    IL_01c0:  ldc.r4     0.15000001
    IL_01c5:  ldc.r4     0.1
    IL_01ca:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01cf:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_01d4:  ldloc.s    V_12
    IL_01d6:  ldc.r4     -0.69999999
    IL_01db:  ldc.r4     0.0
    IL_01e0:  ldc.r4     0.0
    IL_01e5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ea:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_01ef:  ldarg.3
    IL_01f0:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_01f5:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_01fa:  ldc.r4     1.3
    IL_01ff:  callvirt   instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
    IL_0204:  ldarg.3
    IL_0205:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_020a:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_020f:  ldc.r4     -7.9999998e-002
    IL_0214:  ldc.r4     -0.1
    IL_0219:  ldc.r4     7.e-002
    IL_021e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0223:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_0228:  ldarg.3
    IL_0229:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_022e:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0233:  ldc.r4     -1.55
    IL_0238:  ldc.r4     0.0
    IL_023d:  ldc.r4     0.0
    IL_0242:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0247:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_024c:  br         IL_046f

    IL_0251:  ldarg.s    state
    IL_0253:  ldc.i4.1
    IL_0254:  bne.un.s   IL_0268

    IL_0256:  ldarg.0
    IL_0257:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemCrossbowBlockBehavior::m_aimStartTimes
    IL_025c:  ldarg.3
    IL_025d:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_0262:  pop
    IL_0263:  br         IL_046f

    IL_0268:  ldarg.s    state
    IL_026a:  ldc.i4.2
    IL_026b:  bne.un     IL_046f

    IL_0270:  ldloc.s    V_5
    IL_0272:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.CrossbowBlock::GetArrowType(int32)
    IL_0277:  stloc.s    V_13
    IL_0279:  ldloc.s    V_6
    IL_027b:  ldc.i4.s   15
    IL_027d:  beq.s      IL_02a4

    IL_027f:  ldarg.3
    IL_0280:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0285:  dup
    IL_0286:  brtrue.s   IL_028e

    IL_0288:  pop
    IL_0289:  br         IL_03ed

    IL_028e:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0293:  ldstr      "Draw the crossbow first"
    IL_0298:  ldc.i4.1
    IL_0299:  ldc.i4.0
    IL_029a:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_029f:  br         IL_03ed

    IL_02a4:  ldloca.s   V_13
    IL_02a6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_02ab:  brtrue.s   IL_02d2

    IL_02ad:  ldarg.3
    IL_02ae:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_02b3:  dup
    IL_02b4:  brtrue.s   IL_02bc

    IL_02b6:  pop
    IL_02b7:  br         IL_03ed

    IL_02bc:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_02c1:  ldstr      "Load a bolt first"
    IL_02c6:  ldc.i4.1
    IL_02c7:  ldc.i4.0
    IL_02c8:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02cd:  br         IL_03ed

    IL_02d2:  ldarg.3
    IL_02d3:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_02d8:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_02dd:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_02e2:  ldarg.3
    IL_02e3:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_02e8:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02ed:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_02f2:  stloc.s    V_18
    IL_02f4:  ldloca.s   V_18
    IL_02f6:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_02fb:  ldc.r4     0.30000001
    IL_0300:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0305:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_030a:  ldarg.3
    IL_030b:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0310:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0315:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_031a:  stloc.s    V_18
    IL_031c:  ldloca.s   V_18
    IL_031e:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0323:  ldc.r4     0.2
    IL_0328:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_032d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0332:  stloc.s    V_15
    IL_0334:  ldloc.s    V_15
    IL_0336:  ldarg.2
    IL_0337:  ldc.r4     10.
    IL_033c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0341:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0346:  ldloc.s    V_15
    IL_0348:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_034d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0352:  stloc.s    V_16
    IL_0354:  ldc.i4     0xc0
    IL_0359:  ldc.i4.0
    IL_035a:  ldc.i4.0
    IL_035b:  ldloca.s   V_13
    IL_035d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_Value()
    IL_0362:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_0367:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_036c:  stloc.s    V_17
    IL_036e:  ldarg.0
    IL_036f:  ldfld      class Game.SubsystemProjectiles Game.SubsystemCrossbowBlockBehavior::m_subsystemProjectiles
    IL_0374:  ldloc.s    V_17
    IL_0376:  ldloc.s    V_15
    IL_0378:  ldc.r4     40.
    IL_037d:  ldloc.s    V_16
    IL_037f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0384:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0389:  ldarg.3
    IL_038a:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_038f:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_0394:  brfalse.s  IL_03ed

    IL_0396:  ldloc.s    V_5
    IL_0398:  ldloca.s   V_19
    IL_039a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>
    IL_03a0:  ldloc.s    V_19
    IL_03a2:  call       int32 Game.CrossbowBlock::SetArrowType(int32,
                                                                valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>)
    IL_03a7:  stloc.s    V_5
    IL_03a9:  ldarg.0
    IL_03aa:  ldfld      class Game.SubsystemAudio Game.SubsystemCrossbowBlockBehavior::m_subsystemAudio
    IL_03af:  ldstr      "Audio/Bow"
    IL_03b4:  ldc.r4     1.
    IL_03b9:  ldarg.0
    IL_03ba:  ldfld      class Game.Random Game.SubsystemCrossbowBlockBehavior::m_random
    IL_03bf:  ldc.r4     -0.1
    IL_03c4:  ldc.r4     0.1
    IL_03c9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_03ce:  ldarg.3
    IL_03cf:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_03d4:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_03d9:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_03de:  ldc.r4     3.
    IL_03e3:  ldc.r4     5.0000001e-002
    IL_03e8:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_03ed:  ldloc.0
    IL_03ee:  ldloc.1
    IL_03ef:  ldc.i4.1
    IL_03f0:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_03f5:  pop
    IL_03f6:  ldloc.s    V_4
    IL_03f8:  ldc.i4.0
    IL_03f9:  ldloc.s    V_5
    IL_03fb:  ldc.i4.0
    IL_03fc:  call       int32 Game.CrossbowBlock::SetDraw(int32,
                                                           int32)
    IL_0401:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0406:  stloc.s    V_14
    IL_0408:  ldloc.0
    IL_0409:  ldloc.1
    IL_040a:  ldloc.s    V_14
    IL_040c:  ldc.i4.1
    IL_040d:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0412:  ldloc.s    V_6
    IL_0414:  ldc.i4.0
    IL_0415:  ble.s      IL_0462

    IL_0417:  ldarg.3
    IL_0418:  ldc.i4.1
    IL_0419:  callvirt   instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_041e:  ldarg.0
    IL_041f:  ldfld      class Game.SubsystemAudio Game.SubsystemCrossbowBlockBehavior::m_subsystemAudio
    IL_0424:  ldstr      "Audio/CrossbowBoing"
    IL_0429:  ldc.r4     1.
    IL_042e:  ldarg.0
    IL_042f:  ldfld      class Game.Random Game.SubsystemCrossbowBlockBehavior::m_random
    IL_0434:  ldc.r4     -0.1
    IL_0439:  ldc.r4     0.1
    IL_043e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0443:  ldarg.3
    IL_0444:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0449:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_044e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0453:  ldc.r4     3.
    IL_0458:  ldc.r4     0.0
    IL_045d:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0462:  ldarg.0
    IL_0463:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemCrossbowBlockBehavior::m_aimStartTimes
    IL_0468:  ldarg.3
    IL_0469:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_046e:  pop
    IL_046f:  ldc.i4.0
    IL_0470:  ret
  } // end of method SubsystemCrossbowBlockBehavior::OnAim

  .method public hidebysig virtual instance int32 
          GetProcessInventoryItemCapacity(class Game.IInventory inventory,
                                          int32 slotIndex,
                                          int32 'value') cil managed
  {
    // 代码大小       84 (0x54)
    .maxstack  2
    .locals init (valuetype Game.ArrowBlock/ArrowType V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_1,
             int32 V_2)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  ldarg.3
    IL_0007:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000c:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_0011:  stloc.0
    IL_0012:  ldc.i4     0xc0
    IL_0017:  bne.un.s   IL_0052

    IL_0019:  ldarg.0
    IL_001a:  ldfld      valuetype Game.ArrowBlock/ArrowType[] Game.SubsystemCrossbowBlockBehavior::m_supportedArrowTypes
    IL_001f:  ldloc.0
    IL_0020:  call       bool [System.Linq]System.Linq.Enumerable::Contains<valuetype Game.ArrowBlock/ArrowType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                 !!0)
    IL_0025:  brfalse.s  IL_0052

    IL_0027:  ldarg.1
    IL_0028:  ldarg.2
    IL_0029:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_002e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0033:  dup
    IL_0034:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.CrossbowBlock::GetArrowType(int32)
    IL_0039:  stloc.1
    IL_003a:  call       int32 Game.CrossbowBlock::GetDraw(int32)
    IL_003f:  stloc.2
    IL_0040:  ldloca.s   V_1
    IL_0042:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_0047:  brtrue.s   IL_0050

    IL_0049:  ldloc.2
    IL_004a:  ldc.i4.s   15
    IL_004c:  bne.un.s   IL_0050

    IL_004e:  ldc.i4.1
    IL_004f:  ret

    IL_0050:  ldc.i4.0
    IL_0051:  ret

    IL_0052:  ldc.i4.0
    IL_0053:  ret
  } // end of method SubsystemCrossbowBlockBehavior::GetProcessInventoryItemCapacity

  .method public hidebysig virtual instance void 
          ProcessInventoryItem(class Game.IInventory inventory,
                               int32 slotIndex,
                               int32 'value',
                               int32 count,
                               int32 processCount,
                               [out] int32& processedValue,
                               [out] int32& processedCount) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  6
    .locals init (valuetype Game.ArrowBlock/ArrowType V_0,
             int32 V_1)
    IL_0000:  ldarg.s    processCount
    IL_0002:  ldc.i4.1
    IL_0003:  bne.un.s   IL_004f

    IL_0005:  ldarg.3
    IL_0006:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000b:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.1
    IL_0012:  ldarg.2
    IL_0013:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0018:  call       int32 Game.Terrain::ExtractData(int32)
    IL_001d:  stloc.1
    IL_001e:  ldarg.s    processedValue
    IL_0020:  ldc.i4.0
    IL_0021:  stind.i4
    IL_0022:  ldarg.s    processedCount
    IL_0024:  ldc.i4.0
    IL_0025:  stind.i4
    IL_0026:  ldarg.1
    IL_0027:  ldarg.2
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_002e:  pop
    IL_002f:  ldarg.1
    IL_0030:  ldarg.2
    IL_0031:  ldc.i4     0xc8
    IL_0036:  ldc.i4.0
    IL_0037:  ldloc.1
    IL_0038:  ldloc.0
    IL_0039:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::.ctor(!0)
    IL_003e:  call       int32 Game.CrossbowBlock::SetArrowType(int32,
                                                                valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>)
    IL_0043:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0048:  ldc.i4.1
    IL_0049:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_004e:  ret

    IL_004f:  ldarg.s    processedValue
    IL_0051:  ldarg.3
    IL_0052:  stind.i4
    IL_0053:  ldarg.s    processedCount
    IL_0055:  ldarg.s    count
    IL_0057:  stind.i4
    IL_0058:  ret
  } // end of method SubsystemCrossbowBlockBehavior::ProcessInventoryItem

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemCrossbowBlockBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_001f:  stfld      class Game.SubsystemProjectiles Game.SubsystemCrossbowBlockBehavior::m_subsystemProjectiles
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0031:  stfld      class Game.SubsystemAudio Game.SubsystemCrossbowBlockBehavior::m_subsystemAudio
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_003d:  ret
  } // end of method SubsystemCrossbowBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemCrossbowBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemCrossbowBlockBehavior::m_aimStartTimes
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.3
    IL_0018:  newarr     Game.ArrowBlock/ArrowType
    IL_001d:  dup
    IL_001e:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::'32E085535BB03717F572AA256A8DBF59DA8BE00C'
    IL_0023:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0028:  stfld      valuetype Game.ArrowBlock/ArrowType[] Game.SubsystemCrossbowBlockBehavior::m_supportedArrowTypes
    IL_002d:  ldarg.0
    IL_002e:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0033:  ret
  } // end of method SubsystemCrossbowBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemCrossbowBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemCrossbowBlockBehavior::HandledBlocks
} // end of class Game.SubsystemCrossbowBlockBehavior