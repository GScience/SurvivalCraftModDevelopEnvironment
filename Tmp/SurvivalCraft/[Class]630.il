.class public auto ansi beforefieldinit Game.SubsystemDrawing
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private valuetype [Engine]Engine.Vector3 m_viewPosition
  .field private valuetype [Engine]Engine.Vector3 m_viewDirection
  .field private valuetype [Engine]Engine.Vector3 m_viewUp
  .field private float32 m_viewFov
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_viewMatrix
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_invertedViewMatrix
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_projectionMatrix
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_invertedProjectionMatrix
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_viewProjectionMatrix
  .field private class [Engine]Engine.BoundingFrustum m_viewFrustum
  .field private bool m_viewFrustumValid
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> m_drawables
  .field private class Game.SortedMultiCollection`2<int32,class Game.IDrawable> m_sortedDrawables
  .method public hidebysig specialname instance int32 
          get_DrawablesCount() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> Game.SubsystemDrawing::m_drawables
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool>::get_Count()
    IL_000b:  ret
  } // end of method SubsystemDrawing::get_DrawablesCount

  .method public hidebysig specialname instance valuetype [Engine]Engine.Point2 
          get_BackbufferSize() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Graphics.Display::get_BackbufferSize()
    IL_0005:  ret
  } // end of method SubsystemDrawing::get_BackbufferSize

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_ViewPosition() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewPosition
    IL_0006:  ret
  } // end of method SubsystemDrawing::get_ViewPosition

  .method public hidebysig specialname instance void 
          set_ViewPosition(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewPosition
    IL_0007:  ldarg.0
    IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewMatrix
    IL_000d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0013:  ldarg.0
    IL_0014:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedViewMatrix
    IL_0019:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_001f:  ldarg.0
    IL_0020:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewProjectionMatrix
    IL_0025:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_002b:  ldarg.0
    IL_002c:  ldc.i4.0
    IL_002d:  stfld      bool Game.SubsystemDrawing::m_viewFrustumValid
    IL_0032:  ret
  } // end of method SubsystemDrawing::set_ViewPosition

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_ViewDirection() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewDirection
    IL_0006:  ret
  } // end of method SubsystemDrawing::get_ViewDirection

  .method public hidebysig specialname instance void 
          set_ViewDirection(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0007:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewDirection
    IL_000c:  ldarg.0
    IL_000d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewMatrix
    IL_0012:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedViewMatrix
    IL_001e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0024:  ldarg.0
    IL_0025:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewProjectionMatrix
    IL_002a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4.0
    IL_0032:  stfld      bool Game.SubsystemDrawing::m_viewFrustumValid
    IL_0037:  ret
  } // end of method SubsystemDrawing::set_ViewDirection

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_ViewUp() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewUp
    IL_0006:  ret
  } // end of method SubsystemDrawing::get_ViewUp

  .method public hidebysig specialname instance void 
          set_ViewUp(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0007:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewUp
    IL_000c:  ldarg.0
    IL_000d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewMatrix
    IL_0012:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedViewMatrix
    IL_001e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0024:  ldarg.0
    IL_0025:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewProjectionMatrix
    IL_002a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4.0
    IL_0032:  stfld      bool Game.SubsystemDrawing::m_viewFrustumValid
    IL_0037:  ret
  } // end of method SubsystemDrawing::set_ViewUp

  .method public hidebysig specialname instance float32 
          get_ViewFov() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemDrawing::m_viewFov
    IL_0006:  ret
  } // end of method SubsystemDrawing::get_ViewFov

  .method public hidebysig specialname instance void 
          set_ViewFov(float32 'value') cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.r4     1.
    IL_0007:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_000c:  ldc.r4     170.
    IL_0011:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0016:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_001b:  stfld      float32 Game.SubsystemDrawing::m_viewFov
    IL_0020:  ldarg.0
    IL_0021:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_projectionMatrix
    IL_0026:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_002c:  ldarg.0
    IL_002d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedProjectionMatrix
    IL_0032:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0038:  ldarg.0
    IL_0039:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewProjectionMatrix
    IL_003e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0044:  ldarg.0
    IL_0045:  ldc.i4.0
    IL_0046:  stfld      bool Game.SubsystemDrawing::m_viewFrustumValid
    IL_004b:  ret
  } // end of method SubsystemDrawing::set_ViewFov

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_ViewMatrix() cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue.s   IL_003a

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewPosition
    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewPosition
    IL_001a:  ldarg.0
    IL_001b:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewDirection
    IL_0020:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0025:  ldarg.0
    IL_0026:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewUp
    IL_002b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0030:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0035:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewMatrix
    IL_003a:  ldarg.0
    IL_003b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewMatrix
    IL_0040:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0045:  ret
  } // end of method SubsystemDrawing::get_ViewMatrix

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_InvertedViewMatrix() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedViewMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue.s   IL_0023

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  call       instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
    IL_0014:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Invert(valuetype [Engine]Engine.Matrix)
    IL_0019:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_001e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedViewMatrix
    IL_0023:  ldarg.0
    IL_0024:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedViewMatrix
    IL_0029:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_002e:  ret
  } // end of method SubsystemDrawing::get_InvertedViewMatrix

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_ProjectionMatrix() cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_projectionMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue.s   IL_004d

    IL_000d:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0012:  stloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      float32 Game.SubsystemDrawing::m_viewFov
    IL_001a:  ldloca.s   V_0
    IL_001c:  call       instance float32 [Engine]Engine.Graphics.Viewport::get_AspectRatio()
    IL_0021:  mul
    IL_0022:  ldarg.0
    IL_0023:  ldfld      float32 Game.SubsystemDrawing::m_viewFov
    IL_0028:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_002d:  ldloca.s   V_0
    IL_002f:  call       instance float32 [Engine]Engine.Graphics.Viewport::get_AspectRatio()
    IL_0034:  ldc.r4     0.1
    IL_0039:  ldc.r4     1024.
    IL_003e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreatePerspectiveFieldOfView(float32,
                                                                                                             float32,
                                                                                                             float32,
                                                                                                             float32)
    IL_0043:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0048:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_projectionMatrix
    IL_004d:  ldarg.0
    IL_004e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_projectionMatrix
    IL_0053:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0058:  ret
  } // end of method SubsystemDrawing::get_ProjectionMatrix

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_InvertedProjectionMatrix() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedProjectionMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue.s   IL_0023

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  call       instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ProjectionMatrix()
    IL_0014:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Invert(valuetype [Engine]Engine.Matrix)
    IL_0019:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_001e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedProjectionMatrix
    IL_0023:  ldarg.0
    IL_0024:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedProjectionMatrix
    IL_0029:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_002e:  ret
  } // end of method SubsystemDrawing::get_InvertedProjectionMatrix

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_ViewProjectionMatrix() cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewProjectionMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue.s   IL_0029

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  call       instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
    IL_0014:  ldarg.0
    IL_0015:  call       instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ProjectionMatrix()
    IL_001a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_001f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0024:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewProjectionMatrix
    IL_0029:  ldarg.0
    IL_002a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewProjectionMatrix
    IL_002f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0034:  ret
  } // end of method SubsystemDrawing::get_ViewProjectionMatrix

  .method public hidebysig specialname instance class [Engine]Engine.BoundingFrustum 
          get_ViewFrustum() cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemDrawing::m_viewFrustumValid
    IL_0006:  brtrue.s   IL_0020

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [Engine]Engine.BoundingFrustum Game.SubsystemDrawing::m_viewFrustum
    IL_000e:  ldarg.0
    IL_000f:  call       instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_0014:  callvirt   instance void [Engine]Engine.BoundingFrustum::set_Matrix(valuetype [Engine]Engine.Matrix)
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.1
    IL_001b:  stfld      bool Game.SubsystemDrawing::m_viewFrustumValid
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [Engine]Engine.BoundingFrustum Game.SubsystemDrawing::m_viewFrustum
    IL_0026:  ret
  } // end of method SubsystemDrawing::get_ViewFrustum

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          WorldToScreen(valuetype [Engine]Engine.Vector3 worldPoint,
                        valuetype [Engine]Engine.Matrix worldMatrix) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0)
    IL_0000:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.0
    IL_000a:  call       instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ProjectionMatrix()
    IL_000f:  ldarg.0
    IL_0010:  call       instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
    IL_0015:  ldarg.2
    IL_0016:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Graphics.Viewport::Project(valuetype [Engine]Engine.Vector3,
                                                                                                             valuetype [Engine]Engine.Matrix,
                                                                                                             valuetype [Engine]Engine.Matrix,
                                                                                                             valuetype [Engine]Engine.Matrix)
    IL_001b:  ret
  } // end of method SubsystemDrawing::WorldToScreen

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          ScreenToWorld(valuetype [Engine]Engine.Vector3 screenPoint,
                        valuetype [Engine]Engine.Matrix worldMatrix) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0)
    IL_0000:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.0
    IL_000a:  call       instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ProjectionMatrix()
    IL_000f:  ldarg.0
    IL_0010:  call       instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
    IL_0015:  ldarg.2
    IL_0016:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Graphics.Viewport::Unproject(valuetype [Engine]Engine.Vector3,
                                                                                                               valuetype [Engine]Engine.Matrix,
                                                                                                               valuetype [Engine]Engine.Matrix,
                                                                                                               valuetype [Engine]Engine.Matrix)
    IL_001b:  ret
  } // end of method SubsystemDrawing::ScreenToWorld

  .method public hidebysig instance void 
          AddDrawable(class Game.IDrawable drawable) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> Game.SubsystemDrawing::m_drawables
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool>::Add(!0,
                                                                                                                                         !1)
    IL_000d:  ret
  } // end of method SubsystemDrawing::AddDrawable

  .method public hidebysig instance void 
          RemoveDrawable(class Game.IDrawable drawable) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> Game.SubsystemDrawing::m_drawables
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool>::Remove(!0)
    IL_000c:  pop
    IL_000d:  ret
  } // end of method SubsystemDrawing::RemoveDrawable

  .method public hidebysig instance void 
          Draw() cil managed
  {
    // 代码大小       171 (0xab)
    .maxstack  3
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IDrawable,bool> V_0,
             class Game.IDrawable V_1,
             int32[] V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.IDrawable> V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SortedMultiCollection`2<int32,class Game.IDrawable> Game.SubsystemDrawing::m_sortedDrawables
    IL_0006:  callvirt   instance void class Game.SortedMultiCollection`2<int32,class Game.IDrawable>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> Game.SubsystemDrawing::m_drawables
    IL_0011:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool>::get_Keys()
    IL_0016:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.IDrawable,bool>::GetEnumerator()
    IL_001b:  stloc.0
    .try
    {
      IL_001c:  br.s       IL_004e

      IL_001e:  ldloca.s   V_0
      IL_0020:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IDrawable,bool>::get_Current()
      IL_0025:  stloc.1
      IL_0026:  ldloc.1
      IL_0027:  callvirt   instance int32[] Game.IDrawable::get_DrawOrders()
      IL_002c:  stloc.2
      IL_002d:  ldc.i4.0
      IL_002e:  stloc.3
      IL_002f:  br.s       IL_0048

      IL_0031:  ldloc.2
      IL_0032:  ldloc.3
      IL_0033:  ldelem.i4
      IL_0034:  stloc.s    V_4
      IL_0036:  ldarg.0
      IL_0037:  ldfld      class Game.SortedMultiCollection`2<int32,class Game.IDrawable> Game.SubsystemDrawing::m_sortedDrawables
      IL_003c:  ldloc.s    V_4
      IL_003e:  ldloc.1
      IL_003f:  callvirt   instance void class Game.SortedMultiCollection`2<int32,class Game.IDrawable>::Add(!0,
                                                                                                             !1)
      IL_0044:  ldloc.3
      IL_0045:  ldc.i4.1
      IL_0046:  add
      IL_0047:  stloc.3
      IL_0048:  ldloc.3
      IL_0049:  ldloc.2
      IL_004a:  ldlen
      IL_004b:  conv.i4
      IL_004c:  blt.s      IL_0031

      IL_004e:  ldloca.s   V_0
      IL_0050:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IDrawable,bool>::MoveNext()
      IL_0055:  brtrue.s   IL_001e

      IL_0057:  leave.s    IL_0067

    }  // end .try
    finally
    {
      IL_0059:  ldloca.s   V_0
      IL_005b:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IDrawable,bool>
      IL_0061:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0066:  endfinally
    }  // end handler
    IL_0067:  ldc.i4.0
    IL_0068:  stloc.s    V_5
    IL_006a:  br.s       IL_009b

    IL_006c:  nop
    .try
    {
      IL_006d:  ldarg.0
      IL_006e:  ldfld      class Game.SortedMultiCollection`2<int32,class Game.IDrawable> Game.SubsystemDrawing::m_sortedDrawables
      IL_0073:  ldloc.s    V_5
      IL_0075:  callvirt   instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> class Game.SortedMultiCollection`2<int32,class Game.IDrawable>::get_Item(int32)
      IL_007a:  stloc.s    V_6
      IL_007c:  ldloca.s   V_6
      IL_007e:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.IDrawable>::get_Value()
      IL_0083:  ldarg.0
      IL_0084:  ldloca.s   V_6
      IL_0086:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.IDrawable>::get_Key()
      IL_008b:  callvirt   instance void Game.IDrawable::Draw(class Game.SubsystemDrawing,
                                                              int32)
      IL_0090:  leave.s    IL_0095

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0092:  pop
      IL_0093:  leave.s    IL_0095

    }  // end handler
    IL_0095:  ldloc.s    V_5
    IL_0097:  ldc.i4.1
    IL_0098:  add
    IL_0099:  stloc.s    V_5
    IL_009b:  ldloc.s    V_5
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.SortedMultiCollection`2<int32,class Game.IDrawable> Game.SubsystemDrawing::m_sortedDrawables
    IL_00a3:  callvirt   instance int32 class Game.SortedMultiCollection`2<int32,class Game.IDrawable>::get_Count()
    IL_00a8:  blt.s      IL_006c

    IL_00aa:  ret
  } // end of method SubsystemDrawing::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IDrawable> V_0,
             class Game.IDrawable V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.SubsystemDrawing::Display_DeviceReset()
    IL_0007:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_000c:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_0011:  ldarg.0
    IL_0012:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0017:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Project::FindSubsystems<class Game.IDrawable>()
    IL_001c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.IDrawable>::GetEnumerator()
    IL_0021:  stloc.0
    .try
    {
      IL_0022:  br.s       IL_0032

      IL_0024:  ldloc.0
      IL_0025:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IDrawable>::get_Current()
      IL_002a:  stloc.1
      IL_002b:  ldarg.0
      IL_002c:  ldloc.1
      IL_002d:  call       instance void Game.SubsystemDrawing::AddDrawable(class Game.IDrawable)
      IL_0032:  ldloc.0
      IL_0033:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0038:  brtrue.s   IL_0024

      IL_003a:  leave.s    IL_0046

    }  // end .try
    finally
    {
      IL_003c:  ldloc.0
      IL_003d:  brfalse.s  IL_0045

      IL_003f:  ldloc.0
      IL_0040:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0045:  endfinally
    }  // end handler
    IL_0046:  ret
  } // end of method SubsystemDrawing::Load

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.SubsystemDrawing::Display_DeviceReset()
    IL_0007:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_000c:  call       void [Engine]Engine.Graphics.Display::remove_DeviceReset(class [System.Runtime]System.Action)
    IL_0011:  ret
  } // end of method SubsystemDrawing::Dispose

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IDrawable> V_1,
             class Game.IDrawable V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IDrawable>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IDrawable>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0020

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldloc.2
      IL_001b:  call       instance void Game.SubsystemDrawing::AddDrawable(class Game.IDrawable)
      IL_0020:  ldloca.s   V_0
      IL_0022:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>::MoveNext()
      IL_0027:  brtrue.s   IL_0011

      IL_0029:  leave.s    IL_0039

    }  // end .try
    finally
    {
      IL_002b:  ldloca.s   V_0
      IL_002d:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>
      IL_0033:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0038:  endfinally
    }  // end handler
    IL_0039:  ret
  } // end of method SubsystemDrawing::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IDrawable> V_1,
             class Game.IDrawable V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IDrawable>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IDrawable>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0020

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldloc.2
      IL_001b:  call       instance void Game.SubsystemDrawing::RemoveDrawable(class Game.IDrawable)
      IL_0020:  ldloca.s   V_0
      IL_0022:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>::MoveNext()
      IL_0027:  brtrue.s   IL_0011

      IL_0029:  leave.s    IL_0039

    }  // end .try
    finally
    {
      IL_002b:  ldloca.s   V_0
      IL_002d:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>
      IL_0033:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0038:  endfinally
    }  // end handler
    IL_0039:  ret
  } // end of method SubsystemDrawing::OnEntityRemoved

  .method private hidebysig instance void 
          Display_DeviceReset() cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_viewMatrix
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_000c:  ldarg.0
    IL_000d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedViewMatrix
    IL_0012:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_projectionMatrix
    IL_001e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0024:  ldarg.0
    IL_0025:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.SubsystemDrawing::m_invertedProjectionMatrix
    IL_002a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0030:  ret
  } // end of method SubsystemDrawing::Display_DeviceReset

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       124 (0x7c)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0006:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewPosition
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     0.0
    IL_0011:  ldc.r4     0.0
    IL_0016:  ldc.r4     1.
    IL_001b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0020:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewDirection
    IL_0025:  ldarg.0
    IL_0026:  ldc.r4     0.0
    IL_002b:  ldc.r4     1.
    IL_0030:  ldc.r4     0.0
    IL_0035:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_003a:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::m_viewUp
    IL_003f:  ldarg.0
    IL_0040:  ldc.r4     80.
    IL_0045:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_004a:  stfld      float32 Game.SubsystemDrawing::m_viewFov
    IL_004f:  ldarg.0
    IL_0050:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0055:  newobj     instance void [Engine]Engine.BoundingFrustum::.ctor(valuetype [Engine]Engine.Matrix)
    IL_005a:  stfld      class [Engine]Engine.BoundingFrustum Game.SubsystemDrawing::m_viewFrustum
    IL_005f:  ldarg.0
    IL_0060:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool>::.ctor()
    IL_0065:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> Game.SubsystemDrawing::m_drawables
    IL_006a:  ldarg.0
    IL_006b:  newobj     instance void class Game.SortedMultiCollection`2<int32,class Game.IDrawable>::.ctor()
    IL_0070:  stfld      class Game.SortedMultiCollection`2<int32,class Game.IDrawable> Game.SubsystemDrawing::m_sortedDrawables
    IL_0075:  ldarg.0
    IL_0076:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_007b:  ret
  } // end of method SubsystemDrawing::.ctor

  .property instance int32 DrawablesCount()
  {
    .get instance int32 Game.SubsystemDrawing::get_DrawablesCount()
  } // end of property SubsystemDrawing::DrawablesCount
  .property instance valuetype [Engine]Engine.Point2
          BackbufferSize()
  {
    .get instance valuetype [Engine]Engine.Point2 Game.SubsystemDrawing::get_BackbufferSize()
  } // end of property SubsystemDrawing::BackbufferSize
  .property instance valuetype [Engine]Engine.Vector3
          ViewPosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    .set instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
  } // end of property SubsystemDrawing::ViewPosition
  .property instance valuetype [Engine]Engine.Vector3
          ViewDirection()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    .set instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
  } // end of property SubsystemDrawing::ViewDirection
  .property instance valuetype [Engine]Engine.Vector3
          ViewUp()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewUp()
    .set instance void Game.SubsystemDrawing::set_ViewUp(valuetype [Engine]Engine.Vector3)
  } // end of property SubsystemDrawing::ViewUp
  .property instance float32 ViewFov()
  {
    .get instance float32 Game.SubsystemDrawing::get_ViewFov()
    .set instance void Game.SubsystemDrawing::set_ViewFov(float32)
  } // end of property SubsystemDrawing::ViewFov
  .property instance valuetype [Engine]Engine.Matrix
          ViewMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
  } // end of property SubsystemDrawing::ViewMatrix
  .property instance valuetype [Engine]Engine.Matrix
          InvertedViewMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_InvertedViewMatrix()
  } // end of property SubsystemDrawing::InvertedViewMatrix
  .property instance valuetype [Engine]Engine.Matrix
          ProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ProjectionMatrix()
  } // end of property SubsystemDrawing::ProjectionMatrix
  .property instance valuetype [Engine]Engine.Matrix
          InvertedProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_InvertedProjectionMatrix()
  } // end of property SubsystemDrawing::InvertedProjectionMatrix
  .property instance valuetype [Engine]Engine.Matrix
          ViewProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
  } // end of property SubsystemDrawing::ViewProjectionMatrix
  .property instance class [Engine]Engine.BoundingFrustum
          ViewFrustum()
  {
    .get instance class [Engine]Engine.BoundingFrustum Game.SubsystemDrawing::get_ViewFrustum()
  } // end of property SubsystemDrawing::ViewFrustum
} // end of class Game.SubsystemDrawing