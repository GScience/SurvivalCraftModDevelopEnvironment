.class public auto ansi beforefieldinit Game.StarRatingWidget
       extends Game.Widget
{
  .field private class [Engine]Engine.Graphics.TexturedBatch2D m_texturedBatch
  .field private float32 m_rating
  .field private float32 '<StarSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<ForeColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<BackColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       99 (0x63)
    .maxstack  9
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Widget::.ctor()
    IL_0006:  ldstr      "Textures/Gui/RatingStar"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.0
    IL_0019:  ldc.i4.0
    IL_001a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_001f:  ldnull
    IL_0020:  ldnull
    IL_0021:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearWrap
    IL_0026:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_002b:  stfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.StarRatingWidget::m_texturedBatch
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4     0xff
    IL_0036:  ldc.i4     0xc0
    IL_003b:  ldc.i4.0
    IL_003c:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0041:  call       instance void Game.StarRatingWidget::set_ForeColor(valuetype [Engine]Engine.Color)
    IL_0046:  ldarg.0
    IL_0047:  ldc.i4.s   96
    IL_0049:  ldc.i4.s   96
    IL_004b:  ldc.i4.s   96
    IL_004d:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0052:  call       instance void Game.StarRatingWidget::set_BackColor(valuetype [Engine]Engine.Color)
    IL_0057:  ldarg.0
    IL_0058:  ldc.r4     64.
    IL_005d:  call       instance void Game.StarRatingWidget::set_StarSize(float32)
    IL_0062:  ret
  } // end of method StarRatingWidget::.ctor

  .method public hidebysig specialname instance float32 
          get_StarSize() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.StarRatingWidget::'<StarSize>k__BackingField'
    IL_0006:  ret
  } // end of method StarRatingWidget::get_StarSize

  .method public hidebysig specialname instance void 
          set_StarSize(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.StarRatingWidget::'<StarSize>k__BackingField'
    IL_0007:  ret
  } // end of method StarRatingWidget::set_StarSize

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_ForeColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.StarRatingWidget::'<ForeColor>k__BackingField'
    IL_0006:  ret
  } // end of method StarRatingWidget::get_ForeColor

  .method public hidebysig specialname instance void 
          set_ForeColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.StarRatingWidget::'<ForeColor>k__BackingField'
    IL_0007:  ret
  } // end of method StarRatingWidget::set_ForeColor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_BackColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.StarRatingWidget::'<BackColor>k__BackingField'
    IL_0006:  ret
  } // end of method StarRatingWidget::get_BackColor

  .method public hidebysig specialname instance void 
          set_BackColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.StarRatingWidget::'<BackColor>k__BackingField'
    IL_0007:  ret
  } // end of method StarRatingWidget::set_BackColor

  .method public hidebysig specialname instance float32 
          get_Rating() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.StarRatingWidget::m_rating
    IL_0006:  ret
  } // end of method StarRatingWidget::get_Rating

  .method public hidebysig specialname instance void 
          set_Rating(float32 'value') cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.r4     0.0
    IL_0007:  ldc.r4     5.
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0011:  stfld      float32 Game.StarRatingWidget::m_rating
    IL_0016:  ret
  } // end of method StarRatingWidget::set_Rating

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_0,
             valuetype [Engine]Engine.Vector2 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0013:  brfalse.s  IL_0075

    IL_0015:  ldarg.0
    IL_0016:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_001b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_0020:  stloc.0
    IL_0021:  ldloca.s   V_0
    IL_0023:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0028:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_002d:  ldarg.0
    IL_002e:  bne.un.s   IL_0075

    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0037:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_003c:  stloc.0
    IL_003d:  ldloca.s   V_0
    IL_003f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0044:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_0049:  stloc.1
    IL_004a:  ldarg.0
    IL_004b:  ldc.r4     5.
    IL_0050:  ldloc.1
    IL_0051:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0056:  mul
    IL_0057:  ldarg.0
    IL_0058:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_005d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0062:  div
    IL_0063:  ldc.r4     1.
    IL_0068:  add
    IL_0069:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_006e:  conv.i4
    IL_006f:  conv.r4
    IL_0070:  call       instance void Game.StarRatingWidget::set_Rating(float32)
    IL_0075:  ret
  } // end of method StarRatingWidget::Update

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       259 (0x103)
    .maxstack  8
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             int32 V_5)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_000c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0011:  ldarg.0
    IL_0012:  call       instance float32 Game.StarRatingWidget::get_Rating()
    IL_0017:  mul
    IL_0018:  ldc.r4     5.
    IL_001d:  div
    IL_001e:  stloc.1
    IL_001f:  ldarg.0
    IL_0020:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0025:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_002a:  stloc.2
    IL_002b:  ldc.r4     0.0
    IL_0030:  stloc.3
    IL_0031:  ldarg.0
    IL_0032:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0037:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_003c:  stloc.s    V_4
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.StarRatingWidget::m_texturedBatch
    IL_0044:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0049:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_004e:  stloc.s    V_5
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.StarRatingWidget::m_texturedBatch
    IL_0056:  ldloc.0
    IL_0057:  ldloc.3
    IL_0058:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_005d:  ldloc.1
    IL_005e:  ldloc.s    V_4
    IL_0060:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0065:  ldc.r4     0.0
    IL_006a:  ldc.r4     0.0
    IL_006f:  ldc.r4     0.0
    IL_0074:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0079:  ldarg.0
    IL_007a:  call       instance float32 Game.StarRatingWidget::get_Rating()
    IL_007f:  ldc.r4     1.
    IL_0084:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0089:  ldarg.0
    IL_008a:  call       instance valuetype [Engine]Engine.Color Game.StarRatingWidget::get_ForeColor()
    IL_008f:  ldarg.0
    IL_0090:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0095:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_009a:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.StarRatingWidget::m_texturedBatch
    IL_00a5:  ldloc.1
    IL_00a6:  ldloc.3
    IL_00a7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ac:  ldloc.2
    IL_00ad:  ldloc.s    V_4
    IL_00af:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b4:  ldc.r4     0.0
    IL_00b9:  ldarg.0
    IL_00ba:  call       instance float32 Game.StarRatingWidget::get_Rating()
    IL_00bf:  ldc.r4     0.0
    IL_00c4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00c9:  ldc.r4     5.
    IL_00ce:  ldc.r4     1.
    IL_00d3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00d8:  ldarg.0
    IL_00d9:  call       instance valuetype [Engine]Engine.Color Game.StarRatingWidget::get_BackColor()
    IL_00de:  ldarg.0
    IL_00df:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_00e4:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00e9:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.StarRatingWidget::m_texturedBatch
    IL_00f4:  ldarg.0
    IL_00f5:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_00fa:  ldloc.s    V_5
    IL_00fc:  ldc.i4.m1
    IL_00fd:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_0102:  ret
  } // end of method StarRatingWidget::Draw

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldc.r4     5.
    IL_000d:  ldarg.0
    IL_000e:  call       instance float32 Game.StarRatingWidget::get_StarSize()
    IL_0013:  mul
    IL_0014:  ldarg.0
    IL_0015:  call       instance float32 Game.StarRatingWidget::get_StarSize()
    IL_001a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_001f:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0024:  ret
  } // end of method StarRatingWidget::MeasureOverride

  .property instance float32 StarSize()
  {
    .get instance float32 Game.StarRatingWidget::get_StarSize()
    .set instance void Game.StarRatingWidget::set_StarSize(float32)
  } // end of property StarRatingWidget::StarSize
  .property instance valuetype [Engine]Engine.Color
          ForeColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.StarRatingWidget::get_ForeColor()
    .set instance void Game.StarRatingWidget::set_ForeColor(valuetype [Engine]Engine.Color)
  } // end of property StarRatingWidget::ForeColor
  .property instance valuetype [Engine]Engine.Color
          BackColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.StarRatingWidget::get_BackColor()
    .set instance void Game.StarRatingWidget::set_BackColor(valuetype [Engine]Engine.Color)
  } // end of property StarRatingWidget::BackColor
  .property instance float32 Rating()
  {
    .get instance float32 Game.StarRatingWidget::get_Rating()
    .set instance void Game.StarRatingWidget::set_Rating(float32)
  } // end of property StarRatingWidget::Rating
} // end of class Game.StarRatingWidget