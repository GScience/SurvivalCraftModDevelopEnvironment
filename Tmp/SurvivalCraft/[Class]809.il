.class public abstract auto ansi beforefieldinit Game.Camera
       extends [System.Runtime]System.Object
{
  .field private class Game.View '<View>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.View view) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Game.Camera::set_View(class Game.View)
    IL_000d:  ret
  } // end of method Camera::.ctor

  .method public hidebysig specialname instance class Game.View 
          get_View() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.View Game.Camera::'<View>k__BackingField'
    IL_0006:  ret
  } // end of method Camera::get_View

  .method private hidebysig specialname instance void 
          set_View(class Game.View 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.View Game.Camera::'<View>k__BackingField'
    IL_0007:  ret
  } // end of method Camera::set_View

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          WorldToScreen(valuetype [Engine]Engine.Vector3 worldPoint,
                        valuetype [Engine]Engine.Matrix worldMatrix) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldc.i4.0
    IL_0003:  ldc.i4.0
    IL_0004:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0009:  ldfld      int32 [Engine]Engine.Point2::X
    IL_000e:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0013:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0018:  ldc.r4     0.0
    IL_001d:  ldc.r4     1.
    IL_0022:  call       instance void [Engine]Engine.Graphics.Viewport::.ctor(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               float32)
    IL_0027:  ldloca.s   V_0
    IL_0029:  ldarg.1
    IL_002a:  ldarg.0
    IL_002b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ScreenProjectionMatrix()
    IL_0030:  ldarg.0
    IL_0031:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_0036:  ldarg.2
    IL_0037:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Graphics.Viewport::Project(valuetype [Engine]Engine.Vector3,
                                                                                                             valuetype [Engine]Engine.Matrix,
                                                                                                             valuetype [Engine]Engine.Matrix,
                                                                                                             valuetype [Engine]Engine.Matrix)
    IL_003c:  ret
  } // end of method Camera::WorldToScreen

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          ScreenToWorld(valuetype [Engine]Engine.Vector3 screenPoint,
                        valuetype [Engine]Engine.Matrix worldMatrix) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldc.i4.0
    IL_0003:  ldc.i4.0
    IL_0004:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0009:  ldfld      int32 [Engine]Engine.Point2::X
    IL_000e:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0013:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0018:  ldc.r4     0.0
    IL_001d:  ldc.r4     1.
    IL_0022:  call       instance void [Engine]Engine.Graphics.Viewport::.ctor(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               float32)
    IL_0027:  ldloca.s   V_0
    IL_0029:  ldarg.1
    IL_002a:  ldarg.0
    IL_002b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ScreenProjectionMatrix()
    IL_0030:  ldarg.0
    IL_0031:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_0036:  ldarg.2
    IL_0037:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Graphics.Viewport::Unproject(valuetype [Engine]Engine.Vector3,
                                                                                                               valuetype [Engine]Engine.Matrix,
                                                                                                               valuetype [Engine]Engine.Matrix,
                                                                                                               valuetype [Engine]Engine.Matrix)
    IL_003c:  ret
  } // end of method Camera::ScreenToWorld

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Vector3 
          get_ViewPosition() cil managed
  {
  } // end of method Camera::get_ViewPosition

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Vector3 
          get_ViewDirection() cil managed
  {
  } // end of method Camera::get_ViewDirection

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Vector3 
          get_ViewUp() cil managed
  {
  } // end of method Camera::get_ViewUp

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_ViewMatrix() cil managed
  {
  } // end of method Camera::get_ViewMatrix

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_InvertedViewMatrix() cil managed
  {
  } // end of method Camera::get_InvertedViewMatrix

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_ProjectionMatrix() cil managed
  {
  } // end of method Camera::get_ProjectionMatrix

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_ScreenProjectionMatrix() cil managed
  {
  } // end of method Camera::get_ScreenProjectionMatrix

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_InvertedProjectionMatrix() cil managed
  {
  } // end of method Camera::get_InvertedProjectionMatrix

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_ViewProjectionMatrix() cil managed
  {
  } // end of method Camera::get_ViewProjectionMatrix

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_WidgetMatrix() cil managed
  {
  } // end of method Camera::get_WidgetMatrix

  .method public hidebysig newslot specialname abstract virtual 
          instance class [Engine]Engine.BoundingFrustum 
          get_ViewFrustum() cil managed
  {
  } // end of method Camera::get_ViewFrustum

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_UsesMovementControls() cil managed
  {
  } // end of method Camera::get_UsesMovementControls

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_IsEntityControlEnabled() cil managed
  {
  } // end of method Camera::get_IsEntityControlEnabled

  .method public hidebysig newslot virtual 
          instance void  Activate(class Game.Camera previousCamera) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Camera::Activate

  .method public hidebysig newslot abstract virtual 
          instance void  Update(float32 dt) cil managed
  {
  } // end of method Camera::Update

  .method public hidebysig newslot abstract virtual 
          instance void  Draw() cil managed
  {
  } // end of method Camera::Draw

  .property instance class Game.View View()
  {
    .get instance class Game.View Game.Camera::get_View()
    .set instance void Game.Camera::set_View(class Game.View)
  } // end of property Camera::View
  .property instance valuetype [Engine]Engine.Vector3
          ViewPosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
  } // end of property Camera::ViewPosition
  .property instance valuetype [Engine]Engine.Vector3
          ViewDirection()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
  } // end of property Camera::ViewDirection
  .property instance valuetype [Engine]Engine.Vector3
          ViewUp()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewUp()
  } // end of property Camera::ViewUp
  .property instance valuetype [Engine]Engine.Matrix
          ViewMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
  } // end of property Camera::ViewMatrix
  .property instance valuetype [Engine]Engine.Matrix
          InvertedViewMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Camera::get_InvertedViewMatrix()
  } // end of property Camera::InvertedViewMatrix
  .property instance valuetype [Engine]Engine.Matrix
          ProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Camera::get_ProjectionMatrix()
  } // end of property Camera::ProjectionMatrix
  .property instance valuetype [Engine]Engine.Matrix
          ScreenProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Camera::get_ScreenProjectionMatrix()
  } // end of property Camera::ScreenProjectionMatrix
  .property instance valuetype [Engine]Engine.Matrix
          InvertedProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Camera::get_InvertedProjectionMatrix()
  } // end of property Camera::InvertedProjectionMatrix
  .property instance valuetype [Engine]Engine.Matrix
          ViewProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
  } // end of property Camera::ViewProjectionMatrix
  .property instance valuetype [Engine]Engine.Matrix
          WidgetMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Camera::get_WidgetMatrix()
  } // end of property Camera::WidgetMatrix
  .property instance class [Engine]Engine.BoundingFrustum
          ViewFrustum()
  {
    .get instance class [Engine]Engine.BoundingFrustum Game.Camera::get_ViewFrustum()
  } // end of property Camera::ViewFrustum
  .property instance bool UsesMovementControls()
  {
    .get instance bool Game.Camera::get_UsesMovementControls()
  } // end of property Camera::UsesMovementControls
  .property instance bool IsEntityControlEnabled()
  {
    .get instance bool Game.Camera::get_IsEntityControlEnabled()
  } // end of property Camera::IsEntityControlEnabled
} // end of class Game.Camera