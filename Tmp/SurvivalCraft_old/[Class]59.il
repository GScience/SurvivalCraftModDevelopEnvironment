.class public auto ansi beforefieldinit Game.ComponentInput
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.ComponentGui m_componentGui
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private valuetype Game.PlayerInput m_playerInput
  .field private bool m_isViewHoldStarted
  .field private float64 m_lastJumpTime
  .field private float32 m_lastLeftTrigger
  .field private float32 m_lastRightTrigger
  .field private bool '<IsControlledByTouch>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.IInventory '<SplitSourceInventory>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<SplitSourceSlotIndex>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance valuetype Game.PlayerInput 
          get_PlayerInput() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0006:  ret
  } // end of method ComponentInput::get_PlayerInput

  .method public hidebysig specialname instance bool 
          get_IsControlledByTouch() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentInput::'<IsControlledByTouch>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentInput::get_IsControlledByTouch

  .method private hidebysig specialname instance void 
          set_IsControlledByTouch(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentInput::'<IsControlledByTouch>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentInput::set_IsControlledByTouch

  .method public hidebysig specialname instance class Game.IInventory 
          get_SplitSourceInventory() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.ComponentInput::'<SplitSourceInventory>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentInput::get_SplitSourceInventory

  .method private hidebysig specialname instance void 
          set_SplitSourceInventory(class Game.IInventory 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.IInventory Game.ComponentInput::'<SplitSourceInventory>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentInput::set_SplitSourceInventory

  .method public hidebysig specialname instance int32 
          get_SplitSourceSlotIndex() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ComponentInput::'<SplitSourceSlotIndex>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentInput::get_SplitSourceSlotIndex

  .method private hidebysig specialname instance void 
          set_SplitSourceSlotIndex(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.ComponentInput::'<SplitSourceSlotIndex>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentInput::set_SplitSourceSlotIndex

  .method public hidebysig instance void 
          SetSplitSourceInventoryAndSlot(class Game.IInventory inventory,
                                         int32 slotIndex) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.ComponentInput::set_SplitSourceInventory(class Game.IInventory)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  call       instance void Game.ComponentInput::set_SplitSourceSlotIndex(int32)
    IL_000e:  ret
  } // end of method ComponentInput::SetSplitSourceInventoryAndSlot

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       3 (0x3)
    .maxstack  8
    IL_0000:  ldc.i4.s   -10
    IL_0002:  ret
  } // end of method ComponentInput::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       699 (0x2bb)
    .maxstack  3
    .locals init (valuetype Game.PlayerInput V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0006:  initobj    Game.PlayerInput
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_0013:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0018:  callvirt   instance class Game.WidgetInput Game.View::get_Input()
    IL_001d:  call       instance void Game.ComponentInput::UpdateInputFromMouseAndKeyboard(class Game.WidgetInput)
    IL_0022:  ldarg.0
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_0029:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_002e:  callvirt   instance class Game.WidgetInput Game.View::get_Input()
    IL_0033:  call       instance void Game.ComponentInput::UpdateInputFromGamepad(class Game.WidgetInput)
    IL_0038:  ldarg.0
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_003f:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0044:  callvirt   instance class Game.WidgetInput Game.View::get_Input()
    IL_0049:  call       instance void Game.ComponentInput::UpdateInputFromWidgets(class Game.WidgetInput)
    IL_004e:  ldarg.0
    IL_004f:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0054:  ldfld      bool Game.PlayerInput::Jump
    IL_0059:  brfalse.s  IL_009a

    IL_005b:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0060:  ldarg.0
    IL_0061:  ldfld      float64 Game.ComponentInput::m_lastJumpTime
    IL_0066:  sub
    IL_0067:  ldc.r8     0.29999999999999999
    IL_0070:  bge.un.s   IL_008f

    IL_0072:  ldarg.0
    IL_0073:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0078:  ldc.i4.1
    IL_0079:  stfld      bool Game.PlayerInput::ToggleCreativeFly
    IL_007e:  ldarg.0
    IL_007f:  ldc.r8     0.0
    IL_0088:  stfld      float64 Game.ComponentInput::m_lastJumpTime
    IL_008d:  br.s       IL_009a

    IL_008f:  ldarg.0
    IL_0090:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0095:  stfld      float64 Game.ComponentInput::m_lastJumpTime
    IL_009a:  ldarg.0
    IL_009b:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_00a0:  ldarg.0
    IL_00a1:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_00a6:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_00ab:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::CameraMove
    IL_00b0:  ldarg.0
    IL_00b1:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_00b6:  ldarg.0
    IL_00b7:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_00bc:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_00c1:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::CameraSneakMove
    IL_00c6:  ldarg.0
    IL_00c7:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_00cc:  ldarg.0
    IL_00cd:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_00d2:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_00d7:  stfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::CameraLook
    IL_00dc:  call       bool [Engine]Engine.Window::get_IsActive()
    IL_00e1:  brfalse.s  IL_00f5

    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_00e9:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_00ee:  callvirt   instance bool Game.PlayerData::get_IsReadyForPlaying()
    IL_00f3:  brtrue.s   IL_0106

    IL_00f5:  ldarg.0
    IL_00f6:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_00fb:  initobj    Game.PlayerInput
    IL_0101:  br         IL_0233

    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_010c:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0111:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0116:  ldc.r4     0.0
    IL_011b:  ble.s      IL_014b

    IL_011d:  ldarg.0
    IL_011e:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_0123:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0128:  callvirt   instance float32 Game.ComponentSleep::get_SleepFactor()
    IL_012d:  ldc.r4     0.0
    IL_0132:  bgt.s      IL_014b

    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_013a:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_013f:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0144:  callvirt   instance bool Game.Camera::get_IsEntityControlEnabled()
    IL_0149:  brtrue.s   IL_01c8

    IL_014b:  ldarg.0
    IL_014c:  ldloca.s   V_0
    IL_014e:  initobj    Game.PlayerInput
    IL_0154:  ldloca.s   V_0
    IL_0156:  ldarg.0
    IL_0157:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_015c:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::CameraMove
    IL_0161:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::CameraMove
    IL_0166:  ldloca.s   V_0
    IL_0168:  ldarg.0
    IL_0169:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_016e:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::CameraSneakMove
    IL_0173:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::CameraSneakMove
    IL_0178:  ldloca.s   V_0
    IL_017a:  ldarg.0
    IL_017b:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0180:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::CameraLook
    IL_0185:  stfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::CameraLook
    IL_018a:  ldloca.s   V_0
    IL_018c:  ldarg.0
    IL_018d:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0192:  ldfld      bool Game.PlayerInput::TimeOfDay
    IL_0197:  stfld      bool Game.PlayerInput::TimeOfDay
    IL_019c:  ldloca.s   V_0
    IL_019e:  ldarg.0
    IL_019f:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01a4:  ldfld      bool Game.PlayerInput::TakeScreenshot
    IL_01a9:  stfld      bool Game.PlayerInput::TakeScreenshot
    IL_01ae:  ldloca.s   V_0
    IL_01b0:  ldarg.0
    IL_01b1:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01b6:  ldfld      bool Game.PlayerInput::KeyboardHelp
    IL_01bb:  stfld      bool Game.PlayerInput::KeyboardHelp
    IL_01c0:  ldloc.0
    IL_01c1:  stfld      valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01c6:  br.s       IL_0233

    IL_01c8:  ldarg.0
    IL_01c9:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_01ce:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_01d3:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_01d8:  callvirt   instance bool Game.Camera::get_UsesMovementControls()
    IL_01dd:  brfalse.s  IL_0233

    IL_01df:  ldarg.0
    IL_01e0:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01e5:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_01ea:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_01ef:  ldarg.0
    IL_01f0:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01f5:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_01fa:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_01ff:  ldarg.0
    IL_0200:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0205:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_020a:  stfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_020f:  ldarg.0
    IL_0210:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0215:  ldc.i4.0
    IL_0216:  stfld      bool Game.PlayerInput::Jump
    IL_021b:  ldarg.0
    IL_021c:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0221:  ldc.i4.0
    IL_0222:  stfld      bool Game.PlayerInput::ToggleSneak
    IL_0227:  ldarg.0
    IL_0228:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_022d:  ldc.i4.0
    IL_022e:  stfld      bool Game.PlayerInput::ToggleCreativeFly
    IL_0233:  ldarg.0
    IL_0234:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0239:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_023e:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0243:  ldc.r4     1.
    IL_0248:  ble.un.s   IL_0265

    IL_024a:  ldarg.0
    IL_024b:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0250:  ldarg.0
    IL_0251:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0256:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_025b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0260:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0265:  ldarg.0
    IL_0266:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_026b:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0270:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0275:  ldc.r4     1.
    IL_027a:  ble.un.s   IL_0297

    IL_027c:  ldarg.0
    IL_027d:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0282:  ldarg.0
    IL_0283:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0288:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_028d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0292:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0297:  ldarg.0
    IL_0298:  call       instance class Game.IInventory Game.ComponentInput::get_SplitSourceInventory()
    IL_029d:  brfalse.s  IL_02ba

    IL_029f:  ldarg.0
    IL_02a0:  call       instance class Game.IInventory Game.ComponentInput::get_SplitSourceInventory()
    IL_02a5:  ldarg.0
    IL_02a6:  call       instance int32 Game.ComponentInput::get_SplitSourceSlotIndex()
    IL_02ab:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_02b0:  brtrue.s   IL_02ba

    IL_02b2:  ldarg.0
    IL_02b3:  ldnull
    IL_02b4:  ldc.i4.m1
    IL_02b5:  call       instance void Game.ComponentInput::SetSplitSourceInventoryAndSlot(class Game.IInventory,
                                                                                           int32)
    IL_02ba:  ret
  } // end of method ComponentInput::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentInput::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentGui>(bool)
    IL_001f:  stfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_0031:  stfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_0036:  ret
  } // end of method ComponentInput::Load

  .method private hidebysig static float32 
          ProcessInputValue(float32 'value',
                            float32 deadZone,
                            float32 saturationZone) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       float32 [Engine]Engine.MathUtils::Sign(float32)
    IL_0006:  ldarg.0
    IL_0007:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_000c:  ldarg.1
    IL_000d:  sub
    IL_000e:  ldarg.2
    IL_000f:  ldarg.1
    IL_0010:  sub
    IL_0011:  div
    IL_0012:  ldc.r4     0.0
    IL_0017:  ldc.r4     1.
    IL_001c:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0021:  mul
    IL_0022:  ret
  } // end of method ComponentInput::ProcessInputValue

  .method private hidebysig instance void 
          UpdateInputFromGamepad(class Game.WidgetInput input) cil managed
  {
    // 代码大小       933 (0x3a5)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_0006:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_000b:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0010:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0015:  dup
    IL_0016:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_001b:  ldc.r4     2.
    IL_0020:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0025:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::WidgetToScreen(valuetype [Engine]Engine.Vector2)
    IL_002a:  stloc.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0031:  callvirt   instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    IL_0036:  brtrue.s   IL_004f

    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_003e:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0043:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0048:  call       bool Game.DialogsManager::HasDialogs(class Game.ContainerWidget)
    IL_004d:  brfalse.s  IL_006d

    IL_004f:  ldarg.1
    IL_0050:  callvirt   instance bool Game.WidgetInput::get_IsPadCursorVisible()
    IL_0055:  brtrue     IL_034b

    IL_005a:  ldarg.1
    IL_005b:  ldloc.0
    IL_005c:  callvirt   instance void Game.WidgetInput::set_PadCursorPosition(valuetype [Engine]Engine.Vector2)
    IL_0061:  ldarg.1
    IL_0062:  ldc.i4.1
    IL_0063:  callvirt   instance void Game.WidgetInput::set_IsPadCursorVisible(bool)
    IL_0068:  br         IL_034b

    IL_006d:  ldarg.1
    IL_006e:  ldc.i4.0
    IL_006f:  callvirt   instance void Game.WidgetInput::set_IsPadCursorVisible(bool)
    IL_0074:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0079:  stloc.1
    IL_007a:  ldarg.1
    IL_007b:  ldc.i4.0
    IL_007c:  call       float32 Game.SettingsManager::get_GamepadDeadZone()
    IL_0081:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::GetPadStickPosition(valuetype [Engine]Engine.Input.GamePadStick,
                                                                                                         float32)
    IL_0086:  stloc.2
    IL_0087:  ldarg.1
    IL_0088:  ldc.i4.1
    IL_0089:  call       float32 Game.SettingsManager::get_GamepadDeadZone()
    IL_008e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::GetPadStickPosition(valuetype [Engine]Engine.Input.GamePadStick,
                                                                                                         float32)
    IL_0093:  stloc.3
    IL_0094:  ldarg.1
    IL_0095:  ldc.i4.0
    IL_0096:  ldc.r4     0.0
    IL_009b:  callvirt   instance float32 Game.WidgetInput::GetPadTriggerPosition(valuetype [Engine]Engine.Input.GamePadTrigger,
                                                                                  float32)
    IL_00a0:  stloc.s    V_4
    IL_00a2:  ldarg.1
    IL_00a3:  ldc.i4.1
    IL_00a4:  ldc.r4     0.0
    IL_00a9:  callvirt   instance float32 Game.WidgetInput::GetPadTriggerPosition(valuetype [Engine]Engine.Input.GamePadTrigger,
                                                                                  float32)
    IL_00ae:  stloc.s    V_5
    IL_00b0:  ldloc.1
    IL_00b1:  ldc.r4     2.
    IL_00b6:  ldloc.2
    IL_00b7:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00bc:  mul
    IL_00bd:  ldc.r4     0.0
    IL_00c2:  ldc.r4     2.
    IL_00c7:  ldloc.2
    IL_00c8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00cd:  mul
    IL_00ce:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d8:  stloc.1
    IL_00d9:  ldloc.1
    IL_00da:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00df:  ldarg.1
    IL_00e0:  ldc.i4.0
    IL_00e1:  callvirt   instance bool Game.WidgetInput::IsPadButtonDown(valuetype [Engine]Engine.Input.GamePadButton)
    IL_00e6:  brtrue.s   IL_00eb

    IL_00e8:  ldc.i4.0
    IL_00e9:  br.s       IL_00ec

    IL_00eb:  ldc.i4.1
    IL_00ec:  conv.r4
    IL_00ed:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00f2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f7:  stloc.1
    IL_00f8:  ldloc.1
    IL_00f9:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00fe:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0103:  ldarg.1
    IL_0104:  ldc.i4.s   9
    IL_0106:  callvirt   instance bool Game.WidgetInput::IsPadButtonDown(valuetype [Engine]Engine.Input.GamePadButton)
    IL_010b:  brtrue.s   IL_0110

    IL_010d:  ldc.i4.0
    IL_010e:  br.s       IL_0111

    IL_0110:  ldc.i4.1
    IL_0111:  conv.r4
    IL_0112:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0117:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011c:  stloc.1
    IL_011d:  ldarg.0
    IL_011e:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0123:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0128:  dup
    IL_0129:  ldobj      [Engine]Engine.Vector3
    IL_012e:  ldloc.1
    IL_012f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0134:  stobj      [Engine]Engine.Vector3
    IL_0139:  ldarg.0
    IL_013a:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_013f:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0144:  dup
    IL_0145:  ldobj      [Engine]Engine.Vector3
    IL_014a:  ldloc.1
    IL_014b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0150:  stobj      [Engine]Engine.Vector3
    IL_0155:  ldarg.0
    IL_0156:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_015b:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_0160:  dup
    IL_0161:  ldobj      [Engine]Engine.Vector2
    IL_0166:  ldc.r4     0.75
    IL_016b:  ldloc.3
    IL_016c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0171:  ldloca.s   V_3
    IL_0173:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_0178:  ldc.r4     0.25
    IL_017d:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0182:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0187:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_018c:  stobj      [Engine]Engine.Vector2
    IL_0191:  ldarg.0
    IL_0192:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0197:  ldflda     bool Game.PlayerInput::Jump
    IL_019c:  dup
    IL_019d:  ldind.u1
    IL_019e:  ldarg.1
    IL_019f:  ldc.i4.0
    IL_01a0:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_01a5:  or
    IL_01a6:  stind.i1
    IL_01a7:  ldarg.0
    IL_01a8:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01ad:  ldloc.s    V_4
    IL_01af:  ldc.r4     0.5
    IL_01b4:  bge.s      IL_01c3

    IL_01b6:  ldarg.0
    IL_01b7:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01bc:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_01c1:  br.s       IL_01c9

    IL_01c3:  ldloc.0
    IL_01c4:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01c9:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_01ce:  ldarg.0
    IL_01cf:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01d4:  ldloc.s    V_4
    IL_01d6:  ldc.r4     0.5
    IL_01db:  blt.un.s   IL_01ea

    IL_01dd:  ldarg.0
    IL_01de:  ldfld      float32 Game.ComponentInput::m_lastLeftTrigger
    IL_01e3:  ldc.r4     0.5
    IL_01e8:  blt.s      IL_01f7

    IL_01ea:  ldarg.0
    IL_01eb:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01f0:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_01f5:  br.s       IL_01fd

    IL_01f7:  ldloc.0
    IL_01f8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01fd:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_0202:  ldarg.0
    IL_0203:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0208:  ldloc.s    V_5
    IL_020a:  ldc.r4     0.5
    IL_020f:  bge.s      IL_021e

    IL_0211:  ldarg.0
    IL_0212:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0217:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_021c:  br.s       IL_0224

    IL_021e:  ldloc.0
    IL_021f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0224:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0229:  ldarg.0
    IL_022a:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_022f:  ldloc.s    V_5
    IL_0231:  ldc.r4     0.5
    IL_0236:  blt.un.s   IL_0245

    IL_0238:  ldarg.0
    IL_0239:  ldfld      float32 Game.ComponentInput::m_lastRightTrigger
    IL_023e:  ldc.r4     0.5
    IL_0243:  blt.s      IL_0252

    IL_0245:  ldarg.0
    IL_0246:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_024b:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_0250:  br.s       IL_0258

    IL_0252:  ldloc.0
    IL_0253:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0258:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_025d:  ldarg.0
    IL_025e:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0263:  ldflda     bool Game.PlayerInput::Drop
    IL_0268:  dup
    IL_0269:  ldind.u1
    IL_026a:  ldarg.1
    IL_026b:  ldc.i4.1
    IL_026c:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_0271:  or
    IL_0272:  stind.i1
    IL_0273:  ldarg.0
    IL_0274:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0279:  ldflda     bool Game.PlayerInput::ToggleMount
    IL_027e:  dup
    IL_027f:  ldind.u1
    IL_0280:  ldarg.1
    IL_0281:  ldc.i4.6
    IL_0282:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_0287:  brtrue.s   IL_0293

    IL_0289:  ldarg.1
    IL_028a:  ldc.i4.s   11
    IL_028c:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_0291:  br.s       IL_0294

    IL_0293:  ldc.i4.1
    IL_0294:  or
    IL_0295:  stind.i1
    IL_0296:  ldarg.0
    IL_0297:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_029c:  ldflda     bool Game.PlayerInput::EditItem
    IL_02a1:  dup
    IL_02a2:  ldind.u1
    IL_02a3:  ldarg.1
    IL_02a4:  ldc.i4.8
    IL_02a5:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_02aa:  or
    IL_02ab:  stind.i1
    IL_02ac:  ldarg.0
    IL_02ad:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02b2:  ldflda     bool Game.PlayerInput::ToggleSneak
    IL_02b7:  dup
    IL_02b8:  ldind.u1
    IL_02b9:  ldarg.1
    IL_02ba:  ldc.i4.s   9
    IL_02bc:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_02c1:  or
    IL_02c2:  stind.i1
    IL_02c3:  ldarg.0
    IL_02c4:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02c9:  ldflda     bool Game.PlayerInput::SwitchCameraMode
    IL_02ce:  dup
    IL_02cf:  ldind.u1
    IL_02d0:  ldarg.1
    IL_02d1:  ldc.i4.7
    IL_02d2:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_02d7:  brtrue.s   IL_02e3

    IL_02d9:  ldarg.1
    IL_02da:  ldc.i4.s   13
    IL_02dc:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_02e1:  br.s       IL_02e4

    IL_02e3:  ldc.i4.1
    IL_02e4:  or
    IL_02e5:  stind.i1
    IL_02e6:  ldarg.1
    IL_02e7:  ldc.i4.s   10
    IL_02e9:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownRepeat(valuetype [Engine]Engine.Input.GamePadButton)
    IL_02ee:  brfalse.s  IL_0300

    IL_02f0:  ldarg.0
    IL_02f1:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02f6:  ldflda     int32 Game.PlayerInput::ScrollInventory
    IL_02fb:  dup
    IL_02fc:  ldind.i4
    IL_02fd:  ldc.i4.1
    IL_02fe:  sub
    IL_02ff:  stind.i4
    IL_0300:  ldarg.1
    IL_0301:  ldc.i4.s   12
    IL_0303:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownRepeat(valuetype [Engine]Engine.Input.GamePadButton)
    IL_0308:  brfalse.s  IL_031a

    IL_030a:  ldarg.0
    IL_030b:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0310:  ldflda     int32 Game.PlayerInput::ScrollInventory
    IL_0315:  dup
    IL_0316:  ldind.i4
    IL_0317:  ldc.i4.1
    IL_0318:  add
    IL_0319:  stind.i4
    IL_031a:  ldloc.2
    IL_031b:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0320:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_0325:  brtrue.s   IL_0334

    IL_0327:  ldloc.3
    IL_0328:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_032d:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_0332:  brfalse.s  IL_033b

    IL_0334:  ldarg.0
    IL_0335:  ldc.i4.0
    IL_0336:  call       instance void Game.ComponentInput::set_IsControlledByTouch(bool)
    IL_033b:  ldarg.0
    IL_033c:  ldloc.s    V_4
    IL_033e:  stfld      float32 Game.ComponentInput::m_lastLeftTrigger
    IL_0343:  ldarg.0
    IL_0344:  ldloc.s    V_5
    IL_0346:  stfld      float32 Game.ComponentInput::m_lastRightTrigger
    IL_034b:  ldarg.0
    IL_034c:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_0351:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0356:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_035b:  call       bool Game.DialogsManager::HasDialogs(class Game.ContainerWidget)
    IL_0360:  brtrue.s   IL_03a4

    IL_0362:  ldarg.0
    IL_0363:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0368:  ldflda     bool Game.PlayerInput::ToggleInventory
    IL_036d:  dup
    IL_036e:  ldind.u1
    IL_036f:  ldarg.1
    IL_0370:  ldc.i4.2
    IL_0371:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_0376:  or
    IL_0377:  stind.i1
    IL_0378:  ldarg.0
    IL_0379:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_037e:  ldflda     bool Game.PlayerInput::ToggleClothing
    IL_0383:  dup
    IL_0384:  ldind.u1
    IL_0385:  ldarg.1
    IL_0386:  ldc.i4.3
    IL_0387:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_038c:  or
    IL_038d:  stind.i1
    IL_038e:  ldarg.0
    IL_038f:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0394:  ldflda     bool Game.PlayerInput::GamepadHelp
    IL_0399:  dup
    IL_039a:  ldind.u1
    IL_039b:  ldarg.1
    IL_039c:  ldc.i4.5
    IL_039d:  callvirt   instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_03a2:  or
    IL_03a3:  stind.i1
    IL_03a4:  ret
  } // end of method ComponentInput::UpdateInputFromGamepad

  .method private hidebysig instance void 
          UpdateInputFromMouseAndKeyboard(class Game.WidgetInput input) cil managed
  {
    // 代码大小       1412 (0x584)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Point2 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_0006:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_000b:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0010:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0015:  dup
    IL_0016:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_001b:  ldc.r4     2.
    IL_0020:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0025:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::WidgetToScreen(valuetype [Engine]Engine.Vector2)
    IL_002a:  stloc.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0031:  callvirt   instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    IL_0036:  brtrue.s   IL_004f

    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_003e:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0043:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0048:  call       bool Game.DialogsManager::HasDialogs(class Game.ContainerWidget)
    IL_004d:  brfalse.s  IL_007a

    IL_004f:  ldarg.1
    IL_0050:  callvirt   instance bool Game.WidgetInput::get_IsMouseCursorVisible()
    IL_0055:  brtrue     IL_038b

    IL_005a:  ldarg.1
    IL_005b:  ldc.i4.1
    IL_005c:  callvirt   instance void Game.WidgetInput::set_IsMouseCursorVisible(bool)
    IL_0061:  ldarg.1
    IL_0062:  ldloc.0
    IL_0063:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0068:  conv.i4
    IL_0069:  ldloc.0
    IL_006a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_006f:  conv.i4
    IL_0070:  callvirt   instance void Game.WidgetInput::SetMouseCursorPosition(int32,
                                                                                int32)
    IL_0075:  br         IL_038b

    IL_007a:  ldarg.1
    IL_007b:  ldc.i4.0
    IL_007c:  callvirt   instance void Game.WidgetInput::set_IsMouseCursorVisible(bool)
    IL_0081:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0086:  stloc.1
    IL_0087:  ldc.i4.0
    IL_0088:  stloc.2
    IL_0089:  call       bool [Engine]Engine.Window::get_IsActive()
    IL_008e:  brfalse.s  IL_0105

    IL_0090:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0095:  ldc.r4     0.0
    IL_009a:  ble.un.s   IL_0105

    IL_009c:  ldarg.1
    IL_009d:  callvirt   instance valuetype [Engine]Engine.Point2 Game.WidgetInput::get_MouseMovement()
    IL_00a2:  stloc.s    V_4
    IL_00a4:  ldarg.1
    IL_00a5:  callvirt   instance int32 Game.WidgetInput::get_MouseWheelMovement()
    IL_00aa:  ldloca.s   V_1
    IL_00ac:  ldc.r4     2.e-002
    IL_00b1:  ldloc.s    V_4
    IL_00b3:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00b8:  conv.r4
    IL_00b9:  mul
    IL_00ba:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00bf:  div
    IL_00c0:  ldc.r4     60.
    IL_00c5:  div
    IL_00c6:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00cb:  ldloca.s   V_1
    IL_00cd:  ldc.r4     -2.e-002
    IL_00d2:  ldloc.s    V_4
    IL_00d4:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00d9:  conv.r4
    IL_00da:  mul
    IL_00db:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00e0:  div
    IL_00e1:  ldc.r4     60.
    IL_00e6:  div
    IL_00e7:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00ec:  ldc.i4.s   120
    IL_00ee:  div
    IL_00ef:  stloc.2
    IL_00f0:  ldloc.s    V_4
    IL_00f2:  ldsfld     valuetype [Engine]Engine.Point2 [Engine]Engine.Point2::Zero
    IL_00f7:  call       bool [Engine]Engine.Point2::op_Inequality(valuetype [Engine]Engine.Point2,
                                                                   valuetype [Engine]Engine.Point2)
    IL_00fc:  brfalse.s  IL_0105

    IL_00fe:  ldarg.0
    IL_00ff:  ldc.i4.0
    IL_0100:  call       instance void Game.ComponentInput::set_IsControlledByTouch(bool)
    IL_0105:  ldloca.s   V_3
    IL_0107:  initobj    [Engine]Engine.Vector3
    IL_010d:  ldloc.3
    IL_010e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0113:  ldarg.1
    IL_0114:  ldc.i4.s   34
    IL_0116:  callvirt   instance bool Game.WidgetInput::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_011b:  brtrue.s   IL_0120

    IL_011d:  ldc.i4.0
    IL_011e:  br.s       IL_0121

    IL_0120:  ldc.i4.1
    IL_0121:  conv.r4
    IL_0122:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0127:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012c:  stloc.3
    IL_012d:  ldloc.3
    IL_012e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0133:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0138:  ldarg.1
    IL_0139:  ldc.i4.s   49
    IL_013b:  callvirt   instance bool Game.WidgetInput::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0140:  brtrue.s   IL_0145

    IL_0142:  ldc.i4.0
    IL_0143:  br.s       IL_0146

    IL_0145:  ldc.i4.1
    IL_0146:  conv.r4
    IL_0147:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_014c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0151:  stloc.3
    IL_0152:  ldloc.3
    IL_0153:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0158:  ldarg.1
    IL_0159:  ldc.i4.s   53
    IL_015b:  callvirt   instance bool Game.WidgetInput::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0160:  brtrue.s   IL_0165

    IL_0162:  ldc.i4.0
    IL_0163:  br.s       IL_0166

    IL_0165:  ldc.i4.1
    IL_0166:  conv.r4
    IL_0167:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_016c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0171:  stloc.3
    IL_0172:  ldloc.3
    IL_0173:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0178:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_017d:  ldarg.1
    IL_017e:  ldc.i4.s   31
    IL_0180:  callvirt   instance bool Game.WidgetInput::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0185:  brtrue.s   IL_018a

    IL_0187:  ldc.i4.0
    IL_0188:  br.s       IL_018b

    IL_018a:  ldc.i4.1
    IL_018b:  conv.r4
    IL_018c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0191:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0196:  stloc.3
    IL_0197:  ldloc.3
    IL_0198:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_019d:  ldarg.1
    IL_019e:  ldc.i4.s   21
    IL_01a0:  callvirt   instance bool Game.WidgetInput::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_01a5:  brtrue.s   IL_01aa

    IL_01a7:  ldc.i4.0
    IL_01a8:  br.s       IL_01ab

    IL_01aa:  ldc.i4.1
    IL_01ab:  conv.r4
    IL_01ac:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01b1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b6:  stloc.3
    IL_01b7:  ldloc.3
    IL_01b8:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_01bd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_01c2:  ldarg.1
    IL_01c3:  ldc.i4.1
    IL_01c4:  callvirt   instance bool Game.WidgetInput::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_01c9:  brtrue.s   IL_01ce

    IL_01cb:  ldc.i4.0
    IL_01cc:  br.s       IL_01cf

    IL_01ce:  ldc.i4.1
    IL_01cf:  conv.r4
    IL_01d0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01d5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01da:  stloc.3
    IL_01db:  ldarg.0
    IL_01dc:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01e1:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_01e6:  dup
    IL_01e7:  ldobj      [Engine]Engine.Vector2
    IL_01ec:  ldloc.1
    IL_01ed:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01f2:  ldc.r4     -15.
    IL_01f7:  ldc.r4     15.
    IL_01fc:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0201:  ldloc.1
    IL_0202:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0207:  ldc.r4     -15.
    IL_020c:  ldc.r4     15.
    IL_0211:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0216:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_021b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0220:  stobj      [Engine]Engine.Vector2
    IL_0225:  ldarg.0
    IL_0226:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_022b:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0230:  dup
    IL_0231:  ldobj      [Engine]Engine.Vector3
    IL_0236:  ldloc.3
    IL_0237:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_023c:  stobj      [Engine]Engine.Vector3
    IL_0241:  ldarg.0
    IL_0242:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0247:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_024c:  dup
    IL_024d:  ldobj      [Engine]Engine.Vector3
    IL_0252:  ldloc.3
    IL_0253:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0258:  stobj      [Engine]Engine.Vector3
    IL_025d:  ldarg.0
    IL_025e:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0263:  ldflda     bool Game.PlayerInput::Jump
    IL_0268:  dup
    IL_0269:  ldind.u1
    IL_026a:  ldarg.1
    IL_026b:  ldc.i4.s   21
    IL_026d:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0272:  or
    IL_0273:  stind.i1
    IL_0274:  ldarg.0
    IL_0275:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_027a:  ldflda     int32 Game.PlayerInput::ScrollInventory
    IL_027f:  dup
    IL_0280:  ldind.i4
    IL_0281:  ldloc.2
    IL_0282:  sub
    IL_0283:  stind.i4
    IL_0284:  ldarg.0
    IL_0285:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_028a:  ldarg.1
    IL_028b:  ldc.i4.0
    IL_028c:  callvirt   instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_0291:  brtrue.s   IL_02a0

    IL_0293:  ldarg.0
    IL_0294:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0299:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_029e:  br.s       IL_02a6

    IL_02a0:  ldloc.0
    IL_02a1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_02a6:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_02ab:  ldarg.0
    IL_02ac:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02b1:  ldarg.1
    IL_02b2:  ldc.i4.0
    IL_02b3:  callvirt   instance bool Game.WidgetInput::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_02b8:  brtrue.s   IL_02c7

    IL_02ba:  ldarg.0
    IL_02bb:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02c0:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_02c5:  br.s       IL_02cd

    IL_02c7:  ldloc.0
    IL_02c8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_02cd:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_02d2:  ldarg.0
    IL_02d3:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02d8:  ldarg.1
    IL_02d9:  ldc.i4.1
    IL_02da:  callvirt   instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_02df:  brtrue.s   IL_02ee

    IL_02e1:  ldarg.0
    IL_02e2:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02e7:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_02ec:  br.s       IL_02f4

    IL_02ee:  ldloc.0
    IL_02ef:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_02f4:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_02f9:  ldarg.0
    IL_02fa:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02ff:  ldarg.1
    IL_0300:  ldc.i4.1
    IL_0301:  callvirt   instance bool Game.WidgetInput::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_0306:  brtrue.s   IL_0315

    IL_0308:  ldarg.0
    IL_0309:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_030e:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_0313:  br.s       IL_031b

    IL_0315:  ldloc.0
    IL_0316:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_031b:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_0320:  ldarg.0
    IL_0321:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0326:  ldflda     bool Game.PlayerInput::ToggleSneak
    IL_032b:  dup
    IL_032c:  ldind.u1
    IL_032d:  ldarg.1
    IL_032e:  ldc.i4.1
    IL_032f:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0334:  or
    IL_0335:  stind.i1
    IL_0336:  ldarg.0
    IL_0337:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_033c:  ldflda     bool Game.PlayerInput::ToggleMount
    IL_0341:  dup
    IL_0342:  ldind.u1
    IL_0343:  ldarg.1
    IL_0344:  ldc.i4.s   48
    IL_0346:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_034b:  or
    IL_034c:  stind.i1
    IL_034d:  ldarg.0
    IL_034e:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0353:  ldflda     bool Game.PlayerInput::ToggleCreativeFly
    IL_0358:  dup
    IL_0359:  ldind.u1
    IL_035a:  ldarg.1
    IL_035b:  ldc.i4.s   36
    IL_035d:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0362:  or
    IL_0363:  stind.i1
    IL_0364:  ldarg.0
    IL_0365:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_036a:  ldarg.1
    IL_036b:  ldc.i4.2
    IL_036c:  callvirt   instance bool Game.WidgetInput::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_0371:  brtrue.s   IL_0380

    IL_0373:  ldarg.0
    IL_0374:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0379:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::PickBlockType
    IL_037e:  br.s       IL_0386

    IL_0380:  ldloc.0
    IL_0381:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0386:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::PickBlockType
    IL_038b:  ldarg.0
    IL_038c:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_0391:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0396:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_039b:  call       bool Game.DialogsManager::HasDialogs(class Game.ContainerWidget)
    IL_03a0:  brtrue     IL_0583

    IL_03a5:  ldarg.0
    IL_03a6:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_03ab:  ldflda     bool Game.PlayerInput::ToggleInventory
    IL_03b0:  dup
    IL_03b1:  ldind.u1
    IL_03b2:  ldarg.1
    IL_03b3:  ldc.i4.s   35
    IL_03b5:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_03ba:  or
    IL_03bb:  stind.i1
    IL_03bc:  ldarg.0
    IL_03bd:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_03c2:  ldflda     bool Game.PlayerInput::ToggleClothing
    IL_03c7:  dup
    IL_03c8:  ldind.u1
    IL_03c9:  ldarg.1
    IL_03ca:  ldc.i4.s   33
    IL_03cc:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_03d1:  or
    IL_03d2:  stind.i1
    IL_03d3:  ldarg.0
    IL_03d4:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_03d9:  ldflda     bool Game.PlayerInput::TakeScreenshot
    IL_03de:  dup
    IL_03df:  ldind.u1
    IL_03e0:  ldarg.1
    IL_03e1:  ldc.i4.s   46
    IL_03e3:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_03e8:  or
    IL_03e9:  stind.i1
    IL_03ea:  ldarg.0
    IL_03eb:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_03f0:  ldflda     bool Game.PlayerInput::SwitchCameraMode
    IL_03f5:  dup
    IL_03f6:  ldind.u1
    IL_03f7:  ldarg.1
    IL_03f8:  ldc.i4.s   52
    IL_03fa:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_03ff:  or
    IL_0400:  stind.i1
    IL_0401:  ldarg.0
    IL_0402:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0407:  ldflda     bool Game.PlayerInput::TimeOfDay
    IL_040c:  dup
    IL_040d:  ldind.u1
    IL_040e:  ldarg.1
    IL_040f:  ldc.i4.s   50
    IL_0411:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0416:  or
    IL_0417:  stind.i1
    IL_0418:  ldarg.0
    IL_0419:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_041e:  ldflda     bool Game.PlayerInput::Lighting
    IL_0423:  dup
    IL_0424:  ldind.u1
    IL_0425:  ldarg.1
    IL_0426:  ldc.i4.s   42
    IL_0428:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_042d:  or
    IL_042e:  stind.i1
    IL_042f:  ldarg.0
    IL_0430:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0435:  ldflda     bool Game.PlayerInput::Drop
    IL_043a:  dup
    IL_043b:  ldind.u1
    IL_043c:  ldarg.1
    IL_043d:  ldc.i4.s   47
    IL_043f:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0444:  or
    IL_0445:  stind.i1
    IL_0446:  ldarg.0
    IL_0447:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_044c:  ldflda     bool Game.PlayerInput::EditItem
    IL_0451:  dup
    IL_0452:  ldind.u1
    IL_0453:  ldarg.1
    IL_0454:  ldc.i4.s   37
    IL_0456:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_045b:  or
    IL_045c:  stind.i1
    IL_045d:  ldarg.0
    IL_045e:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0463:  ldflda     bool Game.PlayerInput::KeyboardHelp
    IL_0468:  dup
    IL_0469:  ldind.u1
    IL_046a:  ldarg.1
    IL_046b:  ldc.i4.s   38
    IL_046d:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0472:  or
    IL_0473:  stind.i1
    IL_0474:  ldarg.1
    IL_0475:  ldc.i4.s   58
    IL_0477:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_047c:  brfalse.s  IL_048f

    IL_047e:  ldarg.0
    IL_047f:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0484:  ldc.i4.0
    IL_0485:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_048a:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_048f:  ldarg.1
    IL_0490:  ldc.i4.s   59
    IL_0492:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0497:  brfalse.s  IL_04aa

    IL_0499:  ldarg.0
    IL_049a:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_049f:  ldc.i4.1
    IL_04a0:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_04a5:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_04aa:  ldarg.1
    IL_04ab:  ldc.i4.s   60
    IL_04ad:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_04b2:  brfalse.s  IL_04c5

    IL_04b4:  ldarg.0
    IL_04b5:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_04ba:  ldc.i4.2
    IL_04bb:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_04c0:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_04c5:  ldarg.1
    IL_04c6:  ldc.i4.s   61
    IL_04c8:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_04cd:  brfalse.s  IL_04e0

    IL_04cf:  ldarg.0
    IL_04d0:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_04d5:  ldc.i4.3
    IL_04d6:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_04db:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_04e0:  ldarg.1
    IL_04e1:  ldc.i4.s   62
    IL_04e3:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_04e8:  brfalse.s  IL_04fb

    IL_04ea:  ldarg.0
    IL_04eb:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_04f0:  ldc.i4.4
    IL_04f1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_04f6:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_04fb:  ldarg.1
    IL_04fc:  ldc.i4.s   63
    IL_04fe:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0503:  brfalse.s  IL_0516

    IL_0505:  ldarg.0
    IL_0506:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_050b:  ldc.i4.5
    IL_050c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0511:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_0516:  ldarg.1
    IL_0517:  ldc.i4.s   64
    IL_0519:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_051e:  brfalse.s  IL_0531

    IL_0520:  ldarg.0
    IL_0521:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0526:  ldc.i4.6
    IL_0527:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_052c:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_0531:  ldarg.1
    IL_0532:  ldc.i4.s   65
    IL_0534:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0539:  brfalse.s  IL_054c

    IL_053b:  ldarg.0
    IL_053c:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0541:  ldc.i4.7
    IL_0542:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0547:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_054c:  ldarg.1
    IL_054d:  ldc.i4.s   66
    IL_054f:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0554:  brfalse.s  IL_0567

    IL_0556:  ldarg.0
    IL_0557:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_055c:  ldc.i4.8
    IL_055d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0562:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_0567:  ldarg.1
    IL_0568:  ldc.i4.s   57
    IL_056a:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_056f:  brfalse.s  IL_0583

    IL_0571:  ldarg.0
    IL_0572:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0577:  ldc.i4.s   9
    IL_0579:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_057e:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_0583:  ret
  } // end of method ComponentInput::UpdateInputFromMouseAndKeyboard

  .method private hidebysig instance void 
          UpdateInputFromWidgets(class Game.WidgetInput input) cil managed
  {
    // 代码大小       1727 (0x6bf)
    .maxstack  5
    .locals init (float32 V_0,
             class Game.GameViewWidget V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> V_4,
             valuetype Game.TouchInput V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             float32 V_8,
             valuetype Game.TouchInput V_9,
             float32 V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             valuetype [Engine]Engine.Vector2 V_12,
             valuetype [Engine]Engine.Vector2 V_13,
             valuetype [Engine]Engine.Matrix V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             valuetype Game.TouchInput V_16,
             valuetype [Engine]Engine.Vector2 V_17,
             valuetype [Engine]Engine.Vector2 V_18)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentInput::m_subsystemTime
    IL_0006:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_000b:  ldc.r4     0.0
    IL_0010:  ldc.r4     0.1
    IL_0015:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_001a:  stloc.0
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.ComponentPlayer Game.ComponentInput::m_componentPlayer
    IL_0021:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0026:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_002b:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0030:  stloc.1
    IL_0031:  ldloc.1
    IL_0032:  ldloc.1
    IL_0033:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0038:  ldc.r4     2.
    IL_003d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0042:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::WidgetToScreen(valuetype [Engine]Engine.Vector2)
    IL_0047:  stloc.2
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_004e:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_MoveWidget()
    IL_0053:  ldc.r4     43.
    IL_0058:  ldc.r4     7.
    IL_005d:  call       float32 Game.SettingsManager::get_MoveSensitivity()
    IL_0062:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0067:  call       float32 Game.WidgetsManager::get_Scale()
    IL_006c:  mul
    IL_006d:  callvirt   instance void Game.TouchInputWidget::set_Radius(float32)
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0078:  callvirt   instance class Game.Widget Game.ComponentGui::get_ModalPanelWidget()
    IL_007d:  brtrue     IL_06be

    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.SubsystemTime Game.ComponentInput::m_subsystemTime
    IL_0088:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeFactor()
    IL_008d:  ldc.r4     0.0
    IL_0092:  ble.un     IL_06be

    IL_0097:  ldloc.0
    IL_0098:  ldc.r4     0.0
    IL_009d:  ble.un     IL_06be

    IL_00a2:  ldloca.s   V_3
    IL_00a4:  call       bool Game.SettingsManager::get_LeftHandedLayout()
    IL_00a9:  brtrue.s   IL_00af

    IL_00ab:  ldc.i4.s   -96
    IL_00ad:  br.s       IL_00b1

    IL_00af:  ldc.i4.s   96
    IL_00b1:  conv.r4
    IL_00b2:  ldc.r4     -96.
    IL_00b7:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00bc:  ldloc.3
    IL_00bd:  ldarg.1
    IL_00be:  callvirt   instance class Game.Widget Game.WidgetInput::get_Widget()
    IL_00c3:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_00c8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::TransformNormal(valuetype [Engine]Engine.Vector2,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_00cd:  stloc.3
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_00d4:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_ViewWidget()
    IL_00d9:  brfalse    IL_0343

    IL_00de:  ldarg.0
    IL_00df:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_00e4:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_ViewWidget()
    IL_00e9:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_TouchInput()
    IL_00ee:  stloc.s    V_4
    IL_00f0:  ldloca.s   V_4
    IL_00f2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_HasValue()
    IL_00f7:  brfalse    IL_0343

    IL_00fc:  ldarg.0
    IL_00fd:  ldc.i4.1
    IL_00fe:  call       instance void Game.ComponentInput::set_IsControlledByTouch(bool)
    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0109:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_ViewWidget()
    IL_010e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_TouchInput()
    IL_0113:  stloc.s    V_4
    IL_0115:  ldloca.s   V_4
    IL_0117:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_Value()
    IL_011c:  stloc.s    V_5
    IL_011e:  ldloc.s    V_5
    IL_0120:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_0125:  brtrue.s   IL_0189

    IL_0127:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_012c:  ldc.i4.2
    IL_012d:  bne.un.s   IL_0156

    IL_012f:  ldarg.0
    IL_0130:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0135:  ldloc.2
    IL_0136:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_013b:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_0140:  ldarg.0
    IL_0141:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0146:  ldloc.2
    IL_0147:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_014c:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_0151:  br         IL_034a

    IL_0156:  ldarg.0
    IL_0157:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_015c:  ldloc.s    V_5
    IL_015e:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_0163:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0168:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_016d:  ldarg.0
    IL_016e:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0173:  ldloc.s    V_5
    IL_0175:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_017a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_017f:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_0184:  br         IL_034a

    IL_0189:  ldloc.s    V_5
    IL_018b:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_0190:  ldc.i4.1
    IL_0191:  bne.un     IL_0229

    IL_0196:  ldloc.s    V_5
    IL_0198:  ldfld      int32 Game.TouchInput::DurationFrames
    IL_019d:  ldc.i4.1
    IL_019e:  ble        IL_0229

    IL_01a3:  ldloc.s    V_5
    IL_01a5:  ldfld      float32 Game.TouchInput::Duration
    IL_01aa:  ldc.r4     0.2
    IL_01af:  ble.un.s   IL_0229

    IL_01b1:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_01b6:  ldc.i4.2
    IL_01b7:  bne.un.s   IL_01e9

    IL_01b9:  ldarg.0
    IL_01ba:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01bf:  ldloc.2
    IL_01c0:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01c5:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_01ca:  ldarg.0
    IL_01cb:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01d0:  ldloc.s    V_5
    IL_01d2:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_01d7:  ldloc.3
    IL_01d8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_01dd:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01e2:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_01e7:  br.s       IL_021d

    IL_01e9:  ldarg.0
    IL_01ea:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_01ef:  ldloc.s    V_5
    IL_01f1:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_01f6:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01fb:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0200:  ldarg.0
    IL_0201:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0206:  ldloc.s    V_5
    IL_0208:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_020d:  ldloc.3
    IL_020e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0213:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0218:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_021d:  ldarg.0
    IL_021e:  ldc.i4.1
    IL_021f:  stfld      bool Game.ComponentInput::m_isViewHoldStarted
    IL_0224:  br         IL_034a

    IL_0229:  ldloc.s    V_5
    IL_022b:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_0230:  ldc.i4.2
    IL_0231:  bne.un     IL_034a

    IL_0236:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_023b:  ldc.i4.1
    IL_023c:  beq.s      IL_0249

    IL_023e:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_0243:  ldc.i4.2
    IL_0244:  bne.un     IL_02cd

    IL_0249:  ldc.r4     0.2
    IL_024e:  ldc.r4     1.8
    IL_0253:  call       float32 Game.SettingsManager::get_LookSensitivity()
    IL_0258:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_025d:  ldloc.s    V_5
    IL_025f:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
    IL_0264:  ldarg.0
    IL_0265:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_026a:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_ViewWidget()
    IL_026f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_InvertedGlobalTransform()
    IL_0274:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::TransformNormal(valuetype [Engine]Engine.Vector2,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0279:  stloc.s    V_6
    IL_027b:  ldloc.0
    IL_027c:  div
    IL_027d:  ldc.r4     7.9999998e-004
    IL_0282:  ldc.r4     -7.9999998e-004
    IL_0287:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_028c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0291:  ldloc.s    V_6
    IL_0293:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0298:  ldloca.s   V_6
    IL_029a:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_029f:  ldc.r4     0.125
    IL_02a4:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_02a9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_02ae:  stloc.s    V_7
    IL_02b0:  ldarg.0
    IL_02b1:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02b6:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_02bb:  dup
    IL_02bc:  ldobj      [Engine]Engine.Vector2
    IL_02c1:  ldloc.s    V_7
    IL_02c3:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_02c8:  stobj      [Engine]Engine.Vector2
    IL_02cd:  ldarg.0
    IL_02ce:  ldfld      bool Game.ComponentInput::m_isViewHoldStarted
    IL_02d3:  brfalse.s  IL_034a

    IL_02d5:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_02da:  ldc.i4.2
    IL_02db:  bne.un.s   IL_030d

    IL_02dd:  ldarg.0
    IL_02de:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02e3:  ldloc.2
    IL_02e4:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_02e9:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_02ee:  ldarg.0
    IL_02ef:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_02f4:  ldloc.s    V_5
    IL_02f6:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_02fb:  ldloc.3
    IL_02fc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0301:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0306:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_030b:  br.s       IL_034a

    IL_030d:  ldarg.0
    IL_030e:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0313:  ldloc.s    V_5
    IL_0315:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_031a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_031f:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0324:  ldarg.0
    IL_0325:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_032a:  ldloc.s    V_5
    IL_032c:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_0331:  ldloc.3
    IL_0332:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0337:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_033c:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0341:  br.s       IL_034a

    IL_0343:  ldarg.0
    IL_0344:  ldc.i4.0
    IL_0345:  stfld      bool Game.ComponentInput::m_isViewHoldStarted
    IL_034a:  ldarg.0
    IL_034b:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0350:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_MoveWidget()
    IL_0355:  brfalse    IL_050d

    IL_035a:  ldarg.0
    IL_035b:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0360:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_MoveWidget()
    IL_0365:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_TouchInput()
    IL_036a:  stloc.s    V_4
    IL_036c:  ldloca.s   V_4
    IL_036e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_HasValue()
    IL_0373:  brfalse    IL_050d

    IL_0378:  ldarg.0
    IL_0379:  ldc.i4.1
    IL_037a:  call       instance void Game.ComponentInput::set_IsControlledByTouch(bool)
    IL_037f:  ldarg.0
    IL_0380:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0385:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_MoveWidget()
    IL_038a:  callvirt   instance float32 Game.TouchInputWidget::get_Radius()
    IL_038f:  stloc.s    V_8
    IL_0391:  ldarg.0
    IL_0392:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0397:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_MoveWidget()
    IL_039c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_TouchInput()
    IL_03a1:  stloc.s    V_4
    IL_03a3:  ldloca.s   V_4
    IL_03a5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_Value()
    IL_03aa:  stloc.s    V_9
    IL_03ac:  ldloc.s    V_9
    IL_03ae:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_03b3:  brtrue.s   IL_03c6

    IL_03b5:  ldarg.0
    IL_03b6:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_03bb:  ldc.i4.1
    IL_03bc:  stfld      bool Game.PlayerInput::Jump
    IL_03c1:  br         IL_050d

    IL_03c6:  ldloc.s    V_9
    IL_03c8:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_03cd:  ldc.i4.2
    IL_03ce:  beq.s      IL_03dd

    IL_03d0:  ldloc.s    V_9
    IL_03d2:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_03d7:  ldc.i4.1
    IL_03d8:  bne.un     IL_050d

    IL_03dd:  ldloc.1
    IL_03de:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_03e3:  stloc.s    V_14
    IL_03e5:  ldloca.s   V_14
    IL_03e7:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_03ec:  stloc.s    V_15
    IL_03ee:  ldloca.s   V_15
    IL_03f0:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_03f5:  stloc.s    V_10
    IL_03f7:  ldc.r4     0.2
    IL_03fc:  ldc.r4     1.8
    IL_0401:  call       float32 Game.SettingsManager::get_MoveSensitivity()
    IL_0406:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_040b:  ldloc.s    V_9
    IL_040d:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
    IL_0412:  ldarg.0
    IL_0413:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0418:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_ViewWidget()
    IL_041d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_InvertedGlobalTransform()
    IL_0422:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::TransformNormal(valuetype [Engine]Engine.Vector2,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0427:  stloc.s    V_11
    IL_0429:  ldloc.0
    IL_042a:  div
    IL_042b:  ldc.r4     2.0000001e-003
    IL_0430:  ldc.r4     -2.0000001e-003
    IL_0435:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_043a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_043f:  ldloc.s    V_11
    IL_0441:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0446:  ldloca.s   V_11
    IL_0448:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_044d:  ldc.r4     0.175
    IL_0452:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0457:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_045c:  stloc.s    V_12
    IL_045e:  ldarg.0
    IL_045f:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0464:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0469:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_046e:  dup
    IL_046f:  ldind.r4
    IL_0470:  ldloc.s    V_12
    IL_0472:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0477:  add
    IL_0478:  stind.r4
    IL_0479:  ldarg.0
    IL_047a:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_047f:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0484:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_0489:  dup
    IL_048a:  ldind.r4
    IL_048b:  ldloc.s    V_12
    IL_048d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0492:  add
    IL_0493:  stind.r4
    IL_0494:  ldloc.s    V_9
    IL_0496:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
    IL_049b:  ldarg.0
    IL_049c:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_04a1:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_ViewWidget()
    IL_04a6:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_InvertedGlobalTransform()
    IL_04ab:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::TransformNormal(valuetype [Engine]Engine.Vector2,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_04b0:  stloc.s    V_13
    IL_04b2:  ldarg.0
    IL_04b3:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_04b8:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_04bd:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_04c2:  dup
    IL_04c3:  ldind.r4
    IL_04c4:  ldloc.s    V_13
    IL_04c6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_04cb:  ldloc.s    V_10
    IL_04cd:  mul
    IL_04ce:  ldc.r4     0.2
    IL_04d3:  ldloc.s    V_8
    IL_04d5:  mul
    IL_04d6:  ldloc.s    V_8
    IL_04d8:  call       float32 Game.ComponentInput::ProcessInputValue(float32,
                                                                        float32,
                                                                        float32)
    IL_04dd:  add
    IL_04de:  stind.r4
    IL_04df:  ldarg.0
    IL_04e0:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_04e5:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_04ea:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_04ef:  dup
    IL_04f0:  ldind.r4
    IL_04f1:  ldloc.s    V_13
    IL_04f3:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_04f8:  neg
    IL_04f9:  ldloc.s    V_10
    IL_04fb:  mul
    IL_04fc:  ldc.r4     0.2
    IL_0501:  ldloc.s    V_8
    IL_0503:  mul
    IL_0504:  ldloc.s    V_8
    IL_0506:  call       float32 Game.ComponentInput::ProcessInputValue(float32,
                                                                        float32,
                                                                        float32)
    IL_050b:  add
    IL_050c:  stind.r4
    IL_050d:  ldarg.0
    IL_050e:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0513:  callvirt   instance class Game.MoveRoseWidget Game.ComponentGui::get_MoveRoseWidget()
    IL_0518:  brfalse    IL_05c7

    IL_051d:  ldarg.0
    IL_051e:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0523:  callvirt   instance class Game.MoveRoseWidget Game.ComponentGui::get_MoveRoseWidget()
    IL_0528:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::get_Direction()
    IL_052d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0532:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
    IL_0537:  brtrue.s   IL_054b

    IL_0539:  ldarg.0
    IL_053a:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_053f:  callvirt   instance class Game.MoveRoseWidget Game.ComponentGui::get_MoveRoseWidget()
    IL_0544:  callvirt   instance bool Game.MoveRoseWidget::get_Jump()
    IL_0549:  brfalse.s  IL_0552

    IL_054b:  ldarg.0
    IL_054c:  ldc.i4.1
    IL_054d:  call       instance void Game.ComponentInput::set_IsControlledByTouch(bool)
    IL_0552:  ldarg.0
    IL_0553:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0558:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_055d:  dup
    IL_055e:  ldobj      [Engine]Engine.Vector3
    IL_0563:  ldarg.0
    IL_0564:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0569:  callvirt   instance class Game.MoveRoseWidget Game.ComponentGui::get_MoveRoseWidget()
    IL_056e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::get_Direction()
    IL_0573:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0578:  stobj      [Engine]Engine.Vector3
    IL_057d:  ldarg.0
    IL_057e:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0583:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0588:  dup
    IL_0589:  ldobj      [Engine]Engine.Vector3
    IL_058e:  ldarg.0
    IL_058f:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0594:  callvirt   instance class Game.MoveRoseWidget Game.ComponentGui::get_MoveRoseWidget()
    IL_0599:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::get_Direction()
    IL_059e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_05a3:  stobj      [Engine]Engine.Vector3
    IL_05a8:  ldarg.0
    IL_05a9:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_05ae:  ldflda     bool Game.PlayerInput::Jump
    IL_05b3:  dup
    IL_05b4:  ldind.u1
    IL_05b5:  ldarg.0
    IL_05b6:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_05bb:  callvirt   instance class Game.MoveRoseWidget Game.ComponentGui::get_MoveRoseWidget()
    IL_05c0:  callvirt   instance bool Game.MoveRoseWidget::get_Jump()
    IL_05c5:  or
    IL_05c6:  stind.i1
    IL_05c7:  ldarg.0
    IL_05c8:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_05cd:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_LookWidget()
    IL_05d2:  brfalse    IL_06be

    IL_05d7:  ldarg.0
    IL_05d8:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_05dd:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_LookWidget()
    IL_05e2:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_TouchInput()
    IL_05e7:  stloc.s    V_4
    IL_05e9:  ldloca.s   V_4
    IL_05eb:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_HasValue()
    IL_05f0:  brfalse    IL_06be

    IL_05f5:  ldarg.0
    IL_05f6:  ldc.i4.1
    IL_05f7:  call       instance void Game.ComponentInput::set_IsControlledByTouch(bool)
    IL_05fc:  ldarg.0
    IL_05fd:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_0602:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_LookWidget()
    IL_0607:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_TouchInput()
    IL_060c:  stloc.s    V_4
    IL_060e:  ldloca.s   V_4
    IL_0610:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_Value()
    IL_0615:  stloc.s    V_16
    IL_0617:  ldloc.s    V_16
    IL_0619:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_061e:  brtrue.s   IL_062d

    IL_0620:  ldarg.0
    IL_0621:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_0626:  ldc.i4.1
    IL_0627:  stfld      bool Game.PlayerInput::Jump
    IL_062c:  ret

    IL_062d:  ldloc.s    V_16
    IL_062f:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_0634:  ldc.i4.2
    IL_0635:  bne.un     IL_06be

    IL_063a:  ldc.r4     0.2
    IL_063f:  ldc.r4     1.8
    IL_0644:  call       float32 Game.SettingsManager::get_LookSensitivity()
    IL_0649:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_064e:  ldloc.s    V_16
    IL_0650:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
    IL_0655:  ldarg.0
    IL_0656:  ldfld      class Game.ComponentGui Game.ComponentInput::m_componentGui
    IL_065b:  callvirt   instance class Game.TouchInputWidget Game.ComponentGui::get_ViewWidget()
    IL_0660:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_InvertedGlobalTransform()
    IL_0665:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::TransformNormal(valuetype [Engine]Engine.Vector2,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_066a:  stloc.s    V_17
    IL_066c:  ldloc.0
    IL_066d:  div
    IL_066e:  ldc.r4     7.9999998e-004
    IL_0673:  ldc.r4     -7.9999998e-004
    IL_0678:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_067d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0682:  ldloc.s    V_17
    IL_0684:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0689:  ldloca.s   V_17
    IL_068b:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_0690:  ldc.r4     0.125
    IL_0695:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_069a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_069f:  stloc.s    V_18
    IL_06a1:  ldarg.0
    IL_06a2:  ldflda     valuetype Game.PlayerInput Game.ComponentInput::m_playerInput
    IL_06a7:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_06ac:  dup
    IL_06ad:  ldobj      [Engine]Engine.Vector2
    IL_06b2:  ldloc.s    V_18
    IL_06b4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_06b9:  stobj      [Engine]Engine.Vector2
    IL_06be:  ret
  } // end of method ComponentInput::UpdateInputFromWidgets

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.ComponentInput::'<IsControlledByTouch>k__BackingField'
    IL_0007:  ldarg.0
    IL_0008:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_000d:  ret
  } // end of method ComponentInput::.ctor

  .property instance valuetype Game.PlayerInput
          PlayerInput()
  {
    .get instance valuetype Game.PlayerInput Game.ComponentInput::get_PlayerInput()
  } // end of property ComponentInput::PlayerInput
  .property instance bool IsControlledByTouch()
  {
    .get instance bool Game.ComponentInput::get_IsControlledByTouch()
    .set instance void Game.ComponentInput::set_IsControlledByTouch(bool)
  } // end of property ComponentInput::IsControlledByTouch
  .property instance class Game.IInventory
          SplitSourceInventory()
  {
    .get instance class Game.IInventory Game.ComponentInput::get_SplitSourceInventory()
    .set instance void Game.ComponentInput::set_SplitSourceInventory(class Game.IInventory)
  } // end of property ComponentInput::SplitSourceInventory
  .property instance int32 SplitSourceSlotIndex()
  {
    .get instance int32 Game.ComponentInput::get_SplitSourceSlotIndex()
    .set instance void Game.ComponentInput::set_SplitSourceSlotIndex(int32)
  } // end of property ComponentInput::SplitSourceSlotIndex
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentInput::get_UpdateOrder()
  } // end of property ComponentInput::UpdateOrder
} // end of class Game.ComponentInput