.class public auto ansi beforefieldinit Game.SubsystemModelsRenderer
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
  .class auto ansi nested private beforefieldinit ModelData
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.IComparable`1<class Game.SubsystemModelsRenderer/ModelData>
  {
    .field public class Game.ComponentModel ComponentModel
    .field public class Game.ComponentBody ComponentBody
    .field public float32 Light
    .field public float64 NextLightTime
    .field public int32 LastAnimateFrame
    .method public hidebysig newslot virtual final 
            instance int32  CompareTo(class Game.SubsystemModelsRenderer/ModelData other) cil managed
    {
      // 代码大小       48 (0x30)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_0006:  brtrue.s   IL_000b

      IL_0008:  ldc.i4.0
      IL_0009:  br.s       IL_0016

      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_0011:  callvirt   instance int32 Game.ComponentModel::get_PrepareOrder()
      IL_0016:  ldarg.1
      IL_0017:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_001c:  brtrue.s   IL_0021

      IL_001e:  ldc.i4.0
      IL_001f:  br.s       IL_002c

      IL_0021:  ldarg.1
      IL_0022:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_0027:  callvirt   instance int32 Game.ComponentModel::get_PrepareOrder()
      IL_002c:  stloc.0
      IL_002d:  ldloc.0
      IL_002e:  sub
      IL_002f:  ret
    } // end of method ModelData::CompareTo

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method ModelData::.ctor

  } // end of class ModelData

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemShadows m_subsystemShadows
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer
  .field private static class [Engine]Engine.Graphics.LitShader m_normalShader
  .field private static class [Engine]Engine.Graphics.LitShader m_normalShaderAlpha
  .field private static class [Engine]Engine.Graphics.LitShader m_instancedShader
  .field private static class [Engine]Engine.Graphics.LitShader m_instancedShaderAlpha
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData> m_componentModels
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> m_modelsToPrepare
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] m_modelsToDraw
  .field public static bool DisableDrawingModels
  .field public static bool DisableModelsInstancing
  .field public int32 ModelsDrawn
  .field private int32[] m_drawOrders
  .method public hidebysig specialname instance class [Engine]Engine.Graphics.PrimitivesRenderer3D 
          get_PrimitivesRenderer() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::m_primitivesRenderer
    IL_0006:  ret
  } // end of method SubsystemModelsRenderer::get_PrimitivesRenderer

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.SubsystemModelsRenderer::m_drawOrders
    IL_0006:  ret
  } // end of method SubsystemModelsRenderer::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       571 (0x23b)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData> V_2,
             class Game.SubsystemModelsRenderer/ModelData V_3,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData> V_4,
             class Game.SubsystemModelsRenderer/ModelData V_5,
             valuetype [System.Runtime]System.Nullable`1<float32> V_6)
    IL_0000:  ldarg.2
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32[] Game.SubsystemModelsRenderer::m_drawOrders
    IL_0007:  ldc.i4.0
    IL_0008:  ldelem.i4
    IL_0009:  bne.un     IL_0105

    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.0
    IL_0010:  stfld      int32 Game.SubsystemModelsRenderer::ModelsDrawn
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_001b:  stloc.0
    IL_001c:  ldc.i4.0
    IL_001d:  stloc.1
    IL_001e:  br.s       IL_002c

    IL_0020:  ldloc.0
    IL_0021:  ldloc.1
    IL_0022:  ldelem.ref
    IL_0023:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::Clear()
    IL_0028:  ldloc.1
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stloc.1
    IL_002c:  ldloc.1
    IL_002d:  ldloc.0
    IL_002e:  ldlen
    IL_002f:  conv.i4
    IL_0030:  blt.s      IL_0020

    IL_0032:  ldarg.0
    IL_0033:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_modelsToPrepare
    IL_0038:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::Clear()
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_componentModels
    IL_0043:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData>::get_Values()
    IL_0048:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData>::GetEnumerator()
    IL_004d:  stloc.2
    .try
    {
      IL_004e:  br.s       IL_008a

      IL_0050:  ldloca.s   V_2
      IL_0052:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData>::get_Current()
      IL_0057:  stloc.3
      IL_0058:  ldloc.3
      IL_0059:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_005e:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
      IL_0063:  brfalse.s  IL_008a

      IL_0065:  ldloc.3
      IL_0066:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_006b:  ldarg.1
      IL_006c:  callvirt   instance void Game.ComponentModel::CalculateIsVisible(class Game.Camera)
      IL_0071:  ldloc.3
      IL_0072:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_0077:  callvirt   instance bool Game.ComponentModel::get_IsVisibleForCamera()
      IL_007c:  brfalse.s  IL_008a

      IL_007e:  ldarg.0
      IL_007f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_modelsToPrepare
      IL_0084:  ldloc.3
      IL_0085:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::Add(!0)
      IL_008a:  ldloca.s   V_2
      IL_008c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData>::MoveNext()
      IL_0091:  brtrue.s   IL_0050

      IL_0093:  leave.s    IL_00a3

    }  // end .try
    finally
    {
      IL_0095:  ldloca.s   V_2
      IL_0097:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData>
      IL_009d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a2:  endfinally
    }  // end handler
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_modelsToPrepare
    IL_00a9:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::Sort()
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_modelsToPrepare
    IL_00b4:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::GetEnumerator()
    IL_00b9:  stloc.s    V_4
    .try
    {
      IL_00bb:  br.s       IL_00e9

      IL_00bd:  ldloca.s   V_4
      IL_00bf:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::get_Current()
      IL_00c4:  stloc.s    V_5
      IL_00c6:  ldarg.0
      IL_00c7:  ldloc.s    V_5
      IL_00c9:  ldarg.1
      IL_00ca:  call       instance void Game.SubsystemModelsRenderer::PrepareModel(class Game.SubsystemModelsRenderer/ModelData,
                                                                                    class Game.Camera)
      IL_00cf:  ldarg.0
      IL_00d0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
      IL_00d5:  ldloc.s    V_5
      IL_00d7:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_00dc:  callvirt   instance valuetype Game.ModelRenderingMode Game.ComponentModel::get_RenderingMode()
      IL_00e1:  ldelem.ref
      IL_00e2:  ldloc.s    V_5
      IL_00e4:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::Add(!0)
      IL_00e9:  ldloca.s   V_4
      IL_00eb:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::MoveNext()
      IL_00f0:  brtrue.s   IL_00bd

      IL_00f2:  leave      IL_023a

    }  // end .try
    finally
    {
      IL_00f7:  ldloca.s   V_4
      IL_00f9:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>
      IL_00ff:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0104:  endfinally
    }  // end handler
    IL_0105:  ldsfld     bool Game.SubsystemModelsRenderer::DisableDrawingModels
    IL_010a:  brtrue     IL_022f

    IL_010f:  ldarg.2
    IL_0110:  ldarg.0
    IL_0111:  ldfld      int32[] Game.SubsystemModelsRenderer::m_drawOrders
    IL_0116:  ldc.i4.1
    IL_0117:  ldelem.i4
    IL_0118:  bne.un.s   IL_0192

    IL_011a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_011f:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_0124:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_0129:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_012e:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_0133:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_0138:  ldarg.0
    IL_0139:  ldarg.1
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_0140:  ldc.i4.0
    IL_0141:  ldelem.ref
    IL_0142:  ldloca.s   V_6
    IL_0144:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_014a:  ldloc.s    V_6
    IL_014c:  call       instance void Game.SubsystemModelsRenderer::DrawModels(class Game.Camera,
                                                                                class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0151:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNoneScissor
    IL_0156:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_015b:  ldarg.0
    IL_015c:  ldarg.1
    IL_015d:  ldarg.0
    IL_015e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_0163:  ldc.i4.1
    IL_0164:  ldelem.ref
    IL_0165:  ldc.r4     0.0
    IL_016a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_016f:  call       instance void Game.SubsystemModelsRenderer::DrawModels(class Game.Camera,
                                                                                class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0174:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_0179:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_017e:  ldarg.0
    IL_017f:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::m_primitivesRenderer
    IL_0184:  ldarg.1
    IL_0185:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ProjectionMatrix()
    IL_018a:  ldc.i4.1
    IL_018b:  ldc.i4.0
    IL_018c:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_0191:  ret

    IL_0192:  ldarg.2
    IL_0193:  ldarg.0
    IL_0194:  ldfld      int32[] Game.SubsystemModelsRenderer::m_drawOrders
    IL_0199:  ldc.i4.2
    IL_019a:  ldelem.i4
    IL_019b:  bne.un.s   IL_01d5

    IL_019d:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_01a2:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_01a7:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNoneScissor
    IL_01ac:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_01b1:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_01b6:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_01bb:  ldarg.0
    IL_01bc:  ldarg.1
    IL_01bd:  ldarg.0
    IL_01be:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_01c3:  ldc.i4.2
    IL_01c4:  ldelem.ref
    IL_01c5:  ldloca.s   V_6
    IL_01c7:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_01cd:  ldloc.s    V_6
    IL_01cf:  call       instance void Game.SubsystemModelsRenderer::DrawModels(class Game.Camera,
                                                                                class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_01d4:  ret

    IL_01d5:  ldarg.2
    IL_01d6:  ldarg.0
    IL_01d7:  ldfld      int32[] Game.SubsystemModelsRenderer::m_drawOrders
    IL_01dc:  ldc.i4.3
    IL_01dd:  ldelem.i4
    IL_01de:  bne.un.s   IL_023a

    IL_01e0:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_01e5:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_01ea:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNoneScissor
    IL_01ef:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_01f4:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_01f9:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_01fe:  ldarg.0
    IL_01ff:  ldarg.1
    IL_0200:  ldarg.0
    IL_0201:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_0206:  ldc.i4.3
    IL_0207:  ldelem.ref
    IL_0208:  ldloca.s   V_6
    IL_020a:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_0210:  ldloc.s    V_6
    IL_0212:  call       instance void Game.SubsystemModelsRenderer::DrawModels(class Game.Camera,
                                                                                class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0217:  ldarg.0
    IL_0218:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::m_primitivesRenderer
    IL_021d:  ldarg.1
    IL_021e:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ProjectionMatrix()
    IL_0223:  ldc.i4.1
    IL_0224:  ldc.i4     0x7fffffff
    IL_0229:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_022e:  ret

    IL_022f:  ldarg.0
    IL_0230:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::m_primitivesRenderer
    IL_0235:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Clear()
    IL_023a:  ret
  } // end of method SubsystemModelsRenderer::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.SubsystemModelsRenderer::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_001f:  stfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemShadows>(bool)
    IL_0031:  stfld      class Game.SubsystemShadows Game.SubsystemModelsRenderer::m_subsystemShadows
    IL_0036:  ret
  } // end of method SubsystemModelsRenderer::Load

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       111 (0x6f)
    .maxstack  3
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentModel> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentModel> V_1,
             class Game.ComponentModel V_2,
             class Game.SubsystemModelsRenderer/ModelData V_3)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentModel>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentModel>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0055

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentModel>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  newobj     instance void Game.SubsystemModelsRenderer/ModelData::.ctor()
      IL_001e:  dup
      IL_001f:  ldloc.2
      IL_0020:  stfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_0025:  dup
      IL_0026:  ldloc.2
      IL_0027:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>()
      IL_0031:  stfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
      IL_0036:  dup
      IL_0037:  ldarg.0
      IL_0038:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
      IL_003d:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
      IL_0042:  stfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_0047:  stloc.3
      IL_0048:  ldarg.0
      IL_0049:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_componentModels
      IL_004e:  ldloc.2
      IL_004f:  ldloc.3
      IL_0050:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData>::Add(!0,
                                                                                                                                                                                        !1)
      IL_0055:  ldloca.s   V_0
      IL_0057:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentModel>::MoveNext()
      IL_005c:  brtrue.s   IL_0011

      IL_005e:  leave.s    IL_006e

    }  // end .try
    finally
    {
      IL_0060:  ldloca.s   V_0
      IL_0062:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentModel>
      IL_0068:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_006d:  endfinally
    }  // end handler
    IL_006e:  ret
  } // end of method SubsystemModelsRenderer::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentModel> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentModel> V_1,
             class Game.ComponentModel V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentModel>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentModel>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0026

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentModel>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_componentModels
      IL_001f:  ldloc.2
      IL_0020:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData>::Remove(!0)
      IL_0025:  pop
      IL_0026:  ldloca.s   V_0
      IL_0028:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentModel>::MoveNext()
      IL_002d:  brtrue.s   IL_0011

      IL_002f:  leave.s    IL_003f

    }  // end .try
    finally
    {
      IL_0031:  ldloca.s   V_0
      IL_0033:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentModel>
      IL_0039:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003e:  endfinally
    }  // end handler
    IL_003f:  ret
  } // end of method SubsystemModelsRenderer::OnEntityRemoved

  .method private hidebysig instance void 
          PrepareModel(class Game.SubsystemModelsRenderer/ModelData modelData,
                       class Game.Camera camera) cil managed
  {
    // 代码大小       112 (0x70)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0)
    IL_0000:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0005:  ldarg.1
    IL_0006:  ldfld      int32 Game.SubsystemModelsRenderer/ModelData::LastAnimateFrame
    IL_000b:  ble.s      IL_0023

    IL_000d:  ldarg.1
    IL_000e:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
    IL_0013:  callvirt   instance void Game.ComponentModel::Animate()
    IL_0018:  ldarg.1
    IL_0019:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_001e:  stfld      int32 Game.SubsystemModelsRenderer/ModelData::LastAnimateFrame
    IL_0023:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0028:  ldarg.1
    IL_0029:  ldfld      float64 Game.SubsystemModelsRenderer/ModelData::NextLightTime
    IL_002e:  blt.un.s   IL_0063

    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemModelsRenderer::CalculateModelLight(class Game.SubsystemModelsRenderer/ModelData)
    IL_0037:  stloc.0
    IL_0038:  ldloca.s   V_0
    IL_003a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_003f:  brfalse.s  IL_004e

    IL_0041:  ldarg.1
    IL_0042:  ldloca.s   V_0
    IL_0044:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0049:  stfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
    IL_004e:  ldarg.1
    IL_004f:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0054:  ldc.r8     0.10000000000000001
    IL_005d:  add
    IL_005e:  stfld      float64 Game.SubsystemModelsRenderer/ModelData::NextLightTime
    IL_0063:  ldarg.1
    IL_0064:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
    IL_0069:  ldarg.2
    IL_006a:  callvirt   instance void Game.ComponentModel::CalculateAbsoluteBonesTransforms(class Game.Camera)
    IL_006f:  ret
  } // end of method SubsystemModelsRenderer::PrepareModel

  .method private hidebysig instance void 
          DrawModels(class Game.Camera camera,
                     class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> modelsData,
                     valuetype [System.Runtime]System.Nullable`1<float32> alphaThreshold) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SubsystemModelsRenderer::DisableModelsInstancing
    IL_0005:  brtrue.s   IL_0019

    IL_0007:  call       bool Game.SettingsManager::get_InvisibleModelsWorkaround()
    IL_000c:  brtrue.s   IL_0019

    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  ldarg.2
    IL_0011:  ldarg.3
    IL_0012:  call       instance void Game.SubsystemModelsRenderer::DrawInstancedModels(class Game.Camera,
                                                                                         class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                         valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0017:  br.s       IL_0022

    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  ldarg.2
    IL_001c:  ldarg.3
    IL_001d:  call       instance void Game.SubsystemModelsRenderer::DrawNormalModels(class Game.Camera,
                                                                                      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                      valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0022:  ldarg.0
    IL_0023:  ldarg.1
    IL_0024:  ldarg.2
    IL_0025:  call       instance void Game.SubsystemModelsRenderer::DrawModelsExtras(class Game.Camera,
                                                                                      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>)
    IL_002a:  ret
  } // end of method SubsystemModelsRenderer::DrawModels

  .method private hidebysig instance void 
          DrawNormalModels(class Game.Camera camera,
                           class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> modelsData,
                           valuetype [System.Runtime]System.Nullable`1<float32> alphaThreshold) cil managed
  {
    // 代码大小       667 (0x29b)
    .maxstack  6
    .locals init (class [Engine]Engine.Graphics.LitShader V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData> V_1,
             class Game.SubsystemModelsRenderer/ModelData V_2,
             class Game.ComponentModel V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_6,
             valuetype [System.Runtime]System.Nullable`1<float32> V_7,
             int32 V_8,
             class [Engine]Engine.Graphics.ModelMesh V_9,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_10,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart> V_11,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_12,
             class [Engine]Engine.Graphics.ModelMeshPart V_13)
    IL_0000:  ldarga.s   alphaThreshold
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0007:  brtrue.s   IL_0010

    IL_0009:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.SubsystemModelsRenderer::m_normalShader
    IL_000e:  br.s       IL_0015

    IL_0010:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.SubsystemModelsRenderer::m_normalShaderAlpha
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection1
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_0022:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0027:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_002c:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_LightDirection1(valuetype [Engine]Engine.Vector3)
    IL_0031:  ldloc.0
    IL_0032:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection2
    IL_0037:  ldarg.1
    IL_0038:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_003d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0042:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0047:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_LightDirection2(valuetype [Engine]Engine.Vector3)
    IL_004c:  ldloc.0
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_0053:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_ViewFogColor()
    IL_0058:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_005d:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_FogColor(valuetype [Engine]Engine.Vector3)
    IL_0062:  ldloc.0
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_0069:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_006e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0073:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_FogStart(float32)
    IL_0078:  ldloc.0
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_007f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_0084:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_008f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_0094:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0099:  sub
    IL_009a:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_FogLength(float32)
    IL_009f:  ldloc.0
    IL_00a0:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
    IL_00a5:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_00aa:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms::set_View(valuetype [Engine]Engine.Matrix)
    IL_00af:  ldloc.0
    IL_00b0:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
    IL_00b5:  ldarg.1
    IL_00b6:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ProjectionMatrix()
    IL_00bb:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms::set_Projection(valuetype [Engine]Engine.Matrix)
    IL_00c0:  ldloc.0
    IL_00c1:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_00c6:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_SamplerState(class [Engine]Engine.Graphics.SamplerState)
    IL_00cb:  ldarga.s   alphaThreshold
    IL_00cd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_00d2:  brfalse.s  IL_00e1

    IL_00d4:  ldloc.0
    IL_00d5:  ldarga.s   alphaThreshold
    IL_00d7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00dc:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_AlphaThreshold(float32)
    IL_00e1:  ldarg.2
    IL_00e2:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::GetEnumerator()
    IL_00e7:  stloc.1
    .try
    {
      IL_00e8:  br         IL_027e

      IL_00ed:  ldloca.s   V_1
      IL_00ef:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::get_Current()
      IL_00f4:  stloc.2
      IL_00f5:  ldloc.2
      IL_00f6:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_00fb:  stloc.3
      IL_00fc:  ldloc.3
      IL_00fd:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::get_DiffuseColor()
      IL_0102:  stloc.s    V_6
      IL_0104:  ldloca.s   V_6
      IL_0106:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_010b:  brtrue.s   IL_0114

      IL_010d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::One
      IL_0112:  br.s       IL_0123

      IL_0114:  ldloc.3
      IL_0115:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::get_DiffuseColor()
      IL_011a:  stloc.s    V_6
      IL_011c:  ldloca.s   V_6
      IL_011e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_0123:  stloc.s    V_4
      IL_0125:  ldloc.3
      IL_0126:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
      IL_012b:  stloc.s    V_7
      IL_012d:  ldloca.s   V_7
      IL_012f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_0134:  brtrue.s   IL_013d

      IL_0136:  ldc.r4     1.
      IL_013b:  br.s       IL_014c

      IL_013d:  ldloc.3
      IL_013e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
      IL_0143:  stloc.s    V_7
      IL_0145:  ldloca.s   V_7
      IL_0147:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_014c:  stloc.s    V_5
      IL_014e:  ldloc.0
      IL_014f:  ldloc.s    V_4
      IL_0151:  ldloc.s    V_5
      IL_0153:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0158:  ldloc.s    V_5
      IL_015a:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Vector3,
                                                                       float32)
      IL_015f:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_MaterialColor(valuetype [Engine]Engine.Vector4)
      IL_0164:  ldloc.0
      IL_0165:  ldloc.3
      IL_0166:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ComponentModel::get_TextureOverride()
      IL_016b:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_Texture(class [Engine]Engine.Graphics.Texture2D)
      IL_0170:  ldloc.0
      IL_0171:  ldsfld     float32 Game.LightingManager::LightAmbient
      IL_0176:  ldloc.2
      IL_0177:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_017c:  mul
      IL_017d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_0182:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_AmbientLightColor(valuetype [Engine]Engine.Vector3)
      IL_0187:  ldloc.0
      IL_0188:  ldloc.2
      IL_0189:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_018e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_0193:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_DiffuseLightColor1(valuetype [Engine]Engine.Vector3)
      IL_0198:  ldloc.0
      IL_0199:  ldloc.2
      IL_019a:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_019f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_01a4:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_DiffuseLightColor2(valuetype [Engine]Engine.Vector3)
      IL_01a9:  ldc.i4.0
      IL_01aa:  stloc.s    V_8
      IL_01ac:  br         IL_0261

      IL_01b1:  ldloc.3
      IL_01b2:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
      IL_01b7:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
      IL_01bc:  stloc.s    V_10
      IL_01be:  ldloca.s   V_10
      IL_01c0:  ldloc.3
      IL_01c1:  callvirt   instance int32[] Game.ComponentModel::get_MeshDrawOrders()
      IL_01c6:  ldloc.s    V_8
      IL_01c8:  ldelem.i4
      IL_01c9:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::get_Item(int32)
      IL_01ce:  stloc.s    V_9
      IL_01d0:  ldloc.0
      IL_01d1:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
      IL_01d6:  callvirt   instance class [Engine]Engine.Graphics.ShaderTransforms/WorldMatrixList [Engine]Engine.Graphics.ShaderTransforms::get_World()
      IL_01db:  ldc.i4.0
      IL_01dc:  ldloc.3
      IL_01dd:  callvirt   instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransformsForCamera()
      IL_01e2:  ldloc.s    V_9
      IL_01e4:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_01e9:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_01ee:  ldelem     [Engine]Engine.Matrix
      IL_01f3:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms/WorldMatrixList::set_Item(int32,
                                                                                                            valuetype [Engine]Engine.Matrix)
      IL_01f8:  ldloc.s    V_9
      IL_01fa:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_01ff:  stloc.s    V_12
      IL_0201:  ldloca.s   V_12
      IL_0203:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
      IL_0208:  stloc.s    V_11
      .try
      {
        IL_020a:  br.s       IL_0242

        IL_020c:  ldloca.s   V_11
        IL_020e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
        IL_0213:  stloc.s    V_13
        IL_0215:  ldloc.s    V_13
        IL_0217:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
        IL_021c:  ldc.i4.0
        IL_021d:  ble.s      IL_0242

        IL_021f:  ldc.i4.2
        IL_0220:  ldloc.0
        IL_0221:  ldloc.s    V_13
        IL_0223:  callvirt   instance class [Engine]Engine.Graphics.VertexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_VertexBuffer()
        IL_0228:  ldloc.s    V_13
        IL_022a:  callvirt   instance class [Engine]Engine.Graphics.IndexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_IndexBuffer()
        IL_022f:  ldloc.s    V_13
        IL_0231:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
        IL_0236:  ldloc.s    V_13
        IL_0238:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
        IL_023d:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                               class [Engine]Engine.Graphics.Shader,
                                                                               class [Engine]Engine.Graphics.VertexBuffer,
                                                                               class [Engine]Engine.Graphics.IndexBuffer,
                                                                               int32,
                                                                               int32)
        IL_0242:  ldloca.s   V_11
        IL_0244:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
        IL_0249:  brtrue.s   IL_020c

        IL_024b:  leave.s    IL_025b

      }  // end .try
      finally
      {
        IL_024d:  ldloca.s   V_11
        IL_024f:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
        IL_0255:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_025a:  endfinally
      }  // end handler
      IL_025b:  ldloc.s    V_8
      IL_025d:  ldc.i4.1
      IL_025e:  add
      IL_025f:  stloc.s    V_8
      IL_0261:  ldloc.s    V_8
      IL_0263:  ldloc.3
      IL_0264:  callvirt   instance int32[] Game.ComponentModel::get_MeshDrawOrders()
      IL_0269:  ldlen
      IL_026a:  conv.i4
      IL_026b:  blt        IL_01b1

      IL_0270:  ldarg.0
      IL_0271:  ldarg.0
      IL_0272:  ldfld      int32 Game.SubsystemModelsRenderer::ModelsDrawn
      IL_0277:  ldc.i4.1
      IL_0278:  add
      IL_0279:  stfld      int32 Game.SubsystemModelsRenderer::ModelsDrawn
      IL_027e:  ldloca.s   V_1
      IL_0280:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::MoveNext()
      IL_0285:  brtrue     IL_00ed

      IL_028a:  leave.s    IL_029a

    }  // end .try
    finally
    {
      IL_028c:  ldloca.s   V_1
      IL_028e:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>
      IL_0294:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0299:  endfinally
    }  // end handler
    IL_029a:  ret
  } // end of method SubsystemModelsRenderer::DrawNormalModels

  .method private hidebysig instance void 
          DrawInstancedModels(class Game.Camera camera,
                              class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> modelsData,
                              valuetype [System.Runtime]System.Nullable`1<float32> alphaThreshold) cil managed
  {
    // 代码大小       560 (0x230)
    .maxstack  6
    .locals init (class [Engine]Engine.Graphics.LitShader V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData> V_1,
             class Game.SubsystemModelsRenderer/ModelData V_2,
             class Game.ComponentModel V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5,
             class Game.InstancedModelData V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_7,
             valuetype [System.Runtime]System.Nullable`1<float32> V_8)
    IL_0000:  ldarga.s   alphaThreshold
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0007:  brtrue.s   IL_0010

    IL_0009:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.SubsystemModelsRenderer::m_instancedShader
    IL_000e:  br.s       IL_0015

    IL_0010:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.SubsystemModelsRenderer::m_instancedShaderAlpha
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection1
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_0022:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0027:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_002c:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_LightDirection1(valuetype [Engine]Engine.Vector3)
    IL_0031:  ldloc.0
    IL_0032:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection2
    IL_0037:  ldarg.1
    IL_0038:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
    IL_003d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0042:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0047:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_LightDirection2(valuetype [Engine]Engine.Vector3)
    IL_004c:  ldloc.0
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_0053:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_ViewFogColor()
    IL_0058:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_005d:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_FogColor(valuetype [Engine]Engine.Vector3)
    IL_0062:  ldloc.0
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_0069:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_006e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0073:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_FogStart(float32)
    IL_0078:  ldloc.0
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_007f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_0084:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_008f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_0094:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0099:  sub
    IL_009a:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_FogLength(float32)
    IL_009f:  ldloc.0
    IL_00a0:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
    IL_00a5:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_00aa:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms::set_View(valuetype [Engine]Engine.Matrix)
    IL_00af:  ldloc.0
    IL_00b0:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
    IL_00b5:  ldarg.1
    IL_00b6:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ProjectionMatrix()
    IL_00bb:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms::set_Projection(valuetype [Engine]Engine.Matrix)
    IL_00c0:  ldloc.0
    IL_00c1:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_00c6:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_SamplerState(class [Engine]Engine.Graphics.SamplerState)
    IL_00cb:  ldarga.s   alphaThreshold
    IL_00cd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_00d2:  brfalse.s  IL_00e1

    IL_00d4:  ldloc.0
    IL_00d5:  ldarga.s   alphaThreshold
    IL_00d7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00dc:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_AlphaThreshold(float32)
    IL_00e1:  ldarg.2
    IL_00e2:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::GetEnumerator()
    IL_00e7:  stloc.1
    .try
    {
      IL_00e8:  br         IL_0213

      IL_00ed:  ldloca.s   V_1
      IL_00ef:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::get_Current()
      IL_00f4:  stloc.2
      IL_00f5:  ldloc.2
      IL_00f6:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_00fb:  stloc.3
      IL_00fc:  ldloc.3
      IL_00fd:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::get_DiffuseColor()
      IL_0102:  stloc.s    V_7
      IL_0104:  ldloca.s   V_7
      IL_0106:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_010b:  brtrue.s   IL_0114

      IL_010d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::One
      IL_0112:  br.s       IL_0123

      IL_0114:  ldloc.3
      IL_0115:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::get_DiffuseColor()
      IL_011a:  stloc.s    V_7
      IL_011c:  ldloca.s   V_7
      IL_011e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_0123:  stloc.s    V_4
      IL_0125:  ldloc.3
      IL_0126:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
      IL_012b:  stloc.s    V_8
      IL_012d:  ldloca.s   V_8
      IL_012f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_0134:  brtrue.s   IL_013d

      IL_0136:  ldc.r4     1.
      IL_013b:  br.s       IL_014c

      IL_013d:  ldloc.3
      IL_013e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
      IL_0143:  stloc.s    V_8
      IL_0145:  ldloca.s   V_8
      IL_0147:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_014c:  stloc.s    V_5
      IL_014e:  ldloc.0
      IL_014f:  ldloc.3
      IL_0150:  callvirt   instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransformsForCamera()
      IL_0155:  ldlen
      IL_0156:  conv.i4
      IL_0157:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_InstancesCount(int32)
      IL_015c:  ldloc.0
      IL_015d:  ldloc.s    V_4
      IL_015f:  ldloc.s    V_5
      IL_0161:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0166:  ldloc.s    V_5
      IL_0168:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Vector3,
                                                                       float32)
      IL_016d:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_MaterialColor(valuetype [Engine]Engine.Vector4)
      IL_0172:  ldloc.0
      IL_0173:  ldsfld     float32 Game.LightingManager::LightAmbient
      IL_0178:  ldloc.2
      IL_0179:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_017e:  mul
      IL_017f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_0184:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_AmbientLightColor(valuetype [Engine]Engine.Vector3)
      IL_0189:  ldloc.0
      IL_018a:  ldloc.2
      IL_018b:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_0190:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_0195:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_DiffuseLightColor1(valuetype [Engine]Engine.Vector3)
      IL_019a:  ldloc.0
      IL_019b:  ldloc.2
      IL_019c:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_01a1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_01a6:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_DiffuseLightColor2(valuetype [Engine]Engine.Vector3)
      IL_01ab:  ldloc.0
      IL_01ac:  ldloc.3
      IL_01ad:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ComponentModel::get_TextureOverride()
      IL_01b2:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_Texture(class [Engine]Engine.Graphics.Texture2D)
      IL_01b7:  ldloc.0
      IL_01b8:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
      IL_01bd:  ldloc.3
      IL_01be:  callvirt   instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransformsForCamera()
      IL_01c3:  ldloc.3
      IL_01c4:  callvirt   instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransformsForCamera()
      IL_01c9:  ldlen
      IL_01ca:  conv.i4
      IL_01cb:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms::SetWorldMatrices(valuetype [Engine]Engine.Matrix[],
                                                                                                    int32)
      IL_01d0:  ldloc.3
      IL_01d1:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
      IL_01d6:  ldloc.3
      IL_01d7:  callvirt   instance int32[] Game.ComponentModel::get_MeshDrawOrders()
      IL_01dc:  call       class Game.InstancedModelData Game.InstancedModelsManager::GetInstancedModelData(class [Engine]Engine.Graphics.Model,
                                                                                                            int32[])
      IL_01e1:  stloc.s    V_6
      IL_01e3:  ldc.i4.2
      IL_01e4:  ldloc.0
      IL_01e5:  ldloc.s    V_6
      IL_01e7:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.InstancedModelData::VertexBuffer
      IL_01ec:  ldloc.s    V_6
      IL_01ee:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.InstancedModelData::IndexBuffer
      IL_01f3:  ldc.i4.0
      IL_01f4:  ldloc.s    V_6
      IL_01f6:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.InstancedModelData::IndexBuffer
      IL_01fb:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
      IL_0200:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                             class [Engine]Engine.Graphics.Shader,
                                                                             class [Engine]Engine.Graphics.VertexBuffer,
                                                                             class [Engine]Engine.Graphics.IndexBuffer,
                                                                             int32,
                                                                             int32)
      IL_0205:  ldarg.0
      IL_0206:  ldarg.0
      IL_0207:  ldfld      int32 Game.SubsystemModelsRenderer::ModelsDrawn
      IL_020c:  ldc.i4.1
      IL_020d:  add
      IL_020e:  stfld      int32 Game.SubsystemModelsRenderer::ModelsDrawn
      IL_0213:  ldloca.s   V_1
      IL_0215:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::MoveNext()
      IL_021a:  brtrue     IL_00ed

      IL_021f:  leave.s    IL_022f

    }  // end .try
    finally
    {
      IL_0221:  ldloca.s   V_1
      IL_0223:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>
      IL_0229:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_022e:  endfinally
    }  // end handler
    IL_022f:  ret
  } // end of method SubsystemModelsRenderer::DrawInstancedModels

  .method private hidebysig instance void 
          DrawModelsExtras(class Game.Camera camera,
                           class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> modelsData) cil managed
  {
    // 代码大小       219 (0xdb)
    .maxstack  5
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData> V_0,
             class Game.SubsystemModelsRenderer/ModelData V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.BoundingBox V_3,
             float32 V_4,
             valuetype [System.Runtime]System.Nullable`1<float32> V_5)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::GetEnumerator()
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  br         IL_00be

      IL_000c:  ldloca.s   V_0
      IL_000e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::get_Current()
      IL_0013:  stloc.1
      IL_0014:  ldloc.1
      IL_0015:  ldfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
      IL_001a:  brfalse    IL_00b2

      IL_001f:  ldloc.1
      IL_0020:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_0025:  callvirt   instance bool Game.ComponentModel::get_CastsShadow()
      IL_002a:  brfalse    IL_00b2

      IL_002f:  ldloc.1
      IL_0030:  ldfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
      IL_0035:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_003a:  ldc.r4     0.0
      IL_003f:  ldc.r4     0.1
      IL_0044:  ldc.r4     0.0
      IL_0049:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_004e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0053:  stloc.2
      IL_0054:  ldloc.1
      IL_0055:  ldfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
      IL_005a:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
      IL_005f:  stloc.3
      IL_0060:  ldc.r4     2.25
      IL_0065:  ldloc.3
      IL_0066:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_006b:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0070:  ldloc.3
      IL_0071:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_0076:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_007b:  sub
      IL_007c:  mul
      IL_007d:  stloc.s    V_4
      IL_007f:  ldarg.0
      IL_0080:  ldfld      class Game.SubsystemShadows Game.SubsystemModelsRenderer::m_subsystemShadows
      IL_0085:  ldarg.1
      IL_0086:  ldloc.2
      IL_0087:  ldloc.s    V_4
      IL_0089:  ldloc.1
      IL_008a:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_008f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
      IL_0094:  stloc.s    V_5
      IL_0096:  ldloca.s   V_5
      IL_0098:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_009d:  brtrue.s   IL_00a6

      IL_009f:  ldc.r4     1.
      IL_00a4:  br.s       IL_00ad

      IL_00a6:  ldloca.s   V_5
      IL_00a8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::GetValueOrDefault()
      IL_00ad:  callvirt   instance void Game.SubsystemShadows::QueueShadow(class Game.Camera,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            float32)
      IL_00b2:  ldloc.1
      IL_00b3:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_00b8:  ldarg.1
      IL_00b9:  callvirt   instance void Game.ComponentModel::DrawExtras(class Game.Camera)
      IL_00be:  ldloca.s   V_0
      IL_00c0:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::MoveNext()
      IL_00c5:  brtrue     IL_000c

      IL_00ca:  leave.s    IL_00da

    }  // end .try
    finally
    {
      IL_00cc:  ldloca.s   V_0
      IL_00ce:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>
      IL_00d4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d9:  endfinally
    }  // end handler
    IL_00da:  ret
  } // end of method SubsystemModelsRenderer::DrawModelsExtras

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<float32> 
          CalculateModelLight(class Game.SubsystemModelsRenderer/ModelData modelData) cil managed
  {
    // 代码大小       186 (0xba)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_1,
             valuetype [Engine]Engine.Matrix V_2)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
    IL_0006:  brfalse.s  IL_0052

    IL_0008:  ldarg.1
    IL_0009:  ldfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0013:  stloc.0
    IL_0014:  ldloca.s   V_0
    IL_0016:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_001b:  dup
    IL_001c:  ldind.r4
    IL_001d:  ldc.r4     0.94999999
    IL_0022:  ldarg.1
    IL_0023:  ldfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
    IL_0028:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_002d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0032:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0037:  ldarg.1
    IL_0038:  ldfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
    IL_003d:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0042:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0047:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_004c:  sub
    IL_004d:  mul
    IL_004e:  add
    IL_004f:  stind.r4
    IL_0050:  br.s       IL_00ad

    IL_0052:  ldarg.1
    IL_0053:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
    IL_0058:  ldarg.1
    IL_0059:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
    IL_005e:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0063:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::get_RootBone()
    IL_0068:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_006d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.ComponentModel::GetBoneTransform(int32)
    IL_0072:  stloc.1
    IL_0073:  ldloca.s   V_1
    IL_0075:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_007a:  brfalse.s  IL_00a7

    IL_007c:  ldloca.s   V_1
    IL_007e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0083:  stloc.2
    IL_0084:  ldloca.s   V_2
    IL_0086:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_008b:  ldc.r4     0.0
    IL_0090:  ldc.r4     0.89999998
    IL_0095:  ldc.r4     0.0
    IL_009a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_009f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00a4:  stloc.0
    IL_00a5:  br.s       IL_00ad

    IL_00a7:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_00ac:  stloc.0
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.SubsystemTerrain Game.SubsystemModelsRenderer::m_subsystemTerrain
    IL_00b3:  ldloc.0
    IL_00b4:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.LightingManager::CalculateSmoothLight(class Game.SubsystemTerrain,
                                                                                                                         valuetype [Engine]Engine.Vector3)
    IL_00b9:  ret
  } // end of method SubsystemModelsRenderer::CalculateModelLight

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::m_primitivesRenderer
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_componentModels
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_modelsToPrepare
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.4
    IL_0023:  newarr     class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>
    IL_0028:  dup
    IL_0029:  ldc.i4.0
    IL_002a:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_002f:  stelem.ref
    IL_0030:  dup
    IL_0031:  ldc.i4.1
    IL_0032:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_0037:  stelem.ref
    IL_0038:  dup
    IL_0039:  ldc.i4.2
    IL_003a:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_003f:  stelem.ref
    IL_0040:  dup
    IL_0041:  ldc.i4.3
    IL_0042:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_0047:  stelem.ref
    IL_0048:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_004d:  ldarg.0
    IL_004e:  ldc.i4.4
    IL_004f:  newarr     [System.Runtime]System.Int32
    IL_0054:  dup
    IL_0055:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'974CA8842D98750131804C15D2A382C332A91805'
    IL_005a:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_005f:  stfld      int32[] Game.SubsystemModelsRenderer::m_drawOrders
    IL_0064:  ldarg.0
    IL_0065:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_006a:  ret
  } // end of method SubsystemModelsRenderer::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  6
    IL_0000:  ldc.i4.2
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4.1
    IL_0003:  ldc.i4.1
    IL_0004:  ldc.i4.0
    IL_0005:  ldc.i4.1
    IL_0006:  newobj     instance void [Engine]Engine.Graphics.LitShader::.ctor(int32,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                int32)
    IL_000b:  stsfld     class [Engine]Engine.Graphics.LitShader Game.SubsystemModelsRenderer::m_normalShader
    IL_0010:  ldc.i4.2
    IL_0011:  ldc.i4.0
    IL_0012:  ldc.i4.1
    IL_0013:  ldc.i4.1
    IL_0014:  ldc.i4.1
    IL_0015:  ldc.i4.1
    IL_0016:  newobj     instance void [Engine]Engine.Graphics.LitShader::.ctor(int32,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                int32)
    IL_001b:  stsfld     class [Engine]Engine.Graphics.LitShader Game.SubsystemModelsRenderer::m_normalShaderAlpha
    IL_0020:  ldc.i4.2
    IL_0021:  ldc.i4.0
    IL_0022:  ldc.i4.1
    IL_0023:  ldc.i4.1
    IL_0024:  ldc.i4.0
    IL_0025:  ldc.i4.7
    IL_0026:  newobj     instance void [Engine]Engine.Graphics.LitShader::.ctor(int32,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                int32)
    IL_002b:  stsfld     class [Engine]Engine.Graphics.LitShader Game.SubsystemModelsRenderer::m_instancedShader
    IL_0030:  ldc.i4.2
    IL_0031:  ldc.i4.0
    IL_0032:  ldc.i4.1
    IL_0033:  ldc.i4.1
    IL_0034:  ldc.i4.1
    IL_0035:  ldc.i4.7
    IL_0036:  newobj     instance void [Engine]Engine.Graphics.LitShader::.ctor(int32,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                int32)
    IL_003b:  stsfld     class [Engine]Engine.Graphics.LitShader Game.SubsystemModelsRenderer::m_instancedShaderAlpha
    IL_0040:  ldc.i4.0
    IL_0041:  stsfld     bool Game.SubsystemModelsRenderer::DisableDrawingModels
    IL_0046:  ldc.i4.0
    IL_0047:  stsfld     bool Game.SubsystemModelsRenderer::DisableModelsInstancing
    IL_004c:  ret
  } // end of method SubsystemModelsRenderer::.cctor

  .property instance class [Engine]Engine.Graphics.PrimitivesRenderer3D
          PrimitivesRenderer()
  {
    .get instance class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::get_PrimitivesRenderer()
  } // end of property SubsystemModelsRenderer::PrimitivesRenderer
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemModelsRenderer::get_DrawOrders()
  } // end of property SubsystemModelsRenderer::DrawOrders
} // end of class Game.SubsystemModelsRenderer