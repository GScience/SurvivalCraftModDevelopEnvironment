.class public auto ansi beforefieldinit Game.ComponentPlayerInput
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.SubsystemCamera m_subsystemCamera
  .field private class Game.SubsystemInput m_subsystemInput
  .field private class Game.SubsystemDrawing m_subsystemDrawing
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private float64 m_lastDigTime
  .field private bool m_speedOrderBlocked
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_aimDirection
  .field private bool m_isAimBlocked
  .field private bool m_isDigBlocked
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> '<HighlightRaycastResult>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> 
          get_HighlightRaycastResult() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayerInput::'<HighlightRaycastResult>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPlayerInput::get_HighlightRaycastResult

  .method private hidebysig specialname instance void 
          set_HighlightRaycastResult(valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayerInput::'<HighlightRaycastResult>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPlayerInput::set_HighlightRaycastResult

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentPlayerInput::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       3546 (0xdda)
    .maxstack  7
    .locals init (valuetype Game.PlayerInput V_0,
             class Game.ComponentSteedBehavior V_1,
             class Game.ComponentBoat V_2,
             class Game.ComponentMount V_3,
             int32 V_4,
             class Game.Block V_5,
             bool V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> V_10,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_11,
             valuetype [Engine]Engine.Vector2 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype [Engine]Engine.Graphics.Viewport V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_17,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> V_18,
             valuetype [Engine]Engine.Vector3 V_19,
             valuetype [Engine]Engine.Vector3 V_20,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24,
             valuetype [Engine]Engine.Vector3 V_25,
             valuetype [Engine]Engine.Vector3 V_26,
             valuetype [Engine]Engine.Matrix V_27,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_28,
             class Game.ComponentCreativeInventory V_29,
             valuetype [Engine]Engine.Vector3 V_30,
             valuetype [Engine]Engine.Vector3 V_31,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_32,
             int32 V_33,
             int32 V_34,
             class Game.Block V_35,
             int32 V_36,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> V_37,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> V_38,
             bool V_39,
             int32 V_40,
             int32 V_41,
             int32 V_42)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_000b:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0010:  ldc.r4     0.0
    IL_0015:  ble.un.s   IL_0083

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_001d:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0022:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0027:  brtrue.s   IL_0083

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.SubsystemCamera Game.ComponentPlayerInput::m_subsystemCamera
    IL_002f:  ldarg.0
    IL_0030:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0035:  callvirt   instance bool Game.SubsystemCamera::IsEntityControlEnabled(class [EntitySystem]GameEntitySystem.Entity)
    IL_003a:  brfalse.s  IL_0083

    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.SubsystemInput Game.ComponentPlayerInput::m_subsystemInput
    IL_0042:  callvirt   instance valuetype Game.PlayerInput Game.SubsystemInput::get_PlayerInput()
    IL_0047:  stloc.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.SubsystemCamera Game.ComponentPlayerInput::m_subsystemCamera
    IL_004e:  callvirt   instance bool Game.SubsystemCamera::get_CameraRequiresMovementControls()
    IL_0053:  brfalse.s  IL_008b

    IL_0055:  ldloca.s   V_0
    IL_0057:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_005c:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0061:  ldloca.s   V_0
    IL_0063:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0068:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_006d:  ldloca.s   V_0
    IL_006f:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0074:  stfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_0079:  ldloca.s   V_0
    IL_007b:  ldc.i4.0
    IL_007c:  stfld      bool Game.PlayerInput::Jump
    IL_0081:  br.s       IL_008b

    IL_0083:  ldloca.s   V_0
    IL_0085:  initobj    Game.PlayerInput
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class Game.SubsystemInput Game.ComponentPlayerInput::m_subsystemInput
    IL_0091:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_0096:  brtrue.s   IL_00b1

    IL_0098:  ldarg.0
    IL_0099:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_009e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00a3:  brfalse.s  IL_00b1

    IL_00a5:  ldloca.s   V_0
    IL_00a7:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00ac:  stfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_00b7:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_00bc:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_00c1:  brfalse.s  IL_0131

    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_00c9:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_00ce:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_00d9:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_00de:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_00e3:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_00e8:  ldloc.0
    IL_00e9:  ldfld      int32 Game.PlayerInput::ScrollInventory
    IL_00ee:  add
    IL_00ef:  ldc.i4.0
    IL_00f0:  ldc.i4.5
    IL_00f1:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00f6:  callvirt   instance void Game.IInventory::set_ActiveSlotIndex(int32)
    IL_00fb:  ldloca.s   V_0
    IL_00fd:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_0102:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0107:  brfalse.s  IL_0131

    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_010f:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0114:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0119:  ldloca.s   V_0
    IL_011b:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_0120:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0125:  ldc.i4.0
    IL_0126:  ldc.i4.5
    IL_0127:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_012c:  callvirt   instance void Game.IInventory::set_ActiveSlotIndex(int32)
    IL_0131:  ldnull
    IL_0132:  stloc.1
    IL_0133:  ldnull
    IL_0134:  stloc.2
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_013b:  callvirt   instance class Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    IL_0140:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_0145:  stloc.3
    IL_0146:  ldloc.3
    IL_0147:  brfalse.s  IL_0161

    IL_0149:  ldloc.3
    IL_014a:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_014f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSteedBehavior>()
    IL_0154:  stloc.1
    IL_0155:  ldloc.3
    IL_0156:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_015b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBoat>()
    IL_0160:  stloc.2
    IL_0161:  ldloc.1
    IL_0162:  brfalse    IL_0287

    IL_0167:  ldloc.0
    IL_0168:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_016d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0172:  ldc.r4     0.5
    IL_0177:  ble.un.s   IL_01c1

    IL_0179:  ldarg.0
    IL_017a:  ldfld      bool Game.ComponentPlayerInput::m_speedOrderBlocked
    IL_017f:  brtrue.s   IL_01c1

    IL_0181:  ldarg.0
    IL_0182:  ldfld      class Game.SubsystemAudio Game.ComponentPlayerInput::m_subsystemAudio
    IL_0187:  ldstr      "Audio/HorseYellFast"
    IL_018c:  ldc.r4     0.75
    IL_0191:  ldc.r4     0.0
    IL_0196:  ldarg.0
    IL_0197:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_019c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01a1:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_01a6:  ldc.r4     2.
    IL_01ab:  ldc.i4.0
    IL_01ac:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_01b1:  ldloc.1
    IL_01b2:  ldc.i4.1
    IL_01b3:  callvirt   instance void Game.ComponentSteedBehavior::set_SpeedOrder(int32)
    IL_01b8:  ldarg.0
    IL_01b9:  ldc.i4.1
    IL_01ba:  stfld      bool Game.ComponentPlayerInput::m_speedOrderBlocked
    IL_01bf:  br.s       IL_0239

    IL_01c1:  ldloc.0
    IL_01c2:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_01c7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01cc:  ldc.r4     -0.5
    IL_01d1:  bge.un.s   IL_021b

    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      bool Game.ComponentPlayerInput::m_speedOrderBlocked
    IL_01d9:  brtrue.s   IL_021b

    IL_01db:  ldarg.0
    IL_01dc:  ldfld      class Game.SubsystemAudio Game.ComponentPlayerInput::m_subsystemAudio
    IL_01e1:  ldstr      "Audio/HorseYellSlow"
    IL_01e6:  ldc.r4     0.75
    IL_01eb:  ldc.r4     0.0
    IL_01f0:  ldarg.0
    IL_01f1:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_01f6:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01fb:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0200:  ldc.r4     2.
    IL_0205:  ldc.i4.0
    IL_0206:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_020b:  ldloc.1
    IL_020c:  ldc.i4.m1
    IL_020d:  callvirt   instance void Game.ComponentSteedBehavior::set_SpeedOrder(int32)
    IL_0212:  ldarg.0
    IL_0213:  ldc.i4.1
    IL_0214:  stfld      bool Game.ComponentPlayerInput::m_speedOrderBlocked
    IL_0219:  br.s       IL_0239

    IL_021b:  ldloc.0
    IL_021c:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0221:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0226:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_022b:  ldc.r4     0.25
    IL_0230:  bgt.un.s   IL_0239

    IL_0232:  ldarg.0
    IL_0233:  ldc.i4.0
    IL_0234:  stfld      bool Game.ComponentPlayerInput::m_speedOrderBlocked
    IL_0239:  ldloc.1
    IL_023a:  ldloc.0
    IL_023b:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0240:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0245:  callvirt   instance void Game.ComponentSteedBehavior::set_TurnOrder(float32)
    IL_024a:  ldloc.1
    IL_024b:  ldloc.0
    IL_024c:  ldfld      bool Game.PlayerInput::Jump
    IL_0251:  brtrue.s   IL_0256

    IL_0253:  ldc.i4.0
    IL_0254:  br.s       IL_0257

    IL_0256:  ldc.i4.1
    IL_0257:  conv.r4
    IL_0258:  callvirt   instance void Game.ComponentSteedBehavior::set_JumpOrder(float32)
    IL_025d:  ldarg.0
    IL_025e:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0263:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0268:  ldloc.0
    IL_0269:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_026e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0273:  ldc.r4     0.0
    IL_0278:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_027d:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_0282:  br         IL_0431

    IL_0287:  ldloc.2
    IL_0288:  brfalse    IL_0347

    IL_028d:  ldloc.2
    IL_028e:  ldloc.0
    IL_028f:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0294:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0299:  callvirt   instance void Game.ComponentBoat::set_TurnOrder(float32)
    IL_029e:  ldloc.2
    IL_029f:  ldloc.0
    IL_02a0:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_02a5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02aa:  callvirt   instance void Game.ComponentBoat::set_MoveOrder(float32)
    IL_02af:  ldarg.0
    IL_02b0:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_02b5:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_02ba:  ldloc.0
    IL_02bb:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_02c0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02c5:  ldc.r4     0.0
    IL_02ca:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02cf:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_02d4:  ldarg.0
    IL_02d5:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_02da:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_02df:  ldloc.0
    IL_02e0:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_02e5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02ea:  ldc.r4     -0.2
    IL_02ef:  blt.s      IL_0305

    IL_02f1:  ldloc.0
    IL_02f2:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_02f7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02fc:  ldc.r4     0.2
    IL_0301:  cgt
    IL_0303:  br.s       IL_0306

    IL_0305:  ldc.i4.1
    IL_0306:  callvirt   instance void Game.ComponentCreatureModel::set_RowLeftOrder(bool)
    IL_030b:  ldarg.0
    IL_030c:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0311:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0316:  ldloc.0
    IL_0317:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_031c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0321:  ldc.r4     0.2
    IL_0326:  bgt.s      IL_033c

    IL_0328:  ldloc.0
    IL_0329:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_032e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0333:  ldc.r4     0.2
    IL_0338:  cgt
    IL_033a:  br.s       IL_033d

    IL_033c:  ldc.i4.1
    IL_033d:  callvirt   instance void Game.ComponentCreatureModel::set_RowRightOrder(bool)
    IL_0342:  br         IL_0431

    IL_0347:  ldarg.0
    IL_0348:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_034d:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0352:  ldarg.0
    IL_0353:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0358:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_035d:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_0362:  brtrue.s   IL_0381

    IL_0364:  ldloc.0
    IL_0365:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_036a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_036f:  ldloc.0
    IL_0370:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0375:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_037a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_037f:  br.s       IL_039c

    IL_0381:  ldloc.0
    IL_0382:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0387:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_038c:  ldloc.0
    IL_038d:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0392:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0397:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_039c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_03a1:  callvirt   instance void Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_03a6:  ldarg.0
    IL_03a7:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_03ac:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_03b1:  ldc.r4     0.0
    IL_03b6:  ldloc.0
    IL_03b7:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_03bc:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_03c1:  ldc.r4     0.0
    IL_03c6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03cb:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_03d0:  callvirt   instance void Game.ComponentLocomotion::set_FlyOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_03d5:  ldarg.0
    IL_03d6:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_03db:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_03e0:  ldloc.0
    IL_03e1:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_03e6:  ldc.r4     1.
    IL_03eb:  ldc.r4     0.0
    IL_03f0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f5:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_03fa:  callvirt   instance void Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
    IL_03ff:  ldarg.0
    IL_0400:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0405:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_040a:  ldloc.0
    IL_040b:  ldfld      bool Game.PlayerInput::Jump
    IL_0410:  brtrue.s   IL_0415

    IL_0412:  ldc.i4.0
    IL_0413:  br.s       IL_0416

    IL_0415:  ldc.i4.1
    IL_0416:  conv.r4
    IL_0417:  ldarg.0
    IL_0418:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_041d:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0422:  callvirt   instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_0427:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_042c:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_0431:  ldarg.0
    IL_0432:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0437:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_043c:  ldloc.0
    IL_043d:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_0442:  call       bool Game.SettingsManager::get_FlipVerticalAxis()
    IL_0447:  brtrue.s   IL_045a

    IL_0449:  ldc.r4     0.0
    IL_044e:  ldc.r4     1.
    IL_0453:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0458:  br.s       IL_0469

    IL_045a:  ldc.r4     0.0
    IL_045f:  ldc.r4     -1.
    IL_0464:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0469:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_046e:  ldarg.0
    IL_046f:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0474:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0479:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookOrder()
    IL_047e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0483:  ldc.r4     0.0
    IL_0488:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_048d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0492:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_0497:  ldarg.0
    IL_0498:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_049d:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_04a2:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_04a7:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_04ac:  stloc.s    V_4
    IL_04ae:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_04b3:  ldloc.s    V_4
    IL_04b5:  ldelem.ref
    IL_04b6:  stloc.s    V_5
    IL_04b8:  ldc.i4.0
    IL_04b9:  stloc.s    V_6
    IL_04bb:  ldloca.s   V_0
    IL_04bd:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_04c2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_04c7:  brfalse    IL_0632

    IL_04cc:  ldloc.s    V_6
    IL_04ce:  brtrue     IL_0632

    IL_04d3:  ldarg.0
    IL_04d4:  ldfld      class Game.SubsystemTime Game.ComponentPlayerInput::m_subsystemTime
    IL_04d9:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_04de:  ldarg.0
    IL_04df:  ldfld      float64 Game.ComponentPlayerInput::m_lastDigTime
    IL_04e4:  sub
    IL_04e5:  ldc.r8     0.33000001311302185
    IL_04ee:  ble.un     IL_0632

    IL_04f3:  ldarg.0
    IL_04f4:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_04f9:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_04fe:  stloc.s    V_8
    IL_0500:  ldarg.0
    IL_0501:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_0506:  ldloca.s   V_0
    IL_0508:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_050d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0512:  ldc.r4     1.
    IL_0517:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_051c:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0521:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                        valuetype [Engine]Engine.Matrix)
    IL_0526:  ldloc.s    V_8
    IL_0528:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_052d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0532:  stloc.s    V_9
    IL_0534:  ldarg.0
    IL_0535:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_053a:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_053f:  ldloc.s    V_8
    IL_0541:  ldloc.s    V_9
    IL_0543:  callvirt   instance bool Game.ComponentMiner::Use(valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Vector3)
    IL_0548:  brtrue     IL_0617

    IL_054d:  ldarg.0
    IL_054e:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0553:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0558:  ldloc.s    V_8
    IL_055a:  ldloc.s    V_9
    IL_055c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.ComponentMiner::PickBody(valuetype [Engine]Engine.Vector3,
                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0561:  stloc.s    V_10
    IL_0563:  ldarg.0
    IL_0564:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0569:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_056e:  ldloc.s    V_8
    IL_0570:  ldloc.s    V_9
    IL_0572:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForInteraction(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                  valuetype [Engine]Engine.Vector3)
    IL_0577:  stloc.s    V_11
    IL_0579:  ldloca.s   V_11
    IL_057b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0580:  brfalse    IL_0632

    IL_0585:  ldloca.s   V_10
    IL_0587:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
    IL_058c:  brfalse.s  IL_05ab

    IL_058e:  ldloca.s   V_11
    IL_0590:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0595:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_059a:  ldloca.s   V_10
    IL_059c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_05a1:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_05a6:  bge.un     IL_0632

    IL_05ab:  ldarg.0
    IL_05ac:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_05b1:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_05b6:  ldloca.s   V_11
    IL_05b8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_05bd:  callvirt   instance bool Game.ComponentMiner::Interact(valuetype Game.TerrainRaycastResult)
    IL_05c2:  brtrue.s   IL_05fa

    IL_05c4:  ldarg.0
    IL_05c5:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_05ca:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_05cf:  ldloca.s   V_11
    IL_05d1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_05d6:  callvirt   instance bool Game.ComponentMiner::Place(valuetype Game.TerrainRaycastResult)
    IL_05db:  brfalse.s  IL_0632

    IL_05dd:  ldarg.0
    IL_05de:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayerInput::m_subsystemTerrain
    IL_05e3:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_05e8:  ldc.i4.1
    IL_05e9:  callvirt   instance void Game.TerrainUpdater::set_IsSynchronousUpdateRequired(bool)
    IL_05ee:  ldc.i4.1
    IL_05ef:  stloc.s    V_6
    IL_05f1:  ldarg.0
    IL_05f2:  ldc.i4.1
    IL_05f3:  stfld      bool Game.ComponentPlayerInput::m_isAimBlocked
    IL_05f8:  br.s       IL_0632

    IL_05fa:  ldarg.0
    IL_05fb:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayerInput::m_subsystemTerrain
    IL_0600:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0605:  ldc.i4.1
    IL_0606:  callvirt   instance void Game.TerrainUpdater::set_IsSynchronousUpdateRequired(bool)
    IL_060b:  ldc.i4.1
    IL_060c:  stloc.s    V_6
    IL_060e:  ldarg.0
    IL_060f:  ldc.i4.1
    IL_0610:  stfld      bool Game.ComponentPlayerInput::m_isAimBlocked
    IL_0615:  br.s       IL_0632

    IL_0617:  ldarg.0
    IL_0618:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayerInput::m_subsystemTerrain
    IL_061d:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0622:  ldc.i4.1
    IL_0623:  callvirt   instance void Game.TerrainUpdater::set_IsSynchronousUpdateRequired(bool)
    IL_0628:  ldc.i4.1
    IL_0629:  stloc.s    V_6
    IL_062b:  ldarg.0
    IL_062c:  ldc.i4.1
    IL_062d:  stfld      bool Game.ComponentPlayerInput::m_isAimBlocked
    IL_0632:  ldarg.0
    IL_0633:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_0638:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_063d:  stloc.s    V_7
    IL_063f:  ldloca.s   V_0
    IL_0641:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0646:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_064b:  brfalse    IL_07fb

    IL_0650:  ldloc.s    V_5
    IL_0652:  ldfld      bool Game.Block::IsAimable
    IL_0657:  brfalse    IL_07fb

    IL_065c:  ldarg.0
    IL_065d:  ldfld      class Game.SubsystemTime Game.ComponentPlayerInput::m_subsystemTime
    IL_0662:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0667:  ldarg.0
    IL_0668:  ldfld      float64 Game.ComponentPlayerInput::m_lastDigTime
    IL_066d:  sub
    IL_066e:  ldc.r8     0.33000001311302185
    IL_0677:  ble.un     IL_07fb

    IL_067c:  ldarg.0
    IL_067d:  ldfld      bool Game.ComponentPlayerInput::m_isAimBlocked
    IL_0682:  brtrue     IL_083a

    IL_0687:  ldloca.s   V_0
    IL_0689:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_068e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0693:  stloc.s    V_12
    IL_0695:  ldarg.0
    IL_0696:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_069b:  ldloc.s    V_12
    IL_069d:  ldc.r4     1.
    IL_06a2:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_06a7:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_06ac:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                        valuetype [Engine]Engine.Matrix)
    IL_06b1:  stloc.s    V_13
    IL_06b3:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_06b8:  stloc.s    V_14
    IL_06ba:  ldloca.s   V_0
    IL_06bc:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_06c1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_06c6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_06cb:  ldloc.s    V_14
    IL_06cd:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_06d2:  conv.r4
    IL_06d3:  ldc.r4     0.1
    IL_06d8:  mul
    IL_06d9:  blt.un     IL_07ba

    IL_06de:  ldloca.s   V_0
    IL_06e0:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_06e5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_06ea:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_06ef:  ldloc.s    V_14
    IL_06f1:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_06f6:  conv.r4
    IL_06f7:  ldc.r4     0.89999998
    IL_06fc:  mul
    IL_06fd:  bge.un     IL_07ba

    IL_0702:  ldloca.s   V_0
    IL_0704:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0709:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_070e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0713:  ldloc.s    V_14
    IL_0715:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_071a:  conv.r4
    IL_071b:  ldc.r4     0.1
    IL_0720:  mul
    IL_0721:  blt.un     IL_07ba

    IL_0726:  ldloca.s   V_0
    IL_0728:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_072d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0732:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0737:  ldloc.s    V_14
    IL_0739:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_073e:  conv.r4
    IL_073f:  ldc.r4     0.89999998
    IL_0744:  mul
    IL_0745:  bge.un.s   IL_07ba

    IL_0747:  ldarg.0
    IL_0748:  ldloc.s    V_13
    IL_074a:  ldloc.s    V_7
    IL_074c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0751:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0756:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_075b:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_0760:  ldarg.0
    IL_0761:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0766:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_076b:  ldloc.s    V_7
    IL_076d:  ldarg.0
    IL_076e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_0773:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0778:  ldc.i4.0
    IL_0779:  callvirt   instance bool Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype Game.AimState)
    IL_077e:  brfalse    IL_083a

    IL_0783:  ldarg.0
    IL_0784:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0789:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_078e:  ldloc.s    V_7
    IL_0790:  ldarg.0
    IL_0791:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_0796:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_079b:  ldc.i4.1
    IL_079c:  callvirt   instance bool Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype Game.AimState)
    IL_07a1:  pop
    IL_07a2:  ldarg.0
    IL_07a3:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_07a8:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_07ae:  ldarg.0
    IL_07af:  ldc.i4.1
    IL_07b0:  stfld      bool Game.ComponentPlayerInput::m_isAimBlocked
    IL_07b5:  br         IL_083a

    IL_07ba:  ldarg.0
    IL_07bb:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_07c0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_07c5:  brfalse.s  IL_083a

    IL_07c7:  ldarg.0
    IL_07c8:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_07cd:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_07d2:  ldloc.s    V_7
    IL_07d4:  ldarg.0
    IL_07d5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_07da:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_07df:  ldc.i4.1
    IL_07e0:  callvirt   instance bool Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype Game.AimState)
    IL_07e5:  pop
    IL_07e6:  ldarg.0
    IL_07e7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_07ec:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_07f2:  ldarg.0
    IL_07f3:  ldc.i4.1
    IL_07f4:  stfld      bool Game.ComponentPlayerInput::m_isAimBlocked
    IL_07f9:  br.s       IL_083a

    IL_07fb:  ldarg.0
    IL_07fc:  ldc.i4.0
    IL_07fd:  stfld      bool Game.ComponentPlayerInput::m_isAimBlocked
    IL_0802:  ldarg.0
    IL_0803:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_0808:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_080d:  brfalse.s  IL_083a

    IL_080f:  ldarg.0
    IL_0810:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0815:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_081a:  ldloc.s    V_7
    IL_081c:  ldarg.0
    IL_081d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_0822:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0827:  ldc.i4.2
    IL_0828:  callvirt   instance bool Game.ComponentMiner::Aim(valuetype [Engine]Engine.Vector3,
                                                                valuetype [Engine]Engine.Vector3,
                                                                valuetype Game.AimState)
    IL_082d:  pop
    IL_082e:  ldarg.0
    IL_082f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_0834:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_083a:  ldloc.s    V_6
    IL_083c:  ldarg.0
    IL_083d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPlayerInput::m_aimDirection
    IL_0842:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0847:  or
    IL_0848:  stloc.s    V_6
    IL_084a:  ldloca.s   V_0
    IL_084c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_0851:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0856:  brfalse    IL_097c

    IL_085b:  ldloc.s    V_6
    IL_085d:  brtrue     IL_097c

    IL_0862:  ldarg.0
    IL_0863:  ldfld      class Game.SubsystemTime Game.ComponentPlayerInput::m_subsystemTime
    IL_0868:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_086d:  ldarg.0
    IL_086e:  ldfld      float64 Game.ComponentPlayerInput::m_lastDigTime
    IL_0873:  sub
    IL_0874:  ldc.r8     0.33000001311302185
    IL_087d:  ble.un     IL_097c

    IL_0882:  ldarg.0
    IL_0883:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_0888:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_088d:  stloc.s    V_15
    IL_088f:  ldarg.0
    IL_0890:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_0895:  ldloca.s   V_0
    IL_0897:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_089c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_08a1:  ldc.r4     1.
    IL_08a6:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_08ab:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_08b0:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                        valuetype [Engine]Engine.Matrix)
    IL_08b5:  ldloc.s    V_15
    IL_08b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_08bc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_08c1:  stloc.s    V_16
    IL_08c3:  ldarg.0
    IL_08c4:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_08c9:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_08ce:  ldloc.s    V_15
    IL_08d0:  ldloc.s    V_16
    IL_08d2:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForInteraction(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                  valuetype [Engine]Engine.Vector3)
    IL_08d7:  stloc.s    V_17
    IL_08d9:  ldarg.0
    IL_08da:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_08df:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_08e4:  ldloc.s    V_15
    IL_08e6:  ldloc.s    V_16
    IL_08e8:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.ComponentMiner::PickBody(valuetype [Engine]Engine.Vector3,
                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_08ed:  stloc.s    V_18
    IL_08ef:  ldloca.s   V_18
    IL_08f1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
    IL_08f6:  brfalse    IL_097c

    IL_08fb:  ldloca.s   V_17
    IL_08fd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0902:  brfalse.s  IL_091e

    IL_0904:  ldloca.s   V_17
    IL_0906:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_090b:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0910:  ldloca.s   V_18
    IL_0912:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_0917:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_091c:  ble.un.s   IL_097c

    IL_091e:  ldloc.s    V_15
    IL_0920:  ldloc.s    V_16
    IL_0922:  ldloca.s   V_18
    IL_0924:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_0929:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_092e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0933:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0938:  ldarg.0
    IL_0939:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_093e:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0943:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0948:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_094d:  ldc.r4     2.
    IL_0952:  bgt.un.s   IL_097c

    IL_0954:  ldarg.0
    IL_0955:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_095a:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_095f:  ldloca.s   V_18
    IL_0961:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_0966:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_096b:  ldloc.s    V_16
    IL_096d:  callvirt   instance void Game.ComponentMiner::Hit(class Game.ComponentBody,
                                                                valuetype [Engine]Engine.Vector3)
    IL_0972:  ldc.i4.1
    IL_0973:  stloc.s    V_6
    IL_0975:  ldarg.0
    IL_0976:  ldc.i4.1
    IL_0977:  stfld      bool Game.ComponentPlayerInput::m_isDigBlocked
    IL_097c:  ldloca.s   V_0
    IL_097e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0983:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0988:  brfalse    IL_0a55

    IL_098d:  ldloc.s    V_6
    IL_098f:  brtrue     IL_0a55

    IL_0994:  ldarg.0
    IL_0995:  ldfld      bool Game.ComponentPlayerInput::m_isDigBlocked
    IL_099a:  brtrue     IL_0a55

    IL_099f:  ldarg.0
    IL_09a0:  ldfld      class Game.SubsystemTime Game.ComponentPlayerInput::m_subsystemTime
    IL_09a5:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_09aa:  ldarg.0
    IL_09ab:  ldfld      float64 Game.ComponentPlayerInput::m_lastDigTime
    IL_09b0:  sub
    IL_09b1:  ldc.r8     0.33000001311302185
    IL_09ba:  ble.un     IL_0a55

    IL_09bf:  ldarg.0
    IL_09c0:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_09c5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_09ca:  stloc.s    V_19
    IL_09cc:  ldarg.0
    IL_09cd:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_09d2:  ldloca.s   V_0
    IL_09d4:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_09d9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_09de:  ldc.r4     1.
    IL_09e3:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_09e8:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_09ed:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                        valuetype [Engine]Engine.Matrix)
    IL_09f2:  stloc.s    V_20
    IL_09f4:  ldarg.0
    IL_09f5:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_09fa:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_09ff:  ldloc.s    V_19
    IL_0a01:  ldloc.s    V_20
    IL_0a03:  ldloc.s    V_19
    IL_0a05:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0a0a:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a0f:  stloc.s    V_21
    IL_0a11:  ldloca.s   V_21
    IL_0a13:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0a18:  brfalse.s  IL_0a55

    IL_0a1a:  ldarg.0
    IL_0a1b:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0a20:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0a25:  ldloca.s   V_21
    IL_0a27:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0a2c:  callvirt   instance bool Game.ComponentMiner::Dig(valuetype Game.TerrainRaycastResult)
    IL_0a31:  brfalse.s  IL_0a55

    IL_0a33:  ldarg.0
    IL_0a34:  ldarg.0
    IL_0a35:  ldfld      class Game.SubsystemTime Game.ComponentPlayerInput::m_subsystemTime
    IL_0a3a:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0a3f:  stfld      float64 Game.ComponentPlayerInput::m_lastDigTime
    IL_0a44:  ldarg.0
    IL_0a45:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayerInput::m_subsystemTerrain
    IL_0a4a:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0a4f:  ldc.i4.1
    IL_0a50:  callvirt   instance void Game.TerrainUpdater::set_IsSynchronousUpdateRequired(bool)
    IL_0a55:  ldloca.s   V_0
    IL_0a57:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0a5c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0a61:  brtrue.s   IL_0a6a

    IL_0a63:  ldarg.0
    IL_0a64:  ldc.i4.0
    IL_0a65:  stfld      bool Game.ComponentPlayerInput::m_isDigBlocked
    IL_0a6a:  ldloc.0
    IL_0a6b:  ldfld      bool Game.PlayerInput::Drop
    IL_0a70:  brfalse    IL_0b89

    IL_0a75:  ldarg.0
    IL_0a76:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0a7b:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0a80:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0a85:  brfalse    IL_0b89

    IL_0a8a:  ldarg.0
    IL_0a8b:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0a90:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0a95:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0a9a:  dup
    IL_0a9b:  dup
    IL_0a9c:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0aa1:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0aa6:  stloc.s    V_22
    IL_0aa8:  dup
    IL_0aa9:  dup
    IL_0aaa:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0aaf:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0ab4:  stloc.s    V_23
    IL_0ab6:  dup
    IL_0ab7:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0abc:  ldloc.s    V_23
    IL_0abe:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_0ac3:  stloc.s    V_24
    IL_0ac5:  ldloc.s    V_22
    IL_0ac7:  brfalse    IL_0b89

    IL_0acc:  ldloc.s    V_24
    IL_0ace:  brfalse    IL_0b89

    IL_0ad3:  ldarg.0
    IL_0ad4:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0ad9:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0ade:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0ae3:  ldc.r4     0.0
    IL_0ae8:  ldarg.0
    IL_0ae9:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0aee:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0af3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0af8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0afd:  ldc.r4     0.66000003
    IL_0b02:  mul
    IL_0b03:  ldc.r4     0.0
    IL_0b08:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0b0d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0b12:  ldc.r4     0.25
    IL_0b17:  ldarg.0
    IL_0b18:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0b1d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0b22:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0b27:  stloc.s    V_27
    IL_0b29:  ldloca.s   V_27
    IL_0b2b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0b30:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0b35:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0b3a:  stloc.s    V_25
    IL_0b3c:  ldc.r4     8.
    IL_0b41:  ldarg.0
    IL_0b42:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0b47:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0b4c:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0b51:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0b56:  stloc.s    V_27
    IL_0b58:  ldloca.s   V_27
    IL_0b5a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0b5f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0b64:  stloc.s    V_26
    IL_0b66:  ldarg.0
    IL_0b67:  ldfld      class Game.SubsystemPickables Game.ComponentPlayerInput::m_subsystemPickables
    IL_0b6c:  ldloc.s    V_22
    IL_0b6e:  ldloc.s    V_24
    IL_0b70:  ldloc.s    V_25
    IL_0b72:  ldloc.s    V_26
    IL_0b74:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0b79:  ldloca.s   V_28
    IL_0b7b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0b81:  ldloc.s    V_28
    IL_0b83:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0b88:  pop
    IL_0b89:  ldloca.s   V_0
    IL_0b8b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::PickBlockType
    IL_0b90:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0b95:  brfalse    IL_0dad

    IL_0b9a:  ldloc.s    V_6
    IL_0b9c:  brtrue     IL_0dad

    IL_0ba1:  ldarg.0
    IL_0ba2:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0ba7:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0bac:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0bb1:  isinst     Game.ComponentCreativeInventory
    IL_0bb6:  stloc.s    V_29
    IL_0bb8:  ldloc.s    V_29
    IL_0bba:  brfalse    IL_0dad

    IL_0bbf:  ldarg.0
    IL_0bc0:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_0bc5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0bca:  stloc.s    V_30
    IL_0bcc:  ldarg.0
    IL_0bcd:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_0bd2:  ldloca.s   V_0
    IL_0bd4:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::PickBlockType
    IL_0bd9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0bde:  ldc.r4     1.
    IL_0be3:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_0be8:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0bed:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                        valuetype [Engine]Engine.Matrix)
    IL_0bf2:  stloc.s    V_31
    IL_0bf4:  ldarg.0
    IL_0bf5:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0bfa:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0bff:  ldloc.s    V_30
    IL_0c01:  ldloc.s    V_31
    IL_0c03:  ldloc.s    V_30
    IL_0c05:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0c0a:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0c0f:  stloc.s    V_32
    IL_0c11:  ldloca.s   V_32
    IL_0c13:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0c18:  brfalse    IL_0dad

    IL_0c1d:  ldloca.s   V_32
    IL_0c1f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0c24:  ldfld      int32 Game.TerrainRaycastResult::Value
    IL_0c29:  stloc.s    V_33
    IL_0c2b:  ldloc.s    V_33
    IL_0c2d:  ldc.i4.0
    IL_0c2e:  call       int32 Game.TerrainData::ReplaceLight(int32,
                                                              int32)
    IL_0c33:  stloc.s    V_33
    IL_0c35:  ldloc.s    V_33
    IL_0c37:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0c3c:  stloc.s    V_34
    IL_0c3e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0c43:  ldloc.s    V_34
    IL_0c45:  ldelem.ref
    IL_0c46:  stloc.s    V_35
    IL_0c48:  ldc.i4.0
    IL_0c49:  stloc.s    V_36
    IL_0c4b:  ldloc.s    V_35
    IL_0c4d:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> Game.Block::GetCreativeValues()
    IL_0c52:  stloc.s    V_37
    IL_0c54:  ldloc.s    V_35
    IL_0c56:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> Game.Block::GetCreativeValues()
    IL_0c5b:  ldloc.s    V_33
    IL_0c5d:  call       bool [System.Linq]System.Linq.Enumerable::Contains<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                   !!0)
    IL_0c62:  brfalse.s  IL_0c68

    IL_0c64:  ldloc.s    V_33
    IL_0c66:  stloc.s    V_36
    IL_0c68:  ldloc.s    V_36
    IL_0c6a:  brtrue.s   IL_0cbe

    IL_0c6c:  ldloc.s    V_35
    IL_0c6e:  ldfld      bool Game.Block::IsNonDuplicable
    IL_0c73:  brtrue.s   IL_0cbe

    IL_0c75:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::.ctor()
    IL_0c7a:  stloc.s    V_38
    IL_0c7c:  ldloc.s    V_35
    IL_0c7e:  ldarg.0
    IL_0c7f:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayerInput::m_subsystemTerrain
    IL_0c84:  ldloc.s    V_33
    IL_0c86:  ldc.i4.0
    IL_0c87:  ldc.i4     0x7fffffff
    IL_0c8c:  ldloc.s    V_38
    IL_0c8e:  ldloca.s   V_39
    IL_0c90:  callvirt   instance void Game.Block::GetDropValues(class Game.SubsystemTerrain,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>,
                                                                 bool&)
    IL_0c95:  ldloc.s    V_38
    IL_0c97:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::get_Count()
    IL_0c9c:  ldc.i4.0
    IL_0c9d:  ble.s      IL_0cbe

    IL_0c9f:  ldloc.s    V_38
    IL_0ca1:  ldc.i4.0
    IL_0ca2:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::get_Item(int32)
    IL_0ca7:  ldfld      int32 Game.BlockDropValue::Count
    IL_0cac:  ldc.i4.0
    IL_0cad:  ble.s      IL_0cbe

    IL_0caf:  ldloc.s    V_38
    IL_0cb1:  ldc.i4.0
    IL_0cb2:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::get_Item(int32)
    IL_0cb7:  ldfld      int32 Game.BlockDropValue::Value
    IL_0cbc:  stloc.s    V_36
    IL_0cbe:  ldloc.s    V_36
    IL_0cc0:  brtrue.s   IL_0ccb

    IL_0cc2:  ldloc.s    V_37
    IL_0cc4:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0cc9:  stloc.s    V_36
    IL_0ccb:  ldloc.s    V_36
    IL_0ccd:  brfalse    IL_0dad

    IL_0cd2:  ldc.i4.m1
    IL_0cd3:  stloc.s    V_40
    IL_0cd5:  ldc.i4.0
    IL_0cd6:  stloc.s    V_41
    IL_0cd8:  br.s       IL_0cff

    IL_0cda:  ldloc.s    V_29
    IL_0cdc:  ldloc.s    V_41
    IL_0cde:  callvirt   instance int32 Game.ComponentCreativeInventory::GetSlotCount(int32)
    IL_0ce3:  ldc.i4.0
    IL_0ce4:  ble.s      IL_0cf9

    IL_0ce6:  ldloc.s    V_29
    IL_0ce8:  ldloc.s    V_41
    IL_0cea:  callvirt   instance int32 Game.ComponentCreativeInventory::GetSlotValue(int32)
    IL_0cef:  ldloc.s    V_36
    IL_0cf1:  bne.un.s   IL_0cf9

    IL_0cf3:  ldloc.s    V_41
    IL_0cf5:  stloc.s    V_40
    IL_0cf7:  br.s       IL_0d04

    IL_0cf9:  ldloc.s    V_41
    IL_0cfb:  ldc.i4.1
    IL_0cfc:  add
    IL_0cfd:  stloc.s    V_41
    IL_0cff:  ldloc.s    V_41
    IL_0d01:  ldc.i4.6
    IL_0d02:  blt.s      IL_0cda

    IL_0d04:  ldloc.s    V_40
    IL_0d06:  ldc.i4.0
    IL_0d07:  bge.s      IL_0d35

    IL_0d09:  ldc.i4.0
    IL_0d0a:  stloc.s    V_42
    IL_0d0c:  br.s       IL_0d30

    IL_0d0e:  ldloc.s    V_29
    IL_0d10:  ldloc.s    V_42
    IL_0d12:  callvirt   instance int32 Game.ComponentCreativeInventory::GetSlotCount(int32)
    IL_0d17:  brfalse.s  IL_0d24

    IL_0d19:  ldloc.s    V_29
    IL_0d1b:  ldloc.s    V_42
    IL_0d1d:  callvirt   instance int32 Game.ComponentCreativeInventory::GetSlotValue(int32)
    IL_0d22:  brtrue.s   IL_0d2a

    IL_0d24:  ldloc.s    V_42
    IL_0d26:  stloc.s    V_40
    IL_0d28:  br.s       IL_0d35

    IL_0d2a:  ldloc.s    V_42
    IL_0d2c:  ldc.i4.1
    IL_0d2d:  add
    IL_0d2e:  stloc.s    V_42
    IL_0d30:  ldloc.s    V_42
    IL_0d32:  ldc.i4.6
    IL_0d33:  blt.s      IL_0d0e

    IL_0d35:  ldloc.s    V_40
    IL_0d37:  ldc.i4.0
    IL_0d38:  bge.s      IL_0d43

    IL_0d3a:  ldloc.s    V_29
    IL_0d3c:  callvirt   instance int32 Game.ComponentCreativeInventory::get_ActiveSlotIndex()
    IL_0d41:  stloc.s    V_40
    IL_0d43:  ldloc.s    V_29
    IL_0d45:  ldloc.s    V_40
    IL_0d47:  ldc.i4     0x7fffffff
    IL_0d4c:  callvirt   instance int32 Game.ComponentCreativeInventory::RemoveSlotItems(int32,
                                                                                         int32)
    IL_0d51:  pop
    IL_0d52:  ldloc.s    V_29
    IL_0d54:  ldloc.s    V_40
    IL_0d56:  ldloc.s    V_36
    IL_0d58:  ldc.i4.1
    IL_0d59:  callvirt   instance void Game.ComponentCreativeInventory::AddSlotItems(int32,
                                                                                     int32,
                                                                                     int32)
    IL_0d5e:  ldloc.s    V_29
    IL_0d60:  ldloc.s    V_40
    IL_0d62:  callvirt   instance void Game.ComponentCreativeInventory::set_ActiveSlotIndex(int32)
    IL_0d67:  ldarg.0
    IL_0d68:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0d6d:  ldc.i4.1
    IL_0d6e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0d73:  ldloc.s    V_35
    IL_0d75:  ldarg.0
    IL_0d76:  ldfld      class Game.SubsystemTerrain Game.ComponentPlayerInput::m_subsystemTerrain
    IL_0d7b:  ldloc.s    V_33
    IL_0d7d:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0d82:  ldc.i4.0
    IL_0d83:  ldc.i4.0
    IL_0d84:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0d89:  ldarg.0
    IL_0d8a:  ldfld      class Game.SubsystemAudio Game.ComponentPlayerInput::m_subsystemAudio
    IL_0d8f:  ldstr      "Audio/UI/ButtonClick"
    IL_0d94:  ldc.r4     1.
    IL_0d99:  ldc.r4     0.0
    IL_0d9e:  ldc.r4     0.0
    IL_0da3:  ldc.r4     0.0
    IL_0da8:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0dad:  ldarg.0
    IL_0dae:  ldarg.0
    IL_0daf:  ldfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0db4:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0db9:  ldarg.0
    IL_0dba:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_0dbf:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0dc4:  ldarg.0
    IL_0dc5:  ldfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_0dca:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0dcf:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0dd4:  call       instance void Game.ComponentPlayerInput::set_HighlightRaycastResult(valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>)
    IL_0dd9:  ret
  } // end of method ComponentPlayerInput::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentPlayerInput::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_001f:  stfld      class Game.SubsystemAudio Game.ComponentPlayerInput::m_subsystemAudio
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0031:  stfld      class Game.SubsystemPickables Game.ComponentPlayerInput::m_subsystemPickables
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCamera>(bool)
    IL_0043:  stfld      class Game.SubsystemCamera Game.ComponentPlayerInput::m_subsystemCamera
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInput>(bool)
    IL_0055:  stfld      class Game.SubsystemInput Game.ComponentPlayerInput::m_subsystemInput
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_0067:  stfld      class Game.SubsystemDrawing Game.ComponentPlayerInput::m_subsystemDrawing
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0079:  stfld      class Game.SubsystemTerrain Game.ComponentPlayerInput::m_subsystemTerrain
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_008b:  stfld      class Game.ComponentPlayer Game.ComponentPlayerInput::m_componentPlayer
    IL_0090:  ret
  } // end of method ComponentPlayerInput::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentPlayerInput::.ctor

  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>
          HighlightRaycastResult()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentPlayerInput::get_HighlightRaycastResult()
    .set instance void Game.ComponentPlayerInput::set_HighlightRaycastResult(valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>)
  } // end of property ComponentPlayerInput::HighlightRaycastResult
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentPlayerInput::get_UpdateOrder()
  } // end of property ComponentPlayerInput::UpdateOrder
} // end of class Game.ComponentPlayerInput