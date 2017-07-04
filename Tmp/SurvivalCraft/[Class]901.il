.class public auto ansi beforefieldinit Game.RectangleWidget
       extends Game.Widget
{
  .field private class [Engine]Engine.Graphics.FlatBatch2D m_flatBatch
  .field private class [Engine]Engine.Graphics.TexturedBatch2D m_texturedBatch
  .field private class Game.Subtexture m_subtexture
  .field private bool m_textureWrap
  .field private bool m_textureLinearFilter
  .field private bool m_depthWriteEnabled
  .field private valuetype [Engine]Engine.Vector2 '<Size>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Depth>k__BackingField'
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
  .field private valuetype [Engine]Engine.Vector2 '<Texcoord1>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<Texcoord2>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Widget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.r4     (00 00 80 7F)
    IL_000c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0011:  call       instance void Game.RectangleWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  call       instance void Game.RectangleWidget::set_TextureLinearFilter(bool)
    IL_001d:  ldarg.0
    IL_001e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_0023:  call       instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0028:  ldarg.0
    IL_0029:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_002e:  call       instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_0033:  ldarg.0
    IL_0034:  ldc.r4     1.
    IL_0039:  call       instance void Game.RectangleWidget::set_OutlineThickness(float32)
    IL_003e:  ldarg.0
    IL_003f:  ldc.i4.0
    IL_0040:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0045:  ldarg.0
    IL_0046:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_004b:  call       instance void Game.RectangleWidget::set_Texcoord1(valuetype [Engine]Engine.Vector2)
    IL_0050:  ldarg.0
    IL_0051:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_0056:  call       instance void Game.RectangleWidget::set_Texcoord2(valuetype [Engine]Engine.Vector2)
    IL_005b:  ret
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

  .method public hidebysig specialname instance float32 
          get_Depth() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.RectangleWidget::'<Depth>k__BackingField'
    IL_0006:  ret
  } // end of method RectangleWidget::get_Depth

  .method public hidebysig specialname instance void 
          set_Depth(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.RectangleWidget::'<Depth>k__BackingField'
    IL_0007:  ret
  } // end of method RectangleWidget::set_Depth

  .method public hidebysig specialname instance bool 
          get_DepthWriteEnabled() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.RectangleWidget::m_depthWriteEnabled
    IL_0006:  ret
  } // end of method RectangleWidget::get_DepthWriteEnabled

  .method public hidebysig specialname instance void 
          set_DepthWriteEnabled(bool 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.RectangleWidget::m_depthWriteEnabled
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.RectangleWidget::m_depthWriteEnabled
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_0017:  ret
  } // end of method RectangleWidget::set_DepthWriteEnabled

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

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Texcoord1() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.RectangleWidget::'<Texcoord1>k__BackingField'
    IL_0006:  ret
  } // end of method RectangleWidget::get_Texcoord1

  .method public hidebysig specialname instance void 
          set_Texcoord1(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.RectangleWidget::'<Texcoord1>k__BackingField'
    IL_0007:  ret
  } // end of method RectangleWidget::set_Texcoord1

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Texcoord2() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.RectangleWidget::'<Texcoord2>k__BackingField'
    IL_0006:  ret
  } // end of method RectangleWidget::get_Texcoord2

  .method public hidebysig specialname instance void 
          set_Texcoord2(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.RectangleWidget::'<Texcoord2>k__BackingField'
    IL_0007:  ret
  } // end of method RectangleWidget::set_Texcoord2

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       1321 (0x529)
    .maxstack  11
    .locals init (class [Engine]Engine.Graphics.DepthStencilState V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [Engine]Engine.Color V_10,
             valuetype [Engine]Engine.Color V_11,
             valuetype [Engine]Engine.Color V_12,
             valuetype [Engine]Engine.Vector2 V_13,
             valuetype [Engine]Engine.Vector2 V_14,
             valuetype [Engine]Engine.Vector2 V_15,
             valuetype [Engine]Engine.Vector2 V_16,
             class [Engine]Engine.Graphics.SamplerState V_17,
             valuetype [Engine]Engine.Vector2 V_18,
             valuetype [Engine]Engine.Vector2 V_19,
             int32 V_20,
             valuetype [Engine]Engine.Matrix V_21,
             valuetype [Engine]Engine.Vector3 V_22,
             int32 V_23)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_FillColor()
    IL_0006:  stloc.s    V_12
    IL_0008:  ldloca.s   V_12
    IL_000a:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_000f:  brtrue.s   IL_0030

    IL_0011:  ldarg.0
    IL_0012:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_OutlineColor()
    IL_0017:  stloc.s    V_12
    IL_0019:  ldloca.s   V_12
    IL_001b:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0020:  brfalse.s  IL_002f

    IL_0022:  ldarg.0
    IL_0023:  call       instance float32 Game.RectangleWidget::get_OutlineThickness()
    IL_0028:  ldc.r4     0.0
    IL_002d:  bgt.un.s   IL_0030

    IL_002f:  ret

    IL_0030:  ldarg.0
    IL_0031:  call       instance bool Game.RectangleWidget::get_DepthWriteEnabled()
    IL_0036:  brtrue.s   IL_003f

    IL_0038:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_003d:  br.s       IL_0044

    IL_003f:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthWrite
    IL_0044:  stloc.0
    IL_0045:  ldarg.0
    IL_0046:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_004b:  stloc.1
    IL_004c:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0051:  stloc.2
    IL_0052:  ldloca.s   V_3
    IL_0054:  ldarg.0
    IL_0055:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_005a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_005f:  ldc.r4     0.0
    IL_0064:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0069:  ldarg.0
    IL_006a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_006f:  stloc.s    V_4
    IL_0071:  ldloca.s   V_5
    IL_0073:  ldc.r4     0.0
    IL_0078:  ldarg.0
    IL_0079:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_007e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0083:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0088:  ldloca.s   V_2
    IL_008a:  ldloca.s   V_1
    IL_008c:  ldloca.s   V_6
    IL_008e:  call       void [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector2&)
    IL_0093:  ldloca.s   V_3
    IL_0095:  ldloca.s   V_1
    IL_0097:  ldloca.s   V_7
    IL_0099:  call       void [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector2&)
    IL_009e:  ldloca.s   V_4
    IL_00a0:  ldloca.s   V_1
    IL_00a2:  ldloca.s   V_8
    IL_00a4:  call       void [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector2&)
    IL_00a9:  ldloca.s   V_5
    IL_00ab:  ldloca.s   V_1
    IL_00ad:  ldloca.s   V_9
    IL_00af:  call       void [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector2&)
    IL_00b4:  ldarg.0
    IL_00b5:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_FillColor()
    IL_00ba:  ldarg.0
    IL_00bb:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_00c0:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00c5:  stloc.s    V_10
    IL_00c7:  ldloca.s   V_10
    IL_00c9:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_00ce:  brfalse    IL_03a4

    IL_00d3:  ldarg.0
    IL_00d4:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_00d9:  brfalse    IL_036d

    IL_00de:  ldarg.0
    IL_00df:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.RectangleWidget::m_texturedBatch
    IL_00e4:  brtrue.s   IL_013c

    IL_00e6:  ldarg.0
    IL_00e7:  call       instance bool Game.RectangleWidget::get_TextureWrap()
    IL_00ec:  brtrue.s   IL_0104

    IL_00ee:  ldarg.0
    IL_00ef:  call       instance bool Game.RectangleWidget::get_TextureLinearFilter()
    IL_00f4:  brtrue.s   IL_00fd

    IL_00f6:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_00fb:  br.s       IL_0118

    IL_00fd:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_0102:  br.s       IL_0118

    IL_0104:  ldarg.0
    IL_0105:  call       instance bool Game.RectangleWidget::get_TextureLinearFilter()
    IL_010a:  brtrue.s   IL_0113

    IL_010c:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointWrap
    IL_0111:  br.s       IL_0118

    IL_0113:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearWrap
    IL_0118:  stloc.s    V_17
    IL_011a:  ldarg.0
    IL_011b:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0120:  ldarg.0
    IL_0121:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_0126:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_012b:  ldc.i4.0
    IL_012c:  ldc.i4.0
    IL_012d:  ldloc.0
    IL_012e:  ldnull
    IL_012f:  ldnull
    IL_0130:  ldloc.s    V_17
    IL_0132:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0137:  stfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.RectangleWidget::m_texturedBatch
    IL_013c:  ldarg.0
    IL_013d:  call       instance bool Game.RectangleWidget::get_TextureWrap()
    IL_0142:  brfalse    IL_01e6

    IL_0147:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_014c:  stloc.s    V_13
    IL_014e:  ldloca.s   V_14
    IL_0150:  ldarg.0
    IL_0151:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0156:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_015b:  ldarg.0
    IL_015c:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_0161:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_0166:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_016b:  conv.r4
    IL_016c:  div
    IL_016d:  ldc.r4     0.0
    IL_0172:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0177:  ldloca.s   V_15
    IL_0179:  ldarg.0
    IL_017a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_017f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0184:  ldarg.0
    IL_0185:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_018a:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_018f:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0194:  conv.r4
    IL_0195:  div
    IL_0196:  ldarg.0
    IL_0197:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_019c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01a1:  ldarg.0
    IL_01a2:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_01a7:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_01ac:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_01b1:  conv.r4
    IL_01b2:  div
    IL_01b3:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01b8:  ldloca.s   V_16
    IL_01ba:  ldc.r4     0.0
    IL_01bf:  ldarg.0
    IL_01c0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01c5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01ca:  ldarg.0
    IL_01cb:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_01d0:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_01d5:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_01da:  conv.r4
    IL_01db:  div
    IL_01dc:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01e1:  br         IL_02ec

    IL_01e6:  ldloca.s   V_13
    IL_01e8:  ldarg.0
    IL_01e9:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_01ee:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_01f3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01f8:  ldarg.0
    IL_01f9:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_01fe:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_0203:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0208:  ldarg.0
    IL_0209:  call       instance valuetype [Engine]Engine.Vector2 Game.RectangleWidget::get_Texcoord1()
    IL_020e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0213:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0218:  stfld      float32 [Engine]Engine.Vector2::X
    IL_021d:  ldloca.s   V_13
    IL_021f:  ldarg.0
    IL_0220:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_0225:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_022a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_022f:  ldarg.0
    IL_0230:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_0235:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_023a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_023f:  ldarg.0
    IL_0240:  call       instance valuetype [Engine]Engine.Vector2 Game.RectangleWidget::get_Texcoord1()
    IL_0245:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_024a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_024f:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0254:  ldloca.s   V_15
    IL_0256:  ldarg.0
    IL_0257:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_025c:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_0261:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0266:  ldarg.0
    IL_0267:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_026c:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_0271:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0276:  ldarg.0
    IL_0277:  call       instance valuetype [Engine]Engine.Vector2 Game.RectangleWidget::get_Texcoord2()
    IL_027c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0281:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0286:  stfld      float32 [Engine]Engine.Vector2::X
    IL_028b:  ldloca.s   V_15
    IL_028d:  ldarg.0
    IL_028e:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_0293:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_0298:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_029d:  ldarg.0
    IL_029e:  call       instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_02a3:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_02a8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02ad:  ldarg.0
    IL_02ae:  call       instance valuetype [Engine]Engine.Vector2 Game.RectangleWidget::get_Texcoord2()
    IL_02b3:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02b8:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_02bd:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_02c2:  ldloca.s   V_14
    IL_02c4:  ldloc.s    V_15
    IL_02c6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02cb:  ldloc.s    V_13
    IL_02cd:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02d2:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02d7:  ldloca.s   V_16
    IL_02d9:  ldloc.s    V_13
    IL_02db:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02e0:  ldloc.s    V_15
    IL_02e2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02e7:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02ec:  ldarg.0
    IL_02ed:  call       instance bool Game.RectangleWidget::get_FlipHorizontal()
    IL_02f2:  brfalse.s  IL_031a

    IL_02f4:  ldloca.s   V_13
    IL_02f6:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_02fb:  ldloca.s   V_14
    IL_02fd:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0302:  call       void [Engine]Engine.Utilities::Swap<float32>(!!0&,
                                                                      !!0&)
    IL_0307:  ldloca.s   V_15
    IL_0309:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_030e:  ldloca.s   V_16
    IL_0310:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0315:  call       void [Engine]Engine.Utilities::Swap<float32>(!!0&,
                                                                      !!0&)
    IL_031a:  ldarg.0
    IL_031b:  call       instance bool Game.RectangleWidget::get_FlipVertical()
    IL_0320:  brfalse.s  IL_0348

    IL_0322:  ldloca.s   V_13
    IL_0324:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0329:  ldloca.s   V_15
    IL_032b:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0330:  call       void [Engine]Engine.Utilities::Swap<float32>(!!0&,
                                                                      !!0&)
    IL_0335:  ldloca.s   V_14
    IL_0337:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_033c:  ldloca.s   V_16
    IL_033e:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0343:  call       void [Engine]Engine.Utilities::Swap<float32>(!!0&,
                                                                      !!0&)
    IL_0348:  ldarg.0
    IL_0349:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.RectangleWidget::m_texturedBatch
    IL_034e:  ldloc.s    V_6
    IL_0350:  ldloc.s    V_7
    IL_0352:  ldloc.s    V_8
    IL_0354:  ldloc.s    V_9
    IL_0356:  ldarg.0
    IL_0357:  call       instance float32 Game.RectangleWidget::get_Depth()
    IL_035c:  ldloc.s    V_13
    IL_035e:  ldloc.s    V_14
    IL_0360:  ldloc.s    V_15
    IL_0362:  ldloc.s    V_16
    IL_0364:  ldloc.s    V_10
    IL_0366:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_036b:  br.s       IL_03a4

    IL_036d:  ldarg.0
    IL_036e:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_0373:  brtrue.s   IL_0389

    IL_0375:  ldarg.0
    IL_0376:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_037b:  ldc.i4.1
    IL_037c:  ldloc.0
    IL_037d:  ldnull
    IL_037e:  ldnull
    IL_037f:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0384:  stfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_0389:  ldarg.0
    IL_038a:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_038f:  ldloc.s    V_6
    IL_0391:  ldloc.s    V_7
    IL_0393:  ldloc.s    V_8
    IL_0395:  ldloc.s    V_9
    IL_0397:  ldarg.0
    IL_0398:  call       instance float32 Game.RectangleWidget::get_Depth()
    IL_039d:  ldloc.s    V_10
    IL_039f:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_03a4:  ldarg.0
    IL_03a5:  call       instance valuetype [Engine]Engine.Color Game.RectangleWidget::get_OutlineColor()
    IL_03aa:  ldarg.0
    IL_03ab:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_03b0:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_03b5:  stloc.s    V_11
    IL_03b7:  ldloca.s   V_11
    IL_03b9:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_03be:  brfalse    IL_0528

    IL_03c3:  ldarg.0
    IL_03c4:  call       instance float32 Game.RectangleWidget::get_OutlineThickness()
    IL_03c9:  ldc.r4     0.0
    IL_03ce:  ble.un     IL_0528

    IL_03d3:  ldarg.0
    IL_03d4:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_03d9:  brtrue.s   IL_03ef

    IL_03db:  ldarg.0
    IL_03dc:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_03e1:  ldc.i4.1
    IL_03e2:  ldloc.0
    IL_03e3:  ldnull
    IL_03e4:  ldnull
    IL_03e5:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_03ea:  stfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_03ef:  ldarg.0
    IL_03f0:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_03f5:  stloc.s    V_21
    IL_03f7:  ldloca.s   V_21
    IL_03f9:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_03fe:  stloc.s    V_22
    IL_0400:  ldloca.s   V_22
    IL_0402:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XY()
    IL_0407:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_040c:  stloc.s    V_18
    IL_040e:  ldarg.0
    IL_040f:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0414:  stloc.s    V_21
    IL_0416:  ldloca.s   V_21
    IL_0418:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_041d:  stloc.s    V_22
    IL_041f:  ldloca.s   V_22
    IL_0421:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XY()
    IL_0426:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_042b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_0430:  stloc.s    V_19
    IL_0432:  ldarg.0
    IL_0433:  call       instance float32 Game.RectangleWidget::get_OutlineThickness()
    IL_0438:  ldarg.0
    IL_0439:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_043e:  stloc.s    V_21
    IL_0440:  ldloca.s   V_21
    IL_0442:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0447:  stloc.s    V_22
    IL_0449:  ldloca.s   V_22
    IL_044b:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0450:  mul
    IL_0451:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0456:  ldc.r4     1.
    IL_045b:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0460:  conv.i4
    IL_0461:  stloc.s    V_20
    IL_0463:  ldc.i4.0
    IL_0464:  stloc.s    V_23
    IL_0466:  br         IL_051f

    IL_046b:  ldarg.0
    IL_046c:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_0471:  ldloc.s    V_6
    IL_0473:  ldloc.s    V_7
    IL_0475:  ldarg.0
    IL_0476:  call       instance float32 Game.RectangleWidget::get_Depth()
    IL_047b:  ldloc.s    V_11
    IL_047d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0482:  ldarg.0
    IL_0483:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_0488:  ldloc.s    V_7
    IL_048a:  ldloc.s    V_8
    IL_048c:  ldarg.0
    IL_048d:  call       instance float32 Game.RectangleWidget::get_Depth()
    IL_0492:  ldloc.s    V_11
    IL_0494:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0499:  ldarg.0
    IL_049a:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_049f:  ldloc.s    V_8
    IL_04a1:  ldloc.s    V_9
    IL_04a3:  ldarg.0
    IL_04a4:  call       instance float32 Game.RectangleWidget::get_Depth()
    IL_04a9:  ldloc.s    V_11
    IL_04ab:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_04b0:  ldarg.0
    IL_04b1:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.RectangleWidget::m_flatBatch
    IL_04b6:  ldloc.s    V_9
    IL_04b8:  ldloc.s    V_6
    IL_04ba:  ldarg.0
    IL_04bb:  call       instance float32 Game.RectangleWidget::get_Depth()
    IL_04c0:  ldloc.s    V_11
    IL_04c2:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueLine(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_04c7:  ldloc.s    V_6
    IL_04c9:  ldloc.s    V_18
    IL_04cb:  ldloc.s    V_19
    IL_04cd:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_04d2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_04d7:  stloc.s    V_6
    IL_04d9:  ldloc.s    V_7
    IL_04db:  ldloc.s    V_18
    IL_04dd:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_04e2:  ldloc.s    V_19
    IL_04e4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_04e9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_04ee:  stloc.s    V_7
    IL_04f0:  ldloc.s    V_8
    IL_04f2:  ldloc.s    V_18
    IL_04f4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_04f9:  ldloc.s    V_19
    IL_04fb:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0500:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0505:  stloc.s    V_8
    IL_0507:  ldloc.s    V_9
    IL_0509:  ldloc.s    V_18
    IL_050b:  ldloc.s    V_19
    IL_050d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0512:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0517:  stloc.s    V_9
    IL_0519:  ldloc.s    V_23
    IL_051b:  ldc.i4.1
    IL_051c:  add
    IL_051d:  stloc.s    V_23
    IL_051f:  ldloc.s    V_23
    IL_0521:  ldloc.s    V_20
    IL_0523:  blt        IL_046b

    IL_0528:  ret
  } // end of method RectangleWidget::Draw

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
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
  } // end of method RectangleWidget::MeasureOverride

  .property instance valuetype [Engine]Engine.Vector2
          Size()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.RectangleWidget::get_Size()
    .set instance void Game.RectangleWidget::set_Size(valuetype [Engine]Engine.Vector2)
  } // end of property RectangleWidget::Size
  .property instance float32 Depth()
  {
    .get instance float32 Game.RectangleWidget::get_Depth()
    .set instance void Game.RectangleWidget::set_Depth(float32)
  } // end of property RectangleWidget::Depth
  .property instance bool DepthWriteEnabled()
  {
    .get instance bool Game.RectangleWidget::get_DepthWriteEnabled()
    .set instance void Game.RectangleWidget::set_DepthWriteEnabled(bool)
  } // end of property RectangleWidget::DepthWriteEnabled
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
  .property instance valuetype [Engine]Engine.Vector2
          Texcoord1()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.RectangleWidget::get_Texcoord1()
    .set instance void Game.RectangleWidget::set_Texcoord1(valuetype [Engine]Engine.Vector2)
  } // end of property RectangleWidget::Texcoord1
  .property instance valuetype [Engine]Engine.Vector2
          Texcoord2()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.RectangleWidget::get_Texcoord2()
    .set instance void Game.RectangleWidget::set_Texcoord2(valuetype [Engine]Engine.Vector2)
  } // end of property RectangleWidget::Texcoord2
} // end of class Game.RectangleWidget