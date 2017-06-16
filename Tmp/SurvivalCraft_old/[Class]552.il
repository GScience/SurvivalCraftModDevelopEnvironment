.class public auto ansi beforefieldinit Game.SubsystemCrossbowBlockBehavior
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
  } // end of method SubsystemCrossbowBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnEditInventoryItem(class Game.IInventory inventory,
                              int32 slotIndex) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGui Game.SubsystemCrossbowBlockBehavior::m_subsystemGui
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemGui Game.SubsystemCrossbowBlockBehavior::m_subsystemGui
    IL_000c:  callvirt   instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_0011:  brfalse.s  IL_0016

    IL_0013:  ldnull
    IL_0014:  br.s       IL_001d

    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  newobj     instance void Game.CrossbowWidget::.ctor(class Game.IInventory,
                                                                  int32)
    IL_001d:  callvirt   instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_0022:  ldc.i4.1
    IL_0023:  ret
  } // end of method SubsystemCrossbowBlockBehavior::OnEditInventoryItem

  .method public hidebysig virtual instance bool 
          OnAim(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner,
                valuetype Game.AimState state) cil managed
  {
    // 代码大小       1150 (0x47e)
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
    IL_0008:  brfalse    IL_047c

    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  blt        IL_047c

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
    IL_003d:  ldc.i4     0xc8
    IL_0042:  bne.un     IL_047c

    IL_0047:  ldloc.3
    IL_0048:  ldc.i4.0
    IL_0049:  ble        IL_047c

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
    IL_00cd:  ldc.r4     0.1
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
    IL_00f4:  ldc.r4     2.4000001
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
    IL_0118:  ldc.r4     2.4000001
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
    IL_013c:  ldc.r4     2.4000001
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
    IL_0170:  brtrue     IL_027a

    IL_0175:  ldloc.s    V_8
    IL_0177:  ldc.r4     10.
    IL_017c:  blt.un.s   IL_01c4

    IL_017e:  ldarg.0
    IL_017f:  ldfld      class Game.SubsystemAudio Game.SubsystemCrossbowBlockBehavior::m_subsystemAudio
    IL_0184:  ldstr      "Audio/Creatures/HumanMoan"
    IL_0189:  ldarg.0
    IL_018a:  ldfld      class Game.Random Game.SubsystemCrossbowBlockBehavior::m_random
    IL_018f:  ldc.r4     0.5
    IL_0194:  ldc.r4     0.69999999
    IL_0199:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_019e:  ldarg.0
    IL_019f:  ldfld      class Game.Random Game.SubsystemCrossbowBlockBehavior::m_random
    IL_01a4:  ldc.r4     -0.1
    IL_01a9:  ldc.r4     0.1
    IL_01ae:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01b3:  ldc.r4     0.0
    IL_01b8:  ldc.r4     0.0
    IL_01bd:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_01c2:  ldc.i4.1
    IL_01c3:  ret

    IL_01c4:  ldarg.3
    IL_01c5:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01ca:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFirstPersonModel>()
    IL_01cf:  stloc.s    V_12
    IL_01d1:  ldloc.s    V_12
    IL_01d3:  brfalse.s  IL_0218

    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      class Game.SubsystemGui Game.SubsystemCrossbowBlockBehavior::m_subsystemGui
    IL_01db:  ldarg.1
    IL_01dc:  ldarg.2
    IL_01dd:  callvirt   instance void Game.SubsystemGui::ShowAimingSights(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
    IL_01e2:  ldloc.s    V_12
    IL_01e4:  ldc.r4     -0.22
    IL_01e9:  ldc.r4     0.15000001
    IL_01ee:  ldc.r4     0.1
    IL_01f3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01f8:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_01fd:  ldloc.s    V_12
    IL_01ff:  ldc.r4     -0.69999999
    IL_0204:  ldc.r4     0.0
    IL_0209:  ldc.r4     0.0
    IL_020e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0213:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_0218:  ldarg.3
    IL_0219:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_021e:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0223:  ldc.r4     1.3
    IL_0228:  callvirt   instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
    IL_022d:  ldarg.3
    IL_022e:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0233:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0238:  ldc.r4     -7.9999998e-002
    IL_023d:  ldc.r4     -0.1
    IL_0242:  ldc.r4     7.e-002
    IL_0247:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_024c:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_0251:  ldarg.3
    IL_0252:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0257:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_025c:  ldc.r4     -1.55
    IL_0261:  ldc.r4     0.0
    IL_0266:  ldc.r4     0.0
    IL_026b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0270:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_0275:  br         IL_047c

    IL_027a:  ldarg.s    state
    IL_027c:  ldc.i4.1
    IL_027d:  bne.un.s   IL_0291

    IL_027f:  ldarg.0
    IL_0280:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemCrossbowBlockBehavior::m_aimStartTimes
    IL_0285:  ldarg.3
    IL_0286:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_028b:  pop
    IL_028c:  br         IL_047c

    IL_0291:  ldarg.s    state
    IL_0293:  ldc.i4.2
    IL_0294:  bne.un     IL_047c

    IL_0299:  ldloc.s    V_5
    IL_029b:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.CrossbowBlock::GetArrowType(int32)
    IL_02a0:  stloc.s    V_13
    IL_02a2:  ldloc.s    V_6
    IL_02a4:  ldc.i4.s   15
    IL_02a6:  beq.s      IL_02bf

    IL_02a8:  ldarg.0
    IL_02a9:  ldfld      class Game.SubsystemGui Game.SubsystemCrossbowBlockBehavior::m_subsystemGui
    IL_02ae:  ldstr      "Draw the crossbow first"
    IL_02b3:  ldc.i4.1
    IL_02b4:  ldc.i4.0
    IL_02b5:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02ba:  br         IL_03fa

    IL_02bf:  ldloca.s   V_13
    IL_02c1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_02c6:  brtrue.s   IL_02df

    IL_02c8:  ldarg.0
    IL_02c9:  ldfld      class Game.SubsystemGui Game.SubsystemCrossbowBlockBehavior::m_subsystemGui
    IL_02ce:  ldstr      "Load a bolt first"
    IL_02d3:  ldc.i4.1
    IL_02d4:  ldc.i4.0
    IL_02d5:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02da:  br         IL_03fa

    IL_02df:  ldarg.3
    IL_02e0:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_02e5:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_02ea:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_02ef:  ldarg.3
    IL_02f0:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_02f5:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_02fa:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_02ff:  stloc.s    V_18
    IL_0301:  ldloca.s   V_18
    IL_0303:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0308:  ldc.r4     0.30000001
    IL_030d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0312:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0317:  ldarg.3
    IL_0318:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_031d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0322:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0327:  stloc.s    V_18
    IL_0329:  ldloca.s   V_18
    IL_032b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0330:  ldc.r4     0.2
    IL_0335:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_033a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_033f:  stloc.s    V_15
    IL_0341:  ldloc.s    V_15
    IL_0343:  ldarg.2
    IL_0344:  ldc.r4     10.
    IL_0349:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_034e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0353:  ldloc.s    V_15
    IL_0355:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_035a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_035f:  stloc.s    V_16
    IL_0361:  ldc.i4     0xc0
    IL_0366:  ldc.i4.0
    IL_0367:  ldc.i4.0
    IL_0368:  ldloca.s   V_13
    IL_036a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_Value()
    IL_036f:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_0374:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0379:  stloc.s    V_17
    IL_037b:  ldarg.0
    IL_037c:  ldfld      class Game.SubsystemProjectiles Game.SubsystemCrossbowBlockBehavior::m_subsystemProjectiles
    IL_0381:  ldloc.s    V_17
    IL_0383:  ldloc.s    V_15
    IL_0385:  ldc.r4     50.
    IL_038a:  ldloc.s    V_16
    IL_038c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0391:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0396:  ldarg.3
    IL_0397:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_039c:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_03a1:  brfalse.s  IL_03fa

    IL_03a3:  ldloc.s    V_5
    IL_03a5:  ldloca.s   V_19
    IL_03a7:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>
    IL_03ad:  ldloc.s    V_19
    IL_03af:  call       int32 Game.CrossbowBlock::SetArrowType(int32,
                                                                valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>)
    IL_03b4:  stloc.s    V_5
    IL_03b6:  ldarg.0
    IL_03b7:  ldfld      class Game.SubsystemAudio Game.SubsystemCrossbowBlockBehavior::m_subsystemAudio
    IL_03bc:  ldstr      "Audio/Bow"
    IL_03c1:  ldc.r4     1.
    IL_03c6:  ldarg.0
    IL_03c7:  ldfld      class Game.Random Game.SubsystemCrossbowBlockBehavior::m_random
    IL_03cc:  ldc.r4     -0.1
    IL_03d1:  ldc.r4     0.1
    IL_03d6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_03db:  ldarg.3
    IL_03dc:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_03e1:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_03e6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_03eb:  ldc.r4     3.
    IL_03f0:  ldc.r4     5.0000001e-002
    IL_03f5:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_03fa:  ldloc.0
    IL_03fb:  ldloc.1
    IL_03fc:  ldc.i4.1
    IL_03fd:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_0402:  pop
    IL_0403:  ldloc.s    V_4
    IL_0405:  ldc.i4.0
    IL_0406:  ldloc.s    V_5
    IL_0408:  ldc.i4.0
    IL_0409:  call       int32 Game.CrossbowBlock::SetDraw(int32,
                                                           int32)
    IL_040e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0413:  stloc.s    V_14
    IL_0415:  ldloc.0
    IL_0416:  ldloc.1
    IL_0417:  ldloc.s    V_14
    IL_0419:  ldc.i4.1
    IL_041a:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_041f:  ldloc.s    V_6
    IL_0421:  ldc.i4.0
    IL_0422:  ble.s      IL_046f

    IL_0424:  ldarg.3
    IL_0425:  ldc.i4.1
    IL_0426:  callvirt   instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_042b:  ldarg.0
    IL_042c:  ldfld      class Game.SubsystemAudio Game.SubsystemCrossbowBlockBehavior::m_subsystemAudio
    IL_0431:  ldstr      "Audio/CrossbowBoing"
    IL_0436:  ldc.r4     1.
    IL_043b:  ldarg.0
    IL_043c:  ldfld      class Game.Random Game.SubsystemCrossbowBlockBehavior::m_random
    IL_0441:  ldc.r4     -0.1
    IL_0446:  ldc.r4     0.1
    IL_044b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0450:  ldarg.3
    IL_0451:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0456:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_045b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0460:  ldc.r4     3.
    IL_0465:  ldc.r4     0.0
    IL_046a:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_046f:  ldarg.0
    IL_0470:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemCrossbowBlockBehavior::m_aimStartTimes
    IL_0475:  ldarg.3
    IL_0476:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_047b:  pop
    IL_047c:  ldc.i4.0
    IL_047d:  ret
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
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  ldarg.3
    IL_0007:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_002e:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0031:  ldc.i4     0xc8
    IL_0036:  ldc.i4.0
    IL_0037:  ldloc.1
    IL_0038:  ldloc.0
    IL_0039:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::.ctor(!0)
    IL_003e:  call       int32 Game.CrossbowBlock::SetArrowType(int32,
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
  } // end of method SubsystemCrossbowBlockBehavior::ProcessInventoryItem

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
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemCrossbowBlockBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_001f:  stfld      class Game.SubsystemGui Game.SubsystemCrossbowBlockBehavior::m_subsystemGui
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_0031:  stfld      class Game.SubsystemProjectiles Game.SubsystemCrossbowBlockBehavior::m_subsystemProjectiles
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0043:  stfld      class Game.SubsystemAudio Game.SubsystemCrossbowBlockBehavior::m_subsystemAudio
    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_004f:  ret
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