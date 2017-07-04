.class public auto ansi beforefieldinit Game.SubsystemBowBlockBehavior
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
  } // end of method SubsystemBowBlockBehavior::get_HandledBlocks

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
    IL_0018:  newobj     instance void Game.BowWidget::.ctor(class Game.IInventory,
                                                             int32)
    IL_001d:  callvirt   instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_0022:  ldc.i4.1
    IL_0023:  ret
  } // end of method SubsystemBowBlockBehavior::OnEditInventoryItem

  .method public hidebysig virtual instance bool 
          OnAim(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner,
                valuetype Game.AimState state) cil managed
  {
    // 代码大小       1222 (0x4c6)
    .maxstack  7
    .locals init (class Game.IInventory V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             float64 V_6,
             float32 V_7,
             float32 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             class Game.ComponentFirstPersonModel V_11,
             int32 V_12,
             int32 V_13,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_14,
             int32 V_15,
             int32 V_16,
             valuetype [Engine]Engine.Vector3 V_17,
             valuetype [Engine]Engine.Vector3 V_18,
             float32 V_19,
             int32 V_20,
             valuetype [Engine]Engine.Matrix V_21,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_22)
    IL_0000:  ldarg.3
    IL_0001:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse    IL_04c4

    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  blt        IL_04c4

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
    IL_003d:  ldc.i4     0xbf
    IL_0042:  bne.un     IL_04c4

    IL_0047:  ldloc.3
    IL_0048:  ldc.i4.0
    IL_0049:  ble        IL_04c4

    IL_004e:  ldarg.0
    IL_004f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemBowBlockBehavior::m_aimStartTimes
    IL_0054:  ldarg.3
    IL_0055:  ldloca.s   V_6
    IL_0057:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::TryGetValue(!0,
                                                                                                                                                         !1&)
    IL_005c:  brtrue.s   IL_0079

    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.SubsystemTime Game.SubsystemBowBlockBehavior::m_subsystemTime
    IL_0064:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0069:  stloc.s    V_6
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemBowBlockBehavior::m_aimStartTimes
    IL_0071:  ldarg.3
    IL_0072:  ldloc.s    V_6
    IL_0074:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::set_Item(!0,
                                                                                                                                                      !1)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.SubsystemTime Game.SubsystemBowBlockBehavior::m_subsystemTime
    IL_007f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0084:  ldloc.s    V_6
    IL_0086:  sub
    IL_0087:  conv.r4
    IL_0088:  stloc.s    V_7
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.SubsystemTime Game.SubsystemBowBlockBehavior::m_subsystemTime
    IL_0090:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0095:  ldc.r8     1000.
    IL_009e:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00a3:  conv.r4
    IL_00a4:  stloc.s    V_8
    IL_00a6:  ldarg.3
    IL_00a7:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_00ac:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00b1:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_00b6:  brtrue.s   IL_00bf

    IL_00b8:  ldc.r4     3.9999999e-002
    IL_00bd:  br.s       IL_00c4

    IL_00bf:  ldc.r4     2.e-002
    IL_00c4:  ldc.r4     0.25
    IL_00c9:  ldloc.s    V_7
    IL_00cb:  ldc.r4     2.0999999
    IL_00d0:  sub
    IL_00d1:  conv.r4
    IL_00d2:  ldc.r4     5.
    IL_00d7:  div
    IL_00d8:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00dd:  mul
    IL_00de:  add
    IL_00df:  ldloca.s   V_10
    IL_00e1:  initobj    [Engine]Engine.Vector3
    IL_00e7:  ldloca.s   V_10
    IL_00e9:  ldloc.s    V_8
    IL_00eb:  ldc.r4     2.
    IL_00f0:  ldc.i4.3
    IL_00f1:  ldc.r4     2.
    IL_00f6:  ldc.r4     0.5
    IL_00fb:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0100:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0105:  ldloca.s   V_10
    IL_0107:  ldloc.s    V_8
    IL_0109:  ldc.r4     100.
    IL_010e:  add
    IL_010f:  ldc.r4     2.
    IL_0114:  ldc.i4.3
    IL_0115:  ldc.r4     2.
    IL_011a:  ldc.r4     0.5
    IL_011f:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0124:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0129:  ldloca.s   V_10
    IL_012b:  ldloc.s    V_8
    IL_012d:  ldc.r4     200.
    IL_0132:  add
    IL_0133:  ldc.r4     2.
    IL_0138:  ldc.i4.3
    IL_0139:  ldc.r4     2.
    IL_013e:  ldc.r4     0.5
    IL_0143:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0148:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_014d:  ldloc.s    V_10
    IL_014f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0154:  stloc.s    V_9
    IL_0156:  ldarg.2
    IL_0157:  ldloc.s    V_9
    IL_0159:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0163:  starg.s    direction
    IL_0165:  ldarg.s    state
    IL_0167:  brtrue     IL_029e

    IL_016c:  ldloc.s    V_7
    IL_016e:  ldc.r4     9.
    IL_0173:  blt.un.s   IL_0187

    IL_0175:  ldarg.3
    IL_0176:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_017b:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0180:  callvirt   instance void Game.ComponentCreatureSounds::PlayMoanSound()
    IL_0185:  ldc.i4.1
    IL_0186:  ret

    IL_0187:  ldarg.3
    IL_0188:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_018d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFirstPersonModel>()
    IL_0192:  stloc.s    V_11
    IL_0194:  ldloc.s    V_11
    IL_0196:  brfalse.s  IL_01e6

    IL_0198:  ldarg.3
    IL_0199:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_019e:  dup
    IL_019f:  brtrue.s   IL_01a4

    IL_01a1:  pop
    IL_01a2:  br.s       IL_01b0

    IL_01a4:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_01a9:  ldarg.1
    IL_01aa:  ldarg.2
    IL_01ab:  callvirt   instance void Game.ComponentGui::ShowAimingSights(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
    IL_01b0:  ldloc.s    V_11
    IL_01b2:  ldc.r4     -0.1
    IL_01b7:  ldc.r4     0.15000001
    IL_01bc:  ldc.r4     0.0
    IL_01c1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01c6:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_01cb:  ldloc.s    V_11
    IL_01cd:  ldc.r4     0.0
    IL_01d2:  ldc.r4     -0.69999999
    IL_01d7:  ldc.r4     0.0
    IL_01dc:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01e1:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_01e6:  ldarg.3
    IL_01e7:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_01ec:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_01f1:  ldc.r4     1.2
    IL_01f6:  callvirt   instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
    IL_01fb:  ldarg.3
    IL_01fc:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0201:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0206:  ldc.r4     0.0
    IL_020b:  ldc.r4     0.0
    IL_0210:  ldc.r4     0.0
    IL_0215:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_021a:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_021f:  ldarg.3
    IL_0220:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0225:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_022a:  ldc.r4     0.0
    IL_022f:  ldc.r4     -0.2
    IL_0234:  ldc.r4     0.0
    IL_0239:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_023e:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_0243:  ldarg.0
    IL_0244:  ldfld      class Game.SubsystemTime Game.SubsystemBowBlockBehavior::m_subsystemTime
    IL_0249:  ldc.r8     0.10000000149011612
    IL_0252:  ldc.r8     0.0
    IL_025b:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0260:  brfalse    IL_04c4

    IL_0265:  ldloc.s    V_5
    IL_0267:  call       int32 Game.BowBlock::GetDraw(int32)
    IL_026c:  ldc.i4.1
    IL_026d:  add
    IL_026e:  ldc.i4.s   15
    IL_0270:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0275:  stloc.s    V_12
    IL_0277:  ldloc.0
    IL_0278:  ldloc.1
    IL_0279:  ldc.i4.1
    IL_027a:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_027f:  pop
    IL_0280:  ldloc.0
    IL_0281:  ldloc.1
    IL_0282:  ldloc.s    V_4
    IL_0284:  ldc.i4.0
    IL_0285:  ldloc.s    V_5
    IL_0287:  ldloc.s    V_12
    IL_0289:  call       int32 Game.BowBlock::SetDraw(int32,
                                                      int32)
    IL_028e:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0293:  ldc.i4.1
    IL_0294:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0299:  br         IL_04c4

    IL_029e:  ldarg.s    state
    IL_02a0:  ldc.i4.1
    IL_02a1:  bne.un.s   IL_02d6

    IL_02a3:  ldloc.0
    IL_02a4:  ldloc.1
    IL_02a5:  ldc.i4.1
    IL_02a6:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_02ab:  pop
    IL_02ac:  ldloc.0
    IL_02ad:  ldloc.1
    IL_02ae:  ldloc.s    V_4
    IL_02b0:  ldc.i4.0
    IL_02b1:  ldloc.s    V_5
    IL_02b3:  ldc.i4.0
    IL_02b4:  call       int32 Game.BowBlock::SetDraw(int32,
                                                      int32)
    IL_02b9:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_02be:  ldc.i4.1
    IL_02bf:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_02c4:  ldarg.0
    IL_02c5:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemBowBlockBehavior::m_aimStartTimes
    IL_02ca:  ldarg.3
    IL_02cb:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_02d0:  pop
    IL_02d1:  br         IL_04c4

    IL_02d6:  ldarg.s    state
    IL_02d8:  ldc.i4.2
    IL_02d9:  bne.un     IL_04c4

    IL_02de:  ldloc.s    V_5
    IL_02e0:  call       int32 Game.BowBlock::GetDraw(int32)
    IL_02e5:  stloc.s    V_13
    IL_02e7:  ldloc.s    V_5
    IL_02e9:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.BowBlock::GetArrowType(int32)
    IL_02ee:  stloc.s    V_14
    IL_02f0:  ldloca.s   V_14
    IL_02f2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_02f7:  brfalse    IL_0457

    IL_02fc:  ldarg.3
    IL_02fd:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0302:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0307:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_030c:  ldarg.3
    IL_030d:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0312:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0317:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_031c:  stloc.s    V_21
    IL_031e:  ldloca.s   V_21
    IL_0320:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0325:  ldc.r4     0.30000001
    IL_032a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_032f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0334:  ldarg.3
    IL_0335:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_033a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_033f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0344:  stloc.s    V_21
    IL_0346:  ldloca.s   V_21
    IL_0348:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_034d:  ldc.r4     0.2
    IL_0352:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0357:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_035c:  stloc.s    V_17
    IL_035e:  ldloc.s    V_17
    IL_0360:  ldarg.2
    IL_0361:  ldc.r4     10.
    IL_0366:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_036b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0370:  ldloc.s    V_17
    IL_0372:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0377:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_037c:  stloc.s    V_18
    IL_037e:  ldc.r4     0.0
    IL_0383:  ldc.r4     35.
    IL_0388:  ldloc.s    V_13
    IL_038a:  conv.r4
    IL_038b:  ldc.r4     15.
    IL_0390:  div
    IL_0391:  ldc.r4     0.5
    IL_0396:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_039b:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03a0:  stloc.s    V_19
    IL_03a2:  ldarg.3
    IL_03a3:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_03a8:  brfalse.s  IL_03d1

    IL_03aa:  ldloc.s    V_19
    IL_03ac:  ldc.r4     0.5
    IL_03b1:  ldarg.3
    IL_03b2:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_03b7:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_03bc:  callvirt   instance float32 Game.ComponentLevel::get_StrengthFactor()
    IL_03c1:  ldc.r4     1.
    IL_03c6:  sub
    IL_03c7:  mul
    IL_03c8:  ldc.r4     1.
    IL_03cd:  add
    IL_03ce:  mul
    IL_03cf:  stloc.s    V_19
    IL_03d1:  ldc.i4     0xc0
    IL_03d6:  ldc.i4.0
    IL_03d7:  ldc.i4.0
    IL_03d8:  ldloca.s   V_14
    IL_03da:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_Value()
    IL_03df:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_03e4:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_03e9:  stloc.s    V_20
    IL_03eb:  ldarg.0
    IL_03ec:  ldfld      class Game.SubsystemProjectiles Game.SubsystemBowBlockBehavior::m_subsystemProjectiles
    IL_03f1:  ldloc.s    V_20
    IL_03f3:  ldloc.s    V_17
    IL_03f5:  ldloc.s    V_18
    IL_03f7:  ldloc.s    V_19
    IL_03f9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_03fe:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0403:  ldarg.3
    IL_0404:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0409:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_040e:  brfalse.s  IL_0474

    IL_0410:  ldloc.s    V_5
    IL_0412:  ldloca.s   V_22
    IL_0414:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>
    IL_041a:  ldloc.s    V_22
    IL_041c:  call       int32 Game.BowBlock::SetArrowType(int32,
                                                           valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>)
    IL_0421:  stloc.s    V_5
    IL_0423:  ldarg.0
    IL_0424:  ldfld      class Game.SubsystemAudio Game.SubsystemBowBlockBehavior::m_subsystemAudio
    IL_0429:  ldstr      "Audio/Bow"
    IL_042e:  ldc.r4     1.
    IL_0433:  ldarg.0
    IL_0434:  ldfld      class Game.Random Game.SubsystemBowBlockBehavior::m_random
    IL_0439:  ldc.r4     -0.1
    IL_043e:  ldc.r4     0.1
    IL_0443:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0448:  ldloc.s    V_17
    IL_044a:  ldc.r4     3.
    IL_044f:  ldc.i4.1
    IL_0450:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0455:  br.s       IL_0474

    IL_0457:  ldarg.3
    IL_0458:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_045d:  dup
    IL_045e:  brtrue.s   IL_0463

    IL_0460:  pop
    IL_0461:  br.s       IL_0474

    IL_0463:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0468:  ldstr      "Load an arrow first"
    IL_046d:  ldc.i4.1
    IL_046e:  ldc.i4.0
    IL_046f:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0474:  ldloc.0
    IL_0475:  ldloc.1
    IL_0476:  ldc.i4.1
    IL_0477:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_047c:  pop
    IL_047d:  ldloc.s    V_4
    IL_047f:  ldc.i4.0
    IL_0480:  ldloc.s    V_5
    IL_0482:  ldc.i4.0
    IL_0483:  call       int32 Game.BowBlock::SetDraw(int32,
                                                      int32)
    IL_0488:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_048d:  stloc.s    V_15
    IL_048f:  ldloc.0
    IL_0490:  ldloc.1
    IL_0491:  ldloc.s    V_15
    IL_0493:  ldc.i4.1
    IL_0494:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0499:  ldc.i4.0
    IL_049a:  stloc.s    V_16
    IL_049c:  ldloc.s    V_13
    IL_049e:  ldc.i4.s   15
    IL_04a0:  blt.s      IL_04a7

    IL_04a2:  ldc.i4.2
    IL_04a3:  stloc.s    V_16
    IL_04a5:  br.s       IL_04af

    IL_04a7:  ldloc.s    V_13
    IL_04a9:  ldc.i4.4
    IL_04aa:  blt.s      IL_04af

    IL_04ac:  ldc.i4.1
    IL_04ad:  stloc.s    V_16
    IL_04af:  ldarg.3
    IL_04b0:  ldloc.s    V_16
    IL_04b2:  callvirt   instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_04b7:  ldarg.0
    IL_04b8:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemBowBlockBehavior::m_aimStartTimes
    IL_04bd:  ldarg.3
    IL_04be:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_04c3:  pop
    IL_04c4:  ldc.i4.0
    IL_04c5:  ret
  } // end of method SubsystemBowBlockBehavior::OnAim

  .method public hidebysig virtual instance int32 
          GetProcessInventoryItemCapacity(class Game.IInventory inventory,
                                          int32 slotIndex,
                                          int32 'value') cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  2
    .locals init (valuetype Game.ArrowBlock/ArrowType V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  ldarg.3
    IL_0007:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000c:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_0011:  stloc.0
    IL_0012:  ldc.i4     0xc0
    IL_0017:  bne.un.s   IL_0046

    IL_0019:  ldarg.0
    IL_001a:  ldfld      valuetype Game.ArrowBlock/ArrowType[] Game.SubsystemBowBlockBehavior::m_supportedArrowTypes
    IL_001f:  ldloc.0
    IL_0020:  call       bool [System.Linq]System.Linq.Enumerable::Contains<valuetype Game.ArrowBlock/ArrowType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                 !!0)
    IL_0025:  brfalse.s  IL_0046

    IL_0027:  ldarg.1
    IL_0028:  ldarg.2
    IL_0029:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_002e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0033:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.BowBlock::GetArrowType(int32)
    IL_0038:  stloc.1
    IL_0039:  ldloca.s   V_1
    IL_003b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_0040:  brtrue.s   IL_0044

    IL_0042:  ldc.i4.1
    IL_0043:  ret

    IL_0044:  ldc.i4.0
    IL_0045:  ret

    IL_0046:  ldc.i4.0
    IL_0047:  ret
  } // end of method SubsystemBowBlockBehavior::GetProcessInventoryItemCapacity

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
    IL_0031:  ldc.i4     0xbf
    IL_0036:  ldc.i4.0
    IL_0037:  ldloc.1
    IL_0038:  ldloc.0
    IL_0039:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::.ctor(!0)
    IL_003e:  call       int32 Game.BowBlock::SetArrowType(int32,
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
  } // end of method SubsystemBowBlockBehavior::ProcessInventoryItem

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
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemBowBlockBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_001f:  stfld      class Game.SubsystemProjectiles Game.SubsystemBowBlockBehavior::m_subsystemProjectiles
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0031:  stfld      class Game.SubsystemAudio Game.SubsystemBowBlockBehavior::m_subsystemAudio
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_003d:  ret
  } // end of method SubsystemBowBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemBowBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemBowBlockBehavior::m_aimStartTimes
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.6
    IL_0018:  newarr     Game.ArrowBlock/ArrowType
    IL_001d:  dup
    IL_001e:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::A048C388D1AFFDAE215D5706D3CEBC3BD984460E
    IL_0023:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0028:  stfld      valuetype Game.ArrowBlock/ArrowType[] Game.SubsystemBowBlockBehavior::m_supportedArrowTypes
    IL_002d:  ldarg.0
    IL_002e:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0033:  ret
  } // end of method SubsystemBowBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemBowBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemBowBlockBehavior::HandledBlocks
} // end of class Game.SubsystemBowBlockBehavior