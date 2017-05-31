.class public abstract auto ansi sealed Game.InputManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.InputManager/'<>c' '<>9'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.InputManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.InputManager/'<>c' Game.InputManager/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<.cctor>b__19_0'(valuetype [Engine]Engine.Input.Key key) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>::.ctor(!0)
      IL_0006:  stsfld     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.InputManager::m_queuedKeyPress
      IL_000b:  ret
    } // end of method '<>c'::'<.cctor>b__19_0'

    .method assembly hidebysig instance void 
            '<.cctor>b__19_1'(char ch) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<char>::.ctor(!0)
      IL_0006:  stsfld     valuetype [System.Runtime]System.Nullable`1<char> Game.InputManager::m_queuedCharPress
      IL_000b:  ret
    } // end of method '<>c'::'<.cctor>b__19_1'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass36_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 maxLength
    .field public class [System.Runtime]System.Action`1<string> 'handler'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass36_0'::.ctor

    .method assembly hidebysig instance void 
            '<EnterText>b__0'(string s) cil managed
    {
      // 代码大小       42 (0x2a)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      int32 Game.InputManager/'<>c__DisplayClass36_0'::maxLength
      IL_000c:  ble.s      IL_001d

      IL_000e:  ldarg.1
      IL_000f:  ldc.i4.0
      IL_0010:  ldarg.0
      IL_0011:  ldfld      int32 Game.InputManager/'<>c__DisplayClass36_0'::maxLength
      IL_0016:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                    int32)
      IL_001b:  starg.s    s
      IL_001d:  ldarg.0
      IL_001e:  ldfld      class [System.Runtime]System.Action`1<string> Game.InputManager/'<>c__DisplayClass36_0'::'handler'
      IL_0023:  ldarg.1
      IL_0024:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
      IL_0029:  ret
    } // end of method '<>c__DisplayClass36_0'::'<EnterText>b__0'

    .method assembly hidebysig instance void 
            '<EnterText>b__1'() cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<string> Game.InputManager/'<>c__DisplayClass36_0'::'handler'
      IL_0006:  ldnull
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass36_0'::'<EnterText>b__1'

  } // end of class '<>c__DisplayClass36_0'

  .field private static valuetype Game.InputState m_inputState
  .field private static bool m_lastLeftMouseButtonDown
  .field private static valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_mouseDownPoint
  .field private static float64 m_mouseDragTime
  .field private static bool m_mouseDragInProgress
  .field private static bool m_mouseHoldInProgress
  .field private static valuetype [System.Runtime]System.Nullable`1<int32> m_touchId
  .field private static valuetype [Engine]Engine.Vector2 m_touchStartPoint
  .field private static float64 m_touchStartTime
  .field private static bool m_touchDragInProgress
  .field private static bool m_touchHoldInProgress
  .field private static bool m_isCleared
  .field private static valuetype [System.Runtime]System.Nullable`1<char> m_queuedCharPress
  .field private static valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> m_queuedKeyPress
  .field private static bool m_lastPadAButtonDown
  .field private static valuetype [Engine]Engine.Vector2 m_padPosition
  .field private static valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_padDownPoint
  .field private static float64 m_padDragTime
  .field private static bool m_padDragInProgress
  .field private static bool '<IsPadCursorVisible>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  call       void Game.InputManager::set_IsPadCursorVisible(bool)
    IL_0006:  ldsfld     class Game.InputManager/'<>c' Game.InputManager/'<>c'::'<>9'
    IL_000b:  ldftn      instance void Game.InputManager/'<>c'::'<.cctor>b__19_0'(valuetype [Engine]Engine.Input.Key)
    IL_0011:  newobj     instance void class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key>::.ctor(object,
                                                                                                                        native int)
    IL_0016:  call       void [Engine]Engine.Input.Keyboard::add_KeyDown(class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key>)
    IL_001b:  ldsfld     class Game.InputManager/'<>c' Game.InputManager/'<>c'::'<>9'
    IL_0020:  ldftn      instance void Game.InputManager/'<>c'::'<.cctor>b__19_1'(char)
    IL_0026:  newobj     instance void class [System.Runtime]System.Action`1<char>::.ctor(object,
                                                                                          native int)
    IL_002b:  call       void [Engine]Engine.Input.Keyboard::add_CharacterEntered(class [System.Runtime]System.Action`1<char>)
    IL_0030:  ret
  } // end of method InputManager::.cctor

  .method public hidebysig specialname static 
          valuetype Game.InputState  get_InputState() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.InputState Game.InputManager::m_inputState
    IL_0005:  ret
  } // end of method InputManager::get_InputState

  .method public hidebysig static bool  IsKeyDown(valuetype [Engine]Engine.Input.Key key) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.InputManager::m_isCleared
    IL_0005:  brtrue.s   IL_000e

    IL_0007:  ldarg.0
    IL_0008:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_000d:  ret

    IL_000e:  ldc.i4.0
    IL_000f:  ret
  } // end of method InputManager::IsKeyDown

  .method public hidebysig static bool  IsKeyUp(valuetype [Engine]Engine.Input.Key key) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0006:  ldc.i4.0
    IL_0007:  ceq
    IL_0009:  ret
  } // end of method InputManager::IsKeyUp

  .method public hidebysig static bool  IsKeyDownOnce(valuetype [Engine]Engine.Input.Key key) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.InputManager::m_isCleared
    IL_0005:  brtrue.s   IL_000e

    IL_0007:  ldarg.0
    IL_0008:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_000d:  ret

    IL_000e:  ldc.i4.0
    IL_000f:  ret
  } // end of method InputManager::IsKeyDownOnce

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> 
          get_TouchLocations() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> [Engine]Engine.Input.Touch::get_TouchLocations()
    IL_0005:  ret
  } // end of method InputManager::get_TouchLocations

  .method public hidebysig specialname static 
          bool  get_IsPadCursorVisible() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.InputManager::'<IsPadCursorVisible>k__BackingField'
    IL_0005:  ret
  } // end of method InputManager::get_IsPadCursorVisible

  .method public hidebysig specialname static 
          void  set_IsPadCursorVisible(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.InputManager::'<IsPadCursorVisible>k__BackingField'
    IL_0006:  ret
  } // end of method InputManager::set_IsPadCursorVisible

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.Vector2 
          get_PadCursorPosition() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector2 Game.InputManager::m_padPosition
    IL_0005:  ret
  } // end of method InputManager::get_PadCursorPosition

  .method public hidebysig specialname static 
          void  set_PadCursorPosition(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  5
    IL_0000:  ldarga.s   'value'
    IL_0002:  ldarg.0
    IL_0003:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0008:  ldc.r4     0.0
    IL_000d:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0012:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0017:  ldc.i4.1
    IL_0018:  sub
    IL_0019:  conv.r4
    IL_001a:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_001f:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0024:  ldarga.s   'value'
    IL_0026:  ldarg.0
    IL_0027:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002c:  ldc.r4     0.0
    IL_0031:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0036:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_003b:  ldc.i4.1
    IL_003c:  sub
    IL_003d:  conv.r4
    IL_003e:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0043:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0048:  ldarg.0
    IL_0049:  stsfld     valuetype [Engine]Engine.Vector2 Game.InputManager::m_padPosition
    IL_004e:  ret
  } // end of method InputManager::set_PadCursorPosition

  .method public hidebysig static void  Clear() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_mouseDownPoint
    IL_0005:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_000b:  ldsflda    valuetype [System.Runtime]System.Nullable`1<int32> Game.InputManager::m_touchId
    IL_0010:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0016:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_001b:  initobj    Game.InputState
    IL_0021:  ldc.i4.1
    IL_0022:  stsfld     bool Game.InputManager::m_isCleared
    IL_0027:  ret
  } // end of method InputManager::Clear

  .method public hidebysig static void  Update() cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  stsfld     bool Game.InputManager::m_isCleared
    IL_0006:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_000b:  initobj    Game.InputState
    IL_0011:  call       bool [Engine]Engine.Window::get_IsActive()
    IL_0016:  brtrue.s   IL_0019

    IL_0018:  ret

    IL_0019:  call       void Game.InputManager::UpdateInputFromMouseAndKeyboard()
    IL_001e:  call       void Game.InputManager::UpdateInputFromTouchPanel()
    IL_0023:  ret
  } // end of method InputManager::Update

  .method public hidebysig static void  EnterText(string title,
                                                  string text,
                                                  int32 maxLength,
                                                  class [System.Runtime]System.Action`1<string> 'handler') cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  7
    .locals init (class Game.InputManager/'<>c__DisplayClass36_0' V_0)
    IL_0000:  newobj     instance void Game.InputManager/'<>c__DisplayClass36_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      int32 Game.InputManager/'<>c__DisplayClass36_0'::maxLength
    IL_000d:  ldloc.0
    IL_000e:  ldarg.3
    IL_000f:  stfld      class [System.Runtime]System.Action`1<string> Game.InputManager/'<>c__DisplayClass36_0'::'handler'
    IL_0014:  ldarg.0
    IL_0015:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001a:  ldarg.1
    IL_001b:  ldc.i4.0
    IL_001c:  ldloc.0
    IL_001d:  ldftn      instance void Game.InputManager/'<>c__DisplayClass36_0'::'<EnterText>b__0'(string)
    IL_0023:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0028:  ldloc.0
    IL_0029:  ldftn      instance void Game.InputManager/'<>c__DisplayClass36_0'::'<EnterText>b__1'()
    IL_002f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0034:  call       void [Engine]Engine.Input.Keyboard::ShowKeyboard(string,
                                                                          string,
                                                                          string,
                                                                          bool,
                                                                          class [System.Runtime]System.Action`1<string>,
                                                                          class [System.Runtime]System.Action)
    IL_0039:  ret
  } // end of method InputManager::EnterText

  .method private hidebysig static void  UpdateInputFromGamepad() cil managed
  {
    // 代码大小       664 (0x298)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Point2 V_0,
             valuetype [Engine]Engine.Vector2 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldc.i4.0
    IL_000a:  ldc.i4.s   9
    IL_000c:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_0011:  brfalse.s  IL_001e

    IL_0013:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0018:  ldc.i4.1
    IL_0019:  stfld      bool Game.InputState::Down
    IL_001e:  ldc.i4.0
    IL_001f:  ldc.i4.s   11
    IL_0021:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_0026:  brfalse.s  IL_0033

    IL_0028:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_002d:  ldc.i4.1
    IL_002e:  stfld      bool Game.InputState::Up
    IL_0033:  ldc.i4.0
    IL_0034:  ldc.i4.s   11
    IL_0036:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_003b:  brfalse.s  IL_0048

    IL_003d:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0042:  ldc.i4.1
    IL_0043:  stfld      bool Game.InputState::Right
    IL_0048:  ldc.i4.0
    IL_0049:  ldc.i4.s   11
    IL_004b:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_0050:  brfalse.s  IL_005d

    IL_0052:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0057:  ldc.i4.1
    IL_0058:  stfld      bool Game.InputState::Down
    IL_005d:  ldc.i4.0
    IL_005e:  ldc.i4.0
    IL_005f:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_0064:  brfalse.s  IL_0071

    IL_0066:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_006b:  ldc.i4.1
    IL_006c:  stfld      bool Game.InputState::A
    IL_0071:  ldc.i4.0
    IL_0072:  ldc.i4.1
    IL_0073:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_0078:  brfalse.s  IL_0090

    IL_007a:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_007f:  ldc.i4.1
    IL_0080:  stfld      bool Game.InputState::B
    IL_0085:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_008a:  ldc.i4.1
    IL_008b:  stfld      bool Game.InputState::Back
    IL_0090:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0095:  stloc.0
    IL_0096:  ldloca.s   V_1
    IL_0098:  ldc.r4     1.5
    IL_009d:  ldloc.0
    IL_009e:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00a3:  conv.r4
    IL_00a4:  mul
    IL_00a5:  ldc.i4.0
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldc.r4     0.2
    IL_00ac:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.GamePad::GetStickPosition(int32,
                                                                                                         valuetype [Engine]Engine.Input.GamePadStick,
                                                                                                         float32)
    IL_00b1:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b6:  ldc.r4     1.5
    IL_00bb:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_00c0:  mul
    IL_00c1:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00c6:  mul
    IL_00c7:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00cc:  ldloca.s   V_1
    IL_00ce:  ldc.r4     -1.5
    IL_00d3:  ldloc.0
    IL_00d4:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00d9:  conv.r4
    IL_00da:  mul
    IL_00db:  ldc.i4.0
    IL_00dc:  ldc.i4.0
    IL_00dd:  ldc.r4     0.2
    IL_00e2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.GamePad::GetStickPosition(int32,
                                                                                                         valuetype [Engine]Engine.Input.GamePadStick,
                                                                                                         float32)
    IL_00e7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ec:  ldc.r4     1.5
    IL_00f1:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_00f6:  mul
    IL_00f7:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00fc:  mul
    IL_00fd:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0102:  call       valuetype [Engine]Engine.Vector2 Game.InputManager::get_PadCursorPosition()
    IL_0107:  ldloc.1
    IL_0108:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_010d:  call       void Game.InputManager::set_PadCursorPosition(valuetype [Engine]Engine.Vector2)
    IL_0112:  ldc.i4.0
    IL_0113:  ldc.i4.0
    IL_0114:  call       bool [Engine]Engine.Input.GamePad::IsButtonDown(int32,
                                                                         valuetype [Engine]Engine.Input.GamePadButton)
    IL_0119:  brfalse.s  IL_012f

    IL_011b:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0120:  ldsfld     valuetype [Engine]Engine.Vector2 Game.InputManager::m_padPosition
    IL_0125:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_012a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_012f:  ldc.i4.0
    IL_0130:  ldc.i4.0
    IL_0131:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_0136:  brfalse.s  IL_0165

    IL_0138:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_013d:  ldsfld     valuetype [Engine]Engine.Vector2 Game.InputManager::m_padPosition
    IL_0142:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0147:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_014c:  ldsfld     valuetype [Engine]Engine.Vector2 Game.InputManager::m_padPosition
    IL_0151:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0156:  stsfld     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_padDownPoint
    IL_015b:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0160:  stsfld     float64 Game.InputManager::m_padDragTime
    IL_0165:  ldc.i4.0
    IL_0166:  ldc.i4.0
    IL_0167:  call       bool [Engine]Engine.Input.GamePad::IsButtonDown(int32,
                                                                         valuetype [Engine]Engine.Input.GamePadButton)
    IL_016c:  brtrue.s   IL_019f

    IL_016e:  ldsfld     bool Game.InputManager::m_lastPadAButtonDown
    IL_0173:  brfalse.s  IL_019f

    IL_0175:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_017a:  ldsfld     float64 Game.InputManager::m_padDragTime
    IL_017f:  sub
    IL_0180:  ldc.r8     0.40000000596046448
    IL_0189:  bge.un.s   IL_019f

    IL_018b:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0190:  call       valuetype [Engine]Engine.Vector2 Game.InputManager::get_PadCursorPosition()
    IL_0195:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_019a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_019f:  ldc.i4.0
    IL_01a0:  ldc.i4.0
    IL_01a1:  call       bool [Engine]Engine.Input.GamePad::IsButtonDown(int32,
                                                                         valuetype [Engine]Engine.Input.GamePadButton)
    IL_01a6:  brtrue.s   IL_01b9

    IL_01a8:  ldc.i4.0
    IL_01a9:  stsfld     bool Game.InputManager::m_padDragInProgress
    IL_01ae:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_padDownPoint
    IL_01b3:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_01b9:  ldsfld     bool Game.InputManager::m_padDragInProgress
    IL_01be:  brfalse.s  IL_01d9

    IL_01c0:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_01c5:  call       valuetype [Engine]Engine.Vector2 Game.InputManager::get_PadCursorPosition()
    IL_01ca:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01cf:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Drag
    IL_01d4:  br         IL_0285

    IL_01d9:  ldc.i4.0
    IL_01da:  ldc.i4.0
    IL_01db:  call       bool [Engine]Engine.Input.GamePad::IsButtonDown(int32,
                                                                         valuetype [Engine]Engine.Input.GamePadButton)
    IL_01e0:  brfalse    IL_0285

    IL_01e5:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_padDownPoint
    IL_01ea:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_01ef:  brfalse    IL_0285

    IL_01f4:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_padDownPoint
    IL_01f9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_01fe:  call       valuetype [Engine]Engine.Vector2 Game.InputManager::get_PadCursorPosition()
    IL_0203:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0208:  ldc.r4     4.
    IL_020d:  ble.un.s   IL_023b

    IL_020f:  ldc.i4.1
    IL_0210:  stsfld     bool Game.InputManager::m_padDragInProgress
    IL_0215:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_021a:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_padDownPoint
    IL_021f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0224:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0229:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Drag
    IL_022e:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0233:  ldc.i4.0
    IL_0234:  stfld      valuetype Game.DragMode Game.InputState::DragMode
    IL_0239:  br.s       IL_0285

    IL_023b:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0240:  ldsfld     float64 Game.InputManager::m_padDragTime
    IL_0245:  sub
    IL_0246:  ldc.r8     0.40000000596046448
    IL_024f:  ble.un.s   IL_0285

    IL_0251:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0256:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_padDownPoint
    IL_025b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0260:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0265:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Hold
    IL_026a:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_026f:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0274:  ldsfld     float64 Game.InputManager::m_padDragTime
    IL_0279:  sub
    IL_027a:  conv.r4
    IL_027b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0280:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.InputState::HoldTime
    IL_0285:  ldc.i4.0
    IL_0286:  ldc.i4.0
    IL_0287:  call       bool [Engine]Engine.Input.GamePad::IsButtonDown(int32,
                                                                         valuetype [Engine]Engine.Input.GamePadButton)
    IL_028c:  stsfld     bool Game.InputManager::m_lastPadAButtonDown
    IL_0291:  call       bool Game.InputManager::get_IsPadCursorVisible()
    IL_0296:  pop
    IL_0297:  ret
  } // end of method InputManager::UpdateInputFromGamepad

  .method private hidebysig static void  UpdateInputFromMouseAndKeyboard() cil managed
  {
    // 代码大小       616 (0x268)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> V_1)
    IL_0000:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> [Engine]Engine.Input.Mouse::get_MousePosition()
    IL_0005:  stloc.1
    IL_0006:  ldloca.s   V_1
    IL_0008:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_HasValue()
    IL_000d:  brtrue.s   IL_0016

    IL_000f:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0014:  br.s       IL_0041

    IL_0016:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> [Engine]Engine.Input.Mouse::get_MousePosition()
    IL_001b:  stloc.1
    IL_001c:  ldloca.s   V_1
    IL_001e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_Value()
    IL_0023:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0028:  conv.r4
    IL_0029:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> [Engine]Engine.Input.Mouse::get_MousePosition()
    IL_002e:  stloc.1
    IL_002f:  ldloca.s   V_1
    IL_0031:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_Value()
    IL_0036:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_003b:  conv.r4
    IL_003c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0041:  stloc.0
    IL_0042:  ldc.i4.0
    IL_0043:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_0048:  brtrue.s   IL_0052

    IL_004a:  ldc.i4.1
    IL_004b:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_0050:  brfalse.s  IL_0062

    IL_0052:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0057:  ldloc.0
    IL_0058:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_005d:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_0062:  ldc.i4.0
    IL_0063:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_0068:  brtrue.s   IL_0072

    IL_006a:  ldc.i4.1
    IL_006b:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_0070:  brfalse.s  IL_0097

    IL_0072:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0077:  ldloc.0
    IL_0078:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_007d:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0082:  ldloc.0
    IL_0083:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0088:  stsfld     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_mouseDownPoint
    IL_008d:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0092:  stsfld     float64 Game.InputManager::m_mouseDragTime
    IL_0097:  ldsfld     bool Game.InputManager::m_mouseDragInProgress
    IL_009c:  brtrue.s   IL_00d7

    IL_009e:  ldsfld     bool Game.InputManager::m_mouseHoldInProgress
    IL_00a3:  brtrue.s   IL_00d7

    IL_00a5:  ldc.i4.0
    IL_00a6:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_00ab:  brtrue.s   IL_00d7

    IL_00ad:  ldsfld     bool Game.InputManager::m_lastLeftMouseButtonDown
    IL_00b2:  brfalse.s  IL_00d7

    IL_00b4:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00b9:  ldsfld     float64 Game.InputManager::m_mouseDragTime
    IL_00be:  sub
    IL_00bf:  call       float32 Game.SettingsManager::get_MaximumTapDuration()
    IL_00c4:  conv.r8
    IL_00c5:  bge.un.s   IL_00d7

    IL_00c7:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_00cc:  ldloc.0
    IL_00cd:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00d2:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_00d7:  ldc.i4.0
    IL_00d8:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_00dd:  brtrue.s   IL_00fe

    IL_00df:  ldc.i4.1
    IL_00e0:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_00e5:  brtrue.s   IL_00fe

    IL_00e7:  ldc.i4.0
    IL_00e8:  stsfld     bool Game.InputManager::m_mouseDragInProgress
    IL_00ed:  ldc.i4.0
    IL_00ee:  stsfld     bool Game.InputManager::m_mouseHoldInProgress
    IL_00f3:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_mouseDownPoint
    IL_00f8:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_00fe:  call       int32 [Engine]Engine.Input.Mouse::get_MouseWheelMovement()
    IL_0103:  brfalse.s  IL_0126

    IL_0105:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_010a:  ldloc.0
    IL_010b:  call       int32 [Engine]Engine.Input.Mouse::get_MouseWheelMovement()
    IL_0110:  conv.r4
    IL_0111:  ldc.r4     120.
    IL_0116:  div
    IL_0117:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_011c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0121:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.InputState::Scroll
    IL_0126:  ldsfld     bool Game.InputManager::m_mouseHoldInProgress
    IL_012b:  brfalse.s  IL_0161

    IL_012d:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0132:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_mouseDownPoint
    IL_0137:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_013c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0141:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Hold
    IL_0146:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_014b:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0150:  ldsfld     float64 Game.InputManager::m_mouseDragTime
    IL_0155:  sub
    IL_0156:  conv.r4
    IL_0157:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_015c:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.InputState::HoldTime
    IL_0161:  ldsfld     bool Game.InputManager::m_mouseDragInProgress
    IL_0166:  brfalse.s  IL_017d

    IL_0168:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_016d:  ldloc.0
    IL_016e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0173:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Drag
    IL_0178:  br         IL_0200

    IL_017d:  ldc.i4.0
    IL_017e:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_0183:  brtrue.s   IL_018d

    IL_0185:  ldc.i4.1
    IL_0186:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_018b:  brfalse.s  IL_0200

    IL_018d:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_mouseDownPoint
    IL_0192:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0197:  brfalse.s  IL_0200

    IL_0199:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_mouseDownPoint
    IL_019e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_01a3:  ldloc.0
    IL_01a4:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_01a9:  call       float32 Game.SettingsManager::get_MaximumTapDistance()
    IL_01ae:  ble.un.s   IL_01e7

    IL_01b0:  ldc.i4.1
    IL_01b1:  stsfld     bool Game.InputManager::m_mouseDragInProgress
    IL_01b6:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_01bb:  ldc.i4.0
    IL_01bc:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_01c1:  brtrue.s   IL_01c6

    IL_01c3:  ldc.i4.1
    IL_01c4:  br.s       IL_01c7

    IL_01c6:  ldc.i4.0
    IL_01c7:  stfld      valuetype Game.DragMode Game.InputState::DragMode
    IL_01cc:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_01d1:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputManager::m_mouseDownPoint
    IL_01d6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_01db:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01e0:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Drag
    IL_01e5:  br.s       IL_0200

    IL_01e7:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_01ec:  ldsfld     float64 Game.InputManager::m_mouseDragTime
    IL_01f1:  sub
    IL_01f2:  call       float32 Game.SettingsManager::get_MaximumTapDuration()
    IL_01f7:  conv.r8
    IL_01f8:  ble.un.s   IL_0200

    IL_01fa:  ldc.i4.1
    IL_01fb:  stsfld     bool Game.InputManager::m_mouseHoldInProgress
    IL_0200:  ldc.i4.0
    IL_0201:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_0206:  stsfld     bool Game.InputManager::m_lastLeftMouseButtonDown
    IL_020b:  ldc.i4.s   20
    IL_020d:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0212:  brfalse.s  IL_021f

    IL_0214:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0219:  ldc.i4.1
    IL_021a:  stfld      bool Game.InputState::Back
    IL_021f:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0224:  ldsfld     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.InputManager::m_queuedKeyPress
    IL_0229:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.InputState::KeyPress
    IL_022e:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0233:  ldsfld     valuetype [System.Runtime]System.Nullable`1<char> Game.InputManager::m_queuedCharPress
    IL_0238:  stfld      valuetype [System.Runtime]System.Nullable`1<char> Game.InputState::CharPress
    IL_023d:  ldsflda    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.InputManager::m_queuedKeyPress
    IL_0242:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>
    IL_0248:  ldsflda    valuetype [System.Runtime]System.Nullable`1<char> Game.InputManager::m_queuedCharPress
    IL_024d:  initobj    valuetype [System.Runtime]System.Nullable`1<char>
    IL_0253:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
    IL_0258:  ldflda     bool Game.InputState::Back
    IL_025d:  dup
    IL_025e:  ldind.u1
    IL_025f:  ldc.i4.0
    IL_0260:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0265:  or
    IL_0266:  stind.i1
    IL_0267:  ret
  } // end of method InputManager::UpdateInputFromMouseAndKeyboard

  .method private hidebysig static void  UpdateInputFromTouchPanel() cil managed
  {
    // 代码大小       519 (0x207)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> V_1,
             valuetype [Engine]Engine.Input.TouchLocation V_2)
    IL_0000:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> [Engine]Engine.Input.Touch::get_TouchLocations()
    IL_0005:  stloc.1
    IL_0006:  ldloca.s   V_1
    IL_0008:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation>::GetEnumerator()
    IL_000d:  stloc.0
    .try
    {
      IL_000e:  br         IL_01ea

      IL_0013:  ldloca.s   V_0
      IL_0015:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::get_Current()
      IL_001a:  stloc.2
      IL_001b:  ldloc.2
      IL_001c:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_0021:  brtrue.s   IL_0083

      IL_0023:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
      IL_0028:  ldloc.2
      IL_0029:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_002e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_0033:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
      IL_0038:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
      IL_003d:  ldloc.2
      IL_003e:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0043:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_0048:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
      IL_004d:  ldloc.2
      IL_004e:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0053:  stsfld     valuetype [Engine]Engine.Vector2 Game.InputManager::m_touchStartPoint
      IL_0058:  ldloc.2
      IL_0059:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_005e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_0063:  stsfld     valuetype [System.Runtime]System.Nullable`1<int32> Game.InputManager::m_touchId
      IL_0068:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_006d:  stsfld     float64 Game.InputManager::m_touchStartTime
      IL_0072:  ldc.i4.0
      IL_0073:  stsfld     bool Game.InputManager::m_touchDragInProgress
      IL_0078:  ldc.i4.0
      IL_0079:  stsfld     bool Game.InputManager::m_touchHoldInProgress
      IL_007e:  br         IL_01ea

      IL_0083:  ldloc.2
      IL_0084:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_0089:  ldc.i4.1
      IL_008a:  bne.un     IL_0173

      IL_008f:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
      IL_0094:  ldloc.2
      IL_0095:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_009a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_009f:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
      IL_00a4:  ldsflda    valuetype [System.Runtime]System.Nullable`1<int32> Game.InputManager::m_touchId
      IL_00a9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_00ae:  brfalse    IL_01ea

      IL_00b3:  ldsflda    valuetype [System.Runtime]System.Nullable`1<int32> Game.InputManager::m_touchId
      IL_00b8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_00bd:  ldloc.2
      IL_00be:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_00c3:  bne.un     IL_01ea

      IL_00c8:  ldsfld     bool Game.InputManager::m_touchDragInProgress
      IL_00cd:  brfalse.s  IL_00e6

      IL_00cf:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
      IL_00d4:  ldloc.2
      IL_00d5:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_00da:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_00df:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Drag
      IL_00e4:  br.s       IL_011d

      IL_00e6:  ldloc.2
      IL_00e7:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_00ec:  ldsfld     valuetype [Engine]Engine.Vector2 Game.InputManager::m_touchStartPoint
      IL_00f1:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_00f6:  call       float32 Game.WidgetsManager::get_Scale()
      IL_00fb:  div
      IL_00fc:  call       float32 Game.SettingsManager::get_MaximumTapDistance()
      IL_0101:  ble.un.s   IL_011d

      IL_0103:  ldc.i4.1
      IL_0104:  stsfld     bool Game.InputManager::m_touchDragInProgress
      IL_0109:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
      IL_010e:  ldsfld     valuetype [Engine]Engine.Vector2 Game.InputManager::m_touchStartPoint
      IL_0113:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_0118:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Drag
      IL_011d:  ldsfld     bool Game.InputManager::m_touchHoldInProgress
      IL_0122:  brfalse.s  IL_0158

      IL_0124:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
      IL_0129:  ldsfld     valuetype [Engine]Engine.Vector2 Game.InputManager::m_touchStartPoint
      IL_012e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_0133:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Hold
      IL_0138:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
      IL_013d:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_0142:  ldsfld     float64 Game.InputManager::m_touchStartTime
      IL_0147:  sub
      IL_0148:  conv.r4
      IL_0149:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
      IL_014e:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.InputState::HoldTime
      IL_0153:  br         IL_01ea

      IL_0158:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_015d:  ldsfld     float64 Game.InputManager::m_touchStartTime
      IL_0162:  sub
      IL_0163:  call       float32 Game.SettingsManager::get_MaximumTapDuration()
      IL_0168:  conv.r8
      IL_0169:  ble.un.s   IL_01ea

      IL_016b:  ldc.i4.1
      IL_016c:  stsfld     bool Game.InputManager::m_touchHoldInProgress
      IL_0171:  br.s       IL_01ea

      IL_0173:  ldloc.2
      IL_0174:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_0179:  ldc.i4.2
      IL_017a:  bne.un.s   IL_01ea

      IL_017c:  ldsflda    valuetype [System.Runtime]System.Nullable`1<int32> Game.InputManager::m_touchId
      IL_0181:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0186:  brfalse.s  IL_01ea

      IL_0188:  ldsflda    valuetype [System.Runtime]System.Nullable`1<int32> Game.InputManager::m_touchId
      IL_018d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_0192:  ldloc.2
      IL_0193:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_0198:  bne.un.s   IL_01ea

      IL_019a:  ldsflda    valuetype [System.Runtime]System.Nullable`1<int32> Game.InputManager::m_touchId
      IL_019f:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_01a5:  ldsfld     bool Game.InputManager::m_touchDragInProgress
      IL_01aa:  brfalse.s  IL_01b4

      IL_01ac:  ldc.i4.0
      IL_01ad:  stsfld     bool Game.InputManager::m_touchDragInProgress
      IL_01b2:  br.s       IL_01ea

      IL_01b4:  ldsfld     bool Game.InputManager::m_touchHoldInProgress
      IL_01b9:  brfalse.s  IL_01c3

      IL_01bb:  ldc.i4.0
      IL_01bc:  stsfld     bool Game.InputManager::m_touchHoldInProgress
      IL_01c1:  br.s       IL_01ea

      IL_01c3:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_01c8:  ldsfld     float64 Game.InputManager::m_touchStartTime
      IL_01cd:  sub
      IL_01ce:  call       float32 Game.SettingsManager::get_MaximumTapDuration()
      IL_01d3:  conv.r8
      IL_01d4:  bgt.un.s   IL_01ea

      IL_01d6:  ldsflda    valuetype Game.InputState Game.InputManager::m_inputState
      IL_01db:  ldsfld     valuetype [Engine]Engine.Vector2 Game.InputManager::m_touchStartPoint
      IL_01e0:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_01e5:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
      IL_01ea:  ldloca.s   V_0
      IL_01ec:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::MoveNext()
      IL_01f1:  brtrue     IL_0013

      IL_01f6:  leave.s    IL_0206

    }  // end .try
    finally
    {
      IL_01f8:  ldloca.s   V_0
      IL_01fa:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>
      IL_0200:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0205:  endfinally
    }  // end handler
    IL_0206:  ret
  } // end of method InputManager::UpdateInputFromTouchPanel

  .property valuetype Game.InputState InputState()
  {
    .get valuetype Game.InputState Game.InputManager::get_InputState()
  } // end of property InputManager::InputState
  .property valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation>
          TouchLocations()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> Game.InputManager::get_TouchLocations()
  } // end of property InputManager::TouchLocations
  .property bool IsPadCursorVisible()
  {
    .get bool Game.InputManager::get_IsPadCursorVisible()
    .set void Game.InputManager::set_IsPadCursorVisible(bool)
  } // end of property InputManager::IsPadCursorVisible
  .property valuetype [Engine]Engine.Vector2
          PadCursorPosition()
  {
    .get valuetype [Engine]Engine.Vector2 Game.InputManager::get_PadCursorPosition()
    .set void Game.InputManager::set_PadCursorPosition(valuetype [Engine]Engine.Vector2)
  } // end of property InputManager::PadCursorPosition
} // end of class Game.InputManager