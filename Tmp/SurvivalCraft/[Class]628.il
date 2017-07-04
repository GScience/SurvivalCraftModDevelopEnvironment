.class public auto ansi beforefieldinit Game.SubsystemMusketBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemProjectiles m_subsystemProjectiles
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> m_aimStartTimes
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemMusketBlockBehavior::get_HandledBlocks

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
    IL_0018:  newobj     instance void Game.MusketWidget::.ctor(class Game.IInventory,
                                                                int32)
    IL_001d:  callvirt   instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_0022:  ldc.i4.1
    IL_0023:  ret
  } // end of method SubsystemMusketBlockBehavior::OnEditInventoryItem

  .method public hidebysig virtual instance bool 
          OnAim(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner,
                valuetype Game.AimState state) cil managed
  {
    // 代码大小       1973 (0x7b5)
    .maxstack  7
    .locals init (class Game.IInventory V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             float64 V_8,
             float32 V_9,
             float32 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             class Game.ComponentFirstPersonModel V_13,
             bool V_14,
             int32 V_15,
             int32 V_16,
             float32 V_17,
             valuetype [Engine]Engine.Vector3 V_18,
             valuetype Game.MusketBlock/LoadState V_19,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType> V_20,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType> V_21,
             valuetype Game.BulletBlock/BulletType V_22,
             valuetype [Engine]Engine.Vector3 V_23,
             valuetype [Engine]Engine.Vector3 V_24,
             valuetype [Engine]Engine.Vector3 V_25,
             valuetype [Engine]Engine.Vector3 V_26,
             valuetype [Engine]Engine.Matrix V_27,
             int32 V_28,
             valuetype [Engine]Engine.Vector3 V_29,
             class Game.Projectile V_30)
    IL_0000:  ldarg.3
    IL_0001:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse    IL_07b3

    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  blt        IL_07b3

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
    IL_003b:  ldloc.2
    IL_003c:  stloc.s    V_6
    IL_003e:  ldc.i4.0
    IL_003f:  stloc.s    V_7
    IL_0041:  ldloc.s    V_4
    IL_0043:  ldc.i4     0xd4
    IL_0048:  bne.un     IL_078e

    IL_004d:  ldloc.3
    IL_004e:  ldc.i4.0
    IL_004f:  ble        IL_078e

    IL_0054:  ldarg.0
    IL_0055:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemMusketBlockBehavior::m_aimStartTimes
    IL_005a:  ldarg.3
    IL_005b:  ldloca.s   V_8
    IL_005d:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::TryGetValue(!0,
                                                                                                                                                         !1&)
    IL_0062:  brtrue.s   IL_007f

    IL_0064:  ldarg.0
    IL_0065:  ldfld      class Game.SubsystemTime Game.SubsystemMusketBlockBehavior::m_subsystemTime
    IL_006a:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_006f:  stloc.s    V_8
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemMusketBlockBehavior::m_aimStartTimes
    IL_0077:  ldarg.3
    IL_0078:  ldloc.s    V_8
    IL_007a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::set_Item(!0,
                                                                                                                                                      !1)
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class Game.SubsystemTime Game.SubsystemMusketBlockBehavior::m_subsystemTime
    IL_0085:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_008a:  ldloc.s    V_8
    IL_008c:  sub
    IL_008d:  conv.r4
    IL_008e:  stloc.s    V_9
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class Game.SubsystemTime Game.SubsystemMusketBlockBehavior::m_subsystemTime
    IL_0096:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_009b:  ldc.r8     1000.
    IL_00a4:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00a9:  conv.r4
    IL_00aa:  stloc.s    V_10
    IL_00ac:  ldarg.3
    IL_00ad:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_00b2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00b7:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_00bc:  brtrue.s   IL_00c5

    IL_00be:  ldc.r4     2.9999999e-002
    IL_00c3:  br.s       IL_00ca

    IL_00c5:  ldc.r4     9.9999998e-003
    IL_00ca:  ldc.r4     0.2
    IL_00cf:  ldloc.s    V_9
    IL_00d1:  ldc.r4     2.5
    IL_00d6:  sub
    IL_00d7:  conv.r4
    IL_00d8:  ldc.r4     6.
    IL_00dd:  div
    IL_00de:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00e3:  mul
    IL_00e4:  add
    IL_00e5:  ldloca.s   V_12
    IL_00e7:  initobj    [Engine]Engine.Vector3
    IL_00ed:  ldloca.s   V_12
    IL_00ef:  ldloc.s    V_10
    IL_00f1:  ldc.r4     2.
    IL_00f6:  ldc.i4.3
    IL_00f7:  ldc.r4     2.
    IL_00fc:  ldc.r4     0.5
    IL_0101:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0106:  stfld      float32 [Engine]Engine.Vector3::X
    IL_010b:  ldloca.s   V_12
    IL_010d:  ldloc.s    V_10
    IL_010f:  ldc.r4     100.
    IL_0114:  add
    IL_0115:  ldc.r4     2.
    IL_011a:  ldc.i4.3
    IL_011b:  ldc.r4     2.
    IL_0120:  ldc.r4     0.5
    IL_0125:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_012a:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_012f:  ldloca.s   V_12
    IL_0131:  ldloc.s    V_10
    IL_0133:  ldc.r4     200.
    IL_0138:  add
    IL_0139:  ldc.r4     2.
    IL_013e:  ldc.i4.3
    IL_013f:  ldc.r4     2.
    IL_0144:  ldc.r4     0.5
    IL_0149:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_014e:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0153:  ldloc.s    V_12
    IL_0155:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015a:  stloc.s    V_11
    IL_015c:  ldarg.2
    IL_015d:  ldloc.s    V_11
    IL_015f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0164:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0169:  starg.s    direction
    IL_016b:  ldarg.s    state
    IL_016d:  brtrue     IL_02b0

    IL_0172:  ldloc.s    V_9
    IL_0174:  ldc.r4     10.
    IL_0179:  blt.un.s   IL_018d

    IL_017b:  ldarg.3
    IL_017c:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0181:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0186:  callvirt   instance void Game.ComponentCreatureSounds::PlayMoanSound()
    IL_018b:  ldc.i4.1
    IL_018c:  ret

    IL_018d:  ldloc.s    V_9
    IL_018f:  ldc.r4     0.5
    IL_0194:  ble.un.s   IL_01ef

    IL_0196:  ldloc.s    V_6
    IL_0198:  call       int32 Game.Terrain::ExtractData(int32)
    IL_019d:  call       bool Game.MusketBlock::GetHammerState(int32)
    IL_01a2:  brtrue.s   IL_01ef

    IL_01a4:  ldloc.s    V_4
    IL_01a6:  ldc.i4.0
    IL_01a7:  ldloc.s    V_6
    IL_01a9:  call       int32 Game.Terrain::ExtractData(int32)
    IL_01ae:  ldc.i4.1
    IL_01af:  call       int32 Game.MusketBlock::SetHammerState(int32,
                                                                bool)
    IL_01b4:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_01b9:  stloc.s    V_6
    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_01c1:  ldstr      "Audio/HammerCock"
    IL_01c6:  ldc.r4     1.
    IL_01cb:  ldarg.0
    IL_01cc:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_01d1:  ldc.r4     -0.1
    IL_01d6:  ldc.r4     0.1
    IL_01db:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e0:  ldc.r4     0.0
    IL_01e5:  ldc.r4     0.0
    IL_01ea:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_01ef:  ldarg.3
    IL_01f0:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01f5:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFirstPersonModel>()
    IL_01fa:  stloc.s    V_13
    IL_01fc:  ldloc.s    V_13
    IL_01fe:  brfalse.s  IL_024e

    IL_0200:  ldarg.3
    IL_0201:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0206:  dup
    IL_0207:  brtrue.s   IL_020c

    IL_0209:  pop
    IL_020a:  br.s       IL_0218

    IL_020c:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0211:  ldarg.1
    IL_0212:  ldarg.2
    IL_0213:  callvirt   instance void Game.ComponentGui::ShowAimingSights(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
    IL_0218:  ldloc.s    V_13
    IL_021a:  ldc.r4     -0.20999999
    IL_021f:  ldc.r4     0.15000001
    IL_0224:  ldc.r4     7.9999998e-002
    IL_0229:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_022e:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_0233:  ldloc.s    V_13
    IL_0235:  ldc.r4     -0.69999999
    IL_023a:  ldc.r4     0.0
    IL_023f:  ldc.r4     0.0
    IL_0244:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0249:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_024e:  ldarg.3
    IL_024f:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0254:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0259:  ldc.r4     1.4
    IL_025e:  callvirt   instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
    IL_0263:  ldarg.3
    IL_0264:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0269:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_026e:  ldc.r4     -7.9999998e-002
    IL_0273:  ldc.r4     -7.9999998e-002
    IL_0278:  ldc.r4     7.e-002
    IL_027d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0282:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_0287:  ldarg.3
    IL_0288:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_028d:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0292:  ldc.r4     -1.7
    IL_0297:  ldc.r4     0.0
    IL_029c:  ldc.r4     0.0
    IL_02a1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02a6:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_02ab:  br         IL_078e

    IL_02b0:  ldarg.s    state
    IL_02b2:  ldc.i4.1
    IL_02b3:  bne.un.s   IL_0320

    IL_02b5:  ldloc.s    V_6
    IL_02b7:  call       int32 Game.Terrain::ExtractData(int32)
    IL_02bc:  call       bool Game.MusketBlock::GetHammerState(int32)
    IL_02c1:  brfalse.s  IL_030e

    IL_02c3:  ldloc.s    V_4
    IL_02c5:  ldc.i4.0
    IL_02c6:  ldloc.s    V_6
    IL_02c8:  call       int32 Game.Terrain::ExtractData(int32)
    IL_02cd:  ldc.i4.0
    IL_02ce:  call       int32 Game.MusketBlock::SetHammerState(int32,
                                                                bool)
    IL_02d3:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_02d8:  stloc.s    V_6
    IL_02da:  ldarg.0
    IL_02db:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_02e0:  ldstr      "Audio/HammerUncock"
    IL_02e5:  ldc.r4     1.
    IL_02ea:  ldarg.0
    IL_02eb:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_02f0:  ldc.r4     -0.1
    IL_02f5:  ldc.r4     0.1
    IL_02fa:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02ff:  ldc.r4     0.0
    IL_0304:  ldc.r4     0.0
    IL_0309:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_030e:  ldarg.0
    IL_030f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemMusketBlockBehavior::m_aimStartTimes
    IL_0314:  ldarg.3
    IL_0315:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_031a:  pop
    IL_031b:  br         IL_078e

    IL_0320:  ldarg.s    state
    IL_0322:  ldc.i4.2
    IL_0323:  bne.un     IL_078e

    IL_0328:  ldc.i4.0
    IL_0329:  stloc.s    V_14
    IL_032b:  ldc.i4.0
    IL_032c:  stloc.s    V_15
    IL_032e:  ldc.i4.0
    IL_032f:  stloc.s    V_16
    IL_0331:  ldc.r4     0.0
    IL_0336:  stloc.s    V_17
    IL_0338:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_033d:  stloc.s    V_18
    IL_033f:  ldloc.s    V_5
    IL_0341:  call       valuetype Game.MusketBlock/LoadState Game.MusketBlock::GetLoadState(int32)
    IL_0346:  stloc.s    V_19
    IL_0348:  ldloc.s    V_5
    IL_034a:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType> Game.MusketBlock::GetBulletType(int32)
    IL_034f:  stloc.s    V_20
    IL_0351:  ldloc.s    V_6
    IL_0353:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0358:  call       bool Game.MusketBlock::GetHammerState(int32)
    IL_035d:  brfalse    IL_04a0

    IL_0362:  ldloc.s    V_19
    IL_0364:  brtrue.s   IL_038b

    IL_0366:  ldarg.3
    IL_0367:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_036c:  dup
    IL_036d:  brtrue.s   IL_0375

    IL_036f:  pop
    IL_0370:  br         IL_04a0

    IL_0375:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_037a:  ldstr      "Load gunpowder first"
    IL_037f:  ldc.i4.1
    IL_0380:  ldc.i4.0
    IL_0381:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0386:  br         IL_04a0

    IL_038b:  ldloc.s    V_19
    IL_038d:  ldc.i4.1
    IL_038e:  beq.s      IL_0395

    IL_0390:  ldloc.s    V_19
    IL_0392:  ldc.i4.2
    IL_0393:  bne.un.s   IL_03bd

    IL_0395:  ldc.i4.1
    IL_0396:  stloc.s    V_14
    IL_0398:  ldarg.3
    IL_0399:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_039e:  dup
    IL_039f:  brtrue.s   IL_03a7

    IL_03a1:  pop
    IL_03a2:  br         IL_04a0

    IL_03a7:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_03ac:  ldstr      "No bullet, blind shot fired"
    IL_03b1:  ldc.i4.1
    IL_03b2:  ldc.i4.0
    IL_03b3:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_03b8:  br         IL_04a0

    IL_03bd:  ldloc.s    V_19
    IL_03bf:  ldc.i4.3
    IL_03c0:  bne.un     IL_04a0

    IL_03c5:  ldc.i4.1
    IL_03c6:  stloc.s    V_14
    IL_03c8:  ldloc.s    V_20
    IL_03ca:  stloc.s    V_21
    IL_03cc:  ldc.i4.1
    IL_03cd:  stloc.s    V_22
    IL_03cf:  ldloca.s   V_21
    IL_03d1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::GetValueOrDefault()
    IL_03d6:  ldloc.s    V_22
    IL_03d8:  beq.s      IL_03dd

    IL_03da:  ldc.i4.0
    IL_03db:  br.s       IL_03e4

    IL_03dd:  ldloca.s   V_21
    IL_03df:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::get_HasValue()
    IL_03e4:  brfalse.s  IL_041f

    IL_03e6:  ldc.i4     0xd6
    IL_03eb:  ldc.i4.0
    IL_03ec:  ldc.i4.0
    IL_03ed:  ldc.i4.2
    IL_03ee:  call       int32 Game.BulletBlock::SetBulletType(int32,
                                                               valuetype Game.BulletBlock/BulletType)
    IL_03f3:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_03f8:  stloc.s    V_15
    IL_03fa:  ldc.i4.8
    IL_03fb:  stloc.s    V_16
    IL_03fd:  ldloca.s   V_18
    IL_03ff:  ldc.r4     3.9999999e-002
    IL_0404:  ldc.r4     3.9999999e-002
    IL_0409:  ldc.r4     0.25
    IL_040e:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0413:  ldc.r4     80.
    IL_0418:  stloc.s    V_17
    IL_041a:  br         IL_04a0

    IL_041f:  ldloc.s    V_20
    IL_0421:  stloc.s    V_21
    IL_0423:  ldc.i4.2
    IL_0424:  stloc.s    V_22
    IL_0426:  ldloca.s   V_21
    IL_0428:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::GetValueOrDefault()
    IL_042d:  ldloc.s    V_22
    IL_042f:  beq.s      IL_0434

    IL_0431:  ldc.i4.0
    IL_0432:  br.s       IL_043b

    IL_0434:  ldloca.s   V_21
    IL_0436:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::get_HasValue()
    IL_043b:  brfalse.s  IL_0473

    IL_043d:  ldc.i4     0xd6
    IL_0442:  ldc.i4.0
    IL_0443:  ldc.i4.0
    IL_0444:  ldc.i4.2
    IL_0445:  call       int32 Game.BulletBlock::SetBulletType(int32,
                                                               valuetype Game.BulletBlock/BulletType)
    IL_044a:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_044f:  stloc.s    V_15
    IL_0451:  ldc.i4.1
    IL_0452:  stloc.s    V_16
    IL_0454:  ldloca.s   V_18
    IL_0456:  ldc.r4     5.9999999e-002
    IL_045b:  ldc.r4     5.9999999e-002
    IL_0460:  ldc.r4     0.0
    IL_0465:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_046a:  ldc.r4     60.
    IL_046f:  stloc.s    V_17
    IL_0471:  br.s       IL_04a0

    IL_0473:  ldloca.s   V_20
    IL_0475:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::get_HasValue()
    IL_047a:  brfalse.s  IL_04a0

    IL_047c:  ldc.i4     0xd6
    IL_0481:  ldc.i4.0
    IL_0482:  ldc.i4.0
    IL_0483:  ldloca.s   V_20
    IL_0485:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::get_Value()
    IL_048a:  call       int32 Game.BulletBlock::SetBulletType(int32,
                                                               valuetype Game.BulletBlock/BulletType)
    IL_048f:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0494:  stloc.s    V_15
    IL_0496:  ldc.i4.1
    IL_0497:  stloc.s    V_16
    IL_0499:  ldc.r4     120.
    IL_049e:  stloc.s    V_17
    IL_04a0:  ldloc.s    V_14
    IL_04a2:  brfalse    IL_0723

    IL_04a7:  ldarg.3
    IL_04a8:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_04ad:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04b2:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_04b7:  ldc.r4     0.40000001
    IL_04bc:  ble.un.s   IL_0503

    IL_04be:  ldarg.0
    IL_04bf:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_04c4:  ldstr      "Audio/MusketMisfire"
    IL_04c9:  ldc.r4     1.
    IL_04ce:  ldarg.0
    IL_04cf:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_04d4:  ldc.r4     -0.1
    IL_04d9:  ldc.r4     0.1
    IL_04de:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_04e3:  ldarg.3
    IL_04e4:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_04e9:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_04ee:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_04f3:  ldc.r4     3.
    IL_04f8:  ldc.i4.1
    IL_04f9:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_04fe:  br         IL_0704

    IL_0503:  ldarg.3
    IL_0504:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0509:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_050e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0513:  ldarg.3
    IL_0514:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0519:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_051e:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0523:  stloc.s    V_27
    IL_0525:  ldloca.s   V_27
    IL_0527:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_052c:  ldc.r4     0.30000001
    IL_0531:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0536:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_053b:  ldarg.3
    IL_053c:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0541:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0546:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_054b:  stloc.s    V_27
    IL_054d:  ldloca.s   V_27
    IL_054f:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0554:  ldc.r4     0.2
    IL_0559:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_055e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0563:  stloc.s    V_23
    IL_0565:  ldloc.s    V_23
    IL_0567:  ldarg.2
    IL_0568:  ldc.r4     10.
    IL_056d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0572:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0577:  ldloc.s    V_23
    IL_0579:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_057e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0583:  stloc.s    V_24
    IL_0585:  ldloc.s    V_24
    IL_0587:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_058c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0591:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0596:  stloc.s    V_25
    IL_0598:  ldloc.s    V_24
    IL_059a:  ldloc.s    V_25
    IL_059c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_05a1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_05a6:  stloc.s    V_26
    IL_05a8:  ldc.i4.0
    IL_05a9:  stloc.s    V_28
    IL_05ab:  br         IL_065d

    IL_05b0:  ldarg.0
    IL_05b1:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_05b6:  ldloc.s    V_18
    IL_05b8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_05bd:  neg
    IL_05be:  ldloc.s    V_18
    IL_05c0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_05c5:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05ca:  ldloc.s    V_25
    IL_05cc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_05d1:  ldarg.0
    IL_05d2:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_05d7:  ldloc.s    V_18
    IL_05d9:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05de:  neg
    IL_05df:  ldloc.s    V_18
    IL_05e1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05e6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05eb:  ldloc.s    V_26
    IL_05ed:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_05f2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_05f7:  ldarg.0
    IL_05f8:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_05fd:  ldloc.s    V_18
    IL_05ff:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0604:  neg
    IL_0605:  ldloc.s    V_18
    IL_0607:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_060c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0611:  ldloc.s    V_24
    IL_0613:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0618:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_061d:  stloc.s    V_29
    IL_061f:  ldarg.0
    IL_0620:  ldfld      class Game.SubsystemProjectiles Game.SubsystemMusketBlockBehavior::m_subsystemProjectiles
    IL_0625:  ldloc.s    V_15
    IL_0627:  ldloc.s    V_23
    IL_0629:  ldloc.s    V_17
    IL_062b:  ldloc.s    V_24
    IL_062d:  ldloc.s    V_29
    IL_062f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0634:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0639:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_063e:  ldarg.3
    IL_063f:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0644:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_0649:  stloc.s    V_30
    IL_064b:  ldloc.s    V_30
    IL_064d:  brfalse.s  IL_0657

    IL_064f:  ldloc.s    V_30
    IL_0651:  ldc.i4.1
    IL_0652:  stfld      valuetype Game.ProjectileStoppedAction Game.Projectile::ProjectileStoppedAction
    IL_0657:  ldloc.s    V_28
    IL_0659:  ldc.i4.1
    IL_065a:  add
    IL_065b:  stloc.s    V_28
    IL_065d:  ldloc.s    V_28
    IL_065f:  ldloc.s    V_16
    IL_0661:  blt        IL_05b0

    IL_0666:  ldarg.0
    IL_0667:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_066c:  ldstr      "Audio/MusketFire"
    IL_0671:  ldc.r4     1.
    IL_0676:  ldarg.0
    IL_0677:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_067c:  ldc.r4     -0.1
    IL_0681:  ldc.r4     0.1
    IL_0686:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_068b:  ldarg.3
    IL_068c:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0691:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0696:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_069b:  ldc.r4     10.
    IL_06a0:  ldc.i4.1
    IL_06a1:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_06a6:  ldarg.0
    IL_06a7:  ldfld      class Game.SubsystemParticles Game.SubsystemMusketBlockBehavior::m_subsystemParticles
    IL_06ac:  ldarg.0
    IL_06ad:  ldfld      class Game.SubsystemTerrain Game.SubsystemMusketBlockBehavior::m_subsystemTerrain
    IL_06b2:  ldloc.s    V_23
    IL_06b4:  ldc.r4     0.30000001
    IL_06b9:  ldloc.s    V_24
    IL_06bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_06c0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_06c5:  ldloc.s    V_24
    IL_06c7:  newobj     instance void Game.GunSmokeParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                          valuetype [Engine]Engine.Vector3,
                                                                          valuetype [Engine]Engine.Vector3)
    IL_06cc:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_06d1:  ldarg.0
    IL_06d2:  ldfld      class Game.SubsystemNoise Game.SubsystemMusketBlockBehavior::m_subsystemNoise
    IL_06d7:  ldloc.s    V_23
    IL_06d9:  ldc.r4     1.
    IL_06de:  ldc.r4     40.
    IL_06e3:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_06e8:  ldarg.3
    IL_06e9:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_06ee:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_06f3:  ldc.r4     -4.
    IL_06f8:  ldloc.s    V_24
    IL_06fa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_06ff:  callvirt   instance void Game.ComponentBody::ApplyImpulse(valuetype [Engine]Engine.Vector3)
    IL_0704:  ldloc.s    V_6
    IL_0706:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_070b:  ldc.i4.0
    IL_070c:  ldloc.s    V_6
    IL_070e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0713:  ldc.i4.0
    IL_0714:  call       int32 Game.MusketBlock::SetLoadState(int32,
                                                              valuetype Game.MusketBlock/LoadState)
    IL_0719:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_071e:  stloc.s    V_6
    IL_0720:  ldc.i4.1
    IL_0721:  stloc.s    V_7
    IL_0723:  ldloc.s    V_6
    IL_0725:  call       int32 Game.Terrain::ExtractData(int32)
    IL_072a:  call       bool Game.MusketBlock::GetHammerState(int32)
    IL_072f:  brfalse.s  IL_0781

    IL_0731:  ldloc.s    V_6
    IL_0733:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0738:  ldc.i4.0
    IL_0739:  ldloc.s    V_6
    IL_073b:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0740:  ldc.i4.0
    IL_0741:  call       int32 Game.MusketBlock::SetHammerState(int32,
                                                                bool)
    IL_0746:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_074b:  stloc.s    V_6
    IL_074d:  ldarg.0
    IL_074e:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_0753:  ldstr      "Audio/HammerRelease"
    IL_0758:  ldc.r4     1.
    IL_075d:  ldarg.0
    IL_075e:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_0763:  ldc.r4     -0.1
    IL_0768:  ldc.r4     0.1
    IL_076d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0772:  ldc.r4     0.0
    IL_0777:  ldc.r4     0.0
    IL_077c:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0781:  ldarg.0
    IL_0782:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemMusketBlockBehavior::m_aimStartTimes
    IL_0787:  ldarg.3
    IL_0788:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_078d:  pop
    IL_078e:  ldloc.s    V_6
    IL_0790:  ldloc.2
    IL_0791:  beq.s      IL_07a6

    IL_0793:  ldloc.0
    IL_0794:  ldloc.1
    IL_0795:  ldc.i4.1
    IL_0796:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_079b:  pop
    IL_079c:  ldloc.0
    IL_079d:  ldloc.1
    IL_079e:  ldloc.s    V_6
    IL_07a0:  ldc.i4.1
    IL_07a1:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_07a6:  ldloc.s    V_7
    IL_07a8:  ldc.i4.0
    IL_07a9:  ble.s      IL_07b3

    IL_07ab:  ldarg.3
    IL_07ac:  ldloc.s    V_7
    IL_07ae:  callvirt   instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_07b3:  ldc.i4.0
    IL_07b4:  ret
  } // end of method SubsystemMusketBlockBehavior::OnAim

  .method public hidebysig virtual instance int32 
          GetProcessInventoryItemCapacity(class Game.IInventory inventory,
                                          int32 slotIndex,
                                          int32 'value') cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype Game.MusketBlock/LoadState V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_000e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0013:  call       valuetype Game.MusketBlock/LoadState Game.MusketBlock::GetLoadState(int32)
    IL_0018:  stloc.1
    IL_0019:  ldloc.1
    IL_001a:  brtrue.s   IL_0023

    IL_001c:  ldloc.0
    IL_001d:  ldc.i4.s   109
    IL_001f:  bne.un.s   IL_0023

    IL_0021:  ldc.i4.1
    IL_0022:  ret

    IL_0023:  ldloc.1
    IL_0024:  ldc.i4.1
    IL_0025:  bne.un.s   IL_0031

    IL_0027:  ldloc.0
    IL_0028:  ldc.i4     0xcd
    IL_002d:  bne.un.s   IL_0031

    IL_002f:  ldc.i4.1
    IL_0030:  ret

    IL_0031:  ldloc.1
    IL_0032:  ldc.i4.2
    IL_0033:  bne.un.s   IL_003f

    IL_0035:  ldloc.0
    IL_0036:  ldc.i4     0xd6
    IL_003b:  bne.un.s   IL_003f

    IL_003d:  ldc.i4.1
    IL_003e:  ret

    IL_003f:  ldc.i4.0
    IL_0040:  ret
  } // end of method SubsystemMusketBlockBehavior::GetProcessInventoryItemCapacity

  .method public hidebysig virtual instance void 
          ProcessInventoryItem(class Game.IInventory inventory,
                               int32 slotIndex,
                               int32 'value',
                               int32 count,
                               int32 processCount,
                               [out] int32& processedValue,
                               [out] int32& processedCount) cil managed
  {
    // 代码大小       151 (0x97)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype Game.MusketBlock/LoadState V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType> V_2,
             int32 V_3)
    IL_0000:  ldarg.s    processedValue
    IL_0002:  ldarg.3
    IL_0003:  stind.i4
    IL_0004:  ldarg.s    processedCount
    IL_0006:  ldarg.s    count
    IL_0008:  stind.i4
    IL_0009:  ldarg.s    processCount
    IL_000b:  ldc.i4.1
    IL_000c:  bne.un     IL_0096

    IL_0011:  ldarg.1
    IL_0012:  ldarg.2
    IL_0013:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0018:  call       int32 Game.Terrain::ExtractData(int32)
    IL_001d:  stloc.0
    IL_001e:  ldloc.0
    IL_001f:  call       valuetype Game.MusketBlock/LoadState Game.MusketBlock::GetLoadState(int32)
    IL_0024:  stloc.1
    IL_0025:  ldloc.0
    IL_0026:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType> Game.MusketBlock::GetBulletType(int32)
    IL_002b:  stloc.2
    IL_002c:  ldloc.1
    IL_002d:  brtrue.s   IL_003b

    IL_002f:  ldc.i4.1
    IL_0030:  stloc.1
    IL_0031:  ldloca.s   V_2
    IL_0033:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>
    IL_0039:  br.s       IL_0065

    IL_003b:  ldloc.1
    IL_003c:  ldc.i4.1
    IL_003d:  bne.un.s   IL_004b

    IL_003f:  ldc.i4.2
    IL_0040:  stloc.1
    IL_0041:  ldloca.s   V_2
    IL_0043:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>
    IL_0049:  br.s       IL_0065

    IL_004b:  ldloc.1
    IL_004c:  ldc.i4.2
    IL_004d:  bne.un.s   IL_0065

    IL_004f:  ldc.i4.3
    IL_0050:  stloc.1
    IL_0051:  ldarg.3
    IL_0052:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0057:  stloc.3
    IL_0058:  ldloca.s   V_2
    IL_005a:  ldloc.3
    IL_005b:  call       valuetype Game.BulletBlock/BulletType Game.BulletBlock::GetBulletType(int32)
    IL_0060:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::.ctor(!0)
    IL_0065:  ldarg.s    processedValue
    IL_0067:  ldc.i4.0
    IL_0068:  stind.i4
    IL_0069:  ldarg.s    processedCount
    IL_006b:  ldc.i4.0
    IL_006c:  stind.i4
    IL_006d:  ldarg.1
    IL_006e:  ldarg.2
    IL_006f:  ldc.i4.1
    IL_0070:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_0075:  pop
    IL_0076:  ldarg.1
    IL_0077:  ldarg.2
    IL_0078:  ldc.i4     0xd4
    IL_007d:  ldc.i4.0
    IL_007e:  ldloc.0
    IL_007f:  ldloc.1
    IL_0080:  call       int32 Game.MusketBlock::SetLoadState(int32,
                                                              valuetype Game.MusketBlock/LoadState)
    IL_0085:  ldloc.2
    IL_0086:  call       int32 Game.MusketBlock::SetBulletType(int32,
                                                               valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>)
    IL_008b:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0090:  ldc.i4.1
    IL_0091:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0096:  ret
  } // end of method SubsystemMusketBlockBehavior::ProcessInventoryItem

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       116 (0x74)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.SubsystemMusketBlockBehavior::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.SubsystemMusketBlockBehavior::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_0031:  stfld      class Game.SubsystemProjectiles Game.SubsystemMusketBlockBehavior::m_subsystemProjectiles
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0043:  stfld      class Game.SubsystemParticles Game.SubsystemMusketBlockBehavior::m_subsystemParticles
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0055:  stfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_0067:  stfld      class Game.SubsystemNoise Game.SubsystemMusketBlockBehavior::m_subsystemNoise
    IL_006c:  ldarg.0
    IL_006d:  ldarg.1
    IL_006e:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0073:  ret
  } // end of method SubsystemMusketBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemMusketBlockBehavior::m_aimStartTimes
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_001c:  ret
  } // end of method SubsystemMusketBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemMusketBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemMusketBlockBehavior::HandledBlocks
} // end of class Game.SubsystemMusketBlockBehavior