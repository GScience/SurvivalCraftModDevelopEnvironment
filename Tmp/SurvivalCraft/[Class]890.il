.class public auto ansi beforefieldinit Game.LabelWidget
       extends Game.Widget
{
  .field private string m_text
  .field private valuetype Game.TextOrientation m_textOrientation
  .field private class [Engine]Engine.Media.BitmapFont m_font
  .field private valuetype [Engine]Engine.Vector2 m_fontSpacing
  .field private float32 m_fontScale
  .field private int32 m_maxLines
  .field private bool m_wordWrap
  .field private bool m_ellipsis
  .field private class [Engine]Engine.Graphics.FontBatch2D m_fontBatch
  .field private class [System.Collections]System.Collections.Generic.List`1<string> m_lines
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_linesSize
  .field private valuetype [System.Runtime]System.Nullable`1<float32> m_linesAvailableWidth
  .field private valuetype [System.Runtime]System.Nullable`1<float32> m_linesAvailableHeight
  .field private valuetype [Engine]Engine.Vector2 '<Size>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Graphics.TextAnchor '<TextAnchor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<DropShadow>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       101 (0x65)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x7fffffff
    IL_0006:  stfld      int32 Game.LabelWidget::m_maxLines
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0016:  ldarg.0
    IL_0017:  ldc.r4     -1.
    IL_001c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0021:  stfld      valuetype [Engine]Engine.Vector2 Game.LabelWidget::'<Size>k__BackingField'
    IL_0026:  ldarg.0
    IL_0027:  call       instance void Game.Widget::.ctor()
    IL_002c:  ldarg.0
    IL_002d:  ldc.i4.0
    IL_002e:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0033:  ldarg.0
    IL_0034:  ldstr      "Fonts/Pericles32"
    IL_0039:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_003e:  call       instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0043:  ldarg.0
    IL_0044:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0049:  call       instance void Game.LabelWidget::set_Text(string)
    IL_004e:  ldarg.0
    IL_004f:  ldc.r4     1.
    IL_0054:  call       instance void Game.LabelWidget::set_FontScale(float32)
    IL_0059:  ldarg.0
    IL_005a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_005f:  call       instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0064:  ret
  } // end of method LabelWidget::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Size() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.LabelWidget::'<Size>k__BackingField'
    IL_0006:  ret
  } // end of method LabelWidget::get_Size

  .method public hidebysig specialname instance void 
          set_Size(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.LabelWidget::'<Size>k__BackingField'
    IL_0007:  ret
  } // end of method LabelWidget::set_Size

  .method public hidebysig specialname instance string 
          get_Text() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.LabelWidget::m_text
    IL_0006:  ret
  } // end of method LabelWidget::get_Text

  .method public hidebysig specialname instance void 
          set_Text(string 'value') cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string Game.LabelWidget::m_text
    IL_0007:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_000c:  brfalse.s  IL_0021

    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  stfld      string Game.LabelWidget::m_text
    IL_0015:  ldarg.0
    IL_0016:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_001b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0021:  ret
  } // end of method LabelWidget::set_Text

  .method public hidebysig specialname instance valuetype [Engine]Engine.Graphics.TextAnchor 
          get_TextAnchor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::'<TextAnchor>k__BackingField'
    IL_0006:  ret
  } // end of method LabelWidget::get_TextAnchor

  .method public hidebysig specialname instance void 
          set_TextAnchor(valuetype [Engine]Engine.Graphics.TextAnchor 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::'<TextAnchor>k__BackingField'
    IL_0007:  ret
  } // end of method LabelWidget::set_TextAnchor

  .method public hidebysig specialname instance valuetype Game.TextOrientation 
          get_TextOrientation() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.TextOrientation Game.LabelWidget::m_textOrientation
    IL_0006:  ret
  } // end of method LabelWidget::get_TextOrientation

  .method public hidebysig specialname instance void 
          set_TextOrientation(valuetype Game.TextOrientation 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      valuetype Game.TextOrientation Game.LabelWidget::m_textOrientation
    IL_0007:  beq.s      IL_001c

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      valuetype Game.TextOrientation Game.LabelWidget::m_textOrientation
    IL_0010:  ldarg.0
    IL_0011:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0016:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_001c:  ret
  } // end of method LabelWidget::set_TextOrientation

  .method public hidebysig specialname instance class [Engine]Engine.Media.BitmapFont 
          get_Font() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Media.BitmapFont Game.LabelWidget::m_font
    IL_0006:  ret
  } // end of method LabelWidget::get_Font

  .method public hidebysig specialname instance void 
          set_Font(class [Engine]Engine.Media.BitmapFont 'value') cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Engine]Engine.Media.BitmapFont Game.LabelWidget::m_font
    IL_0007:  beq.s      IL_0023

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      class [Engine]Engine.Media.BitmapFont Game.LabelWidget::m_font
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.FontBatch2D Game.LabelWidget::m_fontBatch
    IL_0017:  ldarg.0
    IL_0018:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_001d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0023:  ret
  } // end of method LabelWidget::set_Font

  .method public hidebysig specialname instance float32 
          get_FontScale() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.LabelWidget::m_fontScale
    IL_0006:  ret
  } // end of method LabelWidget::get_FontScale

  .method public hidebysig specialname instance void 
          set_FontScale(float32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.LabelWidget::m_fontScale
    IL_0007:  beq.s      IL_001c

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      float32 Game.LabelWidget::m_fontScale
    IL_0010:  ldarg.0
    IL_0011:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0016:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_001c:  ret
  } // end of method LabelWidget::set_FontScale

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_FontSpacing() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.LabelWidget::m_fontSpacing
    IL_0006:  ret
  } // end of method LabelWidget::get_FontSpacing

  .method public hidebysig specialname instance void 
          set_FontSpacing(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      valuetype [Engine]Engine.Vector2 Game.LabelWidget::m_fontSpacing
    IL_0007:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_000c:  brfalse.s  IL_0021

    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  stfld      valuetype [Engine]Engine.Vector2 Game.LabelWidget::m_fontSpacing
    IL_0015:  ldarg.0
    IL_0016:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_001b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0021:  ret
  } // end of method LabelWidget::set_FontSpacing

  .method public hidebysig specialname instance bool 
          get_WordWrap() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.LabelWidget::m_wordWrap
    IL_0006:  ret
  } // end of method LabelWidget::get_WordWrap

  .method public hidebysig specialname instance void 
          set_WordWrap(bool 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.LabelWidget::m_wordWrap
    IL_0007:  beq.s      IL_001c

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.LabelWidget::m_wordWrap
    IL_0010:  ldarg.0
    IL_0011:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0016:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_001c:  ret
  } // end of method LabelWidget::set_WordWrap

  .method public hidebysig specialname instance bool 
          get_Ellipsis() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.LabelWidget::m_ellipsis
    IL_0006:  ret
  } // end of method LabelWidget::get_Ellipsis

  .method public hidebysig specialname instance void 
          set_Ellipsis(bool 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.LabelWidget::m_ellipsis
    IL_0007:  beq.s      IL_001c

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.LabelWidget::m_ellipsis
    IL_0010:  ldarg.0
    IL_0011:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0016:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_001c:  ret
  } // end of method LabelWidget::set_Ellipsis

  .method public hidebysig specialname instance int32 
          get_MaxLines() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.LabelWidget::m_maxLines
    IL_0006:  ret
  } // end of method LabelWidget::get_MaxLines

  .method public hidebysig specialname instance void 
          set_MaxLines(int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Game.LabelWidget::m_maxLines
    IL_0007:  beq.s      IL_001c

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      int32 Game.LabelWidget::m_maxLines
    IL_0010:  ldarg.0
    IL_0011:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0016:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_001c:  ret
  } // end of method LabelWidget::set_MaxLines

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.LabelWidget::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method LabelWidget::get_Color

  .method public hidebysig specialname instance void 
          set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.LabelWidget::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method LabelWidget::set_Color

  .method public hidebysig specialname instance bool 
          get_DropShadow() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.LabelWidget::'<DropShadow>k__BackingField'
    IL_0006:  ret
  } // end of method LabelWidget::get_DropShadow

  .method public hidebysig specialname instance void 
          set_DropShadow(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.LabelWidget::'<DropShadow>k__BackingField'
    IL_0007:  ret
  } // end of method LabelWidget::set_DropShadow

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       790 (0x316)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Color V_0,
             int32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Graphics.TextAnchor V_3,
             valuetype [Engine]Engine.Color V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string> V_8,
             string V_9,
             float32 V_10,
             bool V_11,
             valuetype [Engine]Engine.Vector2 V_12,
             float32 V_13)
    IL_0000:  ldarg.0
    IL_0001:  call       instance string Game.LabelWidget::get_Text()
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue     IL_0315

    IL_0010:  ldarg.0
    IL_0011:  call       instance valuetype [Engine]Engine.Color Game.LabelWidget::get_Color()
    IL_0016:  stloc.0
    IL_0017:  ldloca.s   V_0
    IL_0019:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_001e:  brfalse    IL_0315

    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.LabelWidget::m_fontBatch
    IL_0029:  brtrue.s   IL_004a

    IL_002b:  ldarg.0
    IL_002c:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0031:  ldarg.0
    IL_0032:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0037:  ldc.i4.1
    IL_0038:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_003d:  ldnull
    IL_003e:  ldnull
    IL_003f:  ldnull
    IL_0040:  callvirt   instance class [Engine]Engine.Graphics.FontBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_0045:  stfld      class [Engine]Engine.Graphics.FontBatch2D Game.LabelWidget::m_fontBatch
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.LabelWidget::m_fontBatch
    IL_0050:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseFontBatch::TriangleVertices
    IL_0055:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_005a:  stloc.1
    IL_005b:  ldc.r4     0.0
    IL_0060:  stloc.2
    IL_0061:  ldarg.0
    IL_0062:  call       instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
    IL_0067:  ldc.i4.2
    IL_0068:  and
    IL_0069:  brfalse    IL_00f3

    IL_006e:  ldarg.0
    IL_006f:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0074:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0079:  ldarg.0
    IL_007a:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_007f:  mul
    IL_0080:  ldarg.0
    IL_0081:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0086:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_008b:  mul
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0092:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0097:  ldc.i4.1
    IL_0098:  sub
    IL_0099:  conv.r4
    IL_009a:  ldarg.0
    IL_009b:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_00a0:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_00a5:  ldarg.0
    IL_00a6:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_00ab:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::get_Spacing()
    IL_00b0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b5:  add
    IL_00b6:  ldarg.0
    IL_00b7:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_00bc:  mul
    IL_00bd:  ldarg.0
    IL_00be:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_00c3:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_00c8:  mul
    IL_00c9:  ldarg.0
    IL_00ca:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
    IL_00cf:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00d4:  add
    IL_00d5:  mul
    IL_00d6:  add
    IL_00d7:  stloc.s    V_6
    IL_00d9:  ldarg.0
    IL_00da:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00df:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00e4:  ldloc.s    V_6
    IL_00e6:  sub
    IL_00e7:  ldc.r4     2.
    IL_00ec:  div
    IL_00ed:  stloc.2
    IL_00ee:  br         IL_0177

    IL_00f3:  ldarg.0
    IL_00f4:  call       instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
    IL_00f9:  ldc.i4.8
    IL_00fa:  and
    IL_00fb:  brfalse.s  IL_0177

    IL_00fd:  ldarg.0
    IL_00fe:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0103:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0108:  ldarg.0
    IL_0109:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_010e:  mul
    IL_010f:  ldarg.0
    IL_0110:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0115:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_011a:  mul
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0121:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0126:  ldc.i4.1
    IL_0127:  sub
    IL_0128:  conv.r4
    IL_0129:  ldarg.0
    IL_012a:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_012f:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0134:  ldarg.0
    IL_0135:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_013a:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::get_Spacing()
    IL_013f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0144:  add
    IL_0145:  ldarg.0
    IL_0146:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_014b:  mul
    IL_014c:  ldarg.0
    IL_014d:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0152:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_0157:  mul
    IL_0158:  ldarg.0
    IL_0159:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
    IL_015e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0163:  add
    IL_0164:  mul
    IL_0165:  add
    IL_0166:  stloc.s    V_7
    IL_0168:  ldarg.0
    IL_0169:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_016e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0173:  ldloc.s    V_7
    IL_0175:  sub
    IL_0176:  stloc.2
    IL_0177:  ldarg.0
    IL_0178:  call       instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
    IL_017d:  ldc.i4.s   -11
    IL_017f:  and
    IL_0180:  stloc.3
    IL_0181:  ldarg.0
    IL_0182:  call       instance valuetype [Engine]Engine.Color Game.LabelWidget::get_Color()
    IL_0187:  ldarg.0
    IL_0188:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_018d:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0192:  stloc.s    V_4
    IL_0194:  ldarg.0
    IL_0195:  call       instance float32 Game.LabelWidget::CalculateLineHeight()
    IL_019a:  stloc.s    V_5
    IL_019c:  ldarg.0
    IL_019d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_01a2:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<string>::GetEnumerator()
    IL_01a7:  stloc.s    V_8
    .try
    {
      IL_01a9:  br         IL_02e6

      IL_01ae:  ldloca.s   V_8
      IL_01b0:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::get_Current()
      IL_01b5:  stloc.s    V_9
      IL_01b7:  ldc.r4     0.0
      IL_01bc:  stloc.s    V_10
      IL_01be:  ldarg.0
      IL_01bf:  call       instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
      IL_01c4:  ldc.i4.1
      IL_01c5:  and
      IL_01c6:  brfalse.s  IL_01dd

      IL_01c8:  ldarg.0
      IL_01c9:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_01ce:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01d3:  ldc.r4     2.
      IL_01d8:  div
      IL_01d9:  stloc.s    V_10
      IL_01db:  br.s       IL_01f4

      IL_01dd:  ldarg.0
      IL_01de:  call       instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
      IL_01e3:  ldc.i4.4
      IL_01e4:  and
      IL_01e5:  brfalse.s  IL_01f4

      IL_01e7:  ldarg.0
      IL_01e8:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_01ed:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01f2:  stloc.s    V_10
      IL_01f4:  ldc.i4.1
      IL_01f5:  stloc.s    V_11
      IL_01f7:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_01fc:  stloc.s    V_12
      IL_01fe:  ldc.r4     0.0
      IL_0203:  stloc.s    V_13
      IL_0205:  ldarg.0
      IL_0206:  call       instance valuetype Game.TextOrientation Game.LabelWidget::get_TextOrientation()
      IL_020b:  brtrue.s   IL_0229

      IL_020d:  ldloca.s   V_12
      IL_020f:  ldloc.s    V_10
      IL_0211:  ldloc.2
      IL_0212:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0217:  ldc.r4     0.0
      IL_021c:  stloc.s    V_13
      IL_021e:  call       valuetype [Engine]Engine.Rectangle [Engine]Engine.Graphics.Display::get_ScissorRectangle()
      IL_0223:  pop
      IL_0224:  ldc.i4.1
      IL_0225:  stloc.s    V_11
      IL_0227:  br.s       IL_0257

      IL_0229:  ldarg.0
      IL_022a:  call       instance valuetype Game.TextOrientation Game.LabelWidget::get_TextOrientation()
      IL_022f:  ldc.i4.1
      IL_0230:  bne.un.s   IL_0257

      IL_0232:  ldloca.s   V_12
      IL_0234:  ldloc.s    V_10
      IL_0236:  ldarg.0
      IL_0237:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_023c:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0241:  ldloc.2
      IL_0242:  add
      IL_0243:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0248:  ldc.r4     -90.
      IL_024d:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
      IL_0252:  stloc.s    V_13
      IL_0254:  ldc.i4.1
      IL_0255:  stloc.s    V_11
      IL_0257:  ldloc.s    V_11
      IL_0259:  brfalse    IL_02e1

      IL_025e:  ldarg.0
      IL_025f:  call       instance bool Game.LabelWidget::get_DropShadow()
      IL_0264:  brfalse.s  IL_02b7

      IL_0266:  ldarg.0
      IL_0267:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.LabelWidget::m_fontBatch
      IL_026c:  ldloc.s    V_9
      IL_026e:  ldloc.s    V_12
      IL_0270:  ldc.r4     1.
      IL_0275:  ldarg.0
      IL_0276:  call       instance float32 Game.LabelWidget::get_FontScale()
      IL_027b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_0280:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0285:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_028a:  ldc.r4     0.0
      IL_028f:  ldc.i4.0
      IL_0290:  ldc.i4.0
      IL_0291:  ldc.i4.0
      IL_0292:  ldloca.s   V_4
      IL_0294:  call       instance uint8 [Engine]Engine.Color::get_A()
      IL_0299:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8,
                                                                     uint8)
      IL_029e:  ldloc.3
      IL_029f:  ldarg.0
      IL_02a0:  call       instance float32 Game.LabelWidget::get_FontScale()
      IL_02a5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_02aa:  ldarg.0
      IL_02ab:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
      IL_02b0:  ldloc.s    V_13
      IL_02b2:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        float32,
                                                                                        valuetype [Engine]Engine.Color,
                                                                                        valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        float32)
      IL_02b7:  ldarg.0
      IL_02b8:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.LabelWidget::m_fontBatch
      IL_02bd:  ldloc.s    V_9
      IL_02bf:  ldloc.s    V_12
      IL_02c1:  ldc.r4     0.0
      IL_02c6:  ldloc.s    V_4
      IL_02c8:  ldloc.3
      IL_02c9:  ldarg.0
      IL_02ca:  call       instance float32 Game.LabelWidget::get_FontScale()
      IL_02cf:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_02d4:  ldarg.0
      IL_02d5:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
      IL_02da:  ldloc.s    V_13
      IL_02dc:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        float32,
                                                                                        valuetype [Engine]Engine.Color,
                                                                                        valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        float32)
      IL_02e1:  ldloc.2
      IL_02e2:  ldloc.s    V_5
      IL_02e4:  add
      IL_02e5:  stloc.2
      IL_02e6:  ldloca.s   V_8
      IL_02e8:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::MoveNext()
      IL_02ed:  brtrue     IL_01ae

      IL_02f2:  leave.s    IL_0302

    }  // end .try
    finally
    {
      IL_02f4:  ldloca.s   V_8
      IL_02f6:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>
      IL_02fc:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0301:  endfinally
    }  // end handler
    IL_0302:  ldarg.0
    IL_0303:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.LabelWidget::m_fontBatch
    IL_0308:  ldarg.0
    IL_0309:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_030e:  ldloc.1
    IL_030f:  ldc.i4.m1
    IL_0310:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_0315:  ret
  } // end of method LabelWidget::Draw

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       304 (0x130)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance string Game.LabelWidget::get_Text()
    IL_0007:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000c:  brtrue.s   IL_0021

    IL_000e:  ldarg.0
    IL_000f:  call       instance valuetype [Engine]Engine.Color Game.LabelWidget::get_Color()
    IL_0014:  stloc.0
    IL_0015:  ldloca.s   V_0
    IL_0017:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_001c:  ldc.i4.0
    IL_001d:  cgt.un
    IL_001f:  br.s       IL_0022

    IL_0021:  ldc.i4.0
    IL_0022:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0027:  ldarg.0
    IL_0028:  call       instance valuetype Game.TextOrientation Game.LabelWidget::get_TextOrientation()
    IL_002d:  brtrue.s   IL_00ab

    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0036:  ldarg.1
    IL_0037:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_003c:  call       instance void Game.LabelWidget::UpdateLines(float32,
                                                                     float32)
    IL_0041:  ldarg.0
    IL_0042:  ldarg.0
    IL_0043:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_Size()
    IL_0048:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004d:  ldc.r4     0.0
    IL_0052:  blt.s      IL_0061

    IL_0054:  ldarg.0
    IL_0055:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_Size()
    IL_005a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_005f:  br.s       IL_0071

    IL_0061:  ldarg.0
    IL_0062:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0067:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_006c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0071:  ldarg.0
    IL_0072:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_Size()
    IL_0077:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_007c:  ldc.r4     0.0
    IL_0081:  blt.s      IL_0090

    IL_0083:  ldarg.0
    IL_0084:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_Size()
    IL_0089:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008e:  br.s       IL_00a0

    IL_0090:  ldarg.0
    IL_0091:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0096:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_009b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a5:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_00aa:  ret

    IL_00ab:  ldarg.0
    IL_00ac:  call       instance valuetype Game.TextOrientation Game.LabelWidget::get_TextOrientation()
    IL_00b1:  ldc.i4.1
    IL_00b2:  bne.un.s   IL_012f

    IL_00b4:  ldarg.0
    IL_00b5:  ldarg.1
    IL_00b6:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00bb:  ldarg.1
    IL_00bc:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00c1:  call       instance void Game.LabelWidget::UpdateLines(float32,
                                                                     float32)
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_Size()
    IL_00cd:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00d2:  ldc.r4     0.0
    IL_00d7:  blt.s      IL_00e6

    IL_00d9:  ldarg.0
    IL_00da:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_Size()
    IL_00df:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e4:  br.s       IL_00f6

    IL_00e6:  ldarg.0
    IL_00e7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_00ec:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00f1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00f6:  ldarg.0
    IL_00f7:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_Size()
    IL_00fc:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0101:  ldc.r4     0.0
    IL_0106:  blt.s      IL_0115

    IL_0108:  ldarg.0
    IL_0109:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_Size()
    IL_010e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0113:  br.s       IL_0125

    IL_0115:  ldarg.0
    IL_0116:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_011b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0120:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0125:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_012a:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_012f:  ret
  } // end of method LabelWidget::MeasureOverride

  .method private hidebysig instance float32 
          CalculateLineHeight() cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0006:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_000b:  ldarg.0
    IL_000c:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0011:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::get_Spacing()
    IL_0016:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_001b:  add
    IL_001c:  ldarg.0
    IL_001d:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
    IL_0022:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0027:  add
    IL_0028:  ldarg.0
    IL_0029:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_002e:  mul
    IL_002f:  ldarg.0
    IL_0030:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0035:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_003a:  mul
    IL_003b:  ret
  } // end of method LabelWidget::CalculateLineHeight

  .method private hidebysig instance void 
          UpdateLines(float32 availableWidth,
                      float32 availableHeight) cil managed
  {
    // 代码大小       1196 (0x4ac)
    .maxstack  7
    .locals init (string[] V_0,
             string V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [System.Runtime]System.Nullable`1<float32> V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             int32 V_8,
             int32 V_9,
             string V_10,
             int32 V_11,
             bool V_12,
             string V_13,
             int32 V_14,
             int32 V_15,
             string V_16,
             int32 V_17,
             int32 V_18,
             valuetype [Engine]Engine.Vector2 V_19)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableHeight
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_000b:  brfalse    IL_00a7

    IL_0010:  ldarg.0
    IL_0011:  ldfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableHeight
    IL_0016:  stloc.s    V_4
    IL_0018:  ldarg.2
    IL_0019:  stloc.s    V_5
    IL_001b:  ldloca.s   V_4
    IL_001d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::GetValueOrDefault()
    IL_0022:  ldloc.s    V_5
    IL_0024:  beq.s      IL_0029

    IL_0026:  ldc.i4.0
    IL_0027:  br.s       IL_0030

    IL_0029:  ldloca.s   V_4
    IL_002b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0030:  brfalse.s  IL_00a7

    IL_0032:  ldarg.0
    IL_0033:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableWidth
    IL_0038:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_003d:  brfalse.s  IL_00a7

    IL_003f:  ldarg.0
    IL_0040:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0045:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_004a:  brfalse.s  IL_00a7

    IL_004c:  ldarg.0
    IL_004d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0052:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0057:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_005c:  ldarg.0
    IL_005d:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableWidth
    IL_0062:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0067:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_006c:  ldc.r4     0.1
    IL_0071:  sub
    IL_0072:  stloc.s    V_6
    IL_0074:  ldarg.0
    IL_0075:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_007a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_007f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0084:  ldarg.0
    IL_0085:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableWidth
    IL_008a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_008f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0094:  ldc.r4     0.1
    IL_0099:  add
    IL_009a:  stloc.s    V_7
    IL_009c:  ldarg.1
    IL_009d:  ldloc.s    V_6
    IL_009f:  blt.un.s   IL_00a7

    IL_00a1:  ldarg.1
    IL_00a2:  ldloc.s    V_7
    IL_00a4:  bgt.un.s   IL_00a7

    IL_00a6:  ret

    IL_00a7:  ldarg.1
    IL_00a8:  ldc.r4     0.1
    IL_00ad:  add
    IL_00ae:  starg.s    availableWidth
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_00b6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Clear()
    IL_00bb:  ldarg.0
    IL_00bc:  call       instance string Game.LabelWidget::get_Text()
    IL_00c1:  dup
    IL_00c2:  brtrue.s   IL_00ca

    IL_00c4:  pop
    IL_00c5:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00ca:  ldc.i4.1
    IL_00cb:  newarr     [System.Runtime]System.Char
    IL_00d0:  dup
    IL_00d1:  ldc.i4.0
    IL_00d2:  ldc.i4.s   10
    IL_00d4:  stelem.i2
    IL_00d5:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_00da:  stloc.0
    IL_00db:  ldstr      "..."
    IL_00e0:  stloc.1
    IL_00e1:  ldarg.0
    IL_00e2:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_00e7:  ldloc.1
    IL_00e8:  ldarg.0
    IL_00e9:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_00ee:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00f3:  ldarg.0
    IL_00f4:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
    IL_00f9:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::MeasureText(string,
                                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                                valuetype [Engine]Engine.Vector2)
    IL_00fe:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0103:  stloc.2
    IL_0104:  ldarg.0
    IL_0105:  call       instance bool Game.LabelWidget::get_WordWrap()
    IL_010a:  brfalse    IL_02b5

    IL_010f:  ldarg.2
    IL_0110:  ldarg.0
    IL_0111:  call       instance float32 Game.LabelWidget::CalculateLineHeight()
    IL_0116:  div
    IL_0117:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_011c:  ldarg.0
    IL_011d:  call       instance int32 Game.LabelWidget::get_MaxLines()
    IL_0122:  conv.r4
    IL_0123:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0128:  conv.i4
    IL_0129:  stloc.s    V_8
    IL_012b:  ldc.i4.0
    IL_012c:  stloc.s    V_9
    IL_012e:  br         IL_02a6

    IL_0133:  ldloc.0
    IL_0134:  ldloc.s    V_9
    IL_0136:  ldelem.ref
    IL_0137:  ldc.i4.0
    IL_0138:  newarr     [System.Runtime]System.Char
    IL_013d:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_0142:  stloc.s    V_10
    IL_0144:  ldloc.s    V_10
    IL_0146:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_014b:  brtrue     IL_0293

    IL_0150:  ldarg.0
    IL_0151:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0156:  ldsfld     string [System.Runtime]System.String::Empty
    IL_015b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0160:  br         IL_02a0

    IL_0165:  ldarg.0
    IL_0166:  call       instance bool Game.LabelWidget::get_Ellipsis()
    IL_016b:  brfalse.s  IL_01b8

    IL_016d:  ldarg.0
    IL_016e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0173:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0178:  ldc.i4.1
    IL_0179:  add
    IL_017a:  ldloc.s    V_8
    IL_017c:  blt.s      IL_01b8

    IL_017e:  ldarg.0
    IL_017f:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0184:  ldarg.1
    IL_0185:  ldloc.2
    IL_0186:  sub
    IL_0187:  ldc.r4     0.0
    IL_018c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0191:  ldloc.s    V_10
    IL_0193:  ldc.i4.0
    IL_0194:  ldloc.s    V_10
    IL_0196:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_019b:  ldarg.0
    IL_019c:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_01a1:  ldarg.0
    IL_01a2:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
    IL_01a7:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01ac:  callvirt   instance int32 [Engine]Engine.Media.BitmapFont::FitText(float32,
                                                                                 string,
                                                                                 int32,
                                                                                 int32,
                                                                                 float32,
                                                                                 float32)
    IL_01b1:  stloc.s    V_11
    IL_01b3:  ldc.i4.1
    IL_01b4:  stloc.s    V_12
    IL_01b6:  br.s       IL_0222

    IL_01b8:  ldarg.0
    IL_01b9:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_01be:  ldarg.1
    IL_01bf:  ldloc.s    V_10
    IL_01c1:  ldc.i4.0
    IL_01c2:  ldloc.s    V_10
    IL_01c4:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_01c9:  ldarg.0
    IL_01ca:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_01cf:  ldarg.0
    IL_01d0:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
    IL_01d5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01da:  callvirt   instance int32 [Engine]Engine.Media.BitmapFont::FitText(float32,
                                                                                 string,
                                                                                 int32,
                                                                                 int32,
                                                                                 float32,
                                                                                 float32)
    IL_01df:  stloc.s    V_11
    IL_01e1:  ldloc.s    V_11
    IL_01e3:  ldc.i4.1
    IL_01e4:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_01e9:  stloc.s    V_11
    IL_01eb:  ldc.i4.0
    IL_01ec:  stloc.s    V_12
    IL_01ee:  ldloc.s    V_11
    IL_01f0:  ldloc.s    V_10
    IL_01f2:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_01f7:  bge.s      IL_0222

    IL_01f9:  ldloc.s    V_11
    IL_01fb:  stloc.s    V_14
    IL_01fd:  br.s       IL_0215

    IL_01ff:  ldloc.s    V_10
    IL_0201:  ldloc.s    V_11
    IL_0203:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0208:  call       bool [System.Runtime]System.Char::IsWhiteSpace(char)
    IL_020d:  brtrue.s   IL_021a

    IL_020f:  ldloc.s    V_11
    IL_0211:  ldc.i4.1
    IL_0212:  sub
    IL_0213:  stloc.s    V_11
    IL_0215:  ldloc.s    V_11
    IL_0217:  ldc.i4.0
    IL_0218:  bgt.s      IL_01ff

    IL_021a:  ldloc.s    V_11
    IL_021c:  brtrue.s   IL_0222

    IL_021e:  ldloc.s    V_14
    IL_0220:  stloc.s    V_11
    IL_0222:  ldloc.s    V_11
    IL_0224:  ldloc.s    V_10
    IL_0226:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_022b:  bne.un.s   IL_023a

    IL_022d:  ldloc.s    V_10
    IL_022f:  stloc.s    V_13
    IL_0231:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0236:  stloc.s    V_10
    IL_0238:  br.s       IL_027f

    IL_023a:  ldloc.s    V_10
    IL_023c:  ldc.i4.0
    IL_023d:  ldloc.s    V_11
    IL_023f:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0244:  ldc.i4.0
    IL_0245:  newarr     [System.Runtime]System.Char
    IL_024a:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_024f:  stloc.s    V_13
    IL_0251:  ldloc.s    V_12
    IL_0253:  brfalse.s  IL_025f

    IL_0255:  ldloc.s    V_13
    IL_0257:  ldloc.1
    IL_0258:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_025d:  stloc.s    V_13
    IL_025f:  ldloc.s    V_10
    IL_0261:  ldloc.s    V_11
    IL_0263:  ldloc.s    V_10
    IL_0265:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_026a:  ldloc.s    V_11
    IL_026c:  sub
    IL_026d:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0272:  ldc.i4.0
    IL_0273:  newarr     [System.Runtime]System.Char
    IL_0278:  callvirt   instance string [System.Runtime]System.String::TrimStart(char[])
    IL_027d:  stloc.s    V_10
    IL_027f:  ldarg.0
    IL_0280:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0285:  ldloc.s    V_13
    IL_0287:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_028c:  ldloc.s    V_12
    IL_028e:  brtrue     IL_036c

    IL_0293:  ldloc.s    V_10
    IL_0295:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_029a:  ldc.i4.0
    IL_029b:  bgt        IL_0165

    IL_02a0:  ldloc.s    V_9
    IL_02a2:  ldc.i4.1
    IL_02a3:  add
    IL_02a4:  stloc.s    V_9
    IL_02a6:  ldloc.s    V_9
    IL_02a8:  ldloc.0
    IL_02a9:  ldlen
    IL_02aa:  conv.i4
    IL_02ab:  blt        IL_0133

    IL_02b0:  br         IL_036c

    IL_02b5:  ldarg.0
    IL_02b6:  call       instance bool Game.LabelWidget::get_Ellipsis()
    IL_02bb:  brfalse    IL_0360

    IL_02c0:  ldc.i4.0
    IL_02c1:  stloc.s    V_15
    IL_02c3:  br         IL_0354

    IL_02c8:  ldloc.0
    IL_02c9:  ldloc.s    V_15
    IL_02cb:  ldelem.ref
    IL_02cc:  ldc.i4.0
    IL_02cd:  newarr     [System.Runtime]System.Char
    IL_02d2:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_02d7:  stloc.s    V_16
    IL_02d9:  ldarg.0
    IL_02da:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_02df:  ldarg.1
    IL_02e0:  ldloc.2
    IL_02e1:  sub
    IL_02e2:  ldc.r4     0.0
    IL_02e7:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02ec:  ldloc.s    V_16
    IL_02ee:  ldc.i4.0
    IL_02ef:  ldloc.s    V_16
    IL_02f1:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_02f6:  ldarg.0
    IL_02f7:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_02fc:  ldarg.0
    IL_02fd:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
    IL_0302:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0307:  callvirt   instance int32 [Engine]Engine.Media.BitmapFont::FitText(float32,
                                                                                 string,
                                                                                 int32,
                                                                                 int32,
                                                                                 float32,
                                                                                 float32)
    IL_030c:  stloc.s    V_17
    IL_030e:  ldloc.s    V_17
    IL_0310:  ldloc.s    V_16
    IL_0312:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0317:  bge.s      IL_0341

    IL_0319:  ldarg.0
    IL_031a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_031f:  ldloc.s    V_16
    IL_0321:  ldc.i4.0
    IL_0322:  ldloc.s    V_17
    IL_0324:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0329:  ldc.i4.0
    IL_032a:  newarr     [System.Runtime]System.Char
    IL_032f:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_0334:  ldloc.1
    IL_0335:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_033a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_033f:  br.s       IL_034e

    IL_0341:  ldarg.0
    IL_0342:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0347:  ldloc.s    V_16
    IL_0349:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_034e:  ldloc.s    V_15
    IL_0350:  ldc.i4.1
    IL_0351:  add
    IL_0352:  stloc.s    V_15
    IL_0354:  ldloc.s    V_15
    IL_0356:  ldloc.0
    IL_0357:  ldlen
    IL_0358:  conv.i4
    IL_0359:  blt        IL_02c8

    IL_035e:  br.s       IL_036c

    IL_0360:  ldarg.0
    IL_0361:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0366:  ldloc.0
    IL_0367:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_036c:  ldarg.0
    IL_036d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0372:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0377:  ldarg.0
    IL_0378:  call       instance int32 Game.LabelWidget::get_MaxLines()
    IL_037d:  ble.s      IL_039b

    IL_037f:  ldarg.0
    IL_0380:  ldarg.0
    IL_0381:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0386:  ldarg.0
    IL_0387:  call       instance int32 Game.LabelWidget::get_MaxLines()
    IL_038c:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Take<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                               int32)
    IL_0391:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0396:  stfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_039b:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_03a0:  stloc.3
    IL_03a1:  ldc.i4.0
    IL_03a2:  stloc.s    V_18
    IL_03a4:  br         IL_0475

    IL_03a9:  ldarg.0
    IL_03aa:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_03af:  ldarg.0
    IL_03b0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_03b5:  ldloc.s    V_18
    IL_03b7:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_03bc:  ldarg.0
    IL_03bd:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_03c2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_03c7:  ldarg.0
    IL_03c8:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
    IL_03cd:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::MeasureText(string,
                                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                                valuetype [Engine]Engine.Vector2)
    IL_03d2:  stloc.s    V_19
    IL_03d4:  ldloca.s   V_3
    IL_03d6:  ldloc.3
    IL_03d7:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03dc:  ldloc.s    V_19
    IL_03de:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03e3:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_03e8:  stfld      float32 [Engine]Engine.Vector2::X
    IL_03ed:  ldloc.s    V_18
    IL_03ef:  ldarg.0
    IL_03f0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_03f5:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_03fa:  ldc.i4.1
    IL_03fb:  sub
    IL_03fc:  bge.s      IL_0446

    IL_03fe:  ldloca.s   V_3
    IL_0400:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0405:  dup
    IL_0406:  ldind.r4
    IL_0407:  ldarg.0
    IL_0408:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_040d:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0412:  ldarg.0
    IL_0413:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0418:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::get_Spacing()
    IL_041d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0422:  add
    IL_0423:  ldarg.0
    IL_0424:  call       instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
    IL_0429:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_042e:  add
    IL_042f:  ldarg.0
    IL_0430:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_0435:  mul
    IL_0436:  ldarg.0
    IL_0437:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_043c:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_0441:  mul
    IL_0442:  add
    IL_0443:  stind.r4
    IL_0444:  br.s       IL_046f

    IL_0446:  ldloca.s   V_3
    IL_0448:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_044d:  dup
    IL_044e:  ldind.r4
    IL_044f:  ldarg.0
    IL_0450:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0455:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_045a:  ldarg.0
    IL_045b:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_0460:  mul
    IL_0461:  ldarg.0
    IL_0462:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0467:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_046c:  mul
    IL_046d:  add
    IL_046e:  stind.r4
    IL_046f:  ldloc.s    V_18
    IL_0471:  ldc.i4.1
    IL_0472:  add
    IL_0473:  stloc.s    V_18
    IL_0475:  ldloc.s    V_18
    IL_0477:  ldarg.0
    IL_0478:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_047d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0482:  blt        IL_03a9

    IL_0487:  ldarg.0
    IL_0488:  ldloc.3
    IL_0489:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_048e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0493:  ldarg.0
    IL_0494:  ldarg.1
    IL_0495:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_049a:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableWidth
    IL_049f:  ldarg.0
    IL_04a0:  ldarg.2
    IL_04a1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_04a6:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableHeight
    IL_04ab:  ret
  } // end of method LabelWidget::UpdateLines

  .property instance valuetype [Engine]Engine.Vector2
          Size()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_Size()
    .set instance void Game.LabelWidget::set_Size(valuetype [Engine]Engine.Vector2)
  } // end of property LabelWidget::Size
  .property instance string Text()
  {
    .get instance string Game.LabelWidget::get_Text()
    .set instance void Game.LabelWidget::set_Text(string)
  } // end of property LabelWidget::Text
  .property instance valuetype [Engine]Engine.Graphics.TextAnchor
          TextAnchor()
  {
    .get instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
    .set instance void Game.LabelWidget::set_TextAnchor(valuetype [Engine]Engine.Graphics.TextAnchor)
  } // end of property LabelWidget::TextAnchor
  .property instance valuetype Game.TextOrientation
          TextOrientation()
  {
    .get instance valuetype Game.TextOrientation Game.LabelWidget::get_TextOrientation()
    .set instance void Game.LabelWidget::set_TextOrientation(valuetype Game.TextOrientation)
  } // end of property LabelWidget::TextOrientation
  .property instance class [Engine]Engine.Media.BitmapFont
          Font()
  {
    .get instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    .set instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
  } // end of property LabelWidget::Font
  .property instance float32 FontScale()
  {
    .get instance float32 Game.LabelWidget::get_FontScale()
    .set instance void Game.LabelWidget::set_FontScale(float32)
  } // end of property LabelWidget::FontScale
  .property instance valuetype [Engine]Engine.Vector2
          FontSpacing()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_FontSpacing()
    .set instance void Game.LabelWidget::set_FontSpacing(valuetype [Engine]Engine.Vector2)
  } // end of property LabelWidget::FontSpacing
  .property instance bool WordWrap()
  {
    .get instance bool Game.LabelWidget::get_WordWrap()
    .set instance void Game.LabelWidget::set_WordWrap(bool)
  } // end of property LabelWidget::WordWrap
  .property instance bool Ellipsis()
  {
    .get instance bool Game.LabelWidget::get_Ellipsis()
    .set instance void Game.LabelWidget::set_Ellipsis(bool)
  } // end of property LabelWidget::Ellipsis
  .property instance int32 MaxLines()
  {
    .get instance int32 Game.LabelWidget::get_MaxLines()
    .set instance void Game.LabelWidget::set_MaxLines(int32)
  } // end of property LabelWidget::MaxLines
  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.LabelWidget::get_Color()
    .set instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
  } // end of property LabelWidget::Color
  .property instance bool DropShadow()
  {
    .get instance bool Game.LabelWidget::get_DropShadow()
    .set instance void Game.LabelWidget::set_DropShadow(bool)
  } // end of property LabelWidget::DropShadow
} // end of class Game.LabelWidget