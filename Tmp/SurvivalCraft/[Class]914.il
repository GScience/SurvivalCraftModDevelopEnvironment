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
    // 代码大小       98 (0x62)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  stfld      int32 Game.ValueBarWidget::m_barsCount
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.s   16
    IL_000a:  ldc.i4     0x8c
    IL_000f:  ldc.i4.0
    IL_0010:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0015:  stfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_litBarColor
    IL_001a:  ldarg.0
    IL_001b:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0020:  stfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_litBarColor2
    IL_0025:  ldarg.0
    IL_0026:  ldc.i4.s   48
    IL_0028:  ldc.i4.s   48
    IL_002a:  ldc.i4.s   48
    IL_002c:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0031:  stfld      valuetype [Engine]Engine.Color Game.ValueBarWidget::m_unlitBarColor
    IL_0036:  ldarg.0
    IL_0037:  call       instance void Game.Widget::.ctor()
    IL_003c:  ldarg.0
    IL_003d:  ldc.i4.0
    IL_003e:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0043:  ldarg.0
    IL_0044:  ldc.r4     24.
    IL_0049:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_004e:  call       instance void Game.ValueBarWidget::set_BarSize(valuetype [Engine]Engine.Vector2)
    IL_0053:  ldarg.0
    IL_0054:  ldc.i4.1
    IL_0055:  call       instance void Game.ValueBarWidget::set_BarBlending(bool)
    IL_005a:  ldarg.0
    IL_005b:  ldc.i4.1
    IL_005c:  call       instance void Game.ValueBarWidget::set_TextureLinearFilter(bool)
    IL_0061:  ret
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
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0007:  stfld      float32 Game.ValueBarWidget::m_value
    IL_000c:  ret
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
    // 代码大小       1683 (0x693)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             int32 V_3,
             int32 V_4,
             bool V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             valuetype [Engine]Engine.Color V_9,
             valuetype [Engine]Engine.Color V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             valuetype [Engine]Engine.Vector2 V_12,
             valuetype [Engine]Engine.Vector2 V_13,
             valuetype [Engine]Engine.Vector2 V_14,
             valuetype [Engine]Engine.Vector2 V_15,
             valuetype [Engine]Engine.Vector2 V_16,
             valuetype [Engine]Engine.Vector2 V_17,
             valuetype [Engine]Engine.Vector2 V_18,
             valuetype [Engine]Engine.Vector2 V_19,
             valuetype [Engine]Engine.Vector2 V_20,
             valuetype [Engine]Engine.Vector2 V_21,
             valuetype [Engine]Engine.Vector2 V_22)
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
    IL_0062:  ldc.i4.0
    IL_0063:  stloc.0
    IL_0064:  ldc.i4.0
    IL_0065:  stloc.1
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_006c:  isinst     [Engine]Engine.Graphics.TexturedBatch2D
    IL_0071:  brfalse.s  IL_008b

    IL_0073:  ldarg.0
    IL_0074:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0079:  castclass  [Engine]Engine.Graphics.TexturedBatch2D
    IL_007e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0083:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0088:  stloc.0
    IL_0089:  br.s       IL_00b7

    IL_008b:  ldarg.0
    IL_008c:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0091:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_0096:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::LineVertices
    IL_009b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_00a0:  stloc.1
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_00a7:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_00ac:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_00b1:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_00b6:  stloc.0
    IL_00b7:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00bc:  stloc.2
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_00c3:  brtrue.s   IL_00de

    IL_00c5:  ldloca.s   V_2
    IL_00c7:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_00cc:  dup
    IL_00cd:  ldind.r4
    IL_00ce:  ldarg.0
    IL_00cf:  call       instance float32 Game.ValueBarWidget::get_Spacing()
    IL_00d4:  ldc.r4     2.
    IL_00d9:  div
    IL_00da:  add
    IL_00db:  stind.r4
    IL_00dc:  br.s       IL_00f5

    IL_00de:  ldloca.s   V_2
    IL_00e0:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_00e5:  dup
    IL_00e6:  ldind.r4
    IL_00e7:  ldarg.0
    IL_00e8:  call       instance float32 Game.ValueBarWidget::get_Spacing()
    IL_00ed:  ldc.r4     2.
    IL_00f2:  div
    IL_00f3:  add
    IL_00f4:  stind.r4
    IL_00f5:  ldarg.0
    IL_00f6:  call       instance bool Game.ValueBarWidget::get_HalfBars()
    IL_00fb:  brtrue.s   IL_0100

    IL_00fd:  ldc.i4.2
    IL_00fe:  br.s       IL_0101

    IL_0100:  ldc.i4.1
    IL_0101:  stloc.3
    IL_0102:  ldc.i4.0
    IL_0103:  stloc.s    V_4
    IL_0105:  br         IL_060a

    IL_010a:  ldloc.s    V_4
    IL_010c:  ldc.i4.2
    IL_010d:  rem
    IL_010e:  ldc.i4.0
    IL_010f:  ceq
    IL_0111:  stloc.s    V_5
    IL_0113:  ldc.r4     0.5
    IL_0118:  ldloc.s    V_4
    IL_011a:  conv.r4
    IL_011b:  mul
    IL_011c:  stloc.s    V_6
    IL_011e:  ldc.r4     0.0
    IL_0123:  stloc.s    V_7
    IL_0125:  ldarg.0
    IL_0126:  call       instance bool Game.ValueBarWidget::get_FlipDirection()
    IL_012b:  brfalse.s  IL_0167

    IL_012d:  ldarg.0
    IL_012e:  call       instance float32 Game.ValueBarWidget::get_Value()
    IL_0133:  ldarg.0
    IL_0134:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_0139:  conv.r4
    IL_013a:  ldloc.s    V_6
    IL_013c:  sub
    IL_013d:  ldc.r4     1.
    IL_0142:  sub
    IL_0143:  ldarg.0
    IL_0144:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_0149:  conv.r4
    IL_014a:  div
    IL_014b:  sub
    IL_014c:  ldarg.0
    IL_014d:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_0152:  conv.r4
    IL_0153:  mul
    IL_0154:  ldc.r4     0.0
    IL_0159:  ldc.r4     1.
    IL_015e:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0163:  stloc.s    V_7
    IL_0165:  br.s       IL_0191

    IL_0167:  ldarg.0
    IL_0168:  call       instance float32 Game.ValueBarWidget::get_Value()
    IL_016d:  ldloc.s    V_6
    IL_016f:  ldarg.0
    IL_0170:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_0175:  conv.r4
    IL_0176:  div
    IL_0177:  sub
    IL_0178:  ldarg.0
    IL_0179:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_017e:  conv.r4
    IL_017f:  mul
    IL_0180:  ldc.r4     0.0
    IL_0185:  ldc.r4     1.
    IL_018a:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_018f:  stloc.s    V_7
    IL_0191:  ldarg.0
    IL_0192:  call       instance bool Game.ValueBarWidget::get_BarBlending()
    IL_0197:  brtrue.s   IL_01a2

    IL_0199:  ldloc.s    V_7
    IL_019b:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_01a0:  stloc.s    V_7
    IL_01a2:  ldarg.0
    IL_01a3:  ldfld      float32 Game.ValueBarWidget::m_flashCount
    IL_01a8:  ldc.r4     0.0
    IL_01ad:  bgt.s      IL_01b6

    IL_01af:  ldc.r4     1.
    IL_01b4:  br.s       IL_01d2

    IL_01b6:  ldc.r4     1.
    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      float32 Game.ValueBarWidget::m_flashCount
    IL_01c1:  ldc.r4     3.1415927
    IL_01c6:  mul
    IL_01c7:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01cc:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_01d1:  sub
    IL_01d2:  stloc.s    V_8
    IL_01d4:  ldarg.0
    IL_01d5:  call       instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_LitBarColor()
    IL_01da:  stloc.s    V_9
    IL_01dc:  ldarg.0
    IL_01dd:  call       instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_LitBarColor2()
    IL_01e2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_01e7:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_01ec:  brfalse.s  IL_0216

    IL_01ee:  ldarg.0
    IL_01ef:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_01f4:  ldc.i4.1
    IL_01f5:  ble.s      IL_0216

    IL_01f7:  ldarg.0
    IL_01f8:  call       instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_LitBarColor()
    IL_01fd:  ldarg.0
    IL_01fe:  call       instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_LitBarColor2()
    IL_0203:  ldloc.s    V_6
    IL_0205:  ldarg.0
    IL_0206:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_020b:  ldc.i4.1
    IL_020c:  sub
    IL_020d:  conv.r4
    IL_020e:  div
    IL_020f:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_0214:  stloc.s    V_9
    IL_0216:  ldarg.0
    IL_0217:  call       instance valuetype [Engine]Engine.Color Game.ValueBarWidget::get_UnlitBarColor()
    IL_021c:  ldloc.s    V_9
    IL_021e:  ldloc.s    V_7
    IL_0220:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_0225:  ldloc.s    V_8
    IL_0227:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_022c:  ldarg.0
    IL_022d:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0232:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0237:  stloc.s    V_10
    IL_0239:  ldarg.0
    IL_023a:  call       instance bool Game.ValueBarWidget::get_HalfBars()
    IL_023f:  brfalse    IL_04b5

    IL_0244:  ldloc.s    V_5
    IL_0246:  brfalse    IL_0380

    IL_024b:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0250:  stloc.s    V_11
    IL_0252:  ldarg.0
    IL_0253:  ldfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_0258:  brfalse.s  IL_026b

    IL_025a:  ldc.r4     1.
    IL_025f:  ldc.r4     0.5
    IL_0264:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0269:  br.s       IL_027a

    IL_026b:  ldc.r4     0.5
    IL_0270:  ldc.r4     1.
    IL_0275:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_027a:  stloc.s    V_12
    IL_027c:  ldarg.0
    IL_027d:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0282:  isinst     [Engine]Engine.Graphics.TexturedBatch2D
    IL_0287:  brfalse    IL_033e

    IL_028c:  ldarg.0
    IL_028d:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_0292:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_0297:  stloc.s    V_13
    IL_0299:  ldloca.s   V_14
    IL_029b:  ldarg.0
    IL_029c:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_02a1:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_02a6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02ab:  ldarg.0
    IL_02ac:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_02b1:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_02b6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02bb:  ldloc.s    V_12
    IL_02bd:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02c2:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_02c7:  ldarg.0
    IL_02c8:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_02cd:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_02d2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02d7:  ldarg.0
    IL_02d8:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_02dd:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_02e2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02e7:  ldloc.s    V_12
    IL_02e9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02ee:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_02f3:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02f8:  ldarg.0
    IL_02f9:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_02fe:  castclass  [Engine]Engine.Graphics.TexturedBatch2D
    IL_0303:  ldloc.2
    IL_0304:  ldloc.s    V_11
    IL_0306:  ldarg.0
    IL_0307:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_030c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0311:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0316:  ldloc.2
    IL_0317:  ldloc.s    V_12
    IL_0319:  ldarg.0
    IL_031a:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_031f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0324:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0329:  ldc.r4     0.0
    IL_032e:  ldloc.s    V_13
    IL_0330:  ldloc.s    V_14
    IL_0332:  ldloc.s    V_10
    IL_0334:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0339:  br         IL_05b4

    IL_033e:  ldarg.0
    IL_033f:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0344:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_0349:  ldloc.2
    IL_034a:  ldloc.s    V_11
    IL_034c:  ldarg.0
    IL_034d:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0352:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0357:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_035c:  ldloc.2
    IL_035d:  ldloc.s    V_12
    IL_035f:  ldarg.0
    IL_0360:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0365:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_036a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_036f:  ldc.r4     0.0
    IL_0374:  ldloc.s    V_10
    IL_0376:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_037b:  br         IL_05b4

    IL_0380:  ldarg.0
    IL_0381:  ldfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_0386:  brfalse.s  IL_0399

    IL_0388:  ldc.r4     0.0
    IL_038d:  ldc.r4     0.5
    IL_0392:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0397:  br.s       IL_03a8

    IL_0399:  ldc.r4     0.5
    IL_039e:  ldc.r4     0.0
    IL_03a3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03a8:  stloc.s    V_15
    IL_03aa:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_03af:  stloc.s    V_16
    IL_03b1:  ldarg.0
    IL_03b2:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_03b7:  isinst     [Engine]Engine.Graphics.TexturedBatch2D
    IL_03bc:  brfalse    IL_0473

    IL_03c1:  ldloca.s   V_17
    IL_03c3:  ldarg.0
    IL_03c4:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_03c9:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_03ce:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03d3:  ldarg.0
    IL_03d4:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_03d9:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_03de:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03e3:  ldloc.s    V_15
    IL_03e5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03ea:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03ef:  ldarg.0
    IL_03f0:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_03f5:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_03fa:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_03ff:  ldarg.0
    IL_0400:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_0405:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_040a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_040f:  ldloc.s    V_15
    IL_0411:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0416:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_041b:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0420:  ldarg.0
    IL_0421:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_0426:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_042b:  stloc.s    V_18
    IL_042d:  ldarg.0
    IL_042e:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0433:  castclass  [Engine]Engine.Graphics.TexturedBatch2D
    IL_0438:  ldloc.2
    IL_0439:  ldloc.s    V_15
    IL_043b:  ldarg.0
    IL_043c:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0441:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0446:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_044b:  ldloc.2
    IL_044c:  ldloc.s    V_16
    IL_044e:  ldarg.0
    IL_044f:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0454:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0459:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_045e:  ldc.r4     0.0
    IL_0463:  ldloc.s    V_17
    IL_0465:  ldloc.s    V_18
    IL_0467:  ldloc.s    V_10
    IL_0469:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_046e:  br         IL_05b4

    IL_0473:  ldarg.0
    IL_0474:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0479:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_047e:  ldloc.2
    IL_047f:  ldloc.s    V_15
    IL_0481:  ldarg.0
    IL_0482:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0487:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_048c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0491:  ldloc.2
    IL_0492:  ldloc.s    V_16
    IL_0494:  ldarg.0
    IL_0495:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_049a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_049f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_04a4:  ldc.r4     0.0
    IL_04a9:  ldloc.s    V_10
    IL_04ab:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_04b0:  br         IL_05b4

    IL_04b5:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_04ba:  stloc.s    V_19
    IL_04bc:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_04c1:  stloc.s    V_20
    IL_04c3:  ldarg.0
    IL_04c4:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_04c9:  isinst     [Engine]Engine.Graphics.TexturedBatch2D
    IL_04ce:  brfalse.s  IL_0530

    IL_04d0:  ldarg.0
    IL_04d1:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_04d6:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_04db:  stloc.s    V_21
    IL_04dd:  ldarg.0
    IL_04de:  call       instance class Game.Subtexture Game.ValueBarWidget::get_BarSubtexture()
    IL_04e3:  ldfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_04e8:  stloc.s    V_22
    IL_04ea:  ldarg.0
    IL_04eb:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_04f0:  castclass  [Engine]Engine.Graphics.TexturedBatch2D
    IL_04f5:  ldloc.2
    IL_04f6:  ldloc.s    V_19
    IL_04f8:  ldarg.0
    IL_04f9:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_04fe:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0503:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0508:  ldloc.2
    IL_0509:  ldloc.s    V_20
    IL_050b:  ldarg.0
    IL_050c:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0511:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0516:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_051b:  ldc.r4     0.0
    IL_0520:  ldloc.s    V_21
    IL_0522:  ldloc.s    V_22
    IL_0524:  ldloc.s    V_10
    IL_0526:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_052b:  br         IL_05b4

    IL_0530:  ldarg.0
    IL_0531:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0536:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_053b:  ldloc.2
    IL_053c:  ldloc.s    V_19
    IL_053e:  ldarg.0
    IL_053f:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0544:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0549:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_054e:  ldloc.2
    IL_054f:  ldloc.s    V_20
    IL_0551:  ldarg.0
    IL_0552:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0557:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_055c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0561:  ldc.r4     0.0
    IL_0566:  ldloc.s    V_10
    IL_0568:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_056d:  ldarg.0
    IL_056e:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0573:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_0578:  ldloc.2
    IL_0579:  ldloc.s    V_19
    IL_057b:  ldarg.0
    IL_057c:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0581:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0586:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_058b:  ldloc.2
    IL_058c:  ldloc.s    V_20
    IL_058e:  ldarg.0
    IL_058f:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_0594:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0599:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_059e:  ldc.r4     0.0
    IL_05a3:  ldloc.s    V_10
    IL_05a5:  ldc.r4     0.75
    IL_05aa:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_05af:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueRectangle(valuetype [Engine]Engine.Vector2,
                                                                                           valuetype [Engine]Engine.Vector2,
                                                                                           float32,
                                                                                           valuetype [Engine]Engine.Color)
    IL_05b4:  ldloc.s    V_5
    IL_05b6:  brfalse.s  IL_05c0

    IL_05b8:  ldarg.0
    IL_05b9:  call       instance bool Game.ValueBarWidget::get_HalfBars()
    IL_05be:  brtrue.s   IL_0604

    IL_05c0:  ldarg.0
    IL_05c1:  ldfld      valuetype Game.LayoutDirection Game.ValueBarWidget::m_layoutDirection
    IL_05c6:  brtrue.s   IL_05e7

    IL_05c8:  ldloca.s   V_2
    IL_05ca:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_05cf:  dup
    IL_05d0:  ldind.r4
    IL_05d1:  ldarg.0
    IL_05d2:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_05d7:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_05dc:  ldarg.0
    IL_05dd:  call       instance float32 Game.ValueBarWidget::get_Spacing()
    IL_05e2:  add
    IL_05e3:  add
    IL_05e4:  stind.r4
    IL_05e5:  br.s       IL_0604

    IL_05e7:  ldloca.s   V_2
    IL_05e9:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_05ee:  dup
    IL_05ef:  ldind.r4
    IL_05f0:  ldarg.0
    IL_05f1:  call       instance valuetype [Engine]Engine.Vector2 Game.ValueBarWidget::get_BarSize()
    IL_05f6:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_05fb:  ldarg.0
    IL_05fc:  call       instance float32 Game.ValueBarWidget::get_Spacing()
    IL_0601:  add
    IL_0602:  add
    IL_0603:  stind.r4
    IL_0604:  ldloc.s    V_4
    IL_0606:  ldloc.3
    IL_0607:  add
    IL_0608:  stloc.s    V_4
    IL_060a:  ldloc.s    V_4
    IL_060c:  ldc.i4.2
    IL_060d:  ldarg.0
    IL_060e:  call       instance int32 Game.ValueBarWidget::get_BarsCount()
    IL_0613:  mul
    IL_0614:  blt        IL_010a

    IL_0619:  ldarg.0
    IL_061a:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_061f:  isinst     [Engine]Engine.Graphics.TexturedBatch2D
    IL_0624:  brfalse.s  IL_0640

    IL_0626:  ldarg.0
    IL_0627:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_062c:  castclass  [Engine]Engine.Graphics.TexturedBatch2D
    IL_0631:  ldarg.0
    IL_0632:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0637:  ldloc.0
    IL_0638:  ldc.i4.m1
    IL_0639:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_063e:  br.s       IL_0670

    IL_0640:  ldarg.0
    IL_0641:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_0646:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_064b:  ldarg.0
    IL_064c:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0651:  ldloc.1
    IL_0652:  ldc.i4.m1
    IL_0653:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformLines(valuetype [Engine]Engine.Matrix,
                                                                                           int32,
                                                                                           int32)
    IL_0658:  ldarg.0
    IL_0659:  ldfld      class [Engine]Engine.Graphics.BaseBatch Game.ValueBarWidget::m_batch
    IL_065e:  castclass  [Engine]Engine.Graphics.FlatBatch2D
    IL_0663:  ldarg.0
    IL_0664:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0669:  ldloc.0
    IL_066a:  ldc.i4.m1
    IL_066b:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_0670:  ldarg.0
    IL_0671:  ldarg.0
    IL_0672:  ldfld      float32 Game.ValueBarWidget::m_flashCount
    IL_0677:  ldc.r4     4.
    IL_067c:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0681:  mul
    IL_0682:  sub
    IL_0683:  ldc.r4     0.0
    IL_0688:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_068d:  stfld      float32 Game.ValueBarWidget::m_flashCount
    IL_0692:  ret
  } // end of method ValueBarWidget::Draw

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
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
  } // end of method ValueBarWidget::MeasureOverride

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