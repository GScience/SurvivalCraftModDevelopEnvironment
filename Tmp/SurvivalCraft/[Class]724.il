.class public auto ansi beforefieldinit Game.SubsystemGlow
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.GlowPoint,bool> m_glowPoints
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer
  .field private class [Engine]Engine.Graphics.TexturedBatch3D[] m_batchesByType
  .field private static int32[] m_drawOrders
  .method public hidebysig instance class Game.GlowPoint 
          AddGlowPoint() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  3
    .locals init (class Game.GlowPoint V_0)
    IL_0000:  newobj     instance void Game.GlowPoint::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.GlowPoint,bool> Game.SubsystemGlow::m_glowPoints
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.1
    IL_000e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.GlowPoint,bool>::Add(!0,
                                                                                                                                         !1)
    IL_0013:  ldloc.0
    IL_0014:  ret
  } // end of method SubsystemGlow::AddGlowPoint

  .method public hidebysig instance void 
          RemoveGlowPoint(class Game.GlowPoint glowPoint) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.GlowPoint,bool> Game.SubsystemGlow::m_glowPoints
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.GlowPoint,bool>::Remove(!0)
    IL_000c:  pop
    IL_000d:  ret
  } // end of method SubsystemGlow::RemoveGlowPoint

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemGlow::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemGlow::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       530 (0x212)
    .maxstack  10
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.GlowPoint,bool> V_0,
             class Game.GlowPoint V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.GlowPoint,bool> Game.SubsystemGlow::m_glowPoints
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.GlowPoint,bool>::get_Keys()
    IL_000b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.GlowPoint,bool>::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br         IL_01de

      IL_0016:  ldloca.s   V_0
      IL_0018:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.GlowPoint,bool>::get_Current()
      IL_001d:  stloc.1
      IL_001e:  ldloc.1
      IL_001f:  ldflda     valuetype [Engine]Engine.Color Game.GlowPoint::Color
      IL_0024:  call       instance uint8 [Engine]Engine.Color::get_A()
      IL_0029:  ldc.i4.0
      IL_002a:  ble        IL_01de

      IL_002f:  ldloc.1
      IL_0030:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
      IL_0035:  ldarg.1
      IL_0036:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_003b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_0040:  stloc.2
      IL_0041:  ldloc.2
      IL_0042:  ldarg.1
      IL_0043:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
      IL_0048:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                               valuetype [Engine]Engine.Vector3)
      IL_004d:  stloc.3
      IL_004e:  ldloc.3
      IL_004f:  ldc.r4     9.9999998e-003
      IL_0054:  ble.un     IL_01de

      IL_0059:  ldloca.s   V_2
      IL_005b:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_0060:  stloc.s    V_4
      IL_0062:  ldloc.s    V_4
      IL_0064:  ldarg.0
      IL_0065:  ldfld      class Game.SubsystemSky Game.SubsystemGlow::m_subsystemSky
      IL_006a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
      IL_006f:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0074:  bge.un     IL_01de

      IL_0079:  ldloc.1
      IL_007a:  ldfld      float32 Game.GlowPoint::Size
      IL_007f:  stloc.s    V_5
      IL_0081:  ldloc.1
      IL_0082:  ldfld      float32 Game.GlowPoint::FarDistance
      IL_0087:  ldc.r4     0.0
      IL_008c:  ble.un.s   IL_00af

      IL_008e:  ldloc.s    V_5
      IL_0090:  ldloc.1
      IL_0091:  ldfld      float32 Game.GlowPoint::FarSize
      IL_0096:  ldloc.1
      IL_0097:  ldfld      float32 Game.GlowPoint::Size
      IL_009c:  sub
      IL_009d:  ldloc.s    V_4
      IL_009f:  ldloc.1
      IL_00a0:  ldfld      float32 Game.GlowPoint::FarDistance
      IL_00a5:  div
      IL_00a6:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_00ab:  mul
      IL_00ac:  add
      IL_00ad:  stloc.s    V_5
      IL_00af:  ldc.r4     9.9999998e-003
      IL_00b4:  ldc.r4     2.e-002
      IL_00b9:  ldloc.3
      IL_00ba:  mul
      IL_00bb:  add
      IL_00bc:  neg
      IL_00bd:  ldloc.s    V_4
      IL_00bf:  div
      IL_00c0:  ldloc.2
      IL_00c1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00c6:  stloc.s    V_6
      IL_00c8:  ldloc.1
      IL_00c9:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
      IL_00ce:  ldloc.s    V_5
      IL_00d0:  ldloc.1
      IL_00d1:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
      IL_00d6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
      IL_00db:  ldloc.1
      IL_00dc:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
      IL_00e1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_00e6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00eb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00f0:  ldloc.s    V_6
      IL_00f2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00f7:  stloc.s    V_7
      IL_00f9:  ldloc.1
      IL_00fa:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
      IL_00ff:  ldloc.s    V_5
      IL_0101:  ldloc.1
      IL_0102:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
      IL_0107:  ldloc.1
      IL_0108:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
      IL_010d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_0112:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0117:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_011c:  ldloc.s    V_6
      IL_011e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0123:  stloc.s    V_8
      IL_0125:  ldloc.1
      IL_0126:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
      IL_012b:  ldloc.s    V_5
      IL_012d:  ldloc.1
      IL_012e:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
      IL_0133:  ldloc.1
      IL_0134:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
      IL_0139:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_013e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0143:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0148:  ldloc.s    V_6
      IL_014a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_014f:  stloc.s    V_9
      IL_0151:  ldloc.1
      IL_0152:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
      IL_0157:  ldloc.s    V_5
      IL_0159:  ldloc.1
      IL_015a:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
      IL_015f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
      IL_0164:  ldloc.1
      IL_0165:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
      IL_016a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_016f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0174:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0179:  ldloc.s    V_6
      IL_017b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0180:  stloc.s    V_10
      IL_0182:  ldarg.0
      IL_0183:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
      IL_0188:  ldloc.1
      IL_0189:  ldfld      valuetype Game.GlowPointType Game.GlowPoint::Type
      IL_018e:  ldelem.ref
      IL_018f:  ldloc.s    V_7
      IL_0191:  ldloc.s    V_8
      IL_0193:  ldloc.s    V_9
      IL_0195:  ldloc.s    V_10
      IL_0197:  ldc.r4     0.0
      IL_019c:  ldc.r4     0.0
      IL_01a1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01a6:  ldc.r4     1.
      IL_01ab:  ldc.r4     0.0
      IL_01b0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01b5:  ldc.r4     1.
      IL_01ba:  ldc.r4     1.
      IL_01bf:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01c4:  ldc.r4     0.0
      IL_01c9:  ldc.r4     1.
      IL_01ce:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01d3:  ldloc.1
      IL_01d4:  ldfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
      IL_01d9:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Color)
      IL_01de:  ldloca.s   V_0
      IL_01e0:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.GlowPoint,bool>::MoveNext()
      IL_01e5:  brtrue     IL_0016

      IL_01ea:  leave.s    IL_01fa

    }  // end .try
    finally
    {
      IL_01ec:  ldloca.s   V_0
      IL_01ee:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.GlowPoint,bool>
      IL_01f4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01f9:  endfinally
    }  // end handler
    IL_01fa:  ldarg.0
    IL_01fb:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_0200:  ldarg.1
    IL_0201:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_0206:  ldc.i4.1
    IL_0207:  ldc.i4     0x7fffffff
    IL_020c:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_0211:  ret
  } // end of method SubsystemGlow::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       223 (0xdf)
    .maxstack  10
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_000d:  stfld      class Game.SubsystemSky Game.SubsystemGlow::m_subsystemSky
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
    IL_0018:  ldc.i4.0
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_001f:  ldstr      "Textures/RoundGlow"
    IL_0024:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0029:  ldc.i4.0
    IL_002a:  ldc.i4.0
    IL_002b:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0030:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_0035:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_003a:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_003f:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0044:  stelem.ref
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
    IL_004b:  ldc.i4.1
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_0052:  ldstr      "Textures/SquareGlow"
    IL_0057:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_005c:  ldc.i4.0
    IL_005d:  ldc.i4.0
    IL_005e:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0063:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_0068:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_006d:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_0072:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0077:  stelem.ref
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
    IL_007e:  ldc.i4.2
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_0085:  ldstr      "Textures/HorizontalRectGlow"
    IL_008a:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_008f:  ldc.i4.0
    IL_0090:  ldc.i4.0
    IL_0091:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0096:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_009b:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_00a0:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_00a5:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_00aa:  stelem.ref
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
    IL_00b1:  ldc.i4.3
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_00b8:  ldstr      "Textures/VerticalRectGlow"
    IL_00bd:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00c2:  ldc.i4.0
    IL_00c3:  ldc.i4.0
    IL_00c4:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_00c9:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_00ce:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_00d3:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_00d8:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_00dd:  stelem.ref
    IL_00de:  ret
  } // end of method SubsystemGlow::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.GlowPoint,bool>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.GlowPoint,bool> Game.SubsystemGlow::m_glowPoints
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0011:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.4
    IL_0018:  newarr     [Engine]Engine.Graphics.TexturedBatch3D
    IL_001d:  stfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
    IL_0022:  ldarg.0
    IL_0023:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0028:  ret
  } // end of method SubsystemGlow::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   110
    IL_000a:  stelem.i4
    IL_000b:  stsfld     int32[] Game.SubsystemGlow::m_drawOrders
    IL_0010:  ret
  } // end of method SubsystemGlow::.cctor

  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemGlow::get_DrawOrders()
  } // end of property SubsystemGlow::DrawOrders
} // end of class Game.SubsystemGlow