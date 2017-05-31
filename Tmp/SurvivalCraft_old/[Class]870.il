.class public auto ansi beforefieldinit Game.ValueBarWidget
       extends Game.Widget
{
  .field private float32 m_value
  .field private int32 m_barsCount
  .field private valuetype [Engine]Engine.Color m_litBarColor
  .field private valuetype [Engine]Engine.Color m_litBarColor2
  .field private valuetype [Engine]Engine.Color m_unlitBarColor
  .field private class Game.Subtexture m_barSubtexture
  .field private valuetype Game.LayoutDirection m_layoutDirection
  .field private float32 m_flashCount
  .field private bool m_textureLinearFilter
  .field private class [Engine]Engine.Graphics.BaseBatch m_batch
  .field private bool '<FlipDirection>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<BarSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Spacing>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<BarBlending>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<HalfBars>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  stfld      int32 Game.ValueBarWidget::m_barsCount
    IL_0007:  ldarg.0
    IL_0008:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_000d:  stfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_litBarColor
    IL_0012:  ldarg.0
    IL_0013:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0018:  stfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_litBarColor2
    IL_001d:  ldarg.0
    IL_001e:  ldc.i4     0x80
    IL_0023:  ldc.i4     0x80
    IL_0028:  ldc.i4     0x80
    IL_002d:  ldc.i4     0x80
    IL_0032:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0037:  stfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_unlitBarColor
    IL_003c:  ldarg.0
    IL_003d:  call       instance void Game.Widget::.ctor()
    IL_0042:  ldarg.0
    IL_0043:  ldc.i4.0
    IL_0044:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0049:  ldarg.0
    IL_004a:  ldc.r4     24.
    IL_004f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0054:  call       instance void Game.ValueBarWidget::set_BarSize(valuetype [Engine]Engine.Vector2)
    IL_0059:  ldarg.0
    IL_005a:  ldc.i4.1
    IL_005b:  call       instance void Game.ValueBarWidget::set_BarBlending(bool)
    IL_0060:  ldarg.0
    IL_0061:  ldc.i4.1
    IL_0062:  call       instance void Game.ValueBarWidget::set_TextureLinearFilter(bool)
    IL_0067:  ret
  } // end of method ValueBarWidget::.ctor

  .method public hidebysig specialname instance float32 
          get_Value() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ValueBarWidget::m_value
    IL_0006:  ret
  } // end of method ValueBarWidget::get_Value

  .method public hidebysig specialname instance void 
          set_Value(float32 'value') cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.r4     0.0
    IL_0007:  ldc.r4     1.
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0011:  stfld      float32 Game.ValueBarWidget::m_value
    IL_0016:  ret
  } // end of method ValueBarWidget::set_Value

  .method public hidebysig specialname instance int32 
          get_BarsCount() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ValueBarWidget::m_barsCount
    IL_0006:  ret
  } // end of method ValueBarWidget::get_BarsCount

  .method public hidebysig specialname instance void 
          set_BarsCount(int32 'value') cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.1
    IL_0003:  ldc.i4     0x3e8
    IL_0008:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_000d:  stfld      int32 Game.ValueBarWidget::m_barsCount
    IL_0012:  ret
  } // end of method ValueBarWidget::set_BarsCount

  .method public hidebysig specialname instance bool 
          get_FlipDirection() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ValueBarWidget::'<FlipDirection>k__BackingField'
    IL_0006:  ret
  } // end of method ValueBarWidget::get_FlipDirection

  .method public hidebysig specialname instance void 
          set_FlipDirection(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ValueBarWidget::'<FlipDirection>k__BackingField'
    IL_0007:  ret
  } // end of method ValueBarWidget::set_FlipDirection

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_BarSize() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::'<BarSize>k__BackingField'
    IL_0006:  ret
  } // end of method ValueBarWidget::get_BarSize

  .method public hidebysig specialname instance void 
          set_BarSize(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::'<BarSize>k__BackingField'
    IL_0007:  ret
  } // end of method ValueBarWidget::set_BarSize

  .method public hidebysig specialname instance float32 
          get_Spacing() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ValueBarWidget::'<Spacing>k__BackingField'
    IL_0006:  ret
  } // end of method ValueBarWidget::get_Spacing

  .method public hidebysig specialname instance void 
          set_Spacing(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ValueBarWidget::'<Spacing>k__BackingField'
    IL_0007:  ret
  } // end of method ValueBarWidget::set_Spacing

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_LitBarColor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_litBarColor
    IL_0006:  ret
  } // end of method ValueBarWidget::get_LitBarColor

  .method public hidebysig specialname instance void 
          set_LitBarColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_litBarColor
    IL_0007:  ret
  } // end of method ValueBarWidget::set_LitBarColor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_LitBarColor2() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_litBarColor2
    IL_0006:  ret
  } // end of method ValueBarWidget::get_LitBarColor2

  .method public hidebysig specialname instance void 
          set_LitBarColor2(valuetype [Engine]Engine.Color 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_litBarColor2
    IL_0007:  ret
  } // end of method ValueBarWidget::set_LitBarColor2

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_UnlitBarColor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_unlitBarColor
    IL_0006:  ret
  } // end of method ValueBarWidget::get_UnlitBarColor

  .method public hidebysig specialname instance void 
          set_UnlitBarColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_unlitBarColor
    IL_0007:  ret
  } // end of method ValueBarWidget::set_UnlitBarColor

  .method public hidebysig specialname instance bool 
          get_BarBlending() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ValueBarWidget::'<BarBlending>k__BackingField'
    IL_0006:  ret
  } // end of method ValueBarWidget::get_BarBlending

  .method public hidebysig specialname instance void 
          set_BarBlending(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ValueBarWidget::'<BarBlending>k__BackingField'
    IL_0007:  ret
  } // end of method ValueBarWidget::set_BarBlending

  .method public hidebysig specialname instance bool 
          get_HalfBars() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ValueBarWidget::'<HalfBars>k__BackingField'
    IL_0006:  ret
  } // end of method ValueBarWidget::get_HalfBars

  .method public hidebysig specialname instance void 
          set_HalfBars(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ValueBarWidget::'<HalfBars>k__BackingField'
    IL_0007:  ret
  } // end of method ValueBarWidget::set_HalfBars

  .method public hidebysig specialname instance class Game.Subtexture 
          get_BarSubtexture() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Subtexture Game.ValueBarWidget::m_barSubtexture
    IL_0006:  ret
  } // end of method ValueBarWidget::get_BarSubtexture

  .method public hidebysig specialname instance void 
          set_BarSubtexture(class Game.Subtexture 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Subtexture Game.ValueBarWidget::m_barSubtexture
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      class Game.Subtexture Game.ValueBarWidget::m_barSubtexture
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0017:  ret
  } // end of method ValueBarWidget::set_BarSubtexture

  .method public hidebysig specialname instance bool 
          get_TextureLinearFilter() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ValueBarWidget::m_textureLinearFilter
    IL_0006:  ret
  } // end of method ValueBarWidget::get_TextureLinearFilter

  .method public hidebysig specialname instance void 
          set_TextureLinearFilter(bool 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.ValueBarWidget::m_textureLinearFilter
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.ValueBarWidget::m_textureLinearFilter
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0017:  ret
  } // end of method ValueBarWidget::set_TextureLinearFilter

  .method public hidebysig specialname instance valuetype Game.LayoutDirection 
          get_LayoutDirection() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_0006:  ret
  } // end of method ValueBarWidget::get_LayoutDirection

  .method public hidebysig specialname instance void 
          set_LayoutDirection(valuetype Game.LayoutDirection 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_0007:  ret
  } // end of method ValueBarWidget::set_LayoutDirection

  .method public hidebysig instance void 
          Flash(int32 count) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.ValueBarWidget::m_flashCount
    IL_0007:  ldarg.1
    IL_0008:  conv.r4
    IL_0009:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_000e:  stfld      float32 Game.ValueBarWidget::m_flashCount
    IL_0013:  ret
  } // end of method ValueBarWidget::Flash

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       1538 (0x602)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             int32 V_1,
             int32 V_2,
             bool V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Color V_7,
             valuetype [Engine]Engine.Color V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             valuetype [Engine]Engine.Vector2 V_12,
             valuetype [Engine]Engine.Vector2 V_13,
             valuetype [Engine]Engine.Vector2 V_14,
             valuetype [Engine]Engine.Vector2 V_15,
             valuetype [Engine]Engine.Vector2 V_16,
             valuetype [Engine]Engine.Vector2 V_17,
             valuetype [Engine]Engine.Vector2 V_18,
             valuetype [Engine]Engine.Vector2 V_19,
             valuetype [Engine]Engine.Vector2 V_20)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0006:  brtrue.s   IL_0062

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_000e:  brfalse.s  IL_004a

    IL_0010:  ldarg.0
    IL_0011:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0016:  ldarg.0
    IL_0017:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_001c:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_0021:  ldc.i4.0
    IL_0022:  ldc.i4.0
    IL_0023:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0028:  ldnull
    IL_0029:  ldnull
    IL_002a:  ldarg.0
    IL_002b:  call       instance bool Game.ValueBarWidget::get_TextureLinearFilter()
    IL_0030:  brtrue.s   IL_0039

    IL_0032:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0037:  br.s       IL_003e

    IL_0039:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_003e:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0043:  stfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0048:  br.s       IL_0062

    IL_004a:  ldarg.0
    IL_004b:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0050:  ldc.i4.0
    IL_0051:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0056:  ldnull
    IL_0057:  ldnull
    IL_0058:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_005d:  stfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0062:  ldarg.0
    IL_0063:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0068:  stloc.0
    IL_0069:  ldarg.0
    IL_006a:  ldfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_006f:  brtrue.s   IL_008a

    IL_0071:  ldloca.s   V_0
    IL_0073:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0078:  dup
    IL_0079:  ldind.r4
    IL_007a:  ldarg.0
    IL_007b:  call       instance float32 Game.ValueBarWidget::get_Spacing()
    IL_0080:  ldc.r4     2.
    IL_0085:  div
    IL_0086:  add
    IL_0087:  stind.r4
    IL_0088:  br.s       IL_00a1

    IL_008a:  ldloca.s   V_0
    IL_008c:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0091:  dup
    IL_0092:  ldind.r4
    IL_0093:  ldarg.0
    IL_0094:  call       instance float32 Game.ValueBarWidget::get_Spacing()
    IL_0099:  ldc.r4     2.
    IL_009e:  div
    IL_009f:  add
    IL_00a0:  stind.r4
    IL_00a1:  ldarg.0
    IL_00a2:  call       instance bool Game.ValueBarWidget::get_HalfBars()
    IL_00a7:  brtrue.s   IL_00ac

    IL_00a9:  ldc.i4.2
    IL_00aa:  br.s       IL_00ad

    IL_00ac:  ldc.i4.1
    IL_00ad:  stloc.1
    IL_00ae:  ldc.i4.0
    IL_00af:  stloc.2
    IL_00b0:  br         IL_05d1

    IL_00b5:  ldloc.2
    IL_00b6:  ldc.i4.2
    IL_00b7:  rem
    IL_00b8:  ldc.i4.0
    IL_00b9:  ceq
    IL_00bb:  stloc.3
    IL_00bc:  ldc.r4     0.5
    IL_00c1:  ldloc.2
    IL_00c2:  conv.r4
    IL_00c3:  mul
    IL_00c4:  stloc.s    V_4
    IL_00c6:  ldc.r4     0.0
    IL_00cb:  stloc.s    V_5
    IL_00cd:  ldarg.0
    IL_00ce:  call       instance bool Game.ValueBarWidget::get_FlipDirection()
    IL_00d3:  brfalse.s  IL_010f

    IL_00d5:  ldarg.0
    IL_00d6:  call       instance float32 Game.ValueBarWidget::get_Value()
    IL_00db:  ldarg.0
    IL_00dc:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_00e1:  conv.r4
    IL_00e2:  ldloc.s    V_4
    IL_00e4:  sub
    IL_00e5:  ldc.r4     1.
    IL_00ea:  sub
    IL_00eb:  ldarg.0
    IL_00ec:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_00f1:  conv.r4
    IL_00f2:  div
    IL_00f3:  sub
    IL_00f4:  ldarg.0
    IL_00f5:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_00fa:  conv.r4
    IL_00fb:  mul
    IL_00fc:  ldc.r4     0.0
    IL_0101:  ldc.r4     1.
    IL_0106:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_010b:  stloc.s    V_5
    IL_010d:  br.s       IL_0139

    IL_010f:  ldarg.0
    IL_0110:  call       instance float32 Game.ValueBarWidget::get_Value()
    IL_0115:  ldloc.s    V_4
    IL_0117:  ldarg.0
    IL_0118:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_011d:  conv.r4
    IL_011e:  div
    IL_011f:  sub
    IL_0120:  ldarg.0
    IL_0121:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_0126:  conv.r4
    IL_0127:  mul
    IL_0128:  ldc.r4     0.0
    IL_012d:  ldc.r4     1.
    IL_0132:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0137:  stloc.s    V_5
    IL_0139:  ldarg.0
    IL_013a:  call       instance bool Game.ValueBarWidget::get_BarBlending()
    IL_013f:  brtrue.s   IL_014a

    IL_0141:  ldloc.s    V_5
    IL_0143:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_0148:  stloc.s    V_5
    IL_014a:  ldarg.0
    IL_014b:  ldfld      float32 Game.ValueBarWidget::m_flashCount
    IL_0150:  ldc.r4     0.0
    IL_0155:  bgt.s      IL_015e

    IL_0157:  ldc.r4     1.
    IL_015c:  br.s       IL_017a

    IL_015e:  ldc.r4     1.
    IL_0163:  ldarg.0
    IL_0164:  ldfld      float32 Game.ValueBarWidget::m_flashCount
    IL_0169:  ldc.r4     3.1415927
    IL_016e:  mul
    IL_016f:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0174:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0179:  sub
    IL_017a:  stloc.s    V_6
    IL_017c:  ldarg.0
    IL_017d:  call       instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_LitBarColor()
    IL_0182:  stloc.s    V_7
    IL_0184:  ldarg.0
    IL_0185:  call       instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_LitBarColor2()
    IL_018a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_018f:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_0194:  brfalse.s  IL_01be

    IL_0196:  ldarg.0
    IL_0197:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_019c:  ldc.i4.1
    IL_019d:  ble.s      IL_01be

    IL_019f:  ldarg.0
    IL_01a0:  call       instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_LitBarColor()
    IL_01a5:  ldarg.0
    IL_01a6:  call       instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_LitBarColor2()
    IL_01ab:  ldloc.s    V_4
    IL_01ad:  ldarg.0
    IL_01ae:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_01b3:  ldc.i4.1
    IL_01b4:  sub
    IL_01b5:  conv.r4
    IL_01b6:  div
    IL_01b7:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_01bc:  stloc.s    V_7
    IL_01be:  ldarg.0
    IL_01bf:  call       instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_UnlitBarColor()
    IL_01c4:  ldloc.s    V_7
    IL_01c6:  ldloc.s    V_5
    IL_01c8:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_01cd:  ldloc.s    V_6
    IL_01cf:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_01d4:  stloc.s    V_8
    IL_01d6:  ldarg.0
    IL_01d7:  call       instance bool Game.ValueBarWidget::get_HalfBars()
    IL_01dc:  brfalse    IL_04a1

    IL_01e1:  ldloc.3
    IL_01e2:  brfalse    IL_0344

    IL_01e7:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_01ec:  stloc.s    V_9
    IL_01ee:  ldarg.0
    IL_01ef:  ldfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_01f4:  brfalse.s  IL_0207

    IL_01f6:  ldc.r4     1.
    IL_01fb:  ldc.r4     0.5
    IL_0200:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0205:  br.s       IL_0216

    IL_0207:  ldc.r4     0.5
    IL_020c:  ldc.r4     1.
    IL_0211:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0216:  stloc.s    V_10
    IL_0218:  ldarg.0
    IL_0219:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_021e:  isinst     [Engine]Engine.Graphics.TexturedBatch2D
    IL_0223:  brfalse    IL_02ee

    IL_0228:  ldarg.0
    IL_0229:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_022e:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_0233:  stloc.s    V_11
    IL_0235:  ldloca.s   V_12
    IL_0237:  ldarg.0
    IL_0238:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_023d:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_0242:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0247:  ldarg.0
    IL_0248:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_024d:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_0252:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0257:  ldloc.s    V_10
    IL_0259:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_025e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0263:  ldarg.0
    IL_0264:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_0269:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_026e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0273:  ldarg.0
    IL_0274:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_0279:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_027e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0283:  ldloc.s    V_10
    IL_0285:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_028a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_028f:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0294:  ldarg.0
    IL_0295:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_029a:  castclass  [Engine]Engine.Graphics.TexturedBatch2D
    IL_029f:  ldloc.0
    IL_02a0:  ldloc.s    V_9
    IL_02a2:  ldarg.0
    IL_02a3:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_02a8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_02ad:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_02b2:  call       float32 Game.WidgetsManager::get_Scale()
    IL_02b7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_02bc:  ldloc.0
    IL_02bd:  ldloc.s    V_10
    IL_02bf:  ldarg.0
    IL_02c0:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_02c5:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_02ca:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_02cf:  call       float32 Game.WidgetsManager::get_Scale()
    IL_02d4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_02d9:  ldc.r4     0.0
    IL_02de:  ldloc.s    V_11
    IL_02e0:  ldloc.s    V_12
    IL_02e2:  ldloc.s    V_8
    IL_02e4:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_02e9:  br         IL_057e

    IL_02ee:  ldarg.0
    IL_02ef:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_02f4:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_02f9:  ldloc.0
    IL_02fa:  ldloc.s    V_9
    IL_02fc:  ldarg.0
    IL_02fd:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0302:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0307:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_030c:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0311:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0316:  ldloc.0
    IL_0317:  ldloc.s    V_10
    IL_0319:  ldarg.0
    IL_031a:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_031f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0324:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0329:  call       float32 Game.WidgetsManager::get_Scale()
    IL_032e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0333:  ldc.r4     0.0
    IL_0338:  ldloc.s    V_8
    IL_033a:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_033f:  br         IL_057e

    IL_0344:  ldarg.0
    IL_0345:  ldfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_034a:  brfalse.s  IL_035d

    IL_034c:  ldc.r4     0.0
    IL_0351:  ldc.r4     0.5
    IL_0356:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_035b:  br.s       IL_036c

    IL_035d:  ldc.r4     0.5
    IL_0362:  ldc.r4     0.0
    IL_0367:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_036c:  stloc.s    V_13
    IL_036e:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_0373:  stloc.s    V_14
    IL_0375:  ldarg.0
    IL_0376:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_037b:  isinst     [Engine]Engine.Graphics.TexturedBatch2D
    IL_0380:  brfalse    IL_044b

    IL_0385:  ldloca.s   V_15
    IL_0387:  ldarg.0
    IL_0388:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_038d:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_0392:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0397:  ldarg.0
    IL_0398:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_039d:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_03a2:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03a7:  ldloc.s    V_13
    IL_03a9:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03ae:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03b3:  ldarg.0
    IL_03b4:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_03b9:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_03be:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_03c3:  ldarg.0
    IL_03c4:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_03c9:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_03ce:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_03d3:  ldloc.s    V_13
    IL_03d5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_03da:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03df:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03e4:  ldarg.0
    IL_03e5:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_03ea:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_03ef:  stloc.s    V_16
    IL_03f1:  ldarg.0
    IL_03f2:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_03f7:  castclass  [Engine]Engine.Graphics.TexturedBatch2D
    IL_03fc:  ldloc.0
    IL_03fd:  ldloc.s    V_13
    IL_03ff:  ldarg.0
    IL_0400:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0405:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_040a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_040f:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0414:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0419:  ldloc.0
    IL_041a:  ldloc.s    V_14
    IL_041c:  ldarg.0
    IL_041d:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0422:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0427:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_042c:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0431:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0436:  ldc.r4     0.0
    IL_043b:  ldloc.s    V_15
    IL_043d:  ldloc.s    V_16
    IL_043f:  ldloc.s    V_8
    IL_0441:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0446:  br         IL_057e

    IL_044b:  ldarg.0
    IL_044c:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0451:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_0456:  ldloc.0
    IL_0457:  ldloc.s    V_13
    IL_0459:  ldarg.0
    IL_045a:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_045f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0464:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0469:  call       float32 Game.WidgetsManager::get_Scale()
    IL_046e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0473:  ldloc.0
    IL_0474:  ldloc.s    V_14
    IL_0476:  ldarg.0
    IL_0477:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_047c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0481:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0486:  call       float32 Game.WidgetsManager::get_Scale()
    IL_048b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0490:  ldc.r4     0.0
    IL_0495:  ldloc.s    V_8
    IL_0497:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_049c:  br         IL_057e

    IL_04a1:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_04a6:  stloc.s    V_17
    IL_04a8:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_04ad:  stloc.s    V_18
    IL_04af:  ldarg.0
    IL_04b0:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_04b5:  isinst     [Engine]Engine.Graphics.TexturedBatch2D
    IL_04ba:  brfalse.s  IL_052d

    IL_04bc:  ldarg.0
    IL_04bd:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_04c2:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_04c7:  stloc.s    V_19
    IL_04c9:  ldarg.0
    IL_04ca:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_04cf:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_04d4:  stloc.s    V_20
    IL_04d6:  ldarg.0
    IL_04d7:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_04dc:  castclass  [Engine]Engine.Graphics.TexturedBatch2D
    IL_04e1:  ldloc.0
    IL_04e2:  ldloc.s    V_17
    IL_04e4:  ldarg.0
    IL_04e5:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_04ea:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_04ef:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_04f4:  call       float32 Game.WidgetsManager::get_Scale()
    IL_04f9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_04fe:  ldloc.0
    IL_04ff:  ldloc.s    V_18
    IL_0501:  ldarg.0
    IL_0502:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0507:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_050c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0511:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0516:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_051b:  ldc.r4     0.0
    IL_0520:  ldloc.s    V_19
    IL_0522:  ldloc.s    V_20
    IL_0524:  ldloc.s    V_8
    IL_0526:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_052b:  br.s       IL_057e

    IL_052d:  ldarg.0
    IL_052e:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0533:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_0538:  ldloc.0
    IL_0539:  ldloc.s    V_17
    IL_053b:  ldarg.0
    IL_053c:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0541:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0546:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_054b:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0550:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0555:  ldloc.0
    IL_0556:  ldloc.s    V_18
    IL_0558:  ldarg.0
    IL_0559:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_055e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0563:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0568:  call       float32 Game.WidgetsManager::get_Scale()
    IL_056d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0572:  ldc.r4     0.0
    IL_0577:  ldloc.s    V_8
    IL_0579:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_057e:  ldloc.3
    IL_057f:  brfalse.s  IL_0589

    IL_0581:  ldarg.0
    IL_0582:  call       instance bool Game.ValueBarWidget::get_HalfBars()
    IL_0587:  brtrue.s   IL_05cd

    IL_0589:  ldarg.0
    IL_058a:  ldfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_058f:  brtrue.s   IL_05b0

    IL_0591:  ldloca.s   V_0
    IL_0593:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0598:  dup
    IL_0599:  ldind.r4
    IL_059a:  ldarg.0
    IL_059b:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_05a0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_05a5:  ldarg.0
    IL_05a6:  call       instance float32 Game.ValueBarWidget::get_Spacing()
    IL_05ab:  add
    IL_05ac:  add
    IL_05ad:  stind.r4
    IL_05ae:  br.s       IL_05cd

    IL_05b0:  ldloca.s   V_0
    IL_05b2:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_05b7:  dup
    IL_05b8:  ldind.r4
    IL_05b9:  ldarg.0
    IL_05ba:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_05bf:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_05c4:  ldarg.0
    IL_05c5:  call       instance float32 Game.ValueBarWidget::get_Spacing()
    IL_05ca:  add
    IL_05cb:  add
    IL_05cc:  stind.r4
    IL_05cd:  ldloc.2
    IL_05ce:  ldloc.1
    IL_05cf:  add
    IL_05d0:  stloc.2
    IL_05d1:  ldloc.2
    IL_05d2:  ldc.i4.2
    IL_05d3:  ldarg.0
    IL_05d4:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_05d9:  mul
    IL_05da:  blt        IL_00b5

    IL_05df:  ldarg.0
    IL_05e0:  ldarg.0
    IL_05e1:  ldfld      float32 Game.ValueBarWidget::m_flashCount
    IL_05e6:  ldc.r4     4.
    IL_05eb:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_05f0:  mul
    IL_05f1:  sub
    IL_05f2:  ldc.r4     0.0
    IL_05f7:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_05fc:  stfld      float32 Game.ValueBarWidget::m_flashCount
    IL_0601:  ret
  } // end of method ValueBarWidget::Draw

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       113 (0x71)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_000d:  brtrue.s   IL_0040

    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0016:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_001b:  ldarg.0
    IL_001c:  call       instance float32 Game.ValueBarWidget::get_Spacing()
    IL_0021:  add
    IL_0022:  ldarg.0
    IL_0023:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_0028:  conv.r4
    IL_0029:  mul
    IL_002a:  ldarg.0
    IL_002b:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0030:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0035:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_003a:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_003f:  ret

    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0047:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004c:  ldarg.0
    IL_004d:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0052:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0057:  ldarg.0
    IL_0058:  call       instance float32 Game.ValueBarWidget::get_Spacing()
    IL_005d:  add
    IL_005e:  ldarg.0
    IL_005f:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_0064:  conv.r4
    IL_0065:  mul
    IL_0066:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_006b:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0070:  ret
  } // end of method ValueBarWidget::Measure

  .property instance float32 Value()
  {
    .get instance float32 Game.ValueBarWidget::get_Value()
    .set instance void Game.ValueBarWidget::set_Value(float32)
  } // end of property ValueBarWidget::Value
  .property instance int32 BarsCount()
  {
    .get instance int32 Game.ValueBarWidget::get_BarsCount()
    .set instance void Game.ValueBarWidget::set_BarsCount(int32)
  } // end of property ValueBarWidget::BarsCount
  .property instance bool FlipDirection()
  {
    .get instance bool Game.ValueBarWidget::get_FlipDirection()
    .set instance void Game.ValueBarWidget::set_FlipDirection(bool)
  } // end of property ValueBarWidget::FlipDirection
  .property instance valuetype [Engine]Engine.Vector2
          BarSize()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    .set instance void Game.ValueBarWidget::set_BarSize(valuetype [Engine]Engine.Vector2)
  } // end of property ValueBarWidget::BarSize
  .property instance float32 Spacing()
  {
    .get instance float32 Game.ValueBarWidget::get_Spacing()
    .set instance void Game.ValueBarWidget::set_Spacing(float32)
  } // end of property ValueBarWidget::Spacing
  .property instance valuetype [Engine]Engine.Color
          LitBarColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_LitBarColor()
    .set instance void Game.ValueBarWidget::set_LitBarColor(valuetype [Engine]Engine.Color)
  } // end of property ValueBarWidget::LitBarColor
  .property instance valuetype [Engine]Engine.Color
          LitBarColor2()
  {
    .get instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_LitBarColor2()
    .set instance void Game.ValueBarWidget::set_LitBarColor2(valuetype [Engine]Engine.Color)
  } // end of property ValueBarWidget::LitBarColor2
  .property instance valuetype [Engine]Engine.Color
          UnlitBarColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_UnlitBarColor()
    .set instance void Game.ValueBarWidget::set_UnlitBarColor(valuetype [Engine]Engine.Color)
  } // end of property ValueBarWidget::UnlitBarColor
  .property instance bool BarBlending()
  {
    .get instance bool Game.ValueBarWidget::get_BarBlending()
    .set instance void Game.ValueBarWidget::set_BarBlending(bool)
  } // end of property ValueBarWidget::BarBlending
  .property instance bool HalfBars()
  {
    .get instance bool Game.ValueBarWidget::get_HalfBars()
    .set instance void Game.ValueBarWidget::set_HalfBars(bool)
  } // end of property ValueBarWidget::HalfBars
  .property instance class Game.Subtexture
          BarSubtexture()
  {
    .get instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    .set instance void Game.ValueBarWidget::set_BarSubtexture(class Game.Subtexture)
  } // end of property ValueBarWidget::BarSubtexture
  .property instance bool TextureLinearFilter()
  {
    .get instance bool Game.ValueBarWidget::get_TextureLinearFilter()
    .set instance void Game.ValueBarWidget::set_TextureLinearFilter(bool)
  } // end of property ValueBarWidget::TextureLinearFilter
  .property instance valuetype Game.LayoutDirection
          LayoutDirection()
  {
    .get instance valuetype Game.LayoutDirection Game.ValueBarWidget::get_LayoutDirection()
    .set instance void Game.ValueBarWidget::set_LayoutDirection(valuetype Game.LayoutDirection)
  } // end of property ValueBarWidget::LayoutDirection
} // end of class Game.ValueBarWidget