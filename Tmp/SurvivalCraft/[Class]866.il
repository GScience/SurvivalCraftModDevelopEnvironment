.class public auto ansi beforefieldinit Game.CraftingRecipeSlotWidget
       extends Game.CanvasWidget
{
  .field private class Game.BlockIconWidget m_blockIconWidget
  .field private class Game.LabelWidget m_labelWidget
  .field private string m_ingredient
  .field private int32 m_resultValue
  .field private int32 m_resultCount
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldstr      "Widgets/CraftingRecipeSlot"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "CraftingRecipeSlotWidget.Icon"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.BlockIconWidget>(string,
                                                                                         bool)
    IL_002b:  stfld      class Game.BlockIconWidget Game.CraftingRecipeSlotWidget::m_blockIconWidget
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "CraftingRecipeSlotWidget.Count"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0042:  stfld      class Game.LabelWidget Game.CraftingRecipeSlotWidget::m_labelWidget
    IL_0047:  ret
  } // end of method CraftingRecipeSlotWidget::.ctor

  .method public hidebysig instance void 
          SetIngredient(string ingredient) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.CraftingRecipeSlotWidget::m_ingredient
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.0
    IL_0009:  stfld      int32 Game.CraftingRecipeSlotWidget::m_resultValue
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.0
    IL_0010:  stfld      int32 Game.CraftingRecipeSlotWidget::m_resultCount
    IL_0015:  ret
  } // end of method CraftingRecipeSlotWidget::SetIngredient

  .method public hidebysig instance void 
          SetResult(int32 'value',
                    int32 count) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.CraftingRecipeSlotWidget::m_resultValue
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      int32 Game.CraftingRecipeSlotWidget::m_resultCount
    IL_000e:  ldarg.0
    IL_000f:  ldnull
    IL_0010:  stfld      string Game.CraftingRecipeSlotWidget::m_ingredient
    IL_0015:  ret
  } // end of method CraftingRecipeSlotWidget::SetResult

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       256 (0x100)
    .maxstack  4
    .locals init (string V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1,
             class Game.Block[] V_2,
             class Game.Block V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BlockIconWidget Game.CraftingRecipeSlotWidget::m_blockIconWidget
    IL_0006:  ldc.i4.0
    IL_0007:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.LabelWidget Game.CraftingRecipeSlotWidget::m_labelWidget
    IL_0012:  ldc.i4.0
    IL_0013:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0018:  ldarg.0
    IL_0019:  ldfld      string Game.CraftingRecipeSlotWidget::m_ingredient
    IL_001e:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0023:  brtrue.s   IL_00a4

    IL_0025:  ldarg.0
    IL_0026:  ldfld      string Game.CraftingRecipeSlotWidget::m_ingredient
    IL_002b:  ldloca.s   V_0
    IL_002d:  ldloca.s   V_1
    IL_002f:  call       void Game.CraftingRecipesManager::DecodeIngredient(string,
                                                                            string&,
                                                                            valuetype [System.Runtime]System.Nullable`1<int32>&)
    IL_0034:  ldloc.0
    IL_0035:  call       class Game.Block[] Game.BlocksManager::FindBlocksByCraftingId(string)
    IL_003a:  stloc.2
    IL_003b:  ldloc.2
    IL_003c:  ldlen
    IL_003d:  brfalse    IL_00f8

    IL_0042:  ldloc.2
    IL_0043:  ldc.r8     1.
    IL_004c:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0051:  mul
    IL_0052:  conv.i4
    IL_0053:  ldloc.2
    IL_0054:  ldlen
    IL_0055:  conv.i4
    IL_0056:  rem
    IL_0057:  ldelem.ref
    IL_0058:  stloc.3
    IL_0059:  ldloc.3
    IL_005a:  brfalse    IL_00f8

    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.BlockIconWidget Game.CraftingRecipeSlotWidget::m_blockIconWidget
    IL_0065:  ldloc.3
    IL_0066:  ldfld      int32 Game.Block::BlockIndex
    IL_006b:  ldc.i4.0
    IL_006c:  ldloca.s   V_1
    IL_006e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0073:  brtrue.s   IL_0078

    IL_0075:  ldc.i4.4
    IL_0076:  br.s       IL_007f

    IL_0078:  ldloca.s   V_1
    IL_007a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_007f:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0084:  callvirt   instance void Game.BlockIconWidget::set_Value(int32)
    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Game.BlockIconWidget Game.CraftingRecipeSlotWidget::m_blockIconWidget
    IL_008f:  ldc.i4.s   15
    IL_0091:  callvirt   instance void Game.BlockIconWidget::set_Light(int32)
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.BlockIconWidget Game.CraftingRecipeSlotWidget::m_blockIconWidget
    IL_009c:  ldc.i4.1
    IL_009d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00a2:  br.s       IL_00f8

    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      int32 Game.CraftingRecipeSlotWidget::m_resultValue
    IL_00aa:  brfalse.s  IL_00f8

    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.BlockIconWidget Game.CraftingRecipeSlotWidget::m_blockIconWidget
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      int32 Game.CraftingRecipeSlotWidget::m_resultValue
    IL_00b8:  callvirt   instance void Game.BlockIconWidget::set_Value(int32)
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.BlockIconWidget Game.CraftingRecipeSlotWidget::m_blockIconWidget
    IL_00c3:  ldc.i4.s   15
    IL_00c5:  callvirt   instance void Game.BlockIconWidget::set_Light(int32)
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.LabelWidget Game.CraftingRecipeSlotWidget::m_labelWidget
    IL_00d0:  ldarg.0
    IL_00d1:  ldflda     int32 Game.CraftingRecipeSlotWidget::m_resultCount
    IL_00d6:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_00db:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.BlockIconWidget Game.CraftingRecipeSlotWidget::m_blockIconWidget
    IL_00e6:  ldc.i4.1
    IL_00e7:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      class Game.LabelWidget Game.CraftingRecipeSlotWidget::m_labelWidget
    IL_00f2:  ldc.i4.1
    IL_00f3:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00f8:  ldarg.0
    IL_00f9:  ldarg.1
    IL_00fa:  call       instance void Game.CanvasWidget::MeasureOverride(valuetype [Engine]Engine.Vector2)
    IL_00ff:  ret
  } // end of method CraftingRecipeSlotWidget::MeasureOverride

} // end of class Game.CraftingRecipeSlotWidget