.class public auto ansi beforefieldinit Game.SubsystemBowBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGui m_subsystemGui
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
                              int32 slotIndex) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGui Game.SubsystemBowBlockBehavior::m_subsystemGui
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemGui Game.SubsystemBowBlockBehavior::m_subsystemGui
    IL_000c:  callvirt   instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_0011:  brfalse.s  IL_0016

    IL_0013:  ldnull
    IL_0014:  br.s       IL_001d

    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  newobj     instance void Game.BowWidget::.ctor(class Game.IInventory,
                                                             int32)
    IL_001d:  callvirt   instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_0022:  ldc.i4.1
    IL_0023:  ret
  } // end of method SubsystemBowBlockBehavior::OnEditInventoryItem

  .method public hidebysig virtual instance bool 
          OnAim(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner,
                valuetype Game.AimState state) cil managed
  {
    // 代码大小       1205 (0x4b5)
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
    IL_0008:  brfalse    IL_04b3

    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  blt        IL_04b3

    IL_001b:  ldloc.0
    IL_001c:  ldloc.1
    IL_001d:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0022:  stloc.2
    IL_0023:  ldloc.0
    IL_0024:  ldloc.1
    IL_0025:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_002a:  stloc.3
    IL_002b:  ldloc.2
    IL_002c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0031:  stloc.s    V_4
    IL_0033:  ldloc.2
    IL_0034:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0039:  stloc.s    V_5
    IL_003b:  ldloc.s    V_4
    IL_003d:  ldc.i4     0xbf
    IL_0042:  bne.un     IL_04b3

    IL_0047:  ldloc.3
    IL_0048:  ldc.i4.0
    IL_0049:  ble        IL_04b3

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
    IL_00c4:  ldc.r4     0.12
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
    IL_00eb:  ldc.r4     2.4000001
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
    IL_010f:  ldc.r4     2.4000001
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
    IL_0133:  ldc.r4     2.4000001
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
    IL_0167:  brtrue     IL_02c7

    IL_016c:  ldloc.s    V_7
    IL_016e:  ldc.r4     8.
    IL_0173:  blt.un.s   IL_01bb

    IL_0175:  ldarg.0
    IL_0176:  ldfld      class Game.SubsystemAudio Game.SubsystemBowBlockBehavior::m_subsystemAudio
    IL_017b:  ldstr      "Audio/Creatures/HumanMoan"
    IL_0180:  ldarg.0
    IL_0181:  ldfld      class Game.Random Game.SubsystemBowBlockBehavior::m_random
    IL_0186:  ldc.r4     0.5
    IL_018b:  ldc.r4     0.69999999
    IL_0190:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0195:  ldarg.0
    IL_0196:  ldfld      class Game.Random Game.SubsystemBowBlockBehavior::m_random
    IL_019b:  ldc.r4     -0.1
    IL_01a0:  ldc.r4     0.1
    IL_01a5:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01aa:  ldc.r4     0.0
    IL_01af:  ldc.r4     0.0
    IL_01b4:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_01b9:  ldc.i4.1
    IL_01ba:  ret

    IL_01bb:  ldarg.3
    IL_01bc:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01c1:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFirstPersonModel>()
    IL_01c6:  stloc.s    V_11
    IL_01c8:  ldloc.s    V_11
    IL_01ca:  brfalse.s  IL_020f

    IL_01cc:  ldarg.0
    IL_01cd:  ldfld      class Game.SubsystemGui Game.SubsystemBowBlockBehavior::m_subsystemGui
    IL_01d2:  ldarg.1
    IL_01d3:  ldarg.2
    IL_01d4:  callvirt   instance void Game.SubsystemGui::ShowAimingSights(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
    IL_01d9:  ldloc.s    V_11
    IL_01db:  ldc.r4     -0.1
    IL_01e0:  ldc.r4     0.15000001
    IL_01e5:  ldc.r4     0.0
    IL_01ea:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ef:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_01f4:  ldloc.s    V_11
    IL_01f6:  ldc.r4     0.0
    IL_01fb:  ldc.r4     -0.69999999
    IL_0200:  ldc.r4     0.0
    IL_0205:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_020a:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_020f:  ldarg.3
    IL_0210:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0215:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_021a:  ldc.r4     1.2
    IL_021f:  callvirt   instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
    IL_0224:  ldarg.3
    IL_0225:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_022a:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_022f:  ldc.r4     0.0
    IL_0234:  ldc.r4     0.0
    IL_0239:  ldc.r4     0.0
    IL_023e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0243:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_0248:  ldarg.3
    IL_0249:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_024e:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0253:  ldc.r4     0.0
    IL_0258:  ldc.r4     -0.2
    IL_025d:  ldc.r4     0.0
    IL_0262:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0267:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_026c:  ldarg.0
    IL_026d:  ldfld      class Game.SubsystemTime Game.SubsystemBowBlockBehavior::m_subsystemTime
    IL_0272:  ldc.r8     0.10000000149011612
    IL_027b:  ldc.r8     0.0
    IL_0284:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0289:  brfalse    IL_04b3

    IL_028e:  ldloc.s    V_5
    IL_0290:  call       int32 Game.BowBlock::GetDraw(int32)
    IL_0295:  ldc.i4.1
    IL_0296:  add
    IL_0297:  ldc.i4.s   15
    IL_0299:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_029e:  stloc.s    V_12
    IL_02a0:  ldloc.0
    IL_02a1:  ldloc.1
    IL_02a2:  ldc.i4.1
    IL_02a3:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_02a8:  pop
    IL_02a9:  ldloc.0
    IL_02aa:  ldloc.1
    IL_02ab:  ldloc.s    V_4
    IL_02ad:  ldc.i4.0
    IL_02ae:  ldloc.s    V_5
    IL_02b0:  ldloc.s    V_12
    IL_02b2:  call       int32 Game.BowBlock::SetDraw(int32,
                                                      int32)
    IL_02b7:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_02bc:  ldc.i4.1
    IL_02bd:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_02c2:  br         IL_04b3

    IL_02c7:  ldarg.s    state
    IL_02c9:  ldc.i4.1
    IL_02ca:  bne.un.s   IL_02ff

    IL_02cc:  ldloc.0
    IL_02cd:  ldloc.1
    IL_02ce:  ldc.i4.1
    IL_02cf:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_02d4:  pop
    IL_02d5:  ldloc.0
    IL_02d6:  ldloc.1
    IL_02d7:  ldloc.s    V_4
    IL_02d9:  ldc.i4.0
    IL_02da:  ldloc.s    V_5
    IL_02dc:  ldc.i4.0
    IL_02dd:  call       int32 Game.BowBlock::SetDraw(int32,
                                                      int32)
    IL_02e2:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_02e7:  ldc.i4.1
    IL_02e8:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_02ed:  ldarg.0
    IL_02ee:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemBowBlockBehavior::m_aimStartTimes
    IL_02f3:  ldarg.3
    IL_02f4:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_02f9:  pop
    IL_02fa:  br         IL_04b3

    IL_02ff:  ldarg.s    state
    IL_0301:  ldc.i4.2
    IL_0302:  bne.un     IL_04b3

    IL_0307:  ldloc.s    V_5
    IL_0309:  call       int32 Game.BowBlock::GetDraw(int32)
    IL_030e:  stloc.s    V_13
    IL_0310:  ldloc.s    V_5
    IL_0312:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.BowBlock::GetArrowType(int32)
    IL_0317:  stloc.s    V_14
    IL_0319:  ldloca.s   V_14
    IL_031b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_0320:  brfalse    IL_0451

    IL_0325:  ldarg.3
    IL_0326:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_032b:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0330:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0335:  ldarg.3
    IL_0336:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_033b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0340:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0345:  stloc.s    V_21
    IL_0347:  ldloca.s   V_21
    IL_0349:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_034e:  ldc.r4     0.30000001
    IL_0353:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0358:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_035d:  ldarg.3
    IL_035e:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0363:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0368:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_036d:  stloc.s    V_21
    IL_036f:  ldloca.s   V_21
    IL_0371:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0376:  ldc.r4     0.2
    IL_037b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0380:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0385:  stloc.s    V_17
    IL_0387:  ldloc.s    V_17
    IL_0389:  ldarg.2
    IL_038a:  ldc.r4     10.
    IL_038f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0394:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0399:  ldloc.s    V_17
    IL_039b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_03a0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_03a5:  stloc.s    V_18
    IL_03a7:  ldc.r4     0.0
    IL_03ac:  ldc.r4     40.
    IL_03b1:  ldloc.s    V_13
    IL_03b3:  conv.r4
    IL_03b4:  ldc.r4     15.
    IL_03b9:  div
    IL_03ba:  ldc.r4     0.5
    IL_03bf:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_03c4:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03c9:  stloc.s    V_19
    IL_03cb:  ldc.i4     0xc0
    IL_03d0:  ldc.i4.0
    IL_03d1:  ldc.i4.0
    IL_03d2:  ldloca.s   V_14
    IL_03d4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_Value()
    IL_03d9:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_03de:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_03e3:  stloc.s    V_20
    IL_03e5:  ldarg.0
    IL_03e6:  ldfld      class Game.SubsystemProjectiles Game.SubsystemBowBlockBehavior::m_subsystemProjectiles
    IL_03eb:  ldloc.s    V_20
    IL_03ed:  ldloc.s    V_17
    IL_03ef:  ldloc.s    V_18
    IL_03f1:  ldloc.s    V_19
    IL_03f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_03f8:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_03fd:  ldarg.3
    IL_03fe:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0403:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_0408:  brfalse.s  IL_0463

    IL_040a:  ldloc.s    V_5
    IL_040c:  ldloca.s   V_22
    IL_040e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>
    IL_0414:  ldloc.s    V_22
    IL_0416:  call       int32 Game.BowBlock::SetArrowType(int32,
                                                           valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>)
    IL_041b:  stloc.s    V_5
    IL_041d:  ldarg.0
    IL_041e:  ldfld      class Game.SubsystemAudio Game.SubsystemBowBlockBehavior::m_subsystemAudio
    IL_0423:  ldstr      "Audio/Bow"
    IL_0428:  ldc.r4     1.
    IL_042d:  ldarg.0
    IL_042e:  ldfld      class Game.Random Game.SubsystemBowBlockBehavior::m_random
    IL_0433:  ldc.r4     -0.1
    IL_0438:  ldc.r4     0.1
    IL_043d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0442:  ldloc.s    V_17
    IL_0444:  ldc.r4     3.
    IL_0449:  ldc.i4.1
    IL_044a:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_044f:  br.s       IL_0463

    IL_0451:  ldarg.0
    IL_0452:  ldfld      class Game.SubsystemGui Game.SubsystemBowBlockBehavior::m_subsystemGui
    IL_0457:  ldstr      "Load an arrow first"
    IL_045c:  ldc.i4.1
    IL_045d:  ldc.i4.0
    IL_045e:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0463:  ldloc.0
    IL_0464:  ldloc.1
    IL_0465:  ldc.i4.1
    IL_0466:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_046b:  pop
    IL_046c:  ldloc.s    V_4
    IL_046e:  ldc.i4.0
    IL_046f:  ldloc.s    V_5
    IL_0471:  ldc.i4.0
    IL_0472:  call       int32 Game.BowBlock::SetDraw(int32,
                                                      int32)
    IL_0477:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_047c:  stloc.s    V_15
    IL_047e:  ldloc.0
    IL_047f:  ldloc.1
    IL_0480:  ldloc.s    V_15
    IL_0482:  ldc.i4.1
    IL_0483:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0488:  ldc.i4.0
    IL_0489:  stloc.s    V_16
    IL_048b:  ldloc.s    V_13
    IL_048d:  ldc.i4.s   15
    IL_048f:  blt.s      IL_0496

    IL_0491:  ldc.i4.2
    IL_0492:  stloc.s    V_16
    IL_0494:  br.s       IL_049e

    IL_0496:  ldloc.s    V_13
    IL_0498:  ldc.i4.4
    IL_0499:  blt.s      IL_049e

    IL_049b:  ldc.i4.1
    IL_049c:  stloc.s    V_16
    IL_049e:  ldarg.3
    IL_049f:  ldloc.s    V_16
    IL_04a1:  callvirt   instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_04a6:  ldarg.0
    IL_04a7:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemBowBlockBehavior::m_aimStartTimes
    IL_04ac:  ldarg.3
    IL_04ad:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_04b2:  pop
    IL_04b3:  ldc.i4.0
    IL_04b4:  ret
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
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  ldarg.3
    IL_0007:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_002e:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0006:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_000b:  call       valuetype Game.ArrowBlock/ArrowType Game.ArrowBlock::GetArrowType(int32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.1
    IL_0012:  ldarg.2
    IL_0013:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0018:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0043:  call       int32 Game.TerrainData::MakeBlockValue(int32,
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
    // 代码大小       80 (0x50)
    .maxstack  3
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
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_001f:  stfld      class Game.SubsystemGui Game.SubsystemBowBlockBehavior::m_subsystemGui
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_0031:  stfld      class Game.SubsystemProjectiles Game.SubsystemBowBlockBehavior::m_subsystemProjectiles
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0043:  stfld      class Game.SubsystemAudio Game.SubsystemBowBlockBehavior::m_subsystemAudio
    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_004f:  ret
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