.class public auto ansi beforefieldinit Game.ModelWidget
       extends Game.Widget
{
  .field private static class [Engine]Engine.Graphics.LitShader m_shader
  .field private static class [Engine]Engine.Graphics.LitShader m_shaderAlpha
  .field private class [Engine]Engine.Graphics.Model m_model
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] m_boneTransforms
  .field private valuetype [Engine]Engine.Matrix[] m_absoluteBoneTransforms
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
  .field private valuetype [Engine]Engine.Matrix '<ModelMatrix>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<AutoRotationVector>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Engine]Engine.Graphics.Texture2D '<TextureOverride>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       155 (0x9b)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0006:  stfld      valuetype [Engine]Engine.Matrix Game.ModelWidget::'<ModelMatrix>k__BackingField'
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Widget::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldc.r4     (00 00 80 7F)
    IL_0017:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_001c:  call       instance void Game.ModelWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.0
    IL_0023:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0028:  ldarg.0
    IL_0029:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_002e:  call       instance void Game.ModelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0033:  ldarg.0
    IL_0034:  ldc.i4.0
    IL_0035:  call       instance void Game.ModelWidget::set_UseAlphaThreshold(bool)
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4.1
    IL_003c:  call       instance void Game.ModelWidget::set_IsPerspective(bool)
    IL_0041:  ldarg.0
    IL_0042:  ldc.r4     0.0
    IL_0047:  ldc.r4     0.0
    IL_004c:  ldc.r4     -5.
    IL_0051:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0056:  call       instance void Game.ModelWidget::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_005b:  ldarg.0
    IL_005c:  ldc.r4     0.0
    IL_0061:  ldc.r4     0.0
    IL_0066:  ldc.r4     0.0
    IL_006b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0070:  call       instance void Game.ModelWidget::set_ViewTarget(valuetype [Engine]Engine.Vector3)
    IL_0075:  ldarg.0
    IL_0076:  ldc.r4     1.
    IL_007b:  call       instance void Game.ModelWidget::set_ViewFov(float32)
    IL_0080:  ldarg.0
    IL_0081:  ldc.r4     0.0
    IL_0086:  ldc.r4     10.
    IL_008b:  ldc.r4     10.
    IL_0090:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0095:  call       instance void Game.ModelWidget::set_OrthographicFrustumSize(valuetype [Engine]Engine.Vector3)
    IL_009a:  ret
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

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_ModelMatrix() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Matrix Game.ModelWidget::'<ModelMatrix>k__BackingField'
    IL_0006:  ret
  } // end of method ModelWidget::get_ModelMatrix

  .method public hidebysig specialname instance void 
          set_ModelMatrix(valuetype [Engine]Engine.Matrix 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Matrix Game.ModelWidget::'<ModelMatrix>k__BackingField'
    IL_0007:  ret
  } // end of method ModelWidget::set_ModelMatrix

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
    // 代码大小       100 (0x64)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Engine]Engine.Graphics.Model Game.ModelWidget::m_model
    IL_0007:  beq.s      IL_0063

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      class [Engine]Engine.Graphics.Model Game.ModelWidget::m_model
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [Engine]Engine.Graphics.Model Game.ModelWidget::m_model
    IL_0016:  brfalse.s  IL_0055

    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [Engine]Engine.Graphics.Model Game.ModelWidget::m_model
    IL_001f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_0024:  stloc.0
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_002c:  newarr     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0031:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ModelWidget::m_boneTransforms
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class [Engine]Engine.Graphics.Model Game.ModelWidget::m_model
    IL_003d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_0042:  stloc.0
    IL_0043:  ldloca.s   V_0
    IL_0045:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_004a:  newarr     [Engine]Engine.Matrix
    IL_004f:  stfld      valuetype [Engine]Engine.Matrix[] Game.ModelWidget::m_absoluteBoneTransforms
    IL_0054:  ret

    IL_0055:  ldarg.0
    IL_0056:  ldnull
    IL_0057:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ModelWidget::m_boneTransforms
    IL_005c:  ldarg.0
    IL_005d:  ldnull
    IL_005e:  stfld      valuetype [Engine]Engine.Matrix[] Game.ModelWidget::m_absoluteBoneTransforms
    IL_0063:  ret
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
    // 代码大小       1052 (0x41c)
    .maxstack  7
    .locals init (class [Engine]Engine.Graphics.LitShader V_0,
             valuetype [Engine]Engine.Graphics.Viewport V_1,
             float32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Matrix V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh> V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_8,
             class [Engine]Engine.Graphics.ModelMesh V_9,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart> V_10,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_11,
             class [Engine]Engine.Graphics.ModelMeshPart V_12)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  call       instance bool Game.ModelWidget::get_UseAlphaThreshold()
    IL_000f:  brtrue.s   IL_0018

    IL_0011:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ModelWidget::m_shader
    IL_0016:  br.s       IL_001d

    IL_0018:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ModelWidget::m_shaderAlpha
    IL_001d:  stloc.0
    IL_001e:  ldloc.0
    IL_001f:  ldarg.0
    IL_0020:  call       instance class [Engine]Engine.Graphics.Texture2D Game.ModelWidget::get_TextureOverride()
    IL_0025:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_002a:  ldloc.0
    IL_002b:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0030:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_SamplerState(class [Engine]Engine.Graphics.SamplerState)
    IL_0035:  ldloc.0
    IL_0036:  ldarg.0
    IL_0037:  call       instance valuetype [Engine]Engine.Color Game.ModelWidget::get_Color()
    IL_003c:  ldarg.0
    IL_003d:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0042:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0047:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
    IL_004c:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_MaterialColor(valuetype [Engine]Engine.Vector4)
    IL_0051:  ldloc.0
    IL_0052:  ldc.r4     0.66000003
    IL_0057:  ldc.r4     0.66000003
    IL_005c:  ldc.r4     0.66000003
    IL_0061:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0066:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_AmbientLightColor(valuetype [Engine]Engine.Vector3)
    IL_006b:  ldloc.0
    IL_006c:  ldc.r4     1.
    IL_0071:  ldc.r4     1.
    IL_0076:  ldc.r4     1.
    IL_007b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0080:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_DiffuseLightColor1(valuetype [Engine]Engine.Vector3)
    IL_0085:  ldloc.0
    IL_0086:  ldc.r4     1.
    IL_008b:  ldc.r4     1.
    IL_0090:  ldc.r4     1.
    IL_0095:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_009a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_009f:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_LightDirection1(valuetype [Engine]Engine.Vector3)
    IL_00a4:  ldarg.0
    IL_00a5:  call       instance bool Game.ModelWidget::get_UseAlphaThreshold()
    IL_00aa:  brfalse.s  IL_00b7

    IL_00ac:  ldloc.0
    IL_00ad:  ldc.r4     0.0
    IL_00b2:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_AlphaThreshold(float32)
    IL_00b7:  ldloc.0
    IL_00b8:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
    IL_00bd:  ldarg.0
    IL_00be:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_ViewPosition()
    IL_00c3:  ldarg.0
    IL_00c4:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_ViewTarget()
    IL_00c9:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00ce:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_00d3:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms::set_View(valuetype [Engine]Engine.Matrix)
    IL_00d8:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_00dd:  stloc.1
    IL_00de:  ldarg.0
    IL_00df:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00e4:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e9:  ldarg.0
    IL_00ea:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00ef:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00f4:  div
    IL_00f5:  stloc.2
    IL_00f6:  ldarg.0
    IL_00f7:  call       instance bool Game.ModelWidget::get_IsPerspective()
    IL_00fc:  brfalse    IL_01ae

    IL_0101:  ldloc.0
    IL_0102:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
    IL_0107:  ldarg.0
    IL_0108:  call       instance float32 Game.ModelWidget::get_ViewFov()
    IL_010d:  ldloc.2
    IL_010e:  ldc.r4     0.1
    IL_0113:  ldc.r4     100.
    IL_0118:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreatePerspectiveFieldOfView(float32,
                                                                                                             float32,
                                                                                                             float32,
                                                                                                             float32)
    IL_011d:  ldc.r4     0.5
    IL_0122:  ldarg.0
    IL_0123:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0128:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_012d:  mul
    IL_012e:  ldc.r4     -0.5
    IL_0133:  ldarg.0
    IL_0134:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0139:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_013e:  mul
    IL_013f:  ldarg.0
    IL_0140:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0145:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_014a:  ldc.r4     2.
    IL_014f:  div
    IL_0150:  ldarg.0
    IL_0151:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0156:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_015b:  ldc.r4     2.
    IL_0160:  div
    IL_0161:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0166:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_016b:  ldarg.0
    IL_016c:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0171:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0176:  ldc.r4     2.
    IL_017b:  ldloc.1
    IL_017c:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0181:  conv.r4
    IL_0182:  div
    IL_0183:  ldc.r4     -2.
    IL_0188:  ldloc.1
    IL_0189:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_018e:  conv.r4
    IL_018f:  div
    IL_0190:  ldc.r4     -1.
    IL_0195:  ldc.r4     1.
    IL_019a:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_019f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01a4:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms::set_Projection(valuetype [Engine]Engine.Matrix)
    IL_01a9:  br         IL_02a9

    IL_01ae:  ldarg.0
    IL_01af:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_OrthographicFrustumSize()
    IL_01b4:  stloc.s    V_5
    IL_01b6:  ldloc.s    V_5
    IL_01b8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01bd:  ldc.r4     0.0
    IL_01c2:  bge.un.s   IL_01d6

    IL_01c4:  ldloca.s   V_5
    IL_01c6:  ldloc.s    V_5
    IL_01c8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01cd:  ldloc.2
    IL_01ce:  div
    IL_01cf:  stfld      float32 [Engine]Engine.Vector3::X
    IL_01d4:  br.s       IL_01f4

    IL_01d6:  ldloc.s    V_5
    IL_01d8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01dd:  ldc.r4     0.0
    IL_01e2:  bge.un.s   IL_01f4

    IL_01e4:  ldloca.s   V_5
    IL_01e6:  ldloc.s    V_5
    IL_01e8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01ed:  ldloc.2
    IL_01ee:  mul
    IL_01ef:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_01f4:  ldloc.0
    IL_01f5:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
    IL_01fa:  ldloc.s    V_5
    IL_01fc:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0201:  ldloc.s    V_5
    IL_0203:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0208:  ldc.r4     0.0
    IL_020d:  ldarg.0
    IL_020e:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_OrthographicFrustumSize()
    IL_0213:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0218:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateOrthographic(float32,
                                                                                                   float32,
                                                                                                   float32,
                                                                                                   float32)
    IL_021d:  ldc.r4     0.5
    IL_0222:  ldarg.0
    IL_0223:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0228:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_022d:  mul
    IL_022e:  ldc.r4     -0.5
    IL_0233:  ldarg.0
    IL_0234:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0239:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_023e:  mul
    IL_023f:  ldarg.0
    IL_0240:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0245:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_024a:  ldc.r4     2.
    IL_024f:  div
    IL_0250:  ldarg.0
    IL_0251:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0256:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_025b:  ldc.r4     2.
    IL_0260:  div
    IL_0261:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0266:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_026b:  ldarg.0
    IL_026c:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0271:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0276:  ldc.r4     2.
    IL_027b:  ldloc.1
    IL_027c:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0281:  conv.r4
    IL_0282:  div
    IL_0283:  ldc.r4     -2.
    IL_0288:  ldloc.1
    IL_0289:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_028e:  conv.r4
    IL_028f:  div
    IL_0290:  ldc.r4     -1.
    IL_0295:  ldc.r4     1.
    IL_029a:  call       valuetype [Engine]Engine.Matrix Game.MatrixUtils::CreateScaleTranslation(float32,
                                                                                                  float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_029f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02a4:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms::set_Projection(valuetype [Engine]Engine.Matrix)
    IL_02a9:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_02ae:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_02b3:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_02b8:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_02bd:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNoneScissor
    IL_02c2:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_02c7:  ldarg.0
    IL_02c8:  ldarg.0
    IL_02c9:  call       instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_02ce:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::get_RootBone()
    IL_02d3:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_02d8:  ldarg.0
    IL_02d9:  ldfld      valuetype [Engine]Engine.Matrix[] Game.ModelWidget::m_absoluteBoneTransforms
    IL_02de:  call       instance void Game.ModelWidget::ProcessBoneHierarchy(class [Engine]Engine.Graphics.ModelBone,
                                                                              valuetype [Engine]Engine.Matrix,
                                                                              valuetype [Engine]Engine.Matrix[])
    IL_02e3:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_02e8:  conv.r4
    IL_02e9:  ldarg.0
    IL_02ea:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_02ef:  ldc.i4     0x3e8
    IL_02f4:  rem
    IL_02f5:  conv.r4
    IL_02f6:  ldc.r4     100.
    IL_02fb:  div
    IL_02fc:  add
    IL_02fd:  stloc.3
    IL_02fe:  ldarg.0
    IL_02ff:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_AutoRotationVector()
    IL_0304:  stloc.s    V_6
    IL_0306:  ldloca.s   V_6
    IL_0308:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_030d:  ldc.r4     0.0
    IL_0312:  bgt.s      IL_031b

    IL_0314:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0319:  br.s       IL_033c

    IL_031b:  ldarg.0
    IL_031c:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_AutoRotationVector()
    IL_0321:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0326:  ldarg.0
    IL_0327:  call       instance valuetype [Engine]Engine.Vector3 Game.ModelWidget::get_AutoRotationVector()
    IL_032c:  stloc.s    V_6
    IL_032e:  ldloca.s   V_6
    IL_0330:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0335:  ldloc.3
    IL_0336:  mul
    IL_0337:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                    float32)
    IL_033c:  stloc.s    V_4
    IL_033e:  ldarg.0
    IL_033f:  call       instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_0344:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_0349:  stloc.s    V_8
    IL_034b:  ldloca.s   V_8
    IL_034d:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::GetEnumerator()
    IL_0352:  stloc.s    V_7
    .try
    {
      IL_0354:  br         IL_03ff

      IL_0359:  ldloca.s   V_7
      IL_035b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::get_Current()
      IL_0360:  stloc.s    V_9
      IL_0362:  ldloc.0
      IL_0363:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
      IL_0368:  callvirt   instance class [Engine]Engine.Graphics.ShaderTransforms/WorldMatrixList [Engine]Engine.Graphics.ShaderTransforms::get_World()
      IL_036d:  ldc.i4.0
      IL_036e:  ldarg.0
      IL_036f:  ldfld      valuetype [Engine]Engine.Matrix[] Game.ModelWidget::m_absoluteBoneTransforms
      IL_0374:  ldloc.s    V_9
      IL_0376:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_037b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_0380:  ldelem     [Engine]Engine.Matrix
      IL_0385:  ldarg.0
      IL_0386:  call       instance valuetype [Engine]Engine.Matrix Game.ModelWidget::get_ModelMatrix()
      IL_038b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0390:  ldloc.s    V_4
      IL_0392:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0397:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms/WorldMatrixList::set_Item(int32,
                                                                                                            valuetype [Engine]Engine.Matrix)
      IL_039c:  ldloc.s    V_9
      IL_039e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_03a3:  stloc.s    V_11
      IL_03a5:  ldloca.s   V_11
      IL_03a7:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
      IL_03ac:  stloc.s    V_10
      .try
      {
        IL_03ae:  br.s       IL_03e6

        IL_03b0:  ldloca.s   V_10
        IL_03b2:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
        IL_03b7:  stloc.s    V_12
        IL_03b9:  ldloc.s    V_12
        IL_03bb:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
        IL_03c0:  ldc.i4.0
        IL_03c1:  ble.s      IL_03e6

        IL_03c3:  ldc.i4.2
        IL_03c4:  ldloc.0
        IL_03c5:  ldloc.s    V_12
        IL_03c7:  callvirt   instance class [Engine]Engine.Graphics.VertexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_VertexBuffer()
        IL_03cc:  ldloc.s    V_12
        IL_03ce:  callvirt   instance class [Engine]Engine.Graphics.IndexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_IndexBuffer()
        IL_03d3:  ldloc.s    V_12
        IL_03d5:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
        IL_03da:  ldloc.s    V_12
        IL_03dc:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
        IL_03e1:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                               class [Engine]Engine.Graphics.Shader,
                                                                               class [Engine]Engine.Graphics.VertexBuffer,
                                                                               class [Engine]Engine.Graphics.IndexBuffer,
                                                                               int32,
                                                                               int32)
        IL_03e6:  ldloca.s   V_10
        IL_03e8:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
        IL_03ed:  brtrue.s   IL_03b0

        IL_03ef:  leave.s    IL_03ff

      }  // end .try
      finally
      {
        IL_03f1:  ldloca.s   V_10
        IL_03f3:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
        IL_03f9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_03fe:  endfinally
      }  // end handler
      IL_03ff:  ldloca.s   V_7
      IL_0401:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::MoveNext()
      IL_0406:  brtrue     IL_0359

      IL_040b:  leave.s    IL_041b

    }  // end .try
    finally
    {
      IL_040d:  ldloca.s   V_7
      IL_040f:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>
      IL_0415:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_041a:  endfinally
    }  // end handler
    IL_041b:  ret
  } // end of method ModelWidget::Draw

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
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
  } // end of method ModelWidget::MeasureOverride

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
    IL_0001:  callvirt   instance valuetype [Engine]Engine.Matrix [Engine]Engine.Graphics.ModelBone::get_Transform()
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

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4.1
    IL_0003:  ldc.i4.0
    IL_0004:  ldc.i4.0
    IL_0005:  ldc.i4.1
    IL_0006:  newobj     instance void [Engine]Engine.Graphics.LitShader::.ctor(int32,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                int32)
    IL_000b:  stsfld     class [Engine]Engine.Graphics.LitShader Game.ModelWidget::m_shader
    IL_0010:  ldc.i4.1
    IL_0011:  ldc.i4.0
    IL_0012:  ldc.i4.1
    IL_0013:  ldc.i4.0
    IL_0014:  ldc.i4.1
    IL_0015:  ldc.i4.1
    IL_0016:  newobj     instance void [Engine]Engine.Graphics.LitShader::.ctor(int32,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                int32)
    IL_001b:  stsfld     class [Engine]Engine.Graphics.LitShader Game.ModelWidget::m_shaderAlpha
    IL_0020:  ret
  } // end of method ModelWidget::.cctor

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
  .property instance valuetype [Engine]Engine.Matrix
          ModelMatrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.ModelWidget::get_ModelMatrix()
    .set instance void Game.ModelWidget::set_ModelMatrix(valuetype [Engine]Engine.Matrix)
  } // end of property ModelWidget::ModelMatrix
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