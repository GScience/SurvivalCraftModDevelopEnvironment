.class public auto ansi beforefieldinit Game.FlyCamera
       extends Game.Camera
{
  .field private valuetype [Engine]Engine.Vector3 m_velocity
  .field private float32 m_rollSpeed
  .field private float32 m_pitchSpeed
  .field private float32 m_rollAngle
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemCamera subsystemCamera) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.Camera::.ctor(class Game.SubsystemCamera)
    IL_0007:  ret
  } // end of method FlyCamera::.ctor

  .method public hidebysig virtual instance void 
          UpdateViewParameters(class Game.SubsystemDrawing subsystemDrawing,
                               class Game.SubsystemAudio subsystemAudio,
                               float32 dt) cil managed
  {
    // 代码大小       571 (0x23b)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             bool V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector3 V_7)
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
    IL_0040:  ldc.i4.s   21
    IL_0042:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0047:  ldc.i4.2
    IL_0048:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_004d:  stloc.2
    IL_004e:  ldarg.1
    IL_004f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0054:  stloc.3
    IL_0055:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_005a:  stloc.s    V_4
    IL_005c:  ldloc.3
    IL_005d:  ldloc.s    V_4
    IL_005f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0064:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0069:  stloc.s    V_5
    IL_006b:  ldc.r4     20.
    IL_0070:  stloc.s    V_6
    IL_0072:  brfalse.s  IL_007e

    IL_0074:  ldloc.s    V_6
    IL_0076:  ldc.r4     2.5
    IL_007b:  mul
    IL_007c:  stloc.s    V_6
    IL_007e:  ldloc.2
    IL_007f:  brfalse.s  IL_008b

    IL_0081:  ldloc.s    V_6
    IL_0083:  ldc.r4     2.5
    IL_0088:  div
    IL_0089:  stloc.s    V_6
    IL_008b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0090:  stloc.s    V_7
    IL_0092:  ldloc.s    V_7
    IL_0094:  ldloc.s    V_6
    IL_0096:  ldarg.3
    IL_0097:  mul
    IL_0098:  ldloc.0
    IL_0099:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_009e:  mul
    IL_009f:  ldloc.s    V_5
    IL_00a1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00a6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ab:  stloc.s    V_7
    IL_00ad:  ldloc.s    V_7
    IL_00af:  ldloc.s    V_6
    IL_00b1:  ldarg.3
    IL_00b2:  mul
    IL_00b3:  ldloc.0
    IL_00b4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00b9:  mul
    IL_00ba:  ldloc.s    V_4
    IL_00bc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c6:  stloc.s    V_7
    IL_00c8:  ldloc.s    V_7
    IL_00ca:  ldloc.s    V_6
    IL_00cc:  ldarg.3
    IL_00cd:  mul
    IL_00ce:  ldloc.0
    IL_00cf:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00d4:  mul
    IL_00d5:  ldloc.3
    IL_00d6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00db:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e0:  stloc.s    V_7
    IL_00e2:  ldarg.0
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      float32 Game.FlyCamera::m_rollSpeed
    IL_00e9:  ldc.r4     -1.5
    IL_00ee:  ldloc.1
    IL_00ef:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00f4:  mul
    IL_00f5:  ldc.r4     3.
    IL_00fa:  ldarg.3
    IL_00fb:  mul
    IL_00fc:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0101:  stfld      float32 Game.FlyCamera::m_rollSpeed
    IL_0106:  ldarg.0
    IL_0107:  ldarg.0
    IL_0108:  ldfld      float32 Game.FlyCamera::m_rollAngle
    IL_010d:  ldarg.0
    IL_010e:  ldfld      float32 Game.FlyCamera::m_rollSpeed
    IL_0113:  ldarg.3
    IL_0114:  mul
    IL_0115:  add
    IL_0116:  stfld      float32 Game.FlyCamera::m_rollAngle
    IL_011b:  ldarg.0
    IL_011c:  ldarg.0
    IL_011d:  ldfld      float32 Game.FlyCamera::m_rollAngle
    IL_0122:  ldc.r4     0.33000001
    IL_0127:  ldarg.3
    IL_0128:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_012d:  mul
    IL_012e:  stfld      float32 Game.FlyCamera::m_rollAngle
    IL_0133:  ldarg.0
    IL_0134:  ldarg.0
    IL_0135:  ldfld      float32 Game.FlyCamera::m_pitchSpeed
    IL_013a:  ldc.r4     -0.2
    IL_013f:  ldloc.1
    IL_0140:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0145:  mul
    IL_0146:  ldc.r4     3.
    IL_014b:  ldarg.3
    IL_014c:  mul
    IL_014d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0152:  stfld      float32 Game.FlyCamera::m_pitchSpeed
    IL_0157:  ldarg.0
    IL_0158:  ldarg.0
    IL_0159:  ldfld      float32 Game.FlyCamera::m_pitchSpeed
    IL_015e:  ldc.r4     0.33000001
    IL_0163:  ldarg.3
    IL_0164:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0169:  mul
    IL_016a:  stfld      float32 Game.FlyCamera::m_pitchSpeed
    IL_016f:  ldarg.0
    IL_0170:  ldarg.0
    IL_0171:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_velocity
    IL_0176:  ldc.r4     3.5
    IL_017b:  ldloc.s    V_7
    IL_017d:  ldarg.0
    IL_017e:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_velocity
    IL_0183:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0188:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_018d:  ldarg.3
    IL_018e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0193:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0198:  stfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_velocity
    IL_019d:  ldarg.1
    IL_019e:  dup
    IL_019f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_01a4:  ldarg.0
    IL_01a5:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_velocity
    IL_01aa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01af:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_01b4:  ldarg.1
    IL_01b5:  ldarg.1
    IL_01b6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_01bb:  ldloc.s    V_4
    IL_01bd:  ldc.r4     3.9999999e-002
    IL_01c2:  ldarg.0
    IL_01c3:  ldfld      float32 Game.FlyCamera::m_rollAngle
    IL_01c8:  mul
    IL_01c9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_01ce:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01d3:  callvirt   instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
    IL_01d8:  ldarg.1
    IL_01d9:  ldarg.1
    IL_01da:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_01df:  ldloc.s    V_5
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      float32 Game.FlyCamera::m_pitchSpeed
    IL_01e7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_01ec:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01f1:  callvirt   instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
    IL_01f6:  ldarg.1
    IL_01f7:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_01fc:  ldarg.1
    IL_01fd:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0202:  ldarg.0
    IL_0203:  ldfld      float32 Game.FlyCamera::m_rollAngle
    IL_0208:  neg
    IL_0209:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_020e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0213:  callvirt   instance void Game.SubsystemDrawing::set_ViewUp(valuetype [Engine]Engine.Vector3)
    IL_0218:  ldarg.2
    IL_0219:  ldarg.1
    IL_021a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_021f:  callvirt   instance void Game.SubsystemAudio::set_ListenerPosition(valuetype [Engine]Engine.Vector3)
    IL_0224:  ldarg.2
    IL_0225:  ldarg.1
    IL_0226:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_022b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0230:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0235:  callvirt   instance void Game.SubsystemAudio::set_ListenerRight(valuetype [Engine]Engine.Vector3)
    IL_023a:  ret
  } // end of method FlyCamera::UpdateViewParameters

} // end of class Game.FlyCamera