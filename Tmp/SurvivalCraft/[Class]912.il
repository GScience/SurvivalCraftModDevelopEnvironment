.class public auto ansi beforefieldinit Game.TouchInputWidget
       extends Game.Widget
{
  .field private valuetype [System.Runtime]System.Nullable`1<int32> m_touchId
  .field private valuetype [Engine]Engine.Vector2 m_touchLastPosition
  .field private valuetype [Engine]Engine.Vector2 m_touchOrigin
  .field private valuetype [Engine]Engine.Vector2 m_touchOriginLimited
  .field private bool m_touchMoved
  .field private float64 m_touchTime
  .field private int32 m_touchFrameIndex
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> m_touchInput
  .field private float32 m_radius
  .method public hidebysig specialname instance float32 
          get_Radius() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.TouchInputWidget::m_radius
    IL_0006:  ret
  } // end of method TouchInputWidget::get_Radius

  .method public hidebysig specialname instance void 
          set_Radius(float32 'value') cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.r4     1.
    IL_0007:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_000c:  stfld      float32 Game.TouchInputWidget::m_radius
    IL_0011:  ret
  } // end of method TouchInputWidget::set_Radius

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> 
          get_TouchInput() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  1
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.0
    IL_0009:  call       bool Game.WidgetsManager::IsWidgetVisible(class Game.Widget)
    IL_000e:  brfalse.s  IL_0017

    IL_0010:  ldarg.0
    IL_0011:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::m_touchInput
    IL_0016:  ret

    IL_0017:  ldloca.s   V_0
    IL_0019:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>
    IL_001f:  ldloc.0
    IL_0020:  ret
  } // end of method TouchInputWidget::get_TouchInput

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       802 (0x322)
    .maxstack  5
    .locals init (float64 V_0,
             int32 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation> V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> V_3,
             valuetype [Engine]Engine.Input.TouchLocation V_4,
             valuetype Game.TouchInput V_5,
             valuetype Game.TouchInput V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::m_touchInput
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>
    IL_000c:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0011:  stloc.0
    IL_0012:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0017:  stloc.1
    IL_0018:  ldarg.0
    IL_0019:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_001e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> Game.WidgetInput::get_TouchLocations()
    IL_0023:  stloc.3
    IL_0024:  ldloca.s   V_3
    IL_0026:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation>::GetEnumerator()
    IL_002b:  stloc.2
    .try
    {
      IL_002c:  br         IL_0305

      IL_0031:  ldloca.s   V_2
      IL_0033:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::get_Current()
      IL_0038:  stloc.s    V_4
      IL_003a:  ldloc.s    V_4
      IL_003c:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_0041:  brtrue.s   IL_00a8

      IL_0043:  ldloc.s    V_4
      IL_0045:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_004a:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
      IL_004f:  ldarg.0
      IL_0050:  bne.un     IL_0305

      IL_0055:  ldarg.0
      IL_0056:  ldloc.s    V_4
      IL_0058:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_005d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_0062:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_0067:  ldarg.0
      IL_0068:  ldloc.s    V_4
      IL_006a:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_006f:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchLastPosition
      IL_0074:  ldarg.0
      IL_0075:  ldloc.s    V_4
      IL_0077:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_007c:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOrigin
      IL_0081:  ldarg.0
      IL_0082:  ldloc.s    V_4
      IL_0084:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0089:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOriginLimited
      IL_008e:  ldarg.0
      IL_008f:  ldloc.0
      IL_0090:  stfld      float64 Game.TouchInputWidget::m_touchTime
      IL_0095:  ldarg.0
      IL_0096:  ldloc.1
      IL_0097:  stfld      int32 Game.TouchInputWidget::m_touchFrameIndex
      IL_009c:  ldarg.0
      IL_009d:  ldc.i4.0
      IL_009e:  stfld      bool Game.TouchInputWidget::m_touchMoved
      IL_00a3:  br         IL_0305

      IL_00a8:  ldloc.s    V_4
      IL_00aa:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_00af:  ldc.i4.1
      IL_00b0:  bne.un     IL_024c

      IL_00b5:  ldarg.0
      IL_00b6:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_00bb:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_00c0:  brfalse    IL_0305

      IL_00c5:  ldloc.s    V_4
      IL_00c7:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_00cc:  ldarg.0
      IL_00cd:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_00d2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_00d7:  bne.un     IL_0305

      IL_00dc:  ldarg.0
      IL_00dd:  ldarg.0
      IL_00de:  ldfld      bool Game.TouchInputWidget::m_touchMoved
      IL_00e3:  ldloc.s    V_4
      IL_00e5:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_00ea:  ldarg.0
      IL_00eb:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOrigin
      IL_00f0:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_00f5:  call       float32 Game.SettingsManager::get_MinimumDragDistance()
      IL_00fa:  call       float32 Game.WidgetsManager::get_Scale()
      IL_00ff:  mul
      IL_0100:  cgt
      IL_0102:  or
      IL_0103:  stfld      bool Game.TouchInputWidget::m_touchMoved
      IL_0108:  ldloca.s   V_5
      IL_010a:  initobj    Game.TouchInput
      IL_0110:  ldloca.s   V_5
      IL_0112:  ldarg.0
      IL_0113:  ldfld      bool Game.TouchInputWidget::m_touchMoved
      IL_0118:  brtrue.s   IL_011d

      IL_011a:  ldc.i4.1
      IL_011b:  br.s       IL_011e

      IL_011d:  ldc.i4.2
      IL_011e:  stfld      valuetype Game.TouchInputType Game.TouchInput::InputType
      IL_0123:  ldloca.s   V_5
      IL_0125:  ldloc.0
      IL_0126:  ldarg.0
      IL_0127:  ldfld      float64 Game.TouchInputWidget::m_touchTime
      IL_012c:  sub
      IL_012d:  conv.r4
      IL_012e:  stfld      float32 Game.TouchInput::Duration
      IL_0133:  ldloca.s   V_5
      IL_0135:  ldloc.1
      IL_0136:  ldarg.0
      IL_0137:  ldfld      int32 Game.TouchInputWidget::m_touchFrameIndex
      IL_013c:  sub
      IL_013d:  stfld      int32 Game.TouchInput::DurationFrames
      IL_0142:  ldloca.s   V_5
      IL_0144:  ldloc.s    V_4
      IL_0146:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_014b:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
      IL_0150:  ldloca.s   V_5
      IL_0152:  ldloc.s    V_4
      IL_0154:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0159:  ldarg.0
      IL_015a:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchLastPosition
      IL_015f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0164:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
      IL_0169:  ldloca.s   V_5
      IL_016b:  ldloc.s    V_4
      IL_016d:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0172:  ldarg.0
      IL_0173:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOrigin
      IL_0178:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_017d:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMove
      IL_0182:  ldloca.s   V_5
      IL_0184:  ldloc.s    V_4
      IL_0186:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_018b:  ldarg.0
      IL_018c:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOriginLimited
      IL_0191:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0196:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
      IL_019b:  ldloc.s    V_5
      IL_019d:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
      IL_01a2:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01a7:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_01ac:  ldarg.0
      IL_01ad:  ldfld      float32 Game.TouchInputWidget::m_radius
      IL_01b2:  ble.un.s   IL_01e4

      IL_01b4:  ldarg.0
      IL_01b5:  ldflda     valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOriginLimited
      IL_01ba:  ldloc.s    V_4
      IL_01bc:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_01c1:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01c6:  ldloc.s    V_5
      IL_01c8:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
      IL_01cd:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01d2:  call       float32 [Engine]Engine.MathUtils::Sign(float32)
      IL_01d7:  ldarg.0
      IL_01d8:  ldfld      float32 Game.TouchInputWidget::m_radius
      IL_01dd:  mul
      IL_01de:  sub
      IL_01df:  stfld      float32 [Engine]Engine.Vector2::X
      IL_01e4:  ldloc.s    V_5
      IL_01e6:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
      IL_01eb:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_01f0:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_01f5:  ldarg.0
      IL_01f6:  ldfld      float32 Game.TouchInputWidget::m_radius
      IL_01fb:  ble.un.s   IL_022d

      IL_01fd:  ldarg.0
      IL_01fe:  ldflda     valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOriginLimited
      IL_0203:  ldloc.s    V_4
      IL_0205:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_020a:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_020f:  ldloc.s    V_5
      IL_0211:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
      IL_0216:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_021b:  call       float32 [Engine]Engine.MathUtils::Sign(float32)
      IL_0220:  ldarg.0
      IL_0221:  ldfld      float32 Game.TouchInputWidget::m_radius
      IL_0226:  mul
      IL_0227:  sub
      IL_0228:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_022d:  ldarg.0
      IL_022e:  ldloc.s    V_5
      IL_0230:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::.ctor(!0)
      IL_0235:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::m_touchInput
      IL_023a:  ldarg.0
      IL_023b:  ldloc.s    V_4
      IL_023d:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0242:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchLastPosition
      IL_0247:  br         IL_0305

      IL_024c:  ldloc.s    V_4
      IL_024e:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_0253:  ldc.i4.2
      IL_0254:  bne.un     IL_0305

      IL_0259:  ldarg.0
      IL_025a:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_025f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0264:  brfalse    IL_0305

      IL_0269:  ldloc.s    V_4
      IL_026b:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_0270:  ldarg.0
      IL_0271:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_0276:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_027b:  bne.un     IL_0305

      IL_0280:  ldloc.0
      IL_0281:  ldarg.0
      IL_0282:  ldfld      float64 Game.TouchInputWidget::m_touchTime
      IL_0287:  sub
      IL_0288:  call       float32 Game.SettingsManager::get_MinimumHoldDuration()
      IL_028d:  conv.r8
      IL_028e:  bgt.un.s   IL_02f9

      IL_0290:  ldloc.s    V_4
      IL_0292:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0297:  ldarg.0
      IL_0298:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOrigin
      IL_029d:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_02a2:  call       float32 Game.SettingsManager::get_MinimumDragDistance()
      IL_02a7:  call       float32 Game.WidgetsManager::get_Scale()
      IL_02ac:  mul
      IL_02ad:  bge.un.s   IL_02f9

      IL_02af:  ldloca.s   V_6
      IL_02b1:  initobj    Game.TouchInput
      IL_02b7:  ldloca.s   V_6
      IL_02b9:  ldc.i4.0
      IL_02ba:  stfld      valuetype Game.TouchInputType Game.TouchInput::InputType
      IL_02bf:  ldloca.s   V_6
      IL_02c1:  ldloc.0
      IL_02c2:  ldarg.0
      IL_02c3:  ldfld      float64 Game.TouchInputWidget::m_touchTime
      IL_02c8:  sub
      IL_02c9:  conv.r4
      IL_02ca:  stfld      float32 Game.TouchInput::Duration
      IL_02cf:  ldloca.s   V_6
      IL_02d1:  ldloc.1
      IL_02d2:  ldarg.0
      IL_02d3:  ldfld      int32 Game.TouchInputWidget::m_touchFrameIndex
      IL_02d8:  sub
      IL_02d9:  stfld      int32 Game.TouchInput::DurationFrames
      IL_02de:  ldloca.s   V_6
      IL_02e0:  ldloc.s    V_4
      IL_02e2:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_02e7:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
      IL_02ec:  ldarg.0
      IL_02ed:  ldloc.s    V_6
      IL_02ef:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::.ctor(!0)
      IL_02f4:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::m_touchInput
      IL_02f9:  ldarg.0
      IL_02fa:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_02ff:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0305:  ldloca.s   V_2
      IL_0307:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::MoveNext()
      IL_030c:  brtrue     IL_0031

      IL_0311:  leave.s    IL_0321

    }  // end .try
    finally
    {
      IL_0313:  ldloca.s   V_2
      IL_0315:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>
      IL_031b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0320:  endfinally
    }  // end handler
    IL_0321:  ret
  } // end of method TouchInputWidget::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     30.
    IL_0006:  stfld      float32 Game.TouchInputWidget::m_radius
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Widget::.ctor()
    IL_0011:  ret
  } // end of method TouchInputWidget::.ctor

  .property instance float32 Radius()
  {
    .get instance float32 Game.TouchInputWidget::get_Radius()
    .set instance void Game.TouchInputWidget::set_Radius(float32)
  } // end of property TouchInputWidget::Radius
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>
          TouchInput()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_TouchInput()
  } // end of property TouchInputWidget::TouchInput
} // end of class Game.TouchInputWidget