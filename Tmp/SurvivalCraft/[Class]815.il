.class public auto ansi beforefieldinit Game.IntroCamera
       extends Game.BasePerspectiveCamera
{
  .field private valuetype [Engine]Engine.Vector3 '<CameraPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<TargetPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<TargetCameraPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Speed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.View view) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.BasePerspectiveCamera::.ctor(class Game.View)
    IL_0007:  ldarg.0
    IL_0008:  ldc.r4     1.
    IL_000d:  call       instance void Game.IntroCamera::set_Speed(float32)
    IL_0012:  ret
  } // end of method IntroCamera::.ctor

  .method public hidebysig specialname virtual 
          instance bool  get_UsesMovementControls() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method IntroCamera::get_UsesMovementControls

  .method public hidebysig specialname virtual 
          instance bool  get_IsEntityControlEnabled() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method IntroCamera::get_IsEntityControlEnabled

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_CameraPosition() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.IntroCamera::'<CameraPosition>k__BackingField'
    IL_0006:  ret
  } // end of method IntroCamera::get_CameraPosition

  .method public hidebysig specialname instance void 
          set_CameraPosition(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.IntroCamera::'<CameraPosition>k__BackingField'
    IL_0007:  ret
  } // end of method IntroCamera::set_CameraPosition

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_TargetPosition() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.IntroCamera::'<TargetPosition>k__BackingField'
    IL_0006:  ret
  } // end of method IntroCamera::get_TargetPosition

  .method public hidebysig specialname instance void 
          set_TargetPosition(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.IntroCamera::'<TargetPosition>k__BackingField'
    IL_0007:  ret
  } // end of method IntroCamera::set_TargetPosition

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_TargetCameraPosition() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.IntroCamera::'<TargetCameraPosition>k__BackingField'
    IL_0006:  ret
  } // end of method IntroCamera::get_TargetCameraPosition

  .method public hidebysig specialname instance void 
          set_TargetCameraPosition(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.IntroCamera::'<TargetCameraPosition>k__BackingField'
    IL_0007:  ret
  } // end of method IntroCamera::set_TargetCameraPosition

  .method public hidebysig specialname instance float32 
          get_Speed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.IntroCamera::'<Speed>k__BackingField'
    IL_0006:  ret
  } // end of method IntroCamera::get_Speed

  .method public hidebysig specialname instance void 
          set_Speed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.IntroCamera::'<Speed>k__BackingField'
    IL_0007:  ret
  } // end of method IntroCamera::set_Speed

  .method public hidebysig virtual instance void 
          Activate(class Game.Camera previousCamera) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewUp()
    IL_0013:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_0018:  ret
  } // end of method IntroCamera::Activate

  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       111 (0x6f)
    .maxstack  5
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_TargetCameraPosition()
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_CameraPosition()
    IL_000c:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_CameraPosition()
    IL_0019:  ldarg.1
    IL_001a:  ldarg.0
    IL_001b:  call       instance float32 Game.IntroCamera::get_Speed()
    IL_0020:  mul
    IL_0021:  ldloc.0
    IL_0022:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0027:  ldarg.0
    IL_0028:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_TargetCameraPosition()
    IL_002d:  ldarg.0
    IL_002e:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_CameraPosition()
    IL_0033:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0038:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_003d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0042:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0047:  call       instance void Game.IntroCamera::set_CameraPosition(valuetype [Engine]Engine.Vector3)
    IL_004c:  ldarg.0
    IL_004d:  ldarg.0
    IL_004e:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_CameraPosition()
    IL_0053:  ldarg.0
    IL_0054:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_TargetPosition()
    IL_0059:  ldarg.0
    IL_005a:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_CameraPosition()
    IL_005f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0064:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0069:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_006e:  ret
  } // end of method IntroCamera::Update

  .property instance bool UsesMovementControls()
  {
    .get instance bool Game.IntroCamera::get_UsesMovementControls()
  } // end of property IntroCamera::UsesMovementControls
  .property instance bool IsEntityControlEnabled()
  {
    .get instance bool Game.IntroCamera::get_IsEntityControlEnabled()
  } // end of property IntroCamera::IsEntityControlEnabled
  .property instance valuetype [Engine]Engine.Vector3
          CameraPosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_CameraPosition()
    .set instance void Game.IntroCamera::set_CameraPosition(valuetype [Engine]Engine.Vector3)
  } // end of property IntroCamera::CameraPosition
  .property instance valuetype [Engine]Engine.Vector3
          TargetPosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_TargetPosition()
    .set instance void Game.IntroCamera::set_TargetPosition(valuetype [Engine]Engine.Vector3)
  } // end of property IntroCamera::TargetPosition
  .property instance valuetype [Engine]Engine.Vector3
          TargetCameraPosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_TargetCameraPosition()
    .set instance void Game.IntroCamera::set_TargetCameraPosition(valuetype [Engine]Engine.Vector3)
  } // end of property IntroCamera::TargetCameraPosition
  .property instance float32 Speed()
  {
    .get instance float32 Game.IntroCamera::get_Speed()
    .set instance void Game.IntroCamera::set_Speed(float32)
  } // end of property IntroCamera::Speed
} // end of class Game.IntroCamera