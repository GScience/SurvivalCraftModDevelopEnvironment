.class public auto ansi beforefieldinit Game.DebugCamera
       extends Game.Camera
{
  .field public static string AmbientParameters
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemCamera subsystemCamera) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.Camera::.ctor(class Game.SubsystemCamera)
    IL_0007:  ret
  } // end of method DebugCamera::.ctor

  .method public hidebysig virtual instance void 
          UpdateViewParameters(class Game.SubsystemDrawing subsystemDrawing,
                               class Game.SubsystemAudio subsystemAudio,
                               float32 dt) cil managed
  {
    // 代码大小       553 (0x229)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             bool V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Graphics.Viewport V_8,
             valuetype [Engine]Engine.Vector2 V_9)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0006:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInput>()
    IL_0010:  dup
    IL_0011:  callvirt   instance valuetype Game.PlayerInput Game.SubsystemInput::get_PlayerInput()
    IL_0016:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::Move
    IL_001b:  ldc.r4     1.
    IL_0020:  ldc.r4     0.0
    IL_0025:  ldc.r4     1.
    IL_002a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_002f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0034:  stloc.0
    IL_0035:  callvirt   instance valuetype Game.PlayerInput Game.SubsystemInput::get_PlayerInput()
    IL_003a:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::Look
    IL_003f:  stloc.1
    IL_0040:  ldc.i4.1
    IL_0041:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0046:  ldc.i4.2
    IL_0047:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_004c:  stloc.2
    IL_004d:  ldarg.1
    IL_004e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0053:  stloc.3
    IL_0054:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0059:  stloc.s    V_4
    IL_005b:  ldloc.3
    IL_005c:  ldloc.s    V_4
    IL_005e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0063:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0068:  stloc.s    V_5
    IL_006a:  ldc.r4     8.
    IL_006f:  stloc.s    V_6
    IL_0071:  brfalse.s  IL_007d

    IL_0073:  ldloc.s    V_6
    IL_0075:  ldc.r4     10.
    IL_007a:  mul
    IL_007b:  stloc.s    V_6
    IL_007d:  ldloc.2
    IL_007e:  brfalse.s  IL_008a

    IL_0080:  ldloc.s    V_6
    IL_0082:  ldc.r4     10.
    IL_0087:  div
    IL_0088:  stloc.s    V_6
    IL_008a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_008f:  stloc.s    V_7
    IL_0091:  ldloc.s    V_7
    IL_0093:  ldloc.s    V_6
    IL_0095:  ldarg.3
    IL_0096:  mul
    IL_0097:  ldloc.0
    IL_0098:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_009d:  mul
    IL_009e:  ldloc.s    V_5
    IL_00a0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00a5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00aa:  stloc.s    V_7
    IL_00ac:  ldloc.s    V_7
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  ldarg.3
    IL_00b1:  mul
    IL_00b2:  ldloc.0
    IL_00b3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00b8:  mul
    IL_00b9:  ldloc.s    V_4
    IL_00bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c5:  stloc.s    V_7
    IL_00c7:  ldloc.s    V_7
    IL_00c9:  ldloc.s    V_6
    IL_00cb:  ldarg.3
    IL_00cc:  mul
    IL_00cd:  ldloc.0
    IL_00ce:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00d3:  mul
    IL_00d4:  ldloc.3
    IL_00d5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00da:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00df:  stloc.s    V_7
    IL_00e1:  ldarg.1
    IL_00e2:  dup
    IL_00e3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_00e8:  ldloc.s    V_7
    IL_00ea:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ef:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_00f4:  ldarg.1
    IL_00f5:  ldarg.1
    IL_00f6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_00fb:  ldloc.s    V_4
    IL_00fd:  ldc.r4     -4.
    IL_0102:  ldloc.1
    IL_0103:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0108:  mul
    IL_0109:  ldarg.3
    IL_010a:  mul
    IL_010b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_0110:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0115:  callvirt   instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
    IL_011a:  ldarg.1
    IL_011b:  ldarg.1
    IL_011c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0121:  ldloc.s    V_5
    IL_0123:  ldc.r4     4.
    IL_0128:  ldloc.1
    IL_0129:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_012e:  mul
    IL_012f:  ldarg.3
    IL_0130:  mul
    IL_0131:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_0136:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_013b:  callvirt   instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
    IL_0140:  ldarg.1
    IL_0141:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0146:  callvirt   instance void Game.SubsystemDrawing::set_ViewUp(valuetype [Engine]Engine.Vector3)
    IL_014b:  ldarg.2
    IL_014c:  ldarg.1
    IL_014d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0152:  callvirt   instance void Game.SubsystemAudio::set_ListenerPosition(valuetype [Engine]Engine.Vector3)
    IL_0157:  ldarg.2
    IL_0158:  ldarg.1
    IL_0159:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_015e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0163:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0168:  callvirt   instance void Game.SubsystemAudio::set_ListenerRight(valuetype [Engine]Engine.Vector3)
    IL_016d:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0172:  stloc.s    V_8
    IL_0174:  ldloca.s   V_9
    IL_0176:  ldloc.s    V_8
    IL_0178:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_017d:  ldloc.s    V_8
    IL_017f:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0184:  ldc.i4.2
    IL_0185:  div
    IL_0186:  add
    IL_0187:  conv.r4
    IL_0188:  ldloc.s    V_8
    IL_018a:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_018f:  ldloc.s    V_8
    IL_0191:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0196:  ldc.i4.2
    IL_0197:  div
    IL_0198:  add
    IL_0199:  conv.r4
    IL_019a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_019f:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_01a4:  ldc.i4.0
    IL_01a5:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_01aa:  ldnull
    IL_01ab:  ldnull
    IL_01ac:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_01b1:  dup
    IL_01b2:  ldloc.s    V_9
    IL_01b4:  ldc.r4     5.
    IL_01b9:  ldc.r4     0.0
    IL_01be:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01c3:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_01c8:  ldloc.s    V_9
    IL_01ca:  ldc.r4     5.
    IL_01cf:  ldc.r4     0.0
    IL_01d4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01d9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_01de:  ldc.r4     0.0
    IL_01e3:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01e8:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_01ed:  ldloc.s    V_9
    IL_01ef:  ldc.r4     0.0
    IL_01f4:  ldc.r4     5.
    IL_01f9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01fe:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0203:  ldloc.s    V_9
    IL_0205:  ldc.r4     0.0
    IL_020a:  ldc.r4     5.
    IL_020f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0214:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0219:  ldc.r4     0.0
    IL_021e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0223:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0228:  ret
  } // end of method DebugCamera::UpdateViewParameters

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0005:  stsfld     string Game.DebugCamera::AmbientParameters
    IL_000a:  ret
  } // end of method DebugCamera::.cctor

} // end of class Game.DebugCamera