.class public auto ansi beforefieldinit Game.MoveRoseWidget
       extends Game.Widget
{
  .field private valuetype [Engine]Engine.Vector3 m_direction
  .field private bool m_jump
  .field private valuetype [System.Runtime]System.Nullable`1<int32> m_jumpTouchId
  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_Direction() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.0
    IL_0009:  call       bool Game.WidgetsManager::IsWidgetVisible(class Game.Widget)
    IL_000e:  brfalse.s  IL_0017

    IL_0010:  ldarg.0
    IL_0011:  ldfld      valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
    IL_0016:  ret

    IL_0017:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_001c:  ret
  } // end of method MoveRoseWidget::get_Direction

  .method public hidebysig specialname instance bool 
          get_Jump() cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.0
    IL_0009:  call       bool Game.WidgetsManager::IsWidgetVisible(class Game.Widget)
    IL_000e:  brfalse.s  IL_0017

    IL_0010:  ldarg.0
    IL_0011:  ldfld      bool Game.MoveRoseWidget::m_jump
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method MoveRoseWidget::get_Jump

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       637 (0x27d)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation> V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> V_5,
             valuetype [Engine]Engine.Input.TouchLocation V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             float32 V_8,
             float32 V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0006:  stfld      valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.0
    IL_000d:  stfld      bool Game.MoveRoseWidget::m_jump
    IL_0012:  ldarg.0
    IL_0013:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0018:  ldarg.0
    IL_0019:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_001e:  ldc.r4     2.
    IL_0023:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0028:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_002d:  stloc.0
    IL_002e:  ldarg.0
    IL_002f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0034:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0039:  ldc.r4     2.
    IL_003e:  div
    IL_003f:  stloc.1
    IL_0040:  ldloc.1
    IL_0041:  ldc.r4     3.5
    IL_0046:  div
    IL_0047:  stloc.2
    IL_0048:  ldc.r4     35.
    IL_004d:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0052:  stloc.3
    IL_0053:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> Game.InputManager::get_TouchLocations()
    IL_0058:  stloc.s    V_5
    IL_005a:  ldloca.s   V_5
    IL_005c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation>::GetEnumerator()
    IL_0061:  stloc.s    V_4
    .try
    {
      IL_0063:  br         IL_0260

      IL_0068:  ldloca.s   V_4
      IL_006a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::get_Current()
      IL_006f:  stloc.s    V_6
      IL_0071:  ldloc.s    V_6
      IL_0073:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0078:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
      IL_007d:  ldarg.0
      IL_007e:  bne.un     IL_0260

      IL_0083:  ldloc.s    V_6
      IL_0085:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_008a:  brtrue.s   IL_00bf

      IL_008c:  ldloc.s    V_6
      IL_008e:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0093:  call       float32 Game.WidgetsManager::get_Scale()
      IL_0098:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                                float32)
      IL_009d:  ldloc.0
      IL_009e:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_00a3:  ldloc.2
      IL_00a4:  bgt.un.s   IL_00bf

      IL_00a6:  ldarg.0
      IL_00a7:  ldc.i4.1
      IL_00a8:  stfld      bool Game.MoveRoseWidget::m_jump
      IL_00ad:  ldarg.0
      IL_00ae:  ldloc.s    V_6
      IL_00b0:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_00b5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_00ba:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_00bf:  ldloc.s    V_6
      IL_00c1:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_00c6:  ldc.i4.2
      IL_00c7:  bne.un.s   IL_00f6

      IL_00c9:  ldarg.0
      IL_00ca:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_00cf:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_00d4:  brfalse.s  IL_00f6

      IL_00d6:  ldloc.s    V_6
      IL_00d8:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_00dd:  ldarg.0
      IL_00de:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_00e3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_00e8:  bne.un.s   IL_00f6

      IL_00ea:  ldarg.0
      IL_00eb:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_00f0:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_00f6:  ldloc.s    V_6
      IL_00f8:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_00fd:  ldc.i4.1
      IL_00fe:  beq.s      IL_010c

      IL_0100:  ldloc.s    V_6
      IL_0102:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_0107:  brtrue     IL_0260

      IL_010c:  ldloc.s    V_6
      IL_010e:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0113:  call       float32 Game.WidgetsManager::get_Scale()
      IL_0118:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                                float32)
      IL_011d:  stloc.s    V_7
      IL_011f:  ldloc.s    V_7
      IL_0121:  ldloc.0
      IL_0122:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_0127:  stloc.s    V_8
      IL_0129:  ldloc.s    V_8
      IL_012b:  ldloc.2
      IL_012c:  ble.un     IL_0260

      IL_0131:  ldloc.s    V_8
      IL_0133:  ldloc.1
      IL_0134:  bgt.un     IL_0260

      IL_0139:  ldloc.s    V_7
      IL_013b:  ldloc.0
      IL_013c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0141:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::UnitY
      IL_0146:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
      IL_014b:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                                 valuetype [Engine]Engine.Vector2)
      IL_0150:  stloc.s    V_9
      IL_0152:  ldloc.s    V_9
      IL_0154:  ldc.r4     0.0
      IL_0159:  sub
      IL_015a:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
      IL_015f:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_0164:  ldloc.3
      IL_0165:  bge.un.s   IL_01a9

      IL_0167:  ldarg.0
      IL_0168:  ldarg.0
      IL_0169:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_016e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0173:  brtrue.s   IL_018b

      IL_0175:  ldc.r4     0.0
      IL_017a:  ldc.r4     0.0
      IL_017f:  ldc.r4     1.
      IL_0184:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0189:  br.s       IL_019f

      IL_018b:  ldc.r4     0.0
      IL_0190:  ldc.r4     1.
      IL_0195:  ldc.r4     0.0
      IL_019a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_019f:  stfld      valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
      IL_01a4:  br         IL_0260

      IL_01a9:  ldloc.s    V_9
      IL_01ab:  ldc.r4     1.5707964
      IL_01b0:  sub
      IL_01b1:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
      IL_01b6:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_01bb:  ldloc.3
      IL_01bc:  bge.un.s   IL_01dd

      IL_01be:  ldarg.0
      IL_01bf:  ldc.r4     -1.
      IL_01c4:  ldc.r4     0.0
      IL_01c9:  ldc.r4     0.0
      IL_01ce:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_01d3:  stfld      valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
      IL_01d8:  br         IL_0260

      IL_01dd:  ldloc.s    V_9
      IL_01df:  ldc.r4     3.1415927
      IL_01e4:  sub
      IL_01e5:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
      IL_01ea:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_01ef:  ldloc.3
      IL_01f0:  bge.un.s   IL_0231

      IL_01f2:  ldarg.0
      IL_01f3:  ldarg.0
      IL_01f4:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_01f9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_01fe:  brtrue.s   IL_0216

      IL_0200:  ldc.r4     0.0
      IL_0205:  ldc.r4     0.0
      IL_020a:  ldc.r4     -1.
      IL_020f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0214:  br.s       IL_022a

      IL_0216:  ldc.r4     0.0
      IL_021b:  ldc.r4     -1.
      IL_0220:  ldc.r4     0.0
      IL_0225:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_022a:  stfld      valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
      IL_022f:  br.s       IL_0260

      IL_0231:  ldloc.s    V_9
      IL_0233:  ldc.r4     4.712389
      IL_0238:  sub
      IL_0239:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
      IL_023e:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_0243:  ldloc.3
      IL_0244:  bge.un.s   IL_0260

      IL_0246:  ldarg.0
      IL_0247:  ldc.r4     1.
      IL_024c:  ldc.r4     0.0
      IL_0251:  ldc.r4     0.0
      IL_0256:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_025b:  stfld      valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
      IL_0260:  ldloca.s   V_4
      IL_0262:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::MoveNext()
      IL_0267:  brtrue     IL_0068

      IL_026c:  leave.s    IL_027c

    }  // end .try
    finally
    {
      IL_026e:  ldloca.s   V_4
      IL_0270:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>
      IL_0276:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_027b:  endfinally
    }  // end handler
    IL_027c:  ret
  } // end of method MoveRoseWidget::Update

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ret
  } // end of method MoveRoseWidget::Measure

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       1167 (0x48f)
    .maxstack  9
    .locals init (class Game.Subtexture V_0,
             class Game.Subtexture V_1,
             class [Engine]Engine.Graphics.TexturedBatch2D V_2,
             class [Engine]Engine.Graphics.TexturedBatch2D V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             valuetype [Engine]Engine.Vector2 V_12,
             valuetype [Engine]Engine.Vector2 V_13,
             valuetype [Engine]Engine.Vector2 V_14,
             valuetype [Engine]Engine.Vector2 V_15,
             valuetype [Engine]Engine.Vector2 V_16,
             valuetype [Engine]Engine.Vector2 V_17,
             valuetype [Engine]Engine.Vector2 V_18,
             valuetype [Engine]Engine.Vector2 V_19,
             valuetype [Engine]Engine.Vector2 V_20,
             valuetype [Engine]Engine.Vector2 V_21,
             valuetype [Engine]Engine.Vector2 V_22,
             valuetype [Engine]Engine.Vector2 V_23,
             valuetype [Engine]Engine.Vector2 V_24,
             valuetype [Engine]Engine.Vector2 V_25,
             valuetype [Engine]Engine.Vector2 V_26,
             valuetype [Engine]Engine.Vector2 V_27,
             valuetype [Engine]Engine.Vector2 V_28,
             valuetype [Engine]Engine.Vector2 V_29,
             valuetype [Engine]Engine.Vector2 V_30,
             valuetype [Engine]Engine.Vector2 V_31,
             valuetype [Engine]Engine.Vector2 V_32)
    IL_0000:  ldstr      "Textures/Atlas/MoveRose"
    IL_0005:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_000a:  stloc.0
    IL_000b:  ldstr      "Textures/Atlas/MoveRose_Pressed"
    IL_0010:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0015:  stloc.1
    IL_0016:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_001b:  ldloc.0
    IL_001c:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_0021:  ldc.i4.0
    IL_0022:  ldc.i4.0
    IL_0023:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0028:  ldnull
    IL_0029:  ldnull
    IL_002a:  ldnull
    IL_002b:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0030:  stloc.2
    IL_0031:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0036:  ldloc.1
    IL_0037:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_003c:  ldc.i4.0
    IL_003d:  ldc.i4.0
    IL_003e:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0043:  ldnull
    IL_0044:  ldnull
    IL_0045:  ldnull
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_004b:  stloc.3
    IL_004c:  ldarg.0
    IL_004d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0052:  ldarg.0
    IL_0053:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0058:  ldc.r4     2.
    IL_005d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0062:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0067:  stloc.s    V_4
    IL_0069:  ldarg.0
    IL_006a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_006f:  ldc.r4     0.0
    IL_0074:  ldc.r4     0.0
    IL_0079:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_007e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0083:  stloc.s    V_5
    IL_0085:  ldarg.0
    IL_0086:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_008b:  ldarg.0
    IL_008c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0091:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0096:  ldc.r4     0.0
    IL_009b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a0:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00a5:  stloc.s    V_6
    IL_00a7:  ldarg.0
    IL_00a8:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_00ad:  ldarg.0
    IL_00ae:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00b3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b8:  ldarg.0
    IL_00b9:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00be:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00c8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00cd:  stloc.s    V_7
    IL_00cf:  ldarg.0
    IL_00d0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_00d5:  ldc.r4     0.0
    IL_00da:  ldarg.0
    IL_00db:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00e0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00e5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ea:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00ef:  stloc.s    V_8
    IL_00f1:  ldloc.s    V_4
    IL_00f3:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00f8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00fd:  stloc.s    V_4
    IL_00ff:  ldloc.s    V_5
    IL_0101:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0106:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_010b:  stloc.s    V_5
    IL_010d:  ldloc.s    V_6
    IL_010f:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0114:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0119:  stloc.s    V_6
    IL_011b:  ldloc.s    V_7
    IL_011d:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0122:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0127:  stloc.s    V_7
    IL_0129:  ldloc.s    V_8
    IL_012b:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0130:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0135:  stloc.s    V_8
    IL_0137:  ldarg.0
    IL_0138:  ldflda     valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
    IL_013d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0142:  ldc.r4     0.0
    IL_0147:  ble.un.s   IL_01ac

    IL_0149:  ldloc.1
    IL_014a:  ldc.r4     0.0
    IL_014f:  ldc.r4     0.0
    IL_0154:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0159:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_015e:  stloc.s    V_9
    IL_0160:  ldloc.1
    IL_0161:  ldc.r4     1.
    IL_0166:  ldc.r4     0.0
    IL_016b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0170:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0175:  stloc.s    V_10
    IL_0177:  ldloc.1
    IL_0178:  ldc.r4     0.5
    IL_017d:  ldc.r4     0.5
    IL_0182:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0187:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_018c:  stloc.s    V_11
    IL_018e:  ldloc.3
    IL_018f:  ldloc.s    V_5
    IL_0191:  ldloc.s    V_6
    IL_0193:  ldloc.s    V_4
    IL_0195:  ldc.r4     0.0
    IL_019a:  ldloc.s    V_9
    IL_019c:  ldloc.s    V_10
    IL_019e:  ldloc.s    V_11
    IL_01a0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01a5:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01aa:  br.s       IL_020d

    IL_01ac:  ldloc.0
    IL_01ad:  ldc.r4     0.0
    IL_01b2:  ldc.r4     0.0
    IL_01b7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01bc:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_01c1:  stloc.s    V_12
    IL_01c3:  ldloc.0
    IL_01c4:  ldc.r4     1.
    IL_01c9:  ldc.r4     0.0
    IL_01ce:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01d3:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_01d8:  stloc.s    V_13
    IL_01da:  ldloc.0
    IL_01db:  ldc.r4     0.5
    IL_01e0:  ldc.r4     0.5
    IL_01e5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01ea:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_01ef:  stloc.s    V_14
    IL_01f1:  ldloc.2
    IL_01f2:  ldloc.s    V_5
    IL_01f4:  ldloc.s    V_6
    IL_01f6:  ldloc.s    V_4
    IL_01f8:  ldc.r4     0.0
    IL_01fd:  ldloc.s    V_12
    IL_01ff:  ldloc.s    V_13
    IL_0201:  ldloc.s    V_14
    IL_0203:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0208:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_020d:  ldarg.0
    IL_020e:  ldflda     valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
    IL_0213:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0218:  ldc.r4     0.0
    IL_021d:  ble.un.s   IL_0282

    IL_021f:  ldloc.1
    IL_0220:  ldc.r4     1.
    IL_0225:  ldc.r4     0.0
    IL_022a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_022f:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0234:  stloc.s    V_15
    IL_0236:  ldloc.1
    IL_0237:  ldc.r4     1.
    IL_023c:  ldc.r4     1.
    IL_0241:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0246:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_024b:  stloc.s    V_16
    IL_024d:  ldloc.1
    IL_024e:  ldc.r4     0.5
    IL_0253:  ldc.r4     0.5
    IL_0258:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_025d:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0262:  stloc.s    V_17
    IL_0264:  ldloc.3
    IL_0265:  ldloc.s    V_6
    IL_0267:  ldloc.s    V_7
    IL_0269:  ldloc.s    V_4
    IL_026b:  ldc.r4     0.0
    IL_0270:  ldloc.s    V_15
    IL_0272:  ldloc.s    V_16
    IL_0274:  ldloc.s    V_17
    IL_0276:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_027b:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0280:  br.s       IL_02e3

    IL_0282:  ldloc.0
    IL_0283:  ldc.r4     1.
    IL_0288:  ldc.r4     0.0
    IL_028d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0292:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0297:  stloc.s    V_18
    IL_0299:  ldloc.0
    IL_029a:  ldc.r4     1.
    IL_029f:  ldc.r4     1.
    IL_02a4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02a9:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_02ae:  stloc.s    V_19
    IL_02b0:  ldloc.0
    IL_02b1:  ldc.r4     0.5
    IL_02b6:  ldc.r4     0.5
    IL_02bb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02c0:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_02c5:  stloc.s    V_20
    IL_02c7:  ldloc.2
    IL_02c8:  ldloc.s    V_6
    IL_02ca:  ldloc.s    V_7
    IL_02cc:  ldloc.s    V_4
    IL_02ce:  ldc.r4     0.0
    IL_02d3:  ldloc.s    V_18
    IL_02d5:  ldloc.s    V_19
    IL_02d7:  ldloc.s    V_20
    IL_02d9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_02de:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_02e3:  ldarg.0
    IL_02e4:  ldflda     valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
    IL_02e9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02ee:  ldc.r4     0.0
    IL_02f3:  bge.un.s   IL_0358

    IL_02f5:  ldloc.1
    IL_02f6:  ldc.r4     1.
    IL_02fb:  ldc.r4     1.
    IL_0300:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0305:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_030a:  stloc.s    V_21
    IL_030c:  ldloc.1
    IL_030d:  ldc.r4     0.0
    IL_0312:  ldc.r4     1.
    IL_0317:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_031c:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0321:  stloc.s    V_22
    IL_0323:  ldloc.1
    IL_0324:  ldc.r4     0.5
    IL_0329:  ldc.r4     0.5
    IL_032e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0333:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0338:  stloc.s    V_23
    IL_033a:  ldloc.3
    IL_033b:  ldloc.s    V_7
    IL_033d:  ldloc.s    V_8
    IL_033f:  ldloc.s    V_4
    IL_0341:  ldc.r4     0.0
    IL_0346:  ldloc.s    V_21
    IL_0348:  ldloc.s    V_22
    IL_034a:  ldloc.s    V_23
    IL_034c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0351:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0356:  br.s       IL_03b9

    IL_0358:  ldloc.0
    IL_0359:  ldc.r4     1.
    IL_035e:  ldc.r4     1.
    IL_0363:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0368:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_036d:  stloc.s    V_24
    IL_036f:  ldloc.0
    IL_0370:  ldc.r4     0.0
    IL_0375:  ldc.r4     1.
    IL_037a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_037f:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0384:  stloc.s    V_25
    IL_0386:  ldloc.0
    IL_0387:  ldc.r4     0.5
    IL_038c:  ldc.r4     0.5
    IL_0391:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0396:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_039b:  stloc.s    V_26
    IL_039d:  ldloc.2
    IL_039e:  ldloc.s    V_7
    IL_03a0:  ldloc.s    V_8
    IL_03a2:  ldloc.s    V_4
    IL_03a4:  ldc.r4     0.0
    IL_03a9:  ldloc.s    V_24
    IL_03ab:  ldloc.s    V_25
    IL_03ad:  ldloc.s    V_26
    IL_03af:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_03b4:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_03b9:  ldarg.0
    IL_03ba:  ldflda     valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
    IL_03bf:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03c4:  ldc.r4     0.0
    IL_03c9:  bge.un.s   IL_042d

    IL_03cb:  ldloc.1
    IL_03cc:  ldc.r4     0.0
    IL_03d1:  ldc.r4     1.
    IL_03d6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03db:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_03e0:  stloc.s    V_27
    IL_03e2:  ldloc.1
    IL_03e3:  ldc.r4     0.0
    IL_03e8:  ldc.r4     0.0
    IL_03ed:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f2:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_03f7:  stloc.s    V_28
    IL_03f9:  ldloc.1
    IL_03fa:  ldc.r4     0.5
    IL_03ff:  ldc.r4     0.5
    IL_0404:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0409:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_040e:  stloc.s    V_29
    IL_0410:  ldloc.3
    IL_0411:  ldloc.s    V_8
    IL_0413:  ldloc.s    V_5
    IL_0415:  ldloc.s    V_4
    IL_0417:  ldc.r4     0.0
    IL_041c:  ldloc.s    V_27
    IL_041e:  ldloc.s    V_28
    IL_0420:  ldloc.s    V_29
    IL_0422:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0427:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_042c:  ret

    IL_042d:  ldloc.0
    IL_042e:  ldc.r4     0.0
    IL_0433:  ldc.r4     1.
    IL_0438:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_043d:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0442:  stloc.s    V_30
    IL_0444:  ldloc.0
    IL_0445:  ldc.r4     0.0
    IL_044a:  ldc.r4     0.0
    IL_044f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0454:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0459:  stloc.s    V_31
    IL_045b:  ldloc.0
    IL_045c:  ldc.r4     0.5
    IL_0461:  ldc.r4     0.5
    IL_0466:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_046b:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0470:  stloc.s    V_32
    IL_0472:  ldloc.2
    IL_0473:  ldloc.s    V_8
    IL_0475:  ldloc.s    V_5
    IL_0477:  ldloc.s    V_4
    IL_0479:  ldc.r4     0.0
    IL_047e:  ldloc.s    V_30
    IL_0480:  ldloc.s    V_31
    IL_0482:  ldloc.s    V_32
    IL_0484:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0489:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_048e:  ret
  } // end of method MoveRoseWidget::Draw

  .method private hidebysig static valuetype [Engine]Engine.Vector2 
          GetSubtextureCoords(class Game.Subtexture subtexture,
                              valuetype [Engine]Engine.Vector2 texCoords) cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000b:  ldarg.0
    IL_000c:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_0011:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0016:  ldarg.1
    IL_0017:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_001c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0021:  ldarg.0
    IL_0022:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_0027:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002c:  ldarg.0
    IL_002d:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_0032:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0037:  ldarg.1
    IL_0038:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_003d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0042:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0047:  ret
  } // end of method MoveRoseWidget::GetSubtextureCoords

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Widget::.ctor()
    IL_0006:  ret
  } // end of method MoveRoseWidget::.ctor

  .property instance valuetype [Engine]Engine.Vector3
          Direction()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::get_Direction()
  } // end of property MoveRoseWidget::Direction
  .property instance bool Jump()
  {
    .get instance bool Game.MoveRoseWidget::get_Jump()
  } // end of property MoveRoseWidget::Jump
} // end of class Game.MoveRoseWidget