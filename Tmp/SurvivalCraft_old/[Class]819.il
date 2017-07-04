.class public auto ansi beforefieldinit Game.StraightFlightCamera
       extends Game.BasePerspectiveCamera
{
  .field private valuetype [Engine]Engine.Vector3 m_position
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.View view) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.BasePerspectiveCamera::.ctor(class Game.View)
    IL_0007:  ret
  } // end of method StraightFlightCamera::.ctor

  .method public hidebysig specialname virtual 
          instance bool  get_UsesMovementControls() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method StraightFlightCamera::get_UsesMovementControls

  .method public hidebysig specialname virtual 
          instance bool  get_IsEntityControlEnabled() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method StraightFlightCamera::get_IsEntityControlEnabled

  .method public hidebysig virtual instance void 
          Activate(class Game.Camera previousCamera) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0007:  stfld      valuetype [Engine]Engine.Vector3 Game.StraightFlightCamera::m_position
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      valuetype [Engine]Engine.Vector3 Game.StraightFlightCamera::m_position
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewUp()
    IL_001f:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_0024:  ret
  } // end of method StraightFlightCamera::Activate

  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       111 (0x6f)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0)
    IL_0000:  ldc.r4     10.
    IL_0005:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_000a:  ldc.r8     0.20000000298023224
    IL_0013:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0018:  mul
    IL_0019:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_001e:  conv.r4
    IL_001f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0024:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0029:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_002e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0033:  stloc.0
    IL_0034:  ldarg.0
    IL_0035:  ldflda     valuetype [Engine]Engine.Vector3 Game.StraightFlightCamera::m_position
    IL_003a:  ldc.r4     120.
    IL_003f:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0044:  ldarg.0
    IL_0045:  ldarg.0
    IL_0046:  ldfld      valuetype [Engine]Engine.Vector3 Game.StraightFlightCamera::m_position
    IL_004b:  ldloc.0
    IL_004c:  ldarg.1
    IL_004d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0052:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0057:  stfld      valuetype [Engine]Engine.Vector3 Game.StraightFlightCamera::m_position
    IL_005c:  ldarg.0
    IL_005d:  ldarg.0
    IL_005e:  ldfld      valuetype [Engine]Engine.Vector3 Game.StraightFlightCamera::m_position
    IL_0063:  ldloc.0
    IL_0064:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0069:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_006e:  ret
  } // end of method StraightFlightCamera::Update

  .property instance bool UsesMovementControls()
  {
    .get instance bool Game.StraightFlightCamera::get_UsesMovementControls()
  } // end of property StraightFlightCamera::UsesMovementControls
  .property instance bool IsEntityControlEnabled()
  {
    .get instance bool Game.StraightFlightCamera::get_IsEntityControlEnabled()
  } // end of property StraightFlightCamera::IsEntityControlEnabled
} // end of class Game.StraightFlightCamera