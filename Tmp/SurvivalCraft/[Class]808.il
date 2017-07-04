.class public abstract auto ansi beforefieldinit Game.BasePerspectiveCamera
       extends Game.Camera
{
  .field private valuetype [Engine]Engine.Vector3 m_viewPosition
  .field private valuetype [Engine]Engine.Vector3 m_viewDirection
  .field private valuetype [Engine]Engine.Vector3 m_viewUp
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_viewMatrix
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_invertedViewMatrix
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_projectionMatrix
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_invertedProjectionMatrix
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_screenProjectionMatrix
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_viewProjectionMatrix
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_widgetMatrix
  .field private class [Engine]Engine.BoundingFrustum m_viewFrustum
  .field private bool m_viewFrustumValid
  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Vector3 
          get_ViewPosition() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::m_viewPosition
    IL_0006:  ret
  } // end of method BasePerspectiveCamera::get_ViewPosition

  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Vector3 
          get_ViewDirection() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::m_viewDirection
    IL_0006:  ret
  } // end of method BasePerspectiveCamera::get_ViewDirection

  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Vector3 
          get_ViewUp() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::m_viewUp
    IL_0006:  ret
  } // end of method BasePerspectiveCamera::get_ViewUp

  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_ViewMatrix() cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_viewMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue.s   IL_003a

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::m_viewPosition
    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::m_viewPosition
    IL_001a:  ldarg.0
    IL_001b:  ldfld      valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::m_viewDirection
    IL_0020:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0025:  ldarg.0
    IL_0026:  ldfld      valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::m_viewUp
    IL_002b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0030:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0035:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_viewMatrix
    IL_003a:  ldarg.0
    IL_003b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_viewMatrix
    IL_0040:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0045:  ret
  } // end of method BasePerspectiveCamera::get_ViewMatrix

  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_InvertedViewMatrix() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_invertedViewMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue.s   IL_0023

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_0014:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Invert(valuetype [Engine]Engine.Matrix)
    IL_0019:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_001e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_invertedViewMatrix
    IL_0023:  ldarg.0
    IL_0024:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_invertedViewMatrix
    IL_0029:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_002e:  ret
  } // end of method BasePerspectiveCamera::get_InvertedViewMatrix

  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_ProjectionMatrix() cil managed
  {
    // 代码大小       277 (0x115)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> V_0,
             class Game.GameViewWidget V_1,
             valuetype [Engine]Engine.Point2 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_projectionMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue     IL_0109

    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance valuetype [Engine]Engine.Matrix Game.BasePerspectiveCamera::CalculateBaseProjectionMatrix()
    IL_0017:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_001c:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_projectionMatrix
    IL_0021:  ldarg.0
    IL_0022:  call       instance class Game.View Game.Camera::get_View()
    IL_0027:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.View::get_ScalingRenderTargetSize()
    IL_002c:  stloc.0
    IL_002d:  ldloca.s   V_0
    IL_002f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_HasValue()
    IL_0034:  brtrue     IL_0109

    IL_0039:  ldarg.0
    IL_003a:  call       instance class Game.View Game.Camera::get_View()
    IL_003f:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0044:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0049:  stloc.1
    IL_004a:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_004f:  stloc.2
    IL_0050:  ldarg.0
    IL_0051:  ldarg.0
    IL_0052:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_projectionMatrix
    IL_0057:  stloc.3
    IL_0058:  ldc.r4     0.5
    IL_005d:  ldloc.1
    IL_005e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0063:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0068:  mul
    IL_0069:  ldc.r4     -0.5
    IL_006e:  ldloc.1
    IL_006f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0074:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0079:  mul
    IL_007a:  ldloc.1
    IL_007b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0080:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0085:  ldc.r4     2.
    IL_008a:  div
    IL_008b:  ldloc.1
    IL_008c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0091:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0096:  ldc.r4     2.
    IL_009b:  div
    IL_009c:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00a1:  ldloc.1
    IL_00a2:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_00a7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ac:  ldc.r4     2.
    IL_00b1:  ldloc.2
    IL_00b2:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00b7:  conv.r4
    IL_00b8:  div
    IL_00b9:  ldc.r4     -2.
    IL_00be:  ldloc.2
    IL_00bf:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00c4:  conv.r4
    IL_00c5:  div
    IL_00c6:  ldc.r4     -1.
    IL_00cb:  ldc.r4     1.
    IL_00d0:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00da:  stloc.s    V_4
    IL_00dc:  ldloca.s   V_3
    IL_00de:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_00e3:  brtrue.s   IL_00f1

    IL_00e5:  ldloca.s   V_5
    IL_00e7:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_00ed:  ldloc.s    V_5
    IL_00ef:  br.s       IL_0104

    IL_00f1:  ldloca.s   V_3
    IL_00f3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::GetValueOrDefault()
    IL_00f8:  ldloc.s    V_4
    IL_00fa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ff:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0104:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_projectionMatrix
    IL_0109:  ldarg.0
    IL_010a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_projectionMatrix
    IL_010f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0114:  ret
  } // end of method BasePerspectiveCamera::get_ProjectionMatrix

  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_ScreenProjectionMatrix() cil managed
  {
    // 代码大小       203 (0xcb)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Point2 V_0,
             class Game.GameViewWidget V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_screenProjectionMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue     IL_00bf

    IL_0010:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  call       instance class Game.View Game.Camera::get_View()
    IL_001c:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0021:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0026:  stloc.1
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  call       instance valuetype [Engine]Engine.Matrix Game.BasePerspectiveCamera::CalculateBaseProjectionMatrix()
    IL_002e:  ldc.r4     0.5
    IL_0033:  ldloc.1
    IL_0034:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0039:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003e:  mul
    IL_003f:  ldc.r4     -0.5
    IL_0044:  ldloc.1
    IL_0045:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_004a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004f:  mul
    IL_0050:  ldloc.1
    IL_0051:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0056:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_005b:  ldc.r4     2.
    IL_0060:  div
    IL_0061:  ldloc.1
    IL_0062:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0067:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_006c:  ldc.r4     2.
    IL_0071:  div
    IL_0072:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0077:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_007c:  ldloc.1
    IL_007d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0082:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0087:  ldc.r4     2.
    IL_008c:  ldloc.0
    IL_008d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0092:  conv.r4
    IL_0093:  div
    IL_0094:  ldc.r4     -2.
    IL_0099:  ldloc.0
    IL_009a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_009f:  conv.r4
    IL_00a0:  div
    IL_00a1:  ldc.r4     -1.
    IL_00a6:  ldc.r4     1.
    IL_00ab:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00b0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_00ba:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_screenProjectionMatrix
    IL_00bf:  ldarg.0
    IL_00c0:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_screenProjectionMatrix
    IL_00c5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_00ca:  ret
  } // end of method BasePerspectiveCamera::get_ScreenProjectionMatrix

  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_InvertedProjectionMatrix() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_invertedProjectionMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue.s   IL_0023

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ProjectionMatrix()
    IL_0014:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Invert(valuetype [Engine]Engine.Matrix)
    IL_0019:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_001e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_invertedProjectionMatrix
    IL_0023:  ldarg.0
    IL_0024:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_invertedProjectionMatrix
    IL_0029:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_002e:  ret
  } // end of method BasePerspectiveCamera::get_InvertedProjectionMatrix

  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_ViewProjectionMatrix() cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_viewProjectionMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue.s   IL_0029

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_0014:  ldarg.0
    IL_0015:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ProjectionMatrix()
    IL_001a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_001f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0024:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_viewProjectionMatrix
    IL_0029:  ldarg.0
    IL_002a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_viewProjectionMatrix
    IL_002f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0034:  ret
  } // end of method BasePerspectiveCamera::get_ViewProjectionMatrix

  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Matrix 
          get_WidgetMatrix() cil managed
  {
    // 代码大小       168 (0xa8)
    .maxstack  4
    .locals init (class Game.GameViewWidget V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> V_1,
             valuetype [Engine]Engine.Vector2 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_widgetMatrix
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue     IL_009c

    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.View Game.Camera::get_View()
    IL_0016:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_001b:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0020:  stloc.0
    IL_0021:  ldarg.0
    IL_0022:  call       instance class Game.View Game.Camera::get_View()
    IL_0027:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.View::get_ScalingRenderTargetSize()
    IL_002c:  stloc.1
    IL_002d:  ldloca.s   V_1
    IL_002f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_HasValue()
    IL_0034:  brfalse.s  IL_008b

    IL_0036:  ldloca.s   V_2
    IL_0038:  ldarg.0
    IL_0039:  call       instance class Game.View Game.Camera::get_View()
    IL_003e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.View::get_ScalingRenderTargetSize()
    IL_0043:  stloc.1
    IL_0044:  ldloca.s   V_1
    IL_0046:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_Value()
    IL_004b:  call       instance void [Engine]Engine.Vector2::.ctor(valuetype [Engine]Engine.Point2)
    IL_0050:  ldarg.0
    IL_0051:  ldloc.2
    IL_0052:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0057:  ldloc.0
    IL_0058:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_005d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0062:  div
    IL_0063:  ldloc.2
    IL_0064:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0069:  ldloc.0
    IL_006a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_006f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0074:  div
    IL_0075:  ldc.r4     1.
    IL_007a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_007f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0084:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_widgetMatrix
    IL_0089:  br.s       IL_009c

    IL_008b:  ldarg.0
    IL_008c:  ldloc.0
    IL_008d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0092:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0097:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_widgetMatrix
    IL_009c:  ldarg.0
    IL_009d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_widgetMatrix
    IL_00a2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_00a7:  ret
  } // end of method BasePerspectiveCamera::get_WidgetMatrix

  .method public hidebysig specialname virtual 
          instance class [Engine]Engine.BoundingFrustum 
          get_ViewFrustum() cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.BasePerspectiveCamera::m_viewFrustumValid
    IL_0006:  brtrue.s   IL_0041

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [Engine]Engine.BoundingFrustum Game.BasePerspectiveCamera::m_viewFrustum
    IL_000e:  ldnull
    IL_000f:  call       bool [Engine]Engine.BoundingFrustum::op_Equality(class [Engine]Engine.BoundingFrustum,
                                                                          class [Engine]Engine.BoundingFrustum)
    IL_0014:  brfalse.s  IL_0029

    IL_0016:  ldarg.0
    IL_0017:  ldarg.0
    IL_0018:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_001d:  newobj     instance void [Engine]Engine.BoundingFrustum::.ctor(valuetype [Engine]Engine.Matrix)
    IL_0022:  stfld      class [Engine]Engine.BoundingFrustum Game.BasePerspectiveCamera::m_viewFrustum
    IL_0027:  br.s       IL_003a

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class [Engine]Engine.BoundingFrustum Game.BasePerspectiveCamera::m_viewFrustum
    IL_002f:  ldarg.0
    IL_0030:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_0035:  callvirt   instance void [Engine]Engine.BoundingFrustum::set_Matrix(valuetype [Engine]Engine.Matrix)
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4.1
    IL_003c:  stfld      bool Game.BasePerspectiveCamera::m_viewFrustumValid
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class [Engine]Engine.BoundingFrustum Game.BasePerspectiveCamera::m_viewFrustum
    IL_0047:  ret
  } // end of method BasePerspectiveCamera::get_ViewFrustum

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_viewMatrix
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_000c:  ldarg.0
    IL_000d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_invertedViewMatrix
    IL_0012:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_projectionMatrix
    IL_001e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0024:  ldarg.0
    IL_0025:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_invertedProjectionMatrix
    IL_002a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0030:  ldarg.0
    IL_0031:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_screenProjectionMatrix
    IL_0036:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_003c:  ldarg.0
    IL_003d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_viewProjectionMatrix
    IL_0042:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0048:  ldarg.0
    IL_0049:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.BasePerspectiveCamera::m_widgetMatrix
    IL_004e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0054:  ldarg.0
    IL_0055:  ldc.i4.0
    IL_0056:  stfld      bool Game.BasePerspectiveCamera::m_viewFrustumValid
    IL_005b:  ret
  } // end of method BasePerspectiveCamera::Draw

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.View view) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.Camera::.ctor(class Game.View)
    IL_0007:  ret
  } // end of method BasePerspectiveCamera::.ctor

  .method family hidebysig instance void 
          SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3 position,
                                 valuetype [Engine]Engine.Vector3 direction,
                                 valuetype [Engine]Engine.Vector3 up) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::m_viewPosition
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_000e:  stfld      valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::m_viewDirection
    IL_0013:  ldarg.0
    IL_0014:  ldarg.3
    IL_0015:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_001a:  stfld      valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::m_viewUp
    IL_001f:  ret
  } // end of method BasePerspectiveCamera::SetupPerspectiveCamera

  .method private hidebysig instance valuetype [Engine]Engine.Matrix 
          CalculateBaseProjectionMatrix() cil managed
  {
    // 代码大小       171 (0xab)
    .maxstack  4
    .locals init (float32 V_0,
             float32 V_1,
             class Game.GameViewWidget V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldc.r4     90.
    IL_0005:  stloc.0
    IL_0006:  ldc.r4     1.
    IL_000b:  stloc.1
    IL_000c:  call       valuetype Game.ViewAngleMode Game.SettingsManager::get_ViewAngleMode()
    IL_0011:  ldc.i4.1
    IL_0012:  bne.un.s   IL_001c

    IL_0014:  ldc.r4     0.80000001
    IL_0019:  stloc.1
    IL_001a:  br.s       IL_0029

    IL_001c:  call       valuetype Game.ViewAngleMode Game.SettingsManager::get_ViewAngleMode()
    IL_0021:  brtrue.s   IL_0029

    IL_0023:  ldc.r4     0.89999998
    IL_0028:  stloc.1
    IL_0029:  ldarg.0
    IL_002a:  call       instance class Game.View Game.Camera::get_View()
    IL_002f:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0034:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0039:  stloc.2
    IL_003a:  ldloc.2
    IL_003b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0040:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0045:  ldloc.2
    IL_0046:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_004b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0050:  div
    IL_0051:  stloc.3
    IL_0052:  ldloc.0
    IL_0053:  ldloc.3
    IL_0054:  mul
    IL_0055:  ldloc.0
    IL_0056:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_005b:  stloc.s    V_4
    IL_005d:  ldloc.s    V_4
    IL_005f:  ldloc.3
    IL_0060:  mul
    IL_0061:  stloc.s    V_5
    IL_0063:  ldloc.s    V_5
    IL_0065:  ldc.r4     90.
    IL_006a:  bge.un.s   IL_007b

    IL_006c:  ldloc.s    V_4
    IL_006e:  ldc.r4     90.
    IL_0073:  ldloc.s    V_5
    IL_0075:  div
    IL_0076:  mul
    IL_0077:  stloc.s    V_4
    IL_0079:  br.s       IL_0091

    IL_007b:  ldloc.s    V_5
    IL_007d:  ldc.r4     175.
    IL_0082:  ble.un.s   IL_0091

    IL_0084:  ldloc.s    V_4
    IL_0086:  ldc.r4     175.
    IL_008b:  ldloc.s    V_5
    IL_008d:  div
    IL_008e:  mul
    IL_008f:  stloc.s    V_4
    IL_0091:  ldloc.s    V_4
    IL_0093:  ldloc.1
    IL_0094:  mul
    IL_0095:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_009a:  ldloc.3
    IL_009b:  ldc.r4     0.1
    IL_00a0:  ldc.r4     1024.
    IL_00a5:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreatePerspectiveFieldOfView(float32,
                                                                                                             float32,
                                                                                                             float32,
                                                                                                             float32)
    IL_00aa:  ret
  } // end of method BasePerspectiveCamera::CalculateBaseProjectionMatrix

  .property instance valuetype [Engine]Engine.Vector3
          ViewPosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::get_ViewPosition()
  } // end of property BasePerspectiveCamera::ViewPosition
  .property instance valuetype [Engine]Engine.Vector3
          ViewDirection()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::get_ViewDirection()
  } // end of property BasePerspectiveCamera::ViewDirection
  .property instance valuetype [Engine]Engine.Vector3
          ViewUp()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.BasePerspectiveCamera::get_ViewUp()
  } // end of property BasePerspectiveCamera::ViewUp
  .property instance valuetype [Engine]Engine.Matrix
          ViewMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.BasePerspectiveCamera::get_ViewMatrix()
  } // end of property BasePerspectiveCamera::ViewMatrix
  .property instance valuetype [Engine]Engine.Matrix
          InvertedViewMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.BasePerspectiveCamera::get_InvertedViewMatrix()
  } // end of property BasePerspectiveCamera::InvertedViewMatrix
  .property instance valuetype [Engine]Engine.Matrix
          ProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.BasePerspectiveCamera::get_ProjectionMatrix()
  } // end of property BasePerspectiveCamera::ProjectionMatrix
  .property instance valuetype [Engine]Engine.Matrix
          ScreenProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.BasePerspectiveCamera::get_ScreenProjectionMatrix()
  } // end of property BasePerspectiveCamera::ScreenProjectionMatrix
  .property instance valuetype [Engine]Engine.Matrix
          InvertedProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.BasePerspectiveCamera::get_InvertedProjectionMatrix()
  } // end of property BasePerspectiveCamera::InvertedProjectionMatrix
  .property instance valuetype [Engine]Engine.Matrix
          ViewProjectionMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.BasePerspectiveCamera::get_ViewProjectionMatrix()
  } // end of property BasePerspectiveCamera::ViewProjectionMatrix
  .property instance valuetype [Engine]Engine.Matrix
          WidgetMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.BasePerspectiveCamera::get_WidgetMatrix()
  } // end of property BasePerspectiveCamera::WidgetMatrix
  .property instance class [Engine]Engine.BoundingFrustum
          ViewFrustum()
  {
    .get instance class [Engine]Engine.BoundingFrustum Game.BasePerspectiveCamera::get_ViewFrustum()
  } // end of property BasePerspectiveCamera::ViewFrustum
} // end of class Game.BasePerspectiveCamera