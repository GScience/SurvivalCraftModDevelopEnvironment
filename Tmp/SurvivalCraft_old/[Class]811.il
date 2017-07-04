.class public auto ansi beforefieldinit Game.DebugCamera
       extends Game.BasePerspectiveCamera
{
  .field public static string AmbientParameters
  .field private valuetype [Engine]Engine.Vector3 m_position
  .field private valuetype [Engine]Engine.Vector3 m_direction
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.View view) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.BasePerspectiveCamera::.ctor(class Game.View)
    IL_0007:  ret
  } // end of method DebugCamera::.ctor

  .method public hidebysig specialname virtual 
          instance bool  get_UsesMovementControls() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method DebugCamera::get_UsesMovementControls

  .method public hidebysig specialname virtual 
          instance bool  get_IsEntityControlEnabled() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method DebugCamera::get_IsEntityControlEnabled

  .method public hidebysig virtual instance void 
          Activate(class Game.Camera previousCamera) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0007:  stfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_position
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0013:  stfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_direction
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  ldfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_position
    IL_001f:  ldarg.0
    IL_0020:  ldfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_direction
    IL_0025:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_002a:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_002f:  ret
  } // end of method DebugCamera::Activate

  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       607 (0x25f)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             bool V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             int32 V_9)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.s   31
    IL_0008:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_000d:  brfalse.s  IL_001b

    IL_000f:  ldloca.s   V_0
    IL_0011:  ldc.r4     -1.
    IL_0016:  stfld      float32 [Engine]Engine.Vector3::X
    IL_001b:  ldc.i4.s   34
    IL_001d:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0022:  brfalse.s  IL_0030

    IL_0024:  ldloca.s   V_0
    IL_0026:  ldc.r4     1.
    IL_002b:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0030:  ldc.i4.s   53
    IL_0032:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0037:  brfalse.s  IL_0045

    IL_0039:  ldloca.s   V_0
    IL_003b:  ldc.r4     1.
    IL_0040:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0045:  ldc.i4.s   49
    IL_0047:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_004c:  brfalse.s  IL_005a

    IL_004e:  ldloca.s   V_0
    IL_0050:  ldc.r4     -1.
    IL_0055:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_005a:  ldc.r4     2.9999999e-002
    IL_005f:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Input.Mouse::get_MouseMovement()
    IL_0064:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0069:  conv.r4
    IL_006a:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Input.Mouse::get_MouseMovement()
    IL_006f:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0074:  neg
    IL_0075:  conv.r4
    IL_0076:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_007b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0080:  stloc.1
    IL_0081:  ldc.i4.1
    IL_0082:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0087:  ldc.i4.2
    IL_0088:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_008d:  stloc.2
    IL_008e:  ldarg.0
    IL_008f:  ldfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_direction
    IL_0094:  stloc.3
    IL_0095:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_009a:  stloc.s    V_4
    IL_009c:  ldloc.3
    IL_009d:  ldloc.s    V_4
    IL_009f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00a4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00a9:  stloc.s    V_5
    IL_00ab:  ldc.r4     8.
    IL_00b0:  stloc.s    V_6
    IL_00b2:  brfalse.s  IL_00be

    IL_00b4:  ldloc.s    V_6
    IL_00b6:  ldc.r4     10.
    IL_00bb:  mul
    IL_00bc:  stloc.s    V_6
    IL_00be:  ldloc.2
    IL_00bf:  brfalse.s  IL_00cb

    IL_00c1:  ldloc.s    V_6
    IL_00c3:  ldc.r4     10.
    IL_00c8:  div
    IL_00c9:  stloc.s    V_6
    IL_00cb:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_00d0:  stloc.s    V_7
    IL_00d2:  ldloc.s    V_7
    IL_00d4:  ldloc.s    V_6
    IL_00d6:  ldloc.0
    IL_00d7:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00dc:  mul
    IL_00dd:  ldloc.s    V_5
    IL_00df:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e9:  stloc.s    V_7
    IL_00eb:  ldloc.s    V_7
    IL_00ed:  ldloc.s    V_6
    IL_00ef:  ldloc.0
    IL_00f0:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00f5:  mul
    IL_00f6:  ldloc.s    V_4
    IL_00f8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0102:  stloc.s    V_7
    IL_0104:  ldloc.s    V_7
    IL_0106:  ldloc.s    V_6
    IL_0108:  ldloc.0
    IL_0109:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_010e:  mul
    IL_010f:  ldloc.3
    IL_0110:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0115:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011a:  stloc.s    V_7
    IL_011c:  ldarg.0
    IL_011d:  ldarg.0
    IL_011e:  ldfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_position
    IL_0123:  ldloc.s    V_7
    IL_0125:  ldarg.1
    IL_0126:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_012b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0130:  stfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_position
    IL_0135:  ldarg.0
    IL_0136:  ldarg.0
    IL_0137:  ldfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_direction
    IL_013c:  ldloc.s    V_4
    IL_013e:  ldc.r4     -4.
    IL_0143:  ldloc.1
    IL_0144:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0149:  mul
    IL_014a:  ldarg.1
    IL_014b:  mul
    IL_014c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_0151:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0156:  stfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_direction
    IL_015b:  ldarg.0
    IL_015c:  ldarg.0
    IL_015d:  ldfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_direction
    IL_0162:  ldloc.s    V_5
    IL_0164:  ldc.r4     4.
    IL_0169:  ldloc.1
    IL_016a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_016f:  mul
    IL_0170:  ldarg.1
    IL_0171:  mul
    IL_0172:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_0177:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_017c:  stfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_direction
    IL_0181:  ldarg.0
    IL_0182:  ldarg.0
    IL_0183:  ldfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_position
    IL_0188:  ldarg.0
    IL_0189:  ldfld      valuetype [Engine]Engine.Vector3 Game.DebugCamera::m_direction
    IL_018e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0193:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_0198:  ldarg.0
    IL_0199:  call       instance class Game.View Game.Camera::get_View()
    IL_019e:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_01a3:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_01a8:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01ad:  ldc.r4     2.
    IL_01b2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_01b7:  stloc.s    V_8
    IL_01b9:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_01be:  ldc.i4.0
    IL_01bf:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_01c4:  ldnull
    IL_01c5:  ldnull
    IL_01c6:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_01cb:  dup
    IL_01cc:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::LineVertices
    IL_01d1:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_01d6:  stloc.s    V_9
    IL_01d8:  dup
    IL_01d9:  ldloc.s    V_8
    IL_01db:  ldc.r4     5.
    IL_01e0:  ldc.r4     0.0
    IL_01e5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01ea:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_01ef:  ldloc.s    V_8
    IL_01f1:  ldc.r4     5.
    IL_01f6:  ldc.r4     0.0
    IL_01fb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0200:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0205:  ldc.r4     0.0
    IL_020a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_020f:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0214:  dup
    IL_0215:  ldloc.s    V_8
    IL_0217:  ldc.r4     0.0
    IL_021c:  ldc.r4     5.
    IL_0221:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0226:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_022b:  ldloc.s    V_8
    IL_022d:  ldc.r4     0.0
    IL_0232:  ldc.r4     5.
    IL_0237:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_023c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0241:  ldc.r4     0.0
    IL_0246:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_024b:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0250:  ldarg.0
    IL_0251:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_WidgetMatrix()
    IL_0256:  ldloc.s    V_9
    IL_0258:  ldc.i4.m1
    IL_0259:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformLines(valuetype [Engine]Engine.Matrix,
                                                                                           int32,
                                                                                           int32)
    IL_025e:  ret
  } // end of method DebugCamera::Update

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0005:  stsfld     string Game.DebugCamera::AmbientParameters
    IL_000a:  ret
  } // end of method DebugCamera::.cctor

  .property instance bool UsesMovementControls()
  {
    .get instance bool Game.DebugCamera::get_UsesMovementControls()
  } // end of property DebugCamera::UsesMovementControls
  .property instance bool IsEntityControlEnabled()
  {
    .get instance bool Game.DebugCamera::get_IsEntityControlEnabled()
  } // end of property DebugCamera::IsEntityControlEnabled
} // end of class Game.DebugCamera