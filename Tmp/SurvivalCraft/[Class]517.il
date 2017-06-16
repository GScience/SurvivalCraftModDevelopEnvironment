.class public auto ansi beforefieldinit Game.RecipaediaScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass10_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public object item
    .field public class Game.RecipaediaScreen '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass10_0'::.ctor

    .method assembly hidebysig instance void 
            '<.ctor>b__2'() cil managed
    {
      // 代码大小       60 (0x3c)
      .maxstack  8
      IL_0000:  ldstr      "RecipaediaDescription"
      IL_0005:  ldc.i4.2
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  dup
      IL_000c:  ldc.i4.0
      IL_000d:  ldarg.0
      IL_000e:  ldfld      object Game.RecipaediaScreen/'<>c__DisplayClass10_0'::item
      IL_0013:  stelem.ref
      IL_0014:  dup
      IL_0015:  ldc.i4.1
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class Game.RecipaediaScreen Game.RecipaediaScreen/'<>c__DisplayClass10_0'::'<>4__this'
      IL_001c:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
      IL_0021:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
      IL_0026:  box        valuetype [Engine]Engine.ReadOnlyList`1<object>
      IL_002b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<int32>(class [System.Runtime]System.Collections.IEnumerable)
      IL_0030:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0035:  stelem.ref
      IL_0036:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_003b:  ret
    } // end of method '<>c__DisplayClass10_0'::'<.ctor>b__2'

  } // end of class '<>c__DisplayClass10_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass12_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [System.Runtime]System.Nullable`1<int32> 'value'
    .field public class Game.RecipaediaScreen '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass12_0'::.ctor

    .method assembly hidebysig instance bool 
            '<Update>b__0'(class Game.CraftingRecipe r) cil managed
    {
      // 代码大小       32 (0x20)
      .maxstack  2
      .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
      IL_0000:  ldarg.1
      IL_0001:  ldfld      int32 Game.CraftingRecipe::ResultValue
      IL_0006:  ldarg.0
      IL_0007:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
      IL_000c:  stloc.0
      IL_000d:  ldloca.s   V_0
      IL_000f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
      IL_0014:  beq.s      IL_0018

      IL_0016:  ldc.i4.0
      IL_0017:  ret

      IL_0018:  ldloca.s   V_0
      IL_001a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_001f:  ret
    } // end of method '<>c__DisplayClass12_0'::'<Update>b__0'

    .method assembly hidebysig instance void 
            '<Update>b__1'() cil managed
    {
      // 代码大小       70 (0x46)
      .maxstack  5
      IL_0000:  ldstr      "RecipaediaDescription"
      IL_0005:  ldc.i4.2
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  dup
      IL_000c:  ldc.i4.0
      IL_000d:  ldarg.0
      IL_000e:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
      IL_0013:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_0018:  box        [System.Runtime]System.Int32
      IL_001d:  stelem.ref
      IL_001e:  dup
      IL_001f:  ldc.i4.1
      IL_0020:  ldarg.0
      IL_0021:  ldfld      class Game.RecipaediaScreen Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'<>4__this'
      IL_0026:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
      IL_002b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
      IL_0030:  box        valuetype [Engine]Engine.ReadOnlyList`1<object>
      IL_0035:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<int32>(class [System.Runtime]System.Collections.IEnumerable)
      IL_003a:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_003f:  stelem.ref
      IL_0040:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0045:  ret
    } // end of method '<>c__DisplayClass12_0'::'<Update>b__1'

    .method assembly hidebysig instance void 
            '<Update>b__2'() cil managed
    {
      // 代码大小       36 (0x24)
      .maxstack  8
      IL_0000:  ldstr      "RecipaediaRecipes"
      IL_0005:  ldc.i4.1
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  dup
      IL_000c:  ldc.i4.0
      IL_000d:  ldarg.0
      IL_000e:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
      IL_0013:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_0018:  box        [System.Runtime]System.Int32
      IL_001d:  stelem.ref
      IL_001e:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0023:  ret
    } // end of method '<>c__DisplayClass12_0'::'<Update>b__2'

  } // end of class '<>c__DisplayClass12_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.RecipaediaScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.Block,int32> '<>9__13_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.RecipaediaScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.RecipaediaScreen/'<>c' Game.RecipaediaScreen/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance int32 
            '<PopulateBlocksList>b__13_0'(class Game.Block b) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      int32 Game.Block::DisplayOrder
      IL_0006:  ret
    } // end of method '<>c'::'<PopulateBlocksList>b__13_0'

  } // end of class '<>c'

  .field private class Game.ListPanelWidget m_blocksList
  .field private class Game.LabelWidget m_categoryLabel
  .field private class Game.ButtonWidget m_prevCategoryButton
  .field private class Game.ButtonWidget m_nextCategoryButton
  .field private class Game.ButtonWidget m_detailsButton
  .field private class Game.ButtonWidget m_recipesButton
  .field private class Game.Screen m_previousScreen
  .field private class [System.Collections]System.Collections.Generic.List`1<string> m_categories
  .field private int32 m_categoryIndex
  .field private int32 m_listCategoryIndex
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       296 (0x128)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.m1
    IL_000d:  stfld      int32 Game.RecipaediaScreen::m_listCategoryIndex
    IL_0012:  ldarg.0
    IL_0013:  call       instance void Game.Screen::.ctor()
    IL_0018:  ldstr      "Screens/RecipaediaScreen"
    IL_001d:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0022:  stloc.0
    IL_0023:  ldarg.0
    IL_0024:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0029:  ldarg.0
    IL_002a:  ldloc.0
    IL_002b:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0037:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_003c:  ldstr      "BlocksList"
    IL_0041:  ldc.i4.1
    IL_0042:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ListPanelWidget>(string,
                                                                                              bool)
    IL_0047:  stfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_004c:  ldarg.0
    IL_004d:  ldarg.0
    IL_004e:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0053:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0058:  ldstr      "Category"
    IL_005d:  ldc.i4.1
    IL_005e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0063:  stfld      class Game.LabelWidget Game.RecipaediaScreen::m_categoryLabel
    IL_0068:  ldarg.0
    IL_0069:  ldarg.0
    IL_006a:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_006f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0074:  ldstr      "PreviousCategory"
    IL_0079:  ldc.i4.1
    IL_007a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_007f:  stfld      class Game.ButtonWidget Game.RecipaediaScreen::m_prevCategoryButton
    IL_0084:  ldarg.0
    IL_0085:  ldarg.0
    IL_0086:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_008b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0090:  ldstr      "NextCategory"
    IL_0095:  ldc.i4.1
    IL_0096:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_009b:  stfld      class Game.ButtonWidget Game.RecipaediaScreen::m_nextCategoryButton
    IL_00a0:  ldarg.0
    IL_00a1:  ldarg.0
    IL_00a2:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00a7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00ac:  ldstr      "DetailsButton"
    IL_00b1:  ldc.i4.1
    IL_00b2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00b7:  stfld      class Game.ButtonWidget Game.RecipaediaScreen::m_detailsButton
    IL_00bc:  ldarg.0
    IL_00bd:  ldarg.0
    IL_00be:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00c3:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c8:  ldstr      "RecipesButton"
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00d3:  stfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_00de:  ldnull
    IL_00df:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_00e4:  ldarg.0
    IL_00e5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_00ea:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksManager::get_Categories()
    IL_00ef:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_00f4:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_00ff:  ldarg.0
    IL_0100:  ldftn      instance class Game.Widget Game.RecipaediaScreen::'<.ctor>b__10_0'(object)
    IL_0106:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_010b:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_0116:  ldarg.0
    IL_0117:  ldftn      instance void Game.RecipaediaScreen::'<.ctor>b__10_1'(class Game.ListPanelWidget,
                                                                               object)
    IL_011d:  newobj     instance void class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>::.ctor(object,
                                                                                                                       native int)
    IL_0122:  callvirt   instance void Game.ListPanelWidget::add_ItemTapped(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
    IL_0127:  ret
  } // end of method RecipaediaScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0005:  ldstr      "RecipaediaRecipes"
    IL_000a:  call       !!0 Game.ScreensManager::FindScreen<class Game.Screen>(string)
    IL_000f:  beq.s      IL_002d

    IL_0011:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0016:  ldstr      "RecipaediaDescription"
    IL_001b:  call       !!0 Game.ScreensManager::FindScreen<class Game.Screen>(string)
    IL_0020:  beq.s      IL_002d

    IL_0022:  ldarg.0
    IL_0023:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0028:  stfld      class Game.Screen Game.RecipaediaScreen::m_previousScreen
    IL_002d:  ret
  } // end of method RecipaediaScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       603 (0x25b)
    .maxstack  7
    .locals init (class Game.RecipaediaScreen/'<>c__DisplayClass12_0' V_0,
             string V_1,
             int32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_3)
    IL_0000:  newobj     instance void Game.RecipaediaScreen/'<>c__DisplayClass12_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.RecipaediaScreen Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'<>4__this'
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int32 Game.RecipaediaScreen::m_listCategoryIndex
    IL_0013:  ldarg.0
    IL_0014:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_0019:  beq.s      IL_0021

    IL_001b:  ldarg.0
    IL_001c:  call       instance void Game.RecipaediaScreen::PopulateBlocksList()
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_0027:  ldarg.0
    IL_0028:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_002d:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_0032:  dup
    IL_0033:  brtrue.s   IL_003b

    IL_0035:  pop
    IL_0036:  ldstr      "All Blocks"
    IL_003b:  stloc.1
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.LabelWidget Game.RecipaediaScreen::m_categoryLabel
    IL_0042:  ldstr      "{0} ({1})"
    IL_0047:  ldc.i4.2
    IL_0048:  newarr     [System.Runtime]System.Object
    IL_004d:  dup
    IL_004e:  ldc.i4.0
    IL_004f:  ldloc.1
    IL_0050:  stelem.ref
    IL_0051:  dup
    IL_0052:  ldc.i4.1
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_0059:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_005e:  stloc.3
    IL_005f:  ldloca.s   V_3
    IL_0061:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_0066:  box        [System.Runtime]System.Int32
    IL_006b:  stelem.ref
    IL_006c:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0071:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_prevCategoryButton
    IL_007c:  ldarg.0
    IL_007d:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_0082:  ldc.i4.0
    IL_0083:  cgt
    IL_0085:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_nextCategoryButton
    IL_0090:  ldarg.0
    IL_0091:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_009c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_00a1:  ldc.i4.1
    IL_00a2:  sub
    IL_00a3:  clt
    IL_00a5:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00aa:  ldloc.0
    IL_00ab:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_00b0:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_00b6:  ldc.i4.0
    IL_00b7:  stloc.2
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_00be:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00c3:  isinst     [System.Runtime]System.Int32
    IL_00c8:  brfalse.s  IL_0101

    IL_00ca:  ldloc.0
    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_00d1:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00d6:  unbox.any  [System.Runtime]System.Int32
    IL_00db:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_00e0:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_00e5:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe> Game.CraftingRecipesManager::get_Recipes()
    IL_00ea:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe>
    IL_00ef:  ldloc.0
    IL_00f0:  ldftn      instance bool Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'<Update>b__0'(class Game.CraftingRecipe)
    IL_00f6:  newobj     instance void class [System.Runtime]System.Func`2<class Game.CraftingRecipe,bool>::.ctor(object,
                                                                                                                  native int)
    IL_00fb:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.CraftingRecipe>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                     class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0100:  stloc.2
    IL_0101:  ldloc.2
    IL_0102:  ldc.i4.0
    IL_0103:  ble.s      IL_014a

    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_010b:  ldstr      "{0} {1}"
    IL_0110:  ldc.i4.2
    IL_0111:  newarr     [System.Runtime]System.Object
    IL_0116:  dup
    IL_0117:  ldc.i4.0
    IL_0118:  ldloc.2
    IL_0119:  box        [System.Runtime]System.Int32
    IL_011e:  stelem.ref
    IL_011f:  dup
    IL_0120:  ldc.i4.1
    IL_0121:  ldloc.2
    IL_0122:  ldc.i4.1
    IL_0123:  beq.s      IL_012c

    IL_0125:  ldstr      "recipes"
    IL_012a:  br.s       IL_0131

    IL_012c:  ldstr      "recipe"
    IL_0131:  stelem.ref
    IL_0132:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0137:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_0142:  ldc.i4.1
    IL_0143:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0148:  br.s       IL_0166

    IL_014a:  ldarg.0
    IL_014b:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_0150:  ldstr      "No recipes"
    IL_0155:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_0160:  ldc.i4.0
    IL_0161:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0166:  ldarg.0
    IL_0167:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_detailsButton
    IL_016c:  ldloc.0
    IL_016d:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_0172:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0177:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_017c:  ldarg.0
    IL_017d:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_prevCategoryButton
    IL_0182:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0187:  brfalse.s  IL_019d

    IL_0189:  ldarg.0
    IL_018a:  ldarg.0
    IL_018b:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_0190:  ldc.i4.1
    IL_0191:  sub
    IL_0192:  ldc.i4.0
    IL_0193:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0198:  stfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_019d:  ldarg.0
    IL_019e:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_nextCategoryButton
    IL_01a3:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01a8:  brfalse.s  IL_01ca

    IL_01aa:  ldarg.0
    IL_01ab:  ldarg.0
    IL_01ac:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_01b1:  ldc.i4.1
    IL_01b2:  add
    IL_01b3:  ldarg.0
    IL_01b4:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_01b9:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_01be:  ldc.i4.1
    IL_01bf:  sub
    IL_01c0:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_01c5:  stfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_01ca:  ldloc.0
    IL_01cb:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_01d0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_01d5:  brfalse.s  IL_01f5

    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_detailsButton
    IL_01dd:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01e2:  brfalse.s  IL_01f5

    IL_01e4:  ldloc.0
    IL_01e5:  ldftn      instance void Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'<Update>b__1'()
    IL_01eb:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01f0:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01f5:  ldloc.0
    IL_01f6:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_01fb:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0200:  brfalse.s  IL_0220

    IL_0202:  ldarg.0
    IL_0203:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_0208:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_020d:  brfalse.s  IL_0220

    IL_020f:  ldloc.0
    IL_0210:  ldftn      instance void Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'<Update>b__2'()
    IL_0216:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_021b:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0220:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0225:  ldfld      bool Game.InputState::Back
    IL_022a:  brtrue.s   IL_0249

    IL_022c:  ldarg.0
    IL_022d:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0232:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0237:  ldstr      "TopBar.Back"
    IL_023c:  ldc.i4.1
    IL_023d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0242:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0247:  brfalse.s  IL_025a

    IL_0249:  ldarg.0
    IL_024a:  ldftn      instance void Game.RecipaediaScreen::'<Update>b__12_3'()
    IL_0250:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0255:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_025a:  ret
  } // end of method RecipaediaScreen::Update

  .method private hidebysig instance void 
          PopulateBlocksList() cil managed
  {
    // 代码大小       213 (0xd5)
    .maxstack  3
    .locals init (string V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Block> V_1,
             class Game.Block V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_0007:  stfld      int32 Game.RecipaediaScreen::m_listCategoryIndex
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_0012:  ldarg.0
    IL_0013:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_0018:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_0024:  ldc.r4     0.0
    IL_0029:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_0034:  callvirt   instance void Game.ListPanelWidget::ClearItems()
    IL_0039:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_003e:  ldsfld     class [System.Runtime]System.Func`2<class Game.Block,int32> Game.RecipaediaScreen/'<>c'::'<>9__13_0'
    IL_0043:  dup
    IL_0044:  brtrue.s   IL_005d

    IL_0046:  pop
    IL_0047:  ldsfld     class Game.RecipaediaScreen/'<>c' Game.RecipaediaScreen/'<>c'::'<>9'
    IL_004c:  ldftn      instance int32 Game.RecipaediaScreen/'<>c'::'<PopulateBlocksList>b__13_0'(class Game.Block)
    IL_0052:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Block,int32>::.ctor(object,
                                                                                                          native int)
    IL_0057:  dup
    IL_0058:  stsfld     class [System.Runtime]System.Func`2<class Game.Block,int32> Game.RecipaediaScreen/'<>c'::'<>9__13_0'
    IL_005d:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OrderBy<class Game.Block,int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                       class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_0062:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Block>::GetEnumerator()
    IL_0067:  stloc.1
    .try
    {
      IL_0068:  br.s       IL_00c0

      IL_006a:  ldloc.1
      IL_006b:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Block>::get_Current()
      IL_0070:  stloc.2
      IL_0071:  ldloc.2
      IL_0072:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> Game.Block::GetCreativeValues()
      IL_0077:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      IL_007c:  stloc.3
      .try
      {
        IL_007d:  br.s       IL_00ac

        IL_007f:  ldloc.3
        IL_0080:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
        IL_0085:  stloc.s    V_4
        IL_0087:  ldloc.0
        IL_0088:  brfalse.s  IL_009a

        IL_008a:  ldloc.2
        IL_008b:  ldloc.s    V_4
        IL_008d:  callvirt   instance string Game.Block::GetCategory(int32)
        IL_0092:  ldloc.0
        IL_0093:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                             string)
        IL_0098:  brfalse.s  IL_00ac

        IL_009a:  ldarg.0
        IL_009b:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
        IL_00a0:  ldloc.s    V_4
        IL_00a2:  box        [System.Runtime]System.Int32
        IL_00a7:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
        IL_00ac:  ldloc.3
        IL_00ad:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_00b2:  brtrue.s   IL_007f

        IL_00b4:  leave.s    IL_00c0

      }  // end .try
      finally
      {
        IL_00b6:  ldloc.3
        IL_00b7:  brfalse.s  IL_00bf

        IL_00b9:  ldloc.3
        IL_00ba:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00bf:  endfinally
      }  // end handler
      IL_00c0:  ldloc.1
      IL_00c1:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00c6:  brtrue.s   IL_006a

      IL_00c8:  leave.s    IL_00d4

    }  // end .try
    finally
    {
      IL_00ca:  ldloc.1
      IL_00cb:  brfalse.s  IL_00d3

      IL_00cd:  ldloc.1
      IL_00ce:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d3:  endfinally
    }  // end handler
    IL_00d4:  ret
  } // end of method RecipaediaScreen::PopulateBlocksList

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__10_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       171 (0xab)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class Game.ContainerWidget V_3,
             string V_4,
             string V_5,
             string V_6)
    IL_0000:  ldarg.1
    IL_0001:  unbox.any  [System.Runtime]System.Int32
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_000d:  stloc.1
    IL_000e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0013:  ldloc.1
    IL_0014:  ldelem.ref
    IL_0015:  ldstr      "Widgets/RecipaediaItem"
    IL_001a:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001f:  stloc.2
    IL_0020:  ldarg.0
    IL_0021:  ldloc.2
    IL_0022:  ldnull
    IL_0023:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0028:  castclass  Game.ContainerWidget
    IL_002d:  stloc.3
    IL_002e:  dup
    IL_002f:  ldnull
    IL_0030:  ldloc.0
    IL_0031:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0036:  stloc.s    V_4
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance string Game.Block::GetDescription(int32)
    IL_003e:  stloc.s    V_5
    IL_0040:  ldloc.s    V_5
    IL_0042:  ldc.i4.0
    IL_0043:  ldc.i4.s   50
    IL_0045:  ldloc.s    V_5
    IL_0047:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_004c:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0051:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0056:  ldstr      "..."
    IL_005b:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0060:  stloc.s    V_6
    IL_0062:  ldloc.3
    IL_0063:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0068:  ldstr      "RecipaediaItem.Icon"
    IL_006d:  ldc.i4.1
    IL_006e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.BlockIconWidget>(string,
                                                                                              bool)
    IL_0073:  ldloc.0
    IL_0074:  callvirt   instance void Game.BlockIconWidget::set_Value(int32)
    IL_0079:  ldloc.3
    IL_007a:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007f:  ldstr      "RecipaediaItem.Text"
    IL_0084:  ldc.i4.1
    IL_0085:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_008a:  ldloc.s    V_4
    IL_008c:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0091:  ldloc.3
    IL_0092:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0097:  ldstr      "RecipaediaItem.Details"
    IL_009c:  ldc.i4.1
    IL_009d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00a2:  ldloc.s    V_6
    IL_00a4:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a9:  ldloc.3
    IL_00aa:  ret
  } // end of method RecipaediaScreen::'<.ctor>b__10_0'

  .method private hidebysig instance void 
          '<.ctor>b__10_1'(class Game.ListPanelWidget sender,
                           object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       70 (0x46)
    .maxstack  2
    .locals init (class Game.RecipaediaScreen/'<>c__DisplayClass10_0' V_0)
    IL_0000:  newobj     instance void Game.RecipaediaScreen/'<>c__DisplayClass10_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.RecipaediaScreen Game.RecipaediaScreen/'<>c__DisplayClass10_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      object Game.RecipaediaScreen/'<>c__DisplayClass10_0'::item
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_001a:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_001f:  ldloc.0
    IL_0020:  ldfld      object Game.RecipaediaScreen/'<>c__DisplayClass10_0'::item
    IL_0025:  bne.un.s   IL_0045

    IL_0027:  ldloc.0
    IL_0028:  ldfld      object Game.RecipaediaScreen/'<>c__DisplayClass10_0'::item
    IL_002d:  isinst     [System.Runtime]System.Int32
    IL_0032:  brfalse.s  IL_0045

    IL_0034:  ldloc.0
    IL_0035:  ldftn      instance void Game.RecipaediaScreen/'<>c__DisplayClass10_0'::'<.ctor>b__2'()
    IL_003b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0040:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0045:  ret
  } // end of method RecipaediaScreen::'<.ctor>b__10_1'

  .method private hidebysig instance void 
          '<Update>b__12_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Screen Game.RecipaediaScreen::m_previousScreen
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [System.Runtime]System.Object
    IL_000c:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0011:  ret
  } // end of method RecipaediaScreen::'<Update>b__12_3'

} // end of class Game.RecipaediaScreen