.class public auto ansi beforefieldinit Game.SubsystemGlow
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
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
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       502 (0x1f6)
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
      IL_0011:  br         IL_01c7

      IL_0016:  ldloca.s   V_0
      IL_0018:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.GlowPoint,bool>::get_Current()
      IL_001d:  stloc.1
      IL_001e:  ldloc.1
      IL_001f:  ldflda     valuetype [Engine]Engine.Color Game.GlowPoint::Color
      IL_0024:  call       instance uint8 [Engine]Engine.Color::get_A()
      IL_0029:  ldc.i4.0
      IL_002a:  ble        IL_01c7

      IL_002f:  ldloc.1
      IL_0030:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
      IL_0035:  ldarg.1
      IL_0036:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
      IL_003b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_0040:  stloc.2
      IL_0041:  ldloc.2
      IL_0042:  ldarg.1
      IL_0043:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
      IL_0048:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                               valuetype [Engine]Engine.Vector3)
      IL_004d:  stloc.3
      IL_004e:  ldloc.3
      IL_004f:  ldc.r4     9.9999998e-003
      IL_0054:  ble.un     IL_01c7

      IL_0059:  ldloca.s   V_2
      IL_005b:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_0060:  stloc.s    V_4
      IL_0062:  ldloc.1
      IL_0063:  ldfld      float32 Game.GlowPoint::Size
      IL_0068:  stloc.s    V_5
      IL_006a:  ldloc.1
      IL_006b:  ldfld      float32 Game.GlowPoint::FarDistance
      IL_0070:  ldc.r4     0.0
      IL_0075:  ble.un.s   IL_0098

      IL_0077:  ldloc.s    V_5
      IL_0079:  ldloc.1
      IL_007a:  ldfld      float32 Game.GlowPoint::FarSize
      IL_007f:  ldloc.1
      IL_0080:  ldfld      float32 Game.GlowPoint::Size
      IL_0085:  sub
      IL_0086:  ldloc.s    V_4
      IL_0088:  ldloc.1
      IL_0089:  ldfld      float32 Game.GlowPoint::FarDistance
      IL_008e:  div
      IL_008f:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_0094:  mul
      IL_0095:  add
      IL_0096:  stloc.s    V_5
      IL_0098:  ldc.r4     9.9999998e-003
      IL_009d:  ldc.r4     2.e-002
      IL_00a2:  ldloc.3
      IL_00a3:  mul
      IL_00a4:  add
      IL_00a5:  neg
      IL_00a6:  ldloc.s    V_4
      IL_00a8:  div
      IL_00a9:  ldloc.2
      IL_00aa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00af:  stloc.s    V_6
      IL_00b1:  ldloc.1
      IL_00b2:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
      IL_00b7:  ldloc.s    V_5
      IL_00b9:  ldloc.1
      IL_00ba:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
      IL_00bf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
      IL_00c4:  ldloc.1
      IL_00c5:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
      IL_00ca:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_00cf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00d4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00d9:  ldloc.s    V_6
      IL_00db:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_00e0:  stloc.s    V_7
      IL_00e2:  ldloc.1
      IL_00e3:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
      IL_00e8:  ldloc.s    V_5
      IL_00ea:  ldloc.1
      IL_00eb:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
      IL_00f0:  ldloc.1
      IL_00f1:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
      IL_00f6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_00fb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0100:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0105:  ldloc.s    V_6
      IL_0107:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_010c:  stloc.s    V_8
      IL_010e:  ldloc.1
      IL_010f:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
      IL_0114:  ldloc.s    V_5
      IL_0116:  ldloc.1
      IL_0117:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
      IL_011c:  ldloc.1
      IL_011d:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
      IL_0122:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0127:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_012c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0131:  ldloc.s    V_6
      IL_0133:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0138:  stloc.s    V_9
      IL_013a:  ldloc.1
      IL_013b:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Position
      IL_0140:  ldloc.s    V_5
      IL_0142:  ldloc.1
      IL_0143:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Right
      IL_0148:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
      IL_014d:  ldloc.1
      IL_014e:  ldfld      valuetype [Engine]Engine.Vector3 Game.GlowPoint::Up
      IL_0153:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0158:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_015d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0162:  ldloc.s    V_6
      IL_0164:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0169:  stloc.s    V_10
      IL_016b:  ldarg.0
      IL_016c:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
      IL_0171:  ldloc.1
      IL_0172:  ldfld      valuetype Game.GlowPointType Game.GlowPoint::Type
      IL_0177:  ldelem.ref
      IL_0178:  ldloc.s    V_7
      IL_017a:  ldloc.s    V_8
      IL_017c:  ldloc.s    V_9
      IL_017e:  ldloc.s    V_10
      IL_0180:  ldc.r4     0.0
      IL_0185:  ldc.r4     0.0
      IL_018a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_018f:  ldc.r4     1.
      IL_0194:  ldc.r4     0.0
      IL_0199:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_019e:  ldc.r4     1.
      IL_01a3:  ldc.r4     1.
      IL_01a8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01ad:  ldc.r4     0.0
      IL_01b2:  ldc.r4     1.
      IL_01b7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01bc:  ldloc.1
      IL_01bd:  ldfld      valuetype [Engine]Engine.Color Game.GlowPoint::Color
      IL_01c2:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Color)
      IL_01c7:  ldloca.s   V_0
      IL_01c9:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.GlowPoint,bool>::MoveNext()
      IL_01ce:  brtrue     IL_0016

      IL_01d3:  leave.s    IL_01e3

    }  // end .try
    finally
    {
      IL_01d5:  ldloca.s   V_0
      IL_01d7:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.GlowPoint,bool>
      IL_01dd:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01e2:  endfinally
    }  // end handler
    IL_01e3:  ldarg.0
    IL_01e4:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_01e9:  ldarg.1
    IL_01ea:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_01ef:  ldc.i4.1
    IL_01f0:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_01f5:  ret
  } // end of method SubsystemGlow::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       205 (0xcd)
    .maxstack  10
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
    IL_0006:  ldc.i4.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_000d:  ldstr      "Textures/RoundGlow"
    IL_0012:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0017:  ldc.i4.0
    IL_0018:  ldc.i4.0
    IL_0019:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_001e:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_0023:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0028:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_002d:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0032:  stelem.ref
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
    IL_0039:  ldc.i4.1
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_0040:  ldstr      "Textures/SquareGlow"
    IL_0045:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_004a:  ldc.i4.0
    IL_004b:  ldc.i4.0
    IL_004c:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0051:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_0056:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_005b:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_0060:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0065:  stelem.ref
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
    IL_006c:  ldc.i4.2
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_0073:  ldstr      "Textures/HorizontalRectGlow"
    IL_0078:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_007d:  ldc.i4.0
    IL_007e:  ldc.i4.0
    IL_007f:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0084:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_0089:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_008e:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_0093:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0098:  stelem.ref
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D[] Game.SubsystemGlow::m_batchesByType
    IL_009f:  ldc.i4.3
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemGlow::m_primitivesRenderer
    IL_00a6:  ldstr      "Textures/VerticalRectGlow"
    IL_00ab:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00b0:  ldc.i4.0
    IL_00b1:  ldc.i4.0
    IL_00b2:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_00b7:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_00bc:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_00c1:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_00c6:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_00cb:  stelem.ref
    IL_00cc:  ret
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