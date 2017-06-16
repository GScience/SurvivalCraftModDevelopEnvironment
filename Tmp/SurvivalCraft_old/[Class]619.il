.class public auto ansi beforefieldinit Game.IntroCamera
       extends Game.Camera
{
  .field private valuetype [Engine]Engine.Vector3 '<TargetPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<TargetCameraPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Speed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemCamera subsystemCamera) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.Camera::.ctor(class Game.SubsystemCamera)
    IL_0007:  ldarg.0
    IL_0008:  ldc.r4     1.
    IL_000d:  call       instance void Game.IntroCamera::set_Speed(float32)
    IL_0012:  ret
  } // end of method IntroCamera::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_CameraPosition() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0006:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_0011:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0016:  ret
  } // end of method IntroCamera::get_CameraPosition

  .method public hidebysig specialname instance void 
          set_CameraPosition(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0006:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_0017:  ldarg.0
    IL_0018:  ldarg.1
    IL_0019:  call       instance void Game.IntroCamera::set_TargetCameraPosition(valuetype [Engine]Engine.Vector3)
    IL_001e:  ret
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
          UpdateViewParameters(class Game.SubsystemDrawing subsystemDrawing,
                               class Game.SubsystemAudio subsystemAudio,
                               float32 dt) cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  5
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_TargetCameraPosition()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_000c:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0011:  stloc.0
    IL_0012:  ldarg.1
    IL_0013:  dup
    IL_0014:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0019:  ldarg.3
    IL_001a:  ldarg.0
    IL_001b:  call       instance float32 Game.IntroCamera::get_Speed()
    IL_0020:  mul
    IL_0021:  ldloc.0
    IL_0022:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0027:  ldarg.0
    IL_0028:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_TargetCameraPosition()
    IL_002d:  ldarg.1
    IL_002e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0033:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0038:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_003d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0042:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0047:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_004c:  ldarg.1
    IL_004d:  ldarg.0
    IL_004e:  call       instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_TargetPosition()
    IL_0053:  ldarg.1
    IL_0054:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0059:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_005e:  callvirt   instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
    IL_0063:  ldarg.1
    IL_0064:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0069:  callvirt   instance void Game.SubsystemDrawing::set_ViewUp(valuetype [Engine]Engine.Vector3)
    IL_006e:  ldarg.2
    IL_006f:  ldarg.1
    IL_0070:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0075:  callvirt   instance void Game.SubsystemAudio::set_ListenerPosition(valuetype [Engine]Engine.Vector3)
    IL_007a:  ldarg.2
    IL_007b:  ldarg.1
    IL_007c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0081:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0086:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_008b:  callvirt   instance void Game.SubsystemAudio::set_ListenerRight(valuetype [Engine]Engine.Vector3)
    IL_0090:  ret
  } // end of method IntroCamera::UpdateViewParameters

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