.class public auto ansi beforefieldinit Game.SubsystemInput
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGui m_subsystemGui
  .field private valuetype Game.PlayerInput m_playerInput
  .field private float32 m_approximateScreenDiagonal
  .field private bool m_isViewHoldStarted
  .field private float64 m_lastJumpTime
  .field private float32 m_lastLeftTrigger
  .field private float32 m_lastRightTrigger
  .field private bool '<IsControlledByMouse>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance valuetype Game.PlayerInput 
          get_PlayerInput() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0006:  ret
  } // end of method SubsystemInput::get_PlayerInput

  .method public hidebysig specialname instance bool 
          get_IsControlledByMouse() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemInput::'<IsControlledByMouse>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemInput::get_IsControlledByMouse

  .method private hidebysig specialname instance void 
          set_IsControlledByMouse(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.SubsystemInput::'<IsControlledByMouse>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemInput::set_IsControlledByMouse

  .method public hidebysig instance void 
          UpdateInput() cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0006:  initobj    Game.PlayerInput
    IL_000c:  call       bool [Engine]Engine.Window::get_IsActive()
    IL_0011:  brtrue.s   IL_0014

    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  call       instance void Game.SubsystemInput::UpdateInputFromGamepad()
    IL_001a:  ldarg.0
    IL_001b:  call       instance void Game.SubsystemInput::UpdateInputFromMouseAndKeyboard()
    IL_0020:  ldarg.0
    IL_0021:  call       instance void Game.SubsystemInput::UpdateInputFromWidgets()
    IL_0026:  ldarg.0
    IL_0027:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_002c:  ldfld      bool Game.PlayerInput::Jump
    IL_0031:  brfalse.s  IL_0071

    IL_0033:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0038:  ldarg.0
    IL_0039:  ldfld      float64 Game.SubsystemInput::m_lastJumpTime
    IL_003e:  sub
    IL_003f:  ldc.r8     0.40000000000000002
    IL_0048:  bge.un.s   IL_0066

    IL_004a:  ldarg.0
    IL_004b:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0050:  ldc.i4.1
    IL_0051:  stfld      bool Game.PlayerInput::ToggleCreativeFly
    IL_0056:  ldarg.0
    IL_0057:  ldc.r8     0.0
    IL_0060:  stfld      float64 Game.SubsystemInput::m_lastJumpTime
    IL_0065:  ret

    IL_0066:  ldarg.0
    IL_0067:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_006c:  stfld      float64 Game.SubsystemInput::m_lastJumpTime
    IL_0071:  ret
  } // end of method SubsystemInput::UpdateInput

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       142 (0x8e)
    .maxstack  5
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Point2 V_1,
             float32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemInput::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_001f:  stfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0024:  call       float32 Game.ScreenResolutionManager::get_ApproximateScreenDpi()
    IL_0029:  stloc.0
    IL_002a:  call       valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_ScreenResolution()
    IL_002f:  stloc.1
    IL_0030:  ldloc.1
    IL_0031:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0036:  conv.r4
    IL_0037:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_003c:  ldloc.1
    IL_003d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0042:  conv.r4
    IL_0043:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0048:  add
    IL_0049:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_004e:  stloc.2
    IL_004f:  ldarg.0
    IL_0050:  ldloc.2
    IL_0051:  ldloc.0
    IL_0052:  div
    IL_0053:  stfld      float32 Game.SubsystemInput::m_approximateScreenDiagonal
    IL_0058:  ldstr      "Screen diagonal estimated to be {0:0.0} inches (dp"
    + "i={1:0.0}, resolution={2})"
    IL_005d:  ldc.i4.3
    IL_005e:  newarr     [System.Runtime]System.Object
    IL_0063:  dup
    IL_0064:  ldc.i4.0
    IL_0065:  ldarg.0
    IL_0066:  ldfld      float32 Game.SubsystemInput::m_approximateScreenDiagonal
    IL_006b:  box        [System.Runtime]System.Single
    IL_0070:  stelem.ref
    IL_0071:  dup
    IL_0072:  ldc.i4.1
    IL_0073:  ldloc.0
    IL_0074:  box        [System.Runtime]System.Single
    IL_0079:  stelem.ref
    IL_007a:  dup
    IL_007b:  ldc.i4.2
    IL_007c:  ldloc.1
    IL_007d:  box        [Engine]Engine.Point2
    IL_0082:  stelem.ref
    IL_0083:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0088:  call       void [Engine]Engine.Log::Information(string)
    IL_008d:  ret
  } // end of method SubsystemInput::Load

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
  } // end of method SubsystemInput::ProcessInputValue

  .method private hidebysig instance void 
          UpdateInputFromGamepad() cil managed
  {
    // 代码大小       940 (0x3ac)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> V_0,
             valuetype [Engine]Engine.Graphics.Viewport V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_000f:  callvirt   instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_0014:  brtrue.s   IL_0026

    IL_0016:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> Game.DialogsManager::get_Dialogs()
    IL_001b:  stloc.0
    IL_001c:  ldloca.s   V_0
    IL_001e:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog>::get_Count()
    IL_0023:  ldc.i4.0
    IL_0024:  ble.s      IL_005f

    IL_0026:  call       bool Game.InputManager::get_IsPadCursorVisible()
    IL_002b:  brtrue     IL_0326

    IL_0030:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0035:  ldfld      int32 [Engine]Engine.Point2::X
    IL_003a:  ldc.i4.2
    IL_003b:  div
    IL_003c:  conv.r4
    IL_003d:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0042:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0047:  ldc.i4.2
    IL_0048:  div
    IL_0049:  conv.r4
    IL_004a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_004f:  call       void Game.InputManager::set_PadCursorPosition(valuetype [Engine]Engine.Vector2)
    IL_0054:  ldc.i4.1
    IL_0055:  call       void Game.InputManager::set_IsPadCursorVisible(bool)
    IL_005a:  br         IL_0326

    IL_005f:  ldc.i4.0
    IL_0060:  call       void Game.InputManager::set_IsPadCursorVisible(bool)
    IL_0065:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_006a:  stloc.1
    IL_006b:  ldc.i4.0
    IL_006c:  ldc.i4.0
    IL_006d:  ldc.r4     0.2
    IL_0072:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.GamePad::GetStickPosition(int32,
                                                                                                         valuetype [Engine]Engine.Input.GamePadStick,
                                                                                                         float32)
    IL_0077:  stloc.2
    IL_0078:  ldc.i4.0
    IL_0079:  ldc.i4.1
    IL_007a:  ldc.r4     0.2
    IL_007f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.GamePad::GetStickPosition(int32,
                                                                                                         valuetype [Engine]Engine.Input.GamePadStick,
                                                                                                         float32)
    IL_0084:  stloc.3
    IL_0085:  ldc.i4.0
    IL_0086:  ldc.i4.0
    IL_0087:  ldc.r4     0.0
    IL_008c:  call       float32 [Engine]Engine.Input.GamePad::GetTriggerPosition(int32,
                                                                                  valuetype [Engine]Engine.Input.GamePadTrigger,
                                                                                  float32)
    IL_0091:  stloc.s    V_4
    IL_0093:  ldc.i4.0
    IL_0094:  ldc.i4.1
    IL_0095:  ldc.r4     0.0
    IL_009a:  call       float32 [Engine]Engine.Input.GamePad::GetTriggerPosition(int32,
                                                                                  valuetype [Engine]Engine.Input.GamePadTrigger,
                                                                                  float32)
    IL_009f:  stloc.s    V_5
    IL_00a1:  ldarg.0
    IL_00a2:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_00a7:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_00ac:  dup
    IL_00ad:  ldobj      [Engine]Engine.Vector3
    IL_00b2:  ldloc.2
    IL_00b3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b8:  ldc.r4     0.0
    IL_00bd:  ldloc.2
    IL_00be:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00c8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00cd:  stobj      [Engine]Engine.Vector3
    IL_00d2:  ldarg.0
    IL_00d3:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_00d8:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_00dd:  dup
    IL_00de:  ldobj      [Engine]Engine.Vector3
    IL_00e3:  ldloc.2
    IL_00e4:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e9:  ldc.r4     0.0
    IL_00ee:  ldloc.2
    IL_00ef:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00f4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fe:  stobj      [Engine]Engine.Vector3
    IL_0103:  ldarg.0
    IL_0104:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0109:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_010e:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0113:  dup
    IL_0114:  ldind.r4
    IL_0115:  ldc.r4     0.5
    IL_011a:  ldloc.3
    IL_011b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0120:  ldc.r4     1.5
    IL_0125:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_012a:  mul
    IL_012b:  add
    IL_012c:  stind.r4
    IL_012d:  ldarg.0
    IL_012e:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0133:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_0138:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_013d:  dup
    IL_013e:  ldind.r4
    IL_013f:  ldc.r4     0.5
    IL_0144:  ldloc.3
    IL_0145:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_014a:  ldc.r4     1.5
    IL_014f:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_0154:  mul
    IL_0155:  add
    IL_0156:  stind.r4
    IL_0157:  ldarg.0
    IL_0158:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_015d:  ldflda     bool Game.PlayerInput::Jump
    IL_0162:  dup
    IL_0163:  ldind.u1
    IL_0164:  ldc.i4.0
    IL_0165:  ldc.i4.0
    IL_0166:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_016b:  or
    IL_016c:  stind.i1
    IL_016d:  ldarg.0
    IL_016e:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0173:  ldloc.s    V_4
    IL_0175:  ldc.r4     0.5
    IL_017a:  bge.s      IL_0189

    IL_017c:  ldarg.0
    IL_017d:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0182:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0187:  br.s       IL_01b3

    IL_0189:  ldloc.1
    IL_018a:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_018f:  ldloc.1
    IL_0190:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0195:  ldc.i4.2
    IL_0196:  div
    IL_0197:  add
    IL_0198:  conv.r4
    IL_0199:  ldloc.1
    IL_019a:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_019f:  ldloc.1
    IL_01a0:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_01a5:  ldc.i4.2
    IL_01a6:  div
    IL_01a7:  add
    IL_01a8:  conv.r4
    IL_01a9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01ae:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01b3:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_01b8:  ldarg.0
    IL_01b9:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_01be:  ldloc.s    V_4
    IL_01c0:  ldc.r4     0.5
    IL_01c5:  blt.un.s   IL_01d4

    IL_01c7:  ldarg.0
    IL_01c8:  ldfld      float32 Game.SubsystemInput::m_lastLeftTrigger
    IL_01cd:  ldc.r4     0.5
    IL_01d2:  blt.s      IL_01e1

    IL_01d4:  ldarg.0
    IL_01d5:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_01da:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_01df:  br.s       IL_020b

    IL_01e1:  ldloc.1
    IL_01e2:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_01e7:  ldloc.1
    IL_01e8:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_01ed:  ldc.i4.2
    IL_01ee:  div
    IL_01ef:  add
    IL_01f0:  conv.r4
    IL_01f1:  ldloc.1
    IL_01f2:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_01f7:  ldloc.1
    IL_01f8:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_01fd:  ldc.i4.2
    IL_01fe:  div
    IL_01ff:  add
    IL_0200:  conv.r4
    IL_0201:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0206:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_020b:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_0210:  ldarg.0
    IL_0211:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0216:  ldloc.s    V_5
    IL_0218:  ldc.r4     0.5
    IL_021d:  bge.s      IL_022c

    IL_021f:  ldarg.0
    IL_0220:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0225:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_022a:  br.s       IL_0256

    IL_022c:  ldloc.1
    IL_022d:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_0232:  ldloc.1
    IL_0233:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0238:  ldc.i4.2
    IL_0239:  div
    IL_023a:  add
    IL_023b:  conv.r4
    IL_023c:  ldloc.1
    IL_023d:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0242:  ldloc.1
    IL_0243:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0248:  ldc.i4.2
    IL_0249:  div
    IL_024a:  add
    IL_024b:  conv.r4
    IL_024c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0251:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0256:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_025b:  ldarg.0
    IL_025c:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0261:  ldloc.s    V_5
    IL_0263:  ldc.r4     0.5
    IL_0268:  blt.un.s   IL_0277

    IL_026a:  ldarg.0
    IL_026b:  ldfld      float32 Game.SubsystemInput::m_lastRightTrigger
    IL_0270:  ldc.r4     0.5
    IL_0275:  blt.s      IL_0284

    IL_0277:  ldarg.0
    IL_0278:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_027d:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_0282:  br.s       IL_02ae

    IL_0284:  ldloc.1
    IL_0285:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_028a:  ldloc.1
    IL_028b:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0290:  ldc.i4.2
    IL_0291:  div
    IL_0292:  add
    IL_0293:  conv.r4
    IL_0294:  ldloc.1
    IL_0295:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_029a:  ldloc.1
    IL_029b:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_02a0:  ldc.i4.2
    IL_02a1:  div
    IL_02a2:  add
    IL_02a3:  conv.r4
    IL_02a4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02a9:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_02ae:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_02b3:  ldarg.0
    IL_02b4:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_02b9:  ldflda     bool Game.PlayerInput::ToggleMount
    IL_02be:  dup
    IL_02bf:  ldind.u1
    IL_02c0:  ldc.i4.0
    IL_02c1:  ldc.i4.6
    IL_02c2:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_02c7:  or
    IL_02c8:  stind.i1
    IL_02c9:  ldarg.0
    IL_02ca:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_02cf:  ldflda     bool Game.PlayerInput::ToggleCreativeFly
    IL_02d4:  dup
    IL_02d5:  ldind.u1
    IL_02d6:  ldc.i4.0
    IL_02d7:  ldc.i4.7
    IL_02d8:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_02dd:  or
    IL_02de:  stind.i1
    IL_02df:  ldarg.0
    IL_02e0:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_02e5:  ldflda     bool Game.PlayerInput::ToggleSneak
    IL_02ea:  dup
    IL_02eb:  ldind.u1
    IL_02ec:  ldc.i4.0
    IL_02ed:  ldc.i4.8
    IL_02ee:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_02f3:  or
    IL_02f4:  stind.i1
    IL_02f5:  ldloc.2
    IL_02f6:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_02fb:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_0300:  brtrue.s   IL_030f

    IL_0302:  ldloc.3
    IL_0303:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0308:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_030d:  brfalse.s  IL_0316

    IL_030f:  ldarg.0
    IL_0310:  ldc.i4.1
    IL_0311:  call       instance void Game.SubsystemInput::set_IsControlledByMouse(bool)
    IL_0316:  ldarg.0
    IL_0317:  ldloc.s    V_4
    IL_0319:  stfld      float32 Game.SubsystemInput::m_lastLeftTrigger
    IL_031e:  ldarg.0
    IL_031f:  ldloc.s    V_5
    IL_0321:  stfld      float32 Game.SubsystemInput::m_lastRightTrigger
    IL_0326:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> Game.DialogsManager::get_Dialogs()
    IL_032b:  stloc.0
    IL_032c:  ldloca.s   V_0
    IL_032e:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog>::get_Count()
    IL_0333:  brtrue.s   IL_03ab

    IL_0335:  ldarg.0
    IL_0336:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_033b:  ldflda     bool Game.PlayerInput::SwitchCameraMode
    IL_0340:  dup
    IL_0341:  ldind.u1
    IL_0342:  ldc.i4.0
    IL_0343:  ldc.i4.5
    IL_0344:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_0349:  or
    IL_034a:  stind.i1
    IL_034b:  ldarg.0
    IL_034c:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0351:  ldflda     bool Game.PlayerInput::ToggleInventory
    IL_0356:  dup
    IL_0357:  ldind.u1
    IL_0358:  ldc.i4.0
    IL_0359:  ldc.i4.2
    IL_035a:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_035f:  or
    IL_0360:  stind.i1
    IL_0361:  ldarg.0
    IL_0362:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0367:  ldflda     bool Game.PlayerInput::ToggleClothing
    IL_036c:  dup
    IL_036d:  ldind.u1
    IL_036e:  ldc.i4.0
    IL_036f:  ldc.i4.3
    IL_0370:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_0375:  or
    IL_0376:  stind.i1
    IL_0377:  ldc.i4.0
    IL_0378:  ldc.i4.s   9
    IL_037a:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_037f:  brfalse.s  IL_0391

    IL_0381:  ldarg.0
    IL_0382:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0387:  ldflda     int32 Game.PlayerInput::ScrollInventory
    IL_038c:  dup
    IL_038d:  ldind.i4
    IL_038e:  ldc.i4.1
    IL_038f:  sub
    IL_0390:  stind.i4
    IL_0391:  ldc.i4.0
    IL_0392:  ldc.i4.s   11
    IL_0394:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_0399:  brfalse.s  IL_03ab

    IL_039b:  ldarg.0
    IL_039c:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_03a1:  ldflda     int32 Game.PlayerInput::ScrollInventory
    IL_03a6:  dup
    IL_03a7:  ldind.i4
    IL_03a8:  ldc.i4.1
    IL_03a9:  add
    IL_03aa:  stind.i4
    IL_03ab:  ret
  } // end of method SubsystemInput::UpdateInputFromGamepad

  .method private hidebysig instance void 
          UpdateInputFromMouseAndKeyboard() cil managed
  {
    // 代码大小       1548 (0x60c)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Graphics.Viewport V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Point2 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0006:  callvirt   instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_000b:  brtrue.s   IL_001d

    IL_000d:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> Game.DialogsManager::get_Dialogs()
    IL_0012:  stloc.0
    IL_0013:  ldloca.s   V_0
    IL_0015:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog>::get_Count()
    IL_001a:  ldc.i4.0
    IL_001b:  ble.s      IL_004f

    IL_001d:  call       bool [Engine]Engine.Input.Mouse::get_IsMouseVisible()
    IL_0022:  brtrue     IL_042e

    IL_0027:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_002c:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0031:  ldc.i4.2
    IL_0032:  div
    IL_0033:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0038:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_003d:  ldc.i4.2
    IL_003e:  div
    IL_003f:  call       void [Engine]Engine.Input.Mouse::SetMousePosition(int32,
                                                                           int32)
    IL_0044:  ldc.i4.1
    IL_0045:  call       void [Engine]Engine.Input.Mouse::set_IsMouseVisible(bool)
    IL_004a:  br         IL_042e

    IL_004f:  ldc.i4.0
    IL_0050:  call       void [Engine]Engine.Input.Mouse::set_IsMouseVisible(bool)
    IL_0055:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_005a:  stloc.1
    IL_005b:  ldc.i4.0
    IL_005c:  stloc.2
    IL_005d:  call       bool [Engine]Engine.Window::get_IsActive()
    IL_0062:  brfalse    IL_00ef

    IL_0067:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_006c:  ldc.r4     0.0
    IL_0071:  ble.un.s   IL_00ef

    IL_0073:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Input.Mouse::get_MouseMovement()
    IL_0078:  stloc.s    V_5
    IL_007a:  call       int32 [Engine]Engine.Input.Mouse::get_MouseWheelMovement()
    IL_007f:  ldloca.s   V_1
    IL_0081:  ldc.r4     2.e-002
    IL_0086:  ldloc.s    V_5
    IL_0088:  ldfld      int32 [Engine]Engine.Point2::X
    IL_008d:  conv.r4
    IL_008e:  ldc.r4     1.
    IL_0093:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_0098:  mul
    IL_0099:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_009e:  div
    IL_009f:  ldc.r4     60.
    IL_00a4:  div
    IL_00a5:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00aa:  ldloca.s   V_1
    IL_00ac:  ldc.r4     2.e-002
    IL_00b1:  ldloc.s    V_5
    IL_00b3:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00b8:  neg
    IL_00b9:  conv.r4
    IL_00ba:  ldc.r4     1.
    IL_00bf:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_00c4:  mul
    IL_00c5:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00ca:  div
    IL_00cb:  ldc.r4     60.
    IL_00d0:  div
    IL_00d1:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00d6:  ldc.i4.s   120
    IL_00d8:  div
    IL_00d9:  stloc.2
    IL_00da:  ldloc.s    V_5
    IL_00dc:  ldsfld     valuetype [Engine]Engine.Point2 [Engine]Engine.Point2::Zero
    IL_00e1:  call       bool [Engine]Engine.Point2::op_Inequality(valuetype [Engine]Engine.Point2,
                                                                   valuetype [Engine]Engine.Point2)
    IL_00e6:  brfalse.s  IL_00ef

    IL_00e8:  ldarg.0
    IL_00e9:  ldc.i4.1
    IL_00ea:  call       instance void Game.SubsystemInput::set_IsControlledByMouse(bool)
    IL_00ef:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_00f4:  stloc.3
    IL_00f5:  ldloca.s   V_4
    IL_00f7:  initobj    [Engine]Engine.Vector3
    IL_00fd:  ldloc.s    V_4
    IL_00ff:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0104:  ldc.i4.s   34
    IL_0106:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_010b:  brtrue.s   IL_0110

    IL_010d:  ldc.i4.0
    IL_010e:  br.s       IL_0111

    IL_0110:  ldc.i4.1
    IL_0111:  conv.r4
    IL_0112:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0117:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011c:  stloc.s    V_4
    IL_011e:  ldloc.s    V_4
    IL_0120:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0125:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_012a:  ldc.i4.s   49
    IL_012c:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0131:  brtrue.s   IL_0136

    IL_0133:  ldc.i4.0
    IL_0134:  br.s       IL_0137

    IL_0136:  ldc.i4.1
    IL_0137:  conv.r4
    IL_0138:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_013d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0142:  stloc.s    V_4
    IL_0144:  ldloc.s    V_4
    IL_0146:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_014b:  ldc.i4.s   53
    IL_014d:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0152:  brtrue.s   IL_0157

    IL_0154:  ldc.i4.0
    IL_0155:  br.s       IL_0158

    IL_0157:  ldc.i4.1
    IL_0158:  conv.r4
    IL_0159:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_015e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0163:  stloc.s    V_4
    IL_0165:  ldloc.s    V_4
    IL_0167:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_016c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0171:  ldc.i4.s   31
    IL_0173:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0178:  brtrue.s   IL_017d

    IL_017a:  ldc.i4.0
    IL_017b:  br.s       IL_017e

    IL_017d:  ldc.i4.1
    IL_017e:  conv.r4
    IL_017f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0184:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0189:  stloc.s    V_4
    IL_018b:  ldloc.s    V_4
    IL_018d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0192:  ldc.i4.s   21
    IL_0194:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0199:  brtrue.s   IL_019e

    IL_019b:  ldc.i4.0
    IL_019c:  br.s       IL_019f

    IL_019e:  ldc.i4.1
    IL_019f:  conv.r4
    IL_01a0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01a5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01aa:  stloc.s    V_4
    IL_01ac:  ldloc.s    V_4
    IL_01ae:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_01b3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_01b8:  ldc.i4.1
    IL_01b9:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_01be:  brtrue.s   IL_01c3

    IL_01c0:  ldc.i4.0
    IL_01c1:  br.s       IL_01c4

    IL_01c3:  ldc.i4.1
    IL_01c4:  conv.r4
    IL_01c5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01ca:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01cf:  stloc.s    V_4
    IL_01d1:  ldarg.0
    IL_01d2:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_01d7:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_01dc:  dup
    IL_01dd:  ldobj      [Engine]Engine.Vector2
    IL_01e2:  ldloc.1
    IL_01e3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01e8:  ldc.r4     -5.
    IL_01ed:  ldc.r4     5.
    IL_01f2:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_01f7:  ldloc.1
    IL_01f8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01fd:  ldc.r4     -5.
    IL_0202:  ldc.r4     5.
    IL_0207:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_020c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0211:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0216:  stobj      [Engine]Engine.Vector2
    IL_021b:  ldarg.0
    IL_021c:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0221:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_0226:  dup
    IL_0227:  ldobj      [Engine]Engine.Vector3
    IL_022c:  ldloc.s    V_4
    IL_022e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0233:  stobj      [Engine]Engine.Vector3
    IL_0238:  ldarg.0
    IL_0239:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_023e:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0243:  dup
    IL_0244:  ldobj      [Engine]Engine.Vector3
    IL_0249:  ldloc.s    V_4
    IL_024b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0250:  stobj      [Engine]Engine.Vector3
    IL_0255:  ldarg.0
    IL_0256:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_025b:  ldflda     bool Game.PlayerInput::Jump
    IL_0260:  dup
    IL_0261:  ldind.u1
    IL_0262:  ldc.i4.s   21
    IL_0264:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0269:  or
    IL_026a:  stind.i1
    IL_026b:  ldarg.0
    IL_026c:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0271:  ldflda     int32 Game.PlayerInput::ScrollInventory
    IL_0276:  dup
    IL_0277:  ldind.i4
    IL_0278:  ldloc.2
    IL_0279:  sub
    IL_027a:  stind.i4
    IL_027b:  ldarg.0
    IL_027c:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0281:  ldc.i4.0
    IL_0282:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_0287:  brtrue.s   IL_0296

    IL_0289:  ldarg.0
    IL_028a:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_028f:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0294:  br.s       IL_02c0

    IL_0296:  ldloc.3
    IL_0297:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_029c:  ldloc.3
    IL_029d:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_02a2:  ldc.i4.2
    IL_02a3:  div
    IL_02a4:  add
    IL_02a5:  conv.r4
    IL_02a6:  ldloc.3
    IL_02a7:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_02ac:  ldloc.3
    IL_02ad:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_02b2:  ldc.i4.2
    IL_02b3:  div
    IL_02b4:  add
    IL_02b5:  conv.r4
    IL_02b6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02bb:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_02c0:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_02c5:  ldarg.0
    IL_02c6:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_02cb:  ldc.i4.0
    IL_02cc:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_02d1:  brtrue.s   IL_02e0

    IL_02d3:  ldarg.0
    IL_02d4:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_02d9:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_02de:  br.s       IL_030a

    IL_02e0:  ldloc.3
    IL_02e1:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_02e6:  ldloc.3
    IL_02e7:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_02ec:  ldc.i4.2
    IL_02ed:  div
    IL_02ee:  add
    IL_02ef:  conv.r4
    IL_02f0:  ldloc.3
    IL_02f1:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_02f6:  ldloc.3
    IL_02f7:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_02fc:  ldc.i4.2
    IL_02fd:  div
    IL_02fe:  add
    IL_02ff:  conv.r4
    IL_0300:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0305:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_030a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_030f:  ldarg.0
    IL_0310:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0315:  ldc.i4.1
    IL_0316:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_031b:  brtrue.s   IL_032a

    IL_031d:  ldarg.0
    IL_031e:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0323:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0328:  br.s       IL_0354

    IL_032a:  ldloc.3
    IL_032b:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_0330:  ldloc.3
    IL_0331:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0336:  ldc.i4.2
    IL_0337:  div
    IL_0338:  add
    IL_0339:  conv.r4
    IL_033a:  ldloc.3
    IL_033b:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0340:  ldloc.3
    IL_0341:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0346:  ldc.i4.2
    IL_0347:  div
    IL_0348:  add
    IL_0349:  conv.r4
    IL_034a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_034f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0354:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0359:  ldarg.0
    IL_035a:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_035f:  ldc.i4.1
    IL_0360:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_0365:  brtrue.s   IL_0374

    IL_0367:  ldarg.0
    IL_0368:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_036d:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_0372:  br.s       IL_039e

    IL_0374:  ldloc.3
    IL_0375:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_037a:  ldloc.3
    IL_037b:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0380:  ldc.i4.2
    IL_0381:  div
    IL_0382:  add
    IL_0383:  conv.r4
    IL_0384:  ldloc.3
    IL_0385:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_038a:  ldloc.3
    IL_038b:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0390:  ldc.i4.2
    IL_0391:  div
    IL_0392:  add
    IL_0393:  conv.r4
    IL_0394:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0399:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_039e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_03a3:  ldarg.0
    IL_03a4:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_03a9:  ldflda     bool Game.PlayerInput::ToggleSneak
    IL_03ae:  dup
    IL_03af:  ldind.u1
    IL_03b0:  ldc.i4.1
    IL_03b1:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_03b6:  or
    IL_03b7:  stind.i1
    IL_03b8:  ldarg.0
    IL_03b9:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_03be:  ldflda     bool Game.PlayerInput::ToggleMount
    IL_03c3:  dup
    IL_03c4:  ldind.u1
    IL_03c5:  ldc.i4.s   48
    IL_03c7:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_03cc:  or
    IL_03cd:  stind.i1
    IL_03ce:  ldarg.0
    IL_03cf:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_03d4:  ldflda     bool Game.PlayerInput::ToggleCreativeFly
    IL_03d9:  dup
    IL_03da:  ldind.u1
    IL_03db:  ldc.i4.s   36
    IL_03dd:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_03e2:  or
    IL_03e3:  stind.i1
    IL_03e4:  ldarg.0
    IL_03e5:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_03ea:  ldc.i4.2
    IL_03eb:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_03f0:  brtrue.s   IL_03ff

    IL_03f2:  ldarg.0
    IL_03f3:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_03f8:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::PickBlockType
    IL_03fd:  br.s       IL_0429

    IL_03ff:  ldloc.3
    IL_0400:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_0405:  ldloc.3
    IL_0406:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_040b:  ldc.i4.2
    IL_040c:  div
    IL_040d:  add
    IL_040e:  conv.r4
    IL_040f:  ldloc.3
    IL_0410:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0415:  ldloc.3
    IL_0416:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_041b:  ldc.i4.2
    IL_041c:  div
    IL_041d:  add
    IL_041e:  conv.r4
    IL_041f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0424:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0429:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::PickBlockType
    IL_042e:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> Game.DialogsManager::get_Dialogs()
    IL_0433:  stloc.0
    IL_0434:  ldloca.s   V_0
    IL_0436:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog>::get_Count()
    IL_043b:  brtrue     IL_060b

    IL_0440:  ldarg.0
    IL_0441:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0446:  ldflda     bool Game.PlayerInput::ToggleInventory
    IL_044b:  dup
    IL_044c:  ldind.u1
    IL_044d:  ldc.i4.s   35
    IL_044f:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0454:  or
    IL_0455:  stind.i1
    IL_0456:  ldarg.0
    IL_0457:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_045c:  ldflda     bool Game.PlayerInput::ToggleClothing
    IL_0461:  dup
    IL_0462:  ldind.u1
    IL_0463:  ldc.i4.s   33
    IL_0465:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_046a:  or
    IL_046b:  stind.i1
    IL_046c:  ldarg.0
    IL_046d:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0472:  ldflda     bool Game.PlayerInput::TakeScreenshot
    IL_0477:  dup
    IL_0478:  ldind.u1
    IL_0479:  ldc.i4.s   46
    IL_047b:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0480:  or
    IL_0481:  stind.i1
    IL_0482:  ldarg.0
    IL_0483:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0488:  ldflda     bool Game.PlayerInput::SwitchCameraMode
    IL_048d:  dup
    IL_048e:  ldind.u1
    IL_048f:  ldc.i4.s   52
    IL_0491:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0496:  or
    IL_0497:  stind.i1
    IL_0498:  ldarg.0
    IL_0499:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_049e:  ldflda     bool Game.PlayerInput::TimeOfDay
    IL_04a3:  dup
    IL_04a4:  ldind.u1
    IL_04a5:  ldc.i4.s   50
    IL_04a7:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_04ac:  or
    IL_04ad:  stind.i1
    IL_04ae:  ldarg.0
    IL_04af:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_04b4:  ldflda     bool Game.PlayerInput::Lighting
    IL_04b9:  dup
    IL_04ba:  ldind.u1
    IL_04bb:  ldc.i4.s   42
    IL_04bd:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_04c2:  or
    IL_04c3:  stind.i1
    IL_04c4:  ldarg.0
    IL_04c5:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_04ca:  ldflda     bool Game.PlayerInput::Drop
    IL_04cf:  dup
    IL_04d0:  ldind.u1
    IL_04d1:  ldc.i4.s   47
    IL_04d3:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_04d8:  or
    IL_04d9:  stind.i1
    IL_04da:  ldarg.0
    IL_04db:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_04e0:  ldflda     bool Game.PlayerInput::EditItem
    IL_04e5:  dup
    IL_04e6:  ldind.u1
    IL_04e7:  ldc.i4.s   37
    IL_04e9:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_04ee:  or
    IL_04ef:  stind.i1
    IL_04f0:  ldarg.0
    IL_04f1:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_04f6:  ldflda     bool Game.PlayerInput::KeyboardHelp
    IL_04fb:  dup
    IL_04fc:  ldind.u1
    IL_04fd:  ldc.i4.s   38
    IL_04ff:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0504:  or
    IL_0505:  stind.i1
    IL_0506:  ldc.i4.s   58
    IL_0508:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_050d:  brfalse.s  IL_0520

    IL_050f:  ldarg.0
    IL_0510:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0515:  ldc.i4.0
    IL_0516:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_051b:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_0520:  ldc.i4.s   59
    IL_0522:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0527:  brfalse.s  IL_053a

    IL_0529:  ldarg.0
    IL_052a:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_052f:  ldc.i4.1
    IL_0530:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0535:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_053a:  ldc.i4.s   60
    IL_053c:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0541:  brfalse.s  IL_0554

    IL_0543:  ldarg.0
    IL_0544:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0549:  ldc.i4.2
    IL_054a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_054f:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_0554:  ldc.i4.s   61
    IL_0556:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_055b:  brfalse.s  IL_056e

    IL_055d:  ldarg.0
    IL_055e:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0563:  ldc.i4.3
    IL_0564:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0569:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_056e:  ldc.i4.s   62
    IL_0570:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0575:  brfalse.s  IL_0588

    IL_0577:  ldarg.0
    IL_0578:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_057d:  ldc.i4.4
    IL_057e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0583:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_0588:  ldc.i4.s   63
    IL_058a:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_058f:  brfalse.s  IL_05a2

    IL_0591:  ldarg.0
    IL_0592:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0597:  ldc.i4.5
    IL_0598:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_059d:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_05a2:  ldc.i4.s   64
    IL_05a4:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_05a9:  brfalse.s  IL_05bc

    IL_05ab:  ldarg.0
    IL_05ac:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_05b1:  ldc.i4.6
    IL_05b2:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_05b7:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_05bc:  ldc.i4.s   65
    IL_05be:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_05c3:  brfalse.s  IL_05d6

    IL_05c5:  ldarg.0
    IL_05c6:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_05cb:  ldc.i4.7
    IL_05cc:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_05d1:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_05d6:  ldc.i4.s   66
    IL_05d8:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_05dd:  brfalse.s  IL_05f0

    IL_05df:  ldarg.0
    IL_05e0:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_05e5:  ldc.i4.8
    IL_05e6:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_05eb:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_05f0:  ldc.i4.s   57
    IL_05f2:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_05f7:  brfalse.s  IL_060b

    IL_05f9:  ldarg.0
    IL_05fa:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_05ff:  ldc.i4.s   9
    IL_0601:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0606:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.PlayerInput::SelectInventorySlot
    IL_060b:  ret
  } // end of method SubsystemInput::UpdateInputFromMouseAndKeyboard

  .method private hidebysig instance void 
          UpdateInputFromWidgets() cil managed
  {
    // 代码大小       1721 (0x6b9)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> V_7,
             valuetype Game.TouchInput V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             valuetype Game.TouchInput V_12,
             float32 V_13,
             float32 V_14,
             valuetype Game.TouchInput V_15,
             float32 V_16,
             float32 V_17)
    IL_0000:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_1
    IL_0008:  ldloc.0
    IL_0009:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_000e:  ldloc.0
    IL_000f:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0014:  ldc.i4.2
    IL_0015:  div
    IL_0016:  add
    IL_0017:  conv.r4
    IL_0018:  ldloc.0
    IL_0019:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_001e:  ldloc.0
    IL_001f:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0024:  ldc.i4.2
    IL_0025:  div
    IL_0026:  add
    IL_0027:  conv.r4
    IL_0028:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_002d:  ldc.r4     1.
    IL_0032:  ldc.r4     7.9999998e-002
    IL_0037:  ldarg.0
    IL_0038:  ldfld      float32 Game.SubsystemInput::m_approximateScreenDiagonal
    IL_003d:  ldc.r4     3.5999999
    IL_0042:  sub
    IL_0043:  mul
    IL_0044:  add
    IL_0045:  ldc.r4     1.
    IL_004a:  ldc.r4     1.5
    IL_004f:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0054:  stloc.2
    IL_0055:  ldc.r4     4.6000001e-004
    IL_005a:  ldloc.2
    IL_005b:  mul
    IL_005c:  stloc.3
    IL_005d:  ldc.r4     4.6000001e-004
    IL_0062:  ldloc.2
    IL_0063:  mul
    IL_0064:  stloc.s    V_4
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_006c:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_MoveWidget()
    IL_0071:  ldc.r4     52.
    IL_0076:  ldc.r4     8.
    IL_007b:  call       float32 Game.SettingsManager::get_MoveSensitivity()
    IL_0080:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0085:  callvirt   instance void Game.TouchInputWidget::set_Radius(float32)
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0090:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_LookWidget()
    IL_0095:  ldc.r4     52.
    IL_009a:  ldc.r4     8.
    IL_009f:  call       float32 Game.SettingsManager::get_LookSensitivity()
    IL_00a4:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00a9:  callvirt   instance void Game.TouchInputWidget::set_Radius(float32)
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class Game.SubsystemTime Game.SubsystemInput::m_subsystemTime
    IL_00b4:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00b9:  ldc.r4     0.0
    IL_00be:  ldc.r4     0.1
    IL_00c3:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00c8:  stloc.s    V_5
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_00d0:  callvirt   instance class Game.Widget Game.SubsystemGui::get_ModalPanelWidget()
    IL_00d5:  brtrue     IL_06b8

    IL_00da:  ldarg.0
    IL_00db:  ldfld      class Game.SubsystemTime Game.SubsystemInput::m_subsystemTime
    IL_00e0:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeFactor()
    IL_00e5:  ldc.r4     0.0
    IL_00ea:  ble.un     IL_06b8

    IL_00ef:  ldloc.s    V_5
    IL_00f1:  ldc.r4     0.0
    IL_00f6:  ble.un     IL_06b8

    IL_00fb:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0100:  ldc.r4     96.
    IL_0105:  mul
    IL_0106:  call       float32 Game.WidgetsManager::get_Scale()
    IL_010b:  ldc.r4     96.
    IL_0110:  mul
    IL_0111:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0116:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_011b:  stloc.s    V_6
    IL_011d:  ldarg.0
    IL_011e:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0123:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_ViewWidget()
    IL_0128:  brfalse    IL_038d

    IL_012d:  ldarg.0
    IL_012e:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0133:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_ViewWidget()
    IL_0138:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_Input()
    IL_013d:  stloc.s    V_7
    IL_013f:  ldloca.s   V_7
    IL_0141:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_HasValue()
    IL_0146:  brfalse    IL_038d

    IL_014b:  ldarg.0
    IL_014c:  ldc.i4.0
    IL_014d:  call       instance void Game.SubsystemInput::set_IsControlledByMouse(bool)
    IL_0152:  ldarg.0
    IL_0153:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0158:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_ViewWidget()
    IL_015d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_Input()
    IL_0162:  stloc.s    V_7
    IL_0164:  ldloca.s   V_7
    IL_0166:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_Value()
    IL_016b:  stloc.s    V_8
    IL_016d:  ldloc.s    V_8
    IL_016f:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_0174:  brtrue.s   IL_01d8

    IL_0176:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_017b:  ldc.i4.2
    IL_017c:  bne.un.s   IL_01a5

    IL_017e:  ldarg.0
    IL_017f:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0184:  ldloc.1
    IL_0185:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_018a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_018f:  ldarg.0
    IL_0190:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0195:  ldloc.1
    IL_0196:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_019b:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_01a0:  br         IL_0394

    IL_01a5:  ldarg.0
    IL_01a6:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_01ab:  ldloc.s    V_8
    IL_01ad:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_01b2:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01b7:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Interact
    IL_01bc:  ldarg.0
    IL_01bd:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_01c2:  ldloc.s    V_8
    IL_01c4:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_01c9:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01ce:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Hit
    IL_01d3:  br         IL_0394

    IL_01d8:  ldloc.s    V_8
    IL_01da:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_01df:  ldc.i4.1
    IL_01e0:  bne.un     IL_027a

    IL_01e5:  ldloc.s    V_8
    IL_01e7:  ldfld      int32 Game.TouchInput::DurationFrames
    IL_01ec:  ldc.i4.1
    IL_01ed:  ble        IL_027a

    IL_01f2:  ldloc.s    V_8
    IL_01f4:  ldfld      float32 Game.TouchInput::Duration
    IL_01f9:  ldc.r4     0.2
    IL_01fe:  ble.un.s   IL_027a

    IL_0200:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_0205:  ldc.i4.2
    IL_0206:  bne.un.s   IL_0239

    IL_0208:  ldarg.0
    IL_0209:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_020e:  ldloc.1
    IL_020f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0214:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0219:  ldarg.0
    IL_021a:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_021f:  ldloc.s    V_8
    IL_0221:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_0226:  ldloc.s    V_6
    IL_0228:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_022d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0232:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0237:  br.s       IL_026e

    IL_0239:  ldarg.0
    IL_023a:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_023f:  ldloc.s    V_8
    IL_0241:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_0246:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_024b:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0250:  ldarg.0
    IL_0251:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0256:  ldloc.s    V_8
    IL_0258:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_025d:  ldloc.s    V_6
    IL_025f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0264:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0269:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_026e:  ldarg.0
    IL_026f:  ldc.i4.1
    IL_0270:  stfld      bool Game.SubsystemInput::m_isViewHoldStarted
    IL_0275:  br         IL_0394

    IL_027a:  ldloc.s    V_8
    IL_027c:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_0281:  ldc.i4.2
    IL_0282:  bne.un     IL_0394

    IL_0287:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_028c:  ldc.i4.1
    IL_028d:  beq.s      IL_0297

    IL_028f:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_0294:  ldc.i4.2
    IL_0295:  bne.un.s   IL_0315

    IL_0297:  ldc.r4     0.2
    IL_029c:  ldc.r4     1.8
    IL_02a1:  call       float32 Game.SettingsManager::get_LookSensitivity()
    IL_02a6:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_02ab:  dup
    IL_02ac:  ldloc.3
    IL_02ad:  mul
    IL_02ae:  ldloc.s    V_8
    IL_02b0:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
    IL_02b5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02ba:  ldc.r4     1.25
    IL_02bf:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_02c4:  mul
    IL_02c5:  ldloc.s    V_5
    IL_02c7:  div
    IL_02c8:  stloc.s    V_9
    IL_02ca:  ldloc.3
    IL_02cb:  neg
    IL_02cc:  mul
    IL_02cd:  ldloc.s    V_8
    IL_02cf:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
    IL_02d4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02d9:  ldc.r4     1.25
    IL_02de:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_02e3:  mul
    IL_02e4:  ldloc.s    V_5
    IL_02e6:  div
    IL_02e7:  stloc.s    V_10
    IL_02e9:  ldarg.0
    IL_02ea:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_02ef:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_02f4:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_02f9:  dup
    IL_02fa:  ldind.r4
    IL_02fb:  ldloc.s    V_9
    IL_02fd:  add
    IL_02fe:  stind.r4
    IL_02ff:  ldarg.0
    IL_0300:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0305:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_030a:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_030f:  dup
    IL_0310:  ldind.r4
    IL_0311:  ldloc.s    V_10
    IL_0313:  add
    IL_0314:  stind.r4
    IL_0315:  ldarg.0
    IL_0316:  ldfld      bool Game.SubsystemInput::m_isViewHoldStarted
    IL_031b:  brfalse.s  IL_0394

    IL_031d:  call       valuetype Game.LookControlMode Game.SettingsManager::get_LookControlMode()
    IL_0322:  ldc.i4.2
    IL_0323:  bne.un.s   IL_0356

    IL_0325:  ldarg.0
    IL_0326:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_032b:  ldloc.1
    IL_032c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0331:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_0336:  ldarg.0
    IL_0337:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_033c:  ldloc.s    V_8
    IL_033e:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_0343:  ldloc.s    V_6
    IL_0345:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_034a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_034f:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_0354:  br.s       IL_0394

    IL_0356:  ldarg.0
    IL_0357:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_035c:  ldloc.s    V_8
    IL_035e:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_0363:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0368:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Dig
    IL_036d:  ldarg.0
    IL_036e:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0373:  ldloc.s    V_8
    IL_0375:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
    IL_037a:  ldloc.s    V_6
    IL_037c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0381:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0386:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerInput::Aim
    IL_038b:  br.s       IL_0394

    IL_038d:  ldarg.0
    IL_038e:  ldc.i4.0
    IL_038f:  stfld      bool Game.SubsystemInput::m_isViewHoldStarted
    IL_0394:  ldarg.0
    IL_0395:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_039a:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_MoveWidget()
    IL_039f:  brfalse    IL_050b

    IL_03a4:  ldarg.0
    IL_03a5:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_03aa:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_MoveWidget()
    IL_03af:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_Input()
    IL_03b4:  stloc.s    V_7
    IL_03b6:  ldloca.s   V_7
    IL_03b8:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_HasValue()
    IL_03bd:  brfalse    IL_050b

    IL_03c2:  ldarg.0
    IL_03c3:  ldc.i4.0
    IL_03c4:  call       instance void Game.SubsystemInput::set_IsControlledByMouse(bool)
    IL_03c9:  ldarg.0
    IL_03ca:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_03cf:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_MoveWidget()
    IL_03d4:  callvirt   instance float32 Game.TouchInputWidget::get_Radius()
    IL_03d9:  stloc.s    V_11
    IL_03db:  ldarg.0
    IL_03dc:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_03e1:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_MoveWidget()
    IL_03e6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_Input()
    IL_03eb:  stloc.s    V_7
    IL_03ed:  ldloca.s   V_7
    IL_03ef:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_Value()
    IL_03f4:  stloc.s    V_12
    IL_03f6:  ldloc.s    V_12
    IL_03f8:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_03fd:  brtrue.s   IL_0410

    IL_03ff:  ldarg.0
    IL_0400:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0405:  ldc.i4.1
    IL_0406:  stfld      bool Game.PlayerInput::Jump
    IL_040b:  br         IL_050b

    IL_0410:  ldloc.s    V_12
    IL_0412:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_0417:  ldc.i4.2
    IL_0418:  beq.s      IL_0427

    IL_041a:  ldloc.s    V_12
    IL_041c:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_0421:  ldc.i4.1
    IL_0422:  bne.un     IL_050b

    IL_0427:  ldc.r4     0.2
    IL_042c:  ldc.r4     1.8
    IL_0431:  call       float32 Game.SettingsManager::get_MoveSensitivity()
    IL_0436:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_043b:  dup
    IL_043c:  ldc.r4     2.0000001e-003
    IL_0441:  mul
    IL_0442:  ldloc.s    V_12
    IL_0444:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
    IL_0449:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_044e:  ldc.r4     1.35
    IL_0453:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_0458:  mul
    IL_0459:  ldloc.s    V_5
    IL_045b:  div
    IL_045c:  stloc.s    V_13
    IL_045e:  ldc.r4     -2.0000001e-003
    IL_0463:  mul
    IL_0464:  ldloc.s    V_12
    IL_0466:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
    IL_046b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0470:  ldc.r4     1.35
    IL_0475:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_047a:  mul
    IL_047b:  ldloc.s    V_5
    IL_047d:  div
    IL_047e:  stloc.s    V_14
    IL_0480:  ldarg.0
    IL_0481:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0486:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_048b:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0490:  dup
    IL_0491:  ldind.r4
    IL_0492:  ldloc.s    V_13
    IL_0494:  add
    IL_0495:  stind.r4
    IL_0496:  ldarg.0
    IL_0497:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_049c:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_04a1:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_04a6:  dup
    IL_04a7:  ldind.r4
    IL_04a8:  ldloc.s    V_14
    IL_04aa:  add
    IL_04ab:  stind.r4
    IL_04ac:  ldarg.0
    IL_04ad:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_04b2:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_04b7:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_04bc:  dup
    IL_04bd:  ldind.r4
    IL_04be:  ldloc.s    V_12
    IL_04c0:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
    IL_04c5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_04ca:  ldc.r4     0.2
    IL_04cf:  ldloc.s    V_11
    IL_04d1:  mul
    IL_04d2:  ldloc.s    V_11
    IL_04d4:  call       float32 Game.SubsystemInput::ProcessInputValue(float32,
                                                                        float32,
                                                                        float32)
    IL_04d9:  add
    IL_04da:  stind.r4
    IL_04db:  ldarg.0
    IL_04dc:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_04e1:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_04e6:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_04eb:  dup
    IL_04ec:  ldind.r4
    IL_04ed:  ldloc.s    V_12
    IL_04ef:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
    IL_04f4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_04f9:  neg
    IL_04fa:  ldc.r4     0.2
    IL_04ff:  ldloc.s    V_11
    IL_0501:  mul
    IL_0502:  ldloc.s    V_11
    IL_0504:  call       float32 Game.SubsystemInput::ProcessInputValue(float32,
                                                                        float32,
                                                                        float32)
    IL_0509:  add
    IL_050a:  stind.r4
    IL_050b:  ldarg.0
    IL_050c:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0511:  callvirt   instance class Game.MoveRoseWidget Game.SubsystemGui::get_MoveRoseWidget()
    IL_0516:  brfalse    IL_05c5

    IL_051b:  ldarg.0
    IL_051c:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0521:  callvirt   instance class Game.MoveRoseWidget Game.SubsystemGui::get_MoveRoseWidget()
    IL_0526:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::get_Direction()
    IL_052b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0530:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
    IL_0535:  brtrue.s   IL_0549

    IL_0537:  ldarg.0
    IL_0538:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_053d:  callvirt   instance class Game.MoveRoseWidget Game.SubsystemGui::get_MoveRoseWidget()
    IL_0542:  callvirt   instance bool Game.MoveRoseWidget::get_Jump()
    IL_0547:  brfalse.s  IL_0550

    IL_0549:  ldarg.0
    IL_054a:  ldc.i4.0
    IL_054b:  call       instance void Game.SubsystemInput::set_IsControlledByMouse(bool)
    IL_0550:  ldarg.0
    IL_0551:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0556:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_055b:  dup
    IL_055c:  ldobj      [Engine]Engine.Vector3
    IL_0561:  ldarg.0
    IL_0562:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0567:  callvirt   instance class Game.MoveRoseWidget Game.SubsystemGui::get_MoveRoseWidget()
    IL_056c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::get_Direction()
    IL_0571:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0576:  stobj      [Engine]Engine.Vector3
    IL_057b:  ldarg.0
    IL_057c:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0581:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerInput::SneakMove
    IL_0586:  dup
    IL_0587:  ldobj      [Engine]Engine.Vector3
    IL_058c:  ldarg.0
    IL_058d:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0592:  callvirt   instance class Game.MoveRoseWidget Game.SubsystemGui::get_MoveRoseWidget()
    IL_0597:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::get_Direction()
    IL_059c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_05a1:  stobj      [Engine]Engine.Vector3
    IL_05a6:  ldarg.0
    IL_05a7:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_05ac:  ldflda     bool Game.PlayerInput::Jump
    IL_05b1:  dup
    IL_05b2:  ldind.u1
    IL_05b3:  ldarg.0
    IL_05b4:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_05b9:  callvirt   instance class Game.MoveRoseWidget Game.SubsystemGui::get_MoveRoseWidget()
    IL_05be:  callvirt   instance bool Game.MoveRoseWidget::get_Jump()
    IL_05c3:  or
    IL_05c4:  stind.i1
    IL_05c5:  ldarg.0
    IL_05c6:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_05cb:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_LookWidget()
    IL_05d0:  brfalse    IL_06b8

    IL_05d5:  ldarg.0
    IL_05d6:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_05db:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_LookWidget()
    IL_05e0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_Input()
    IL_05e5:  stloc.s    V_7
    IL_05e7:  ldloca.s   V_7
    IL_05e9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_HasValue()
    IL_05ee:  brfalse    IL_06b8

    IL_05f3:  ldarg.0
    IL_05f4:  ldc.i4.0
    IL_05f5:  call       instance void Game.SubsystemInput::set_IsControlledByMouse(bool)
    IL_05fa:  ldarg.0
    IL_05fb:  ldfld      class Game.SubsystemGui Game.SubsystemInput::m_subsystemGui
    IL_0600:  callvirt   instance class Game.TouchInputWidget Game.SubsystemGui::get_LookWidget()
    IL_0605:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_Input()
    IL_060a:  stloc.s    V_7
    IL_060c:  ldloca.s   V_7
    IL_060e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::get_Value()
    IL_0613:  stloc.s    V_15
    IL_0615:  ldloc.s    V_15
    IL_0617:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_061c:  brtrue.s   IL_062b

    IL_061e:  ldarg.0
    IL_061f:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0624:  ldc.i4.1
    IL_0625:  stfld      bool Game.PlayerInput::Jump
    IL_062a:  ret

    IL_062b:  ldloc.s    V_15
    IL_062d:  ldfld      valuetype Game.TouchInputType Game.TouchInput::InputType
    IL_0632:  ldc.i4.2
    IL_0633:  bne.un     IL_06b8

    IL_0638:  ldc.r4     0.2
    IL_063d:  ldc.r4     1.8
    IL_0642:  call       float32 Game.SettingsManager::get_LookSensitivity()
    IL_0647:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_064c:  dup
    IL_064d:  ldloc.s    V_4
    IL_064f:  mul
    IL_0650:  ldloc.s    V_15
    IL_0652:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
    IL_0657:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_065c:  ldc.r4     1.25
    IL_0661:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_0666:  mul
    IL_0667:  ldloc.s    V_5
    IL_0669:  div
    IL_066a:  stloc.s    V_16
    IL_066c:  ldloc.s    V_4
    IL_066e:  neg
    IL_066f:  mul
    IL_0670:  ldloc.s    V_15
    IL_0672:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
    IL_0677:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_067c:  ldc.r4     1.25
    IL_0681:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_0686:  mul
    IL_0687:  ldloc.s    V_5
    IL_0689:  div
    IL_068a:  stloc.s    V_17
    IL_068c:  ldarg.0
    IL_068d:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_0692:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_0697:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_069c:  dup
    IL_069d:  ldind.r4
    IL_069e:  ldloc.s    V_16
    IL_06a0:  add
    IL_06a1:  stind.r4
    IL_06a2:  ldarg.0
    IL_06a3:  ldflda     valuetype Game.PlayerInput Game.SubsystemInput::m_playerInput
    IL_06a8:  ldflda     valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_06ad:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_06b2:  dup
    IL_06b3:  ldind.r4
    IL_06b4:  ldloc.s    V_17
    IL_06b6:  add
    IL_06b7:  stind.r4
    IL_06b8:  ret
  } // end of method SubsystemInput::UpdateInputFromWidgets

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0006:  ret
  } // end of method SubsystemInput::.ctor

  .property instance valuetype Game.PlayerInput
          PlayerInput()
  {
    .get instance valuetype Game.PlayerInput Game.SubsystemInput::get_PlayerInput()
  } // end of property SubsystemInput::PlayerInput
  .property instance bool IsControlledByMouse()
  {
    .get instance bool Game.SubsystemInput::get_IsControlledByMouse()
    .set instance void Game.SubsystemInput::set_IsControlledByMouse(bool)
  } // end of property SubsystemInput::IsControlledByMouse
} // end of class Game.SubsystemInput