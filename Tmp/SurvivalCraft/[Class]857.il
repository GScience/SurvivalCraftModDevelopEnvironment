.class public auto ansi beforefieldinit Game.RectangleWidget
       extends Game.Widget
{
  .field private class [Engine]Engine.Graphics.FlatBatch2D m_flatBatch
  .field private class [Engine]Engine.Graphics.TexturedBatch2D m_texturedBatch
  .field private class Game.Subtexture m_subtexture
  .field private bool m_textureWrap
  .field private bool m_textureLinearFilter
  .field private valuetype [Engine]Engine.Vector2 '<Size>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<FlipHorizontal>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<FlipVertical>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<FillColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<OutlineColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<OutlineThickness>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0006:  ldc.i4.1
    IL_0007:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_000c:  ldnull
    IL_000d:  ldnull
    IL_000e:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0013:  stfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_0018:  ldarg.0
    IL_0019:  call       instance void Game.Widget::.ctor()
    IL_001e:  ldarg.0
    IL_001f:  ldc.r4     (00 00 80 7F)
    IL_0024:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0029:  call       instance void Game.RectangleWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_002e:  ldarg.0
    IL_002f:  ldc.i4.1
    IL_0030:  call       instance void Game.RectangleWidget::set_TextureLinearFilter(bool)
    IL_0035:  ldarg.0
    IL_0036:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_003b:  call       instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0040:  ldarg.0
    IL_0041:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0046:  call       instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_004b:  ldarg.0
    IL_004c:  ldc.r4     1.
    IL_0051:  call       instance void Game.RectangleWidget::set_OutlineThickness(float32)
    IL_0056:  ldarg.0
    IL_0057:  ldc.i4.0
    IL_0058:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_005d:  ret
  } // end of method RectangleWidget::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Size() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.RectangleWidget::'<Size>k__BackingField'
    IL_0006:  ret
  } // end of method RectangleWidget::get_Size

  .method public hidebysig specialname instance void 
          set_Size(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.RectangleWidget::'<Size>k__BackingField'
    IL_0007:  ret
  } // end of method RectangleWidget::set_Size

  .method public hidebysig specialname instance class Game.Subtexture 
          get_Subtexture() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Subtexture Game.RectangleWidget::m_subtexture
    IL_0006:  ret
  } // end of method RectangleWidget::get_Subtexture

  .method public hidebysig specialname instance void 
          set_Subtexture(class Game.Subtexture 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Subtexture Game.RectangleWidget::m_subtexture
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      class Game.Subtexture Game.RectangleWidget::m_subtexture
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.RectangleWidget::m_texturedBatch
    IL_0017:  ret
  } // end of method RectangleWidget::set_Subtexture

  .method public hidebysig specialname instance bool 
          get_TextureWrap() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.RectangleWidget::m_textureWrap
    IL_0006:  ret
  } // end of method RectangleWidget::get_TextureWrap

  .method public hidebysig specialname instance void 
          set_TextureWrap(bool 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.RectangleWidget::m_textureWrap
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.RectangleWidget::m_textureWrap
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.RectangleWidget::m_texturedBatch
    IL_0017:  ret
  } // end of method RectangleWidget::set_TextureWrap

  .method public hidebysig specialname instance bool 
          get_TextureLinearFilter() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.RectangleWidget::m_textureLinearFilter
    IL_0006:  ret
  } // end of method RectangleWidget::get_TextureLinearFilter

  .method public hidebysig specialname instance void 
          set_TextureLinearFilter(bool 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.RectangleWidget::m_textureLinearFilter
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.RectangleWidget::m_textureLinearFilter
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.RectangleWidget::m_texturedBatch
    IL_0017:  ret
  } // end of method RectangleWidget::set_TextureLinearFilter

  .method public hidebysig specialname instance bool 
          get_FlipHorizontal() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.RectangleWidget::'<FlipHorizontal>k__BackingField'
    IL_0006:  ret
  } // end of method RectangleWidget::get_FlipHorizontal

  .method public hidebysig specialname instance void 
          set_FlipHorizontal(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.RectangleWidget::'<FlipHorizontal>k__BackingField'
    IL_0007:  ret
  } // end of method RectangleWidget::set_FlipHorizontal

  .method public hidebysig specialname instance bool 
          get_FlipVertical() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.RectangleWidget::'<FlipVertical>k__BackingField'
    IL_0006:  ret
  } // end of method RectangleWidget::get_FlipVertical

  .method public hidebysig specialname instance void 
          set_FlipVertical(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.RectangleWidget::'<FlipVertical>k__BackingField'
    IL_0007:  ret
  } // end of method RectangleWidget::set_FlipVertical

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_FillColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.RectangleWidget::'<FillColor>k__BackingField'
    IL_0006:  ret
  } // end of method RectangleWidget::get_FillColor

  .method public hidebysig specialname instance void 
          set_FillColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.RectangleWidget::'<FillColor>k__BackingField'
    IL_0007:  ret
  } // end of method RectangleWidget::set_FillColor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_OutlineColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.RectangleWidget::'<OutlineColor>k__BackingField'
    IL_0006:  ret
  } // end of method RectangleWidget::get_OutlineColor

  .method public hidebysig specialname instance void 
          set_OutlineColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.RectangleWidget::'<OutlineColor>k__BackingField'
    IL_0007:  ret
  } // end of method RectangleWidget::set_OutlineColor

  .method public hidebysig specialname instance float32 
          get_OutlineThickness() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.RectangleWidget::'<OutlineThickness>k__BackingField'
    IL_0006:  ret
  } // end of method RectangleWidget::get_OutlineThickness

  .method public hidebysig specialname instance void 
          set_OutlineThickness(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.RectangleWidget::'<OutlineThickness>k__BackingField'
    IL_0007:  ret
  } // end of method RectangleWidget::set_OutlineThickness

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       765 (0x2fd)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Color V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             class [Engine]Engine.Graphics.SamplerState V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             int32 V_8,
             int32 V_9)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_FillColor()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_000e:  brfalse    IL_01c8

    IL_0013:  ldarg.0
    IL_0014:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0019:  call       float32 Game.WidgetsManager::get_Scale()
    IL_001e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0023:  stloc.1
    IL_0024:  ldarg.0
    IL_0025:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_002a:  ldarg.0
    IL_002b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0030:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0035:  call       float32 Game.WidgetsManager::get_Scale()
    IL_003a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_003f:  stloc.2
    IL_0040:  ldloca.s   V_1
    IL_0042:  ldloc.1
    IL_0043:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0048:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_004d:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0052:  ldloca.s   V_1
    IL_0054:  ldloc.1
    IL_0055:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005a:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_005f:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0064:  ldloca.s   V_2
    IL_0066:  ldloc.2
    IL_0067:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_006c:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0071:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0076:  ldloca.s   V_2
    IL_0078:  ldloc.2
    IL_0079:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_007e:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0083:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0088:  ldarg.0
    IL_0089:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_008e:  brfalse    IL_01b0

    IL_0093:  ldarg.0
    IL_0094:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.RectangleWidget::m_texturedBatch
    IL_0099:  brtrue.s   IL_00f5

    IL_009b:  ldarg.0
    IL_009c:  call       instance bool Game.RectangleWidget::get_TextureWrap()
    IL_00a1:  brtrue.s   IL_00b9

    IL_00a3:  ldarg.0
    IL_00a4:  call       instance bool Game.RectangleWidget::get_TextureLinearFilter()
    IL_00a9:  brtrue.s   IL_00b2

    IL_00ab:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_00b0:  br.s       IL_00cd

    IL_00b2:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_00b7:  br.s       IL_00cd

    IL_00b9:  ldarg.0
    IL_00ba:  call       instance bool Game.RectangleWidget::get_TextureLinearFilter()
    IL_00bf:  brtrue.s   IL_00c8

    IL_00c1:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointWrap
    IL_00c6:  br.s       IL_00cd

    IL_00c8:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearWrap
    IL_00cd:  stloc.s    V_5
    IL_00cf:  ldarg.0
    IL_00d0:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_00d5:  ldarg.0
    IL_00d6:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_00db:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_00e0:  ldc.i4.0
    IL_00e1:  ldc.i4.0
    IL_00e2:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_00e7:  ldnull
    IL_00e8:  ldnull
    IL_00e9:  ldloc.s    V_5
    IL_00eb:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_00f0:  stfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.RectangleWidget::m_texturedBatch
    IL_00f5:  ldarg.0
    IL_00f6:  call       instance bool Game.RectangleWidget::get_TextureWrap()
    IL_00fb:  brfalse.s  IL_0144

    IL_00fd:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0102:  stloc.3
    IL_0103:  ldloc.2
    IL_0104:  ldloc.1
    IL_0105:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_010a:  call       float32 Game.WidgetsManager::get_Scale()
    IL_010f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0114:  ldarg.0
    IL_0115:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_011a:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_011f:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0124:  conv.r4
    IL_0125:  ldarg.0
    IL_0126:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_012b:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_0130:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0135:  conv.r4
    IL_0136:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_013b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0140:  stloc.s    V_4
    IL_0142:  br.s       IL_015d

    IL_0144:  ldarg.0
    IL_0145:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_014a:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_014f:  stloc.3
    IL_0150:  ldarg.0
    IL_0151:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_0156:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_015b:  stloc.s    V_4
    IL_015d:  ldarg.0
    IL_015e:  call       instance bool Game.RectangleWidget::get_FlipHorizontal()
    IL_0163:  brfalse.s  IL_0178

    IL_0165:  ldloca.s   V_3
    IL_0167:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_016c:  ldloca.s   V_4
    IL_016e:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0173:  call       void Game.RectangleWidget::Swap(float32&,
                                                         float32&)
    IL_0178:  ldarg.0
    IL_0179:  call       instance bool Game.RectangleWidget::get_FlipVertical()
    IL_017e:  brfalse.s  IL_0193

    IL_0180:  ldloca.s   V_3
    IL_0182:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0187:  ldloca.s   V_4
    IL_0189:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_018e:  call       void Game.RectangleWidget::Swap(float32&,
                                                         float32&)
    IL_0193:  ldarg.0
    IL_0194:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.RectangleWidget::m_texturedBatch
    IL_0199:  ldloc.1
    IL_019a:  ldloc.2
    IL_019b:  ldc.r4     0.0
    IL_01a0:  ldloc.3
    IL_01a1:  ldloc.s    V_4
    IL_01a3:  ldarg.0
    IL_01a4:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_FillColor()
    IL_01a9:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_01ae:  br.s       IL_01c8

    IL_01b0:  ldarg.0
    IL_01b1:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_01b6:  ldloc.1
    IL_01b7:  ldloc.2
    IL_01b8:  ldc.r4     0.0
    IL_01bd:  ldarg.0
    IL_01be:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_FillColor()
    IL_01c3:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_01c8:  ldarg.0
    IL_01c9:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_OutlineColor()
    IL_01ce:  stloc.0
    IL_01cf:  ldloca.s   V_0
    IL_01d1:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_01d6:  brfalse    IL_02fc

    IL_01db:  ldarg.0
    IL_01dc:  call       instance float32 Game.RectangleWidget::get_OutlineThickness()
    IL_01e1:  ldc.r4     0.0
    IL_01e6:  ble.un     IL_02fc

    IL_01eb:  ldarg.0
    IL_01ec:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_01f1:  call       float32 Game.WidgetsManager::get_Scale()
    IL_01f6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_01fb:  stloc.s    V_6
    IL_01fd:  ldarg.0
    IL_01fe:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0203:  ldarg.0
    IL_0204:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0209:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_020e:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0213:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0218:  ldc.r4     1.
    IL_021d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0222:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0227:  stloc.s    V_7
    IL_0229:  ldloca.s   V_6
    IL_022b:  ldloc.s    V_6
    IL_022d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0232:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0237:  ldc.r4     0.5
    IL_023c:  sub
    IL_023d:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0242:  ldloca.s   V_6
    IL_0244:  ldloc.s    V_6
    IL_0246:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_024b:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0250:  ldc.r4     0.5
    IL_0255:  sub
    IL_0256:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_025b:  ldloca.s   V_7
    IL_025d:  ldloc.s    V_7
    IL_025f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0264:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0269:  ldc.r4     0.5
    IL_026e:  sub
    IL_026f:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0274:  ldloca.s   V_7
    IL_0276:  ldloc.s    V_7
    IL_0278:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_027d:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0282:  ldc.r4     0.5
    IL_0287:  sub
    IL_0288:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_028d:  ldarg.0
    IL_028e:  call       instance float32 Game.RectangleWidget::get_OutlineThickness()
    IL_0293:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0298:  mul
    IL_0299:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_029e:  ldc.r4     1.
    IL_02a3:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02a8:  conv.i4
    IL_02a9:  stloc.s    V_8
    IL_02ab:  ldc.i4.0
    IL_02ac:  stloc.s    V_9
    IL_02ae:  br.s       IL_02f6

    IL_02b0:  ldarg.0
    IL_02b1:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_02b6:  ldloc.s    V_6
    IL_02b8:  ldloc.s    V_7
    IL_02ba:  ldc.r4     0.0
    IL_02bf:  ldarg.0
    IL_02c0:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_OutlineColor()
    IL_02c5:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueRectangle(valuetype [Engine]Engine.Vector2,
                                                                                           valuetype [Engine]Engine.Vector2,
                                                                                           float32,
                                                                                           valuetype [Engine]Engine.Color)
    IL_02ca:  ldloc.s    V_6
    IL_02cc:  ldc.r4     1.
    IL_02d1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_02d6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_02db:  stloc.s    V_6
    IL_02dd:  ldloc.s    V_7
    IL_02df:  ldc.r4     1.
    IL_02e4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_02e9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_02ee:  stloc.s    V_7
    IL_02f0:  ldloc.s    V_9
    IL_02f2:  ldc.i4.1
    IL_02f3:  add
    IL_02f4:  stloc.s    V_9
    IL_02f6:  ldloc.s    V_9
    IL_02f8:  ldloc.s    V_8
    IL_02fa:  blt.s      IL_02b0

    IL_02fc:  ret
  } // end of method RectangleWidget::Draw

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_FillColor()
    IL_0007:  stloc.0
    IL_0008:  ldloca.s   V_0
    IL_000a:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_000f:  brtrue.s   IL_0033

    IL_0011:  ldarg.0
    IL_0012:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_OutlineColor()
    IL_0017:  stloc.0
    IL_0018:  ldloca.s   V_0
    IL_001a:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_001f:  brfalse.s  IL_0030

    IL_0021:  ldarg.0
    IL_0022:  call       instance float32 Game.RectangleWidget::get_OutlineThickness()
    IL_0027:  ldc.r4     0.0
    IL_002c:  cgt
    IL_002e:  br.s       IL_0034

    IL_0030:  ldc.i4.0
    IL_0031:  br.s       IL_0034

    IL_0033:  ldc.i4.1
    IL_0034:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0039:  ldarg.0
    IL_003a:  ldarg.0
    IL_003b:  call       instance valuetype [Engine]Engine.Vector2 Game.RectangleWidget::get_Size()
    IL_0040:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0045:  ret
  } // end of method RectangleWidget::Measure

  .method private hidebysig static void  Swap(float32& a,
                                              float32& b) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  2
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldind.r4
    IL_0002:  stloc.0
    IL_0003:  ldarg.0
    IL_0004:  ldarg.1
    IL_0005:  ldind.r4
    IL_0006:  stind.r4
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  stind.r4
    IL_000a:  ret
  } // end of method RectangleWidget::Swap

  .property instance valuetype [Engine]Engine.Vector2
          Size()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.RectangleWidget::get_Size()
    .set instance void Game.RectangleWidget::set_Size(valuetype [Engine]Engine.Vector2)
  } // end of property RectangleWidget::Size
  .property instance class Game.Subtexture
          Subtexture()
  {
    .get instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    .set instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
  } // end of property RectangleWidget::Subtexture
  .property instance bool TextureWrap()
  {
    .get instance bool Game.RectangleWidget::get_TextureWrap()
    .set instance void Game.RectangleWidget::set_TextureWrap(bool)
  } // end of property RectangleWidget::TextureWrap
  .property instance bool TextureLinearFilter()
  {
    .get instance bool Game.RectangleWidget::get_TextureLinearFilter()
    .set instance void Game.RectangleWidget::set_TextureLinearFilter(bool)
  } // end of property RectangleWidget::TextureLinearFilter
  .property instance bool FlipHorizontal()
  {
    .get instance bool Game.RectangleWidget::get_FlipHorizontal()
    .set instance void Game.RectangleWidget::set_FlipHorizontal(bool)
  } // end of property RectangleWidget::FlipHorizontal
  .property instance bool FlipVertical()
  {
    .get instance bool Game.RectangleWidget::get_FlipVertical()
    .set instance void Game.RectangleWidget::set_FlipVertical(bool)
  } // end of property RectangleWidget::FlipVertical
  .property instance valuetype [Engine]Engine.Color
          FillColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_FillColor()
    .set instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
  } // end of property RectangleWidget::FillColor
  .property instance valuetype [Engine]Engine.Color
          OutlineColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_OutlineColor()
    .set instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
  } // end of property RectangleWidget::OutlineColor
  .property instance float32 OutlineThickness()
  {
    .get instance float32 Game.RectangleWidget::get_OutlineThickness()
    .set instance void Game.RectangleWidget::set_OutlineThickness(float32)
  } // end of property RectangleWidget::OutlineThickness
} // end of class Game.RectangleWidget