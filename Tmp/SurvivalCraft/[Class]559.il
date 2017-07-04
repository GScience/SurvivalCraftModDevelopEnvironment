.class public auto ansi beforefieldinit Game.RecipaediaRecipesScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass7_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 'value'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass7_0'::.ctor

    .method assembly hidebysig instance bool 
            '<Enter>b__0'(class Game.CraftingRecipe r) cil managed
    {
      // 代码大小       15 (0xf)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      int32 Game.CraftingRecipe::ResultValue
      IL_0006:  ldarg.0
      IL_0007:  ldfld      int32 Game.RecipaediaRecipesScreen/'<>c__DisplayClass7_0'::'value'
      IL_000c:  ceq
      IL_000e:  ret
    } // end of method '<>c__DisplayClass7_0'::'<Enter>b__0'

  } // end of class '<>c__DisplayClass7_0'

  .field private class Game.CraftingRecipeWidget m_craftingRecipeWidget
  .field private class Game.SmeltingRecipeWidget m_smeltingRecipeWidget
  .field private class Game.ButtonWidget m_prevRecipeButton
  .field private class Game.ButtonWidget m_nextRecipeButton
  .field private int32 m_recipeIndex
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> m_craftingRecipes
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       129 (0x81)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.RecipaediaRecipesScreen::m_craftingRecipes
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/RecipaediaRecipesScreen"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_002b:  ldstr      "CraftingRecipe"
    IL_0030:  ldc.i4.1
    IL_0031:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.CraftingRecipeWidget>(string,
                                                                                              bool)
    IL_0036:  stfld      class Game.CraftingRecipeWidget Game.RecipaediaRecipesScreen::m_craftingRecipeWidget
    IL_003b:  ldarg.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0042:  ldstr      "SmeltingRecipe"
    IL_0047:  ldc.i4.1
    IL_0048:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.SmeltingRecipeWidget>(string,
                                                                                              bool)
    IL_004d:  stfld      class Game.SmeltingRecipeWidget Game.RecipaediaRecipesScreen::m_smeltingRecipeWidget
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0059:  ldstr      "PreviousRecipe"
    IL_005e:  ldc.i4.1
    IL_005f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0064:  stfld      class Game.ButtonWidget Game.RecipaediaRecipesScreen::m_prevRecipeButton
    IL_0069:  ldarg.0
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0070:  ldstr      "NextRecipe"
    IL_0075:  ldc.i4.1
    IL_0076:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_007b:  stfld      class Game.ButtonWidget Game.RecipaediaRecipesScreen::m_nextRecipeButton
    IL_0080:  ret
  } // end of method RecipaediaRecipesScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  4
    .locals init (class Game.RecipaediaRecipesScreen/'<>c__DisplayClass7_0' V_0)
    IL_0000:  newobj     instance void Game.RecipaediaRecipesScreen/'<>c__DisplayClass7_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.0
    IL_0009:  ldelem.ref
    IL_000a:  unbox.any  [System.Runtime]System.Int32
    IL_000f:  stfld      int32 Game.RecipaediaRecipesScreen/'<>c__DisplayClass7_0'::'value'
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.RecipaediaRecipesScreen::m_craftingRecipes
    IL_001a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::Clear()
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.RecipaediaRecipesScreen::m_craftingRecipes
    IL_0025:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe> Game.CraftingRecipesManager::get_Recipes()
    IL_002a:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe>
    IL_002f:  ldloc.0
    IL_0030:  ldftn      instance bool Game.RecipaediaRecipesScreen/'<>c__DisplayClass7_0'::'<Enter>b__0'(class Game.CraftingRecipe)
    IL_0036:  newobj     instance void class [System.Runtime]System.Func`2<class Game.CraftingRecipe,bool>::.ctor(object,
                                                                                                                  native int)
    IL_003b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.CraftingRecipe>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                   class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0040:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0045:  ldarg.0
    IL_0046:  ldc.i4.0
    IL_0047:  stfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_004c:  ret
  } // end of method RecipaediaRecipesScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       410 (0x19a)
    .maxstack  7
    .locals init (class Game.CraftingRecipe V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.RecipaediaRecipesScreen::m_craftingRecipes
    IL_000c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::get_Count()
    IL_0011:  bge        IL_00d5

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.RecipaediaRecipesScreen::m_craftingRecipes
    IL_001c:  ldarg.0
    IL_001d:  ldfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_0022:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::get_Item(int32)
    IL_0027:  stloc.0
    IL_0028:  ldloc.0
    IL_0029:  ldfld      float32 Game.CraftingRecipe::RequiredHeatLevel
    IL_002e:  ldc.r4     0.0
    IL_0033:  bne.un.s   IL_0086

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.CraftingRecipeWidget Game.RecipaediaRecipesScreen::m_craftingRecipeWidget
    IL_003b:  ldloc.0
    IL_003c:  callvirt   instance void Game.CraftingRecipeWidget::set_Recipe(class Game.CraftingRecipe)
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.CraftingRecipeWidget Game.RecipaediaRecipesScreen::m_craftingRecipeWidget
    IL_0047:  ldstr      " (recipe #{0})"
    IL_004c:  ldc.i4.1
    IL_004d:  newarr     [System.Runtime]System.Object
    IL_0052:  dup
    IL_0053:  ldc.i4.0
    IL_0054:  ldarg.0
    IL_0055:  ldfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  box        [System.Runtime]System.Int32
    IL_0061:  stelem.ref
    IL_0062:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0067:  callvirt   instance void Game.CraftingRecipeWidget::set_NameSuffix(string)
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.CraftingRecipeWidget Game.RecipaediaRecipesScreen::m_craftingRecipeWidget
    IL_0072:  ldc.i4.1
    IL_0073:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.SmeltingRecipeWidget Game.RecipaediaRecipesScreen::m_smeltingRecipeWidget
    IL_007e:  ldc.i4.0
    IL_007f:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0084:  br.s       IL_00d5

    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.SmeltingRecipeWidget Game.RecipaediaRecipesScreen::m_smeltingRecipeWidget
    IL_008c:  ldloc.0
    IL_008d:  callvirt   instance void Game.SmeltingRecipeWidget::set_Recipe(class Game.CraftingRecipe)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.SmeltingRecipeWidget Game.RecipaediaRecipesScreen::m_smeltingRecipeWidget
    IL_0098:  ldstr      " (recipe #{0})"
    IL_009d:  ldc.i4.1
    IL_009e:  newarr     [System.Runtime]System.Object
    IL_00a3:  dup
    IL_00a4:  ldc.i4.0
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_00ab:  ldc.i4.1
    IL_00ac:  add
    IL_00ad:  box        [System.Runtime]System.Int32
    IL_00b2:  stelem.ref
    IL_00b3:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00b8:  callvirt   instance void Game.SmeltingRecipeWidget::set_NameSuffix(string)
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.SmeltingRecipeWidget Game.RecipaediaRecipesScreen::m_smeltingRecipeWidget
    IL_00c3:  ldc.i4.1
    IL_00c4:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.CraftingRecipeWidget Game.RecipaediaRecipesScreen::m_craftingRecipeWidget
    IL_00cf:  ldc.i4.0
    IL_00d0:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.ButtonWidget Game.RecipaediaRecipesScreen::m_prevRecipeButton
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_00e1:  ldc.i4.0
    IL_00e2:  cgt
    IL_00e4:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.ButtonWidget Game.RecipaediaRecipesScreen::m_nextRecipeButton
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.RecipaediaRecipesScreen::m_craftingRecipes
    IL_00fb:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::get_Count()
    IL_0100:  ldc.i4.1
    IL_0101:  sub
    IL_0102:  clt
    IL_0104:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.ButtonWidget Game.RecipaediaRecipesScreen::m_prevRecipeButton
    IL_010f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0114:  brfalse.s  IL_012a

    IL_0116:  ldarg.0
    IL_0117:  ldarg.0
    IL_0118:  ldfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_011d:  ldc.i4.1
    IL_011e:  sub
    IL_011f:  ldc.i4.0
    IL_0120:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0125:  stfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_012a:  ldarg.0
    IL_012b:  ldfld      class Game.ButtonWidget Game.RecipaediaRecipesScreen::m_nextRecipeButton
    IL_0130:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0135:  brfalse.s  IL_0157

    IL_0137:  ldarg.0
    IL_0138:  ldarg.0
    IL_0139:  ldfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_013e:  ldc.i4.1
    IL_013f:  add
    IL_0140:  ldarg.0
    IL_0141:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe> Game.RecipaediaRecipesScreen::m_craftingRecipes
    IL_0146:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.CraftingRecipe>::get_Count()
    IL_014b:  ldc.i4.1
    IL_014c:  sub
    IL_014d:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0152:  stfld      int32 Game.RecipaediaRecipesScreen::m_recipeIndex
    IL_0157:  ldarg.0
    IL_0158:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_015d:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_0162:  brtrue.s   IL_0189

    IL_0164:  ldarg.0
    IL_0165:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_016a:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_016f:  brtrue.s   IL_0189

    IL_0171:  ldarg.0
    IL_0172:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0177:  ldstr      "TopBar.Back"
    IL_017c:  ldc.i4.1
    IL_017d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0182:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0187:  brfalse.s  IL_0199

    IL_0189:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_018e:  ldc.i4.0
    IL_018f:  newarr     [System.Runtime]System.Object
    IL_0194:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0199:  ret
  } // end of method RecipaediaRecipesScreen::Update

} // end of class Game.RecipaediaRecipesScreen