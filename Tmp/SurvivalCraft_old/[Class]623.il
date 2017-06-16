.class public abstract auto ansi beforefieldinit Game.Camera
       extends [System.Runtime]System.Object
{
  .field private class Game.SubsystemCamera '<SubsystemCamera>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.SubsystemCamera 
          get_SubsystemCamera() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemCamera Game.Camera::'<SubsystemCamera>k__BackingField'
    IL_0006:  ret
  } // end of method Camera::get_SubsystemCamera

  .method private hidebysig specialname instance void 
          set_SubsystemCamera(class Game.SubsystemCamera 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemCamera Game.Camera::'<SubsystemCamera>k__BackingField'
    IL_0007:  ret
  } // end of method Camera::set_SubsystemCamera

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemCamera subsystemCamera) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Game.Camera::set_SubsystemCamera(class Game.SubsystemCamera)
    IL_000d:  ret
  } // end of method Camera::.ctor

  .method public hidebysig newslot virtual 
          instance void  Enter() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Camera::Enter

  .method public hidebysig newslot virtual 
          instance void  Leave() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Camera::Leave

  .method public hidebysig newslot abstract virtual 
          instance void  UpdateViewParameters(class Game.SubsystemDrawing subsystemDrawing,
                                              class Game.SubsystemAudio subsystemAudio,
                                              float32 dt) cil managed
  {
  } // end of method Camera::UpdateViewParameters

  .property instance class Game.SubsystemCamera
          SubsystemCamera()
  {
    .get instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    .set instance void Game.Camera::set_SubsystemCamera(class Game.SubsystemCamera)
  } // end of property Camera::SubsystemCamera
} // end of class Game.Camera