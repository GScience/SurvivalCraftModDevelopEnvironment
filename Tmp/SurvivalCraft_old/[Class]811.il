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
  .field private float32 '<Light>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<TextureScale>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<CenterColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<BevelColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       116 (0x74)
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
    IL_003a:  ldc.r4     1.
    IL_003f:  call       instance void Game.BevelledRectangleWidget::set_Light(float32)
    IL_0044:  ldarg.0
    IL_0045:  ldc.r4     1.
    IL_004a:  call       instance void Game.BevelledRectangleWidget::set_TextureScale(float32)
    IL_004f:  ldarg.0
    IL_0050:  ldc.i4.0
    IL_0051:  call       instance void Game.BevelledRectangleWidget::set_TextureLinearFilter(bool)
    IL_0056:  ldarg.0
    IL_0057:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_005c:  call       instance void Game.BevelledRectangleWidget::set_CenterColor(valuetype [Engine]Engine.Color)
    IL_0061:  ldarg.0
    IL_0062:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0067:  call       instance void Game.BevelledRectangleWidget::set_BevelColor(valuetype [Engine]Engine.Color)
    IL_006c:  ldarg.0
    IL_006d:  ldc.i4.0
    IL_006e:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0073:  ret
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
          get_Light() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.BevelledRectangleWidget::'<Light>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledRectangleWidget::get_Light

  .method public hidebysig specialname instance void 
          set_Light(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.BevelledRectangleWidget::'<Light>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledRectangleWidget::set_Light

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

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       2429 (0x97d)
    .maxstack  9
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
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
             float32 V_20,
             float32 V_21,
             float32 V_22,
             float32 V_23,
             float32 V_24,
             float32 V_25,
             float32 V_26,
             valuetype [Engine]Engine.Color V_27,
             valuetype [Engine]Engine.Color V_28,
             valuetype [Engine]Engine.Color V_29,
             valuetype [Engine]Engine.Color V_30,
             valuetype [Engine]Engine.Color V_31,
             valuetype [Engine]Engine.Color V_32,
             valuetype [Engine]Engine.Color V_33,
             class [Engine]Engine.Graphics.SamplerState V_34,
             valuetype [Engine]Engine.Color V_35)
    IL_0000:  ldarg.0
    IL_0001:  call       instance float32 Game.BevelledRectangleWidget::get_BevelSize()
    IL_0006:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_000b:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0010:  mul
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0018:  call       float32 Game.WidgetsManager::get_Scale()
    IL_001d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0022:  ldarg.0
    IL_0023:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0028:  ldarg.0
    IL_0029:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_002e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0033:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0038:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_003d:  stloc.1
    IL_003e:  dup
    IL_003f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0044:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0049:  stloc.2
    IL_004a:  dup
    IL_004b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0050:  ldloc.0
    IL_0051:  add
    IL_0052:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0057:  stloc.3
    IL_0058:  ldloc.1
    IL_0059:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_005e:  ldloc.0
    IL_005f:  sub
    IL_0060:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0065:  stloc.s    V_4
    IL_0067:  ldloc.1
    IL_0068:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_006d:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0072:  stloc.s    V_5
    IL_0074:  ldloc.1
    IL_0075:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_007a:  ldc.r4     2.
    IL_007f:  ldloc.0
    IL_0080:  mul
    IL_0081:  add
    IL_0082:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0087:  stloc.s    V_6
    IL_0089:  dup
    IL_008a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008f:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0094:  stloc.s    V_7
    IL_0096:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_009b:  ldloc.0
    IL_009c:  add
    IL_009d:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00a2:  stloc.s    V_8
    IL_00a4:  ldloc.1
    IL_00a5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00aa:  ldloc.0
    IL_00ab:  sub
    IL_00ac:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00b1:  stloc.s    V_9
    IL_00b3:  ldloc.1
    IL_00b4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b9:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00be:  stloc.s    V_10
    IL_00c0:  ldloc.1
    IL_00c1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c6:  ldc.r4     2.
    IL_00cb:  ldloc.0
    IL_00cc:  mul
    IL_00cd:  add
    IL_00ce:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00d3:  stloc.s    V_11
    IL_00d5:  ldarg.0
    IL_00d6:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_00db:  brfalse    IL_097c

    IL_00e0:  ldloc.2
    IL_00e1:  ldarg.0
    IL_00e2:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_00e7:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_00ec:  conv.r4
    IL_00ed:  div
    IL_00ee:  ldarg.0
    IL_00ef:  call       instance float32 Game.BevelledRectangleWidget::get_TextureScale()
    IL_00f4:  mul
    IL_00f5:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00fa:  div
    IL_00fb:  stloc.s    V_12
    IL_00fd:  ldloc.s    V_7
    IL_00ff:  ldarg.0
    IL_0100:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_0105:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_010a:  conv.r4
    IL_010b:  div
    IL_010c:  ldarg.0
    IL_010d:  call       instance float32 Game.BevelledRectangleWidget::get_TextureScale()
    IL_0112:  mul
    IL_0113:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0118:  div
    IL_0119:  stloc.s    V_13
    IL_011b:  ldloc.s    V_12
    IL_011d:  stloc.s    V_14
    IL_011f:  ldloc.3
    IL_0120:  ldloc.2
    IL_0121:  sub
    IL_0122:  ldarg.0
    IL_0123:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_0128:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_012d:  conv.r4
    IL_012e:  div
    IL_012f:  ldarg.0
    IL_0130:  call       instance float32 Game.BevelledRectangleWidget::get_TextureScale()
    IL_0135:  mul
    IL_0136:  call       float32 Game.WidgetsManager::get_Scale()
    IL_013b:  div
    IL_013c:  ldloc.s    V_12
    IL_013e:  add
    IL_013f:  stloc.s    V_15
    IL_0141:  ldloc.s    V_4
    IL_0143:  ldloc.2
    IL_0144:  sub
    IL_0145:  ldarg.0
    IL_0146:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_014b:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0150:  conv.r4
    IL_0151:  div
    IL_0152:  ldarg.0
    IL_0153:  call       instance float32 Game.BevelledRectangleWidget::get_TextureScale()
    IL_0158:  mul
    IL_0159:  call       float32 Game.WidgetsManager::get_Scale()
    IL_015e:  div
    IL_015f:  ldloc.s    V_12
    IL_0161:  add
    IL_0162:  stloc.s    V_16
    IL_0164:  ldloc.s    V_5
    IL_0166:  ldloc.2
    IL_0167:  sub
    IL_0168:  ldarg.0
    IL_0169:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_016e:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0173:  conv.r4
    IL_0174:  div
    IL_0175:  ldarg.0
    IL_0176:  call       instance float32 Game.BevelledRectangleWidget::get_TextureScale()
    IL_017b:  mul
    IL_017c:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0181:  div
    IL_0182:  ldloc.s    V_12
    IL_0184:  add
    IL_0185:  stloc.s    V_17
    IL_0187:  ldloc.s    V_13
    IL_0189:  stloc.s    V_18
    IL_018b:  ldloc.s    V_8
    IL_018d:  ldloc.s    V_7
    IL_018f:  sub
    IL_0190:  ldarg.0
    IL_0191:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_0196:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_019b:  conv.r4
    IL_019c:  div
    IL_019d:  ldarg.0
    IL_019e:  call       instance float32 Game.BevelledRectangleWidget::get_TextureScale()
    IL_01a3:  mul
    IL_01a4:  call       float32 Game.WidgetsManager::get_Scale()
    IL_01a9:  div
    IL_01aa:  ldloc.s    V_13
    IL_01ac:  add
    IL_01ad:  stloc.s    V_19
    IL_01af:  ldloc.s    V_9
    IL_01b1:  ldloc.s    V_7
    IL_01b3:  sub
    IL_01b4:  ldarg.0
    IL_01b5:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_01ba:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_01bf:  conv.r4
    IL_01c0:  div
    IL_01c1:  ldarg.0
    IL_01c2:  call       instance float32 Game.BevelledRectangleWidget::get_TextureScale()
    IL_01c7:  mul
    IL_01c8:  call       float32 Game.WidgetsManager::get_Scale()
    IL_01cd:  div
    IL_01ce:  ldloc.s    V_13
    IL_01d0:  add
    IL_01d1:  stloc.s    V_20
    IL_01d3:  ldloc.s    V_10
    IL_01d5:  ldloc.s    V_7
    IL_01d7:  sub
    IL_01d8:  ldarg.0
    IL_01d9:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_01de:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_01e3:  conv.r4
    IL_01e4:  div
    IL_01e5:  ldarg.0
    IL_01e6:  call       instance float32 Game.BevelledRectangleWidget::get_TextureScale()
    IL_01eb:  mul
    IL_01ec:  call       float32 Game.WidgetsManager::get_Scale()
    IL_01f1:  div
    IL_01f2:  ldloc.s    V_13
    IL_01f4:  add
    IL_01f5:  stloc.s    V_21
    IL_01f7:  ldarg.0
    IL_01f8:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_01fd:  brtrue.s   IL_0236

    IL_01ff:  ldarg.0
    IL_0200:  call       instance bool Game.BevelledRectangleWidget::get_TextureLinearFilter()
    IL_0205:  brtrue.s   IL_020e

    IL_0207:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointWrap
    IL_020c:  br.s       IL_0213

    IL_020e:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearWrap
    IL_0213:  stloc.s    V_34
    IL_0215:  ldarg.0
    IL_0216:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_021b:  ldarg.0
    IL_021c:  call       instance class [Engine]Engine.Graphics.Texture2D Game.BevelledRectangleWidget::get_Texture()
    IL_0221:  ldc.i4.0
    IL_0222:  ldc.i4.0
    IL_0223:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0228:  ldnull
    IL_0229:  ldnull
    IL_022a:  ldloc.s    V_34
    IL_022c:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0231:  stfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0236:  ldarg.0
    IL_0237:  call       instance float32 Game.BevelledRectangleWidget::get_BevelSize()
    IL_023c:  ldc.r4     0.0
    IL_0241:  bgt.s      IL_024a

    IL_0243:  ldc.r4     -0.30000001
    IL_0248:  br.s       IL_024f

    IL_024a:  ldc.r4     0.40000001
    IL_024f:  ldarg.0
    IL_0250:  call       instance float32 Game.BevelledRectangleWidget::get_Light()
    IL_0255:  mul
    IL_0256:  ldc.r4     0.60000002
    IL_025b:  add
    IL_025c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0261:  stloc.s    V_22
    IL_0263:  ldarg.0
    IL_0264:  call       instance float32 Game.BevelledRectangleWidget::get_BevelSize()
    IL_0269:  ldc.r4     0.0
    IL_026e:  bgt.s      IL_0277

    IL_0270:  ldc.r4     0.40000001
    IL_0275:  br.s       IL_027c

    IL_0277:  ldc.r4     -0.30000001
    IL_027c:  ldarg.0
    IL_027d:  call       instance float32 Game.BevelledRectangleWidget::get_Light()
    IL_0282:  mul
    IL_0283:  ldc.r4     0.60000002
    IL_0288:  add
    IL_0289:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_028e:  stloc.s    V_23
    IL_0290:  ldarg.0
    IL_0291:  call       instance float32 Game.BevelledRectangleWidget::get_BevelSize()
    IL_0296:  ldc.r4     0.0
    IL_029b:  bgt.s      IL_02a4

    IL_029d:  ldc.r4     0.2
    IL_02a2:  br.s       IL_02a9

    IL_02a4:  ldc.r4     -0.15000001
    IL_02a9:  ldarg.0
    IL_02aa:  call       instance float32 Game.BevelledRectangleWidget::get_Light()
    IL_02af:  mul
    IL_02b0:  ldc.r4     0.60000002
    IL_02b5:  add
    IL_02b6:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_02bb:  stloc.s    V_24
    IL_02bd:  ldarg.0
    IL_02be:  call       instance float32 Game.BevelledRectangleWidget::get_BevelSize()
    IL_02c3:  ldc.r4     0.0
    IL_02c8:  bgt.s      IL_02d1

    IL_02ca:  ldc.r4     -0.15000001
    IL_02cf:  br.s       IL_02d6

    IL_02d1:  ldc.r4     0.2
    IL_02d6:  ldarg.0
    IL_02d7:  call       instance float32 Game.BevelledRectangleWidget::get_Light()
    IL_02dc:  mul
    IL_02dd:  ldc.r4     0.60000002
    IL_02e2:  add
    IL_02e3:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_02e8:  stloc.s    V_25
    IL_02ea:  ldc.r4     0.0
    IL_02ef:  ldarg.0
    IL_02f0:  call       instance float32 Game.BevelledRectangleWidget::get_Light()
    IL_02f5:  mul
    IL_02f6:  ldc.r4     0.60000002
    IL_02fb:  add
    IL_02fc:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0301:  stloc.s    V_26
    IL_0303:  ldloca.s   V_27
    IL_0305:  ldloc.s    V_24
    IL_0307:  ldarg.0
    IL_0308:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_030d:  stloc.s    V_35
    IL_030f:  ldloca.s   V_35
    IL_0311:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0316:  conv.r4
    IL_0317:  mul
    IL_0318:  conv.u1
    IL_0319:  ldloc.s    V_24
    IL_031b:  ldarg.0
    IL_031c:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_0321:  stloc.s    V_35
    IL_0323:  ldloca.s   V_35
    IL_0325:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_032a:  conv.r4
    IL_032b:  mul
    IL_032c:  conv.u1
    IL_032d:  ldloc.s    V_24
    IL_032f:  ldarg.0
    IL_0330:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_0335:  stloc.s    V_35
    IL_0337:  ldloca.s   V_35
    IL_0339:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_033e:  conv.r4
    IL_033f:  mul
    IL_0340:  conv.u1
    IL_0341:  ldarg.0
    IL_0342:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_0347:  stloc.s    V_35
    IL_0349:  ldloca.s   V_35
    IL_034b:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0350:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0355:  ldloca.s   V_28
    IL_0357:  ldloc.s    V_25
    IL_0359:  ldarg.0
    IL_035a:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_035f:  stloc.s    V_35
    IL_0361:  ldloca.s   V_35
    IL_0363:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0368:  conv.r4
    IL_0369:  mul
    IL_036a:  conv.u1
    IL_036b:  ldloc.s    V_25
    IL_036d:  ldarg.0
    IL_036e:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_0373:  stloc.s    V_35
    IL_0375:  ldloca.s   V_35
    IL_0377:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_037c:  conv.r4
    IL_037d:  mul
    IL_037e:  conv.u1
    IL_037f:  ldloc.s    V_25
    IL_0381:  ldarg.0
    IL_0382:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_0387:  stloc.s    V_35
    IL_0389:  ldloca.s   V_35
    IL_038b:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0390:  conv.r4
    IL_0391:  mul
    IL_0392:  conv.u1
    IL_0393:  ldarg.0
    IL_0394:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_0399:  stloc.s    V_35
    IL_039b:  ldloca.s   V_35
    IL_039d:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_03a2:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_03a7:  ldloca.s   V_29
    IL_03a9:  ldloc.s    V_22
    IL_03ab:  ldarg.0
    IL_03ac:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_03b1:  stloc.s    V_35
    IL_03b3:  ldloca.s   V_35
    IL_03b5:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_03ba:  conv.r4
    IL_03bb:  mul
    IL_03bc:  conv.u1
    IL_03bd:  ldloc.s    V_22
    IL_03bf:  ldarg.0
    IL_03c0:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_03c5:  stloc.s    V_35
    IL_03c7:  ldloca.s   V_35
    IL_03c9:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_03ce:  conv.r4
    IL_03cf:  mul
    IL_03d0:  conv.u1
    IL_03d1:  ldloc.s    V_22
    IL_03d3:  ldarg.0
    IL_03d4:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_03d9:  stloc.s    V_35
    IL_03db:  ldloca.s   V_35
    IL_03dd:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_03e2:  conv.r4
    IL_03e3:  mul
    IL_03e4:  conv.u1
    IL_03e5:  ldarg.0
    IL_03e6:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_03eb:  stloc.s    V_35
    IL_03ed:  ldloca.s   V_35
    IL_03ef:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_03f4:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_03f9:  ldloca.s   V_30
    IL_03fb:  ldloc.s    V_23
    IL_03fd:  ldarg.0
    IL_03fe:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_0403:  stloc.s    V_35
    IL_0405:  ldloca.s   V_35
    IL_0407:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_040c:  conv.r4
    IL_040d:  mul
    IL_040e:  conv.u1
    IL_040f:  ldloc.s    V_23
    IL_0411:  ldarg.0
    IL_0412:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_0417:  stloc.s    V_35
    IL_0419:  ldloca.s   V_35
    IL_041b:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0420:  conv.r4
    IL_0421:  mul
    IL_0422:  conv.u1
    IL_0423:  ldloc.s    V_23
    IL_0425:  ldarg.0
    IL_0426:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_042b:  stloc.s    V_35
    IL_042d:  ldloca.s   V_35
    IL_042f:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0434:  conv.r4
    IL_0435:  mul
    IL_0436:  conv.u1
    IL_0437:  ldarg.0
    IL_0438:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_043d:  stloc.s    V_35
    IL_043f:  ldloca.s   V_35
    IL_0441:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0446:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_044b:  ldloca.s   V_31
    IL_044d:  ldloc.s    V_26
    IL_044f:  ldarg.0
    IL_0450:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    IL_0455:  stloc.s    V_35
    IL_0457:  ldloca.s   V_35
    IL_0459:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_045e:  conv.r4
    IL_045f:  mul
    IL_0460:  conv.u1
    IL_0461:  ldloc.s    V_26
    IL_0463:  ldarg.0
    IL_0464:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    IL_0469:  stloc.s    V_35
    IL_046b:  ldloca.s   V_35
    IL_046d:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0472:  conv.r4
    IL_0473:  mul
    IL_0474:  conv.u1
    IL_0475:  ldloc.s    V_26
    IL_0477:  ldarg.0
    IL_0478:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    IL_047d:  stloc.s    V_35
    IL_047f:  ldloca.s   V_35
    IL_0481:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0486:  conv.r4
    IL_0487:  mul
    IL_0488:  conv.u1
    IL_0489:  ldarg.0
    IL_048a:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    IL_048f:  stloc.s    V_35
    IL_0491:  ldloca.s   V_35
    IL_0493:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0498:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_049d:  ldloca.s   V_32
    IL_049f:  ldc.i4.0
    IL_04a0:  ldc.i4.0
    IL_04a1:  ldc.i4.0
    IL_04a2:  ldc.i4     0xa0
    IL_04a7:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_04ac:  ldloca.s   V_33
    IL_04ae:  ldc.i4.0
    IL_04af:  ldc.i4.0
    IL_04b0:  ldc.i4.0
    IL_04b1:  ldc.i4.0
    IL_04b2:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_04b7:  ldarg.0
    IL_04b8:  call       instance float32 Game.BevelledRectangleWidget::get_BevelSize()
    IL_04bd:  ldc.r4     0.0
    IL_04c2:  ble.un     IL_0618

    IL_04c7:  ldarg.0
    IL_04c8:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_04cd:  ldloc.2
    IL_04ce:  ldloc.s    V_10
    IL_04d0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04d5:  ldloc.3
    IL_04d6:  ldloc.s    V_11
    IL_04d8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04dd:  ldloc.3
    IL_04de:  ldloc.s    V_10
    IL_04e0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04e5:  ldc.r4     0.0
    IL_04ea:  ldloc.s    V_33
    IL_04ec:  ldloc.s    V_33
    IL_04ee:  ldloc.s    V_32
    IL_04f0:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_04f5:  ldarg.0
    IL_04f6:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_04fb:  ldloc.3
    IL_04fc:  ldloc.s    V_10
    IL_04fe:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0503:  ldloc.3
    IL_0504:  ldloc.s    V_11
    IL_0506:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_050b:  ldloc.s    V_5
    IL_050d:  ldloc.s    V_11
    IL_050f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0514:  ldc.r4     0.0
    IL_0519:  ldloc.s    V_32
    IL_051b:  ldloc.s    V_33
    IL_051d:  ldloc.s    V_33
    IL_051f:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0524:  ldarg.0
    IL_0525:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_052a:  ldloc.s    V_5
    IL_052c:  ldloc.s    V_11
    IL_052e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0533:  ldloc.s    V_5
    IL_0535:  ldloc.s    V_10
    IL_0537:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_053c:  ldloc.3
    IL_053d:  ldloc.s    V_10
    IL_053f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0544:  ldc.r4     0.0
    IL_0549:  ldloc.s    V_33
    IL_054b:  ldloc.s    V_32
    IL_054d:  ldloc.s    V_32
    IL_054f:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0554:  ldarg.0
    IL_0555:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_055a:  ldloc.s    V_5
    IL_055c:  ldloc.s    V_10
    IL_055e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0563:  ldloc.s    V_5
    IL_0565:  ldloc.s    V_11
    IL_0567:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_056c:  ldloc.s    V_6
    IL_056e:  ldloc.s    V_10
    IL_0570:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0575:  ldc.r4     0.0
    IL_057a:  ldloc.s    V_32
    IL_057c:  ldloc.s    V_33
    IL_057e:  ldloc.s    V_33
    IL_0580:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0585:  ldarg.0
    IL_0586:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_058b:  ldloc.s    V_5
    IL_058d:  ldloc.s    V_10
    IL_058f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0594:  ldloc.s    V_6
    IL_0596:  ldloc.s    V_10
    IL_0598:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_059d:  ldloc.s    V_6
    IL_059f:  ldloc.s    V_8
    IL_05a1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05a6:  ldc.r4     0.0
    IL_05ab:  ldloc.s    V_32
    IL_05ad:  ldloc.s    V_33
    IL_05af:  ldloc.s    V_33
    IL_05b1:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_05b6:  ldarg.0
    IL_05b7:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_05bc:  ldloc.s    V_6
    IL_05be:  ldloc.s    V_8
    IL_05c0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05c5:  ldloc.s    V_5
    IL_05c7:  ldloc.s    V_8
    IL_05c9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05ce:  ldloc.s    V_5
    IL_05d0:  ldloc.s    V_10
    IL_05d2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05d7:  ldc.r4     0.0
    IL_05dc:  ldloc.s    V_33
    IL_05de:  ldloc.s    V_32
    IL_05e0:  ldloc.s    V_32
    IL_05e2:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_05e7:  ldarg.0
    IL_05e8:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.BevelledRectangleWidget::m_flatBatch
    IL_05ed:  ldloc.s    V_5
    IL_05ef:  ldloc.s    V_7
    IL_05f1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05f6:  ldloc.s    V_5
    IL_05f8:  ldloc.s    V_8
    IL_05fa:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05ff:  ldloc.s    V_6
    IL_0601:  ldloc.s    V_8
    IL_0603:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0608:  ldc.r4     0.0
    IL_060d:  ldloc.s    V_33
    IL_060f:  ldloc.s    V_32
    IL_0611:  ldloc.s    V_33
    IL_0613:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0618:  ldarg.0
    IL_0619:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_061e:  stloc.s    V_35
    IL_0620:  ldloca.s   V_35
    IL_0622:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0627:  ldc.i4.0
    IL_0628:  ble        IL_0935

    IL_062d:  ldarg.0
    IL_062e:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0633:  ldloc.2
    IL_0634:  ldloc.s    V_7
    IL_0636:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_063b:  ldloc.2
    IL_063c:  ldloc.s    V_8
    IL_063e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0643:  ldloc.3
    IL_0644:  ldloc.s    V_8
    IL_0646:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_064b:  ldc.r4     0.0
    IL_0650:  ldloc.s    V_14
    IL_0652:  ldloc.s    V_18
    IL_0654:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0659:  ldloc.s    V_14
    IL_065b:  ldloc.s    V_19
    IL_065d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0662:  ldloc.s    V_15
    IL_0664:  ldloc.s    V_19
    IL_0666:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_066b:  ldloc.s    V_27
    IL_066d:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0672:  ldarg.0
    IL_0673:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0678:  ldloc.2
    IL_0679:  ldloc.s    V_7
    IL_067b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0680:  ldloc.3
    IL_0681:  ldloc.s    V_8
    IL_0683:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0688:  ldloc.3
    IL_0689:  ldloc.s    V_7
    IL_068b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0690:  ldc.r4     0.0
    IL_0695:  ldloc.s    V_14
    IL_0697:  ldloc.s    V_18
    IL_0699:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_069e:  ldloc.s    V_15
    IL_06a0:  ldloc.s    V_19
    IL_06a2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06a7:  ldloc.s    V_15
    IL_06a9:  ldloc.s    V_18
    IL_06ab:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06b0:  ldloc.s    V_29
    IL_06b2:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_06b7:  ldarg.0
    IL_06b8:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_06bd:  ldloc.3
    IL_06be:  ldloc.s    V_7
    IL_06c0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06c5:  ldloc.s    V_4
    IL_06c7:  ldloc.s    V_8
    IL_06c9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06ce:  ldc.r4     0.0
    IL_06d3:  ldloc.s    V_15
    IL_06d5:  ldloc.s    V_18
    IL_06d7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06dc:  ldloc.s    V_16
    IL_06de:  ldloc.s    V_19
    IL_06e0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06e5:  ldloc.s    V_29
    IL_06e7:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_06ec:  ldarg.0
    IL_06ed:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_06f2:  ldloc.s    V_5
    IL_06f4:  ldloc.s    V_7
    IL_06f6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06fb:  ldloc.s    V_4
    IL_06fd:  ldloc.s    V_7
    IL_06ff:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0704:  ldloc.s    V_4
    IL_0706:  ldloc.s    V_8
    IL_0708:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_070d:  ldc.r4     0.0
    IL_0712:  ldloc.s    V_17
    IL_0714:  ldloc.s    V_18
    IL_0716:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_071b:  ldloc.s    V_16
    IL_071d:  ldloc.s    V_18
    IL_071f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0724:  ldloc.s    V_16
    IL_0726:  ldloc.s    V_19
    IL_0728:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_072d:  ldloc.s    V_29
    IL_072f:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0734:  ldarg.0
    IL_0735:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_073a:  ldloc.s    V_5
    IL_073c:  ldloc.s    V_7
    IL_073e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0743:  ldloc.s    V_4
    IL_0745:  ldloc.s    V_8
    IL_0747:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_074c:  ldloc.s    V_5
    IL_074e:  ldloc.s    V_8
    IL_0750:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0755:  ldc.r4     0.0
    IL_075a:  ldloc.s    V_17
    IL_075c:  ldloc.s    V_18
    IL_075e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0763:  ldloc.s    V_16
    IL_0765:  ldloc.s    V_19
    IL_0767:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_076c:  ldloc.s    V_17
    IL_076e:  ldloc.s    V_19
    IL_0770:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0775:  ldloc.s    V_28
    IL_0777:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_077c:  ldarg.0
    IL_077d:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0782:  ldloc.2
    IL_0783:  ldloc.s    V_8
    IL_0785:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_078a:  ldloc.3
    IL_078b:  ldloc.s    V_9
    IL_078d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0792:  ldc.r4     0.0
    IL_0797:  ldloc.s    V_14
    IL_0799:  ldloc.s    V_19
    IL_079b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07a0:  ldloc.s    V_15
    IL_07a2:  ldloc.s    V_20
    IL_07a4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07a9:  ldloc.s    V_27
    IL_07ab:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_07b0:  ldarg.0
    IL_07b1:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_07b6:  ldloc.s    V_4
    IL_07b8:  ldloc.s    V_8
    IL_07ba:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07bf:  ldloc.s    V_5
    IL_07c1:  ldloc.s    V_9
    IL_07c3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07c8:  ldc.r4     0.0
    IL_07cd:  ldloc.s    V_16
    IL_07cf:  ldloc.s    V_19
    IL_07d1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07d6:  ldloc.s    V_17
    IL_07d8:  ldloc.s    V_20
    IL_07da:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07df:  ldloc.s    V_28
    IL_07e1:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_07e6:  ldarg.0
    IL_07e7:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_07ec:  ldloc.2
    IL_07ed:  ldloc.s    V_10
    IL_07ef:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07f4:  ldloc.2
    IL_07f5:  ldloc.s    V_9
    IL_07f7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_07fc:  ldloc.3
    IL_07fd:  ldloc.s    V_9
    IL_07ff:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0804:  ldc.r4     0.0
    IL_0809:  ldloc.s    V_14
    IL_080b:  ldloc.s    V_21
    IL_080d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0812:  ldloc.s    V_14
    IL_0814:  ldloc.s    V_20
    IL_0816:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_081b:  ldloc.s    V_15
    IL_081d:  ldloc.s    V_20
    IL_081f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0824:  ldloc.s    V_27
    IL_0826:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_082b:  ldarg.0
    IL_082c:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0831:  ldloc.2
    IL_0832:  ldloc.s    V_10
    IL_0834:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0839:  ldloc.3
    IL_083a:  ldloc.s    V_9
    IL_083c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0841:  ldloc.3
    IL_0842:  ldloc.s    V_10
    IL_0844:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0849:  ldc.r4     0.0
    IL_084e:  ldloc.s    V_14
    IL_0850:  ldloc.s    V_21
    IL_0852:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0857:  ldloc.s    V_15
    IL_0859:  ldloc.s    V_20
    IL_085b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0860:  ldloc.s    V_15
    IL_0862:  ldloc.s    V_21
    IL_0864:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0869:  ldloc.s    V_30
    IL_086b:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0870:  ldarg.0
    IL_0871:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_0876:  ldloc.3
    IL_0877:  ldloc.s    V_10
    IL_0879:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_087e:  ldloc.s    V_4
    IL_0880:  ldloc.s    V_9
    IL_0882:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0887:  ldc.r4     0.0
    IL_088c:  ldloc.s    V_15
    IL_088e:  ldloc.s    V_21
    IL_0890:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0895:  ldloc.s    V_16
    IL_0897:  ldloc.s    V_20
    IL_0899:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_089e:  ldloc.s    V_30
    IL_08a0:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_08a5:  ldarg.0
    IL_08a6:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_08ab:  ldloc.s    V_5
    IL_08ad:  ldloc.s    V_10
    IL_08af:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08b4:  ldloc.s    V_4
    IL_08b6:  ldloc.s    V_10
    IL_08b8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08bd:  ldloc.s    V_4
    IL_08bf:  ldloc.s    V_9
    IL_08c1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08c6:  ldc.r4     0.0
    IL_08cb:  ldloc.s    V_17
    IL_08cd:  ldloc.s    V_21
    IL_08cf:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08d4:  ldloc.s    V_16
    IL_08d6:  ldloc.s    V_21
    IL_08d8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08dd:  ldloc.s    V_16
    IL_08df:  ldloc.s    V_20
    IL_08e1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08e6:  ldloc.s    V_30
    IL_08e8:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_08ed:  ldarg.0
    IL_08ee:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_08f3:  ldloc.s    V_5
    IL_08f5:  ldloc.s    V_10
    IL_08f7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08fc:  ldloc.s    V_4
    IL_08fe:  ldloc.s    V_9
    IL_0900:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0905:  ldloc.s    V_5
    IL_0907:  ldloc.s    V_9
    IL_0909:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_090e:  ldc.r4     0.0
    IL_0913:  ldloc.s    V_17
    IL_0915:  ldloc.s    V_21
    IL_0917:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_091c:  ldloc.s    V_16
    IL_091e:  ldloc.s    V_20
    IL_0920:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0925:  ldloc.s    V_17
    IL_0927:  ldloc.s    V_20
    IL_0929:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_092e:  ldloc.s    V_28
    IL_0930:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0935:  ldarg.0
    IL_0936:  call       instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    IL_093b:  stloc.s    V_35
    IL_093d:  ldloca.s   V_35
    IL_093f:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0944:  ldc.i4.0
    IL_0945:  ble.s      IL_097c

    IL_0947:  ldarg.0
    IL_0948:  ldfld      class [Engine]Engine.Graphics.TexturedBatch2D Game.BevelledRectangleWidget::m_texturedBatch
    IL_094d:  ldloc.3
    IL_094e:  ldloc.s    V_8
    IL_0950:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0955:  ldloc.s    V_4
    IL_0957:  ldloc.s    V_9
    IL_0959:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_095e:  ldc.r4     0.0
    IL_0963:  ldloc.s    V_15
    IL_0965:  ldloc.s    V_19
    IL_0967:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_096c:  ldloc.s    V_16
    IL_096e:  ldloc.s    V_20
    IL_0970:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0975:  ldloc.s    V_31
    IL_0977:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_097c:  ret
  } // end of method BevelledRectangleWidget::Draw

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
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
  } // end of method BevelledRectangleWidget::Measure

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
  .property instance float32 Light()
  {
    .get instance float32 Game.BevelledRectangleWidget::get_Light()
    .set instance void Game.BevelledRectangleWidget::set_Light(float32)
  } // end of property BevelledRectangleWidget::Light
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
} // end of class Game.BevelledRectangleWidget