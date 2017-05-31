.class public auto ansi beforefieldinit Game.SmeltingRecipeWidget
       extends Game.CanvasWidget
{
  .field private class Game.LabelWidget m_nameWidget
  .field private class Game.LabelWidget m_descriptionWidget
  .field private class Game.GridPanelWidget m_gridWidget
  .field private class Game.FireWidget m_fireWidget
  .field private class Game.CraftingRecipeSlotWidget m_resultWidget
  .field private class Game.CraftingRecipe m_recipe
  .field private string m_nameSuffix
  .field private bool m_dirty
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       234 (0xea)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             class Game.CraftingRecipeSlotWidget V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.SmeltingRecipeWidget::m_dirty
    IL_0007:  ldarg.0
    IL_0008:  call       instance void Game.CanvasWidget::.ctor()
    IL_000d:  ldstr      "Widgets/SmeltingRecipe"
    IL_0012:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  ldloc.0
    IL_001b:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0027:  ldstr      "SmeltingRecipeWidget.Name"
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0032:  stfld      class Game.LabelWidget Game.SmeltingRecipeWidget::m_nameWidget
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_003e:  ldstr      "SmeltingRecipeWidget.Description"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0049:  stfld      class Game.LabelWidget Game.SmeltingRecipeWidget::m_descriptionWidget
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0055:  ldstr      "SmeltingRecipeWidget.Ingredients"
    IL_005a:  ldc.i4.1
    IL_005b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_0060:  stfld      class Game.GridPanelWidget Game.SmeltingRecipeWidget::m_gridWidget
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006c:  ldstr      "SmeltingRecipeWidget.Fire"
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.FireWidget>(string,
                                                                                         bool)
    IL_0077:  stfld      class Game.FireWidget Game.SmeltingRecipeWidget::m_fireWidget
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0083:  ldstr      "SmeltingRecipeWidget.Result"
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.CraftingRecipeSlotWidget>(string,
                                                                                                       bool)
    IL_008e:  stfld      class Game.CraftingRecipeSlotWidget Game.SmeltingRecipeWidget::m_resultWidget
    IL_0093:  ldc.i4.0
    IL_0094:  stloc.1
    IL_0095:  br.s       IL_00db

    IL_0097:  ldc.i4.0
    IL_0098:  stloc.2
    IL_0099:  br.s       IL_00c9

    IL_009b:  newobj     instance void Game.CraftingRecipeSlotWidget::.ctor()
    IL_00a0:  stloc.3
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.GridPanelWidget Game.SmeltingRecipeWidget::m_gridWidget
    IL_00a7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00ac:  ldloc.3
    IL_00ad:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Game.GridPanelWidget Game.SmeltingRecipeWidget::m_gridWidget
    IL_00b8:  ldloc.3
    IL_00b9:  ldloc.2
    IL_00ba:  ldloc.1
    IL_00bb:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00c0:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00c5:  ldloc.2
    IL_00c6:  ldc.i4.1
    IL_00c7:  add
    IL_00c8:  stloc.2
    IL_00c9:  ldloc.2
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.GridPanelWidget Game.SmeltingRecipeWidget::m_gridWidget
    IL_00d0:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00d5:  blt.s      IL_009b

    IL_00d7:  ldloc.1
    IL_00d8:  ldc.i4.1
    IL_00d9:  add
    IL_00da:  stloc.1
    IL_00db:  ldloc.1
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.GridPanelWidget Game.SmeltingRecipeWidget::m_gridWidget
    IL_00e2:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00e7:  blt.s      IL_0097

    IL_00e9:  ret
  } // end of method SmeltingRecipeWidget::.ctor

  .method public hidebysig specialname instance string 
          get_NameSuffix() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.SmeltingRecipeWidget::m_nameSuffix
    IL_0006:  ret
  } // end of method SmeltingRecipeWidget::get_NameSuffix

  .method public hidebysig specialname instance void 
          set_NameSuffix(string 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string Game.SmeltingRecipeWidget::m_nameSuffix
    IL_0007:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_000c:  brfalse.s  IL_001c

    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  stfld      string Game.SmeltingRecipeWidget::m_nameSuffix
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.1
    IL_0017:  stfld      bool Game.SmeltingRecipeWidget::m_dirty
    IL_001c:  ret
  } // end of method SmeltingRecipeWidget::set_NameSuffix

  .method public hidebysig specialname instance class Game.CraftingRecipe 
          get_Recipe() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CraftingRecipe Game.SmeltingRecipeWidget::m_recipe
    IL_0006:  ret
  } // end of method SmeltingRecipeWidget::get_Recipe

  .method public hidebysig specialname instance void 
          set_Recipe(class Game.CraftingRecipe 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.CraftingRecipe Game.SmeltingRecipeWidget::m_recipe
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      class Game.CraftingRecipe Game.SmeltingRecipeWidget::m_recipe
    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.1
    IL_0012:  stfld      bool Game.SmeltingRecipeWidget::m_dirty
    IL_0017:  ret
  } // end of method SmeltingRecipeWidget::set_Recipe

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SmeltingRecipeWidget::m_dirty
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.SmeltingRecipeWidget::UpdateWidgets()
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  call       instance void Game.CanvasWidget::Measure(valuetype [Engine]Engine.Vector2)
    IL_0015:  ret
  } // end of method SmeltingRecipeWidget::Measure

  .method private hidebysig instance void 
          UpdateWidgets() cil managed
  {
    // 代码大小       404 (0x194)
    .maxstack  5
    .locals init (class Game.Block V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_1,
             class Game.CraftingRecipeSlotWidget V_2,
             valuetype [Engine]Engine.Point2 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      bool Game.SmeltingRecipeWidget::m_dirty
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.CraftingRecipe Game.SmeltingRecipeWidget::m_recipe
    IL_000d:  brfalse    IL_0126

    IL_0012:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.CraftingRecipe Game.SmeltingRecipeWidget::m_recipe
    IL_001d:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_0022:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0027:  ldelem.ref
    IL_0028:  stloc.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.LabelWidget Game.SmeltingRecipeWidget::m_nameWidget
    IL_002f:  ldloc.0
    IL_0030:  ldnull
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.CraftingRecipe Game.SmeltingRecipeWidget::m_recipe
    IL_0037:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_003c:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0041:  ldarg.0
    IL_0042:  call       instance string Game.SmeltingRecipeWidget::get_NameSuffix()
    IL_0047:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_004c:  brfalse.s  IL_0055

    IL_004e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0053:  br.s       IL_005b

    IL_0055:  ldarg.0
    IL_0056:  call       instance string Game.SmeltingRecipeWidget::get_NameSuffix()
    IL_005b:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0060:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.LabelWidget Game.SmeltingRecipeWidget::m_descriptionWidget
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.CraftingRecipe Game.SmeltingRecipeWidget::m_recipe
    IL_0071:  ldfld      string Game.CraftingRecipe::Description
    IL_0076:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.LabelWidget Game.SmeltingRecipeWidget::m_nameWidget
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.LabelWidget Game.SmeltingRecipeWidget::m_descriptionWidget
    IL_008d:  ldc.i4.1
    IL_008e:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.GridPanelWidget Game.SmeltingRecipeWidget::m_gridWidget
    IL_0099:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_00a3:  stloc.1
    .try
    {
      IL_00a4:  br.s       IL_00e0

      IL_00a6:  ldloc.1
      IL_00a7:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_00ac:  castclass  Game.CraftingRecipeSlotWidget
      IL_00b1:  stloc.2
      IL_00b2:  ldarg.0
      IL_00b3:  ldfld      class Game.GridPanelWidget Game.SmeltingRecipeWidget::m_gridWidget
      IL_00b8:  ldloc.2
      IL_00b9:  callvirt   instance valuetype [Engine]Engine.Point2 Game.GridPanelWidget::GetWidgetCell(class Game.Widget)
      IL_00be:  stloc.3
      IL_00bf:  ldloc.2
      IL_00c0:  ldarg.0
      IL_00c1:  ldfld      class Game.CraftingRecipe Game.SmeltingRecipeWidget::m_recipe
      IL_00c6:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00cb:  ldloc.3
      IL_00cc:  ldfld      int32 [Engine]Engine.Point2::X
      IL_00d1:  ldloc.3
      IL_00d2:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_00d7:  ldc.i4.3
      IL_00d8:  mul
      IL_00d9:  add
      IL_00da:  ldelem.ref
      IL_00db:  callvirt   instance void Game.CraftingRecipeSlotWidget::SetIngredient(string)
      IL_00e0:  ldloc.1
      IL_00e1:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00e6:  brtrue.s   IL_00a6

      IL_00e8:  leave.s    IL_00f4

    }  // end .try
    finally
    {
      IL_00ea:  ldloc.1
      IL_00eb:  brfalse.s  IL_00f3

      IL_00ed:  ldloc.1
      IL_00ee:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f3:  endfinally
    }  // end handler
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.CraftingRecipeSlotWidget Game.SmeltingRecipeWidget::m_resultWidget
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class Game.CraftingRecipe Game.SmeltingRecipeWidget::m_recipe
    IL_0100:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.CraftingRecipe Game.SmeltingRecipeWidget::m_recipe
    IL_010b:  ldfld      int32 Game.CraftingRecipe::ResultCount
    IL_0110:  callvirt   instance void Game.CraftingRecipeSlotWidget::SetResult(int32,
                                                                                int32)
    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.FireWidget Game.SmeltingRecipeWidget::m_fireWidget
    IL_011b:  ldc.r4     40.
    IL_0120:  callvirt   instance void Game.FireWidget::set_ParticlesPerSecond(float32)
    IL_0125:  ret

    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.LabelWidget Game.SmeltingRecipeWidget::m_nameWidget
    IL_012c:  ldc.i4.0
    IL_012d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.LabelWidget Game.SmeltingRecipeWidget::m_descriptionWidget
    IL_0138:  ldc.i4.0
    IL_0139:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_013e:  ldarg.0
    IL_013f:  ldfld      class Game.GridPanelWidget Game.SmeltingRecipeWidget::m_gridWidget
    IL_0144:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0149:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_014e:  stloc.1
    .try
    {
      IL_014f:  br.s       IL_0162

      IL_0151:  ldloc.1
      IL_0152:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_0157:  castclass  Game.CraftingRecipeSlotWidget
      IL_015c:  ldnull
      IL_015d:  callvirt   instance void Game.CraftingRecipeSlotWidget::SetIngredient(string)
      IL_0162:  ldloc.1
      IL_0163:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0168:  brtrue.s   IL_0151

      IL_016a:  leave.s    IL_0176

    }  // end .try
    finally
    {
      IL_016c:  ldloc.1
      IL_016d:  brfalse.s  IL_0175

      IL_016f:  ldloc.1
      IL_0170:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0175:  endfinally
    }  // end handler
    IL_0176:  ldarg.0
    IL_0177:  ldfld      class Game.CraftingRecipeSlotWidget Game.SmeltingRecipeWidget::m_resultWidget
    IL_017c:  ldc.i4.0
    IL_017d:  ldc.i4.0
    IL_017e:  callvirt   instance void Game.CraftingRecipeSlotWidget::SetResult(int32,
                                                                                int32)
    IL_0183:  ldarg.0
    IL_0184:  ldfld      class Game.FireWidget Game.SmeltingRecipeWidget::m_fireWidget
    IL_0189:  ldc.r4     0.0
    IL_018e:  callvirt   instance void Game.FireWidget::set_ParticlesPerSecond(float32)
    IL_0193:  ret
  } // end of method SmeltingRecipeWidget::UpdateWidgets

  .property instance string NameSuffix()
  {
    .get instance string Game.SmeltingRecipeWidget::get_NameSuffix()
    .set instance void Game.SmeltingRecipeWidget::set_NameSuffix(string)
  } // end of property SmeltingRecipeWidget::NameSuffix
  .property instance class Game.CraftingRecipe
          Recipe()
  {
    .get instance class Game.CraftingRecipe Game.SmeltingRecipeWidget::get_Recipe()
    .set instance void Game.SmeltingRecipeWidget::set_Recipe(class Game.CraftingRecipe)
  } // end of property SmeltingRecipeWidget::Recipe
} // end of class Game.SmeltingRecipeWidget