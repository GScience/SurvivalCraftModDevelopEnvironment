.class public auto ansi beforefieldinit Game.FlyCamera
       extends Game.BasePerspectiveCamera
{
  .field private valuetype [Engine]Engine.Vector3 m_position
  .field private valuetype [Engine]Engine.Vector3 m_direction
  .field private valuetype [Engine]Engine.Vector3 m_velocity
  .field private float32 m_rollSpeed
  .field private float32 m_pitchSpeed
  .field private float32 m_rollAngle
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.View view) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.BasePerspectiveCamera::.ctor(class Game.View)
    IL_0007:  ret
  } // end of method FlyCamera::.ctor

  .method public hidebysig specialname virtual 
          instance bool  get_UsesMovementControls() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method FlyCamera::get_UsesMovementControls

  .method public hidebysig specialname virtual 
          instance bool  get_IsEntityControlEnabled() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method FlyCamera::get_IsEntityControlEnabled

  .method public hidebysig virtual instance void 
          Activate(class Game.Camera previousCamera) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0007:  stfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_position
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0013:  stfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_direction
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_position
    IL_001f:  ldarg.0
    IL_0020:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_direction
    IL_0025:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_002a:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_002f:  ret
  } // end of method FlyCamera::Activate

  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       584 (0x248)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             class Game.ComponentInput V_2,
             bool V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             float32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0005:  stloc.0
    IL_0006:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_000b:  stloc.1
    IL_000c:  ldarg.0
    IL_000d:  call       instance class Game.View Game.Camera::get_View()
    IL_0012:  callvirt   instance class Game.PlayerData Game.View::get_PlayerData()
    IL_0017:  callvirt   instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_001c:  dup
    IL_001d:  brtrue.s   IL_0023

    IL_001f:  pop
    IL_0020:  ldnull
    IL_0021:  br.s       IL_0028

    IL_0023:  call       instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0028:  stloc.2
    IL_0029:  ldloc.2
    IL_002a:  brfalse.s  IL_005d

    IL_002c:  ldloc.2
    IL_002d:  callvirt   instance valuetype Game.PlayerInput Game.ComponentInput::get_PlayerInput()
    IL_0032:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerInput::CameraMove
    IL_0037:  ldc.r4     1.
    IL_003c:  ldc.r4     0.0
    IL_0041:  ldc.r4     1.
    IL_0046:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_004b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0050:  stloc.0
    IL_0051:  ldloc.2
    IL_0052:  callvirt   instance valuetype Game.PlayerInput Game.ComponentInput::get_PlayerInput()
    IL_0057:  ldfld      valuetype [Engine]Engine.Vector2 Game.PlayerInput::CameraLook
    IL_005c:  stloc.1
    IL_005d:  ldc.i4.1
    IL_005e:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0063:  ldc.i4.2
    IL_0064:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0069:  stloc.3
    IL_006a:  ldarg.0
    IL_006b:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_direction
    IL_0070:  stloc.s    V_4
    IL_0072:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0077:  stloc.s    V_5
    IL_0079:  ldloc.s    V_4
    IL_007b:  ldloc.s    V_5
    IL_007d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0082:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0087:  stloc.s    V_6
    IL_0089:  ldc.r4     20.
    IL_008e:  stloc.s    V_7
    IL_0090:  brfalse.s  IL_009c

    IL_0092:  ldloc.s    V_7
    IL_0094:  ldc.r4     2.5
    IL_0099:  mul
    IL_009a:  stloc.s    V_7
    IL_009c:  ldloc.3
    IL_009d:  brfalse.s  IL_00a9

    IL_009f:  ldloc.s    V_7
    IL_00a1:  ldc.r4     2.5
    IL_00a6:  div
    IL_00a7:  stloc.s    V_7
    IL_00a9:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_00ae:  stloc.s    V_8
    IL_00b0:  ldloc.s    V_8
    IL_00b2:  ldloc.s    V_7
    IL_00b4:  ldloc.0
    IL_00b5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00ba:  mul
    IL_00bb:  ldloc.s    V_6
    IL_00bd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c7:  stloc.s    V_8
    IL_00c9:  ldloc.s    V_8
    IL_00cb:  ldloc.s    V_7
    IL_00cd:  ldloc.0
    IL_00ce:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00d3:  mul
    IL_00d4:  ldloc.s    V_5
    IL_00d6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00db:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e0:  stloc.s    V_8
    IL_00e2:  ldloc.s    V_8
    IL_00e4:  ldloc.s    V_7
    IL_00e6:  ldloc.0
    IL_00e7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00ec:  mul
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f9:  stloc.s    V_8
    IL_00fb:  ldarg.0
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      float32 Game.FlyCamera::m_rollSpeed
    IL_0102:  ldc.r4     -1.5
    IL_0107:  ldloc.1
    IL_0108:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_010d:  mul
    IL_010e:  ldc.r4     3.
    IL_0113:  ldarg.1
    IL_0114:  mul
    IL_0115:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_011a:  stfld      float32 Game.FlyCamera::m_rollSpeed
    IL_011f:  ldarg.0
    IL_0120:  ldarg.0
    IL_0121:  ldfld      float32 Game.FlyCamera::m_rollAngle
    IL_0126:  ldarg.0
    IL_0127:  ldfld      float32 Game.FlyCamera::m_rollSpeed
    IL_012c:  ldarg.1
    IL_012d:  mul
    IL_012e:  add
    IL_012f:  stfld      float32 Game.FlyCamera::m_rollAngle
    IL_0134:  ldarg.0
    IL_0135:  ldarg.0
    IL_0136:  ldfld      float32 Game.FlyCamera::m_rollAngle
    IL_013b:  ldc.r4     0.33000001
    IL_0140:  ldarg.1
    IL_0141:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0146:  mul
    IL_0147:  stfld      float32 Game.FlyCamera::m_rollAngle
    IL_014c:  ldarg.0
    IL_014d:  ldarg.0
    IL_014e:  ldfld      float32 Game.FlyCamera::m_pitchSpeed
    IL_0153:  ldc.r4     -0.2
    IL_0158:  ldloc.1
    IL_0159:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_015e:  mul
    IL_015f:  ldc.r4     3.
    IL_0164:  ldarg.1
    IL_0165:  mul
    IL_0166:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_016b:  stfld      float32 Game.FlyCamera::m_pitchSpeed
    IL_0170:  ldarg.0
    IL_0171:  ldarg.0
    IL_0172:  ldfld      float32 Game.FlyCamera::m_pitchSpeed
    IL_0177:  ldc.r4     0.33000001
    IL_017c:  ldarg.1
    IL_017d:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0182:  mul
    IL_0183:  stfld      float32 Game.FlyCamera::m_pitchSpeed
    IL_0188:  ldarg.0
    IL_0189:  ldarg.0
    IL_018a:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_velocity
    IL_018f:  ldc.r4     3.5
    IL_0194:  ldloc.s    V_8
    IL_0196:  ldarg.0
    IL_0197:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_velocity
    IL_019c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01a1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a6:  ldarg.1
    IL_01a7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01ac:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b1:  stfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_velocity
    IL_01b6:  ldarg.0
    IL_01b7:  ldarg.0
    IL_01b8:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_position
    IL_01bd:  ldarg.0
    IL_01be:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_velocity
    IL_01c3:  ldarg.1
    IL_01c4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ce:  stfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_position
    IL_01d3:  ldarg.0
    IL_01d4:  ldarg.0
    IL_01d5:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_direction
    IL_01da:  ldloc.s    V_5
    IL_01dc:  ldc.r4     3.9999999e-002
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      float32 Game.FlyCamera::m_rollAngle
    IL_01e7:  mul
    IL_01e8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_01ed:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01f2:  stfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_direction
    IL_01f7:  ldarg.0
    IL_01f8:  ldarg.0
    IL_01f9:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_direction
    IL_01fe:  ldloc.s    V_6
    IL_0200:  ldarg.0
    IL_0201:  ldfld      float32 Game.FlyCamera::m_pitchSpeed
    IL_0206:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_020b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0210:  stfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_direction
    IL_0215:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_021a:  ldarg.0
    IL_021b:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_direction
    IL_0220:  ldarg.0
    IL_0221:  ldfld      float32 Game.FlyCamera::m_rollAngle
    IL_0226:  neg
    IL_0227:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_022c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0231:  stloc.s    V_9
    IL_0233:  ldarg.0
    IL_0234:  ldarg.0
    IL_0235:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_position
    IL_023a:  ldarg.0
    IL_023b:  ldfld      valuetype [Engine]Engine.Vector3 Game.FlyCamera::m_direction
    IL_0240:  ldloc.s    V_9
    IL_0242:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_0247:  ret
  } // end of method FlyCamera::Update

  .property instance bool UsesMovementControls()
  {
    .get instance bool Game.FlyCamera::get_UsesMovementControls()
  } // end of property FlyCamera::UsesMovementControls
  .property instance bool IsEntityControlEnabled()
  {
    .get instance bool Game.FlyCamera::get_IsEntityControlEnabled()
  } // end of property FlyCamera::IsEntityControlEnabled
} // end of class Game.FlyCamera