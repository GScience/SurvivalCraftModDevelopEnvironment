.class public auto ansi beforefieldinit Game.ModelWidget
       extends Game.Widget
       implements [System.Runtime]System.IDisposable
{
  .field private class [Engine]Engine.Graphics.LitUberShader m_uberShader
  .field private class [Engine]Engine.Graphics.Model m_model
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] m_boneTransforms
  .field private valuetype [Engine]Engine.Matrix[] m_absoluteBoneTransforms
  .field private class [Engine]Engine.Graphics.RasterizerState m_rasterizerState
  .field private valuetype [Engine]Engine.Vector2 '<Size>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<UseAlphaThreshold>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsPerspective>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<OrthographicFrustumSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<ViewPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<ViewTarget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ViewFov>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<AutoRotationVector>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Engine]Engine.Graphics.Texture2D '<TextureOverride>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       181 (0xb5)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.RasterizerState::.ctor()
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  callvirt   instance void [Engine]Engine.Graphics.RasterizerState::set_CullMode(valuetype [Engine]Engine.Graphics.CullMode)
    IL_000d:  dup
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance void [Engine]Engine.Graphics.RasterizerState::set_ScissorTestEnable(bool)
    IL_0014:  stfld      class [Engine]Engine.Graphics.RasterizerState Game.ModelWidget::m_rasterizerState
    IL_0019:  ldarg.0
    IL_001a:  call       instance void Game.Widget::.ctor()
    IL_001f:  ldarg.0
    IL_0020:  ldc.i4.1
    IL_0021:  newobj     instance void [Engine]Engine.Graphics.LitUberShader::.ctor(int32)
    IL_0026:  stfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_002b:  ldarg.0
    IL_002c:  ldc.r4     (00 00 80 7F)
    IL_0031:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0036:  call       instance void Game.ModelWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_003b:  ldarg.0
    IL_003c:  ldc.i4.0
    IL_003d:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0042:  ldarg.0
    IL_0043:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0048:  call       instance void Game.ModelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_004d:  ldarg.0
    IL_004e:  ldc.i4.0
    IL_004f:  call       instance void Game.ModelWidget::set_UseAlphaThreshold(bool)
    IL_0054:  ldarg.0
    IL_0055:  ldc.i4.1
    IL_0056:  call       instance void Game.ModelWidget::set_IsPerspective(bool)
    IL_005b:  ldarg.0
    IL_005c:  ldc.r4     0.0
    IL_0061:  ldc.r4     0.0
    IL_0066:  ldc.r4     -5.
    IL_006b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0070:  call       instance void Game.ModelWidget::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_0075:  ldarg.0
    IL_0076:  ldc.r4     0.0
    IL_007b:  ldc.r4     0.0
    IL_0080:  ldc.r4     0.0
    IL_0085:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_008a:  call       instance void Game.ModelWidget::set_ViewTarget(valuetype [Engine]Engine.Vector3)
    IL_008f:  ldarg.0
    IL_0090:  ldc.r4     1.
    IL_0095:  call       instance void Game.ModelWidget::set_ViewFov(float32)
    IL_009a:  ldarg.0
    IL_009b:  ldc.r4     0.0
    IL_00a0:  ldc.r4     10.
    IL_00a5:  ldc.r4     10.
    IL_00aa:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00af:  call       instance void Game.ModelWidget::set_OrthographicFrustumSize(valuetype [Engine]Engine.Vector3)
    IL_00b4:  ret
  } // end of method ModelWidget::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Size() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.ModelWidget::'<Size>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_Size

  .method public hidebysig specialname instance void 
          set_Size(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.ModelWidget::'<Size>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_Size

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.ModelWidget::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_Color

  .method public hidebysig specialname instance void 
          set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.ModelWidget::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_Color

  .method public hidebysig specialname instance bool 
          get_UseAlphaThreshold() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ModelWidget::'<UseAlphaThreshold>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_UseAlphaThreshold

  .method public hidebysig specialname instance void 
          set_UseAlphaThreshold(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ModelWidget::'<UseAlphaThreshold>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_UseAlphaThreshold

  .method public hidebysig specialname instance bool 
          get_IsPerspective() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ModelWidget::'<IsPerspective>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_IsPerspective

  .method public hidebysig specialname instance void 
          set_IsPerspective(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ModelWidget::'<IsPerspective>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_IsPerspective

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_OrthographicFrustumSize() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ModelWidget::'<OrthographicFrustumSize>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_OrthographicFrustumSize

  .method public hidebysig specialname instance void 
          set_OrthographicFrustumSize(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ModelWidget::'<OrthographicFrustumSize>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_OrthographicFrustumSize

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_ViewPosition() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ModelWidget::'<ViewPosition>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_ViewPosition

  .method public hidebysig specialname instance void 
          set_ViewPosition(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ModelWidget::'<ViewPosition>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_ViewPosition

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_ViewTarget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ModelWidget::'<ViewTarget>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_ViewTarget

  .method public hidebysig specialname instance void 
          set_ViewTarget(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ModelWidget::'<ViewTarget>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_ViewTarget

  .method public hidebysig specialname instance float32 
          get_ViewFov() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ModelWidget::'<ViewFov>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_ViewFov

  .method public hidebysig specialname instance void 
          set_ViewFov(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ModelWidget::'<ViewFov>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_ViewFov

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_AutoRotationVector() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ModelWidget::'<AutoRotationVector>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_AutoRotationVector

  .method public hidebysig specialname instance void 
          set_AutoRotationVector(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ModelWidget::'<AutoRotationVector>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_AutoRotationVector

  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Model 
          get_Model() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Model Game.ModelWidget::m_model
    IL_0006:  ret
  } // end of method ModelWidget::get_Model

  .method public hidebysig specialname instance void 
          set_Model(class [Engine]Engine.Graphics.Model 'value') cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Engine]Engine.Graphics.Model Game.ModelWidget::m_model
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [Engine]Engine.Graphics.Model Game.ModelWidget::m_model
    IL_000d:  brfalse.s  IL_004c

    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [Engine]Engine.Graphics.Model Game.ModelWidget::m_model
    IL_0016:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_001b:  stloc.0
    IL_001c:  ldloca.s   V_0
    IL_001e:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_0023:  newarr     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0028:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ModelWidget::m_boneTransforms
    IL_002d:  ldarg.0
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [Engine]Engine.Graphics.Model Game.ModelWidget::m_model
    IL_0034:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_0039:  stloc.0
    IL_003a:  ldloca.s   V_0
    IL_003c:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_0041:  newarr     [Engine]Engine.Matrix
    IL_0046:  stfld      valuetype [Engine]Engine.Matrix[] Game.ModelWidget::m_absoluteBoneTransforms
    IL_004b:  ret

    IL_004c:  ldarg.0
    IL_004d:  ldnull
    IL_004e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ModelWidget::m_boneTransforms
    IL_0053:  ldarg.0
    IL_0054:  ldnull
    IL_0055:  stfld      valuetype [Engine]Engine.Matrix[] Game.ModelWidget::m_absoluteBoneTransforms
    IL_005a:  ret
  } // end of method ModelWidget::set_Model

  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_TextureOverride() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ModelWidget::'<TextureOverride>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_TextureOverride

  .method public hidebysig specialname instance void 
          set_TextureOverride(class [Engine]Engine.Graphics.Texture2D 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Engine]Engine.Graphics.Texture2D Game.ModelWidget::'<TextureOverride>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_TextureOverride

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> 
          GetBoneTransform(int32 boneIndex) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ModelWidget::m_boneTransforms
    IL_0006:  ldarg.1
    IL_0007:  ldelem     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_000c:  ret
  } // end of method ModelWidget::GetBoneTransform

  .method public hidebysig instance void 
          SetBoneTransform(int32 boneIndex,
                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> transformation) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ModelWidget::m_boneTransforms
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_000d:  ret
  } // end of method ModelWidget::SetBoneTransform

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       1171 (0x493)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Matrix V_5,
             valuetype [System.Runtime]System.Nullable`1<float32> V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh> V_9,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_10,
             class [Engine]Engine.Graphics.ModelMesh V_11,
             class [Engine]Engine.Graphics.Shader V_12,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart> V_13,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_14,
             class [Engine]Engine.Graphics.ModelMeshPart V_15)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0015:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_001a:  call       float32 Game.WidgetsManager::get_Scale()
    IL_001f:  mul
    IL_0020:  ldloc.0
    IL_0021:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0026:  conv.r4
    IL_0027:  div
    IL_0028:  stloc.1
    IL_0029:  ldarg.0
    IL_002a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_002f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0034:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0039:  mul
    IL_003a:  ldloc.0
    IL_003b:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0040:  conv.r4
    IL_0041:  div
    IL_0042:  stloc.2
    IL_0043:  ldarg.0
    IL_0044:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0049:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004e:  ldarg.0
    IL_004f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0054:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0059:  div
    IL_005a:  stloc.3
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_0061:  ldarg.0
    IL_0062:  call       instance class [Engine]Engine.Graphics.Texture2D Game.ModelWidget::get_TextureOverride()
    IL_0067:  stfld      class [Engine]Engine.Graphics.Texture2D [Engine]Engine.Graphics.LitUberShader::Texture
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_0072:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0077:  stfld      class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.LitUberShader::SamplerState
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_0082:  ldarg.0
    IL_0083:  call       instance bool Game.ModelWidget::get_UseAlphaThreshold()
    IL_0088:  brtrue.s   IL_0096

    IL_008a:  ldloca.s   V_6
    IL_008c:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_0092:  ldloc.s    V_6
    IL_0094:  br.s       IL_00a0

    IL_0096:  ldc.r4     0.0
    IL_009b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_00a0:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> [Engine]Engine.Graphics.LitUberShader::AlphaThreshold
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_00ab:  ldc.i4.1
    IL_00ac:  stfld      int32 [Engine]Engine.Graphics.LitUberShader::LightsCount
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_00b7:  ldarg.0
    IL_00b8:  call       instance valuetype [Engine]Engine.Color Game.ModelWidget::get_Color()
    IL_00bd:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
    IL_00c2:  stfld      valuetype [Engine]Engine.Vector4 [Engine]Engine.Graphics.LitUberShader::MaterialColor
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_00cd:  ldc.r4     0.66000003
    IL_00d2:  ldc.r4     0.66000003
    IL_00d7:  ldc.r4     0.66000003
    IL_00dc:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00e1:  stfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Graphics.LitUberShader::AmbientLightColor
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_00ec:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::DiffuseLightColors
    IL_00f1:  ldc.i4.0
    IL_00f2:  ldc.r4     1.
    IL_00f7:  ldc.r4     1.
    IL_00fc:  ldc.r4     1.
    IL_0101:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0106:  stelem     [Engine]Engine.Vector3
    IL_010b:  ldarg.0
    IL_010c:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_0111:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::LightDirections
    IL_0116:  ldc.i4.0
    IL_0117:  ldc.r4     1.
    IL_011c:  ldc.r4     1.
    IL_0121:  ldc.r4     1.
    IL_0126:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_012b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0130:  stelem     [Engine]Engine.Vector3
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_013b:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
    IL_0140:  ldarg.0
    IL_0141:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_ViewPosition()
    IL_0146:  ldarg.0
    IL_0147:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_ViewTarget()
    IL_014c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0151:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0156:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms::set_View(valuetype [Engine]Engine.Matrix)
    IL_015b:  ldarg.0
    IL_015c:  call       instance bool Game.ModelWidget::get_IsPerspective()
    IL_0161:  brfalse    IL_021f

    IL_0166:  ldarg.0
    IL_0167:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_016c:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
    IL_0171:  ldarg.0
    IL_0172:  call       instance float32 Game.ModelWidget::get_ViewFov()
    IL_0177:  ldloc.3
    IL_0178:  ldc.r4     0.5
    IL_017d:  ldc.r4     100.
    IL_0182:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreatePerspectiveFieldOfView(float32,
                                                                                                             float32,
                                                                                                             float32,
                                                                                                             float32)
    IL_0187:  ldloc.1
    IL_0188:  ldloc.2
    IL_0189:  ldc.r4     1.
    IL_018e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0193:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0198:  ldc.r4     -1.
    IL_019d:  ldc.r4     2.
    IL_01a2:  ldloc.0
    IL_01a3:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_01a8:  conv.r4
    IL_01a9:  div
    IL_01aa:  ldc.r4     0.5
    IL_01af:  ldarg.0
    IL_01b0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01b5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01ba:  mul
    IL_01bb:  ldarg.0
    IL_01bc:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_01c1:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01c6:  add
    IL_01c7:  mul
    IL_01c8:  call       float32 Game.WidgetsManager::get_Scale()
    IL_01cd:  mul
    IL_01ce:  add
    IL_01cf:  ldc.r4     1.
    IL_01d4:  ldc.r4     2.
    IL_01d9:  ldloc.0
    IL_01da:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_01df:  conv.r4
    IL_01e0:  div
    IL_01e1:  ldc.r4     0.5
    IL_01e6:  ldarg.0
    IL_01e7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01ec:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01f1:  mul
    IL_01f2:  ldarg.0
    IL_01f3:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_01f8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01fd:  add
    IL_01fe:  mul
    IL_01ff:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0204:  mul
    IL_0205:  sub
    IL_0206:  ldc.r4     0.0
    IL_020b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0210:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0215:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms::set_Projection(valuetype [Engine]Engine.Matrix)
    IL_021a:  br         IL_0315

    IL_021f:  ldarg.0
    IL_0220:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_OrthographicFrustumSize()
    IL_0225:  stloc.s    V_7
    IL_0227:  ldloc.s    V_7
    IL_0229:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_022e:  ldc.r4     0.0
    IL_0233:  bge.un.s   IL_0247

    IL_0235:  ldloca.s   V_7
    IL_0237:  ldloc.s    V_7
    IL_0239:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_023e:  ldloc.3
    IL_023f:  div
    IL_0240:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0245:  br.s       IL_0265

    IL_0247:  ldloc.s    V_7
    IL_0249:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_024e:  ldc.r4     0.0
    IL_0253:  bge.un.s   IL_0265

    IL_0255:  ldloca.s   V_7
    IL_0257:  ldloc.s    V_7
    IL_0259:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_025e:  ldloc.3
    IL_025f:  mul
    IL_0260:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0265:  ldarg.0
    IL_0266:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
    IL_026b:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
    IL_0270:  ldloc.s    V_7
    IL_0272:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0277:  ldloc.s    V_7
    IL_0279:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_027e:  ldc.r4     0.0
    IL_0283:  ldarg.0
    IL_0284:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_OrthographicFrustumSize()
    IL_0289:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_028e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateOrthographic(float32,
                                                                                                   float32,
                                                                                                   float32,
                                                                                                   float32)
    IL_0293:  ldc.r4     -1.
    IL_0298:  ldc.r4     2.
    IL_029d:  ldloc.0
    IL_029e:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_02a3:  conv.r4
    IL_02a4:  div
    IL_02a5:  ldc.r4     0.5
    IL_02aa:  ldarg.0
    IL_02ab:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_02b0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02b5:  mul
    IL_02b6:  ldarg.0
    IL_02b7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_02bc:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02c1:  add
    IL_02c2:  mul
    IL_02c3:  call       float32 Game.WidgetsManager::get_Scale()
    IL_02c8:  mul
    IL_02c9:  add
    IL_02ca:  ldc.r4     1.
    IL_02cf:  ldc.r4     2.
    IL_02d4:  ldloc.0
    IL_02d5:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_02da:  conv.r4
    IL_02db:  div
    IL_02dc:  ldc.r4     0.5
    IL_02e1:  ldarg.0
    IL_02e2:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_02e7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02ec:  mul
    IL_02ed:  ldarg.0
    IL_02ee:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_02f3:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02f8:  add
    IL_02f9:  mul
    IL_02fa:  call       float32 Game.WidgetsManager::get_Scale()
    IL_02ff:  mul
    IL_0300:  sub
    IL_0301:  ldc.r4     0.0
    IL_0306:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_030b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0310:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms::set_Projection(valuetype [Engine]Engine.Matrix)
    IL_0315:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_031a:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_031f:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0324:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_0329:  ldarg.0
    IL_032a:  ldfld      class [Engine]Engine.Graphics.RasterizerState Game.ModelWidget::m_rasterizerState
    IL_032f:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_0334:  ldarg.0
    IL_0335:  ldarg.0
    IL_0336:  call       instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_033b:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::get_RootBone()
    IL_0340:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0345:  ldarg.0
    IL_0346:  ldfld      valuetype [Engine]Engine.Matrix[] Game.ModelWidget::m_absoluteBoneTransforms
    IL_034b:  call       instance void Game.ModelWidget::ProcessBoneHierarchy(class [Engine]Engine.Graphics.ModelBone,
                                                                              valuetype [Engine]Engine.Matrix,
                                                                              valuetype [Engine]Engine.Matrix[])
    IL_0350:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0355:  conv.r4
    IL_0356:  ldarg.0
    IL_0357:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_035c:  ldc.i4     0x3e8
    IL_0361:  rem
    IL_0362:  conv.r4
    IL_0363:  ldc.r4     100.
    IL_0368:  div
    IL_0369:  add
    IL_036a:  stloc.s    V_4
    IL_036c:  ldarg.0
    IL_036d:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_AutoRotationVector()
    IL_0372:  stloc.s    V_8
    IL_0374:  ldloca.s   V_8
    IL_0376:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_037b:  ldc.r4     0.0
    IL_0380:  bgt.s      IL_0389

    IL_0382:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0387:  br.s       IL_03ab

    IL_0389:  ldarg.0
    IL_038a:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_AutoRotationVector()
    IL_038f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0394:  ldarg.0
    IL_0395:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_AutoRotationVector()
    IL_039a:  stloc.s    V_8
    IL_039c:  ldloca.s   V_8
    IL_039e:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_03a3:  ldloc.s    V_4
    IL_03a5:  mul
    IL_03a6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_03ab:  stloc.s    V_5
    IL_03ad:  ldarg.0
    IL_03ae:  call       instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_03b3:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_03b8:  stloc.s    V_10
    IL_03ba:  ldloca.s   V_10
    IL_03bc:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::GetEnumerator()
    IL_03c1:  stloc.s    V_9
    .try
    {
      IL_03c3:  br         IL_0476

      IL_03c8:  ldloca.s   V_9
      IL_03ca:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::get_Current()
      IL_03cf:  stloc.s    V_11
      IL_03d1:  ldarg.0
      IL_03d2:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
      IL_03d7:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
      IL_03dc:  callvirt   instance class [Engine]Engine.Graphics.UberShaderTransforms/WorldMatrixList [Engine]Engine.Graphics.UberShaderTransforms::get_World()
      IL_03e1:  ldc.i4.0
      IL_03e2:  ldarg.0
      IL_03e3:  ldfld      valuetype [Engine]Engine.Matrix[] Game.ModelWidget::m_absoluteBoneTransforms
      IL_03e8:  ldloc.s    V_11
      IL_03ea:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_03ef:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_03f4:  ldelem     [Engine]Engine.Matrix
      IL_03f9:  ldloc.s    V_5
      IL_03fb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0400:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms/WorldMatrixList::set_Item(int32,
                                                                                                                valuetype [Engine]Engine.Matrix)
      IL_0405:  ldarg.0
      IL_0406:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ModelWidget::m_uberShader
      IL_040b:  callvirt   instance class [Engine]Engine.Graphics.Shader [Engine]Engine.Graphics.LitUberShader::PrepareShader()
      IL_0410:  stloc.s    V_12
      IL_0412:  ldloc.s    V_11
      IL_0414:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_0419:  stloc.s    V_14
      IL_041b:  ldloca.s   V_14
      IL_041d:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
      IL_0422:  stloc.s    V_13
      .try
      {
        IL_0424:  br.s       IL_045d

        IL_0426:  ldloca.s   V_13
        IL_0428:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
        IL_042d:  stloc.s    V_15
        IL_042f:  ldloc.s    V_15
        IL_0431:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
        IL_0436:  ldc.i4.0
        IL_0437:  ble.s      IL_045d

        IL_0439:  ldc.i4.2
        IL_043a:  ldloc.s    V_12
        IL_043c:  ldloc.s    V_15
        IL_043e:  callvirt   instance class [Engine]Engine.Graphics.VertexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_VertexBuffer()
        IL_0443:  ldloc.s    V_15
        IL_0445:  callvirt   instance class [Engine]Engine.Graphics.IndexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_IndexBuffer()
        IL_044a:  ldloc.s    V_15
        IL_044c:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
        IL_0451:  ldloc.s    V_15
        IL_0453:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
        IL_0458:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                               class [Engine]Engine.Graphics.Shader,
                                                                               class [Engine]Engine.Graphics.VertexBuffer,
                                                                               class [Engine]Engine.Graphics.IndexBuffer,
                                                                               int32,
                                                                               int32)
        IL_045d:  ldloca.s   V_13
        IL_045f:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
        IL_0464:  brtrue.s   IL_0426

        IL_0466:  leave.s    IL_0476

      }  // end .try
      finally
      {
        IL_0468:  ldloca.s   V_13
        IL_046a:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
        IL_0470:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0475:  endfinally
      }  // end handler
      IL_0476:  ldloca.s   V_9
      IL_0478:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::MoveNext()
      IL_047d:  brtrue     IL_03c8

      IL_0482:  leave.s    IL_0492

    }  // end .try
    finally
    {
      IL_0484:  ldloca.s   V_9
      IL_0486:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>
      IL_048c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0491:  endfinally
    }  // end handler
    IL_0492:  ret
  } // end of method ModelWidget::Draw

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance valuetype [Engine]Engine.Vector2 Game.ModelWidget::get_Size()
    IL_0016:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_001b:  ret
  } // end of method ModelWidget::Measure

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ModelWidget::Dispose

  .method private hidebysig instance void 
          ProcessBoneHierarchy(class [Engine]Engine.Graphics.ModelBone modelBone,
                               valuetype [Engine]Engine.Matrix currentTransform,
                               valuetype [Engine]Engine.Matrix[] transforms) cil managed
  {
    // 代码大小       216 (0xd8)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone> V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> V_3,
             class [Engine]Engine.Graphics.ModelBone V_4)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype [Engine]Engine.Matrix [Engine]Engine.Graphics.ModelBone::Transform
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ModelWidget::m_boneTransforms
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0013:  ldelema    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0018:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_001d:  brfalse.s  IL_007a

    IL_001f:  ldloca.s   V_0
    IL_0021:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0026:  stloc.1
    IL_0027:  ldloca.s   V_0
    IL_0029:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_002e:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_0033:  ldloc.0
    IL_0034:  ldarg.0
    IL_0035:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ModelWidget::m_boneTransforms
    IL_003a:  ldarg.1
    IL_003b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0040:  ldelema    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0045:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_004a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_004f:  stloc.0
    IL_0050:  ldloca.s   V_0
    IL_0052:  dup
    IL_0053:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0058:  ldloc.1
    IL_0059:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005e:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_0063:  ldloca.s   V_0
    IL_0065:  ldarga.s   currentTransform
    IL_0067:  ldarg.3
    IL_0068:  ldarg.1
    IL_0069:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_006e:  ldelema    [Engine]Engine.Matrix
    IL_0073:  call       void [Engine]Engine.Matrix::MultiplyRestricted(valuetype [Engine]Engine.Matrix&,
                                                                        valuetype [Engine]Engine.Matrix&,
                                                                        valuetype [Engine]Engine.Matrix&)
    IL_0078:  br.s       IL_008f

    IL_007a:  ldloca.s   V_0
    IL_007c:  ldarga.s   currentTransform
    IL_007e:  ldarg.3
    IL_007f:  ldarg.1
    IL_0080:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0085:  ldelema    [Engine]Engine.Matrix
    IL_008a:  call       void [Engine]Engine.Matrix::MultiplyRestricted(valuetype [Engine]Engine.Matrix&,
                                                                        valuetype [Engine]Engine.Matrix&,
                                                                        valuetype [Engine]Engine.Matrix&)
    IL_008f:  ldarg.1
    IL_0090:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.ModelBone::get_ChildBones()
    IL_0095:  stloc.3
    IL_0096:  ldloca.s   V_3
    IL_0098:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::GetEnumerator()
    IL_009d:  stloc.2
    .try
    {
      IL_009e:  br.s       IL_00be

      IL_00a0:  ldloca.s   V_2
      IL_00a2:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone>::get_Current()
      IL_00a7:  stloc.s    V_4
      IL_00a9:  ldarg.0
      IL_00aa:  ldloc.s    V_4
      IL_00ac:  ldarg.3
      IL_00ad:  ldarg.1
      IL_00ae:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_00b3:  ldelem     [Engine]Engine.Matrix
      IL_00b8:  ldarg.3
      IL_00b9:  call       instance void Game.ModelWidget::ProcessBoneHierarchy(class [Engine]Engine.Graphics.ModelBone,
                                                                                valuetype [Engine]Engine.Matrix,
                                                                                valuetype [Engine]Engine.Matrix[])
      IL_00be:  ldloca.s   V_2
      IL_00c0:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone>::MoveNext()
      IL_00c5:  brtrue.s   IL_00a0

      IL_00c7:  leave.s    IL_00d7

    }  // end .try
    finally
    {
      IL_00c9:  ldloca.s   V_2
      IL_00cb:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone>
      IL_00d1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d6:  endfinally
    }  // end handler
    IL_00d7:  ret
  } // end of method ModelWidget::ProcessBoneHierarchy

  .property instance valuetype [Engine]Engine.Vector2
          Size()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.ModelWidget::get_Size()
    .set instance void Game.ModelWidget::set_Size(valuetype [Engine]Engine.Vector2)
  } // end of property ModelWidget::Size
  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.ModelWidget::get_Color()
    .set instance void Game.ModelWidget::set_Color(valuetype [Engine]Engine.Color)
  } // end of property ModelWidget::Color
  .property instance bool UseAlphaThreshold()
  {
    .get instance bool Game.ModelWidget::get_UseAlphaThreshold()
    .set instance void Game.ModelWidget::set_UseAlphaThreshold(bool)
  } // end of property ModelWidget::UseAlphaThreshold
  .property instance bool IsPerspective()
  {
    .get instance bool Game.ModelWidget::get_IsPerspective()
    .set instance void Game.ModelWidget::set_IsPerspective(bool)
  } // end of property ModelWidget::IsPerspective
  .property instance valuetype [Engine]Engine.Vector3
          OrthographicFrustumSize()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_OrthographicFrustumSize()
    .set instance void Game.ModelWidget::set_OrthographicFrustumSize(valuetype [Engine]Engine.Vector3)
  } // end of property ModelWidget::OrthographicFrustumSize
  .property instance valuetype [Engine]Engine.Vector3
          ViewPosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_ViewPosition()
    .set instance void Game.ModelWidget::set_ViewPosition(valuetype [Engine]Engine.Vector3)
  } // end of property ModelWidget::ViewPosition
  .property instance valuetype [Engine]Engine.Vector3
          ViewTarget()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_ViewTarget()
    .set instance void Game.ModelWidget::set_ViewTarget(valuetype [Engine]Engine.Vector3)
  } // end of property ModelWidget::ViewTarget
  .property instance float32 ViewFov()
  {
    .get instance float32 Game.ModelWidget::get_ViewFov()
    .set instance void Game.ModelWidget::set_ViewFov(float32)
  } // end of property ModelWidget::ViewFov
  .property instance valuetype [Engine]Engine.Vector3
          AutoRotationVector()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_AutoRotationVector()
    .set instance void Game.ModelWidget::set_AutoRotationVector(valuetype [Engine]Engine.Vector3)
  } // end of property ModelWidget::AutoRotationVector
  .property instance class [Engine]Engine.Graphics.Model
          Model()
  {
    .get instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    .set instance void Game.ModelWidget::set_Model(class [Engine]Engine.Graphics.Model)
  } // end of property ModelWidget::Model
  .property instance class [Engine]Engine.Graphics.Texture2D
          TextureOverride()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.ModelWidget::get_TextureOverride()
    .set instance void Game.ModelWidget::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
  } // end of property ModelWidget::TextureOverride
} // end of class Game.ModelWidget