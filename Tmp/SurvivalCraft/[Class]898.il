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
    // 代码大小       498 (0x1f2)
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
             valuetype [Engine]Engine.Vector2 V_11,
             int32 V_12)
    IL_0000:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0005:  ldarg.0
    IL_0006:  ldfld      float32 Game.PanoramaWidget::m_timeOffset
    IL_000b:  conv.r8
    IL_000c:  add
    IL_000d:  ldc.r8     10000.
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
    IL_016a:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_016f:  stloc.s    V_8
    IL_0171:  ldarg.0
    IL_0172:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0177:  stloc.s    V_9
    IL_0179:  ldloca.s   V_10
    IL_017b:  ldloc.s    V_6
    IL_017d:  ldloc.s    V_4
    IL_017f:  sub
    IL_0180:  ldloc.s    V_7
    IL_0182:  ldloc.s    V_5
    IL_0184:  sub
    IL_0185:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_018a:  ldloca.s   V_11
    IL_018c:  ldloc.s    V_6
    IL_018e:  ldloc.s    V_4
    IL_0190:  add
    IL_0191:  ldloc.s    V_7
    IL_0193:  ldloc.s    V_5
    IL_0195:  add
    IL_0196:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_019b:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_01a0:  ldarg.0
    IL_01a1:  call       instance class [Engine]Engine.Graphics.Texture2D Game.PanoramaWidget::get_Texture()
    IL_01a6:  ldc.i4.0
    IL_01a7:  ldc.i4.0
    IL_01a8:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthWrite
    IL_01ad:  ldnull
    IL_01ae:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_01b3:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearWrap
    IL_01b8:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_01bd:  dup
    IL_01be:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_01c3:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_01c8:  stloc.s    V_12
    IL_01ca:  dup
    IL_01cb:  ldloc.s    V_8
    IL_01cd:  ldloc.s    V_9
    IL_01cf:  ldc.r4     1.
    IL_01d4:  ldloc.s    V_10
    IL_01d6:  ldloc.s    V_11
    IL_01d8:  ldarg.0
    IL_01d9:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_01de:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_01e3:  ldarg.0
    IL_01e4:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_01e9:  ldloc.s    V_12
    IL_01eb:  ldc.i4.m1
    IL_01ec:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_01f1:  ret
  } // end of method PanoramaWidget::DrawImage

  .method private hidebysig instance void 
          DrawSquares() cil managed
  {
    // 代码大小       465 (0x1d1)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.FlatBatch2D V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Color V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             valuetype [Engine]Engine.Vector2 V_12)
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
    IL_0017:  ldloc.0
    IL_0018:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::LineVertices
    IL_001d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_0022:  stloc.1
    IL_0023:  ldloc.0
    IL_0024:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_0029:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_002e:  stloc.2
    IL_002f:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0034:  ldarg.0
    IL_0035:  ldfld      float32 Game.PanoramaWidget::m_timeOffset
    IL_003a:  conv.r8
    IL_003b:  add
    IL_003c:  ldc.r8     10000.
    IL_0045:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_004a:  conv.r4
    IL_004b:  stloc.3
    IL_004c:  ldarg.0
    IL_004d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0052:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0057:  ldc.r4     12.
    IL_005c:  div
    IL_005d:  stloc.s    V_4
    IL_005f:  ldarg.0
    IL_0060:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0065:  stloc.s    V_6
    IL_0067:  ldloca.s   V_6
    IL_0069:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_006e:  conv.r4
    IL_006f:  ldc.r4     255.
    IL_0074:  div
    IL_0075:  stloc.s    V_5
    IL_0077:  ldc.r4     0.0
    IL_007c:  stloc.s    V_7
    IL_007e:  br         IL_01a2

    IL_0083:  ldc.r4     0.0
    IL_0088:  stloc.s    V_8
    IL_008a:  br         IL_0189

    IL_008f:  ldc.r4     0.34999999
    IL_0094:  ldloc.s    V_7
    IL_0096:  ldc.r4     1000.
    IL_009b:  add
    IL_009c:  ldloc.s    V_8
    IL_009e:  ldc.r4     0.69999999
    IL_00a3:  ldloc.3
    IL_00a4:  mul
    IL_00a5:  ldc.r4     0.5
    IL_00aa:  ldc.i4.1
    IL_00ab:  ldc.r4     2.
    IL_00b0:  ldc.r4     1.
    IL_00b5:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00ba:  ldc.r4     0.1
    IL_00bf:  sub
    IL_00c0:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00c5:  ldc.r4     1.
    IL_00ca:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_00cf:  mul
    IL_00d0:  ldloc.s    V_5
    IL_00d2:  mul
    IL_00d3:  stloc.s    V_9
    IL_00d5:  ldc.r4     0.69999999
    IL_00da:  ldloc.s    V_7
    IL_00dc:  ldloc.s    V_8
    IL_00de:  ldc.r4     0.5
    IL_00e3:  ldloc.3
    IL_00e4:  mul
    IL_00e5:  ldc.r4     0.5
    IL_00ea:  ldc.i4.1
    IL_00eb:  ldc.r4     2.
    IL_00f0:  ldc.r4     1.
    IL_00f5:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00fa:  ldc.r4     3.
    IL_00ff:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0104:  mul
    IL_0105:  ldloc.s    V_5
    IL_0107:  mul
    IL_0108:  stloc.s    V_10
    IL_010a:  ldloca.s   V_11
    IL_010c:  ldloc.s    V_7
    IL_010e:  ldloc.s    V_8
    IL_0110:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0115:  ldloca.s   V_12
    IL_0117:  ldloc.s    V_7
    IL_0119:  ldloc.s    V_4
    IL_011b:  add
    IL_011c:  ldloc.s    V_8
    IL_011e:  ldloc.s    V_4
    IL_0120:  add
    IL_0121:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0126:  ldloc.s    V_9
    IL_0128:  ldc.r4     9.9999998e-003
    IL_012d:  ble.un.s   IL_0154

    IL_012f:  ldloc.0
    IL_0130:  ldloc.s    V_11
    IL_0132:  ldloc.s    V_12
    IL_0134:  ldc.r4     0.0
    IL_0139:  ldc.r4     0.0
    IL_013e:  ldc.r4     0.0
    IL_0143:  ldc.r4     0.0
    IL_0148:  ldloc.s    V_9
    IL_014a:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_014f:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueRectangle(valuetype [Engine]Engine.Vector2,
                                                                                           valuetype [Engine]Engine.Vector2,
                                                                                           float32,
                                                                                           valuetype [Engine]Engine.Color)
    IL_0154:  ldloc.s    V_10
    IL_0156:  ldc.r4     9.9999998e-003
    IL_015b:  ble.un.s   IL_0182

    IL_015d:  ldloc.0
    IL_015e:  ldloc.s    V_11
    IL_0160:  ldloc.s    V_12
    IL_0162:  ldc.r4     0.0
    IL_0167:  ldc.r4     0.0
    IL_016c:  ldc.r4     0.0
    IL_0171:  ldc.r4     0.0
    IL_0176:  ldloc.s    V_10
    IL_0178:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_017d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0182:  ldloc.s    V_8
    IL_0184:  ldloc.s    V_4
    IL_0186:  add
    IL_0187:  stloc.s    V_8
    IL_0189:  ldloc.s    V_8
    IL_018b:  ldarg.0
    IL_018c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0191:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0196:  blt        IL_008f

    IL_019b:  ldloc.s    V_7
    IL_019d:  ldloc.s    V_4
    IL_019f:  add
    IL_01a0:  stloc.s    V_7
    IL_01a2:  ldloc.s    V_7
    IL_01a4:  ldarg.0
    IL_01a5:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01aa:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01af:  blt        IL_0083

    IL_01b4:  ldloc.0
    IL_01b5:  ldarg.0
    IL_01b6:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_01bb:  ldloc.1
    IL_01bc:  ldc.i4.m1
    IL_01bd:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformLines(valuetype [Engine]Engine.Matrix,
                                                                                           int32,
                                                                                           int32)
    IL_01c2:  ldloc.0
    IL_01c3:  ldarg.0
    IL_01c4:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_01c9:  ldloc.2
    IL_01ca:  ldc.i4.m1
    IL_01cb:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_01d0:  ret
  } // end of method PanoramaWidget::DrawSquares

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ret
  } // end of method PanoramaWidget::MeasureOverride

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