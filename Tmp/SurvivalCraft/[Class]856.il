.class public auto ansi beforefieldinit Game.PanoramaWidget
       extends Game.Widget
{
  .field private valuetype [Engine]Engine.Vector2 m_position
  .field private float32 m_timeOffset
  .field private class [Engine]Engine.Graphics.Texture2D '<Texture>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Widget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldstr      "Textures/Gui/Panorama"
    IL_000c:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0011:  call       instance void Game.PanoramaWidget::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  ldc.r4     0.0
    IL_0021:  ldc.r4     1000.
    IL_0026:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_002b:  stfld      float32 Game.PanoramaWidget::m_timeOffset
    IL_0030:  ret
  } // end of method PanoramaWidget::.ctor

  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_Texture() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.PanoramaWidget::'<Texture>k__BackingField'
    IL_0006:  ret
  } // end of method PanoramaWidget::get_Texture

  .method public hidebysig specialname instance void 
          set_Texture(class [Engine]Engine.Graphics.Texture2D 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Engine]Engine.Graphics.Texture2D Game.PanoramaWidget::'<Texture>k__BackingField'
    IL_0007:  ret
  } // end of method PanoramaWidget::set_Texture

  .method private hidebysig instance void 
          DrawImage() cil managed
  {
    // 代码大小       501 (0x1f5)
    .maxstack  8
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             valuetype [Engine]Engine.Vector2 V_11)
    IL_0000:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0005:  ldarg.0
    IL_0006:  ldfld      float32 Game.PanoramaWidget::m_timeOffset
    IL_000b:  conv.r8
    IL_000c:  add
    IL_000d:  ldc.r8     1000.
    IL_0016:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_001b:  conv.r4
    IL_001c:  stloc.0
    IL_001d:  ldc.r4     2.
    IL_0022:  ldloc.0
    IL_0023:  ldc.r4     2.e-002
    IL_0028:  ldc.i4.4
    IL_0029:  ldc.r4     2.
    IL_002e:  ldc.r4     0.5
    IL_0033:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0038:  mul
    IL_0039:  ldc.r4     1.
    IL_003e:  sub
    IL_003f:  stloc.1
    IL_0040:  ldc.r4     2.
    IL_0045:  ldloc.0
    IL_0046:  ldc.r4     100.
    IL_004b:  add
    IL_004c:  ldc.r4     2.e-002
    IL_0051:  ldc.i4.4
    IL_0052:  ldc.r4     2.
    IL_0057:  ldc.r4     0.5
    IL_005c:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0061:  mul
    IL_0062:  ldc.r4     1.
    IL_0067:  sub
    IL_0068:  stloc.2
    IL_0069:  ldarg.0
    IL_006a:  ldarg.0
    IL_006b:  ldfld      valuetype [Engine]Engine.Vector2 Game.PanoramaWidget::m_position
    IL_0070:  ldc.r4     2.9999999e-002
    IL_0075:  ldloc.1
    IL_0076:  ldloc.2
    IL_0077:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_007c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0081:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0086:  ldc.r4     0.1
    IL_008b:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0090:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0095:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_009a:  stfld      valuetype [Engine]Engine.Vector2 Game.PanoramaWidget::m_position
    IL_009f:  ldarg.0
    IL_00a0:  ldflda     valuetype [Engine]Engine.Vector2 Game.PanoramaWidget::m_position
    IL_00a5:  ldarg.0
    IL_00a6:  ldflda     valuetype [Engine]Engine.Vector2 Game.PanoramaWidget::m_position
    IL_00ab:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b0:  ldc.r4     1.
    IL_00b5:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_00ba:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00bf:  ldarg.0
    IL_00c0:  ldflda     valuetype [Engine]Engine.Vector2 Game.PanoramaWidget::m_position
    IL_00c5:  ldarg.0
    IL_00c6:  ldflda     valuetype [Engine]Engine.Vector2 Game.PanoramaWidget::m_position
    IL_00cb:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00d0:  ldc.r4     1.
    IL_00d5:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_00da:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00df:  ldc.r4     0.5
    IL_00e4:  ldc.r4     0.20999999
    IL_00e9:  ldloc.0
    IL_00ea:  mul
    IL_00eb:  ldc.r4     2.
    IL_00f0:  add
    IL_00f1:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00f6:  ldc.r4     2.
    IL_00fb:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_0100:  mul
    IL_0101:  ldc.r4     0.5
    IL_0106:  add
    IL_0107:  stloc.3
    IL_0108:  ldc.r4     0.13
    IL_010d:  ldc.r4     0.30000001
    IL_0112:  ldloc.3
    IL_0113:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0118:  stloc.s    V_4
    IL_011a:  ldloc.s    V_4
    IL_011c:  ldarg.0
    IL_011d:  call       instance class [Engine]Engine.Graphics.Texture2D Game.PanoramaWidget::get_Texture()
    IL_0122:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0127:  conv.r4
    IL_0128:  div
    IL_0129:  ldarg.0
    IL_012a:  call       instance class [Engine]Engine.Graphics.Texture2D Game.PanoramaWidget::get_Texture()
    IL_012f:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0134:  conv.r4
    IL_0135:  mul
    IL_0136:  ldarg.0
    IL_0137:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_013c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0141:  div
    IL_0142:  ldarg.0
    IL_0143:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0148:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_014d:  mul
    IL_014e:  stloc.s    V_5
    IL_0150:  ldarg.0
    IL_0151:  ldflda     valuetype [Engine]Engine.Vector2 Game.PanoramaWidget::m_position
    IL_0156:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_015b:  stloc.s    V_6
    IL_015d:  ldarg.0
    IL_015e:  ldflda     valuetype [Engine]Engine.Vector2 Game.PanoramaWidget::m_position
    IL_0163:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0168:  stloc.s    V_7
    IL_016a:  ldarg.0
    IL_016b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0170:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0175:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_017a:  stloc.s    V_8
    IL_017c:  ldarg.0
    IL_017d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0182:  ldarg.0
    IL_0183:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0188:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_018d:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0192:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0197:  stloc.s    V_9
    IL_0199:  ldloca.s   V_10
    IL_019b:  ldloc.s    V_6
    IL_019d:  ldloc.s    V_4
    IL_019f:  sub
    IL_01a0:  ldloc.s    V_7
    IL_01a2:  ldloc.s    V_5
    IL_01a4:  sub
    IL_01a5:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01aa:  ldloca.s   V_11
    IL_01ac:  ldloc.s    V_6
    IL_01ae:  ldloc.s    V_4
    IL_01b0:  add
    IL_01b1:  ldloc.s    V_7
    IL_01b3:  ldloc.s    V_5
    IL_01b5:  add
    IL_01b6:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01bb:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_01c0:  ldarg.0
    IL_01c1:  call       instance class [Engine]Engine.Graphics.Texture2D Game.PanoramaWidget::get_Texture()
    IL_01c6:  ldc.i4.0
    IL_01c7:  ldc.i4.0
    IL_01c8:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_01cd:  ldnull
    IL_01ce:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_01d3:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearWrap
    IL_01d8:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_01dd:  ldloc.s    V_8
    IL_01df:  ldloc.s    V_9
    IL_01e1:  ldc.r4     0.0
    IL_01e6:  ldloc.s    V_10
    IL_01e8:  ldloc.s    V_11
    IL_01ea:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01ef:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_01f4:  ret
  } // end of method PanoramaWidget::DrawImage

  .method private hidebysig instance void 
          DrawSquares() cil managed
  {
    // 代码大小       412 (0x19c)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.FlatBatch2D V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8)
    IL_0000:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0005:  ldc.i4.1
    IL_0006:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_000b:  ldnull
    IL_000c:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0011:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0016:  stloc.0
    IL_0017:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_001c:  ldarg.0
    IL_001d:  ldfld      float32 Game.PanoramaWidget::m_timeOffset
    IL_0022:  conv.r8
    IL_0023:  add
    IL_0024:  ldc.r8     10000.
    IL_002d:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0032:  conv.r4
    IL_0033:  stloc.1
    IL_0034:  ldarg.0
    IL_0035:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_003a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003f:  ldc.r4     12.
    IL_0044:  div
    IL_0045:  stloc.2
    IL_0046:  ldc.r4     0.0
    IL_004b:  stloc.3
    IL_004c:  br         IL_018a

    IL_0051:  ldc.r4     0.0
    IL_0056:  stloc.s    V_4
    IL_0058:  br         IL_0174

    IL_005d:  ldc.r4     0.34999999
    IL_0062:  ldloc.3
    IL_0063:  ldc.r4     1000.
    IL_0068:  add
    IL_0069:  ldloc.s    V_4
    IL_006b:  ldc.r4     0.69999999
    IL_0070:  ldloc.1
    IL_0071:  mul
    IL_0072:  ldc.r4     0.5
    IL_0077:  ldc.i4.1
    IL_0078:  ldc.r4     2.
    IL_007d:  ldc.r4     1.
    IL_0082:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0087:  ldc.r4     0.1
    IL_008c:  sub
    IL_008d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0092:  ldc.r4     1.
    IL_0097:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_009c:  mul
    IL_009d:  stloc.s    V_5
    IL_009f:  ldc.r4     0.69999999
    IL_00a4:  ldloc.3
    IL_00a5:  ldloc.s    V_4
    IL_00a7:  ldc.r4     0.5
    IL_00ac:  ldloc.1
    IL_00ad:  mul
    IL_00ae:  ldc.r4     0.5
    IL_00b3:  ldc.i4.1
    IL_00b4:  ldc.r4     2.
    IL_00b9:  ldc.r4     1.
    IL_00be:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00c3:  ldc.r4     3.
    IL_00c8:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_00cd:  mul
    IL_00ce:  stloc.s    V_6
    IL_00d0:  ldarg.0
    IL_00d1:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_00d6:  ldloc.3
    IL_00d7:  ldloc.s    V_4
    IL_00d9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00de:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00e3:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00e8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00ed:  stloc.s    V_7
    IL_00ef:  ldarg.0
    IL_00f0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_00f5:  ldloc.3
    IL_00f6:  ldloc.2
    IL_00f7:  add
    IL_00f8:  ldloc.s    V_4
    IL_00fa:  ldloc.2
    IL_00fb:  add
    IL_00fc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0101:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0106:  call       float32 Game.WidgetsManager::get_Scale()
    IL_010b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0110:  stloc.s    V_8
    IL_0112:  ldloc.s    V_5
    IL_0114:  ldc.r4     9.9999998e-003
    IL_0119:  ble.un.s   IL_0140

    IL_011b:  ldloc.0
    IL_011c:  ldloc.s    V_7
    IL_011e:  ldloc.s    V_8
    IL_0120:  ldc.r4     0.0
    IL_0125:  ldc.r4     0.0
    IL_012a:  ldc.r4     0.0
    IL_012f:  ldc.r4     0.0
    IL_0134:  ldloc.s    V_5
    IL_0136:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_013b:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueRectangle(valuetype [Engine]Engine.Vector2,
                                                                                           valuetype [Engine]Engine.Vector2,
                                                                                           float32,
                                                                                           valuetype [Engine]Engine.Color)
    IL_0140:  ldloc.s    V_6
    IL_0142:  ldc.r4     9.9999998e-003
    IL_0147:  ble.un.s   IL_016e

    IL_0149:  ldloc.0
    IL_014a:  ldloc.s    V_7
    IL_014c:  ldloc.s    V_8
    IL_014e:  ldc.r4     0.0
    IL_0153:  ldc.r4     0.0
    IL_0158:  ldc.r4     0.0
    IL_015d:  ldc.r4     0.0
    IL_0162:  ldloc.s    V_6
    IL_0164:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_0169:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_016e:  ldloc.s    V_4
    IL_0170:  ldloc.2
    IL_0171:  add
    IL_0172:  stloc.s    V_4
    IL_0174:  ldloc.s    V_4
    IL_0176:  ldarg.0
    IL_0177:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_017c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0181:  blt        IL_005d

    IL_0186:  ldloc.3
    IL_0187:  ldloc.2
    IL_0188:  add
    IL_0189:  stloc.3
    IL_018a:  ldloc.3
    IL_018b:  ldarg.0
    IL_018c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0191:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0196:  blt        IL_0051

    IL_019b:  ret
  } // end of method PanoramaWidget::DrawSquares

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ret
  } // end of method PanoramaWidget::Measure

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.PanoramaWidget::DrawImage()
    IL_0006:  ldarg.0
    IL_0007:  call       instance void Game.PanoramaWidget::DrawSquares()
    IL_000c:  ret
  } // end of method PanoramaWidget::Draw

  .property instance class [Engine]Engine.Graphics.Texture2D
          Texture()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.PanoramaWidget::get_Texture()
    .set instance void Game.PanoramaWidget::set_Texture(class [Engine]Engine.Graphics.Texture2D)
  } // end of property PanoramaWidget::Texture
} // end of class Game.PanoramaWidget