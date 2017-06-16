.class public auto ansi beforefieldinit Game.SubsystemMusketBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGui m_subsystemGui
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
                              int32 slotIndex) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGui Game.SubsystemMusketBlockBehavior::m_subsystemGui
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemGui Game.SubsystemMusketBlockBehavior::m_subsystemGui
    IL_000c:  callvirt   instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_0011:  brfalse.s  IL_0016

    IL_0013:  ldnull
    IL_0014:  br.s       IL_001d

    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  newobj     instance void Game.MusketWidget::.ctor(class Game.IInventory,
                                                                int32)
    IL_001d:  callvirt   instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_0022:  ldc.i4.1
    IL_0023:  ret
  } // end of method SubsystemMusketBlockBehavior::OnEditInventoryItem

  .method public hidebysig virtual instance bool 
          OnAim(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner,
                valuetype Game.AimState state) cil managed
  {
    // 代码大小       1986 (0x7c2)
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
    IL_0008:  brfalse    IL_07c0

    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  blt        IL_07c0

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
    IL_003b:  ldloc.2
    IL_003c:  stloc.s    V_6
    IL_003e:  ldc.i4.0
    IL_003f:  stloc.s    V_7
    IL_0041:  ldloc.s    V_4
    IL_0043:  ldc.i4     0xd4
    IL_0048:  bne.un     IL_079b

    IL_004d:  ldloc.3
    IL_004e:  ldc.i4.0
    IL_004f:  ble        IL_079b

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
    IL_00ca:  ldc.r4     0.1
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
    IL_00f1:  ldc.r4     2.4000001
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
    IL_0115:  ldc.r4     2.4000001
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
    IL_0139:  ldc.r4     2.4000001
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
    IL_016d:  brtrue     IL_02d9

    IL_0172:  ldloc.s    V_9
    IL_0174:  ldc.r4     10.
    IL_0179:  blt.un.s   IL_01c1

    IL_017b:  ldarg.0
    IL_017c:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_0181:  ldstr      "Audio/Creatures/HumanMoan"
    IL_0186:  ldarg.0
    IL_0187:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_018c:  ldc.r4     0.5
    IL_0191:  ldc.r4     0.69999999
    IL_0196:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_019b:  ldarg.0
    IL_019c:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_01a1:  ldc.r4     -0.1
    IL_01a6:  ldc.r4     0.1
    IL_01ab:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01b0:  ldc.r4     0.0
    IL_01b5:  ldc.r4     0.0
    IL_01ba:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_01bf:  ldc.i4.1
    IL_01c0:  ret

    IL_01c1:  ldloc.s    V_9
    IL_01c3:  ldc.r4     0.5
    IL_01c8:  ble.un.s   IL_0223

    IL_01ca:  ldloc.s    V_6
    IL_01cc:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_01d1:  call       bool Game.MusketBlock::GetHammerState(int32)
    IL_01d6:  brtrue.s   IL_0223

    IL_01d8:  ldloc.s    V_4
    IL_01da:  ldc.i4.0
    IL_01db:  ldloc.s    V_6
    IL_01dd:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_01e2:  ldc.i4.1
    IL_01e3:  call       int32 Game.MusketBlock::SetHammerState(int32,
                                                                bool)
    IL_01e8:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_01ed:  stloc.s    V_6
    IL_01ef:  ldarg.0
    IL_01f0:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_01f5:  ldstr      "Audio/HammerCock"
    IL_01fa:  ldc.r4     1.
    IL_01ff:  ldarg.0
    IL_0200:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_0205:  ldc.r4     -0.1
    IL_020a:  ldc.r4     0.1
    IL_020f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0214:  ldc.r4     0.0
    IL_0219:  ldc.r4     0.0
    IL_021e:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0223:  ldarg.3
    IL_0224:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0229:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFirstPersonModel>()
    IL_022e:  stloc.s    V_13
    IL_0230:  ldloc.s    V_13
    IL_0232:  brfalse.s  IL_0277

    IL_0234:  ldarg.0
    IL_0235:  ldfld      class Game.SubsystemGui Game.SubsystemMusketBlockBehavior::m_subsystemGui
    IL_023a:  ldarg.1
    IL_023b:  ldarg.2
    IL_023c:  callvirt   instance void Game.SubsystemGui::ShowAimingSights(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
    IL_0241:  ldloc.s    V_13
    IL_0243:  ldc.r4     -0.20999999
    IL_0248:  ldc.r4     0.15000001
    IL_024d:  ldc.r4     7.9999998e-002
    IL_0252:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0257:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_025c:  ldloc.s    V_13
    IL_025e:  ldc.r4     -0.69999999
    IL_0263:  ldc.r4     0.0
    IL_0268:  ldc.r4     0.0
    IL_026d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0272:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_0277:  ldarg.3
    IL_0278:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_027d:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0282:  ldc.r4     1.4
    IL_0287:  callvirt   instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
    IL_028c:  ldarg.3
    IL_028d:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0292:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0297:  ldc.r4     -7.9999998e-002
    IL_029c:  ldc.r4     -7.9999998e-002
    IL_02a1:  ldc.r4     7.e-002
    IL_02a6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02ab:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_02b0:  ldarg.3
    IL_02b1:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_02b6:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_02bb:  ldc.r4     -1.7
    IL_02c0:  ldc.r4     0.0
    IL_02c5:  ldc.r4     0.0
    IL_02ca:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02cf:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_02d4:  br         IL_079b

    IL_02d9:  ldarg.s    state
    IL_02db:  ldc.i4.1
    IL_02dc:  bne.un.s   IL_0349

    IL_02de:  ldloc.s    V_6
    IL_02e0:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_02e5:  call       bool Game.MusketBlock::GetHammerState(int32)
    IL_02ea:  brfalse.s  IL_0337

    IL_02ec:  ldloc.s    V_4
    IL_02ee:  ldc.i4.0
    IL_02ef:  ldloc.s    V_6
    IL_02f1:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_02f6:  ldc.i4.0
    IL_02f7:  call       int32 Game.MusketBlock::SetHammerState(int32,
                                                                bool)
    IL_02fc:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0301:  stloc.s    V_6
    IL_0303:  ldarg.0
    IL_0304:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_0309:  ldstr      "Audio/HammerUncock"
    IL_030e:  ldc.r4     1.
    IL_0313:  ldarg.0
    IL_0314:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_0319:  ldc.r4     -0.1
    IL_031e:  ldc.r4     0.1
    IL_0323:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0328:  ldc.r4     0.0
    IL_032d:  ldc.r4     0.0
    IL_0332:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0337:  ldarg.0
    IL_0338:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemMusketBlockBehavior::m_aimStartTimes
    IL_033d:  ldarg.3
    IL_033e:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_0343:  pop
    IL_0344:  br         IL_079b

    IL_0349:  ldarg.s    state
    IL_034b:  ldc.i4.2
    IL_034c:  bne.un     IL_079b

    IL_0351:  ldc.i4.0
    IL_0352:  stloc.s    V_14
    IL_0354:  ldc.i4.0
    IL_0355:  stloc.s    V_15
    IL_0357:  ldc.i4.0
    IL_0358:  stloc.s    V_16
    IL_035a:  ldc.r4     0.0
    IL_035f:  stloc.s    V_17
    IL_0361:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0366:  stloc.s    V_18
    IL_0368:  ldloc.s    V_5
    IL_036a:  call       valuetype Game.MusketBlock/LoadState Game.MusketBlock::GetLoadState(int32)
    IL_036f:  stloc.s    V_19
    IL_0371:  ldloc.s    V_5
    IL_0373:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType> Game.MusketBlock::GetBulletType(int32)
    IL_0378:  stloc.s    V_20
    IL_037a:  ldloc.s    V_6
    IL_037c:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0381:  call       bool Game.MusketBlock::GetHammerState(int32)
    IL_0386:  brfalse    IL_04ad

    IL_038b:  ldloc.s    V_19
    IL_038d:  brtrue.s   IL_03a6

    IL_038f:  ldarg.0
    IL_0390:  ldfld      class Game.SubsystemGui Game.SubsystemMusketBlockBehavior::m_subsystemGui
    IL_0395:  ldstr      "Load gunpowder first"
    IL_039a:  ldc.i4.1
    IL_039b:  ldc.i4.0
    IL_039c:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_03a1:  br         IL_04ad

    IL_03a6:  ldloc.s    V_19
    IL_03a8:  ldc.i4.1
    IL_03a9:  beq.s      IL_03b0

    IL_03ab:  ldloc.s    V_19
    IL_03ad:  ldc.i4.2
    IL_03ae:  bne.un.s   IL_03ca

    IL_03b0:  ldc.i4.1
    IL_03b1:  stloc.s    V_14
    IL_03b3:  ldarg.0
    IL_03b4:  ldfld      class Game.SubsystemGui Game.SubsystemMusketBlockBehavior::m_subsystemGui
    IL_03b9:  ldstr      "No bullet, blind shot fired"
    IL_03be:  ldc.i4.1
    IL_03bf:  ldc.i4.0
    IL_03c0:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_03c5:  br         IL_04ad

    IL_03ca:  ldloc.s    V_19
    IL_03cc:  ldc.i4.3
    IL_03cd:  bne.un     IL_04ad

    IL_03d2:  ldc.i4.1
    IL_03d3:  stloc.s    V_14
    IL_03d5:  ldloc.s    V_20
    IL_03d7:  stloc.s    V_21
    IL_03d9:  ldc.i4.1
    IL_03da:  stloc.s    V_22
    IL_03dc:  ldloca.s   V_21
    IL_03de:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::GetValueOrDefault()
    IL_03e3:  ldloc.s    V_22
    IL_03e5:  beq.s      IL_03ea

    IL_03e7:  ldc.i4.0
    IL_03e8:  br.s       IL_03f1

    IL_03ea:  ldloca.s   V_21
    IL_03ec:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::get_HasValue()
    IL_03f1:  brfalse.s  IL_042c

    IL_03f3:  ldc.i4     0xd6
    IL_03f8:  ldc.i4.0
    IL_03f9:  ldc.i4.0
    IL_03fa:  ldc.i4.2
    IL_03fb:  call       int32 Game.BulletBlock::SetBulletType(int32,
                                                               valuetype Game.BulletBlock/BulletType)
    IL_0400:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0405:  stloc.s    V_15
    IL_0407:  ldc.i4.8
    IL_0408:  stloc.s    V_16
    IL_040a:  ldloca.s   V_18
    IL_040c:  ldc.r4     3.9999999e-002
    IL_0411:  ldc.r4     3.9999999e-002
    IL_0416:  ldc.r4     0.25
    IL_041b:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0420:  ldc.r4     80.
    IL_0425:  stloc.s    V_17
    IL_0427:  br         IL_04ad

    IL_042c:  ldloc.s    V_20
    IL_042e:  stloc.s    V_21
    IL_0430:  ldc.i4.2
    IL_0431:  stloc.s    V_22
    IL_0433:  ldloca.s   V_21
    IL_0435:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::GetValueOrDefault()
    IL_043a:  ldloc.s    V_22
    IL_043c:  beq.s      IL_0441

    IL_043e:  ldc.i4.0
    IL_043f:  br.s       IL_0448

    IL_0441:  ldloca.s   V_21
    IL_0443:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::get_HasValue()
    IL_0448:  brfalse.s  IL_0480

    IL_044a:  ldc.i4     0xd6
    IL_044f:  ldc.i4.0
    IL_0450:  ldc.i4.0
    IL_0451:  ldc.i4.2
    IL_0452:  call       int32 Game.BulletBlock::SetBulletType(int32,
                                                               valuetype Game.BulletBlock/BulletType)
    IL_0457:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_045c:  stloc.s    V_15
    IL_045e:  ldc.i4.1
    IL_045f:  stloc.s    V_16
    IL_0461:  ldloca.s   V_18
    IL_0463:  ldc.r4     5.9999999e-002
    IL_0468:  ldc.r4     5.9999999e-002
    IL_046d:  ldc.r4     0.0
    IL_0472:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0477:  ldc.r4     60.
    IL_047c:  stloc.s    V_17
    IL_047e:  br.s       IL_04ad

    IL_0480:  ldloca.s   V_20
    IL_0482:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::get_HasValue()
    IL_0487:  brfalse.s  IL_04ad

    IL_0489:  ldc.i4     0xd6
    IL_048e:  ldc.i4.0
    IL_048f:  ldc.i4.0
    IL_0490:  ldloca.s   V_20
    IL_0492:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BulletBlock/BulletType>::get_Value()
    IL_0497:  call       int32 Game.BulletBlock::SetBulletType(int32,
                                                               valuetype Game.BulletBlock/BulletType)
    IL_049c:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_04a1:  stloc.s    V_15
    IL_04a3:  ldc.i4.1
    IL_04a4:  stloc.s    V_16
    IL_04a6:  ldc.r4     120.
    IL_04ab:  stloc.s    V_17
    IL_04ad:  ldloc.s    V_14
    IL_04af:  brfalse    IL_0730

    IL_04b4:  ldarg.3
    IL_04b5:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_04ba:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_04bf:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_04c4:  ldc.r4     0.40000001
    IL_04c9:  ble.un.s   IL_0510

    IL_04cb:  ldarg.0
    IL_04cc:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_04d1:  ldstr      "Audio/MusketMisfire"
    IL_04d6:  ldc.r4     1.
    IL_04db:  ldarg.0
    IL_04dc:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_04e1:  ldc.r4     -0.1
    IL_04e6:  ldc.r4     0.1
    IL_04eb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_04f0:  ldarg.3
    IL_04f1:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_04f6:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_04fb:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0500:  ldc.r4     3.
    IL_0505:  ldc.i4.1
    IL_0506:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_050b:  br         IL_0711

    IL_0510:  ldarg.3
    IL_0511:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0516:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_051b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0520:  ldarg.3
    IL_0521:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0526:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_052b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0530:  stloc.s    V_27
    IL_0532:  ldloca.s   V_27
    IL_0534:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0539:  ldc.r4     0.30000001
    IL_053e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0543:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0548:  ldarg.3
    IL_0549:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_054e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0553:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0558:  stloc.s    V_27
    IL_055a:  ldloca.s   V_27
    IL_055c:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0561:  ldc.r4     0.2
    IL_0566:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_056b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0570:  stloc.s    V_23
    IL_0572:  ldloc.s    V_23
    IL_0574:  ldarg.2
    IL_0575:  ldc.r4     10.
    IL_057a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_057f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0584:  ldloc.s    V_23
    IL_0586:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_058b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0590:  stloc.s    V_24
    IL_0592:  ldloc.s    V_24
    IL_0594:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0599:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_059e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_05a3:  stloc.s    V_25
    IL_05a5:  ldloc.s    V_24
    IL_05a7:  ldloc.s    V_25
    IL_05a9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_05ae:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_05b3:  stloc.s    V_26
    IL_05b5:  ldc.i4.0
    IL_05b6:  stloc.s    V_28
    IL_05b8:  br         IL_066a

    IL_05bd:  ldarg.0
    IL_05be:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_05c3:  ldloc.s    V_18
    IL_05c5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_05ca:  neg
    IL_05cb:  ldloc.s    V_18
    IL_05cd:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_05d2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05d7:  ldloc.s    V_25
    IL_05d9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_05de:  ldarg.0
    IL_05df:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_05e4:  ldloc.s    V_18
    IL_05e6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05eb:  neg
    IL_05ec:  ldloc.s    V_18
    IL_05ee:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_05f3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_05f8:  ldloc.s    V_26
    IL_05fa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_05ff:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0604:  ldarg.0
    IL_0605:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_060a:  ldloc.s    V_18
    IL_060c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0611:  neg
    IL_0612:  ldloc.s    V_18
    IL_0614:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0619:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_061e:  ldloc.s    V_24
    IL_0620:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0625:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_062a:  stloc.s    V_29
    IL_062c:  ldarg.0
    IL_062d:  ldfld      class Game.SubsystemProjectiles Game.SubsystemMusketBlockBehavior::m_subsystemProjectiles
    IL_0632:  ldloc.s    V_15
    IL_0634:  ldloc.s    V_23
    IL_0636:  ldloc.s    V_17
    IL_0638:  ldloc.s    V_24
    IL_063a:  ldloc.s    V_29
    IL_063c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0641:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0646:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_064b:  ldarg.3
    IL_064c:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0651:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_0656:  stloc.s    V_30
    IL_0658:  ldloc.s    V_30
    IL_065a:  brfalse.s  IL_0664

    IL_065c:  ldloc.s    V_30
    IL_065e:  ldc.i4.1
    IL_065f:  stfld      valuetype Game.ProjectileStoppedAction Game.Projectile::ProjectileStoppedAction
    IL_0664:  ldloc.s    V_28
    IL_0666:  ldc.i4.1
    IL_0667:  add
    IL_0668:  stloc.s    V_28
    IL_066a:  ldloc.s    V_28
    IL_066c:  ldloc.s    V_16
    IL_066e:  blt        IL_05bd

    IL_0673:  ldarg.0
    IL_0674:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_0679:  ldstr      "Audio/MusketFire"
    IL_067e:  ldc.r4     1.
    IL_0683:  ldarg.0
    IL_0684:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_0689:  ldc.r4     -0.1
    IL_068e:  ldc.r4     0.1
    IL_0693:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0698:  ldarg.3
    IL_0699:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_069e:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_06a3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_06a8:  ldc.r4     10.
    IL_06ad:  ldc.i4.1
    IL_06ae:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_06b3:  ldarg.0
    IL_06b4:  ldfld      class Game.SubsystemParticles Game.SubsystemMusketBlockBehavior::m_subsystemParticles
    IL_06b9:  ldarg.0
    IL_06ba:  ldfld      class Game.SubsystemTerrain Game.SubsystemMusketBlockBehavior::m_subsystemTerrain
    IL_06bf:  ldloc.s    V_23
    IL_06c1:  ldc.r4     0.30000001
    IL_06c6:  ldloc.s    V_24
    IL_06c8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_06cd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_06d2:  ldloc.s    V_24
    IL_06d4:  newobj     instance void Game.GunSmokeParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                          valuetype [Engine]Engine.Vector3,
                                                                          valuetype [Engine]Engine.Vector3)
    IL_06d9:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_06de:  ldarg.0
    IL_06df:  ldfld      class Game.SubsystemNoise Game.SubsystemMusketBlockBehavior::m_subsystemNoise
    IL_06e4:  ldloc.s    V_23
    IL_06e6:  ldc.r4     1.
    IL_06eb:  ldc.r4     40.
    IL_06f0:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_06f5:  ldarg.3
    IL_06f6:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_06fb:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0700:  ldc.r4     -4.
    IL_0705:  ldloc.s    V_24
    IL_0707:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_070c:  callvirt   instance void Game.ComponentBody::ApplyImpulse(valuetype [Engine]Engine.Vector3)
    IL_0711:  ldloc.s    V_6
    IL_0713:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0718:  ldc.i4.0
    IL_0719:  ldloc.s    V_6
    IL_071b:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0720:  ldc.i4.0
    IL_0721:  call       int32 Game.MusketBlock::SetLoadState(int32,
                                                              valuetype Game.MusketBlock/LoadState)
    IL_0726:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_072b:  stloc.s    V_6
    IL_072d:  ldc.i4.1
    IL_072e:  stloc.s    V_7
    IL_0730:  ldloc.s    V_6
    IL_0732:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0737:  call       bool Game.MusketBlock::GetHammerState(int32)
    IL_073c:  brfalse.s  IL_078e

    IL_073e:  ldloc.s    V_6
    IL_0740:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0745:  ldc.i4.0
    IL_0746:  ldloc.s    V_6
    IL_0748:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_074d:  ldc.i4.0
    IL_074e:  call       int32 Game.MusketBlock::SetHammerState(int32,
                                                                bool)
    IL_0753:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0758:  stloc.s    V_6
    IL_075a:  ldarg.0
    IL_075b:  ldfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_0760:  ldstr      "Audio/HammerRelease"
    IL_0765:  ldc.r4     1.
    IL_076a:  ldarg.0
    IL_076b:  ldfld      class Game.Random Game.SubsystemMusketBlockBehavior::m_random
    IL_0770:  ldc.r4     -0.1
    IL_0775:  ldc.r4     0.1
    IL_077a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_077f:  ldc.r4     0.0
    IL_0784:  ldc.r4     0.0
    IL_0789:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_078e:  ldarg.0
    IL_078f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64> Game.SubsystemMusketBlockBehavior::m_aimStartTimes
    IL_0794:  ldarg.3
    IL_0795:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentMiner,float64>::Remove(!0)
    IL_079a:  pop
    IL_079b:  ldloc.s    V_6
    IL_079d:  ldloc.2
    IL_079e:  beq.s      IL_07b3

    IL_07a0:  ldloc.0
    IL_07a1:  ldloc.1
    IL_07a2:  ldc.i4.1
    IL_07a3:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_07a8:  pop
    IL_07a9:  ldloc.0
    IL_07aa:  ldloc.1
    IL_07ab:  ldloc.s    V_6
    IL_07ad:  ldc.i4.1
    IL_07ae:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_07b3:  ldloc.s    V_7
    IL_07b5:  ldc.i4.0
    IL_07b6:  ble.s      IL_07c0

    IL_07b8:  ldarg.3
    IL_07b9:  ldloc.s    V_7
    IL_07bb:  callvirt   instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_07c0:  ldc.i4.0
    IL_07c1:  ret
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
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_000e:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0018:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_0052:  call       int32 Game.TerrainData::ExtractData(int32)
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
    IL_008b:  call       int32 Game.TerrainData::MakeBlockValue(int32,
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
    // 代码大小       134 (0x86)
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
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0031:  stfld      class Game.SubsystemGui Game.SubsystemMusketBlockBehavior::m_subsystemGui
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_0043:  stfld      class Game.SubsystemProjectiles Game.SubsystemMusketBlockBehavior::m_subsystemProjectiles
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0055:  stfld      class Game.SubsystemParticles Game.SubsystemMusketBlockBehavior::m_subsystemParticles
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0067:  stfld      class Game.SubsystemAudio Game.SubsystemMusketBlockBehavior::m_subsystemAudio
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_0079:  stfld      class Game.SubsystemNoise Game.SubsystemMusketBlockBehavior::m_subsystemNoise
    IL_007e:  ldarg.0
    IL_007f:  ldarg.1
    IL_0080:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0085:  ret
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