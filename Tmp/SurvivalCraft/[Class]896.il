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
    // 代码大小       624 (0x270)
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
    IL_0013:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0018:  ldc.r4     2.
    IL_001d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0022:  stloc.0
    IL_0023:  ldarg.0
    IL_0024:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0029:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_002e:  ldc.r4     2.
    IL_0033:  div
    IL_0034:  stloc.1
    IL_0035:  ldloc.1
    IL_0036:  ldc.r4     3.5
    IL_003b:  div
    IL_003c:  stloc.2
    IL_003d:  ldc.r4     35.
    IL_0042:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0047:  stloc.3
    IL_0048:  ldarg.0
    IL_0049:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_004e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> Game.WidgetInput::get_TouchLocations()
    IL_0053:  stloc.s    V_5
    IL_0055:  ldloca.s   V_5
    IL_0057:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation>::GetEnumerator()
    IL_005c:  stloc.s    V_4
    .try
    {
      IL_005e:  br         IL_0253

      IL_0063:  ldloca.s   V_4
      IL_0065:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::get_Current()
      IL_006a:  stloc.s    V_6
      IL_006c:  ldloc.s    V_6
      IL_006e:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0073:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
      IL_0078:  ldarg.0
      IL_0079:  bne.un     IL_0253

      IL_007e:  ldloc.s    V_6
      IL_0080:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_0085:  brtrue.s   IL_00b6

      IL_0087:  ldarg.0
      IL_0088:  ldloc.s    V_6
      IL_008a:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_008f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
      IL_0094:  ldloc.0
      IL_0095:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_009a:  ldloc.2
      IL_009b:  bgt.un.s   IL_00b6

      IL_009d:  ldarg.0
      IL_009e:  ldc.i4.1
      IL_009f:  stfld      bool Game.MoveRoseWidget::m_jump
      IL_00a4:  ldarg.0
      IL_00a5:  ldloc.s    V_6
      IL_00a7:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_00ac:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_00b1:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_00b6:  ldloc.s    V_6
      IL_00b8:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_00bd:  ldc.i4.2
      IL_00be:  bne.un.s   IL_00ed

      IL_00c0:  ldarg.0
      IL_00c1:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_00c6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_00cb:  brfalse.s  IL_00ed

      IL_00cd:  ldloc.s    V_6
      IL_00cf:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_00d4:  ldarg.0
      IL_00d5:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_00da:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_00df:  bne.un.s   IL_00ed

      IL_00e1:  ldarg.0
      IL_00e2:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_00e7:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_00ed:  ldloc.s    V_6
      IL_00ef:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_00f4:  ldc.i4.1
      IL_00f5:  beq.s      IL_0103

      IL_00f7:  ldloc.s    V_6
      IL_00f9:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_00fe:  brtrue     IL_0253

      IL_0103:  ldarg.0
      IL_0104:  ldloc.s    V_6
      IL_0106:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_010b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
      IL_0110:  stloc.s    V_7
      IL_0112:  ldloc.s    V_7
      IL_0114:  ldloc.0
      IL_0115:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_011a:  stloc.s    V_8
      IL_011c:  ldloc.s    V_8
      IL_011e:  ldloc.2
      IL_011f:  ble.un     IL_0253

      IL_0124:  ldloc.s    V_8
      IL_0126:  ldloc.1
      IL_0127:  bgt.un     IL_0253

      IL_012c:  ldloc.s    V_7
      IL_012e:  ldloc.0
      IL_012f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0134:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::UnitY
      IL_0139:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
      IL_013e:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                                 valuetype [Engine]Engine.Vector2)
      IL_0143:  stloc.s    V_9
      IL_0145:  ldloc.s    V_9
      IL_0147:  ldc.r4     0.0
      IL_014c:  sub
      IL_014d:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
      IL_0152:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_0157:  ldloc.3
      IL_0158:  bge.un.s   IL_019c

      IL_015a:  ldarg.0
      IL_015b:  ldarg.0
      IL_015c:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_0161:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0166:  brtrue.s   IL_017e

      IL_0168:  ldc.r4     0.0
      IL_016d:  ldc.r4     0.0
      IL_0172:  ldc.r4     1.
      IL_0177:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_017c:  br.s       IL_0192

      IL_017e:  ldc.r4     0.0
      IL_0183:  ldc.r4     1.
      IL_0188:  ldc.r4     0.0
      IL_018d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0192:  stfld      valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
      IL_0197:  br         IL_0253

      IL_019c:  ldloc.s    V_9
      IL_019e:  ldc.r4     1.5707964
      IL_01a3:  sub
      IL_01a4:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
      IL_01a9:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_01ae:  ldloc.3
      IL_01af:  bge.un.s   IL_01d0

      IL_01b1:  ldarg.0
      IL_01b2:  ldc.r4     -1.
      IL_01b7:  ldc.r4     0.0
      IL_01bc:  ldc.r4     0.0
      IL_01c1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_01c6:  stfld      valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
      IL_01cb:  br         IL_0253

      IL_01d0:  ldloc.s    V_9
      IL_01d2:  ldc.r4     3.1415927
      IL_01d7:  sub
      IL_01d8:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
      IL_01dd:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_01e2:  ldloc.3
      IL_01e3:  bge.un.s   IL_0224

      IL_01e5:  ldarg.0
      IL_01e6:  ldarg.0
      IL_01e7:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.MoveRoseWidget::m_jumpTouchId
      IL_01ec:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_01f1:  brtrue.s   IL_0209

      IL_01f3:  ldc.r4     0.0
      IL_01f8:  ldc.r4     0.0
      IL_01fd:  ldc.r4     -1.
      IL_0202:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0207:  br.s       IL_021d

      IL_0209:  ldc.r4     0.0
      IL_020e:  ldc.r4     -1.
      IL_0213:  ldc.r4     0.0
      IL_0218:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_021d:  stfld      valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
      IL_0222:  br.s       IL_0253

      IL_0224:  ldloc.s    V_9
      IL_0226:  ldc.r4     4.712389
      IL_022b:  sub
      IL_022c:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
      IL_0231:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_0236:  ldloc.3
      IL_0237:  bge.un.s   IL_0253

      IL_0239:  ldarg.0
      IL_023a:  ldc.r4     1.
      IL_023f:  ldc.r4     0.0
      IL_0244:  ldc.r4     0.0
      IL_0249:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_024e:  stfld      valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
      IL_0253:  ldloca.s   V_4
      IL_0255:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::MoveNext()
      IL_025a:  brtrue     IL_0063

      IL_025f:  leave.s    IL_026f

    }  // end .try
    finally
    {
      IL_0261:  ldloca.s   V_4
      IL_0263:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>
      IL_0269:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_026e:  endfinally
    }  // end handler
    IL_026f:  ret
  } // end of method MoveRoseWidget::Update

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ret
  } // end of method MoveRoseWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       1119 (0x45f)
    .maxstack  9
    .locals init (class Game.Subtexture V_0,
             class Game.Subtexture V_1,
             class [Engine]Engine.Graphics.TexturedBatch2D V_2,
             class [Engine]Engine.Graphics.TexturedBatch2D V_3,
             int32 V_4,
             int32 V_5,
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
             valuetype [Engine]Engine.Vector2 V_32,
             valuetype [Engine]Engine.Vector2 V_33,
             valuetype [Engine]Engine.Vector2 V_34)
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
    IL_0023:  ldnull
    IL_0024:  ldnull
    IL_0025:  ldnull
    IL_0026:  ldnull
    IL_0027:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_002c:  stloc.2
    IL_002d:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0032:  ldloc.1
    IL_0033:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_0038:  ldc.i4.0
    IL_0039:  ldc.i4.0
    IL_003a:  ldnull
    IL_003b:  ldnull
    IL_003c:  ldnull
    IL_003d:  ldnull
    IL_003e:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0043:  stloc.3
    IL_0044:  ldloc.2
    IL_0045:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_004a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_004f:  stloc.s    V_4
    IL_0051:  ldloc.3
    IL_0052:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0057:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_005c:  stloc.s    V_5
    IL_005e:  ldarg.0
    IL_005f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0064:  ldc.r4     2.
    IL_0069:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_006e:  stloc.s    V_6
    IL_0070:  ldloca.s   V_7
    IL_0072:  ldc.r4     0.0
    IL_0077:  ldc.r4     0.0
    IL_007c:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0081:  ldloca.s   V_8
    IL_0083:  ldarg.0
    IL_0084:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0089:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_008e:  ldc.r4     0.0
    IL_0093:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0098:  ldloca.s   V_9
    IL_009a:  ldarg.0
    IL_009b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00a0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a5:  ldarg.0
    IL_00a6:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00ab:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b0:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b5:  ldloca.s   V_10
    IL_00b7:  ldc.r4     0.0
    IL_00bc:  ldarg.0
    IL_00bd:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00c2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c7:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00cc:  ldarg.0
    IL_00cd:  ldflda     valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
    IL_00d2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00d7:  ldc.r4     0.0
    IL_00dc:  ble.un.s   IL_0142

    IL_00de:  ldloc.1
    IL_00df:  ldc.r4     0.0
    IL_00e4:  ldc.r4     0.0
    IL_00e9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ee:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_00f3:  stloc.s    V_11
    IL_00f5:  ldloc.1
    IL_00f6:  ldc.r4     1.
    IL_00fb:  ldc.r4     0.0
    IL_0100:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0105:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_010a:  stloc.s    V_12
    IL_010c:  ldloc.1
    IL_010d:  ldc.r4     0.5
    IL_0112:  ldc.r4     0.5
    IL_0117:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_011c:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0121:  stloc.s    V_13
    IL_0123:  ldloc.3
    IL_0124:  ldloc.s    V_7
    IL_0126:  ldloc.s    V_8
    IL_0128:  ldloc.s    V_6
    IL_012a:  ldc.r4     0.0
    IL_012f:  ldloc.s    V_11
    IL_0131:  ldloc.s    V_12
    IL_0133:  ldloc.s    V_13
    IL_0135:  ldarg.0
    IL_0136:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_013b:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0140:  br.s       IL_01a4

    IL_0142:  ldloc.0
    IL_0143:  ldc.r4     0.0
    IL_0148:  ldc.r4     0.0
    IL_014d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0152:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0157:  stloc.s    V_14
    IL_0159:  ldloc.0
    IL_015a:  ldc.r4     1.
    IL_015f:  ldc.r4     0.0
    IL_0164:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0169:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_016e:  stloc.s    V_15
    IL_0170:  ldloc.0
    IL_0171:  ldc.r4     0.5
    IL_0176:  ldc.r4     0.5
    IL_017b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0180:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0185:  stloc.s    V_16
    IL_0187:  ldloc.2
    IL_0188:  ldloc.s    V_7
    IL_018a:  ldloc.s    V_8
    IL_018c:  ldloc.s    V_6
    IL_018e:  ldc.r4     0.0
    IL_0193:  ldloc.s    V_14
    IL_0195:  ldloc.s    V_15
    IL_0197:  ldloc.s    V_16
    IL_0199:  ldarg.0
    IL_019a:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_019f:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01a4:  ldarg.0
    IL_01a5:  ldflda     valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
    IL_01aa:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01af:  ldc.r4     0.0
    IL_01b4:  ble.un.s   IL_021a

    IL_01b6:  ldloc.1
    IL_01b7:  ldc.r4     1.
    IL_01bc:  ldc.r4     0.0
    IL_01c1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01c6:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_01cb:  stloc.s    V_17
    IL_01cd:  ldloc.1
    IL_01ce:  ldc.r4     1.
    IL_01d3:  ldc.r4     1.
    IL_01d8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01dd:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_01e2:  stloc.s    V_18
    IL_01e4:  ldloc.1
    IL_01e5:  ldc.r4     0.5
    IL_01ea:  ldc.r4     0.5
    IL_01ef:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01f4:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_01f9:  stloc.s    V_19
    IL_01fb:  ldloc.3
    IL_01fc:  ldloc.s    V_8
    IL_01fe:  ldloc.s    V_9
    IL_0200:  ldloc.s    V_6
    IL_0202:  ldc.r4     0.0
    IL_0207:  ldloc.s    V_17
    IL_0209:  ldloc.s    V_18
    IL_020b:  ldloc.s    V_19
    IL_020d:  ldarg.0
    IL_020e:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0213:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0218:  br.s       IL_027c

    IL_021a:  ldloc.0
    IL_021b:  ldc.r4     1.
    IL_0220:  ldc.r4     0.0
    IL_0225:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_022a:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_022f:  stloc.s    V_20
    IL_0231:  ldloc.0
    IL_0232:  ldc.r4     1.
    IL_0237:  ldc.r4     1.
    IL_023c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0241:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0246:  stloc.s    V_21
    IL_0248:  ldloc.0
    IL_0249:  ldc.r4     0.5
    IL_024e:  ldc.r4     0.5
    IL_0253:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0258:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_025d:  stloc.s    V_22
    IL_025f:  ldloc.2
    IL_0260:  ldloc.s    V_8
    IL_0262:  ldloc.s    V_9
    IL_0264:  ldloc.s    V_6
    IL_0266:  ldc.r4     0.0
    IL_026b:  ldloc.s    V_20
    IL_026d:  ldloc.s    V_21
    IL_026f:  ldloc.s    V_22
    IL_0271:  ldarg.0
    IL_0272:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0277:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_027c:  ldarg.0
    IL_027d:  ldflda     valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
    IL_0282:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0287:  ldc.r4     0.0
    IL_028c:  bge.un.s   IL_02f2

    IL_028e:  ldloc.1
    IL_028f:  ldc.r4     1.
    IL_0294:  ldc.r4     1.
    IL_0299:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_029e:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_02a3:  stloc.s    V_23
    IL_02a5:  ldloc.1
    IL_02a6:  ldc.r4     0.0
    IL_02ab:  ldc.r4     1.
    IL_02b0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02b5:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_02ba:  stloc.s    V_24
    IL_02bc:  ldloc.1
    IL_02bd:  ldc.r4     0.5
    IL_02c2:  ldc.r4     0.5
    IL_02c7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02cc:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_02d1:  stloc.s    V_25
    IL_02d3:  ldloc.3
    IL_02d4:  ldloc.s    V_9
    IL_02d6:  ldloc.s    V_10
    IL_02d8:  ldloc.s    V_6
    IL_02da:  ldc.r4     0.0
    IL_02df:  ldloc.s    V_23
    IL_02e1:  ldloc.s    V_24
    IL_02e3:  ldloc.s    V_25
    IL_02e5:  ldarg.0
    IL_02e6:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_02eb:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_02f0:  br.s       IL_0354

    IL_02f2:  ldloc.0
    IL_02f3:  ldc.r4     1.
    IL_02f8:  ldc.r4     1.
    IL_02fd:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0302:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0307:  stloc.s    V_26
    IL_0309:  ldloc.0
    IL_030a:  ldc.r4     0.0
    IL_030f:  ldc.r4     1.
    IL_0314:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0319:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_031e:  stloc.s    V_27
    IL_0320:  ldloc.0
    IL_0321:  ldc.r4     0.5
    IL_0326:  ldc.r4     0.5
    IL_032b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0330:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0335:  stloc.s    V_28
    IL_0337:  ldloc.2
    IL_0338:  ldloc.s    V_9
    IL_033a:  ldloc.s    V_10
    IL_033c:  ldloc.s    V_6
    IL_033e:  ldc.r4     0.0
    IL_0343:  ldloc.s    V_26
    IL_0345:  ldloc.s    V_27
    IL_0347:  ldloc.s    V_28
    IL_0349:  ldarg.0
    IL_034a:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_034f:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0354:  ldarg.0
    IL_0355:  ldflda     valuetype [Engine]Engine.Vector3 Game.MoveRoseWidget::m_direction
    IL_035a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_035f:  ldc.r4     0.0
    IL_0364:  bge.un.s   IL_03ca

    IL_0366:  ldloc.1
    IL_0367:  ldc.r4     0.0
    IL_036c:  ldc.r4     1.
    IL_0371:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0376:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_037b:  stloc.s    V_29
    IL_037d:  ldloc.1
    IL_037e:  ldc.r4     0.0
    IL_0383:  ldc.r4     0.0
    IL_0388:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_038d:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_0392:  stloc.s    V_30
    IL_0394:  ldloc.1
    IL_0395:  ldc.r4     0.5
    IL_039a:  ldc.r4     0.5
    IL_039f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03a4:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_03a9:  stloc.s    V_31
    IL_03ab:  ldloc.3
    IL_03ac:  ldloc.s    V_10
    IL_03ae:  ldloc.s    V_7
    IL_03b0:  ldloc.s    V_6
    IL_03b2:  ldc.r4     0.0
    IL_03b7:  ldloc.s    V_29
    IL_03b9:  ldloc.s    V_30
    IL_03bb:  ldloc.s    V_31
    IL_03bd:  ldarg.0
    IL_03be:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_03c3:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_03c8:  br.s       IL_042c

    IL_03ca:  ldloc.0
    IL_03cb:  ldc.r4     0.0
    IL_03d0:  ldc.r4     1.
    IL_03d5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03da:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_03df:  stloc.s    V_32
    IL_03e1:  ldloc.0
    IL_03e2:  ldc.r4     0.0
    IL_03e7:  ldc.r4     0.0
    IL_03ec:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f1:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_03f6:  stloc.s    V_33
    IL_03f8:  ldloc.0
    IL_03f9:  ldc.r4     0.5
    IL_03fe:  ldc.r4     0.5
    IL_0403:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0408:  call       valuetype [Engine]Engine.Vector2 Game.MoveRoseWidget::GetSubtextureCoords(class Game.Subtexture,
                                                                                                   valuetype [Engine]Engine.Vector2)
    IL_040d:  stloc.s    V_34
    IL_040f:  ldloc.2
    IL_0410:  ldloc.s    V_10
    IL_0412:  ldloc.s    V_7
    IL_0414:  ldloc.s    V_6
    IL_0416:  ldc.r4     0.0
    IL_041b:  ldloc.s    V_32
    IL_041d:  ldloc.s    V_33
    IL_041f:  ldloc.s    V_34
    IL_0421:  ldarg.0
    IL_0422:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0427:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_042c:  ldloc.2
    IL_042d:  ldloc.3
    IL_042e:  bne.un.s   IL_0440

    IL_0430:  ldloc.2
    IL_0431:  ldarg.0
    IL_0432:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0437:  ldloc.s    V_4
    IL_0439:  ldc.i4.m1
    IL_043a:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_043f:  ret

    IL_0440:  ldloc.2
    IL_0441:  ldarg.0
    IL_0442:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0447:  ldloc.s    V_4
    IL_0449:  ldc.i4.m1
    IL_044a:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_044f:  ldloc.3
    IL_0450:  ldarg.0
    IL_0451:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0456:  ldloc.s    V_5
    IL_0458:  ldc.i4.m1
    IL_0459:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_045e:  ret
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