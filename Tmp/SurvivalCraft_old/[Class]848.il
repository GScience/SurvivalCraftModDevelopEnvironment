.class public auto ansi beforefieldinit Game.LabelWidget
       extends Game.Widget
{
  .field private string m_text
  .field private valuetype Game.TextOrientation m_textOrientation
  .field private class [Engine]Engine.Media.BitmapFont m_font
  .field private float32 m_fontSpacing
  .field private float32 m_fontScale
  .field private bool m_wordWrap
  .field private class [Engine]Engine.Graphics.FontBatch2D m_fontBatch
  .field private class [System.Collections]System.Collections.Generic.List`1<string> m_lines
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_linesSize
  .field private valuetype [System.Runtime]System.Nullable`1<float32> m_linesAvailableWidth
  .field private valuetype [Engine]Engine.Graphics.TextAnchor '<TextAnchor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<DropShadow>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Widget::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldc.i4.0
    IL_0013:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0018:  ldarg.0
    IL_0019:  ldstr      "Fonts/Pericles32"
    IL_001e:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0023:  call       instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0028:  ldarg.0
    IL_0029:  ldsfld     string [System.Runtime]System.String::Empty
    IL_002e:  call       instance void Game.LabelWidget::set_Text(string)
    IL_0033:  ldarg.0
    IL_0034:  ldc.r4     1.
    IL_0039:  call       instance void Game.LabelWidget::set_FontScale(float32)
    IL_003e:  ldarg.0
    IL_003f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0044:  call       instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0049:  ret
  } // end of method LabelWidget::.ctor

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

  .method public hidebysig specialname instance float32 
          get_FontSpacing() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.LabelWidget::m_fontSpacing
    IL_0006:  ret
  } // end of method LabelWidget::get_FontSpacing

  .method public hidebysig specialname instance void 
          set_FontSpacing(float32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.LabelWidget::m_fontSpacing
    IL_0007:  beq.s      IL_001c

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      float32 Game.LabelWidget::m_fontSpacing
    IL_0010:  ldarg.0
    IL_0011:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0016:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_001c:  ret
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
    // 代码大小       948 (0x3b4)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Color V_0,
             float32 V_1,
             valuetype [Engine]Engine.Graphics.TextAnchor V_2,
             float32 V_3,
             float32 V_4,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string> V_5,
             string V_6,
             float32 V_7,
             bool V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             float32 V_10,
             valuetype [Engine]Engine.Rectangle V_11)
    IL_0000:  ldarg.0
    IL_0001:  call       instance string Game.LabelWidget::get_Text()
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue     IL_03b3

    IL_0010:  ldarg.0
    IL_0011:  call       instance valuetype [Engine]Engine.Color Game.LabelWidget::get_Color()
    IL_0016:  stloc.0
    IL_0017:  ldloca.s   V_0
    IL_0019:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_001e:  brfalse    IL_03b3

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
    IL_004a:  ldc.r4     0.0
    IL_004f:  stloc.1
    IL_0050:  ldarg.0
    IL_0051:  call       instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
    IL_0056:  ldc.i4.2
    IL_0057:  and
    IL_0058:  brfalse.s  IL_00d5

    IL_005a:  ldarg.0
    IL_005b:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0060:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0065:  ldarg.0
    IL_0066:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_006b:  mul
    IL_006c:  ldarg.0
    IL_006d:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0072:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_0077:  mul
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_007e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0083:  ldc.i4.1
    IL_0084:  sub
    IL_0085:  conv.r4
    IL_0086:  ldarg.0
    IL_0087:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_008c:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0097:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::get_Spacing()
    IL_009c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a1:  add
    IL_00a2:  ldarg.0
    IL_00a3:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_00a8:  mul
    IL_00a9:  ldarg.0
    IL_00aa:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_00af:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_00b4:  mul
    IL_00b5:  ldarg.0
    IL_00b6:  call       instance float32 Game.LabelWidget::get_FontSpacing()
    IL_00bb:  add
    IL_00bc:  mul
    IL_00bd:  add
    IL_00be:  stloc.3
    IL_00bf:  ldarg.0
    IL_00c0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00c5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ca:  ldloc.3
    IL_00cb:  sub
    IL_00cc:  ldc.r4     2.
    IL_00d1:  div
    IL_00d2:  stloc.1
    IL_00d3:  br.s       IL_0154

    IL_00d5:  ldarg.0
    IL_00d6:  call       instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
    IL_00db:  ldc.i4.8
    IL_00dc:  and
    IL_00dd:  brfalse.s  IL_0154

    IL_00df:  ldarg.0
    IL_00e0:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_00e5:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_00ea:  ldarg.0
    IL_00eb:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_00f0:  mul
    IL_00f1:  ldarg.0
    IL_00f2:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_00f7:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_00fc:  mul
    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0103:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0108:  ldc.i4.1
    IL_0109:  sub
    IL_010a:  conv.r4
    IL_010b:  ldarg.0
    IL_010c:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0111:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0116:  ldarg.0
    IL_0117:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_011c:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::get_Spacing()
    IL_0121:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0126:  add
    IL_0127:  ldarg.0
    IL_0128:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_012d:  mul
    IL_012e:  ldarg.0
    IL_012f:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0134:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_0139:  mul
    IL_013a:  ldarg.0
    IL_013b:  call       instance float32 Game.LabelWidget::get_FontSpacing()
    IL_0140:  add
    IL_0141:  mul
    IL_0142:  add
    IL_0143:  stloc.s    V_4
    IL_0145:  ldarg.0
    IL_0146:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_014b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0150:  ldloc.s    V_4
    IL_0152:  sub
    IL_0153:  stloc.1
    IL_0154:  ldarg.0
    IL_0155:  call       instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
    IL_015a:  ldc.i4.s   -11
    IL_015c:  and
    IL_015d:  stloc.2
    IL_015e:  ldarg.0
    IL_015f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0164:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<string>::GetEnumerator()
    IL_0169:  stloc.s    V_5
    .try
    {
      IL_016b:  br         IL_0397

      IL_0170:  ldloca.s   V_5
      IL_0172:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::get_Current()
      IL_0177:  stloc.s    V_6
      IL_0179:  ldc.r4     0.0
      IL_017e:  stloc.s    V_7
      IL_0180:  ldarg.0
      IL_0181:  call       instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
      IL_0186:  ldc.i4.1
      IL_0187:  and
      IL_0188:  brfalse.s  IL_019f

      IL_018a:  ldarg.0
      IL_018b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_0190:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0195:  ldc.r4     2.
      IL_019a:  div
      IL_019b:  stloc.s    V_7
      IL_019d:  br.s       IL_01b6

      IL_019f:  ldarg.0
      IL_01a0:  call       instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
      IL_01a5:  ldc.i4.4
      IL_01a6:  and
      IL_01a7:  brfalse.s  IL_01b6

      IL_01a9:  ldarg.0
      IL_01aa:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_01af:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01b4:  stloc.s    V_7
      IL_01b6:  ldc.i4.1
      IL_01b7:  stloc.s    V_8
      IL_01b9:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_01be:  stloc.s    V_9
      IL_01c0:  ldc.r4     0.0
      IL_01c5:  stloc.s    V_10
      IL_01c7:  ldarg.0
      IL_01c8:  call       instance valuetype Game.TextOrientation Game.LabelWidget::get_TextOrientation()
      IL_01cd:  brtrue     IL_025d

      IL_01d2:  call       float32 Game.WidgetsManager::get_Scale()
      IL_01d7:  ldarg.0
      IL_01d8:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_01dd:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_01e2:  ldloc.s    V_7
      IL_01e4:  add
      IL_01e5:  ldarg.0
      IL_01e6:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_01eb:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_01f0:  ldloc.1
      IL_01f1:  add
      IL_01f2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01f7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_01fc:  stloc.s    V_9
      IL_01fe:  ldc.r4     0.0
      IL_0203:  stloc.s    V_10
      IL_0205:  call       valuetype [Engine]Engine.Rectangle [Engine]Engine.Graphics.Display::get_ScissorRectangle()
      IL_020a:  stloc.s    V_11
      IL_020c:  ldloc.s    V_9
      IL_020e:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0213:  ldloca.s   V_11
      IL_0215:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
      IL_021a:  conv.r4
      IL_021b:  bge.un.s   IL_0258

      IL_021d:  ldloc.s    V_9
      IL_021f:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0224:  ldarg.0
      IL_0225:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
      IL_022a:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
      IL_022f:  ldarg.0
      IL_0230:  call       instance float32 Game.LabelWidget::get_FontScale()
      IL_0235:  mul
      IL_0236:  ldarg.0
      IL_0237:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
      IL_023c:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
      IL_0241:  mul
      IL_0242:  call       float32 Game.WidgetsManager::get_Scale()
      IL_0247:  mul
      IL_0248:  add
      IL_0249:  ldloc.s    V_11
      IL_024b:  ldfld      int32 [Engine]Engine.Rectangle::Top
      IL_0250:  conv.r4
      IL_0251:  clt.un
      IL_0253:  ldc.i4.0
      IL_0254:  ceq
      IL_0256:  br.s       IL_0259

      IL_0258:  ldc.i4.0
      IL_0259:  stloc.s    V_8
      IL_025b:  br.s       IL_02ad

      IL_025d:  ldarg.0
      IL_025e:  call       instance valuetype Game.TextOrientation Game.LabelWidget::get_TextOrientation()
      IL_0263:  ldc.i4.1
      IL_0264:  bne.un.s   IL_02ad

      IL_0266:  call       float32 Game.WidgetsManager::get_Scale()
      IL_026b:  ldarg.0
      IL_026c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_0271:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0276:  ldloc.s    V_7
      IL_0278:  add
      IL_0279:  ldarg.0
      IL_027a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_027f:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0284:  ldarg.0
      IL_0285:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_028a:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_028f:  add
      IL_0290:  ldloc.1
      IL_0291:  add
      IL_0292:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0297:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_029c:  stloc.s    V_9
      IL_029e:  ldc.r4     -90.
      IL_02a3:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
      IL_02a8:  stloc.s    V_10
      IL_02aa:  ldc.i4.1
      IL_02ab:  stloc.s    V_8
      IL_02ad:  ldloc.s    V_8
      IL_02af:  brfalse    IL_035e

      IL_02b4:  ldarg.0
      IL_02b5:  call       instance bool Game.LabelWidget::get_DropShadow()
      IL_02ba:  brfalse.s  IL_0325

      IL_02bc:  ldarg.0
      IL_02bd:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.LabelWidget::m_fontBatch
      IL_02c2:  ldloc.s    V_6
      IL_02c4:  ldloc.s    V_9
      IL_02c6:  ldc.r4     1.
      IL_02cb:  call       float32 Game.WidgetsManager::get_Scale()
      IL_02d0:  ldarg.0
      IL_02d1:  call       instance float32 Game.LabelWidget::get_FontScale()
      IL_02d6:  mul
      IL_02d7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_02dc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_02e1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_02e6:  ldc.r4     0.0
      IL_02eb:  ldc.i4.0
      IL_02ec:  ldc.i4.0
      IL_02ed:  ldc.i4.0
      IL_02ee:  ldarg.0
      IL_02ef:  call       instance valuetype [Engine]Engine.Color Game.LabelWidget::get_Color()
      IL_02f4:  stloc.0
      IL_02f5:  ldloca.s   V_0
      IL_02f7:  call       instance uint8 [Engine]Engine.Color::get_A()
      IL_02fc:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8,
                                                                     uint8)
      IL_0301:  ldloc.2
      IL_0302:  call       float32 Game.WidgetsManager::get_Scale()
      IL_0307:  ldarg.0
      IL_0308:  call       instance float32 Game.LabelWidget::get_FontScale()
      IL_030d:  mul
      IL_030e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_0313:  ldarg.0
      IL_0314:  call       instance float32 Game.LabelWidget::get_FontSpacing()
      IL_0319:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_031e:  ldloc.s    V_10
      IL_0320:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        float32,
                                                                                        valuetype [Engine]Engine.Color,
                                                                                        valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        float32)
      IL_0325:  ldarg.0
      IL_0326:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.LabelWidget::m_fontBatch
      IL_032b:  ldloc.s    V_6
      IL_032d:  ldloc.s    V_9
      IL_032f:  ldc.r4     0.0
      IL_0334:  ldarg.0
      IL_0335:  call       instance valuetype [Engine]Engine.Color Game.LabelWidget::get_Color()
      IL_033a:  ldloc.2
      IL_033b:  call       float32 Game.WidgetsManager::get_Scale()
      IL_0340:  ldarg.0
      IL_0341:  call       instance float32 Game.LabelWidget::get_FontScale()
      IL_0346:  mul
      IL_0347:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_034c:  ldarg.0
      IL_034d:  call       instance float32 Game.LabelWidget::get_FontSpacing()
      IL_0352:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_0357:  ldloc.s    V_10
      IL_0359:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        float32,
                                                                                        valuetype [Engine]Engine.Color,
                                                                                        valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        float32)
      IL_035e:  ldloc.1
      IL_035f:  ldarg.0
      IL_0360:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
      IL_0365:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
      IL_036a:  ldarg.0
      IL_036b:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
      IL_0370:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::get_Spacing()
      IL_0375:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_037a:  add
      IL_037b:  ldarg.0
      IL_037c:  call       instance float32 Game.LabelWidget::get_FontSpacing()
      IL_0381:  add
      IL_0382:  ldarg.0
      IL_0383:  call       instance float32 Game.LabelWidget::get_FontScale()
      IL_0388:  mul
      IL_0389:  ldarg.0
      IL_038a:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
      IL_038f:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
      IL_0394:  mul
      IL_0395:  add
      IL_0396:  stloc.1
      IL_0397:  ldloca.s   V_5
      IL_0399:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::MoveNext()
      IL_039e:  brtrue     IL_0170

      IL_03a3:  leave.s    IL_03b3

    }  // end .try
    finally
    {
      IL_03a5:  ldloca.s   V_5
      IL_03a7:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>
      IL_03ad:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_03b2:  endfinally
    }  // end handler
    IL_03b3:  ret
  } // end of method LabelWidget::Draw

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       168 (0xa8)
    .maxstack  3
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
    IL_002d:  brtrue.s   IL_0067

    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0036:  call       instance void Game.LabelWidget::UpdateLines(float32)
    IL_003b:  ldarg.0
    IL_003c:  ldarg.0
    IL_003d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0042:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0047:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004c:  ldarg.0
    IL_004d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0052:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0057:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0061:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0066:  ret

    IL_0067:  ldarg.0
    IL_0068:  call       instance valuetype Game.TextOrientation Game.LabelWidget::get_TextOrientation()
    IL_006d:  ldc.i4.1
    IL_006e:  bne.un.s   IL_00a7

    IL_0070:  ldarg.0
    IL_0071:  ldarg.1
    IL_0072:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0077:  call       instance void Game.LabelWidget::UpdateLines(float32)
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0083:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0088:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008d:  ldarg.0
    IL_008e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0093:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0098:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_009d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a2:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_00a7:  ret
  } // end of method LabelWidget::Measure

  .method private hidebysig instance void 
          UpdateLines(float32 availableWidth) cil managed
  {
    // 代码大小       734 (0x2de)
    .maxstack  7
    .locals init (string[] V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             string V_5,
             int32 V_6,
             string V_7,
             int32 V_8,
             int32 V_9,
             valuetype [Engine]Engine.Vector2 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableWidth
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_000b:  brfalse.s  IL_0071

    IL_000d:  ldarg.0
    IL_000e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0013:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0018:  brfalse.s  IL_0071

    IL_001a:  ldarg.0
    IL_001b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0020:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0025:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_002a:  ldarg.0
    IL_002b:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableWidth
    IL_0030:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0035:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_003a:  ldc.r4     0.1
    IL_003f:  sub
    IL_0040:  stloc.2
    IL_0041:  ldarg.0
    IL_0042:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_0047:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_004c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0051:  ldarg.0
    IL_0052:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableWidth
    IL_0057:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_005c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0061:  ldc.r4     0.1
    IL_0066:  add
    IL_0067:  stloc.3
    IL_0068:  ldarg.1
    IL_0069:  ldloc.2
    IL_006a:  blt.un.s   IL_0071

    IL_006c:  ldarg.1
    IL_006d:  ldloc.3
    IL_006e:  bgt.un.s   IL_0071

    IL_0070:  ret

    IL_0071:  ldarg.1
    IL_0072:  ldc.r4     0.1
    IL_0077:  call       float32 Game.WidgetsManager::get_Scale()
    IL_007c:  div
    IL_007d:  add
    IL_007e:  starg.s    availableWidth
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0086:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Clear()
    IL_008b:  ldarg.0
    IL_008c:  call       instance string Game.LabelWidget::get_Text()
    IL_0091:  dup
    IL_0092:  brtrue.s   IL_009a

    IL_0094:  pop
    IL_0095:  ldsfld     string [System.Runtime]System.String::Empty
    IL_009a:  ldc.i4.1
    IL_009b:  newarr     [System.Runtime]System.Char
    IL_00a0:  dup
    IL_00a1:  ldc.i4.0
    IL_00a2:  ldc.i4.s   10
    IL_00a4:  stelem.i2
    IL_00a5:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_00aa:  stloc.0
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance bool Game.LabelWidget::get_WordWrap()
    IL_00b1:  brfalse    IL_01cd

    IL_00b6:  ldc.i4.0
    IL_00b7:  stloc.s    V_4
    IL_00b9:  br         IL_01c1

    IL_00be:  ldloc.0
    IL_00bf:  ldloc.s    V_4
    IL_00c1:  ldelem.ref
    IL_00c2:  ldc.i4.0
    IL_00c3:  newarr     [System.Runtime]System.Char
    IL_00c8:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_00cd:  stloc.s    V_5
    IL_00cf:  ldloc.s    V_5
    IL_00d1:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_00d6:  brtrue     IL_01ae

    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_00e1:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00e6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_00eb:  br         IL_01bb

    IL_00f0:  ldarg.0
    IL_00f1:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_00f6:  ldarg.1
    IL_00f7:  ldloc.s    V_5
    IL_00f9:  ldc.i4.0
    IL_00fa:  ldloc.s    V_5
    IL_00fc:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0101:  ldarg.0
    IL_0102:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_0107:  ldarg.0
    IL_0108:  call       instance float32 Game.LabelWidget::get_FontSpacing()
    IL_010d:  callvirt   instance int32 [Engine]Engine.Media.BitmapFont::FitText(float32,
                                                                                 string,
                                                                                 int32,
                                                                                 int32,
                                                                                 float32,
                                                                                 float32)
    IL_0112:  stloc.s    V_6
    IL_0114:  ldloc.s    V_6
    IL_0116:  ldc.i4.1
    IL_0117:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_011c:  stloc.s    V_6
    IL_011e:  ldloc.s    V_6
    IL_0120:  ldloc.s    V_5
    IL_0122:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0127:  bge.s      IL_0152

    IL_0129:  ldloc.s    V_6
    IL_012b:  stloc.s    V_8
    IL_012d:  br.s       IL_0145

    IL_012f:  ldloc.s    V_5
    IL_0131:  ldloc.s    V_6
    IL_0133:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0138:  call       bool [System.Runtime]System.Char::IsWhiteSpace(char)
    IL_013d:  brtrue.s   IL_014a

    IL_013f:  ldloc.s    V_6
    IL_0141:  ldc.i4.1
    IL_0142:  sub
    IL_0143:  stloc.s    V_6
    IL_0145:  ldloc.s    V_6
    IL_0147:  ldc.i4.0
    IL_0148:  bgt.s      IL_012f

    IL_014a:  ldloc.s    V_6
    IL_014c:  brtrue.s   IL_0152

    IL_014e:  ldloc.s    V_8
    IL_0150:  stloc.s    V_6
    IL_0152:  ldloc.s    V_6
    IL_0154:  ldloc.s    V_5
    IL_0156:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_015b:  bne.un.s   IL_016a

    IL_015d:  ldloc.s    V_5
    IL_015f:  stloc.s    V_7
    IL_0161:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0166:  stloc.s    V_5
    IL_0168:  br.s       IL_01a1

    IL_016a:  ldloc.s    V_5
    IL_016c:  ldc.i4.0
    IL_016d:  ldloc.s    V_6
    IL_016f:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0174:  ldc.i4.0
    IL_0175:  newarr     [System.Runtime]System.Char
    IL_017a:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_017f:  stloc.s    V_7
    IL_0181:  ldloc.s    V_5
    IL_0183:  ldloc.s    V_6
    IL_0185:  ldloc.s    V_5
    IL_0187:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_018c:  ldloc.s    V_6
    IL_018e:  sub
    IL_018f:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0194:  ldc.i4.0
    IL_0195:  newarr     [System.Runtime]System.Char
    IL_019a:  callvirt   instance string [System.Runtime]System.String::TrimStart(char[])
    IL_019f:  stloc.s    V_5
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_01a7:  ldloc.s    V_7
    IL_01a9:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_01ae:  ldloc.s    V_5
    IL_01b0:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_01b5:  ldc.i4.0
    IL_01b6:  bgt        IL_00f0

    IL_01bb:  ldloc.s    V_4
    IL_01bd:  ldc.i4.1
    IL_01be:  add
    IL_01bf:  stloc.s    V_4
    IL_01c1:  ldloc.s    V_4
    IL_01c3:  ldloc.0
    IL_01c4:  ldlen
    IL_01c5:  conv.i4
    IL_01c6:  blt        IL_00be

    IL_01cb:  br.s       IL_01d9

    IL_01cd:  ldarg.0
    IL_01ce:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_01d3:  ldloc.0
    IL_01d4:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_01d9:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_01de:  stloc.1
    IL_01df:  ldc.i4.0
    IL_01e0:  stloc.s    V_9
    IL_01e2:  br         IL_02b3

    IL_01e7:  ldarg.0
    IL_01e8:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_01ed:  ldarg.0
    IL_01ee:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_01f3:  ldloc.s    V_9
    IL_01f5:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_01fa:  ldarg.0
    IL_01fb:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_0200:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0205:  ldarg.0
    IL_0206:  call       instance float32 Game.LabelWidget::get_FontSpacing()
    IL_020b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0210:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::MeasureText(string,
                                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                                valuetype [Engine]Engine.Vector2)
    IL_0215:  stloc.s    V_10
    IL_0217:  ldloca.s   V_1
    IL_0219:  ldloc.1
    IL_021a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_021f:  ldloc.s    V_10
    IL_0221:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0226:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_022b:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0230:  ldloc.s    V_9
    IL_0232:  ldarg.0
    IL_0233:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_0238:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_023d:  ldc.i4.1
    IL_023e:  sub
    IL_023f:  bge.s      IL_0284

    IL_0241:  ldloca.s   V_1
    IL_0243:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0248:  dup
    IL_0249:  ldind.r4
    IL_024a:  ldarg.0
    IL_024b:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0250:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0255:  ldarg.0
    IL_0256:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_025b:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::get_Spacing()
    IL_0260:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0265:  add
    IL_0266:  ldarg.0
    IL_0267:  call       instance float32 Game.LabelWidget::get_FontSpacing()
    IL_026c:  add
    IL_026d:  ldarg.0
    IL_026e:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_0273:  mul
    IL_0274:  ldarg.0
    IL_0275:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_027a:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_027f:  mul
    IL_0280:  add
    IL_0281:  stind.r4
    IL_0282:  br.s       IL_02ad

    IL_0284:  ldloca.s   V_1
    IL_0286:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_028b:  dup
    IL_028c:  ldind.r4
    IL_028d:  ldarg.0
    IL_028e:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_0293:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0298:  ldarg.0
    IL_0299:  call       instance float32 Game.LabelWidget::get_FontScale()
    IL_029e:  mul
    IL_029f:  ldarg.0
    IL_02a0:  call       instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_02a5:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_02aa:  mul
    IL_02ab:  add
    IL_02ac:  stind.r4
    IL_02ad:  ldloc.s    V_9
    IL_02af:  ldc.i4.1
    IL_02b0:  add
    IL_02b1:  stloc.s    V_9
    IL_02b3:  ldloc.s    V_9
    IL_02b5:  ldarg.0
    IL_02b6:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.LabelWidget::m_lines
    IL_02bb:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_02c0:  blt        IL_01e7

    IL_02c5:  ldarg.0
    IL_02c6:  ldloc.1
    IL_02c7:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_02cc:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.LabelWidget::m_linesSize
    IL_02d1:  ldarg.0
    IL_02d2:  ldarg.1
    IL_02d3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_02d8:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.LabelWidget::m_linesAvailableWidth
    IL_02dd:  ret
  } // end of method LabelWidget::UpdateLines

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
  .property instance float32 FontSpacing()
  {
    .get instance float32 Game.LabelWidget::get_FontSpacing()
    .set instance void Game.LabelWidget::set_FontSpacing(float32)
  } // end of property LabelWidget::FontSpacing
  .property instance bool WordWrap()
  {
    .get instance bool Game.LabelWidget::get_WordWrap()
    .set instance void Game.LabelWidget::set_WordWrap(bool)
  } // end of property LabelWidget::WordWrap
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