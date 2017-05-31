.class public auto ansi beforefieldinit Game.SubsystemScaler
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
  .field private class [Engine]Engine.Graphics.RenderTarget2D m_renderTarget
  .field private bool m_restoreRequired
  .field private class [Engine]Engine.Graphics.RenderTarget2D m_originalRenderTarget
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer2D m_primitivesRenderer
  .field private class Game.SubsystemGui m_subsystemGui
  .field public static bool ScalerEnabled
  .field private bool '<IsScalerEnabled>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance bool 
          get_IsScalerEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemScaler::'<IsScalerEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemScaler::get_IsScalerEnabled

  .method public hidebysig specialname instance void 
          set_IsScalerEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.SubsystemScaler::'<IsScalerEnabled>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemScaler::set_IsScalerEnabled

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemScaler::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemScaler::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       467 (0x1d3)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             valuetype [Engine]Engine.Point2 V_1,
             valuetype [Engine]Engine.Point2 V_2,
             valuetype [Engine]Engine.Graphics.Viewport V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5)
    IL_0000:  ldsfld     bool Game.SubsystemScaler::ScalerEnabled
    IL_0005:  brfalse.s  IL_000f

    IL_0007:  ldarg.0
    IL_0008:  call       instance bool Game.SubsystemScaler::get_IsScalerEnabled()
    IL_000d:  brtrue.s   IL_0010

    IL_000f:  ret

    IL_0010:  ldarg.2
    IL_0011:  ldsfld     int32[] Game.SubsystemScaler::m_drawOrders
    IL_0016:  ldc.i4.0
    IL_0017:  ldelem.i4
    IL_0018:  bne.un     IL_00e6

    IL_001d:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0022:  stloc.0
    IL_0023:  call       valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_DesiredGameResolution()
    IL_0028:  stloc.1
    IL_0029:  ldloca.s   V_2
    IL_002b:  ldloc.0
    IL_002c:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0031:  ldloc.0
    IL_0032:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0037:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_003c:  ldloc.0
    IL_003d:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0042:  ldloc.0
    IL_0043:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0048:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_004d:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0052:  ldloc.1
    IL_0053:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0058:  ldloc.2
    IL_0059:  ldfld      int32 [Engine]Engine.Point2::X
    IL_005e:  blt.s      IL_006e

    IL_0060:  ldloc.1
    IL_0061:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0066:  ldloc.2
    IL_0067:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_006c:  bge.s      IL_00de

    IL_006e:  ldarg.0
    IL_006f:  call       class [Engine]Engine.Graphics.RenderTarget2D [Engine]Engine.Graphics.Display::get_RenderTarget()
    IL_0074:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemScaler::m_originalRenderTarget
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemScaler::m_renderTarget
    IL_007f:  brfalse.s  IL_00a7

    IL_0081:  ldarg.0
    IL_0082:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemScaler::m_renderTarget
    IL_0087:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_008c:  ldloc.1
    IL_008d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0092:  bne.un.s   IL_00a7

    IL_0094:  ldarg.0
    IL_0095:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemScaler::m_renderTarget
    IL_009a:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_009f:  ldloc.1
    IL_00a0:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00a5:  beq.s      IL_00cb

    IL_00a7:  ldarg.0
    IL_00a8:  ldflda     class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemScaler::m_renderTarget
    IL_00ad:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.RenderTarget2D>(!!0&)
    IL_00b2:  ldarg.0
    IL_00b3:  ldloc.1
    IL_00b4:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00b9:  ldloc.1
    IL_00ba:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00bf:  ldc.i4.0
    IL_00c0:  ldc.i4.1
    IL_00c1:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_00c6:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemScaler::m_renderTarget
    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemScaler::m_renderTarget
    IL_00d1:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
    IL_00d6:  ldarg.0
    IL_00d7:  ldc.i4.1
    IL_00d8:  stfld      bool Game.SubsystemScaler::m_restoreRequired
    IL_00dd:  ret

    IL_00de:  ldarg.0
    IL_00df:  ldc.i4.0
    IL_00e0:  stfld      bool Game.SubsystemScaler::m_restoreRequired
    IL_00e5:  ret

    IL_00e6:  ldarg.2
    IL_00e7:  ldsfld     int32[] Game.SubsystemScaler::m_drawOrders
    IL_00ec:  ldc.i4.1
    IL_00ed:  ldelem.i4
    IL_00ee:  bne.un     IL_01d2

    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      bool Game.SubsystemScaler::m_restoreRequired
    IL_00f9:  brfalse    IL_01d2

    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.SubsystemGui Game.SubsystemScaler::m_subsystemGui
    IL_0104:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemGui::PrimitivesRenderer2D
    IL_0109:  ldarg.1
    IL_010a:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_010f:  ldc.i4.1
    IL_0110:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch2D,class [Engine]Engine.Graphics.TexturedBatch2D,class [Engine]Engine.Graphics.FontBatch2D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_0115:  ldarg.0
    IL_0116:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemScaler::m_originalRenderTarget
    IL_011b:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
    IL_0120:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_0125:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
    IL_012a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
    IL_012f:  ldc.r4     1.
    IL_0134:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0139:  ldc.i4.0
    IL_013a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_013f:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                     valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                     valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0144:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0149:  stloc.3
    IL_014a:  ldloca.s   V_4
    IL_014c:  ldloc.3
    IL_014d:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_0152:  conv.r4
    IL_0153:  ldloc.3
    IL_0154:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0159:  conv.r4
    IL_015a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_015f:  ldloca.s   V_5
    IL_0161:  ldloc.3
    IL_0162:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_0167:  ldloc.3
    IL_0168:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_016d:  add
    IL_016e:  conv.r4
    IL_016f:  ldloc.3
    IL_0170:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0175:  ldloc.3
    IL_0176:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_017b:  add
    IL_017c:  conv.r4
    IL_017d:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0182:  ldarg.0
    IL_0183:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemScaler::m_primitivesRenderer
    IL_0188:  ldarg.0
    IL_0189:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.SubsystemScaler::m_renderTarget
    IL_018e:  ldc.i4.0
    IL_018f:  ldc.i4.0
    IL_0190:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0195:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNone
    IL_019a:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_019f:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_01a4:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_01a9:  ldloc.s    V_4
    IL_01ab:  ldloc.s    V_5
    IL_01ad:  ldc.r4     0.0
    IL_01b2:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_01b7:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_01bc:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01c1:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_01c6:  ldarg.0
    IL_01c7:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemScaler::m_primitivesRenderer
    IL_01cc:  ldc.i4.1
    IL_01cd:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_01d2:  ret
  } // end of method SubsystemScaler::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_000d:  stfld      class Game.SubsystemGui Game.SubsystemScaler::m_subsystemGui
    IL_0012:  ldarg.0
    IL_0013:  ldftn      instance void Game.SubsystemScaler::Display_DeviceReset()
    IL_0019:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_001e:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.1
    IL_0025:  call       instance void Game.SubsystemScaler::set_IsScalerEnabled(bool)
    IL_002a:  ret
  } // end of method SubsystemScaler::Load

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.SubsystemScaler::Display_DeviceReset()
    IL_0007:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_000c:  call       void [Engine]Engine.Graphics.Display::remove_DeviceReset(class [System.Runtime]System.Action)
    IL_0011:  ret
  } // end of method SubsystemScaler::Dispose

  .method private hidebysig instance void 
          Display_DeviceReset() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemScaler::Display_DeviceReset

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemScaler::m_primitivesRenderer
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemScaler::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  stsfld     bool Game.SubsystemScaler::ScalerEnabled
    IL_0006:  ldc.i4.2
    IL_0007:  newarr     [System.Runtime]System.Int32
    IL_000c:  dup
    IL_000d:  ldc.i4.0
    IL_000e:  ldc.i4     0xfffffc18
    IL_0013:  stelem.i4
    IL_0014:  dup
    IL_0015:  ldc.i4.1
    IL_0016:  ldc.i4     0x3e8
    IL_001b:  stelem.i4
    IL_001c:  stsfld     int32[] Game.SubsystemScaler::m_drawOrders
    IL_0021:  ret
  } // end of method SubsystemScaler::.cctor

  .property instance bool IsScalerEnabled()
  {
    .get instance bool Game.SubsystemScaler::get_IsScalerEnabled()
    .set instance void Game.SubsystemScaler::set_IsScalerEnabled(bool)
  } // end of property SubsystemScaler::IsScalerEnabled
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemScaler::get_DrawOrders()
  } // end of property SubsystemScaler::DrawOrders
} // end of class Game.SubsystemScaler