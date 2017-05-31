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
    // 代码大小       133 (0x85)
    .maxstack  4
    .locals init (valuetype Game.InputState V_0,
             float32 V_1)
    IL_0000:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_000d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0012:  brfalse.s  IL_0084

    IL_0014:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0019:  stloc.0
    IL_001a:  ldloca.s   V_0
    IL_001c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_0021:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0026:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_002b:  ldarg.0
    IL_002c:  bne.un.s   IL_0084

    IL_002e:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0033:  stloc.0
    IL_0034:  ldloca.s   V_0
    IL_0036:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_003b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0040:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0045:  ldarg.0
    IL_0046:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_004b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0050:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0055:  mul
    IL_0056:  sub
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldc.r4     5.
    IL_005e:  ldloc.1
    IL_005f:  mul
    IL_0060:  ldarg.0
    IL_0061:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0066:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_006b:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0070:  mul
    IL_0071:  div
    IL_0072:  ldc.r4     1.
    IL_0077:  add
    IL_0078:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_007d:  conv.i4
    IL_007e:  conv.r4
    IL_007f:  call       instance void Game.StarRatingWidget::set_Rating(float32)
    IL_0084:  ret
  } // end of method StarRatingWidget::Update

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       277 (0x115)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000b:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0010:  mul
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0018:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_001d:  ldarg.0
    IL_001e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0023:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0028:  ldarg.0
    IL_0029:  call       instance float32 Game.StarRatingWidget::get_Rating()
    IL_002e:  mul
    IL_002f:  ldc.r4     5.
    IL_0034:  div
    IL_0035:  add
    IL_0036:  call       float32 Game.WidgetsManager::get_Scale()
    IL_003b:  mul
    IL_003c:  stloc.1
    IL_003d:  ldarg.0
    IL_003e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0043:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0048:  ldarg.0
    IL_0049:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_004e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0053:  add
    IL_0054:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0059:  mul
    IL_005a:  stloc.2
    IL_005b:  ldarg.0
    IL_005c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0061:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0066:  call       float32 Game.WidgetsManager::get_Scale()
    IL_006b:  mul
    IL_006c:  stloc.3
    IL_006d:  ldarg.0
    IL_006e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0073:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0078:  ldarg.0
    IL_0079:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_007e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0083:  add
    IL_0084:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0089:  mul
    IL_008a:  stloc.s    V_4
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.StarRatingWidget::m_texturedBatch
    IL_0092:  ldloc.0
    IL_0093:  ldloc.3
    IL_0094:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0099:  ldloc.1
    IL_009a:  ldloc.s    V_4
    IL_009c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a1:  ldc.r4     0.0
    IL_00a6:  ldc.r4     0.0
    IL_00ab:  ldc.r4     0.0
    IL_00b0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b5:  ldarg.0
    IL_00b6:  call       instance float32 Game.StarRatingWidget::get_Rating()
    IL_00bb:  ldc.r4     1.
    IL_00c0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00c5:  ldarg.0
    IL_00c6:  call       instance valuetype [Engine]Engine.Color Game.StarRatingWidget::get_ForeColor()
    IL_00cb:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.StarRatingWidget::m_texturedBatch
    IL_00d6:  ldloc.1
    IL_00d7:  ldloc.3
    IL_00d8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00dd:  ldloc.2
    IL_00de:  ldloc.s    V_4
    IL_00e0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e5:  ldc.r4     0.0
    IL_00ea:  ldarg.0
    IL_00eb:  call       instance float32 Game.StarRatingWidget::get_Rating()
    IL_00f0:  ldc.r4     0.0
    IL_00f5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00fa:  ldc.r4     5.
    IL_00ff:  ldc.r4     1.
    IL_0104:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0109:  ldarg.0
    IL_010a:  call       instance valuetype [Engine]Engine.Color Game.StarRatingWidget::get_BackColor()
    IL_010f:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0114:  ret
  } // end of method StarRatingWidget::Draw

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
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
  } // end of method StarRatingWidget::Measure

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