.class public auto ansi beforefieldinit Game.CraftingRecipeWidget
       extends Game.CanvasWidget
{
  .field private class Game.LabelWidget m_nameWidget
  .field private class Game.LabelWidget m_descriptionWidget
  .field private class Game.GridPanelWidget m_gridWidget
  .field private class Game.CraftingRecipeSlotWidget m_resultWidget
  .field private class Game.CraftingRecipe m_recipe
  .field private string m_nameSuffix
  .field private bool m_dirty
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       211 (0xd3)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             class Game.CraftingRecipeSlotWidget V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.CraftingRecipeWidget::m_dirty
    IL_0007:  ldarg.0
    IL_0008:  call       instance void Game.CanvasWidget::.ctor()
    IL_000d:  ldstr      "Widgets/CraftingRecipe"
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
    IL_0022:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0027:  ldstr      "CraftingRecipeWidget.Name"
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0032:  stfld      class Game.LabelWidget Game.CraftingRecipeWidget::m_nameWidget
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003e:  ldstr      "CraftingRecipeWidget.Description"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0049:  stfld      class Game.LabelWidget Game.CraftingRecipeWidget::m_descriptionWidget
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0055:  ldstr      "CraftingRecipeWidget.Ingredients"
    IL_005a:  ldc.i4.1
    IL_005b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_0060:  stfld      class Game.GridPanelWidget Game.CraftingRecipeWidget::m_gridWidget
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_006c:  ldstr      "CraftingRecipeWidget.Result"
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.CraftingRecipeSlotWidget>(string,
                                                                                                  bool)
    IL_0077:  stfld      class Game.CraftingRecipeSlotWidget Game.CraftingRecipeWidget::m_resultWidget
    IL_007c:  ldc.i4.0
    IL_007d:  stloc.1
    IL_007e:  br.s       IL_00c4

    IL_0080:  ldc.i4.0
    IL_0081:  stloc.2
    IL_0082:  br.s       IL_00b2

    IL_0084:  newobj     instance void Game.CraftingRecipeSlotWidget::.ctor()
    IL_0089:  stloc.3
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.GridPanelWidget Game.CraftingRecipeWidget::m_gridWidget
    IL_0090:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0095:  ldloc.3
    IL_0096:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.GridPanelWidget Game.CraftingRecipeWidget::m_gridWidget
    IL_00a1:  ldloc.3
    IL_00a2:  ldloc.2
    IL_00a3:  ldloc.1
    IL_00a4:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00a9:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00ae:  ldloc.2
    IL_00af:  ldc.i4.1
    IL_00b0:  add
    IL_00b1:  stloc.2
    IL_00b2:  ldloc.2
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.GridPanelWidget Game.CraftingRecipeWidget::m_gridWidget
    IL_00b9:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00be:  blt.s      IL_0084

    IL_00c0:  ldloc.1
    IL_00c1:  ldc.i4.1
    IL_00c2:  add
    IL_00c3:  stloc.1
    IL_00c4:  ldloc.1
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.GridPanelWidget Game.CraftingRecipeWidget::m_gridWidget
    IL_00cb:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00d0:  blt.s      IL_0080

    IL_00d2:  ret
  } // end of method CraftingRecipeWidget::.ctor

  .method public hidebysig specialname instance string 
          get_NameSuffix() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.CraftingRecipeWidget::m_nameSuffix
    IL_0006:  ret
  } // end of method CraftingRecipeWidget::get_NameSuffix

  .method public hidebysig specialname instance void 
          set_NameSuffix(string 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string Game.CraftingRecipeWidget::m_nameSuffix
    IL_0007:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_000c:  brfalse.s  IL_001c

    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  stfld      string Game.CraftingRecipeWidget::m_nameSuffix
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.1
    IL_0017:  stfld      bool Game.CraftingRecipeWidget::m_dirty
    IL_001c:  ret
  } // end of method CraftingRecipeWidget::set_NameSuffix

  .method public hidebysig specialname instance class Game.CraftingRecipe 
          get_Recipe() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CraftingRecipe Game.CraftingRecipeWidget::m_recipe
    IL_0006:  ret
  } // end of method CraftingRecipeWidget::get_Recipe

  .method public hidebysig specialname instance void 
          set_Recipe(class Game.CraftingRecipe 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.CraftingRecipe Game.CraftingRecipeWidget::m_recipe
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      class Game.CraftingRecipe Game.CraftingRecipeWidget::m_recipe
    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.1
    IL_0012:  stfld      bool Game.CraftingRecipeWidget::m_dirty
    IL_0017:  ret
  } // end of method CraftingRecipeWidget::set_Recipe

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.CraftingRecipeWidget::m_dirty
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.CraftingRecipeWidget::UpdateWidgets()
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  call       instance void Game.CanvasWidget::MeasureOverride(valuetype [Engine]Engine.Vector2)
    IL_0015:  ret
  } // end of method CraftingRecipeWidget::MeasureOverride

  .method private hidebysig instance void 
          UpdateWidgets() cil managed
  {
    // 代码大小       384 (0x180)
    .maxstack  5
    .locals init (class Game.Block V_0,
             valuetype Game.WidgetsList/Enumerator V_1,
             class Game.CraftingRecipeSlotWidget V_2,
             valuetype [Engine]Engine.Point2 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      bool Game.CraftingRecipeWidget::m_dirty
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.CraftingRecipe Game.CraftingRecipeWidget::m_recipe
    IL_000d:  brfalse    IL_011c

    IL_0012:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.CraftingRecipe Game.CraftingRecipeWidget::m_recipe
    IL_001d:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_0022:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0027:  ldelem.ref
    IL_0028:  stloc.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.LabelWidget Game.CraftingRecipeWidget::m_nameWidget
    IL_002f:  ldloc.0
    IL_0030:  ldnull
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.CraftingRecipe Game.CraftingRecipeWidget::m_recipe
    IL_0037:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_003c:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0041:  ldarg.0
    IL_0042:  call       instance string Game.CraftingRecipeWidget::get_NameSuffix()
    IL_0047:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_004c:  brfalse.s  IL_0055

    IL_004e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0053:  br.s       IL_005b

    IL_0055:  ldarg.0
    IL_0056:  call       instance string Game.CraftingRecipeWidget::get_NameSuffix()
    IL_005b:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0060:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.LabelWidget Game.CraftingRecipeWidget::m_descriptionWidget
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.CraftingRecipe Game.CraftingRecipeWidget::m_recipe
    IL_0071:  ldfld      string Game.CraftingRecipe::Description
    IL_0076:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.LabelWidget Game.CraftingRecipeWidget::m_nameWidget
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.LabelWidget Game.CraftingRecipeWidget::m_descriptionWidget
    IL_008d:  ldc.i4.1
    IL_008e:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.GridPanelWidget Game.CraftingRecipeWidget::m_gridWidget
    IL_0099:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009e:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_00a3:  stloc.1
    .try
    {
      IL_00a4:  br.s       IL_00e1

      IL_00a6:  ldloca.s   V_1
      IL_00a8:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_00ad:  castclass  Game.CraftingRecipeSlotWidget
      IL_00b2:  stloc.2
      IL_00b3:  ldarg.0
      IL_00b4:  ldfld      class Game.GridPanelWidget Game.CraftingRecipeWidget::m_gridWidget
      IL_00b9:  ldloc.2
      IL_00ba:  callvirt   instance valuetype [Engine]Engine.Point2 Game.GridPanelWidget::GetWidgetCell(class Game.Widget)
      IL_00bf:  stloc.3
      IL_00c0:  ldloc.2
      IL_00c1:  ldarg.0
      IL_00c2:  ldfld      class Game.CraftingRecipe Game.CraftingRecipeWidget::m_recipe
      IL_00c7:  ldfld      string[] Game.CraftingRecipe::Ingredients
      IL_00cc:  ldloc.3
      IL_00cd:  ldfld      int32 [Engine]Engine.Point2::X
      IL_00d2:  ldloc.3
      IL_00d3:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_00d8:  ldc.i4.3
      IL_00d9:  mul
      IL_00da:  add
      IL_00db:  ldelem.ref
      IL_00dc:  callvirt   instance void Game.CraftingRecipeSlotWidget::SetIngredient(string)
      IL_00e1:  ldloca.s   V_1
      IL_00e3:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_00e8:  brtrue.s   IL_00a6

      IL_00ea:  leave.s    IL_00fa

    }  // end .try
    finally
    {
      IL_00ec:  ldloca.s   V_1
      IL_00ee:  constrained. Game.WidgetsList/Enumerator
      IL_00f4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f9:  endfinally
    }  // end handler
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class Game.CraftingRecipeSlotWidget Game.CraftingRecipeWidget::m_resultWidget
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.CraftingRecipe Game.CraftingRecipeWidget::m_recipe
    IL_0106:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_010b:  ldarg.0
    IL_010c:  ldfld      class Game.CraftingRecipe Game.CraftingRecipeWidget::m_recipe
    IL_0111:  ldfld      int32 Game.CraftingRecipe::ResultCount
    IL_0116:  callvirt   instance void Game.CraftingRecipeSlotWidget::SetResult(int32,
                                                                                int32)
    IL_011b:  ret

    IL_011c:  ldarg.0
    IL_011d:  ldfld      class Game.LabelWidget Game.CraftingRecipeWidget::m_nameWidget
    IL_0122:  ldc.i4.0
    IL_0123:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0128:  ldarg.0
    IL_0129:  ldfld      class Game.LabelWidget Game.CraftingRecipeWidget::m_descriptionWidget
    IL_012e:  ldc.i4.0
    IL_012f:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.GridPanelWidget Game.CraftingRecipeWidget::m_gridWidget
    IL_013a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_013f:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0144:  stloc.1
    .try
    {
      IL_0145:  br.s       IL_0159

      IL_0147:  ldloca.s   V_1
      IL_0149:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_014e:  castclass  Game.CraftingRecipeSlotWidget
      IL_0153:  ldnull
      IL_0154:  callvirt   instance void Game.CraftingRecipeSlotWidget::SetIngredient(string)
      IL_0159:  ldloca.s   V_1
      IL_015b:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0160:  brtrue.s   IL_0147

      IL_0162:  leave.s    IL_0172

    }  // end .try
    finally
    {
      IL_0164:  ldloca.s   V_1
      IL_0166:  constrained. Game.WidgetsList/Enumerator
      IL_016c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0171:  endfinally
    }  // end handler
    IL_0172:  ldarg.0
    IL_0173:  ldfld      class Game.CraftingRecipeSlotWidget Game.CraftingRecipeWidget::m_resultWidget
    IL_0178:  ldc.i4.0
    IL_0179:  ldc.i4.0
    IL_017a:  callvirt   instance void Game.CraftingRecipeSlotWidget::SetResult(int32,
                                                                                int32)
    IL_017f:  ret
  } // end of method CraftingRecipeWidget::UpdateWidgets

  .property instance string NameSuffix()
  {
    .get instance string Game.CraftingRecipeWidget::get_NameSuffix()
    .set instance void Game.CraftingRecipeWidget::set_NameSuffix(string)
  } // end of property CraftingRecipeWidget::NameSuffix
  .property instance class Game.CraftingRecipe
          Recipe()
  {
    .get instance class Game.CraftingRecipe Game.CraftingRecipeWidget::get_Recipe()
    .set instance void Game.CraftingRecipeWidget::set_Recipe(class Game.CraftingRecipe)
  } // end of property CraftingRecipeWidget::Recipe
} // end of class Game.CraftingRecipeWidget