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
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> m_input
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
          get_Input() cil managed
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
    IL_0011:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::m_input
    IL_0016:  ret

    IL_0017:  ldloca.s   V_0
    IL_0019:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>
    IL_001f:  ldloc.0
    IL_0020:  ret
  } // end of method TouchInputWidget::get_Input

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       838 (0x346)
    .maxstack  4
    .locals init (float64 V_0,
             int32 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation> V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> V_3,
             valuetype [Engine]Engine.Input.TouchLocation V_4,
             valuetype Game.TouchInput V_5,
             valuetype Game.TouchInput V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::m_input
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>
    IL_000c:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0011:  stloc.0
    IL_0012:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0017:  stloc.1
    IL_0018:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> Game.InputManager::get_TouchLocations()
    IL_001d:  stloc.3
    IL_001e:  ldloca.s   V_3
    IL_0020:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation>::GetEnumerator()
    IL_0025:  stloc.2
    .try
    {
      IL_0026:  br         IL_0329

      IL_002b:  ldloca.s   V_2
      IL_002d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::get_Current()
      IL_0032:  stloc.s    V_4
      IL_0034:  ldloc.s    V_4
      IL_0036:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_003b:  brtrue.s   IL_00a2

      IL_003d:  ldloc.s    V_4
      IL_003f:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0044:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
      IL_0049:  ldarg.0
      IL_004a:  bne.un     IL_0329

      IL_004f:  ldarg.0
      IL_0050:  ldloc.s    V_4
      IL_0052:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_0057:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_005c:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_0061:  ldarg.0
      IL_0062:  ldloc.s    V_4
      IL_0064:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0069:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchLastPosition
      IL_006e:  ldarg.0
      IL_006f:  ldloc.s    V_4
      IL_0071:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0076:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOrigin
      IL_007b:  ldarg.0
      IL_007c:  ldloc.s    V_4
      IL_007e:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0083:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOriginLimited
      IL_0088:  ldarg.0
      IL_0089:  ldloc.0
      IL_008a:  stfld      float64 Game.TouchInputWidget::m_touchTime
      IL_008f:  ldarg.0
      IL_0090:  ldloc.1
      IL_0091:  stfld      int32 Game.TouchInputWidget::m_touchFrameIndex
      IL_0096:  ldarg.0
      IL_0097:  ldc.i4.0
      IL_0098:  stfld      bool Game.TouchInputWidget::m_touchMoved
      IL_009d:  br         IL_0329

      IL_00a2:  ldloc.s    V_4
      IL_00a4:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_00a9:  ldc.i4.1
      IL_00aa:  bne.un     IL_0270

      IL_00af:  ldarg.0
      IL_00b0:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_00b5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_00ba:  brfalse    IL_0329

      IL_00bf:  ldloc.s    V_4
      IL_00c1:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_00c6:  ldarg.0
      IL_00c7:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_00cc:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_00d1:  bne.un     IL_0329

      IL_00d6:  ldarg.0
      IL_00d7:  ldarg.0
      IL_00d8:  ldfld      bool Game.TouchInputWidget::m_touchMoved
      IL_00dd:  ldloc.s    V_4
      IL_00df:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_00e4:  ldarg.0
      IL_00e5:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOrigin
      IL_00ea:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_00ef:  call       float32 Game.WidgetsManager::get_Scale()
      IL_00f4:  div
      IL_00f5:  call       float32 Game.SettingsManager::get_MaximumTapDistance()
      IL_00fa:  cgt
      IL_00fc:  or
      IL_00fd:  stfld      bool Game.TouchInputWidget::m_touchMoved
      IL_0102:  ldloca.s   V_5
      IL_0104:  initobj    Game.TouchInput
      IL_010a:  ldloca.s   V_5
      IL_010c:  ldarg.0
      IL_010d:  ldfld      bool Game.TouchInputWidget::m_touchMoved
      IL_0112:  brtrue.s   IL_0117

      IL_0114:  ldc.i4.1
      IL_0115:  br.s       IL_0118

      IL_0117:  ldc.i4.2
      IL_0118:  stfld      valuetype Game.TouchInputType Game.TouchInput::InputType
      IL_011d:  ldloca.s   V_5
      IL_011f:  ldloc.0
      IL_0120:  ldarg.0
      IL_0121:  ldfld      float64 Game.TouchInputWidget::m_touchTime
      IL_0126:  sub
      IL_0127:  conv.r4
      IL_0128:  stfld      float32 Game.TouchInput::Duration
      IL_012d:  ldloca.s   V_5
      IL_012f:  ldloc.1
      IL_0130:  ldarg.0
      IL_0131:  ldfld      int32 Game.TouchInputWidget::m_touchFrameIndex
      IL_0136:  sub
      IL_0137:  stfld      int32 Game.TouchInput::DurationFrames
      IL_013c:  ldloca.s   V_5
      IL_013e:  ldloc.s    V_4
      IL_0140:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0145:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
      IL_014a:  ldloca.s   V_5
      IL_014c:  ldloc.s    V_4
      IL_014e:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0153:  ldarg.0
      IL_0154:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchLastPosition
      IL_0159:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_015e:  call       float32 Game.WidgetsManager::get_Scale()
      IL_0163:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                                float32)
      IL_0168:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Move
      IL_016d:  ldloca.s   V_5
      IL_016f:  ldloc.s    V_4
      IL_0171:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0176:  ldarg.0
      IL_0177:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOrigin
      IL_017c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0181:  call       float32 Game.WidgetsManager::get_Scale()
      IL_0186:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                                float32)
      IL_018b:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMove
      IL_0190:  ldloca.s   V_5
      IL_0192:  ldloc.s    V_4
      IL_0194:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0199:  ldarg.0
      IL_019a:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOriginLimited
      IL_019f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_01a4:  call       float32 Game.WidgetsManager::get_Scale()
      IL_01a9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                                float32)
      IL_01ae:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
      IL_01b3:  ldloc.s    V_5
      IL_01b5:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
      IL_01ba:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01bf:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_01c4:  ldarg.0
      IL_01c5:  call       instance float32 Game.TouchInputWidget::get_Radius()
      IL_01ca:  ble.un.s   IL_0202

      IL_01cc:  ldarg.0
      IL_01cd:  ldflda     valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOriginLimited
      IL_01d2:  ldloc.s    V_4
      IL_01d4:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_01d9:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01de:  ldloc.s    V_5
      IL_01e0:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
      IL_01e5:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01ea:  call       float32 [Engine]Engine.MathUtils::Sign(float32)
      IL_01ef:  ldarg.0
      IL_01f0:  call       instance float32 Game.TouchInputWidget::get_Radius()
      IL_01f5:  mul
      IL_01f6:  call       float32 Game.WidgetsManager::get_Scale()
      IL_01fb:  mul
      IL_01fc:  sub
      IL_01fd:  stfld      float32 [Engine]Engine.Vector2::X
      IL_0202:  ldloc.s    V_5
      IL_0204:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
      IL_0209:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_020e:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_0213:  ldarg.0
      IL_0214:  call       instance float32 Game.TouchInputWidget::get_Radius()
      IL_0219:  ble.un.s   IL_0251

      IL_021b:  ldarg.0
      IL_021c:  ldflda     valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOriginLimited
      IL_0221:  ldloc.s    V_4
      IL_0223:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0228:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_022d:  ldloc.s    V_5
      IL_022f:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::TotalMoveLimited
      IL_0234:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0239:  call       float32 [Engine]Engine.MathUtils::Sign(float32)
      IL_023e:  ldarg.0
      IL_023f:  call       instance float32 Game.TouchInputWidget::get_Radius()
      IL_0244:  mul
      IL_0245:  call       float32 Game.WidgetsManager::get_Scale()
      IL_024a:  mul
      IL_024b:  sub
      IL_024c:  stfld      float32 [Engine]Engine.Vector2::Y
      IL_0251:  ldarg.0
      IL_0252:  ldloc.s    V_5
      IL_0254:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::.ctor(!0)
      IL_0259:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::m_input
      IL_025e:  ldarg.0
      IL_025f:  ldloc.s    V_4
      IL_0261:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0266:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchLastPosition
      IL_026b:  br         IL_0329

      IL_0270:  ldloc.s    V_4
      IL_0272:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_0277:  ldc.i4.2
      IL_0278:  bne.un     IL_0329

      IL_027d:  ldarg.0
      IL_027e:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_0283:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0288:  brfalse    IL_0329

      IL_028d:  ldloc.s    V_4
      IL_028f:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_0294:  ldarg.0
      IL_0295:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_029a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_029f:  bne.un     IL_0329

      IL_02a4:  ldloc.0
      IL_02a5:  ldarg.0
      IL_02a6:  ldfld      float64 Game.TouchInputWidget::m_touchTime
      IL_02ab:  sub
      IL_02ac:  call       float32 Game.SettingsManager::get_MaximumTapDuration()
      IL_02b1:  conv.r8
      IL_02b2:  bgt.un.s   IL_031d

      IL_02b4:  ldloc.s    V_4
      IL_02b6:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_02bb:  ldarg.0
      IL_02bc:  ldfld      valuetype [Engine]Engine.Vector2 Game.TouchInputWidget::m_touchOrigin
      IL_02c1:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_02c6:  call       float32 Game.WidgetsManager::get_Scale()
      IL_02cb:  div
      IL_02cc:  call       float32 Game.SettingsManager::get_MaximumTapDistance()
      IL_02d1:  bge.un.s   IL_031d

      IL_02d3:  ldloca.s   V_6
      IL_02d5:  initobj    Game.TouchInput
      IL_02db:  ldloca.s   V_6
      IL_02dd:  ldc.i4.0
      IL_02de:  stfld      valuetype Game.TouchInputType Game.TouchInput::InputType
      IL_02e3:  ldloca.s   V_6
      IL_02e5:  ldloc.0
      IL_02e6:  ldarg.0
      IL_02e7:  ldfld      float64 Game.TouchInputWidget::m_touchTime
      IL_02ec:  sub
      IL_02ed:  conv.r4
      IL_02ee:  stfld      float32 Game.TouchInput::Duration
      IL_02f3:  ldloca.s   V_6
      IL_02f5:  ldloc.1
      IL_02f6:  ldarg.0
      IL_02f7:  ldfld      int32 Game.TouchInputWidget::m_touchFrameIndex
      IL_02fc:  sub
      IL_02fd:  stfld      int32 Game.TouchInput::DurationFrames
      IL_0302:  ldloca.s   V_6
      IL_0304:  ldloc.s    V_4
      IL_0306:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_030b:  stfld      valuetype [Engine]Engine.Vector2 Game.TouchInput::Position
      IL_0310:  ldarg.0
      IL_0311:  ldloc.s    V_6
      IL_0313:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput>::.ctor(!0)
      IL_0318:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::m_input
      IL_031d:  ldarg.0
      IL_031e:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.TouchInputWidget::m_touchId
      IL_0323:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0329:  ldloca.s   V_2
      IL_032b:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::MoveNext()
      IL_0330:  brtrue     IL_002b

      IL_0335:  leave.s    IL_0345

    }  // end .try
    finally
    {
      IL_0337:  ldloca.s   V_2
      IL_0339:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>
      IL_033f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0344:  endfinally
    }  // end handler
    IL_0345:  ret
  } // end of method TouchInputWidget::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     20.
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
          Input()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TouchInput> Game.TouchInputWidget::get_Input()
  } // end of property TouchInputWidget::Input
} // end of class Game.TouchInputWidget