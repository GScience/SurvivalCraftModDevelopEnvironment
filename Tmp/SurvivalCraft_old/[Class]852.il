.class public auto ansi beforefieldinit Game.BevelledRectangleWidget
       extends Game.Widget
{
  .field private class [Engine]Engine.Graphics.FlatBatch2D m_flatBatch
  .field private class [Engine]Engine.Graphics.TexturedBatch2D m_texturedBatch
  .field private class [Engine]Engine.Graphics.Texture2D m_texture
  .field private bool m_textureLinearFilter
  .field private valuetype [Engine]Engine.Vector2 '<Size>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<BevelSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<DirectionalLight>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<AmbientLight>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<TextureScale>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<CenterColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<BevelColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<ShadowColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       173 (0xad)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0006:  ldc.i4.0
    IL_0007:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_000c:  ldnull
    IL_000d:  ldnull
    IL_000e:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0013:  stfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_0018:  ldarg.0
    IL_0019:  call       instance void Game.Widget::.ctor()
    IL_001e:  ldarg.0
    IL_001f:  ldc.r4     (00 00 80 7F)
    IL_0024:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0029:  call       instance void Game.BevelledRectangleWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_002e:  ldarg.0
    IL_002f:  ldc.r4     2.
    IL_0034:  call       instance void Game.BevelledRectangleWidget::set_BevelSize(float32)
    IL_0039:  ldarg.0
    IL_003a:  ldc.r4     0.60000002
    IL_003f:  call       instance void Game.BevelledRectangleWidget::set_AmbientLight(float32)
    IL_0044:  ldarg.0
    IL_0045:  ldc.r4     0.40000001
    IL_004a:  call       instance void Game.BevelledRectangleWidget::set_DirectionalLight(float32)
    IL_004f:  ldarg.0
    IL_0050:  ldc.r4     1.
    IL_0055:  call       instance void Game.BevelledRectangleWidget::set_TextureScale(float32)
    IL_005a:  ldarg.0
    IL_005b:  ldc.i4.0
    IL_005c:  call       instance void Game.BevelledRectangleWidget::set_TextureLinearFilter(bool)
    IL_0061:  ldarg.0
    IL_0062:  ldc.i4     0xb5
    IL_0067:  ldc.i4     0xac
    IL_006c:  ldc.i4     0x9a
    IL_0071:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0076:  call       instance void Game.BevelledRectangleWidget::set_CenterColor(valuetype [Engine]Engine.Color)
    IL_007b:  ldarg.0
    IL_007c:  ldc.i4     0xb5
    IL_0081:  ldc.i4     0xac
    IL_0086:  ldc.i4     0x9a
    IL_008b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0090:  call       instance void Game.BevelledRectangleWidget::set_BevelColor(valuetype [Engine]Engine.Color)
    IL_0095:  ldarg.0
    IL_0096:  ldc.i4.0
    IL_0097:  ldc.i4.0
    IL_0098:  ldc.i4.0
    IL_0099:  ldc.i4.s   80
    IL_009b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_00a0:  call       instance void Game.BevelledRectangleWidget::set_ShadowColor(valuetype [Engine]Engine.Color)
    IL_00a5:  ldarg.0
    IL_00a6:  ldc.i4.0
    IL_00a7:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_00ac:  ret
  } // end of method BevelledRectangleWidget::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Size() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.BevelledRectangleWidget::'<Size>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_Size

  .method public hidebysig specialname instance void 
          set_Size(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.BevelledRectangleWidget::'<Size>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledRectangleWidget::set_Size

  .method public hidebysig specialname instance float32 
          get_BevelSize() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.BevelledRectangleWidget::'<BevelSize>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_BevelSize

  .method public hidebysig specialname instance void 
          set_BevelSize(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.BevelledRectangleWidget::'<BevelSize>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledRectangleWidget::set_BevelSize

  .method public hidebysig specialname instance float32 
          get_DirectionalLight() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.BevelledRectangleWidget::'<DirectionalLight>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_DirectionalLight

  .method public hidebysig specialname instance void 
          set_DirectionalLight(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.BevelledRectangleWidget::'<DirectionalLight>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledRectangleWidget::set_DirectionalLight

  .method public hidebysig specialname instance float32 
          get_AmbientLight() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.BevelledRectangleWidget::'<AmbientLight>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_AmbientLight

  .method public hidebysig specialname instance void 
          set_AmbientLight(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.BevelledRectangleWidget::'<AmbientLight>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledRectangleWidget::set_AmbientLight

  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_Texture() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::m_texture
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_Texture

  .method public hidebysig specialname instance void 
          set_Texture(class [Engine]Engine.Graphics.Texture2D 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::m_texture
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::m_texture
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0017:  ret
  } // end of method BevelledRectangleWidget::set_Texture

  .method public hidebysig specialname instance float32 
          get_TextureScale() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.BevelledRectangleWidget::'<TextureScale>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_TextureScale

  .method public hidebysig specialname instance void 
          set_TextureScale(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.BevelledRectangleWidget::'<TextureScale>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledRectangleWidget::set_TextureScale

  .method public hidebysig specialname instance bool 
          get_TextureLinearFilter() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.BevelledRectangleWidget::m_textureLinearFilter
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_TextureLinearFilter

  .method public hidebysig specialname instance void 
          set_TextureLinearFilter(bool 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.BevelledRectangleWidget::m_textureLinearFilter
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.BevelledRectangleWidget::m_textureLinearFilter
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0017:  ret
  } // end of method BevelledRectangleWidget::set_TextureLinearFilter

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_CenterColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::'<CenterColor>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_CenterColor

  .method public hidebysig specialname instance void 
          set_CenterColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::'<CenterColor>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledRectangleWidget::set_CenterColor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_BevelColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::'<BevelColor>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_BevelColor

  .method public hidebysig specialname instance void 
          set_BevelColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::'<BevelColor>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledRectangleWidget::set_BevelColor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_ShadowColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::'<ShadowColor>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_ShadowColor

  .method public hidebysig specialname instance void 
          set_ShadowColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::'<ShadowColor>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledRectangleWidget::set_ShadowColor

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       392 (0x188)
    .maxstack  12
    .locals init (int32 V_0,
             int32 V_1,
             class [Engine]Engine.Graphics.SamplerState V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_0006:  brfalse    IL_00fd

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0011:  brtrue.s   IL_0048

    IL_0013:  ldarg.0
    IL_0014:  call       instance bool Game.BevelledRectangleWidget::get_TextureLinearFilter()
    IL_0019:  brtrue.s   IL_0022

    IL_001b:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointWrap
    IL_0020:  br.s       IL_0027

    IL_0022:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearWrap
    IL_0027:  stloc.2
    IL_0028:  ldarg.0
    IL_0029:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_002e:  ldarg.0
    IL_002f:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_0034:  ldc.i4.0
    IL_0035:  ldc.i4.0
    IL_0036:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_003b:  ldnull
    IL_003c:  ldnull
    IL_003d:  ldloc.2
    IL_003e:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0043:  stfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_004e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_0053:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_0058:  stloc.0
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_005f:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0064:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0069:  stloc.1
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_0076:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_007b:  ldarg.0
    IL_007c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0081:  ldc.r4     0.0
    IL_0086:  ldarg.0
    IL_0087:  call       instance float32 Game.BevelledRectangleWidget::get_BevelSize()
    IL_008c:  ldarg.0
    IL_008d:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    IL_0092:  ldarg.0
    IL_0093:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0098:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_009d:  ldarg.0
    IL_009e:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_00a9:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00ae:  ldarg.0
    IL_00af:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_ShadowColor()
    IL_00b4:  ldarg.0
    IL_00b5:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_00ba:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00bf:  ldarg.0
    IL_00c0:  call       instance float32 Game.BevelledRectangleWidget::get_AmbientLight()
    IL_00c5:  ldarg.0
    IL_00c6:  call       instance float32 Game.BevelledRectangleWidget::get_DirectionalLight()
    IL_00cb:  ldarg.0
    IL_00cc:  call       instance float32 Game.BevelledRectangleWidget::get_TextureScale()
    IL_00d1:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_00dc:  ldarg.0
    IL_00dd:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_00e2:  ldloc.0
    IL_00e3:  ldc.i4.m1
    IL_00e4:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_00ef:  ldarg.0
    IL_00f0:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_00f5:  ldloc.1
    IL_00f6:  ldc.i4.m1
    IL_00f7:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_00fc:  ret

    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_0103:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_0108:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_010d:  stloc.3
    IL_010e:  ldnull
    IL_010f:  ldarg.0
    IL_0110:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_0115:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_011a:  ldarg.0
    IL_011b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0120:  ldc.r4     0.0
    IL_0125:  ldarg.0
    IL_0126:  call       instance float32 Game.BevelledRectangleWidget::get_BevelSize()
    IL_012b:  ldarg.0
    IL_012c:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    IL_0131:  ldarg.0
    IL_0132:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0137:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_013c:  ldarg.0
    IL_013d:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_0142:  ldarg.0
    IL_0143:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0148:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_014d:  ldarg.0
    IL_014e:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_ShadowColor()
    IL_0153:  ldarg.0
    IL_0154:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0159:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_015e:  ldarg.0
    IL_015f:  call       instance float32 Game.BevelledRectangleWidget::get_AmbientLight()
    IL_0164:  ldarg.0
    IL_0165:  call       instance float32 Game.BevelledRectangleWidget::get_DirectionalLight()
    IL_016a:  ldc.r4     0.0
    IL_016f:  call       void Game.BevelledRectangleWidget::QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                   class [Engine]Engine.Graphics.FlatBatch2D,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   float32,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32,
                                                                                   float32,
                                                                                   float32)
    IL_0174:  ldarg.0
    IL_0175:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_017a:  ldarg.0
    IL_017b:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0180:  ldloc.3
    IL_0181:  ldc.i4.m1
    IL_0182:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_0187:  ret
  } // end of method BevelledRectangleWidget::Draw

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_0007:  stloc.0
    IL_0008:  ldloca.s   V_0
    IL_000a:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_000f:  brtrue.s   IL_0024

    IL_0011:  ldarg.0
    IL_0012:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    IL_0017:  stloc.0
    IL_0018:  ldloca.s   V_0
    IL_001a:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_001f:  ldc.i4.0
    IL_0020:  cgt.un
    IL_0022:  br.s       IL_0025

    IL_0024:  ldc.i4.1
    IL_0025:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  call       instance valuetype [Engine]Engine.Vector2 Game.BevelledRectangleWidget::get_Size()
    IL_0031:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0036:  ret
  } // end of method BevelledRectangleWidget::MeasureOverride

  .method public hidebysig static void  QueueBevelledRectangle(class [Engine]Engine.Graphics.TexturedBatch2D texturedBatch,
                                                               class [Engine]Engine.Graphics.FlatBatch2D flatBatch,
                                                               valuetype [Engine]Engine.Vector2 c1,
                                                               valuetype [Engine]Engine.Vector2 c2,
                                                               float32 depth,
                                                               float32 bevelSize,
                                                               valuetype [Engine]Engine.Color color,
                                                               valuetype [Engine]Engine.Color bevelColor,
                                                               valuetype [Engine]Engine.Color shadowColor,
                                                               float32 ambientLight,
                                                               float32 directionalLight,
                                                               float32 textureScale) cil managed
  {
    // 代码大小       1602 (0x642)
    .maxstack  11
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             float32 V_16,
             float32 V_17,
             float32 V_18,
             float32 V_19,
             valuetype [Engine]Engine.Color V_20,
             valuetype [Engine]Engine.Color V_21,
             valuetype [Engine]Engine.Color V_22,
             valuetype [Engine]Engine.Color V_23,
             valuetype [Engine]Engine.Color V_24,
             float32 V_25,
             float32 V_26,
             float32 V_27,
             float32 V_28,
             float32 V_29,
             float32 V_30,
             float32 V_31,
             float32 V_32,
             float32 V_33,
             float32 V_34,
             float32 V_35,
             float32 V_36,
             valuetype [Engine]Engine.Color V_37,
             valuetype [Engine]Engine.Color V_38)
    IL_0000:  ldarg.s    bevelSize
    IL_0002:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.2
    IL_0009:  stloc.1
    IL_000a:  ldarg.2
    IL_000b:  ldloc.0
    IL_000c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0011:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0016:  stloc.2
    IL_0017:  ldarg.3
    IL_0018:  ldloc.0
    IL_0019:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_001e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0023:  stloc.3
    IL_0024:  ldarg.3
    IL_0025:  stloc.s    V_4
    IL_0027:  ldarg.3
    IL_0028:  ldc.r4     1.5
    IL_002d:  ldloc.0
    IL_002e:  mul
    IL_002f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0034:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0039:  ldloc.1
    IL_003a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003f:  stloc.s    V_5
    IL_0041:  ldloc.2
    IL_0042:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0047:  stloc.s    V_6
    IL_0049:  ldloc.3
    IL_004a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004f:  stloc.s    V_7
    IL_0051:  ldloc.s    V_4
    IL_0053:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0058:  stloc.s    V_8
    IL_005a:  dup
    IL_005b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0060:  stloc.s    V_9
    IL_0062:  ldloc.1
    IL_0063:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0068:  stloc.s    V_10
    IL_006a:  ldloc.2
    IL_006b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0070:  stloc.s    V_11
    IL_0072:  ldloc.3
    IL_0073:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0078:  stloc.s    V_12
    IL_007a:  ldloc.s    V_4
    IL_007c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0081:  stloc.s    V_13
    IL_0083:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0088:  stloc.s    V_14
    IL_008a:  ldarg.s    bevelSize
    IL_008c:  ldc.r4     0.0
    IL_0091:  bgt.s      IL_009a

    IL_0093:  ldc.r4     -0.75
    IL_0098:  br.s       IL_009f

    IL_009a:  ldc.r4     1.
    IL_009f:  ldarg.s    directionalLight
    IL_00a1:  mul
    IL_00a2:  ldarg.s    ambientLight
    IL_00a4:  add
    IL_00a5:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00aa:  stloc.s    V_15
    IL_00ac:  ldarg.s    bevelSize
    IL_00ae:  ldc.r4     0.0
    IL_00b3:  bgt.s      IL_00bc

    IL_00b5:  ldc.r4     1.
    IL_00ba:  br.s       IL_00c1

    IL_00bc:  ldc.r4     -0.75
    IL_00c1:  ldarg.s    directionalLight
    IL_00c3:  mul
    IL_00c4:  ldarg.s    ambientLight
    IL_00c6:  add
    IL_00c7:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00cc:  stloc.s    V_16
    IL_00ce:  ldarg.s    bevelSize
    IL_00d0:  ldc.r4     0.0
    IL_00d5:  bgt.s      IL_00de

    IL_00d7:  ldc.r4     0.5
    IL_00dc:  br.s       IL_00e3

    IL_00de:  ldc.r4     -0.375
    IL_00e3:  ldarg.s    directionalLight
    IL_00e5:  mul
    IL_00e6:  ldarg.s    ambientLight
    IL_00e8:  add
    IL_00e9:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00ee:  stloc.s    V_17
    IL_00f0:  ldarg.s    bevelSize
    IL_00f2:  ldc.r4     0.0
    IL_00f7:  bgt.s      IL_0100

    IL_00f9:  ldc.r4     -0.375
    IL_00fe:  br.s       IL_0105

    IL_0100:  ldc.r4     0.5
    IL_0105:  ldarg.s    directionalLight
    IL_0107:  mul
    IL_0108:  ldarg.s    ambientLight
    IL_010a:  add
    IL_010b:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0110:  stloc.s    V_18
    IL_0112:  ldc.r4     0.0
    IL_0117:  ldarg.s    directionalLight
    IL_0119:  mul
    IL_011a:  ldarg.s    ambientLight
    IL_011c:  add
    IL_011d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0122:  stloc.s    V_19
    IL_0124:  ldloca.s   V_20
    IL_0126:  ldloc.s    V_17
    IL_0128:  ldarga.s   bevelColor
    IL_012a:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_012f:  conv.r4
    IL_0130:  mul
    IL_0131:  conv.u1
    IL_0132:  ldloc.s    V_17
    IL_0134:  ldarga.s   bevelColor
    IL_0136:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_013b:  conv.r4
    IL_013c:  mul
    IL_013d:  conv.u1
    IL_013e:  ldloc.s    V_17
    IL_0140:  ldarga.s   bevelColor
    IL_0142:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0147:  conv.r4
    IL_0148:  mul
    IL_0149:  conv.u1
    IL_014a:  ldarga.s   bevelColor
    IL_014c:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0151:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0156:  ldloca.s   V_21
    IL_0158:  ldloc.s    V_18
    IL_015a:  ldarga.s   bevelColor
    IL_015c:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0161:  conv.r4
    IL_0162:  mul
    IL_0163:  conv.u1
    IL_0164:  ldloc.s    V_18
    IL_0166:  ldarga.s   bevelColor
    IL_0168:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_016d:  conv.r4
    IL_016e:  mul
    IL_016f:  conv.u1
    IL_0170:  ldloc.s    V_18
    IL_0172:  ldarga.s   bevelColor
    IL_0174:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0179:  conv.r4
    IL_017a:  mul
    IL_017b:  conv.u1
    IL_017c:  ldarga.s   bevelColor
    IL_017e:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0183:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0188:  ldloca.s   V_22
    IL_018a:  ldloc.s    V_15
    IL_018c:  ldarga.s   bevelColor
    IL_018e:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0193:  conv.r4
    IL_0194:  mul
    IL_0195:  conv.u1
    IL_0196:  ldloc.s    V_15
    IL_0198:  ldarga.s   bevelColor
    IL_019a:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_019f:  conv.r4
    IL_01a0:  mul
    IL_01a1:  conv.u1
    IL_01a2:  ldloc.s    V_15
    IL_01a4:  ldarga.s   bevelColor
    IL_01a6:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_01ab:  conv.r4
    IL_01ac:  mul
    IL_01ad:  conv.u1
    IL_01ae:  ldarga.s   bevelColor
    IL_01b0:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_01b5:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_01ba:  ldloca.s   V_23
    IL_01bc:  ldloc.s    V_16
    IL_01be:  ldarga.s   bevelColor
    IL_01c0:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_01c5:  conv.r4
    IL_01c6:  mul
    IL_01c7:  conv.u1
    IL_01c8:  ldloc.s    V_16
    IL_01ca:  ldarga.s   bevelColor
    IL_01cc:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_01d1:  conv.r4
    IL_01d2:  mul
    IL_01d3:  conv.u1
    IL_01d4:  ldloc.s    V_16
    IL_01d6:  ldarga.s   bevelColor
    IL_01d8:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_01dd:  conv.r4
    IL_01de:  mul
    IL_01df:  conv.u1
    IL_01e0:  ldarga.s   bevelColor
    IL_01e2:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_01e7:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_01ec:  ldloca.s   V_24
    IL_01ee:  ldloc.s    V_19
    IL_01f0:  ldarga.s   color
    IL_01f2:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_01f7:  conv.r4
    IL_01f8:  mul
    IL_01f9:  conv.u1
    IL_01fa:  ldloc.s    V_19
    IL_01fc:  ldarga.s   color
    IL_01fe:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0203:  conv.r4
    IL_0204:  mul
    IL_0205:  conv.u1
    IL_0206:  ldloc.s    V_19
    IL_0208:  ldarga.s   color
    IL_020a:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_020f:  conv.r4
    IL_0210:  mul
    IL_0211:  conv.u1
    IL_0212:  ldarga.s   color
    IL_0214:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0219:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_021e:  ldarg.0
    IL_021f:  brfalse    IL_043f

    IL_0224:  ldarg.s    textureScale
    IL_0226:  ldarg.0
    IL_0227:  callvirt   instance class [Engine]Engine.Graphics.Texture2D [Engine]Engine.Graphics.BaseTexturedBatch::get_Texture()
    IL_022c:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0231:  conv.r4
    IL_0232:  div
    IL_0233:  stloc.s    V_25
    IL_0235:  ldarg.s    textureScale
    IL_0237:  ldarg.0
    IL_0238:  callvirt   instance class [Engine]Engine.Graphics.Texture2D [Engine]Engine.Graphics.BaseTexturedBatch::get_Texture()
    IL_023d:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0242:  conv.r4
    IL_0243:  div
    IL_0244:  stloc.s    V_26
    IL_0246:  ldloc.s    V_5
    IL_0248:  ldloc.s    V_25
    IL_024a:  mul
    IL_024b:  stloc.s    V_27
    IL_024d:  ldloc.s    V_10
    IL_024f:  ldloc.s    V_26
    IL_0251:  mul
    IL_0252:  stloc.s    V_28
    IL_0254:  ldloc.s    V_27
    IL_0256:  stloc.s    V_29
    IL_0258:  ldloc.s    V_6
    IL_025a:  ldloc.s    V_5
    IL_025c:  sub
    IL_025d:  ldloc.s    V_25
    IL_025f:  mul
    IL_0260:  ldloc.s    V_27
    IL_0262:  add
    IL_0263:  stloc.s    V_30
    IL_0265:  ldloc.s    V_7
    IL_0267:  ldloc.s    V_5
    IL_0269:  sub
    IL_026a:  ldloc.s    V_25
    IL_026c:  mul
    IL_026d:  ldloc.s    V_27
    IL_026f:  add
    IL_0270:  stloc.s    V_31
    IL_0272:  ldloc.s    V_8
    IL_0274:  ldloc.s    V_5
    IL_0276:  sub
    IL_0277:  ldloc.s    V_25
    IL_0279:  mul
    IL_027a:  ldloc.s    V_27
    IL_027c:  add
    IL_027d:  stloc.s    V_32
    IL_027f:  ldloc.s    V_28
    IL_0281:  stloc.s    V_33
    IL_0283:  ldloc.s    V_11
    IL_0285:  ldloc.s    V_10
    IL_0287:  sub
    IL_0288:  ldloc.s    V_26
    IL_028a:  mul
    IL_028b:  ldloc.s    V_28
    IL_028d:  add
    IL_028e:  stloc.s    V_34
    IL_0290:  ldloc.s    V_12
    IL_0292:  ldloc.s    V_10
    IL_0294:  sub
    IL_0295:  ldloc.s    V_26
    IL_0297:  mul
    IL_0298:  ldloc.s    V_28
    IL_029a:  add
    IL_029b:  stloc.s    V_35
    IL_029d:  ldloc.s    V_13
    IL_029f:  ldloc.s    V_10
    IL_02a1:  sub
    IL_02a2:  ldloc.s    V_26
    IL_02a4:  mul
    IL_02a5:  ldloc.s    V_28
    IL_02a7:  add
    IL_02a8:  stloc.s    V_36
    IL_02aa:  ldarga.s   bevelColor
    IL_02ac:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_02b1:  ldc.i4.0
    IL_02b2:  ble        IL_03ff

    IL_02b7:  ldarg.0
    IL_02b8:  ldloc.s    V_5
    IL_02ba:  ldloc.s    V_10
    IL_02bc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02c1:  ldloc.s    V_6
    IL_02c3:  ldloc.s    V_11
    IL_02c5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02ca:  ldloc.s    V_7
    IL_02cc:  ldloc.s    V_11
    IL_02ce:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02d3:  ldloc.s    V_8
    IL_02d5:  ldloc.s    V_10
    IL_02d7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02dc:  ldarg.s    depth
    IL_02de:  ldloc.s    V_29
    IL_02e0:  ldloc.s    V_33
    IL_02e2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02e7:  ldloc.s    V_30
    IL_02e9:  ldloc.s    V_34
    IL_02eb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02f0:  ldloc.s    V_31
    IL_02f2:  ldloc.s    V_34
    IL_02f4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02f9:  ldloc.s    V_32
    IL_02fb:  ldloc.s    V_33
    IL_02fd:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0302:  ldloc.s    V_22
    IL_0304:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0309:  ldarg.0
    IL_030a:  ldloc.s    V_7
    IL_030c:  ldloc.s    V_11
    IL_030e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0313:  ldloc.s    V_7
    IL_0315:  ldloc.s    V_12
    IL_0317:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_031c:  ldloc.s    V_8
    IL_031e:  ldloc.s    V_13
    IL_0320:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0325:  ldloc.s    V_8
    IL_0327:  ldloc.s    V_10
    IL_0329:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_032e:  ldarg.s    depth
    IL_0330:  ldloc.s    V_31
    IL_0332:  ldloc.s    V_34
    IL_0334:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0339:  ldloc.s    V_31
    IL_033b:  ldloc.s    V_35
    IL_033d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0342:  ldloc.s    V_32
    IL_0344:  ldloc.s    V_36
    IL_0346:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_034b:  ldloc.s    V_32
    IL_034d:  ldloc.s    V_33
    IL_034f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0354:  ldloc.s    V_21
    IL_0356:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_035b:  ldarg.0
    IL_035c:  ldloc.s    V_5
    IL_035e:  ldloc.s    V_13
    IL_0360:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0365:  ldloc.s    V_8
    IL_0367:  ldloc.s    V_13
    IL_0369:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_036e:  ldloc.s    V_7
    IL_0370:  ldloc.s    V_12
    IL_0372:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0377:  ldloc.s    V_6
    IL_0379:  ldloc.s    V_12
    IL_037b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0380:  ldarg.s    depth
    IL_0382:  ldloc.s    V_29
    IL_0384:  ldloc.s    V_36
    IL_0386:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_038b:  ldloc.s    V_32
    IL_038d:  ldloc.s    V_36
    IL_038f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0394:  ldloc.s    V_31
    IL_0396:  ldloc.s    V_35
    IL_0398:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_039d:  ldloc.s    V_30
    IL_039f:  ldloc.s    V_35
    IL_03a1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03a6:  ldloc.s    V_23
    IL_03a8:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_03ad:  ldarg.0
    IL_03ae:  ldloc.s    V_5
    IL_03b0:  ldloc.s    V_10
    IL_03b2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03b7:  ldloc.s    V_5
    IL_03b9:  ldloc.s    V_13
    IL_03bb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03c0:  ldloc.s    V_6
    IL_03c2:  ldloc.s    V_12
    IL_03c4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03c9:  ldloc.s    V_6
    IL_03cb:  ldloc.s    V_11
    IL_03cd:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03d2:  ldarg.s    depth
    IL_03d4:  ldloc.s    V_29
    IL_03d6:  ldloc.s    V_33
    IL_03d8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03dd:  ldloc.s    V_29
    IL_03df:  ldloc.s    V_36
    IL_03e1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03e6:  ldloc.s    V_30
    IL_03e8:  ldloc.s    V_35
    IL_03ea:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03ef:  ldloc.s    V_30
    IL_03f1:  ldloc.s    V_34
    IL_03f3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f8:  ldloc.s    V_20
    IL_03fa:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_03ff:  ldloca.s   V_24
    IL_0401:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0406:  ldc.i4.0
    IL_0407:  ble        IL_0530

    IL_040c:  ldarg.0
    IL_040d:  ldloc.s    V_6
    IL_040f:  ldloc.s    V_11
    IL_0411:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0416:  ldloc.s    V_7
    IL_0418:  ldloc.s    V_12
    IL_041a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_041f:  ldarg.s    depth
    IL_0421:  ldloc.s    V_30
    IL_0423:  ldloc.s    V_34
    IL_0425:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_042a:  ldloc.s    V_31
    IL_042c:  ldloc.s    V_35
    IL_042e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0433:  ldloc.s    V_24
    IL_0435:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_043a:  br         IL_0530

    IL_043f:  ldarg.1
    IL_0440:  brfalse    IL_0530

    IL_0445:  ldarga.s   bevelColor
    IL_0447:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_044c:  ldc.i4.0
    IL_044d:  ble        IL_050a

    IL_0452:  ldarg.1
    IL_0453:  ldloc.s    V_5
    IL_0455:  ldloc.s    V_10
    IL_0457:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_045c:  ldloc.s    V_6
    IL_045e:  ldloc.s    V_11
    IL_0460:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0465:  ldloc.s    V_7
    IL_0467:  ldloc.s    V_11
    IL_0469:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_046e:  ldloc.s    V_8
    IL_0470:  ldloc.s    V_10
    IL_0472:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0477:  ldarg.s    depth
    IL_0479:  ldloc.s    V_22
    IL_047b:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0480:  ldarg.1
    IL_0481:  ldloc.s    V_7
    IL_0483:  ldloc.s    V_11
    IL_0485:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_048a:  ldloc.s    V_7
    IL_048c:  ldloc.s    V_12
    IL_048e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0493:  ldloc.s    V_8
    IL_0495:  ldloc.s    V_13
    IL_0497:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_049c:  ldloc.s    V_8
    IL_049e:  ldloc.s    V_10
    IL_04a0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04a5:  ldarg.s    depth
    IL_04a7:  ldloc.s    V_21
    IL_04a9:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_04ae:  ldarg.1
    IL_04af:  ldloc.s    V_5
    IL_04b1:  ldloc.s    V_13
    IL_04b3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04b8:  ldloc.s    V_8
    IL_04ba:  ldloc.s    V_13
    IL_04bc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04c1:  ldloc.s    V_7
    IL_04c3:  ldloc.s    V_12
    IL_04c5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04ca:  ldloc.s    V_6
    IL_04cc:  ldloc.s    V_12
    IL_04ce:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04d3:  ldarg.s    depth
    IL_04d5:  ldloc.s    V_23
    IL_04d7:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_04dc:  ldarg.1
    IL_04dd:  ldloc.s    V_5
    IL_04df:  ldloc.s    V_10
    IL_04e1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04e6:  ldloc.s    V_5
    IL_04e8:  ldloc.s    V_13
    IL_04ea:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04ef:  ldloc.s    V_6
    IL_04f1:  ldloc.s    V_12
    IL_04f3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04f8:  ldloc.s    V_6
    IL_04fa:  ldloc.s    V_11
    IL_04fc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0501:  ldarg.s    depth
    IL_0503:  ldloc.s    V_20
    IL_0505:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_050a:  ldloca.s   V_24
    IL_050c:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0511:  ldc.i4.0
    IL_0512:  ble.s      IL_0530

    IL_0514:  ldarg.1
    IL_0515:  ldloc.s    V_6
    IL_0517:  ldloc.s    V_11
    IL_0519:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_051e:  ldloc.s    V_7
    IL_0520:  ldloc.s    V_12
    IL_0522:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0527:  ldarg.s    depth
    IL_0529:  ldloc.s    V_24
    IL_052b:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0530:  ldarg.s    bevelSize
    IL_0532:  ldc.r4     0.0
    IL_0537:  ble.un     IL_0641

    IL_053c:  ldarg.1
    IL_053d:  brfalse    IL_0641

    IL_0542:  ldarga.s   shadowColor
    IL_0544:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0549:  ldc.i4.0
    IL_054a:  ble        IL_0641

    IL_054f:  ldarg.s    shadowColor
    IL_0551:  stloc.s    V_37
    IL_0553:  ldloca.s   V_38
    IL_0555:  ldc.i4.0
    IL_0556:  ldc.i4.0
    IL_0557:  ldc.i4.0
    IL_0558:  ldc.i4.0
    IL_0559:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_055e:  ldarg.1
    IL_055f:  ldloc.s    V_5
    IL_0561:  ldloc.s    V_13
    IL_0563:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0568:  ldloc.s    V_6
    IL_056a:  ldloc.s    V_14
    IL_056c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0571:  ldloc.s    V_6
    IL_0573:  ldloc.s    V_13
    IL_0575:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_057a:  ldarg.s    depth
    IL_057c:  ldloc.s    V_38
    IL_057e:  ldloc.s    V_38
    IL_0580:  ldloc.s    V_37
    IL_0582:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0587:  ldarg.1
    IL_0588:  ldloc.s    V_8
    IL_058a:  ldloc.s    V_10
    IL_058c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0591:  ldloc.s    V_8
    IL_0593:  ldloc.s    V_11
    IL_0595:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_059a:  ldloc.s    V_9
    IL_059c:  ldloc.s    V_11
    IL_059e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05a3:  ldarg.s    depth
    IL_05a5:  ldloc.s    V_38
    IL_05a7:  ldloc.s    V_37
    IL_05a9:  ldloc.s    V_38
    IL_05ab:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_05b0:  ldarg.1
    IL_05b1:  ldloc.s    V_8
    IL_05b3:  ldloc.s    V_13
    IL_05b5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05ba:  ldloc.s    V_8
    IL_05bc:  ldloc.s    V_14
    IL_05be:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05c3:  ldloc.s    V_9
    IL_05c5:  ldloc.s    V_13
    IL_05c7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05cc:  ldarg.s    depth
    IL_05ce:  ldloc.s    V_37
    IL_05d0:  ldloc.s    V_38
    IL_05d2:  ldloc.s    V_38
    IL_05d4:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_05d9:  ldarg.1
    IL_05da:  ldloc.s    V_6
    IL_05dc:  ldloc.s    V_13
    IL_05de:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05e3:  ldloc.s    V_6
    IL_05e5:  ldloc.s    V_14
    IL_05e7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05ec:  ldloc.s    V_8
    IL_05ee:  ldloc.s    V_14
    IL_05f0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05f5:  ldloc.s    V_8
    IL_05f7:  ldloc.s    V_13
    IL_05f9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05fe:  ldarg.s    depth
    IL_0600:  ldloc.s    V_37
    IL_0602:  ldloc.s    V_38
    IL_0604:  ldloc.s    V_38
    IL_0606:  ldloc.s    V_37
    IL_0608:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Color)
    IL_060d:  ldarg.1
    IL_060e:  ldloc.s    V_8
    IL_0610:  ldloc.s    V_11
    IL_0612:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0617:  ldloc.s    V_8
    IL_0619:  ldloc.s    V_13
    IL_061b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0620:  ldloc.s    V_9
    IL_0622:  ldloc.s    V_13
    IL_0624:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0629:  ldloc.s    V_9
    IL_062b:  ldloc.s    V_11
    IL_062d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0632:  ldarg.s    depth
    IL_0634:  ldloc.s    V_37
    IL_0636:  ldloc.s    V_37
    IL_0638:  ldloc.s    V_38
    IL_063a:  ldloc.s    V_38
    IL_063c:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0641:  ret
  } // end of method BevelledRectangleWidget::QueueBevelledRectangle

  .property instance valuetype [Engine]Engine.Vector2
          Size()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.BevelledRectangleWidget::get_Size()
    .set instance void Game.BevelledRectangleWidget::set_Size(valuetype [Engine]Engine.Vector2)
  } // end of property BevelledRectangleWidget::Size
  .property instance float32 BevelSize()
  {
    .get instance float32 Game.BevelledRectangleWidget::get_BevelSize()
    .set instance void Game.BevelledRectangleWidget::set_BevelSize(float32)
  } // end of property BevelledRectangleWidget::BevelSize
  .property instance float32 DirectionalLight()
  {
    .get instance float32 Game.BevelledRectangleWidget::get_DirectionalLight()
    .set instance void Game.BevelledRectangleWidget::set_DirectionalLight(float32)
  } // end of property BevelledRectangleWidget::DirectionalLight
  .property instance float32 AmbientLight()
  {
    .get instance float32 Game.BevelledRectangleWidget::get_AmbientLight()
    .set instance void Game.BevelledRectangleWidget::set_AmbientLight(float32)
  } // end of property BevelledRectangleWidget::AmbientLight
  .property instance class [Engine]Engine.Graphics.Texture2D
          Texture()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    .set instance void Game.BevelledRectangleWidget::set_Texture(class [Engine]Engine.Graphics.Texture2D)
  } // end of property BevelledRectangleWidget::Texture
  .property instance float32 TextureScale()
  {
    .get instance float32 Game.BevelledRectangleWidget::get_TextureScale()
    .set instance void Game.BevelledRectangleWidget::set_TextureScale(float32)
  } // end of property BevelledRectangleWidget::TextureScale
  .property instance bool TextureLinearFilter()
  {
    .get instance bool Game.BevelledRectangleWidget::get_TextureLinearFilter()
    .set instance void Game.BevelledRectangleWidget::set_TextureLinearFilter(bool)
  } // end of property BevelledRectangleWidget::TextureLinearFilter
  .property instance valuetype [Engine]Engine.Color
          CenterColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    .set instance void Game.BevelledRectangleWidget::set_CenterColor(valuetype [Engine]Engine.Color)
  } // end of property BevelledRectangleWidget::CenterColor
  .property instance valuetype [Engine]Engine.Color
          BevelColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    .set instance void Game.BevelledRectangleWidget::set_BevelColor(valuetype [Engine]Engine.Color)
  } // end of property BevelledRectangleWidget::BevelColor
  .property instance valuetype [Engine]Engine.Color
          ShadowColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_ShadowColor()
    .set instance void Game.BevelledRectangleWidget::set_ShadowColor(valuetype [Engine]Engine.Color)
  } // end of property BevelledRectangleWidget::ShadowColor
} // end of class Game.BevelledRectangleWidget