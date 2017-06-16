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
  .field private class [Engine]Engine.Graphics.LitUberShader m_normalUberShader
  .field private class [Engine]Engine.Graphics.LitUberShader m_instancedUberShader
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
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       524 (0x20c)
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
    IL_0009:  bne.un     IL_0102

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
      IL_006c:  callvirt   instance void Game.ComponentModel::UpdateVisibility(class Game.SubsystemDrawing)
      IL_0071:  ldloc.3
      IL_0072:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_0077:  callvirt   instance bool Game.ComponentModel::get_IsVisible()
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
      IL_00c7:  ldarg.1
      IL_00c8:  ldloc.s    V_5
      IL_00ca:  call       instance void Game.SubsystemModelsRenderer::PrepareModel(class Game.SubsystemDrawing,
                                                                                    class Game.SubsystemModelsRenderer/ModelData)
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

      IL_00f2:  leave.s    IL_0102

    }  // end .try
    finally
    {
      IL_00f4:  ldloca.s   V_4
      IL_00f6:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>
      IL_00fc:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0101:  endfinally
    }  // end handler
    IL_0102:  ldsfld     bool Game.SubsystemModelsRenderer::DisableDrawingModels
    IL_0107:  brtrue     IL_0200

    IL_010c:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_0111:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_0116:  ldarg.2
    IL_0117:  ldarg.0
    IL_0118:  ldfld      int32[] Game.SubsystemModelsRenderer::m_drawOrders
    IL_011d:  ldc.i4.1
    IL_011e:  ldelem.i4
    IL_011f:  bne.un.s   IL_018e

    IL_0121:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_0126:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_012b:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_0130:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_0135:  ldarg.0
    IL_0136:  ldarg.1
    IL_0137:  ldarg.0
    IL_0138:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_013d:  ldc.i4.0
    IL_013e:  ldelem.ref
    IL_013f:  ldloca.s   V_6
    IL_0141:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_0147:  ldloc.s    V_6
    IL_0149:  call       instance void Game.SubsystemModelsRenderer::DrawModels(class Game.SubsystemDrawing,
                                                                                class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_014e:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNone
    IL_0153:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_0158:  ldarg.0
    IL_0159:  ldarg.1
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_0160:  ldc.i4.1
    IL_0161:  ldelem.ref
    IL_0162:  ldc.r4     0.0
    IL_0167:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_016c:  call       instance void Game.SubsystemModelsRenderer::DrawModels(class Game.SubsystemDrawing,
                                                                                class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0171:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_0176:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_017b:  ldarg.0
    IL_017c:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::m_primitivesRenderer
    IL_0181:  ldarg.1
    IL_0182:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ProjectionMatrix()
    IL_0187:  ldc.i4.1
    IL_0188:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_018d:  ret

    IL_018e:  ldarg.2
    IL_018f:  ldarg.0
    IL_0190:  ldfld      int32[] Game.SubsystemModelsRenderer::m_drawOrders
    IL_0195:  ldc.i4.2
    IL_0196:  ldelem.i4
    IL_0197:  bne.un.s   IL_01c7

    IL_0199:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNone
    IL_019e:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_01a3:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_01a8:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_01ad:  ldarg.0
    IL_01ae:  ldarg.1
    IL_01af:  ldarg.0
    IL_01b0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_01b5:  ldc.i4.2
    IL_01b6:  ldelem.ref
    IL_01b7:  ldloca.s   V_6
    IL_01b9:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_01bf:  ldloc.s    V_6
    IL_01c1:  call       instance void Game.SubsystemModelsRenderer::DrawModels(class Game.SubsystemDrawing,
                                                                                class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_01c6:  ret

    IL_01c7:  ldarg.2
    IL_01c8:  ldarg.0
    IL_01c9:  ldfld      int32[] Game.SubsystemModelsRenderer::m_drawOrders
    IL_01ce:  ldc.i4.3
    IL_01cf:  ldelem.i4
    IL_01d0:  bne.un.s   IL_020b

    IL_01d2:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNone
    IL_01d7:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_01dc:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_01e1:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_01e6:  ldarg.0
    IL_01e7:  ldarg.1
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_01ee:  ldc.i4.3
    IL_01ef:  ldelem.ref
    IL_01f0:  ldloca.s   V_6
    IL_01f2:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_01f8:  ldloc.s    V_6
    IL_01fa:  call       instance void Game.SubsystemModelsRenderer::DrawModels(class Game.SubsystemDrawing,
                                                                                class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_01ff:  ret

    IL_0200:  ldarg.0
    IL_0201:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::m_primitivesRenderer
    IL_0206:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Clear()
    IL_020b:  ret
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
    // 代码大小       94 (0x5e)
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
      IL_000f:  br.s       IL_0044

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
      IL_0036:  stloc.3
      IL_0037:  ldarg.0
      IL_0038:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_componentModels
      IL_003d:  ldloc.2
      IL_003e:  ldloc.3
      IL_003f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData>::Add(!0,
                                                                                                                                                                                        !1)
      IL_0044:  ldloca.s   V_0
      IL_0046:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentModel>::MoveNext()
      IL_004b:  brtrue.s   IL_0011

      IL_004d:  leave.s    IL_005d

    }  // end .try
    finally
    {
      IL_004f:  ldloca.s   V_0
      IL_0051:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentModel>
      IL_0057:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005c:  endfinally
    }  // end handler
    IL_005d:  ret
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
          PrepareModel(class Game.SubsystemDrawing subsystemDrawing,
                       class Game.SubsystemModelsRenderer/ModelData modelData) cil managed
  {
    // 代码大小       232 (0xe8)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.BoundingBox V_2,
             float32 V_3,
             valuetype [System.Runtime]System.Nullable`1<float32> V_4)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.ComponentModel::PrepareForDrawing(class Game.SubsystemDrawing)
    IL_000c:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0011:  ldarg.2
    IL_0012:  ldfld      float64 Game.SubsystemModelsRenderer/ModelData::NextLightTime
    IL_0017:  blt.un.s   IL_004c

    IL_0019:  ldarg.0
    IL_001a:  ldarg.2
    IL_001b:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemModelsRenderer::CalculateModelLight(class Game.SubsystemModelsRenderer/ModelData)
    IL_0020:  stloc.0
    IL_0021:  ldloca.s   V_0
    IL_0023:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0028:  brfalse.s  IL_0037

    IL_002a:  ldarg.2
    IL_002b:  ldloca.s   V_0
    IL_002d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0032:  stfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
    IL_0037:  ldarg.2
    IL_0038:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_003d:  ldc.r8     0.10000000000000001
    IL_0046:  add
    IL_0047:  stfld      float64 Game.SubsystemModelsRenderer/ModelData::NextLightTime
    IL_004c:  ldarg.2
    IL_004d:  ldfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
    IL_0052:  brfalse    IL_00e7

    IL_0057:  ldarg.2
    IL_0058:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
    IL_005d:  callvirt   instance bool Game.ComponentModel::get_CastsShadow()
    IL_0062:  brfalse    IL_00e7

    IL_0067:  ldarg.2
    IL_0068:  ldfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
    IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0072:  ldc.r4     0.0
    IL_0077:  ldc.r4     0.1
    IL_007c:  ldc.r4     0.0
    IL_0081:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0086:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_008b:  stloc.1
    IL_008c:  ldarg.2
    IL_008d:  ldfld      class Game.ComponentBody Game.SubsystemModelsRenderer/ModelData::ComponentBody
    IL_0092:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0097:  stloc.2
    IL_0098:  ldc.r4     2.25
    IL_009d:  ldloc.2
    IL_009e:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00a3:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00a8:  ldloc.2
    IL_00a9:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00ae:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00b3:  sub
    IL_00b4:  mul
    IL_00b5:  stloc.3
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.SubsystemShadows Game.SubsystemModelsRenderer::m_subsystemShadows
    IL_00bc:  ldloc.1
    IL_00bd:  ldloc.3
    IL_00be:  ldarg.2
    IL_00bf:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
    IL_00c4:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
    IL_00c9:  stloc.s    V_4
    IL_00cb:  ldloca.s   V_4
    IL_00cd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_00d2:  brtrue.s   IL_00db

    IL_00d4:  ldc.r4     1.
    IL_00d9:  br.s       IL_00e2

    IL_00db:  ldloca.s   V_4
    IL_00dd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::GetValueOrDefault()
    IL_00e2:  callvirt   instance void Game.SubsystemShadows::QueueShadow(valuetype [Engine]Engine.Vector3,
                                                                          float32,
                                                                          float32)
    IL_00e7:  ret
  } // end of method SubsystemModelsRenderer::PrepareModel

  .method private hidebysig instance void 
          DrawModels(class Game.SubsystemDrawing subsystemDrawing,
                     class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> modelsData,
                     valuetype [System.Runtime]System.Nullable`1<float32> alphaThreshold) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.SubsystemModelsRenderer::DisableModelsInstancing
    IL_0005:  brtrue.s   IL_0018

    IL_0007:  call       bool Game.SettingsManager::get_InvisibleModelsWorkaround()
    IL_000c:  brtrue.s   IL_0018

    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  ldarg.2
    IL_0011:  ldarg.3
    IL_0012:  call       instance void Game.SubsystemModelsRenderer::DrawInstancedModels(class Game.SubsystemDrawing,
                                                                                         class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                         valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0017:  ret

    IL_0018:  ldarg.0
    IL_0019:  ldarg.1
    IL_001a:  ldarg.2
    IL_001b:  ldarg.3
    IL_001c:  call       instance void Game.SubsystemModelsRenderer::DrawNormalModels(class Game.SubsystemDrawing,
                                                                                      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>,
                                                                                      valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0021:  ret
  } // end of method SubsystemModelsRenderer::DrawModels

  .method private hidebysig instance void 
          DrawNormalModels(class Game.SubsystemDrawing subsystemDrawing,
                           class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> modelsData,
                           valuetype [System.Runtime]System.Nullable`1<float32> alphaThreshold) cil managed
  {
    // 代码大小       748 (0x2ec)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData> V_0,
             class Game.SubsystemModelsRenderer/ModelData V_1,
             class Game.ComponentModel V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             float32 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_5,
             valuetype [System.Runtime]System.Nullable`1<float32> V_6,
             int32 V_7,
             class [Engine]Engine.Graphics.ModelMesh V_8,
             class [Engine]Engine.Graphics.Shader V_9,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_10,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart> V_11,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_12,
             class [Engine]Engine.Graphics.ModelMeshPart V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_0006:  ldc.i4.2
    IL_0007:  stfld      int32 [Engine]Engine.Graphics.LitUberShader::LightsCount
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_0012:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::LightDirections
    IL_0017:  ldc.i4.0
    IL_0018:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection1
    IL_001d:  ldarg.1
    IL_001e:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
    IL_0023:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0028:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_002d:  stelem     [Engine]Engine.Vector3
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_0038:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::LightDirections
    IL_003d:  ldc.i4.1
    IL_003e:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection2
    IL_0043:  ldarg.1
    IL_0044:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
    IL_0049:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_004e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0053:  stelem     [Engine]Engine.Vector3
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_005e:  ldc.i4.1
    IL_005f:  stfld      bool [Engine]Engine.Graphics.LitUberShader::UseFog
    IL_0064:  ldarg.0
    IL_0065:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_0070:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_FogColor()
    IL_0075:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_007a:  stfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Graphics.LitUberShader::FogColor
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_008b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_0090:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0095:  stfld      float32 [Engine]Engine.Graphics.LitUberShader::FogStart
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_00a6:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_00ab:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b0:  stfld      float32 [Engine]Engine.Graphics.LitUberShader::FogEnd
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_00bb:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
    IL_00c0:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_00c5:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms::set_View(valuetype [Engine]Engine.Matrix)
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_00d0:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
    IL_00d5:  ldarg.1
    IL_00d6:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ProjectionMatrix()
    IL_00db:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms::set_Projection(valuetype [Engine]Engine.Matrix)
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_00e6:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_00eb:  stfld      class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.LitUberShader::SamplerState
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_00f6:  ldarg.3
    IL_00f7:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> [Engine]Engine.Graphics.LitUberShader::AlphaThreshold
    IL_00fc:  ldarg.2
    IL_00fd:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::GetEnumerator()
    IL_0102:  stloc.0
    .try
    {
      IL_0103:  br         IL_02cf

      IL_0108:  ldloca.s   V_0
      IL_010a:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::get_Current()
      IL_010f:  stloc.1
      IL_0110:  ldloc.1
      IL_0111:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_0116:  stloc.2
      IL_0117:  ldloc.2
      IL_0118:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::get_DiffuseColor()
      IL_011d:  stloc.s    V_5
      IL_011f:  ldloca.s   V_5
      IL_0121:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_0126:  brtrue.s   IL_012f

      IL_0128:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::One
      IL_012d:  br.s       IL_013e

      IL_012f:  ldloc.2
      IL_0130:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::get_DiffuseColor()
      IL_0135:  stloc.s    V_5
      IL_0137:  ldloca.s   V_5
      IL_0139:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_013e:  stloc.3
      IL_013f:  ldloc.2
      IL_0140:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
      IL_0145:  stloc.s    V_6
      IL_0147:  ldloca.s   V_6
      IL_0149:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_014e:  brtrue.s   IL_0157

      IL_0150:  ldc.r4     1.
      IL_0155:  br.s       IL_0166

      IL_0157:  ldloc.2
      IL_0158:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
      IL_015d:  stloc.s    V_6
      IL_015f:  ldloca.s   V_6
      IL_0161:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_0166:  stloc.s    V_4
      IL_0168:  ldarg.0
      IL_0169:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
      IL_016e:  ldloc.3
      IL_016f:  ldloc.s    V_4
      IL_0171:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0176:  ldloc.s    V_4
      IL_0178:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Vector3,
                                                                       float32)
      IL_017d:  stfld      valuetype [Engine]Engine.Vector4 [Engine]Engine.Graphics.LitUberShader::MaterialColor
      IL_0182:  ldarg.0
      IL_0183:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
      IL_0188:  ldloc.2
      IL_0189:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ComponentModel::get_TextureOverride()
      IL_018e:  stfld      class [Engine]Engine.Graphics.Texture2D [Engine]Engine.Graphics.LitUberShader::Texture
      IL_0193:  ldarg.0
      IL_0194:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
      IL_0199:  ldsfld     float32 Game.LightingManager::LightAmbient
      IL_019e:  ldloc.1
      IL_019f:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_01a4:  mul
      IL_01a5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_01aa:  stfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Graphics.LitUberShader::AmbientLightColor
      IL_01af:  ldarg.0
      IL_01b0:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
      IL_01b5:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::DiffuseLightColors
      IL_01ba:  ldc.i4.0
      IL_01bb:  ldloc.1
      IL_01bc:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_01c1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_01c6:  stelem     [Engine]Engine.Vector3
      IL_01cb:  ldarg.0
      IL_01cc:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
      IL_01d1:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::DiffuseLightColors
      IL_01d6:  ldc.i4.1
      IL_01d7:  ldloc.1
      IL_01d8:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_01dd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_01e2:  stelem     [Engine]Engine.Vector3
      IL_01e7:  ldc.i4.0
      IL_01e8:  stloc.s    V_7
      IL_01ea:  br         IL_02b2

      IL_01ef:  ldloc.2
      IL_01f0:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
      IL_01f5:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
      IL_01fa:  stloc.s    V_10
      IL_01fc:  ldloca.s   V_10
      IL_01fe:  ldloc.2
      IL_01ff:  callvirt   instance int32[] Game.ComponentModel::get_MeshDrawOrders()
      IL_0204:  ldloc.s    V_7
      IL_0206:  ldelem.i4
      IL_0207:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::get_Item(int32)
      IL_020c:  stloc.s    V_8
      IL_020e:  ldarg.0
      IL_020f:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
      IL_0214:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
      IL_0219:  callvirt   instance class [Engine]Engine.Graphics.UberShaderTransforms/WorldMatrixList [Engine]Engine.Graphics.UberShaderTransforms::get_World()
      IL_021e:  ldc.i4.0
      IL_021f:  ldloc.2
      IL_0220:  callvirt   instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransforms()
      IL_0225:  ldloc.s    V_8
      IL_0227:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_022c:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_0231:  ldelem     [Engine]Engine.Matrix
      IL_0236:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms/WorldMatrixList::set_Item(int32,
                                                                                                                valuetype [Engine]Engine.Matrix)
      IL_023b:  ldarg.0
      IL_023c:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
      IL_0241:  callvirt   instance class [Engine]Engine.Graphics.Shader [Engine]Engine.Graphics.LitUberShader::PrepareShader()
      IL_0246:  stloc.s    V_9
      IL_0248:  ldloc.s    V_8
      IL_024a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
      IL_024f:  stloc.s    V_12
      IL_0251:  ldloca.s   V_12
      IL_0253:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
      IL_0258:  stloc.s    V_11
      .try
      {
        IL_025a:  br.s       IL_0293

        IL_025c:  ldloca.s   V_11
        IL_025e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
        IL_0263:  stloc.s    V_13
        IL_0265:  ldloc.s    V_13
        IL_0267:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
        IL_026c:  ldc.i4.0
        IL_026d:  ble.s      IL_0293

        IL_026f:  ldc.i4.2
        IL_0270:  ldloc.s    V_9
        IL_0272:  ldloc.s    V_13
        IL_0274:  callvirt   instance class [Engine]Engine.Graphics.VertexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_VertexBuffer()
        IL_0279:  ldloc.s    V_13
        IL_027b:  callvirt   instance class [Engine]Engine.Graphics.IndexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_IndexBuffer()
        IL_0280:  ldloc.s    V_13
        IL_0282:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
        IL_0287:  ldloc.s    V_13
        IL_0289:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
        IL_028e:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                               class [Engine]Engine.Graphics.Shader,
                                                                               class [Engine]Engine.Graphics.VertexBuffer,
                                                                               class [Engine]Engine.Graphics.IndexBuffer,
                                                                               int32,
                                                                               int32)
        IL_0293:  ldloca.s   V_11
        IL_0295:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
        IL_029a:  brtrue.s   IL_025c

        IL_029c:  leave.s    IL_02ac

      }  // end .try
      finally
      {
        IL_029e:  ldloca.s   V_11
        IL_02a0:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
        IL_02a6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_02ab:  endfinally
      }  // end handler
      IL_02ac:  ldloc.s    V_7
      IL_02ae:  ldc.i4.1
      IL_02af:  add
      IL_02b0:  stloc.s    V_7
      IL_02b2:  ldloc.s    V_7
      IL_02b4:  ldloc.2
      IL_02b5:  callvirt   instance int32[] Game.ComponentModel::get_MeshDrawOrders()
      IL_02ba:  ldlen
      IL_02bb:  conv.i4
      IL_02bc:  blt        IL_01ef

      IL_02c1:  ldarg.0
      IL_02c2:  ldarg.0
      IL_02c3:  ldfld      int32 Game.SubsystemModelsRenderer::ModelsDrawn
      IL_02c8:  ldc.i4.1
      IL_02c9:  add
      IL_02ca:  stfld      int32 Game.SubsystemModelsRenderer::ModelsDrawn
      IL_02cf:  ldloca.s   V_0
      IL_02d1:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::MoveNext()
      IL_02d6:  brtrue     IL_0108

      IL_02db:  leave.s    IL_02eb

    }  // end .try
    finally
    {
      IL_02dd:  ldloca.s   V_0
      IL_02df:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>
      IL_02e5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02ea:  endfinally
    }  // end handler
    IL_02eb:  ret
  } // end of method SubsystemModelsRenderer::DrawNormalModels

  .method private hidebysig instance void 
          DrawInstancedModels(class Game.SubsystemDrawing subsystemDrawing,
                              class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> modelsData,
                              valuetype [System.Runtime]System.Nullable`1<float32> alphaThreshold) cil managed
  {
    // 代码大小       642 (0x282)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData> V_0,
             class Game.SubsystemModelsRenderer/ModelData V_1,
             class Game.ComponentModel V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             float32 V_4,
             class Game.InstancedModelData V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_6,
             valuetype [System.Runtime]System.Nullable`1<float32> V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_0006:  ldc.i4.2
    IL_0007:  stfld      int32 [Engine]Engine.Graphics.LitUberShader::LightsCount
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_0012:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::LightDirections
    IL_0017:  ldc.i4.0
    IL_0018:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection1
    IL_001d:  ldarg.1
    IL_001e:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
    IL_0023:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0028:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_002d:  stelem     [Engine]Engine.Vector3
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_0038:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::LightDirections
    IL_003d:  ldc.i4.1
    IL_003e:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection2
    IL_0043:  ldarg.1
    IL_0044:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
    IL_0049:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_004e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0053:  stelem     [Engine]Engine.Vector3
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_005e:  ldc.i4.1
    IL_005f:  stfld      bool [Engine]Engine.Graphics.LitUberShader::UseFog
    IL_0064:  ldarg.0
    IL_0065:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_0070:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_FogColor()
    IL_0075:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_007a:  stfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Graphics.LitUberShader::FogColor
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_008b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_0090:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0095:  stfld      float32 [Engine]Engine.Graphics.LitUberShader::FogStart
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.SubsystemSky Game.SubsystemModelsRenderer::m_subsystemSky
    IL_00a6:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_00ab:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b0:  stfld      float32 [Engine]Engine.Graphics.LitUberShader::FogEnd
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_00bb:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
    IL_00c0:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_00c5:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms::set_View(valuetype [Engine]Engine.Matrix)
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_00d0:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
    IL_00d5:  ldarg.1
    IL_00d6:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ProjectionMatrix()
    IL_00db:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms::set_Projection(valuetype [Engine]Engine.Matrix)
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_00e6:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_00eb:  stfld      class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.LitUberShader::SamplerState
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_00f6:  ldarg.3
    IL_00f7:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> [Engine]Engine.Graphics.LitUberShader::AlphaThreshold
    IL_00fc:  ldarg.2
    IL_00fd:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::GetEnumerator()
    IL_0102:  stloc.0
    .try
    {
      IL_0103:  br         IL_0265

      IL_0108:  ldloca.s   V_0
      IL_010a:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::get_Current()
      IL_010f:  stloc.1
      IL_0110:  ldloc.1
      IL_0111:  ldfld      class Game.ComponentModel Game.SubsystemModelsRenderer/ModelData::ComponentModel
      IL_0116:  stloc.2
      IL_0117:  ldloc.2
      IL_0118:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::get_DiffuseColor()
      IL_011d:  stloc.s    V_6
      IL_011f:  ldloca.s   V_6
      IL_0121:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_0126:  brtrue.s   IL_012f

      IL_0128:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::One
      IL_012d:  br.s       IL_013e

      IL_012f:  ldloc.2
      IL_0130:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::get_DiffuseColor()
      IL_0135:  stloc.s    V_6
      IL_0137:  ldloca.s   V_6
      IL_0139:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_013e:  stloc.3
      IL_013f:  ldloc.2
      IL_0140:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
      IL_0145:  stloc.s    V_7
      IL_0147:  ldloca.s   V_7
      IL_0149:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_014e:  brtrue.s   IL_0157

      IL_0150:  ldc.r4     1.
      IL_0155:  br.s       IL_0166

      IL_0157:  ldloc.2
      IL_0158:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
      IL_015d:  stloc.s    V_7
      IL_015f:  ldloca.s   V_7
      IL_0161:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_0166:  stloc.s    V_4
      IL_0168:  ldarg.0
      IL_0169:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
      IL_016e:  ldloc.2
      IL_016f:  callvirt   instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransforms()
      IL_0174:  ldlen
      IL_0175:  conv.i4
      IL_0176:  stfld      int32 [Engine]Engine.Graphics.LitUberShader::InstancesCount
      IL_017b:  ldarg.0
      IL_017c:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
      IL_0181:  ldloc.3
      IL_0182:  ldloc.s    V_4
      IL_0184:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0189:  ldloc.s    V_4
      IL_018b:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Vector3,
                                                                       float32)
      IL_0190:  stfld      valuetype [Engine]Engine.Vector4 [Engine]Engine.Graphics.LitUberShader::MaterialColor
      IL_0195:  ldarg.0
      IL_0196:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
      IL_019b:  ldsfld     float32 Game.LightingManager::LightAmbient
      IL_01a0:  ldloc.1
      IL_01a1:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_01a6:  mul
      IL_01a7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_01ac:  stfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Graphics.LitUberShader::AmbientLightColor
      IL_01b1:  ldarg.0
      IL_01b2:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
      IL_01b7:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::DiffuseLightColors
      IL_01bc:  ldc.i4.0
      IL_01bd:  ldloc.1
      IL_01be:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_01c3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_01c8:  stelem     [Engine]Engine.Vector3
      IL_01cd:  ldarg.0
      IL_01ce:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
      IL_01d3:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::DiffuseLightColors
      IL_01d8:  ldc.i4.1
      IL_01d9:  ldloc.1
      IL_01da:  ldfld      float32 Game.SubsystemModelsRenderer/ModelData::Light
      IL_01df:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_01e4:  stelem     [Engine]Engine.Vector3
      IL_01e9:  ldarg.0
      IL_01ea:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
      IL_01ef:  ldloc.2
      IL_01f0:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ComponentModel::get_TextureOverride()
      IL_01f5:  stfld      class [Engine]Engine.Graphics.Texture2D [Engine]Engine.Graphics.LitUberShader::Texture
      IL_01fa:  ldarg.0
      IL_01fb:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
      IL_0200:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
      IL_0205:  ldloc.2
      IL_0206:  callvirt   instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransforms()
      IL_020b:  ldloc.2
      IL_020c:  callvirt   instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransforms()
      IL_0211:  ldlen
      IL_0212:  conv.i4
      IL_0213:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms::SetWorldMatrices(valuetype [Engine]Engine.Matrix[],
                                                                                                        int32)
      IL_0218:  ldloc.2
      IL_0219:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
      IL_021e:  ldloc.2
      IL_021f:  callvirt   instance int32[] Game.ComponentModel::get_MeshDrawOrders()
      IL_0224:  call       class Game.InstancedModelData Game.InstancedModelsManager::GetInstancedModelData(class [Engine]Engine.Graphics.Model,
                                                                                                            int32[])
      IL_0229:  stloc.s    V_5
      IL_022b:  ldc.i4.2
      IL_022c:  ldarg.0
      IL_022d:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
      IL_0232:  callvirt   instance class [Engine]Engine.Graphics.Shader [Engine]Engine.Graphics.LitUberShader::PrepareShader()
      IL_0237:  ldloc.s    V_5
      IL_0239:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.InstancedModelData::VertexBuffer
      IL_023e:  ldloc.s    V_5
      IL_0240:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.InstancedModelData::IndexBuffer
      IL_0245:  ldc.i4.0
      IL_0246:  ldloc.s    V_5
      IL_0248:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.InstancedModelData::IndexBuffer
      IL_024d:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
      IL_0252:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                             class [Engine]Engine.Graphics.Shader,
                                                                             class [Engine]Engine.Graphics.VertexBuffer,
                                                                             class [Engine]Engine.Graphics.IndexBuffer,
                                                                             int32,
                                                                             int32)
      IL_0257:  ldarg.0
      IL_0258:  ldarg.0
      IL_0259:  ldfld      int32 Game.SubsystemModelsRenderer::ModelsDrawn
      IL_025e:  ldc.i4.1
      IL_025f:  add
      IL_0260:  stfld      int32 Game.SubsystemModelsRenderer::ModelsDrawn
      IL_0265:  ldloca.s   V_0
      IL_0267:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>::MoveNext()
      IL_026c:  brtrue     IL_0108

      IL_0271:  leave.s    IL_0281

    }  // end .try
    finally
    {
      IL_0273:  ldloca.s   V_0
      IL_0275:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemModelsRenderer/ModelData>
      IL_027b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0280:  endfinally
    }  // end handler
    IL_0281:  ret
  } // end of method SubsystemModelsRenderer::DrawInstancedModels

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
    // 代码大小       131 (0x83)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemModelsRenderer::m_primitivesRenderer
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.1
    IL_000d:  newobj     instance void [Engine]Engine.Graphics.LitUberShader::.ctor(int32)
    IL_0012:  stfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_normalUberShader
    IL_0017:  ldarg.0
    IL_0018:  ldc.i4.7
    IL_0019:  newobj     instance void [Engine]Engine.Graphics.LitUberShader::.ctor(int32)
    IL_001e:  stfld      class [Engine]Engine.Graphics.LitUberShader Game.SubsystemModelsRenderer::m_instancedUberShader
    IL_0023:  ldarg.0
    IL_0024:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_0029:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentModel,class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_componentModels
    IL_002e:  ldarg.0
    IL_002f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_0034:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData> Game.SubsystemModelsRenderer::m_modelsToPrepare
    IL_0039:  ldarg.0
    IL_003a:  ldc.i4.4
    IL_003b:  newarr     class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>
    IL_0040:  dup
    IL_0041:  ldc.i4.0
    IL_0042:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_0047:  stelem.ref
    IL_0048:  dup
    IL_0049:  ldc.i4.1
    IL_004a:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_004f:  stelem.ref
    IL_0050:  dup
    IL_0051:  ldc.i4.2
    IL_0052:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_0057:  stelem.ref
    IL_0058:  dup
    IL_0059:  ldc.i4.3
    IL_005a:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>::.ctor()
    IL_005f:  stelem.ref
    IL_0060:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemModelsRenderer/ModelData>[] Game.SubsystemModelsRenderer::m_modelsToDraw
    IL_0065:  ldarg.0
    IL_0066:  ldc.i4.4
    IL_0067:  newarr     [System.Runtime]System.Int32
    IL_006c:  dup
    IL_006d:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::C6FDF822D0860D9567684D616B629DF405D7B651
    IL_0072:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0077:  stfld      int32[] Game.SubsystemModelsRenderer::m_drawOrders
    IL_007c:  ldarg.0
    IL_007d:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0082:  ret
  } // end of method SubsystemModelsRenderer::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
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