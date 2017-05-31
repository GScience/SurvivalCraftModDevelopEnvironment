.class public auto ansi beforefieldinit Game.SubsystemAnimatedTextures
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemBlocksTexture m_subsystemBlocksTexture
  .field private class [Engine]Engine.Graphics.RenderTarget2D m_animatedBlocksTexture
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer2D m_primitivesRenderer
  .field private class Game.ScreenSpaceFireRenderer m_screenSpaceFireRenderer
  .field private class Game.Random m_random
  .field private bool m_waterOrder
  .field private valuetype [Engine]Engine.Vector2 m_waterOffset1
  .field private valuetype [Engine]Engine.Vector2 m_waterOffset2
  .field private bool m_magmaOrder
  .field private valuetype [Engine]Engine.Vector2 m_magmaOffset1
  .field private valuetype [Engine]Engine.Vector2 m_magmaOffset2
  .field private float64 m_lastAnimateGameTime
  .field public bool DisableTextureAnimation
  .field public bool ShowAnimatedTexture
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_AnimatedBlocksTexture() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemAnimatedTextures::DisableTextureAnimation
    IL_0006:  brtrue.s   IL_0010

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_000e:  brtrue.s   IL_001c

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemBlocksTexture Game.SubsystemAnimatedTextures::m_subsystemBlocksTexture
    IL_0016:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::get_BlocksTexture()
    IL_001b:  ret

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_0022:  ret
  } // end of method SubsystemAnimatedTextures::get_AnimatedBlocksTexture

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemAnimatedTextures::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemAnimatedTextures::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       409 (0x199)
    .maxstack  8
    .locals init (int32 V_0,
             float32 V_1,
             class [Engine]Engine.Graphics.Texture2D V_2,
             valuetype [Engine]Engine.Rectangle V_3,
             class [Engine]Engine.Graphics.RenderTarget2D V_4,
             valuetype [System.Runtime]System.Nullable`1<float32> V_5,
             valuetype [System.Runtime]System.Nullable`1<int32> V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemAnimatedTextures::DisableTextureAnimation
    IL_0006:  brfalse.s  IL_0009

    IL_0008:  ret

    IL_0009:  call       valuetype Game.TextureAnimationMode Game.SettingsManager::get_TextureAnimationMode()
    IL_000e:  ldc.i4.1
    IL_000f:  beq.s      IL_0014

    IL_0011:  ldc.i4.1
    IL_0012:  br.s       IL_0015

    IL_0014:  ldc.i4.5
    IL_0015:  stloc.0
    IL_0016:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_001b:  ldloc.0
    IL_001c:  rem
    IL_001d:  brfalse.s  IL_0020

    IL_001f:  ret

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_0026:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_002b:  ldarg.0
    IL_002c:  ldfld      float64 Game.SubsystemAnimatedTextures::m_lastAnimateGameTime
    IL_0031:  sub
    IL_0032:  ldc.r8     1.
    IL_003b:  call       float64 [Engine]Engine.MathUtils::Min(float64,
                                                               float64)
    IL_0040:  conv.r4
    IL_0041:  stloc.1
    IL_0042:  ldarg.0
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_0049:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_004e:  stfld      float64 Game.SubsystemAnimatedTextures::m_lastAnimateGameTime
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.SubsystemBlocksTexture Game.SubsystemAnimatedTextures::m_subsystemBlocksTexture
    IL_0059:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::get_BlocksTexture()
    IL_005e:  stloc.2
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_0065:  brfalse.s  IL_008d

    IL_0067:  ldarg.0
    IL_0068:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_006d:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0072:  ldloc.2
    IL_0073:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0078:  bne.un.s   IL_008d

    IL_007a:  ldarg.0
    IL_007b:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_0080:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0085:  ldloc.2
    IL_0086:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_008b:  beq.s      IL_00b1

    IL_008d:  ldarg.0
    IL_008e:  ldflda     class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_0093:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.RenderTarget2D>(!!0&)
    IL_0098:  ldarg.0
    IL_0099:  ldloc.2
    IL_009a:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_009f:  ldloc.2
    IL_00a0:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_00a5:  ldc.i4.0
    IL_00a6:  ldc.i4.0
    IL_00a7:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_00ac:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_00b1:  call       valuetype [Engine]Engine.Rectangle [Engine]Engine.Graphics.Display::get_ScissorRectangle()
    IL_00b6:  stloc.3
    IL_00b7:  call       class [Engine]Engine.Graphics.RenderTarget2D [Engine]Engine.Graphics.Display::get_RenderTarget()
    IL_00bc:  stloc.s    V_4
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_00c4:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
    .try
    {
      IL_00c9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
      IL_00ce:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
      IL_00d3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
      IL_00d8:  ldloca.s   V_5
      IL_00da:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
      IL_00e0:  ldloc.s    V_5
      IL_00e2:  ldloca.s   V_6
      IL_00e4:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_00ea:  ldloc.s    V_6
      IL_00ec:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                       valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                       valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_00f1:  ldarg.0
      IL_00f2:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemAnimatedTextures::m_primitivesRenderer
      IL_00f7:  ldloc.2
      IL_00f8:  ldc.i4.0
      IL_00f9:  ldc.i4.m1
      IL_00fa:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
      IL_00ff:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNone
      IL_0104:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
      IL_0109:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
      IL_010e:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                              bool,
                                                                                                                                              int32,
                                                                                                                                              class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                              class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                              class [Engine]Engine.Graphics.BlendState,
                                                                                                                                              class [Engine]Engine.Graphics.SamplerState)
      IL_0113:  ldc.r4     0.0
      IL_0118:  ldc.r4     0.0
      IL_011d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0122:  ldarg.0
      IL_0123:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
      IL_0128:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
      IL_012d:  conv.r4
      IL_012e:  ldarg.0
      IL_012f:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
      IL_0134:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
      IL_0139:  conv.r4
      IL_013a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_013f:  ldc.r4     0.0
      IL_0144:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0149:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
      IL_014e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_0153:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            float32,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Color)
      IL_0158:  ldarg.0
      IL_0159:  call       instance void Game.SubsystemAnimatedTextures::AnimateWaterBlocksTexture()
      IL_015e:  ldarg.0
      IL_015f:  call       instance void Game.SubsystemAnimatedTextures::AnimateMagmaBlocksTexture()
      IL_0164:  ldarg.0
      IL_0165:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemAnimatedTextures::m_primitivesRenderer
      IL_016a:  ldc.i4.1
      IL_016b:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_0170:  ldarg.0
      IL_0171:  ldloc.1
      IL_0172:  call       instance valuetype [Engine]Engine.Rectangle Game.SubsystemAnimatedTextures::AnimateFireBlocksTexture(float32)
      IL_0177:  call       void [Engine]Engine.Graphics.Display::set_ScissorRectangle(valuetype [Engine]Engine.Rectangle)
      IL_017c:  ldarg.0
      IL_017d:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemAnimatedTextures::m_primitivesRenderer
      IL_0182:  ldc.i4.1
      IL_0183:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_0188:  leave.s    IL_0198

    }  // end .try
    finally
    {
      IL_018a:  ldloc.s    V_4
      IL_018c:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_0191:  ldloc.3
      IL_0192:  call       void [Engine]Engine.Graphics.Display::set_ScissorRectangle(valuetype [Engine]Engine.Rectangle)
      IL_0197:  endfinally
    }  // end handler
    IL_0198:  ret
  } // end of method SubsystemAnimatedTextures::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlocksTexture>(bool)
    IL_001f:  stfld      class Game.SubsystemBlocksTexture Game.SubsystemAnimatedTextures::m_subsystemBlocksTexture
    IL_0024:  ldarg.0
    IL_0025:  ldftn      instance void Game.SubsystemAnimatedTextures::Display_DeviceReset()
    IL_002b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0030:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_0035:  ret
  } // end of method SubsystemAnimatedTextures::Load

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_0006:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.RenderTarget2D>(!!0&)
    IL_000b:  ldarg.0
    IL_000c:  ldftn      instance void Game.SubsystemAnimatedTextures::Display_DeviceReset()
    IL_0012:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0017:  call       void [Engine]Engine.Graphics.Display::remove_DeviceReset(class [System.Runtime]System.Action)
    IL_001c:  ret
  } // end of method SubsystemAnimatedTextures::Dispose

  .method private hidebysig instance void 
          Display_DeviceReset() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemAnimatedTextures::Display_DeviceReset

  .method private hidebysig instance void 
          AnimateWaterBlocksTexture() cil managed
  {
    // 代码大小       1425 (0x591)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.TexturedBatch2D V_0,
             int32 V_1,
             int32 V_2,
             float64 V_3,
             float64 V_4,
             float32 V_5,
             float32 V_6,
             uint8 V_7,
             uint8 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             valuetype [Engine]Engine.Color V_11,
             valuetype [Engine]Engine.Color V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             float32 V_16,
             valuetype [Engine]Engine.Vector2 V_17,
             valuetype [Engine]Engine.Vector2 V_18)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemAnimatedTextures::m_primitivesRenderer
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemBlocksTexture Game.SubsystemAnimatedTextures::m_subsystemBlocksTexture
    IL_000c:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::get_BlocksTexture()
    IL_0011:  ldc.i4.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0018:  ldnull
    IL_0019:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_001e:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0023:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0028:  stloc.0
    IL_0029:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002e:  ldc.i4.s   18
    IL_0030:  ldelem.ref
    IL_0031:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0036:  ldc.i4.s   16
    IL_0038:  rem
    IL_0039:  stloc.1
    IL_003a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_003f:  ldc.i4.s   18
    IL_0041:  ldelem.ref
    IL_0042:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0047:  ldc.i4.s   16
    IL_0049:  div
    IL_004a:  stloc.2
    IL_004b:  ldc.r8     1.
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_005a:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_005f:  mul
    IL_0060:  stloc.3
    IL_0061:  ldc.r8     1.
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_0070:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_007b:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0080:  conv.r8
    IL_0081:  sub
    IL_0082:  mul
    IL_0083:  stloc.s    V_4
    IL_0085:  ldloc.3
    IL_0086:  ldc.r8     2.
    IL_008f:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0094:  conv.r4
    IL_0095:  ldc.r4     1.
    IL_009a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_009f:  stloc.s    V_5
    IL_00a1:  ldloc.3
    IL_00a2:  ldc.r8     1.
    IL_00ab:  add
    IL_00ac:  ldc.r8     2.
    IL_00b5:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00ba:  conv.r4
    IL_00bb:  ldc.r4     1.
    IL_00c0:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00c5:  stloc.s    V_6
    IL_00c7:  ldc.r4     255.
    IL_00cc:  ldloc.s    V_5
    IL_00ce:  mul
    IL_00cf:  conv.u1
    IL_00d0:  stloc.s    V_7
    IL_00d2:  ldc.r4     255.
    IL_00d7:  ldloc.s    V_6
    IL_00d9:  mul
    IL_00da:  conv.u1
    IL_00db:  stloc.s    V_8
    IL_00dd:  ldloc.3
    IL_00de:  ldc.r8     2.
    IL_00e7:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00ec:  ldc.r8     1.
    IL_00f5:  blt.un.s   IL_0153

    IL_00f7:  ldloc.s    V_4
    IL_00f9:  ldc.r8     2.
    IL_0102:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0107:  ldc.r8     1.
    IL_0110:  bge.un.s   IL_0153

    IL_0112:  ldarg.0
    IL_0113:  ldc.i4.1
    IL_0114:  stfld      bool Game.SubsystemAnimatedTextures::m_waterOrder
    IL_0119:  ldarg.0
    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.Random Game.SubsystemAnimatedTextures::m_random
    IL_0120:  ldc.r4     0.0
    IL_0125:  ldc.r4     1.
    IL_012a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.Random Game.SubsystemAnimatedTextures::m_random
    IL_0135:  ldc.r4     0.0
    IL_013a:  ldc.r4     1.
    IL_013f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0144:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0149:  stfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_waterOffset2
    IL_014e:  br         IL_01d8

    IL_0153:  ldloc.3
    IL_0154:  ldc.r8     1.
    IL_015d:  add
    IL_015e:  ldc.r8     2.
    IL_0167:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_016c:  ldc.r8     1.
    IL_0175:  blt.un.s   IL_01d8

    IL_0177:  ldloc.s    V_4
    IL_0179:  ldc.r8     1.
    IL_0182:  add
    IL_0183:  ldc.r8     2.
    IL_018c:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0191:  ldc.r8     1.
    IL_019a:  bge.un.s   IL_01d8

    IL_019c:  ldarg.0
    IL_019d:  ldc.i4.0
    IL_019e:  stfld      bool Game.SubsystemAnimatedTextures::m_waterOrder
    IL_01a3:  ldarg.0
    IL_01a4:  ldarg.0
    IL_01a5:  ldfld      class Game.Random Game.SubsystemAnimatedTextures::m_random
    IL_01aa:  ldc.r4     0.0
    IL_01af:  ldc.r4     1.
    IL_01b4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01b9:  ldarg.0
    IL_01ba:  ldfld      class Game.Random Game.SubsystemAnimatedTextures::m_random
    IL_01bf:  ldc.r4     0.0
    IL_01c4:  ldc.r4     1.
    IL_01c9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01ce:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01d3:  stfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_waterOffset1
    IL_01d8:  ldloc.1
    IL_01d9:  conv.r4
    IL_01da:  ldloc.2
    IL_01db:  conv.r4
    IL_01dc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      bool Game.SubsystemAnimatedTextures::m_waterOrder
    IL_01e7:  brtrue.s   IL_01f1

    IL_01e9:  ldarg.0
    IL_01ea:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_waterOffset2
    IL_01ef:  br.s       IL_01f7

    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_waterOffset1
    IL_01f7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_01fc:  stloc.s    V_9
    IL_01fe:  ldloc.1
    IL_01ff:  conv.r4
    IL_0200:  ldloc.2
    IL_0201:  conv.r4
    IL_0202:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0207:  ldarg.0
    IL_0208:  ldfld      bool Game.SubsystemAnimatedTextures::m_waterOrder
    IL_020d:  brtrue.s   IL_0217

    IL_020f:  ldarg.0
    IL_0210:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_waterOffset1
    IL_0215:  br.s       IL_021d

    IL_0217:  ldarg.0
    IL_0218:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_waterOffset2
    IL_021d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0222:  stloc.s    V_10
    IL_0224:  ldarg.0
    IL_0225:  ldfld      bool Game.SubsystemAnimatedTextures::m_waterOrder
    IL_022a:  brtrue.s   IL_023b

    IL_022c:  ldloc.s    V_8
    IL_022e:  ldloc.s    V_8
    IL_0230:  ldloc.s    V_8
    IL_0232:  ldloc.s    V_8
    IL_0234:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0239:  br.s       IL_0248

    IL_023b:  ldloc.s    V_7
    IL_023d:  ldloc.s    V_7
    IL_023f:  ldloc.s    V_7
    IL_0241:  ldloc.s    V_7
    IL_0243:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0248:  stloc.s    V_11
    IL_024a:  ldarg.0
    IL_024b:  ldfld      bool Game.SubsystemAnimatedTextures::m_waterOrder
    IL_0250:  brtrue.s   IL_0261

    IL_0252:  ldloc.s    V_7
    IL_0254:  ldloc.s    V_7
    IL_0256:  ldloc.s    V_7
    IL_0258:  ldloc.s    V_7
    IL_025a:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_025f:  br.s       IL_026e

    IL_0261:  ldloc.s    V_8
    IL_0263:  ldloc.s    V_8
    IL_0265:  ldloc.s    V_8
    IL_0267:  ldloc.s    V_8
    IL_0269:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_026e:  stloc.s    V_12
    IL_0270:  ldc.r8     1.75
    IL_0279:  ldarg.0
    IL_027a:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_027f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0284:  mul
    IL_0285:  ldc.r8     1.
    IL_028e:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0293:  conv.r4
    IL_0294:  ldc.r4     16.
    IL_0299:  mul
    IL_029a:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_029f:  ldc.r4     16.
    IL_02a4:  div
    IL_02a5:  stloc.s    V_13
    IL_02a7:  ldloc.s    V_13
    IL_02a9:  neg
    IL_02aa:  ldc.r4     1.
    IL_02af:  add
    IL_02b0:  stloc.s    V_14
    IL_02b2:  ldc.r4     1.75
    IL_02b7:  ldc.r4     2.
    IL_02bc:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_02c1:  div
    IL_02c2:  conv.r8
    IL_02c3:  ldarg.0
    IL_02c4:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_02c9:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_02ce:  mul
    IL_02cf:  ldc.r8     1.
    IL_02d8:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_02dd:  conv.r4
    IL_02de:  ldc.r4     16.
    IL_02e3:  mul
    IL_02e4:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_02e9:  ldc.r4     16.
    IL_02ee:  div
    IL_02ef:  stloc.s    V_15
    IL_02f1:  ldloc.s    V_15
    IL_02f3:  neg
    IL_02f4:  ldc.r4     1.
    IL_02f9:  add
    IL_02fa:  stloc.s    V_16
    IL_02fc:  ldloca.s   V_17
    IL_02fe:  ldc.r4     0.0
    IL_0303:  ldc.r4     0.0
    IL_0308:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_030d:  ldloca.s   V_18
    IL_030f:  ldc.r4     1.
    IL_0314:  ldc.r4     1.
    IL_0319:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_031e:  ldarg.0
    IL_031f:  ldloc.0
    IL_0320:  ldloc.1
    IL_0321:  ldloc.2
    IL_0322:  ldloc.s    V_17
    IL_0324:  ldloc.s    V_18
    IL_0326:  ldloc.s    V_9
    IL_0328:  ldloc.s    V_11
    IL_032a:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_032f:  ldarg.0
    IL_0330:  ldloc.0
    IL_0331:  ldloc.1
    IL_0332:  ldloc.2
    IL_0333:  ldloc.s    V_17
    IL_0335:  ldloc.s    V_18
    IL_0337:  ldloc.s    V_10
    IL_0339:  ldloc.s    V_12
    IL_033b:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0340:  ldloca.s   V_17
    IL_0342:  ldloc.s    V_13
    IL_0344:  ldc.r4     0.0
    IL_0349:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_034e:  ldloca.s   V_18
    IL_0350:  ldloc.s    V_13
    IL_0352:  ldc.r4     1.
    IL_0357:  add
    IL_0358:  ldc.r4     1.
    IL_035d:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0362:  ldarg.0
    IL_0363:  ldloc.0
    IL_0364:  ldloc.1
    IL_0365:  ldc.i4.1
    IL_0366:  sub
    IL_0367:  ldloc.2
    IL_0368:  ldloc.s    V_17
    IL_036a:  ldloc.s    V_18
    IL_036c:  ldloc.s    V_9
    IL_036e:  ldloc.s    V_11
    IL_0370:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0375:  ldarg.0
    IL_0376:  ldloc.0
    IL_0377:  ldloc.1
    IL_0378:  ldc.i4.1
    IL_0379:  sub
    IL_037a:  ldloc.2
    IL_037b:  ldloc.s    V_17
    IL_037d:  ldloc.s    V_18
    IL_037f:  ldloc.s    V_10
    IL_0381:  ldloc.s    V_12
    IL_0383:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0388:  ldloca.s   V_17
    IL_038a:  ldloc.s    V_14
    IL_038c:  ldc.r4     0.0
    IL_0391:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0396:  ldloca.s   V_18
    IL_0398:  ldloc.s    V_14
    IL_039a:  ldc.r4     1.
    IL_039f:  add
    IL_03a0:  ldc.r4     1.
    IL_03a5:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03aa:  ldarg.0
    IL_03ab:  ldloc.0
    IL_03ac:  ldloc.1
    IL_03ad:  ldc.i4.1
    IL_03ae:  add
    IL_03af:  ldloc.2
    IL_03b0:  ldloc.s    V_17
    IL_03b2:  ldloc.s    V_18
    IL_03b4:  ldloc.s    V_9
    IL_03b6:  ldloc.s    V_11
    IL_03b8:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_03bd:  ldarg.0
    IL_03be:  ldloc.0
    IL_03bf:  ldloc.1
    IL_03c0:  ldc.i4.1
    IL_03c1:  add
    IL_03c2:  ldloc.2
    IL_03c3:  ldloc.s    V_17
    IL_03c5:  ldloc.s    V_18
    IL_03c7:  ldloc.s    V_10
    IL_03c9:  ldloc.s    V_12
    IL_03cb:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_03d0:  ldloca.s   V_17
    IL_03d2:  ldc.r4     0.0
    IL_03d7:  ldloc.s    V_13
    IL_03d9:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03de:  ldloca.s   V_18
    IL_03e0:  ldc.r4     1.
    IL_03e5:  ldloc.s    V_13
    IL_03e7:  ldc.r4     1.
    IL_03ec:  add
    IL_03ed:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f2:  ldarg.0
    IL_03f3:  ldloc.0
    IL_03f4:  ldloc.1
    IL_03f5:  ldloc.2
    IL_03f6:  ldc.i4.1
    IL_03f7:  sub
    IL_03f8:  ldloc.s    V_17
    IL_03fa:  ldloc.s    V_18
    IL_03fc:  ldloc.s    V_9
    IL_03fe:  ldloc.s    V_11
    IL_0400:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0405:  ldarg.0
    IL_0406:  ldloc.0
    IL_0407:  ldloc.1
    IL_0408:  ldloc.2
    IL_0409:  ldc.i4.1
    IL_040a:  sub
    IL_040b:  ldloc.s    V_17
    IL_040d:  ldloc.s    V_18
    IL_040f:  ldloc.s    V_10
    IL_0411:  ldloc.s    V_12
    IL_0413:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0418:  ldloca.s   V_17
    IL_041a:  ldc.r4     0.0
    IL_041f:  ldloc.s    V_14
    IL_0421:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0426:  ldloca.s   V_18
    IL_0428:  ldc.r4     1.
    IL_042d:  ldloc.s    V_14
    IL_042f:  ldc.r4     1.
    IL_0434:  add
    IL_0435:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_043a:  ldarg.0
    IL_043b:  ldloc.0
    IL_043c:  ldloc.1
    IL_043d:  ldloc.2
    IL_043e:  ldc.i4.1
    IL_043f:  add
    IL_0440:  ldloc.s    V_17
    IL_0442:  ldloc.s    V_18
    IL_0444:  ldloc.s    V_9
    IL_0446:  ldloc.s    V_11
    IL_0448:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_044d:  ldarg.0
    IL_044e:  ldloc.0
    IL_044f:  ldloc.1
    IL_0450:  ldloc.2
    IL_0451:  ldc.i4.1
    IL_0452:  add
    IL_0453:  ldloc.s    V_17
    IL_0455:  ldloc.s    V_18
    IL_0457:  ldloc.s    V_10
    IL_0459:  ldloc.s    V_12
    IL_045b:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0460:  ldloca.s   V_17
    IL_0462:  ldloc.s    V_15
    IL_0464:  ldloc.s    V_16
    IL_0466:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_046b:  ldloca.s   V_18
    IL_046d:  ldloc.s    V_15
    IL_046f:  ldc.r4     1.
    IL_0474:  add
    IL_0475:  ldloc.s    V_16
    IL_0477:  ldc.r4     1.
    IL_047c:  add
    IL_047d:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0482:  ldarg.0
    IL_0483:  ldloc.0
    IL_0484:  ldloc.1
    IL_0485:  ldc.i4.1
    IL_0486:  sub
    IL_0487:  ldloc.2
    IL_0488:  ldc.i4.1
    IL_0489:  add
    IL_048a:  ldloc.s    V_17
    IL_048c:  ldloc.s    V_18
    IL_048e:  ldloc.s    V_9
    IL_0490:  ldloc.s    V_11
    IL_0492:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0497:  ldarg.0
    IL_0498:  ldloc.0
    IL_0499:  ldloc.1
    IL_049a:  ldc.i4.1
    IL_049b:  sub
    IL_049c:  ldloc.2
    IL_049d:  ldc.i4.1
    IL_049e:  add
    IL_049f:  ldloc.s    V_17
    IL_04a1:  ldloc.s    V_18
    IL_04a3:  ldloc.s    V_10
    IL_04a5:  ldloc.s    V_12
    IL_04a7:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_04ac:  ldloca.s   V_17
    IL_04ae:  ldloc.s    V_16
    IL_04b0:  ldloc.s    V_16
    IL_04b2:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04b7:  ldloca.s   V_18
    IL_04b9:  ldloc.s    V_16
    IL_04bb:  ldc.r4     1.
    IL_04c0:  add
    IL_04c1:  ldloc.s    V_16
    IL_04c3:  ldc.r4     1.
    IL_04c8:  add
    IL_04c9:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04ce:  ldarg.0
    IL_04cf:  ldloc.0
    IL_04d0:  ldloc.1
    IL_04d1:  ldc.i4.1
    IL_04d2:  add
    IL_04d3:  ldloc.2
    IL_04d4:  ldc.i4.1
    IL_04d5:  add
    IL_04d6:  ldloc.s    V_17
    IL_04d8:  ldloc.s    V_18
    IL_04da:  ldloc.s    V_9
    IL_04dc:  ldloc.s    V_11
    IL_04de:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_04e3:  ldarg.0
    IL_04e4:  ldloc.0
    IL_04e5:  ldloc.1
    IL_04e6:  ldc.i4.1
    IL_04e7:  add
    IL_04e8:  ldloc.2
    IL_04e9:  ldc.i4.1
    IL_04ea:  add
    IL_04eb:  ldloc.s    V_17
    IL_04ed:  ldloc.s    V_18
    IL_04ef:  ldloc.s    V_10
    IL_04f1:  ldloc.s    V_12
    IL_04f3:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_04f8:  ldloca.s   V_17
    IL_04fa:  ldloc.s    V_15
    IL_04fc:  ldloc.s    V_15
    IL_04fe:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0503:  ldloca.s   V_18
    IL_0505:  ldloc.s    V_15
    IL_0507:  ldc.r4     1.
    IL_050c:  add
    IL_050d:  ldloc.s    V_15
    IL_050f:  ldc.r4     1.
    IL_0514:  add
    IL_0515:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_051a:  ldarg.0
    IL_051b:  ldloc.0
    IL_051c:  ldloc.1
    IL_051d:  ldc.i4.1
    IL_051e:  sub
    IL_051f:  ldloc.2
    IL_0520:  ldc.i4.1
    IL_0521:  sub
    IL_0522:  ldloc.s    V_17
    IL_0524:  ldloc.s    V_18
    IL_0526:  ldloc.s    V_9
    IL_0528:  ldloc.s    V_11
    IL_052a:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_052f:  ldarg.0
    IL_0530:  ldloc.0
    IL_0531:  ldloc.1
    IL_0532:  ldc.i4.1
    IL_0533:  sub
    IL_0534:  ldloc.2
    IL_0535:  ldc.i4.1
    IL_0536:  sub
    IL_0537:  ldloc.s    V_17
    IL_0539:  ldloc.s    V_18
    IL_053b:  ldloc.s    V_10
    IL_053d:  ldloc.s    V_12
    IL_053f:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0544:  ldloca.s   V_17
    IL_0546:  ldloc.s    V_16
    IL_0548:  ldloc.s    V_15
    IL_054a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_054f:  ldloca.s   V_18
    IL_0551:  ldloc.s    V_16
    IL_0553:  ldc.r4     1.
    IL_0558:  add
    IL_0559:  ldloc.s    V_15
    IL_055b:  ldc.r4     1.
    IL_0560:  add
    IL_0561:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0566:  ldarg.0
    IL_0567:  ldloc.0
    IL_0568:  ldloc.1
    IL_0569:  ldc.i4.1
    IL_056a:  add
    IL_056b:  ldloc.2
    IL_056c:  ldc.i4.1
    IL_056d:  sub
    IL_056e:  ldloc.s    V_17
    IL_0570:  ldloc.s    V_18
    IL_0572:  ldloc.s    V_9
    IL_0574:  ldloc.s    V_11
    IL_0576:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_057b:  ldarg.0
    IL_057c:  ldloc.0
    IL_057d:  ldloc.1
    IL_057e:  ldc.i4.1
    IL_057f:  add
    IL_0580:  ldloc.2
    IL_0581:  ldc.i4.1
    IL_0582:  sub
    IL_0583:  ldloc.s    V_17
    IL_0585:  ldloc.s    V_18
    IL_0587:  ldloc.s    V_10
    IL_0589:  ldloc.s    V_12
    IL_058b:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0590:  ret
  } // end of method SubsystemAnimatedTextures::AnimateWaterBlocksTexture

  .method private hidebysig instance void 
          AnimateMagmaBlocksTexture() cil managed
  {
    // 代码大小       1425 (0x591)
    .maxstack  8
    .locals init (class [Engine]Engine.Graphics.TexturedBatch2D V_0,
             int32 V_1,
             int32 V_2,
             float64 V_3,
             float64 V_4,
             float32 V_5,
             float32 V_6,
             uint8 V_7,
             uint8 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             valuetype [Engine]Engine.Color V_11,
             valuetype [Engine]Engine.Color V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             float32 V_16,
             valuetype [Engine]Engine.Vector2 V_17,
             valuetype [Engine]Engine.Vector2 V_18)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemAnimatedTextures::m_primitivesRenderer
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemBlocksTexture Game.SubsystemAnimatedTextures::m_subsystemBlocksTexture
    IL_000c:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::get_BlocksTexture()
    IL_0011:  ldc.i4.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0018:  ldnull
    IL_0019:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_001e:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0023:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0028:  stloc.0
    IL_0029:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002e:  ldc.i4.s   92
    IL_0030:  ldelem.ref
    IL_0031:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0036:  ldc.i4.s   16
    IL_0038:  rem
    IL_0039:  stloc.1
    IL_003a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_003f:  ldc.i4.s   92
    IL_0041:  ldelem.ref
    IL_0042:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0047:  ldc.i4.s   16
    IL_0049:  div
    IL_004a:  stloc.2
    IL_004b:  ldc.r8     0.5
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_005a:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_005f:  mul
    IL_0060:  stloc.3
    IL_0061:  ldc.r8     0.5
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_0070:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_007b:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0080:  conv.r8
    IL_0081:  sub
    IL_0082:  mul
    IL_0083:  stloc.s    V_4
    IL_0085:  ldloc.3
    IL_0086:  ldc.r8     2.
    IL_008f:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0094:  conv.r4
    IL_0095:  ldc.r4     1.
    IL_009a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_009f:  stloc.s    V_5
    IL_00a1:  ldloc.3
    IL_00a2:  ldc.r8     1.
    IL_00ab:  add
    IL_00ac:  ldc.r8     2.
    IL_00b5:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00ba:  conv.r4
    IL_00bb:  ldc.r4     1.
    IL_00c0:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00c5:  stloc.s    V_6
    IL_00c7:  ldc.r4     255.
    IL_00cc:  ldloc.s    V_5
    IL_00ce:  mul
    IL_00cf:  conv.u1
    IL_00d0:  stloc.s    V_7
    IL_00d2:  ldc.r4     255.
    IL_00d7:  ldloc.s    V_6
    IL_00d9:  mul
    IL_00da:  conv.u1
    IL_00db:  stloc.s    V_8
    IL_00dd:  ldloc.3
    IL_00de:  ldc.r8     2.
    IL_00e7:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00ec:  ldc.r8     1.
    IL_00f5:  blt.un.s   IL_0153

    IL_00f7:  ldloc.s    V_4
    IL_00f9:  ldc.r8     2.
    IL_0102:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0107:  ldc.r8     1.
    IL_0110:  bge.un.s   IL_0153

    IL_0112:  ldarg.0
    IL_0113:  ldc.i4.1
    IL_0114:  stfld      bool Game.SubsystemAnimatedTextures::m_magmaOrder
    IL_0119:  ldarg.0
    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.Random Game.SubsystemAnimatedTextures::m_random
    IL_0120:  ldc.r4     0.0
    IL_0125:  ldc.r4     1.
    IL_012a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.Random Game.SubsystemAnimatedTextures::m_random
    IL_0135:  ldc.r4     0.0
    IL_013a:  ldc.r4     1.
    IL_013f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0144:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0149:  stfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_magmaOffset2
    IL_014e:  br         IL_01d8

    IL_0153:  ldloc.3
    IL_0154:  ldc.r8     1.
    IL_015d:  add
    IL_015e:  ldc.r8     2.
    IL_0167:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_016c:  ldc.r8     1.
    IL_0175:  blt.un.s   IL_01d8

    IL_0177:  ldloc.s    V_4
    IL_0179:  ldc.r8     1.
    IL_0182:  add
    IL_0183:  ldc.r8     2.
    IL_018c:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0191:  ldc.r8     1.
    IL_019a:  bge.un.s   IL_01d8

    IL_019c:  ldarg.0
    IL_019d:  ldc.i4.0
    IL_019e:  stfld      bool Game.SubsystemAnimatedTextures::m_magmaOrder
    IL_01a3:  ldarg.0
    IL_01a4:  ldarg.0
    IL_01a5:  ldfld      class Game.Random Game.SubsystemAnimatedTextures::m_random
    IL_01aa:  ldc.r4     0.0
    IL_01af:  ldc.r4     1.
    IL_01b4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01b9:  ldarg.0
    IL_01ba:  ldfld      class Game.Random Game.SubsystemAnimatedTextures::m_random
    IL_01bf:  ldc.r4     0.0
    IL_01c4:  ldc.r4     1.
    IL_01c9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01ce:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01d3:  stfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_magmaOffset1
    IL_01d8:  ldloc.1
    IL_01d9:  conv.r4
    IL_01da:  ldloc.2
    IL_01db:  conv.r4
    IL_01dc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      bool Game.SubsystemAnimatedTextures::m_magmaOrder
    IL_01e7:  brtrue.s   IL_01f1

    IL_01e9:  ldarg.0
    IL_01ea:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_magmaOffset2
    IL_01ef:  br.s       IL_01f7

    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_magmaOffset1
    IL_01f7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_01fc:  stloc.s    V_9
    IL_01fe:  ldloc.1
    IL_01ff:  conv.r4
    IL_0200:  ldloc.2
    IL_0201:  conv.r4
    IL_0202:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0207:  ldarg.0
    IL_0208:  ldfld      bool Game.SubsystemAnimatedTextures::m_magmaOrder
    IL_020d:  brtrue.s   IL_0217

    IL_020f:  ldarg.0
    IL_0210:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_magmaOffset1
    IL_0215:  br.s       IL_021d

    IL_0217:  ldarg.0
    IL_0218:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemAnimatedTextures::m_magmaOffset2
    IL_021d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0222:  stloc.s    V_10
    IL_0224:  ldarg.0
    IL_0225:  ldfld      bool Game.SubsystemAnimatedTextures::m_magmaOrder
    IL_022a:  brtrue.s   IL_023b

    IL_022c:  ldloc.s    V_8
    IL_022e:  ldloc.s    V_8
    IL_0230:  ldloc.s    V_8
    IL_0232:  ldloc.s    V_8
    IL_0234:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0239:  br.s       IL_0248

    IL_023b:  ldloc.s    V_7
    IL_023d:  ldloc.s    V_7
    IL_023f:  ldloc.s    V_7
    IL_0241:  ldloc.s    V_7
    IL_0243:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0248:  stloc.s    V_11
    IL_024a:  ldarg.0
    IL_024b:  ldfld      bool Game.SubsystemAnimatedTextures::m_magmaOrder
    IL_0250:  brtrue.s   IL_0261

    IL_0252:  ldloc.s    V_7
    IL_0254:  ldloc.s    V_7
    IL_0256:  ldloc.s    V_7
    IL_0258:  ldloc.s    V_7
    IL_025a:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_025f:  br.s       IL_026e

    IL_0261:  ldloc.s    V_8
    IL_0263:  ldloc.s    V_8
    IL_0265:  ldloc.s    V_8
    IL_0267:  ldloc.s    V_8
    IL_0269:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_026e:  stloc.s    V_12
    IL_0270:  ldc.r8     0.40000000596046448
    IL_0279:  ldarg.0
    IL_027a:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_027f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0284:  mul
    IL_0285:  ldc.r8     1.
    IL_028e:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0293:  conv.r4
    IL_0294:  ldc.r4     16.
    IL_0299:  mul
    IL_029a:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_029f:  ldc.r4     16.
    IL_02a4:  div
    IL_02a5:  stloc.s    V_13
    IL_02a7:  ldloc.s    V_13
    IL_02a9:  neg
    IL_02aa:  ldc.r4     1.
    IL_02af:  add
    IL_02b0:  stloc.s    V_14
    IL_02b2:  ldc.r4     0.40000001
    IL_02b7:  ldc.r4     2.
    IL_02bc:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_02c1:  div
    IL_02c2:  conv.r8
    IL_02c3:  ldarg.0
    IL_02c4:  ldfld      class Game.SubsystemTime Game.SubsystemAnimatedTextures::m_subsystemTime
    IL_02c9:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_02ce:  mul
    IL_02cf:  ldc.r8     1.
    IL_02d8:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_02dd:  conv.r4
    IL_02de:  ldc.r4     16.
    IL_02e3:  mul
    IL_02e4:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_02e9:  ldc.r4     16.
    IL_02ee:  div
    IL_02ef:  stloc.s    V_15
    IL_02f1:  ldloc.s    V_15
    IL_02f3:  neg
    IL_02f4:  ldc.r4     1.
    IL_02f9:  add
    IL_02fa:  stloc.s    V_16
    IL_02fc:  ldloca.s   V_17
    IL_02fe:  ldc.r4     0.0
    IL_0303:  ldc.r4     0.0
    IL_0308:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_030d:  ldloca.s   V_18
    IL_030f:  ldc.r4     1.
    IL_0314:  ldc.r4     1.
    IL_0319:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_031e:  ldarg.0
    IL_031f:  ldloc.0
    IL_0320:  ldloc.1
    IL_0321:  ldloc.2
    IL_0322:  ldloc.s    V_17
    IL_0324:  ldloc.s    V_18
    IL_0326:  ldloc.s    V_9
    IL_0328:  ldloc.s    V_11
    IL_032a:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_032f:  ldarg.0
    IL_0330:  ldloc.0
    IL_0331:  ldloc.1
    IL_0332:  ldloc.2
    IL_0333:  ldloc.s    V_17
    IL_0335:  ldloc.s    V_18
    IL_0337:  ldloc.s    V_10
    IL_0339:  ldloc.s    V_12
    IL_033b:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0340:  ldloca.s   V_17
    IL_0342:  ldloc.s    V_13
    IL_0344:  ldc.r4     0.0
    IL_0349:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_034e:  ldloca.s   V_18
    IL_0350:  ldloc.s    V_13
    IL_0352:  ldc.r4     1.
    IL_0357:  add
    IL_0358:  ldc.r4     1.
    IL_035d:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0362:  ldarg.0
    IL_0363:  ldloc.0
    IL_0364:  ldloc.1
    IL_0365:  ldc.i4.1
    IL_0366:  sub
    IL_0367:  ldloc.2
    IL_0368:  ldloc.s    V_17
    IL_036a:  ldloc.s    V_18
    IL_036c:  ldloc.s    V_9
    IL_036e:  ldloc.s    V_11
    IL_0370:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0375:  ldarg.0
    IL_0376:  ldloc.0
    IL_0377:  ldloc.1
    IL_0378:  ldc.i4.1
    IL_0379:  sub
    IL_037a:  ldloc.2
    IL_037b:  ldloc.s    V_17
    IL_037d:  ldloc.s    V_18
    IL_037f:  ldloc.s    V_10
    IL_0381:  ldloc.s    V_12
    IL_0383:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0388:  ldloca.s   V_17
    IL_038a:  ldloc.s    V_14
    IL_038c:  ldc.r4     0.0
    IL_0391:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0396:  ldloca.s   V_18
    IL_0398:  ldloc.s    V_14
    IL_039a:  ldc.r4     1.
    IL_039f:  add
    IL_03a0:  ldc.r4     1.
    IL_03a5:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03aa:  ldarg.0
    IL_03ab:  ldloc.0
    IL_03ac:  ldloc.1
    IL_03ad:  ldc.i4.1
    IL_03ae:  add
    IL_03af:  ldloc.2
    IL_03b0:  ldloc.s    V_17
    IL_03b2:  ldloc.s    V_18
    IL_03b4:  ldloc.s    V_9
    IL_03b6:  ldloc.s    V_11
    IL_03b8:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_03bd:  ldarg.0
    IL_03be:  ldloc.0
    IL_03bf:  ldloc.1
    IL_03c0:  ldc.i4.1
    IL_03c1:  add
    IL_03c2:  ldloc.2
    IL_03c3:  ldloc.s    V_17
    IL_03c5:  ldloc.s    V_18
    IL_03c7:  ldloc.s    V_10
    IL_03c9:  ldloc.s    V_12
    IL_03cb:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_03d0:  ldloca.s   V_17
    IL_03d2:  ldc.r4     0.0
    IL_03d7:  ldloc.s    V_13
    IL_03d9:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03de:  ldloca.s   V_18
    IL_03e0:  ldc.r4     1.
    IL_03e5:  ldloc.s    V_13
    IL_03e7:  ldc.r4     1.
    IL_03ec:  add
    IL_03ed:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f2:  ldarg.0
    IL_03f3:  ldloc.0
    IL_03f4:  ldloc.1
    IL_03f5:  ldloc.2
    IL_03f6:  ldc.i4.1
    IL_03f7:  sub
    IL_03f8:  ldloc.s    V_17
    IL_03fa:  ldloc.s    V_18
    IL_03fc:  ldloc.s    V_9
    IL_03fe:  ldloc.s    V_11
    IL_0400:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0405:  ldarg.0
    IL_0406:  ldloc.0
    IL_0407:  ldloc.1
    IL_0408:  ldloc.2
    IL_0409:  ldc.i4.1
    IL_040a:  sub
    IL_040b:  ldloc.s    V_17
    IL_040d:  ldloc.s    V_18
    IL_040f:  ldloc.s    V_10
    IL_0411:  ldloc.s    V_12
    IL_0413:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0418:  ldloca.s   V_17
    IL_041a:  ldc.r4     0.0
    IL_041f:  ldloc.s    V_14
    IL_0421:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0426:  ldloca.s   V_18
    IL_0428:  ldc.r4     1.
    IL_042d:  ldloc.s    V_14
    IL_042f:  ldc.r4     1.
    IL_0434:  add
    IL_0435:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_043a:  ldarg.0
    IL_043b:  ldloc.0
    IL_043c:  ldloc.1
    IL_043d:  ldloc.2
    IL_043e:  ldc.i4.1
    IL_043f:  add
    IL_0440:  ldloc.s    V_17
    IL_0442:  ldloc.s    V_18
    IL_0444:  ldloc.s    V_9
    IL_0446:  ldloc.s    V_11
    IL_0448:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_044d:  ldarg.0
    IL_044e:  ldloc.0
    IL_044f:  ldloc.1
    IL_0450:  ldloc.2
    IL_0451:  ldc.i4.1
    IL_0452:  add
    IL_0453:  ldloc.s    V_17
    IL_0455:  ldloc.s    V_18
    IL_0457:  ldloc.s    V_10
    IL_0459:  ldloc.s    V_12
    IL_045b:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0460:  ldloca.s   V_17
    IL_0462:  ldloc.s    V_15
    IL_0464:  ldloc.s    V_16
    IL_0466:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_046b:  ldloca.s   V_18
    IL_046d:  ldloc.s    V_15
    IL_046f:  ldc.r4     1.
    IL_0474:  add
    IL_0475:  ldloc.s    V_16
    IL_0477:  ldc.r4     1.
    IL_047c:  add
    IL_047d:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0482:  ldarg.0
    IL_0483:  ldloc.0
    IL_0484:  ldloc.1
    IL_0485:  ldc.i4.1
    IL_0486:  sub
    IL_0487:  ldloc.2
    IL_0488:  ldc.i4.1
    IL_0489:  add
    IL_048a:  ldloc.s    V_17
    IL_048c:  ldloc.s    V_18
    IL_048e:  ldloc.s    V_9
    IL_0490:  ldloc.s    V_11
    IL_0492:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0497:  ldarg.0
    IL_0498:  ldloc.0
    IL_0499:  ldloc.1
    IL_049a:  ldc.i4.1
    IL_049b:  sub
    IL_049c:  ldloc.2
    IL_049d:  ldc.i4.1
    IL_049e:  add
    IL_049f:  ldloc.s    V_17
    IL_04a1:  ldloc.s    V_18
    IL_04a3:  ldloc.s    V_10
    IL_04a5:  ldloc.s    V_12
    IL_04a7:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_04ac:  ldloca.s   V_17
    IL_04ae:  ldloc.s    V_16
    IL_04b0:  ldloc.s    V_16
    IL_04b2:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04b7:  ldloca.s   V_18
    IL_04b9:  ldloc.s    V_16
    IL_04bb:  ldc.r4     1.
    IL_04c0:  add
    IL_04c1:  ldloc.s    V_16
    IL_04c3:  ldc.r4     1.
    IL_04c8:  add
    IL_04c9:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04ce:  ldarg.0
    IL_04cf:  ldloc.0
    IL_04d0:  ldloc.1
    IL_04d1:  ldc.i4.1
    IL_04d2:  add
    IL_04d3:  ldloc.2
    IL_04d4:  ldc.i4.1
    IL_04d5:  add
    IL_04d6:  ldloc.s    V_17
    IL_04d8:  ldloc.s    V_18
    IL_04da:  ldloc.s    V_9
    IL_04dc:  ldloc.s    V_11
    IL_04de:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_04e3:  ldarg.0
    IL_04e4:  ldloc.0
    IL_04e5:  ldloc.1
    IL_04e6:  ldc.i4.1
    IL_04e7:  add
    IL_04e8:  ldloc.2
    IL_04e9:  ldc.i4.1
    IL_04ea:  add
    IL_04eb:  ldloc.s    V_17
    IL_04ed:  ldloc.s    V_18
    IL_04ef:  ldloc.s    V_10
    IL_04f1:  ldloc.s    V_12
    IL_04f3:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_04f8:  ldloca.s   V_17
    IL_04fa:  ldloc.s    V_15
    IL_04fc:  ldloc.s    V_15
    IL_04fe:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0503:  ldloca.s   V_18
    IL_0505:  ldloc.s    V_15
    IL_0507:  ldc.r4     1.
    IL_050c:  add
    IL_050d:  ldloc.s    V_15
    IL_050f:  ldc.r4     1.
    IL_0514:  add
    IL_0515:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_051a:  ldarg.0
    IL_051b:  ldloc.0
    IL_051c:  ldloc.1
    IL_051d:  ldc.i4.1
    IL_051e:  sub
    IL_051f:  ldloc.2
    IL_0520:  ldc.i4.1
    IL_0521:  sub
    IL_0522:  ldloc.s    V_17
    IL_0524:  ldloc.s    V_18
    IL_0526:  ldloc.s    V_9
    IL_0528:  ldloc.s    V_11
    IL_052a:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_052f:  ldarg.0
    IL_0530:  ldloc.0
    IL_0531:  ldloc.1
    IL_0532:  ldc.i4.1
    IL_0533:  sub
    IL_0534:  ldloc.2
    IL_0535:  ldc.i4.1
    IL_0536:  sub
    IL_0537:  ldloc.s    V_17
    IL_0539:  ldloc.s    V_18
    IL_053b:  ldloc.s    V_10
    IL_053d:  ldloc.s    V_12
    IL_053f:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0544:  ldloca.s   V_17
    IL_0546:  ldloc.s    V_16
    IL_0548:  ldloc.s    V_15
    IL_054a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_054f:  ldloca.s   V_18
    IL_0551:  ldloc.s    V_16
    IL_0553:  ldc.r4     1.
    IL_0558:  add
    IL_0559:  ldloc.s    V_15
    IL_055b:  ldc.r4     1.
    IL_0560:  add
    IL_0561:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0566:  ldarg.0
    IL_0567:  ldloc.0
    IL_0568:  ldloc.1
    IL_0569:  ldc.i4.1
    IL_056a:  add
    IL_056b:  ldloc.2
    IL_056c:  ldc.i4.1
    IL_056d:  sub
    IL_056e:  ldloc.s    V_17
    IL_0570:  ldloc.s    V_18
    IL_0572:  ldloc.s    V_9
    IL_0574:  ldloc.s    V_11
    IL_0576:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_057b:  ldarg.0
    IL_057c:  ldloc.0
    IL_057d:  ldloc.1
    IL_057e:  ldc.i4.1
    IL_057f:  add
    IL_0580:  ldloc.2
    IL_0581:  ldc.i4.1
    IL_0582:  sub
    IL_0583:  ldloc.s    V_17
    IL_0585:  ldloc.s    V_18
    IL_0587:  ldloc.s    V_10
    IL_0589:  ldloc.s    V_12
    IL_058b:  call       instance void Game.SubsystemAnimatedTextures::DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D,
                                                                                             int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                             valuetype [Engine]Engine.Color)
    IL_0590:  ret
  } // end of method SubsystemAnimatedTextures::AnimateMagmaBlocksTexture

  .method private hidebysig instance valuetype [Engine]Engine.Rectangle 
          AnimateFireBlocksTexture(float32 dt) cil managed
  {
    // 代码大小       301 (0x12d)
    .maxstack  5
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldc.i4.s   104
    IL_0007:  ldelem.ref
    IL_0008:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_0013:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0018:  ldc.i4.s   16
    IL_001a:  div
    IL_001b:  conv.r4
    IL_001c:  stloc.0
    IL_001d:  dup
    IL_001e:  ldc.i4.s   16
    IL_0020:  rem
    IL_0021:  stloc.1
    IL_0022:  ldc.i4.s   16
    IL_0024:  div
    IL_0025:  stloc.2
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_002c:  ldc.r4     1.
    IL_0031:  ldloc.0
    IL_0032:  mul
    IL_0033:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticleSize(float32)
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_003e:  ldc.r4     1.9
    IL_0043:  ldloc.0
    IL_0044:  mul
    IL_0045:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticleSpeed(float32)
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_0050:  ldc.r4     24.
    IL_0055:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticlesPerSecond(float32)
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_0060:  ldc.r4     (00 00 80 7F)
    IL_0065:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_MinTimeToLive(float32)
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_0070:  ldc.r4     (00 00 80 7F)
    IL_0075:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_MaxTimeToLive(float32)
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_0080:  ldc.r4     1.
    IL_0085:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticleAnimationOffset(float32)
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_0090:  ldc.r4     3.
    IL_0095:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_ParticleAnimationPeriod(float32)
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_00a0:  ldloc.1
    IL_00a1:  conv.r4
    IL_00a2:  ldloc.2
    IL_00a3:  ldc.i4.3
    IL_00a4:  add
    IL_00a5:  conv.r4
    IL_00a6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ab:  ldloc.0
    IL_00ac:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00b1:  ldc.r4     0.0
    IL_00b6:  ldc.r4     0.5
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_00c1:  callvirt   instance float32 Game.ScreenSpaceFireRenderer::get_ParticleSize()
    IL_00c6:  mul
    IL_00c7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00cc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00d1:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_Origin(valuetype [Engine]Engine.Vector2)
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_00dc:  ldloc.0
    IL_00dd:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_Width(float32)
    IL_00e2:  ldarg.0
    IL_00e3:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_00e8:  ldloc.2
    IL_00e9:  conv.r4
    IL_00ea:  ldloc.0
    IL_00eb:  mul
    IL_00ec:  callvirt   instance void Game.ScreenSpaceFireRenderer::set_CutoffPosition(float32)
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_00f7:  ldarg.1
    IL_00f8:  callvirt   instance void Game.ScreenSpaceFireRenderer::Update(float32)
    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_0103:  ldarg.0
    IL_0104:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemAnimatedTextures::m_primitivesRenderer
    IL_0109:  ldc.r4     0.0
    IL_010e:  callvirt   instance void Game.ScreenSpaceFireRenderer::Draw(class [Engine]Engine.Graphics.PrimitivesRenderer2D,
                                                                          float32)
    IL_0113:  ldloc.1
    IL_0114:  conv.r4
    IL_0115:  ldloc.0
    IL_0116:  mul
    IL_0117:  conv.i4
    IL_0118:  ldloc.2
    IL_0119:  conv.r4
    IL_011a:  ldloc.0
    IL_011b:  mul
    IL_011c:  conv.i4
    IL_011d:  ldloc.0
    IL_011e:  conv.i4
    IL_011f:  ldloc.0
    IL_0120:  ldc.r4     3.
    IL_0125:  mul
    IL_0126:  conv.i4
    IL_0127:  newobj     instance void [Engine]Engine.Rectangle::.ctor(int32,
                                                                       int32,
                                                                       int32,
                                                                       int32)
    IL_012c:  ret
  } // end of method SubsystemAnimatedTextures::AnimateFireBlocksTexture

  .method private hidebysig instance void 
          DrawBlocksTextureSlot(class [Engine]Engine.Graphics.TexturedBatch2D batch,
                                int32 slotX,
                                int32 slotY,
                                valuetype [Engine]Engine.Vector2 tc1,
                                valuetype [Engine]Engine.Vector2 tc2,
                                valuetype [Engine]Engine.Vector2 tcOffset,
                                valuetype [Engine]Engine.Color color) cil managed
  {
    // 代码大小       105 (0x69)
    .maxstack  7
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemAnimatedTextures::m_animatedBlocksTexture
    IL_0006:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_000b:  conv.r4
    IL_000c:  ldc.r4     16.
    IL_0011:  div
    IL_0012:  stloc.0
    IL_0013:  ldarg.1
    IL_0014:  ldarg.2
    IL_0015:  conv.r4
    IL_0016:  ldarg.3
    IL_0017:  conv.r4
    IL_0018:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_001d:  ldloc.0
    IL_001e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0023:  ldarg.2
    IL_0024:  ldc.i4.1
    IL_0025:  add
    IL_0026:  conv.r4
    IL_0027:  ldarg.3
    IL_0028:  ldc.i4.1
    IL_0029:  add
    IL_002a:  conv.r4
    IL_002b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0030:  ldloc.0
    IL_0031:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0036:  ldc.r4     0.0
    IL_003b:  ldarg.s    tc1
    IL_003d:  ldarg.s    tcOffset
    IL_003f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0044:  ldc.r4     16.
    IL_0049:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_004e:  ldarg.s    tc2
    IL_0050:  ldarg.s    tcOffset
    IL_0052:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0057:  ldc.r4     16.
    IL_005c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0061:  ldarg.s    color
    IL_0063:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0068:  ret
  } // end of method SubsystemAnimatedTextures::DrawBlocksTextureSlot

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemAnimatedTextures::m_primitivesRenderer
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4     0xc8
    IL_0011:  newobj     instance void Game.ScreenSpaceFireRenderer::.ctor(int32)
    IL_0016:  stfld      class Game.ScreenSpaceFireRenderer Game.SubsystemAnimatedTextures::m_screenSpaceFireRenderer
    IL_001b:  ldarg.0
    IL_001c:  newobj     instance void Game.Random::.ctor()
    IL_0021:  stfld      class Game.Random Game.SubsystemAnimatedTextures::m_random
    IL_0026:  ldarg.0
    IL_0027:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_002c:  ret
  } // end of method SubsystemAnimatedTextures::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xfffff830
    IL_000d:  stelem.i4
    IL_000e:  stsfld     int32[] Game.SubsystemAnimatedTextures::m_drawOrders
    IL_0013:  ret
  } // end of method SubsystemAnimatedTextures::.cctor

  .property instance class [Engine]Engine.Graphics.Texture2D
          AnimatedBlocksTexture()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
  } // end of property SubsystemAnimatedTextures::AnimatedBlocksTexture
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemAnimatedTextures::get_DrawOrders()
  } // end of property SubsystemAnimatedTextures::DrawOrders
} // end of class Game.SubsystemAnimatedTextures